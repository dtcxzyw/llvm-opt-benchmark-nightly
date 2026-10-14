Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.08?download=true
inline.NumInlined: 7444
inline.NumDeleted: 2728
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXs2_NtNtCskY9G75ZWc4U_11polars_expr6reduce3sumNtB5_24IdxTypeCheckedSumReducerNtB7_7Reducer9reduce_ca:bb.a
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.ap), !dbg !59820, !noalias !59773
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !59821, !noalias !59773 ; 2 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !59821, !noalias !59773 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !59773
  store i64 %i.an, ptr %i.b, align 8, !dbg !59822, !alias.scope !59774, !noalias !59775
  store i64 1, ptr %i.j, align 8, !dbg !59822, !alias.scope !59774, !noalias !59775
  store i64 %i.an, ptr %i.k, align 8, !dbg !59822, !alias.scope !59774, !noalias !59775
  %i.as = add i64 %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i, !dbg !59823 ; 3 uses
  store i64 %i.as, ptr %i.a, align 8, !dbg !59824, !alias.scope !59776, !noalias !59775
  store i64 1, ptr %i.l, align 8, !dbg !59824, !alias.scope !59776, !noalias !59775
  store i64 %i.as, ptr %i.m, align 8, !dbg !59824, !alias.scope !59776, !noalias !59775
  %i.at = icmp eq i64 %i.an, %i.as, !dbg !59825
  br i1 %i.at, label %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i, label %bb.i, !dbg !59826, !prof !4360

bb.i:                                             ; preds = %bb.h
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedTjINtNtB4_6option6OptionjEEBM_ECs8774dFTUdNv_12polars_arrow(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #46, !dbg !59827, !noalias !59775
  unreachable

_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.h
  %.sroa.5.16.copyload = load ptr, ptr %i.c, align 8, !dbg !59828
  %.sroa.7.sroa.2.0.copyload = load i64, ptr %.sroa.7.sroa.2.0..sroa.7.16..sroa_idx.sroa_idx, align 8, !dbg !59828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !59829, !noalias !59773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !59829, !noalias !59773
  br label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit, !dbg !59830

_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.g, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.7.sroa.2.2 = phi i64 [ %.sroa.7.sroa.2.0.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.7.sroa.2.081, %bb.g ], [ %.sroa.7.sroa.2.081, %bb.f ] ; 3 uses
  %.sroa.8.2 = phi i64 [ %.sroa.5.0.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.8.083, %bb.g ], [ %.sroa.8.083, %bb.f ] ; 3 uses
  %.sroa.720.2 = phi i64 [ %.sroa.4.0.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i ], [ %.sroa.720.084, %bb.g ], [ %.sroa.720.084, %bb.f ] ; 3 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.16.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i ], [ %i.ao, %bb.g ], [ %i.ao, %bb.f ], !dbg !59831
  %.sroa.3.0 = phi ptr [ %i.ao, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i ], [ %i.al, %bb.g ], [ %i.al, %bb.f ], !dbg !59831
  %.sroa.0.025 = phi ptr [ %i.al, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityIterRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB4_8iterator10BitmapIterE3newCskY9G75ZWc4U_11polars_expr.exit.i ], [ null, %bb.g ], [ null, %bb.f ], !dbg !59831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !59832
  br label %bb.j, !dbg !59833

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.010.074 = phi ptr [ %i.bx, %.lr.ph ], [ %.sroa.010.074.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.au = phi i64 [ %i.ca, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.074, i64 4, !dbg !59808
  %i.aw = load i32, ptr %.sroa.010.074, align 4, !dbg !59809, !noundef !4123
  %i.ax = zext i32 %i.aw to i64, !dbg !59810
  %i.ay = add i64 %i.au, %i.ax, !dbg !59811
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.074, i64 8, !dbg !59808
  %i.ba = load i32, ptr %i.av, align 4, !dbg !59809, !noundef !4123
  %i.bb = zext i32 %i.ba to i64, !dbg !59810
  %i.bc = add i64 %i.ay, %i.bb, !dbg !59811
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.010.074, i64 12, !dbg !59808
  %i.be = load i32, ptr %i.az, align 4, !dbg !59809, !noundef !4123
  %i.bf = zext i32 %i.be to i64, !dbg !59810
  %i.bg = add i64 %i.bc, %i.bf, !dbg !59811
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.010.074, i64 16, !dbg !59808
  %i.bi = load i32, ptr %i.bd, align 4, !dbg !59809, !noundef !4123
  %i.bj = zext i32 %i.bi to i64, !dbg !59810
  %i.bk = add i64 %i.bg, %i.bj, !dbg !59811
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.074, i64 20, !dbg !59808
  %i.bm = load i32, ptr %i.bh, align 4, !dbg !59809, !noundef !4123
  %i.bn = zext i32 %i.bm to i64, !dbg !59810
  %i.bo = add i64 %i.bk, %i.bn, !dbg !59811
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.010.074, i64 24, !dbg !59808
  %i.bq = load i32, ptr %i.bl, align 4, !dbg !59809, !noundef !4123
  %i.br = zext i32 %i.bq to i64, !dbg !59810
  %i.bs = add i64 %i.bo, %i.br, !dbg !59811
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.010.074, i64 28, !dbg !59808
  %i.bu = load i32, ptr %i.bp, align 4, !dbg !59809, !noundef !4123
  %i.bv = zext i32 %i.bu to i64, !dbg !59810
  %i.bw = add i64 %i.bs, %i.bv, !dbg !59811
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.010.074, i64 32, !dbg !59808 ; 2 uses
  %i.by = load i32, ptr %i.bt, align 4, !dbg !59809, !noundef !4123
  %i.bz = zext i32 %i.by to i64, !dbg !59810
  %i.ca = add i64 %i.bw, %i.bz, !dbg !59811       ; 2 uses
  %i.cb = icmp eq ptr %i.bx, %i.z, !dbg !59806
  br i1 %i.cb, label %..loopexit_crit_edge, label %.lr.ph, !dbg !59807

..loopexit_crit_edge:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ca, %.lr.ph ], !dbg !59811 ; 2 uses
  store i64 %.lcssa, ptr %1, align 8, !dbg !59811
  br label %.loopexit, !dbg !59807

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, %bb.m, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread, %..loopexit_crit_edge
  %.lcssa76 = phi i64 [ %.lcssa7980, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread ], [ %.lcssa, %..loopexit_crit_edge ], [ %.lcssa77, %bb.m ], [ %.lcssa77, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i ]
  %.sroa.7.sroa.2.1 = phi i64 [ %.sroa.7.sroa.2.081, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread ], [ %.sroa.7.sroa.2.081, %..loopexit_crit_edge ], [ %.sroa.7.sroa.2.2, %bb.m ], [ %.sroa.7.sroa.2.2, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i ]
  %.sroa.8.1 = phi i64 [ %.sroa.8.083, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread ], [ %.sroa.8.083, %..loopexit_crit_edge ], [ %.sroa.8.2, %bb.m ], [ %.sroa.8.2, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i ]
  %.sroa.720.1 = phi i64 [ %.sroa.720.084, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit.thread ], [ %.sroa.720.084, %..loopexit_crit_edge ], [ %.sroa.720.2, %bb.m ], [ %.sroa.720.2, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i ]
  %i.cc = icmp eq ptr %i.n, %i.h, !dbg !59788
  br i1 %i.cc, label %._crit_edge, label %bb.b, !dbg !59740

bb.j:                                             ; preds = %bb.o, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit
  %.lcssa77 = phi i64 [ %.lcssa7980, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit ], [ %i.cw, %bb.o ] ; 3 uses
  %.sroa.21.0 = phi i64 [ %.sroa.8.2, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.21.3.ph57, %bb.o ], !dbg !59834 ; 5 uses
  %.sroa.18.0 = phi i64 [ %.sroa.720.2, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.18.2.ph59, %bb.o ], !dbg !59834 ; 3 uses
  %.sroa.16.0 = phi i64 [ %.sroa.7.sroa.2.2, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.16.2.ph61, %bb.o ], !dbg !59834 ; 3 uses
  %.sroa.9.0 = phi ptr [ %.sroa.5.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.9.3.ph65, %bb.o ], !dbg !59834 ; 8 uses
  %.sroa.522.0 = phi ptr [ %.sroa.3.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.522.1.ph67, %bb.o ], !dbg !59834 ; 6 uses
  %.sroa.021.0 = phi ptr [ %.sroa.0.025, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.021.2.ph69, %bb.o ], !dbg !59834 ; 4 uses
  %.not.i = icmp eq ptr %.sroa.021.0, null, !dbg !59835
  br i1 %.not.i, label %bb.m, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !59836

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.j
  %i.cd = icmp eq ptr %.sroa.021.0, %.sroa.522.0, !dbg !59837 ; 2 uses
  %spec.select.idx = select i1 %i.cd, i64 0, i64 4, !dbg !59838
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 %spec.select.idx, !dbg !59838 ; 2 uses
  %spec.select71 = select i1 %i.cd, ptr null, ptr %.sroa.021.0, !dbg !59838
  %i.ce = icmp eq i64 %.sroa.18.0, 0, !dbg !59839
  br i1 %i.ce, label %bb.k, label %._crit_edge.i.i.i, !dbg !59839

bb.k:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i
  %i.cf = icmp eq i64 %.sroa.21.0, 0, !dbg !59840
  br i1 %i.cf, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !59840

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %bb.k
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.21.0, i64 64), !dbg !59841 ; 2 uses
  %i.cg = sub nuw i64 %.sroa.21.0, %.sroa.0.0.i.i.i.i, !dbg !59842
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %.sroa.9.0, align 1, !dbg !59843, !noalias !59777
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 8, !dbg !59844
  br label %._crit_edge.i.i.i, !dbg !59845

._crit_edge.i.i.i:                                ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  %.sroa.21.1 = phi i64 [ %i.cg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], [ %.sroa.21.0, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i ], !dbg !59834
  %.sroa.9.1 = phi ptr [ %i.ch, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], [ %.sroa.9.0, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i ], !dbg !59834
  %i.ci = phi i64 [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], [ %.sroa.18.0, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i ], !dbg !59846
  %i.cj = phi i64 [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], [ %.sroa.16.0, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i ], !dbg !59847 ; 2 uses
  %i.ck = trunc i64 %i.cj to i8, !dbg !59847
  %i.cl = lshr i64 %i.cj, 1, !dbg !59848
  %i.cm = add i64 %i.ci, -1, !dbg !59846
  %i.cn = and i8 %i.ck, 1, !dbg !59849
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !59850

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.k
  %.sroa.21.2 = phi i64 [ 0, %bb.k ], [ %.sroa.21.1, %._crit_edge.i.i.i ], !dbg !59834 ; 2 uses
  %.sroa.18.1 = phi i64 [ 0, %bb.k ], [ %i.cm, %._crit_edge.i.i.i ], !dbg !59834 ; 2 uses
  %.sroa.16.1 = phi i64 [ %.sroa.16.0, %bb.k ], [ %i.cl, %._crit_edge.i.i.i ], !dbg !59834 ; 2 uses
  %.sroa.9.2 = phi ptr [ %.sroa.9.0, %bb.k ], [ %.sroa.9.1, %._crit_edge.i.i.i ], !dbg !59834 ; 2 uses
  %.sroa.0.0.i8.i.i = phi i8 [ 2, %bb.k ], [ %i.cn, %._crit_edge.i.i.i ], !dbg !59851
  %i.co = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select71), !dbg !59852, !noalias !59778 ; 2 uses
  %i.cp = extractvalue { i8, ptr } %i.co, 0, !dbg !59853 ; 2 uses
  %.not.i.i19 = icmp eq i8 %i.cp, 2, !dbg !59854
  br i1 %.not.i.i19, label %.loopexit, label %bb.l, !dbg !59855

bb.l:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.cq = extractvalue { i8, ptr } %i.co, 1, !dbg !59853 ; 2 uses
  %i.cr = trunc nuw i8 %i.cp to i1, !dbg !59856
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br i1 %i.cr, label %select.unfold, label %bb.o, !dbg !59857

bb.m:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  %i.cs = icmp eq ptr %.sroa.522.0, %.sroa.9.0, !dbg !59858
  br i1 %i.cs, label %.loopexit, label %bb.n, !dbg !59859

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.522.0, i64 4, !dbg !59860
  br label %select.unfold, !dbg !59861

select.unfold:                                    ; preds = %bb.l, %bb.n
  %.sroa.21.3.ph.ph = phi i64 [ %.sroa.21.0, %bb.n ], [ %.sroa.21.2, %bb.l ]
  %.sroa.18.2.ph.ph = phi i64 [ %.sroa.18.0, %bb.n ], [ %.sroa.18.1, %bb.l ]
  %.sroa.16.2.ph.ph = phi i64 [ %.sroa.16.0, %bb.n ], [ %.sroa.16.1, %bb.l ]
  %.sroa.9.3.ph.ph = phi ptr [ %.sroa.9.0, %bb.n ], [ %.sroa.9.2, %bb.l ]
  %.sroa.522.1.ph.ph = phi ptr [ %i.ct, %bb.n ], [ %.sroa.522.0, %bb.l ]
  %.sroa.021.2.ph.ph = phi ptr [ null, %bb.n ], [ %spec.select, %bb.l ]
  %.sroa.3.0.i.pn.i.ph.ph = phi ptr [ %.sroa.522.0, %bb.n ], [ %i.cq, %bb.l ]
  %i.cu = load i32, ptr %.sroa.3.0.i.pn.i.ph.ph, align 4, !dbg !59862, !noundef !4123
  %i.cv = zext i32 %i.cu to i64, !dbg !59863
  br label %bb.o, !dbg !59864

bb.o:                                             ; preds = %bb.l, %select.unfold
  %.sroa.021.2.ph69 = phi ptr [ %.sroa.021.2.ph.ph, %select.unfold ], [ %spec.select, %bb.l ]
  %.sroa.522.1.ph67 = phi ptr [ %.sroa.522.1.ph.ph, %select.unfold ], [ %.sroa.522.0, %bb.l ]
  %.sroa.9.3.ph65 = phi ptr [ %.sroa.9.3.ph.ph, %select.unfold ], [ %.sroa.9.2, %bb.l ]
  %.sroa.16.2.ph61 = phi i64 [ %.sroa.16.2.ph.ph, %select.unfold ], [ %.sroa.16.1, %bb.l ]
  %.sroa.18.2.ph59 = phi i64 [ %.sroa.18.2.ph.ph, %select.unfold ], [ %.sroa.18.1, %bb.l ]
  %.sroa.21.3.ph57 = phi i64 [ %.sroa.21.3.ph.ph, %select.unfold ], [ %.sroa.21.2, %bb.l ]
  %.sroa.06.0 = phi i64 [ %i.cv, %select.unfold ], [ 0, %bb.l ], !dbg !59865
  %i.cw = add i64 %.lcssa77, %.sroa.06.0, !dbg !59866 ; 2 uses
  store i64 %i.cw, ptr %1, align 8, !dbg !59866
  br label %bb.j, !dbg !59833
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyNtNtCs2mZqlW55729_12polars_utils7float164pf16mE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !59867 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !59877, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !59877
  tail call void @llvm.assume(i1 %i.c), !dbg !59877
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !59877
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !59878, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !59879
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !59879

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !59880
  unreachable, !dbg !59880

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !59881
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !59882
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !59883 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !59883 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !59884
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !59885
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !59886 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !59887
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !59888
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !59889 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !59890
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !59891
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !59892
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !59892
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !59883 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !59884
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !59885
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !59886 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !59887
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !59888
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !59889 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !59890
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !59891
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !59892
  br label %bb.f, !dbg !59893

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !59894
  br label %bb.f, !dbg !59894

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !59895
  ret void, !dbg !59896
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyNtNtCs2mZqlW55729_12polars_utils7float164pf16mE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !59897 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !59916
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !59917
  %i.g = load i32, ptr %i.f, align 8, !dbg !59917, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !59917
  %i.i = load i32, ptr %i.h, align 4, !dbg !59917, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRNtNtB4_7float164pf16E11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !59918
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !59919
  %i.k = load i8, ptr %i.j, align 16, !dbg !59919, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !59919
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !59920

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !59921
  br label %bb.d, !dbg !59922

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !59923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !59921
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !59924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !59925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !59926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !59914
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !59927
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !59927
  store i8 0, ptr %i.o, align 16, !dbg !59927
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !59928 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !59929
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !59930
  br i1 %i.q, label %.split, label %.split16, !dbg !59930

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !59931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !59932
  br label %bb.d, !dbg !59922

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !59933
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !59934
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !59934
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !59922
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !59922
  ret { i32, i32 } %i.t, !dbg !59922
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyamE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !59935 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !59945, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !59945
  tail call void @llvm.assume(i1 %i.c), !dbg !59945
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !59945
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !59946, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !59947
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !59947

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !59948
  unreachable, !dbg !59948

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !59949
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !59950
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !59951 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !59951 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !59952
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !59953
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !59954 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !59955
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !59956
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !59957 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !59958
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !59959
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !59960
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !59960
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !59951 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !59952
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !59953
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !59954 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !59955
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !59956
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !59957 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !59958
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !59959
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !59960
  br label %bb.f, !dbg !59961

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !59962
  br label %bb.f, !dbg !59962

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !59963
  ret void, !dbg !59964
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyamE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !59965 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !59984
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !59985
  %i.g = load i32, ptr %i.f, align 8, !dbg !59985, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !59985
  %i.i = load i32, ptr %i.h, align 4, !dbg !59985, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRaE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !59986
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !59987
  %i.k = load i8, ptr %i.j, align 16, !dbg !59987, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !59987
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !59988

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !59989
  br label %bb.d, !dbg !59990

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !59991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !59989
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !59992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !59993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !59994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !59982
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !59995
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !59995
  store i8 0, ptr %i.o, align 16, !dbg !59995
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !59996 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !59997
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !59998
  br i1 %i.q, label %.split, label %.split16, !dbg !59998

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !59999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60000
  br label %bb.d, !dbg !59990

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60001
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60002
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60002
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !59990
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !59990
  ret { i32, i32 } %i.t, !dbg !59990
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicydmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60003 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60013, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60013
  tail call void @llvm.assume(i1 %i.c), !dbg !60013
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60013
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60014, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60015
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60015

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60016
  unreachable, !dbg !60016

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60017
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60018
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60019 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60019 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60020
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60021
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60022 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60023
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60024
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60025 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60026
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60027
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60028
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60028
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60019 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60020
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60021
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60022 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60023
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60024
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60025 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60026
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60027
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60028
  br label %bb.f, !dbg !60029

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60030
  br label %bb.f, !dbg !60030

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60031
  ret void, !dbg !60032
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicydmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60033 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60052
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60053
  %i.g = load i32, ptr %i.f, align 8, !dbg !60053, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60053
  %i.i = load i32, ptr %i.h, align 4, !dbg !60053, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRdE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60054
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60055
  %i.k = load i8, ptr %i.j, align 16, !dbg !60055, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60055
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60056

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60057
  br label %bb.d, !dbg !60058

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60057
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60050
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60063
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60063
  store i8 0, ptr %i.o, align 16, !dbg !60063
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60064 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60065
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60066
  br i1 %i.q, label %.split, label %.split16, !dbg !60066

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60068
  br label %bb.d, !dbg !60058

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60069
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60070
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60070
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60058
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60058
  ret { i32, i32 } %i.t, !dbg !60058
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyfmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60071 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60081, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60081
  tail call void @llvm.assume(i1 %i.c), !dbg !60081
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60081
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60082, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60083
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60083

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60084
  unreachable, !dbg !60084

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60085
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60086
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60087 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60087 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60088
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60089
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60090 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60091
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60092
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60093 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60094
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60095
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60096
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60096
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60087 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60088
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60089
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60090 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60091
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60092
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60093 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60094
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60095
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60096
  br label %bb.f, !dbg !60097

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60098
  br label %bb.f, !dbg !60098

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60099
  ret void, !dbg !60100
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyfmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60101 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60121
  %i.g = load i32, ptr %i.f, align 8, !dbg !60121, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60121
  %i.i = load i32, ptr %i.h, align 4, !dbg !60121, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRfE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60122
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60123
  %i.k = load i8, ptr %i.j, align 16, !dbg !60123, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60123
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60124

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60125
  br label %bb.d, !dbg !60126

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60125
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60118
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60131
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60131
  store i8 0, ptr %i.o, align 16, !dbg !60131
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60133
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60134
  br i1 %i.q, label %.split, label %.split16, !dbg !60134

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60136
  br label %bb.d, !dbg !60126

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60137
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60138
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60138
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60126
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60126
  ret { i32, i32 } %i.t, !dbg !60126
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyhmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60139 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60149, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60149
  tail call void @llvm.assume(i1 %i.c), !dbg !60149
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60149
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60150, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60151
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60151

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60152
  unreachable, !dbg !60152

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60153
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60154
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60155 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60155 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60156
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60157
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60158 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60159
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60160
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60161 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60162
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60163
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60164
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60164
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60155 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60156
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60157
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60158 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60159
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60160
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60161 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60162
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60163
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60164
  br label %bb.f, !dbg !60165

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60166
  br label %bb.f, !dbg !60166

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60167
  ret void, !dbg !60168
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyhmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60169 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60188
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60189
  %i.g = load i32, ptr %i.f, align 8, !dbg !60189, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60189
  %i.i = load i32, ptr %i.h, align 4, !dbg !60189, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRhE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60190
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60191
  %i.k = load i8, ptr %i.j, align 16, !dbg !60191, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60191
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60192

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60193
  br label %bb.d, !dbg !60194

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60193
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60186
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60199
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60199
  store i8 0, ptr %i.o, align 16, !dbg !60199
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60200 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60201
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60202
  br i1 %i.q, label %.split, label %.split16, !dbg !60202

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60204
  br label %bb.d, !dbg !60194

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60205
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60206
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60206
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60194
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60194
  ret { i32, i32 } %i.t, !dbg !60194
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicylmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60207 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60217, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60217
  tail call void @llvm.assume(i1 %i.c), !dbg !60217
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60217
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60218, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60219
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60219

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60220
  unreachable, !dbg !60220

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60221
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60222
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60223 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60223 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60224
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60225
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60226 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60227
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60228
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60229 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60230
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60231
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60232
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60232
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60223 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60224
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60225
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60226 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60227
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60228
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60229 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60230
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60231
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60232
  br label %bb.f, !dbg !60233

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60234
  br label %bb.f, !dbg !60234

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60235
  ret void, !dbg !60236
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicylmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60237 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60256
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60257
  %i.g = load i32, ptr %i.f, align 8, !dbg !60257, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60257
  %i.i = load i32, ptr %i.h, align 4, !dbg !60257, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRlE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60258
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60259
  %i.k = load i8, ptr %i.j, align 16, !dbg !60259, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60259
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60260

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60261
  br label %bb.d, !dbg !60262

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60261
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60254
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60267
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60267
  store i8 0, ptr %i.o, align 16, !dbg !60267
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60268 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60269
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60270
  br i1 %i.q, label %.split, label %.split16, !dbg !60270

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60272
  br label %bb.d, !dbg !60262

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60273
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60274
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60274
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60262
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60262
  ret { i32, i32 } %i.t, !dbg !60262
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicymmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60275 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60285, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60285
  tail call void @llvm.assume(i1 %i.c), !dbg !60285
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60285
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60286, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60287
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60287

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60288
  unreachable, !dbg !60288

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60289
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60290
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60291 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60291 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60292
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60293
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60294 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60295
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60296
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60297 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60298
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60299
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60300
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60300
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60291 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60292
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60293
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60294 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60295
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60296
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60297 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60298
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60299
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60300
  br label %bb.f, !dbg !60301

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60302
  br label %bb.f, !dbg !60302

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60303
  ret void, !dbg !60304
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicymmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60305 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60324
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60325
  %i.g = load i32, ptr %i.f, align 8, !dbg !60325, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60325
  %i.i = load i32, ptr %i.h, align 4, !dbg !60325, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRmE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60326
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60327
  %i.k = load i8, ptr %i.j, align 16, !dbg !60327, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60327
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60328

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60329
  br label %bb.d, !dbg !60330

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60329
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60322
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60335
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60335
  store i8 0, ptr %i.o, align 16, !dbg !60335
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60336 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60337
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60338
  br i1 %i.q, label %.split, label %.split16, !dbg !60338

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60340
  br label %bb.d, !dbg !60330

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60341
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60342
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60342
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60330
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60330
  ret { i32, i32 } %i.t, !dbg !60330
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicynmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60343 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60353, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60353
  tail call void @llvm.assume(i1 %i.c), !dbg !60353
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60353
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60354, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60355
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60355

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60356
  unreachable, !dbg !60356

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60357
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60358
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60359 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60359 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60360
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60361
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60362 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60363
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60364
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60365 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60366
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60367
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60368
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60368
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60359 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60360
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60361
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60362 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60363
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60364
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60365 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60366
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60367
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60368
  br label %bb.f, !dbg !60369

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60370
  br label %bb.f, !dbg !60370

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60371
  ret void, !dbg !60372
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicynmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60373 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60392
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60393
  %i.g = load i32, ptr %i.f, align 8, !dbg !60393, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60393
  %i.i = load i32, ptr %i.h, align 4, !dbg !60393, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRnE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60394
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60395
  %i.k = load i8, ptr %i.j, align 16, !dbg !60395, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60395
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60396

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60397
  br label %bb.d, !dbg !60398

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60397
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60390
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60403
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60403
  store i8 0, ptr %i.o, align 16, !dbg !60403
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60404 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60405
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60406
  br i1 %i.q, label %.split, label %.split16, !dbg !60406

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60408
  br label %bb.d, !dbg !60398

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60409
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60410
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60410
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60398
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60398
  ret { i32, i32 } %i.t, !dbg !60398
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyomE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60411 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60421, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60421
  tail call void @llvm.assume(i1 %i.c), !dbg !60421
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60421
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60422, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60423
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60423

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60424
  unreachable, !dbg !60424

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60425
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60426
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60427 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60427 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60428
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60429
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60430 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60431
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60432
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60433 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60434
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60435
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60436
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60436
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60427 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60428
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60429
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60430 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60431
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60432
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60433 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60434
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60435
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60436
  br label %bb.f, !dbg !60437

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60438
  br label %bb.f, !dbg !60438

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60439
  ret void, !dbg !60440
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyomE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60441 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60460
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60461
  %i.g = load i32, ptr %i.f, align 8, !dbg !60461, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60461
  %i.i = load i32, ptr %i.h, align 4, !dbg !60461, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRoE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60462
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60463
  %i.k = load i8, ptr %i.j, align 16, !dbg !60463, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60463
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60464

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60465
  br label %bb.d, !dbg !60466

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60465
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60458
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60471
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60471
  store i8 0, ptr %i.o, align 16, !dbg !60471
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60472 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60473
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60474
  br i1 %i.q, label %.split, label %.split16, !dbg !60474

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60476
  br label %bb.d, !dbg !60466

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60477
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60478
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60478
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60466
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60466
  ret { i32, i32 } %i.t, !dbg !60466
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicysmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60479 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60489, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60489
  tail call void @llvm.assume(i1 %i.c), !dbg !60489
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60489
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60490, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60491
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60491

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60492
  unreachable, !dbg !60492

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60493
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60494
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60495 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60495 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60496
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60497
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60498 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60499
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60500
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60501 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60502
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60503
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60504
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60504
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60495 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60496
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60497
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60498 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60499
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60500
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60501 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60502
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60503
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60504
  br label %bb.f, !dbg !60505

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60506
  br label %bb.f, !dbg !60506

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60507
  ret void, !dbg !60508
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicysmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60509 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60528
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60529
  %i.g = load i32, ptr %i.f, align 8, !dbg !60529, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60529
  %i.i = load i32, ptr %i.h, align 4, !dbg !60529, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRsE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60530
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60531
  %i.k = load i8, ptr %i.j, align 16, !dbg !60531, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60531
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60532

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60533
  br label %bb.d, !dbg !60534

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60533
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60526
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60539
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60539
  store i8 0, ptr %i.o, align 16, !dbg !60539
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60540 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60541
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60542
  br i1 %i.q, label %.split, label %.split16, !dbg !60542

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60544
  br label %bb.d, !dbg !60534

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60545
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60546
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60546
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60534
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60534
  ret { i32, i32 } %i.t, !dbg !60534
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicytmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60547 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60557, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60557
  tail call void @llvm.assume(i1 %i.c), !dbg !60557
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60557
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60558, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60559
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60559

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60560
  unreachable, !dbg !60560

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60561
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60562
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60563 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60563 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60564
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60565
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60566 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60567
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60568
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60569 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60570
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60571
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60572
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60572
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60563 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60564
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60565
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60566 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60567
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60568
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60569 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60570
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60571
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60572
  br label %bb.f, !dbg !60573

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60574
  br label %bb.f, !dbg !60574

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60575
  ret void, !dbg !60576
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicytmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60577 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60596
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60597
  %i.g = load i32, ptr %i.f, align 8, !dbg !60597, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60597
  %i.i = load i32, ptr %i.h, align 4, !dbg !60597, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRtE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60598
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60599
  %i.k = load i8, ptr %i.j, align 16, !dbg !60599, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60599
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60600

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60601
  br label %bb.d, !dbg !60602

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60601
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60594
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60607
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60607
  store i8 0, ptr %i.o, align 16, !dbg !60607
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60608 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60609
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60610
  br i1 %i.q, label %.split, label %.split16, !dbg !60610

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60612
  br label %bb.d, !dbg !60602

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60613
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60614
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60614
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60602
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60602
  ret { i32, i32 } %i.t, !dbg !60602
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyxmE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60615 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60625, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60625
  tail call void @llvm.assume(i1 %i.c), !dbg !60625
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60625
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60626, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60627
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60627

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60628
  unreachable, !dbg !60628

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60629
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60630
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60631 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60631 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60632
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60633
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60634 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60635
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60636
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60637 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60638
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60639
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60640
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60640
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60631 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60632
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60633
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60634 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60635
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60636
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60637 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60638
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60639
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60640
  br label %bb.f, !dbg !60641

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60642
  br label %bb.f, !dbg !60642

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60643
  ret void, !dbg !60644
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyxmE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60645 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60664
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60665
  %i.g = load i32, ptr %i.f, align 8, !dbg !60665, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60665
  %i.i = load i32, ptr %i.h, align 4, !dbg !60665, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRxE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60666
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60667
  %i.k = load i8, ptr %i.j, align 16, !dbg !60667, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60667
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60668

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60669
  br label %bb.d, !dbg !60670

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60669
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60662
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60675
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60675
  store i8 0, ptr %i.o, align 16, !dbg !60675
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60676 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60677
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60678
  br i1 %i.q, label %.split, label %.split16, !dbg !60678

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60680
  br label %bb.d, !dbg !60670

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60681
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60682
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60682
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60670
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60670
  ret { i32, i32 } %i.t, !dbg !60670
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyymE3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !60683 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !dbg !60693, !range !4934, !noundef !4123 ; 3 uses
  %i.c = icmp ne i64 %i.b, 4, !dbg !60693
  tail call void @llvm.assume(i1 %i.c), !dbg !60693
  %.inv = icmp samesign ult i64 %i.b, 2, !dbg !60693
  br i1 %.inv, label %bb.b, label %bb.c, !dbg !60694, !prof !4360

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.b to i1, !dbg !60695
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !60695

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @342, ptr noundef nonnull inttoptr (i64 145 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @343) #45, !dbg !60696
  unreachable, !dbg !60696

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60697
  %2 = load <1 x i64>, ptr %i.e, align 8, !dbg !60698
  %i.f = shufflevector <1 x i64> %2, <1 x i64> poison, <2 x i32> zeroinitializer, !dbg !60699 ; 2 uses
  %i.g = add <2 x i64> %i.f, <i64 -7046029254386353131, i64 4354685564936845354>, !dbg !60699 ; 2 uses
  %i.h = lshr <2 x i64> %i.g, splat (i64 30), !dbg !60700
  %i.i = xor <2 x i64> %i.h, %i.g, !dbg !60701
  %i.j = mul <2 x i64> %i.i, splat (i64 -4658895280553007687), !dbg !60702 ; 2 uses
  %i.k = lshr <2 x i64> %i.j, splat (i64 27), !dbg !60703
  %i.l = xor <2 x i64> %i.k, %i.j, !dbg !60704
  %i.m = mul <2 x i64> %i.l, splat (i64 -7723592293110705685), !dbg !60705 ; 2 uses
  %i.n = lshr <2 x i64> %i.m, splat (i64 31), !dbg !60706
  %i.o = xor <2 x i64> %i.n, %i.m, !dbg !60707
  store <2 x i64> %i.o, ptr %i.a, align 16, !dbg !60708
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !60708
  %i.p = add <2 x i64> %i.f, <i64 -2691343689449507777, i64 8709371129873690708>, !dbg !60699 ; 2 uses
  %i.q = lshr <2 x i64> %i.p, splat (i64 30), !dbg !60700
  %i.r = xor <2 x i64> %i.q, %i.p, !dbg !60701
  %i.s = mul <2 x i64> %i.r, splat (i64 -4658895280553007687), !dbg !60702 ; 2 uses
  %i.t = lshr <2 x i64> %i.s, splat (i64 27), !dbg !60703
  %i.u = xor <2 x i64> %i.t, %i.s, !dbg !60704
  %i.v = mul <2 x i64> %i.u, splat (i64 -7723592293110705685), !dbg !60705 ; 2 uses
  %i.w = lshr <2 x i64> %i.v, splat (i64 31), !dbg !60706
  %i.x = xor <2 x i64> %i.w, %i.v, !dbg !60707
  store <2 x i64> %i.x, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !60708
  br label %bb.f, !dbg !60709

bb.e:                                             ; preds = %bb.b
  call void @_RINvCsci2cbTAlhZn_4rand8make_rngNtNtNtB2_4rngs5small8SmallRngECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @341), !dbg !60710
  br label %bb.f, !dbg !60710

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !60711
  ret void, !dbg !60712
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling4rankNtB5_16RankPolicyRandomINtB5_10RankPolicyymE4rankCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60713 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !60732
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !60733
  %i.g = load i32, ptr %i.f, align 8, !dbg !60733, !range !4518, !noundef !4123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36, !dbg !60733
  %i.i = load i32, ptr %i.h, align 4, !dbg !60733, !noundef !4123
  call void @_RNvMNtCs2mZqlW55729_12polars_utils20order_statistic_treeINtB2_18OrderStatisticTreeRyE11__rank_rangeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i32 noundef %i.g, i32 noundef %i.i), !dbg !60734
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !60735
  %i.k = load i8, ptr %i.j, align 16, !dbg !60735, !range !4717, !noundef !4123
  %i.l = icmp eq i8 %i.k, 2, !dbg !60735
  br i1 %i.l, label %bb.b, label %bb.c, !dbg !60736

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60737
  br label %bb.d, !dbg !60738

bb.c:                                             ; preds = %bb.a
  %i.m = load <2 x i64>, ptr %i.d, align 16, !dbg !60739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !60737
  %i.n = add <2 x i64> %i.m, splat (i64 1), !dbg !60740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !60741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !60742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !60730
  store <2 x i64> %i.n, ptr %i.b, align 16, !dbg !60743
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !60743
  store i8 0, ptr %i.o, align 16, !dbg !60743
  %i.p = call noundef i64 @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344), !dbg !60744 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !60745
  %i.q = icmp ugt i64 %i.p, 4294967295, !dbg !60746
  br i1 %i.q, label %.split, label %.split16, !dbg !60746

.split16:                                         ; preds = %bb.c
  %i.r = trunc nuw i64 %i.p to i32, !dbg !60747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !60748
  br label %bb.d, !dbg !60738

.split:                                           ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #46, !dbg !60749
  unreachable

bb.d:                                             ; preds = %.split16, %bb.b
  %.sroa.3.0 = phi i32 [ undef, %bb.b ], [ %i.r, %.split16 ], !dbg !60750
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ 1, %.split16 ], !dbg !60750
  %i.s = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !60738
  %i.t = insertvalue { i32, i32 } %i.s, i32 %.sroa.3.0, 1, !dbg !60738
  ret { i32, i32 } %i.t, !dbg !60738
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11arg_min_max16arg_max_opt_iterReINtNtNtNtBb_4iter8adapters3map3MapINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtB2f_7flatten7FlatMapIB2b_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2N_5array5ArrayEL_EENCNvMs_NtNtBV_3ops8downcastINtBV_12ChunkedArrayNtNtBX_9datatypes10UInt16TypeE13downcast_iter0EINtNtNtNtB2N_6bitmap5utils12zip_validity11ZipValiditytINtNtB2f_6copied6CopiedIB4c_tEENtNtB7b_8iterator10BitmapIterENCNvMNtBV_8iteratorB61_4iter0EINtNtBb_6option6OptiontEENCNvXsb_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB9Y_14CatMaxSelectorNtB6n_17Categorical16TypeENtB9Y_13SelectReducer9select_ca0EEs_0INtB7_6FnOnceTRTjB28_EBco_EE9call_onceBa2_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #11 !dbg !60751 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60763
  %.val = load ptr, ptr %i.a, align 8, !dbg !60763, !nonnull !4123, !noundef !4123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !60763
  %.val1 = load i64, ptr %i.b, align 8, !dbg !60763, !noundef !4123 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !60763
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !60763, !nonnull !4123, !noundef !4123
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !60763
  %.val3 = load i64, ptr %i.d, align 8, !dbg !60763, !noundef !4123 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3), !dbg !60764
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i), !dbg !60765, !alias.scope !60762 ; 2 uses
  %i.f = sext i32 %i.e to i64, !dbg !60765
  %i.g = icmp eq i32 %i.e, 0, !dbg !60766
  %i.h = sub i64 %.val1, %.val3
  %spec.select.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f, !dbg !60766
  %i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0), !dbg !60767
  ret i8 %i.i, !dbg !60768
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11arg_min_max16arg_max_opt_iterReINtNtNtNtBb_4iter8adapters3map3MapINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtB2f_7flatten7FlatMapIB2b_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2N_5array5ArrayEL_EENCNvMs_NtNtBV_3ops8downcastINtBV_12ChunkedArrayNtNtBX_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB2N_6bitmap5utils12zip_validity11ZipValiditymINtNtB2f_6copied6CopiedIB4c_mEENtNtB7b_8iterator10BitmapIterENCNvMNtBV_8iteratorB61_4iter0EINtNtBb_6option6OptionmEENCNvXsb_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB9Y_14CatMaxSelectorNtB6n_17Categorical32TypeENtB9Y_13SelectReducer9select_ca0EEs_0INtB7_6FnOnceTRTjB28_EBco_EE9call_onceBa2_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #11 !dbg !60769 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60781
  %.val = load ptr, ptr %i.a, align 8, !dbg !60781, !nonnull !4123, !noundef !4123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !60781
  %.val1 = load i64, ptr %i.b, align 8, !dbg !60781, !noundef !4123 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !60781
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !60781, !nonnull !4123, !noundef !4123
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !60781
  %.val3 = load i64, ptr %i.d, align 8, !dbg !60781, !noundef !4123 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3), !dbg !60782
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i), !dbg !60783, !alias.scope !60780 ; 2 uses
  %i.f = sext i32 %i.e to i64, !dbg !60783
  %i.g = icmp eq i32 %i.e, 0, !dbg !60784
  %i.h = sub i64 %.val1, %.val3
  %spec.select.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f, !dbg !60784
  %i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0), !dbg !60785
  ret i8 %i.i, !dbg !60786
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11arg_min_max16arg_max_opt_iterReINtNtNtNtBb_4iter8adapters3map3MapINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtB2f_7flatten7FlatMapIB2b_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2N_5array5ArrayEL_EENCNvMs_NtNtBV_3ops8downcastINtBV_12ChunkedArrayNtNtBX_9datatypes9UInt8TypeE13downcast_iter0EINtNtNtNtB2N_6bitmap5utils12zip_validity11ZipValidityhINtNtB2f_6copied6CopiedIB4c_hEENtNtB79_8iterator10BitmapIterENCNvMNtBV_8iteratorB61_4iter0EINtNtBb_6option6OptionhEENCNvXsb_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB9W_14CatMaxSelectorNtB6n_16Categorical8TypeENtB9W_13SelectReducer9select_ca0EEs_0INtB7_6FnOnceTRTjB28_EBcl_EE9call_onceBa0_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #11 !dbg !60787 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60799
  %.val = load ptr, ptr %i.a, align 8, !dbg !60799, !nonnull !4123, !noundef !4123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !60799
  %.val1 = load i64, ptr %i.b, align 8, !dbg !60799, !noundef !4123 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !60799
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !60799, !nonnull !4123, !noundef !4123
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !60799
  %.val3 = load i64, ptr %i.d, align 8, !dbg !60799, !noundef !4123 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3), !dbg !60800
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i), !dbg !60801, !alias.scope !60798 ; 2 uses
  %i.f = sext i32 %i.e to i64, !dbg !60801
  %i.g = icmp eq i32 %i.e, 0, !dbg !60802
  %i.h = sub i64 %.val1, %.val3
  %spec.select.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f, !dbg !60802
  %i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0), !dbg !60803
  ret i8 %i.i, !dbg !60804
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11arg_min_max16arg_min_opt_iterReINtNtNtNtBb_4iter8adapters3map3MapINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtB2f_7flatten7FlatMapIB2b_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2N_5array5ArrayEL_EENCNvMs_NtNtBV_3ops8downcastINtBV_12ChunkedArrayNtNtBX_9datatypes10UInt16TypeE13downcast_iter0EINtNtNtNtB2N_6bitmap5utils12zip_validity11ZipValiditytINtNtB2f_6copied6CopiedIB4c_tEENtNtB7b_8iterator10BitmapIterENCNvMNtBV_8iteratorB61_4iter0EINtNtBb_6option6OptiontEENCNvXs9_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB9Y_14CatMinSelectorNtB6n_17Categorical16TypeENtB9Y_13SelectReducer9select_ca0EEs_0INtB7_6FnOnceTRTjB28_EBco_EE9call_onceBa2_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #11 !dbg !60805 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60817
  %.val = load ptr, ptr %i.a, align 8, !dbg !60817, !nonnull !4123, !noundef !4123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !60817
  %.val1 = load i64, ptr %i.b, align 8, !dbg !60817, !noundef !4123 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !60817
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !60817, !nonnull !4123, !noundef !4123
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !60817
  %.val3 = load i64, ptr %i.d, align 8, !dbg !60817, !noundef !4123 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3), !dbg !60818
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i), !dbg !60819, !alias.scope !60816 ; 2 uses
  %i.f = sext i32 %i.e to i64, !dbg !60819
  %i.g = icmp eq i32 %i.e, 0, !dbg !60820
  %i.h = sub i64 %.val1, %.val3
  %spec.select.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f, !dbg !60820
  %i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0), !dbg !60821
  ret i8 %i.i, !dbg !60822
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11arg_min_max16arg_min_opt_iterReINtNtNtNtBb_4iter8adapters3map3MapINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtB2f_7flatten7FlatMapIB2b_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2N_5array5ArrayEL_EENCNvMs_NtNtBV_3ops8downcastINtBV_12ChunkedArrayNtNtBX_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB2N_6bitmap5utils12zip_validity11ZipValiditymINtNtB2f_6copied6CopiedIB4c_mEENtNtB7b_8iterator10BitmapIterENCNvMNtBV_8iteratorB61_4iter0EINtNtBb_6option6OptionmEENCNvXs9_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB9Y_14CatMinSelectorNtB6n_17Categorical32TypeENtB9Y_13SelectReducer9select_ca0EEs_0INtB7_6FnOnceTRTjB28_EBco_EE9call_onceBa2_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #11 !dbg !60823 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60835
  %.val = load ptr, ptr %i.a, align 8, !dbg !60835, !nonnull !4123, !noundef !4123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !60835
  %.val1 = load i64, ptr %i.b, align 8, !dbg !60835, !noundef !4123 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !60835
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !60835, !nonnull !4123, !noundef !4123
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !60835
  %.val3 = load i64, ptr %i.d, align 8, !dbg !60835, !noundef !4123 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1, i64 %.val3), !dbg !60836
  %i.e = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %spec.store.select.i.i.i), !dbg !60837, !alias.scope !60834 ; 2 uses
  %i.f = sext i32 %i.e to i64, !dbg !60837
  %i.g = icmp eq i32 %i.e, 0, !dbg !60838
  %i.h = sub i64 %.val1, %.val3
  %spec.select.i.i.i = select i1 %i.g, i64 %i.h, i64 %i.f, !dbg !60838
  %i.i = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0), !dbg !60839
  ret i8 %i.i, !dbg !60840
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11arg_min_max16arg_min_opt_iterReINtNtNtNtBb_4iter8adapters3map3MapINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtB2f_7flatten7FlatMapIB2b_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2N_5array5ArrayEL_EENCNvMs_NtNtBV_3ops8downcastINtBV_12ChunkedArrayNtNtBX_9datatypes9UInt8TypeE13downcast_iter0EINtNtNtNtB2N_6bitmap5utils12zip_validity11ZipValidityhINtNtB2f_6copied6CopiedIB4c_hEENtNtB79_8iterator10BitmapIterENCNvMNtBV_8iteratorB61_4iter0EINtNtBb_6option6OptionhEENCNvXs9_NtNtCskY9G75ZWc4U_11polars_expr6reduce10min_max_byINtB9W_14CatMinSelectorNtB6n_16Categorical8TypeENtB9W_13SelectReducer9select_ca0EEs_0INtB7_6FnOnceTRTjB28_EBcl_EE9call_onceBa0_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #11 !dbg !60841 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !60853
  %.val = load ptr, ptr %i.a, align 8, !dbg !60853, !nonnull !4123, !noundef !4123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !60853
  %.val1 = load i64, ptr %i.b, align 8, !dbg !60853, !noundef !4123 ; 2 uses
end_hunk_0
