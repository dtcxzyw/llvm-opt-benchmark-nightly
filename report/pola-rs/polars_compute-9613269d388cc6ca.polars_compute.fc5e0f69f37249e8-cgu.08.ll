Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.08?download=true
inline.NumInlined: 2368
inline.NumDeleted: 1159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsNtNtCs2mZqlW55729_12polars_utils7float164pf16NvYB12_NtNtB16_7min_max6MinMax17min_propagate_nanEB6_:bb.a
  %i.av = sub i64 %i.at, %i.au, !dbg !9066
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9067
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9067
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !dbg !9067, !alias.scope !9005
  store i64 %i.ak, ptr %i.ax, align 8, !dbg !9067, !alias.scope !9005
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9061

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.o, %bb.q
  %.sink = phi i64 [ %i.ak, %bb.o ], [ %i.av, %bb.q ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !9068
  store i64 %.sink, ptr %i.ay, align 8, !dbg !9068, !alias.scope !9005
  store ptr %i.ai, ptr %i.c, align 8, !dbg !9069
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9069 ; 2 uses
  store i64 %i.ak, ptr %i.az, align 8, !dbg !9069
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9069 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !9069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9070
  call void @llvm.experimental.noalias.scope.decl(metadata !9006), !dbg !9071
  call void @llvm.experimental.noalias.scope.decl(metadata !9007), !dbg !9072
  %i.bb = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.ba) #35, !dbg !9073 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0, !dbg !9073
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !9074
  br i1 %i.bd, label %bb.r, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9074

bb.r:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.be = extractvalue { i64, i64 } %i.bb, 1, !dbg !9073 ; 2 uses
  %i.bf = load ptr, ptr %i.c, align 8, !dbg !9075, !alias.scope !9008, !nonnull !1221, !align !1474, !noundef !1221
  %i.bg = load i64, ptr %i.az, align 8, !dbg !9075, !alias.scope !9008, !noundef !1221
  %i.bh = icmp ult i64 %i.be, %i.bg, !dbg !9076
  call void @llvm.assume(i1 %i.bh), !dbg !9077
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.be, !dbg !9078
  %i.bj = load i16, ptr %i.bi, align 2, !dbg !9079, !alias.scope !9009, !noalias !9008, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9080, !noalias !9006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !9080
  call void @llvm.experimental.noalias.scope.decl(metadata !9010), !dbg !9081
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bk) #35, !dbg !9082, !noalias !9006 ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0, !dbg !9082
  %i.bn = trunc nuw i64 %i.bm to i1, !dbg !9083
  br i1 %i.bn, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldB1b_NvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9083

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.s, !dbg !9083

bb.s:                                             ; preds = %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i, %.lr.ph.i.i
  %i.bp = phi { i64, i64 } [ %i.bl, %.lr.ph.i.i ], [ %i.cg, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i ]
  %.sroa.0.09.i.i = phi i16 [ %i.bj, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9011), !dbg !9084
  %i.bq = extractvalue { i64, i64 } %i.bp, 1, !dbg !9082 ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !dbg !9085, !alias.scope !9012, !noalias !9006, !nonnull !1221, !align !1474, !noundef !1221
  %i.bs = load i64, ptr %i.bo, align 8, !dbg !9085, !alias.scope !9012, !noalias !9006, !noundef !1221
  %i.bt = icmp ult i64 %i.bq, %i.bs, !dbg !9086
  call void @llvm.assume(i1 %i.bt), !dbg !9087
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bq, !dbg !9088
  %i.bv = load i16, ptr %i.bu, align 2, !dbg !9089, !alias.scope !9013, !noalias !9014, !noundef !1221 ; 6 uses
  %i.bw = and i16 %.sroa.0.09.i.i, 32767, !dbg !9090 ; 2 uses
  %i.bx = icmp samesign ugt i16 %i.bw, 31744, !dbg !9090 ; 2 uses
  %i.by = and i16 %i.bv, 32767
  %i.bz = icmp samesign ugt i16 %i.by, 31744
  %or.cond.i.i.i = select i1 %i.bx, i1 true, i1 %i.bz, !dbg !9091
  br i1 %or.cond.i.i.i, label %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i, label %bb.t, !dbg !9091

bb.t:                                             ; preds = %bb.s
  %.not.i2.i.i.i = icmp sgt i16 %i.bv, -1, !dbg !9092 ; 2 uses
  %i.ca = icmp sgt i16 %.sroa.0.09.i.i, -1, !dbg !9093
  br i1 %i.ca, label %bb.u, label %bb.v, !dbg !9093

bb.u:                                             ; preds = %bb.t
  %i.cb = icmp ult i16 %.sroa.0.09.i.i, %i.bv
  %spec.select.i.i.i = and i1 %.not.i2.i.i.i, %i.cb, !dbg !9093
  br label %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !9093

bb.v:                                             ; preds = %bb.t
  br i1 %.not.i2.i.i.i, label %bb.w, label %bb.x, !dbg !9093

bb.w:                                             ; preds = %bb.v
  %i.cc = or i16 %i.bv, %i.bw, !dbg !9094
  %i.cd = icmp ne i16 %i.cc, 0, !dbg !9094
  br label %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !9095

bb.x:                                             ; preds = %bb.v
  %i.ce = icmp samesign ult i16 %i.bv, %.sroa.0.09.i.i, !dbg !9096
  br label %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !9097

_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.x, %bb.w, %bb.u, %bb.s
  %.sroa.0.0.i3.i.i.i = phi i1 [ %i.cd, %bb.w ], [ %i.ce, %bb.x ], [ false, %bb.s ], [ %spec.select.i.i.i, %bb.u ], !dbg !9098
  %i.cf = or i1 %i.bx, %.sroa.0.0.i3.i.i.i, !dbg !9099
  %.sroa.0.0.i.i.i.i = select i1 %i.cf, i16 %.sroa.0.09.i.i, i16 %i.bv, !dbg !9099 ; 2 uses
  %i.cg = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bk) #35, !dbg !9082, !noalias !9006 ; 2 uses
  %i.ch = extractvalue { i64, i64 } %i.cg, 0, !dbg !9082
  %i.ci = trunc nuw i64 %i.ch to i1, !dbg !9083
  br i1 %i.ci, label %bb.s, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldB1b_NvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9083

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldB1b_NvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i, %bb.r
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bj, %bb.r ], [ %.sroa.0.0.i.i.i.i, %_RNvYNvYNtNtCs2mZqlW55729_12polars_utils7float164pf16NtNtB9_7min_max6MinMax17min_propagate_nanINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTB5_B5_EE8call_mutCslFlrwjHoTci_14polars_compute.exit.i.i ], !dbg !9100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9101, !noalias !9006
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9102

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldB1b_NvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldB1b_NvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldB1b_NvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !9103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9104
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9105

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtBa_6traits8iterator8Iterator6reduceNvYB1n_NtNtB1r_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16BY_NvYBY_NtNtB12_7min_max6MinMax17min_propagate_nanE0CslFlrwjHoTci_14polars_compute.exit.i.i.i, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16BY_NvYBY_NtNtB12_7min_max6MinMax17min_propagate_nanE0CslFlrwjHoTci_14polars_compute.exit.i.i.i ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYB1b_NtNtB1f_7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16BY_NvYBY_NtNtB12_7min_max6MinMax17min_propagate_nanE0CslFlrwjHoTci_14polars_compute.exit.i.i.i ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !9106
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !9106
  ret { i16, i16 } %.pn, !dbg !9107
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9108 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !9218, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !9219
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !9220

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9221 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9221, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !9221
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !9222

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9223
  %i.h = load i64, ptr %i.g, align 8, !dbg !9223, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9224

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !9225
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9226

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !9227
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !9228
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !9228

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9229
  %i.l = load i64, ptr %i.k, align 8, !dbg !9229, !noundef !1221 ; 6 uses
  %.not.i = icmp samesign eq i64 %i.l, 0, !dbg !9230
  br i1 %.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !9231

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9232
  %i.n = load ptr, ptr %i.m, align 8, !dbg !9232, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !9233 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !dbg !9234, !noalias !9200, !noundef !1221 ; 5 uses
  %i.q = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.p, 1, !dbg !9235 ; 4 uses
  %i.r = icmp samesign eq i64 %i.l, 1, !dbg !9236
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !9237

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, -2
  %i.t = add i64 %i.l, -1, !dbg !9238             ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 9, !dbg !9238
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !9238

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.l, 33, !dbg !9238
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !9238

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 24
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !9238

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !9239 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi13 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index, !dbg !9240 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !9241
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !dbg !9241
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !dbg !9241
  %i.x = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !9242 ; 2 uses
  %i.y = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi13, <16 x i8> %wide.load14), !dbg !9242 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !9239 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !9238
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !9238, !llvm.loop !9154

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.x, <16 x i8> %i.y), !dbg !9238
  %i.aa = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax), !dbg !9238 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !9238
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !9238

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1483

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !9239
  %bc.merge.rdx = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ], !dbg !9243
  %n.vec15 = and i64 %i.t, -8                     ; 3 uses
  %broadcast.splatinsert16 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat17 = shufflevector <8 x i8> %broadcast.splatinsert16, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !9239 ; 2 uses
  %vec.phi19 = phi <8 x i8> [ %broadcast.splat17, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %index18, !dbg !9240
  %wide.load20 = load <8 x i8>, ptr %i.ab, align 1, !dbg !9241
  %i.ac = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %vec.phi19, <8 x i8> %wide.load20), !dbg !9242 ; 2 uses
  %index.next21 = add nuw i64 %index18, 8, !dbg !9239 ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec15, !dbg !9238
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !9238, !llvm.loop !9155

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.ac), !dbg !9238 ; 2 uses
  %cmp.n22 = icmp eq i64 %i.t, %n.vec15, !dbg !9238
  br i1 %cmp.n22, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !9238

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !9238

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9239 ; 3 uses
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9243
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i.i.i, !dbg !9240
  %.val.i.i.i = load i8, ptr %i.af, align 1, !dbg !9241, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i8 @llvm.smax.i8(i8 %.sroa.02.0.i.i.i, i8 %.val.i.i.i), !dbg !9242 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !9244
  %i.ah = icmp eq i64 %.sroa.04.0.i.i.i, %i.s, !dbg !9238
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !9238, !llvm.loop !9158

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9245
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9246
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !9246, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9247
  %i.al = load i64, ptr %i.ak, align 8, !dbg !9247, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9248 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !9248, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !9248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9208), !dbg !9249
  br i1 %.not, label %bb.h, label %bb.g, !dbg !9250

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9251 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !9251, !noalias !9208, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !9252
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !9252, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !9253, !alias.scope !9208
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9253
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9253
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !9253, !alias.scope !9208
  store i64 %i.al, ptr %i.ar, align 8, !dbg !9253, !alias.scope !9208
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9253
  store i64 0, ptr %i.as, align 8, !dbg !9253, !alias.scope !9208
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9253
  store i64 %i.al, ptr %i.at, align 8, !dbg !9253, !alias.scope !9208
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9254

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !9255, !noalias !9208
  unreachable, !dbg !9255

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !9256
  %i.au = load i64, ptr %i.ao, align 8, !dbg !9257, !noalias !9208, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !9258, !noalias !9208
  %i.aw = sub i64 %i.au, %i.av, !dbg !9259
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9260
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !9260, !alias.scope !9208
  store i64 %i.al, ptr %i.ay, align 8, !dbg !9260, !alias.scope !9208
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9254

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !9261
  store i64 %.sink, ptr %i.az, align 8, !dbg !9261, !alias.scope !9208
  store ptr %i.aj, ptr %i.c, align 8, !dbg !9262
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9262 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !9262
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9262 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !9262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9263
  call void @llvm.experimental.noalias.scope.decl(metadata !9209), !dbg !9264
  call void @llvm.experimental.noalias.scope.decl(metadata !9210), !dbg !9265
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !9266 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !9266
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !9267
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9267

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !9266 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !9268, !alias.scope !9211, !nonnull !1221, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !9268, !alias.scope !9211, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !9269
  call void @llvm.assume(i1 %i.bi), !dbg !9270
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !9271
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !9272, !alias.scope !9212, !noalias !9211, !noundef !1221 ; 3 uses
  %i.bl = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.bk, 1, !dbg !9273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9274, !noalias !9209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !9274
  call void @llvm.experimental.noalias.scope.decl(metadata !9213), !dbg !9275
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bn = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !9276, !noalias !9209 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0, !dbg !9276
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !9277
  br i1 %i.bp, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9277

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !9277

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.br = phi { i64, i64 } [ %i.bn, %.lr.ph.i.i ], [ %i.by, %bb.l ]
  %.sroa.0.08.i.i = phi i8 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9214), !dbg !9278
  %i.bs = extractvalue { i64, i64 } %i.br, 1, !dbg !9276 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !dbg !9279, !alias.scope !9215, !noalias !9209, !nonnull !1221, !noundef !1221
  %i.bu = load i64, ptr %i.bq, align 8, !dbg !9279, !alias.scope !9215, !noalias !9209, !noundef !1221
  %i.bv = icmp ult i64 %i.bs, %i.bu, !dbg !9280
  call void @llvm.assume(i1 %i.bv), !dbg !9281
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !9282
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9283, !alias.scope !9216, !noalias !9217, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.smax.i8(i8 %.sroa.0.08.i.i, i8 %i.bx), !dbg !9284 ; 2 uses
  %i.by = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !9276, !noalias !9209 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0, !dbg !9276
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !9277
  br i1 %i.ca, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9277

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i8 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !9285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9286, !noalias !9209
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9287

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i
  %i.cb = phi { i1, i8 } [ %i.bl, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ { i1 false, i8 undef }, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.3.0.i7 = phi i8 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9288
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9289

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit
  %.pn9 = phi { i1, i8 } [ %i.cb, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ { i1 false, i8 undef }, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i8 [ %.sroa.3.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.p, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn = insertvalue { i1, i8 } %.pn9, i8 %.sroa.3.0.i.pn, 1, !dbg !9290
  ret { i1, i8 } %.pn, !dbg !9291
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9292 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !9402, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !9403
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !9404

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9405 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9405, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !9405
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !9406

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9407
  %i.h = load i64, ptr %i.g, align 8, !dbg !9407, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9408

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !9409
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9410

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !9411
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !9412
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !9412

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9413
  %i.l = load i64, ptr %i.k, align 8, !dbg !9413, !noundef !1221 ; 6 uses
  %.not.i = icmp samesign eq i64 %i.l, 0, !dbg !9414
  br i1 %.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !9415

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9416
  %i.n = load ptr, ptr %i.m, align 8, !dbg !9416, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !9417 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !dbg !9418, !noalias !9384, !noundef !1221 ; 5 uses
  %i.q = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.p, 1, !dbg !9419 ; 4 uses
  %i.r = icmp samesign eq i64 %i.l, 1, !dbg !9420
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !9421

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, -2
  %i.t = add i64 %i.l, -1, !dbg !9422             ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 9, !dbg !9422
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !9422

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.l, 33, !dbg !9422
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !9422

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 24
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !9422

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !9423 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi13 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index, !dbg !9424 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !9425
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !dbg !9425
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !dbg !9425
  %i.x = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !9426 ; 2 uses
  %i.y = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi13, <16 x i8> %wide.load14), !dbg !9426 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !9423 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !9422
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !9422, !llvm.loop !9338

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.x, <16 x i8> %i.y), !dbg !9422
  %i.aa = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax), !dbg !9422 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !9422
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !9422

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1483

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !9423
  %bc.merge.rdx = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ], !dbg !9427
  %n.vec15 = and i64 %i.t, -8                     ; 3 uses
  %broadcast.splatinsert16 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat17 = shufflevector <8 x i8> %broadcast.splatinsert16, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !9423 ; 2 uses
  %vec.phi19 = phi <8 x i8> [ %broadcast.splat17, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %index18, !dbg !9424
  %wide.load20 = load <8 x i8>, ptr %i.ab, align 1, !dbg !9425
  %i.ac = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %vec.phi19, <8 x i8> %wide.load20), !dbg !9426 ; 2 uses
  %index.next21 = add nuw i64 %index18, 8, !dbg !9423 ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec15, !dbg !9422
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !9422, !llvm.loop !9339

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.ac), !dbg !9422 ; 2 uses
  %cmp.n22 = icmp eq i64 %i.t, %n.vec15, !dbg !9422
  br i1 %cmp.n22, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !9422

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !9422

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9423 ; 3 uses
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9427
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i.i.i, !dbg !9424
  %.val.i.i.i = load i8, ptr %i.af, align 1, !dbg !9425, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i8 @llvm.smin.i8(i8 %.sroa.02.0.i.i.i, i8 %.val.i.i.i), !dbg !9426 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !9428
  %i.ah = icmp eq i64 %.sroa.04.0.i.i.i, %i.s, !dbg !9422
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !9422, !llvm.loop !9342

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9429
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9430
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !9430, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9431
  %i.al = load i64, ptr %i.ak, align 8, !dbg !9431, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9432 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !9432, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !9432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9392), !dbg !9433
  br i1 %.not, label %bb.h, label %bb.g, !dbg !9434

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9435 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !9435, !noalias !9392, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !9436
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !9436, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !9437, !alias.scope !9392
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9437
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9437
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !9437, !alias.scope !9392
  store i64 %i.al, ptr %i.ar, align 8, !dbg !9437, !alias.scope !9392
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9437
  store i64 0, ptr %i.as, align 8, !dbg !9437, !alias.scope !9392
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9437
  store i64 %i.al, ptr %i.at, align 8, !dbg !9437, !alias.scope !9392
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9438

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !9439, !noalias !9392
  unreachable, !dbg !9439

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !9440
  %i.au = load i64, ptr %i.ao, align 8, !dbg !9441, !noalias !9392, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !9442, !noalias !9392
  %i.aw = sub i64 %i.au, %i.av, !dbg !9443
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9444
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9444
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !9444, !alias.scope !9392
  store i64 %i.al, ptr %i.ay, align 8, !dbg !9444, !alias.scope !9392
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9438

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !9445
  store i64 %.sink, ptr %i.az, align 8, !dbg !9445, !alias.scope !9392
  store ptr %i.aj, ptr %i.c, align 8, !dbg !9446
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9446 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !9446
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9446 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !9446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9447
  call void @llvm.experimental.noalias.scope.decl(metadata !9393), !dbg !9448
  call void @llvm.experimental.noalias.scope.decl(metadata !9394), !dbg !9449
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !9450 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !9450
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !9451
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9451

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !9450 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !9452, !alias.scope !9395, !nonnull !1221, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !9452, !alias.scope !9395, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !9453
  call void @llvm.assume(i1 %i.bi), !dbg !9454
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !9455
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !9456, !alias.scope !9396, !noalias !9395, !noundef !1221 ; 3 uses
  %i.bl = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.bk, 1, !dbg !9457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9458, !noalias !9393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !9458
  call void @llvm.experimental.noalias.scope.decl(metadata !9397), !dbg !9459
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bn = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !9460, !noalias !9393 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0, !dbg !9460
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !9461
  br i1 %i.bp, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9461

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !9461

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.br = phi { i64, i64 } [ %i.bn, %.lr.ph.i.i ], [ %i.by, %bb.l ]
  %.sroa.0.08.i.i = phi i8 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9398), !dbg !9462
  %i.bs = extractvalue { i64, i64 } %i.br, 1, !dbg !9460 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !dbg !9463, !alias.scope !9399, !noalias !9393, !nonnull !1221, !noundef !1221
  %i.bu = load i64, ptr %i.bq, align 8, !dbg !9463, !alias.scope !9399, !noalias !9393, !noundef !1221
  %i.bv = icmp ult i64 %i.bs, %i.bu, !dbg !9464
  call void @llvm.assume(i1 %i.bv), !dbg !9465
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !9466
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9467, !alias.scope !9400, !noalias !9401, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.smin.i8(i8 %.sroa.0.08.i.i, i8 %i.bx), !dbg !9468 ; 2 uses
  %i.by = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !9460, !noalias !9393 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0, !dbg !9460
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !9461
  br i1 %i.ca, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9461

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i8 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !9469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9470, !noalias !9393
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9471

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i
  %i.cb = phi { i1, i8 } [ %i.bl, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ { i1 false, i8 undef }, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.3.0.i7 = phi i8 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9472
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9473

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit
  %.pn9 = phi { i1, i8 } [ %i.cb, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ { i1 false, i8 undef }, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i8 [ %.sroa.3.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.p, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn = insertvalue { i1, i8 } %.pn9, i8 %.sroa.3.0.i.pn, 1, !dbg !9474
  ret { i1, i8 } %.pn, !dbg !9475
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9476 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !9585, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !9586
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !9587

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9588 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9588, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !9588
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !9589

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9590
  %i.h = load i64, ptr %i.g, align 8, !dbg !9590, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9591

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !9592
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9593

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !9594
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !9595
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !9595

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9596
  %i.l = load i64, ptr %i.k, align 8, !dbg !9596, !noundef !1221 ; 6 uses
  %.not.i = icmp samesign eq i64 %i.l, 0, !dbg !9597
  br i1 %.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !9598

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9599
  %i.n = load ptr, ptr %i.m, align 8, !dbg !9599, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !9600 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !dbg !9601, !noalias !9567, !noundef !1221 ; 5 uses
  %i.q = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.p, 1, !dbg !9602 ; 4 uses
  %i.r = icmp samesign eq i64 %i.l, 1, !dbg !9603
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !9604

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, -2
  %i.t = add i64 %i.l, -1, !dbg !9605             ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 9, !dbg !9605
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !9605

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.l, 33, !dbg !9605
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !9605

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 24
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !9605

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !9606 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi13 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index, !dbg !9607 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !9608
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !dbg !9608
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !dbg !9608
  %i.x = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !9609 ; 2 uses
  %i.y = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi13, <16 x i8> %wide.load14), !dbg !9609 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !9606 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !9605
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !9605, !llvm.loop !9521

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.x, <16 x i8> %i.y), !dbg !9605
  %i.aa = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax), !dbg !9605 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !9605
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !9605

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1483

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !9606
  %bc.merge.rdx = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ], !dbg !9610
  %n.vec15 = and i64 %i.t, -8                     ; 3 uses
  %broadcast.splatinsert16 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat17 = shufflevector <8 x i8> %broadcast.splatinsert16, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !9606 ; 2 uses
  %vec.phi19 = phi <8 x i8> [ %broadcast.splat17, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %index18, !dbg !9607
  %wide.load20 = load <8 x i8>, ptr %i.ab, align 1, !dbg !9608
  %i.ac = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %vec.phi19, <8 x i8> %wide.load20), !dbg !9609 ; 2 uses
  %index.next21 = add nuw i64 %index18, 8, !dbg !9606 ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec15, !dbg !9605
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !9605, !llvm.loop !9522

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.ac), !dbg !9605 ; 2 uses
  %cmp.n22 = icmp eq i64 %i.t, %n.vec15, !dbg !9605
  br i1 %cmp.n22, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !9605

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !9605

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9606 ; 3 uses
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9610
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i.i.i, !dbg !9607
  %.val.i.i.i = load i8, ptr %i.af, align 1, !dbg !9608, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i8 @llvm.smax.i8(i8 %.sroa.02.0.i.i.i, i8 %.val.i.i.i), !dbg !9609 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !9611
  %i.ah = icmp eq i64 %.sroa.04.0.i.i.i, %i.s, !dbg !9605
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !9605, !llvm.loop !9525

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9612
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9613
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !9613, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9614
  %i.al = load i64, ptr %i.ak, align 8, !dbg !9614, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9615 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !9615, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !9615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9575), !dbg !9616
  br i1 %.not, label %bb.h, label %bb.g, !dbg !9617

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9618 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !9618, !noalias !9575, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !9619
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !9619, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !9620, !alias.scope !9575
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9620
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9620
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !9620, !alias.scope !9575
  store i64 %i.al, ptr %i.ar, align 8, !dbg !9620, !alias.scope !9575
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9620
  store i64 0, ptr %i.as, align 8, !dbg !9620, !alias.scope !9575
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9620
  store i64 %i.al, ptr %i.at, align 8, !dbg !9620, !alias.scope !9575
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9621

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !9622, !noalias !9575
  unreachable, !dbg !9622

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !9623
  %i.au = load i64, ptr %i.ao, align 8, !dbg !9624, !noalias !9575, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !9625, !noalias !9575
  %i.aw = sub i64 %i.au, %i.av, !dbg !9626
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9627
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9627
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !9627, !alias.scope !9575
  store i64 %i.al, ptr %i.ay, align 8, !dbg !9627, !alias.scope !9575
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9621

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !9628
  store i64 %.sink, ptr %i.az, align 8, !dbg !9628, !alias.scope !9575
  store ptr %i.aj, ptr %i.c, align 8, !dbg !9629
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9629 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !9629
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9629 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !9629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9630
  call void @llvm.experimental.noalias.scope.decl(metadata !9576), !dbg !9631
  call void @llvm.experimental.noalias.scope.decl(metadata !9577), !dbg !9632
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !9633 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !9633
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !9634
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9634

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !9633 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !9635, !alias.scope !9578, !nonnull !1221, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !9635, !alias.scope !9578, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !9636
  call void @llvm.assume(i1 %i.bi), !dbg !9637
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !9638
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !9639, !alias.scope !9579, !noalias !9578, !noundef !1221 ; 3 uses
  %i.bl = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.bk, 1, !dbg !9640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9641, !noalias !9576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !9641
  call void @llvm.experimental.noalias.scope.decl(metadata !9580), !dbg !9642
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bn = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !9643, !noalias !9576 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0, !dbg !9643
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !9644
  br i1 %i.bp, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9644

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !9644

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.br = phi { i64, i64 } [ %i.bn, %.lr.ph.i.i ], [ %i.by, %bb.l ]
  %.sroa.0.08.i.i = phi i8 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9581), !dbg !9645
  %i.bs = extractvalue { i64, i64 } %i.br, 1, !dbg !9643 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !dbg !9646, !alias.scope !9582, !noalias !9576, !nonnull !1221, !noundef !1221
  %i.bu = load i64, ptr %i.bq, align 8, !dbg !9646, !alias.scope !9582, !noalias !9576, !noundef !1221
  %i.bv = icmp ult i64 %i.bs, %i.bu, !dbg !9647
  call void @llvm.assume(i1 %i.bv), !dbg !9648
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !9649
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9650, !alias.scope !9583, !noalias !9584, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.smax.i8(i8 %.sroa.0.08.i.i, i8 %i.bx), !dbg !9651 ; 2 uses
  %i.by = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !9643, !noalias !9576 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0, !dbg !9643
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !9644
  br i1 %i.ca, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9644

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i8 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !9652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9653, !noalias !9576
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9654

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %i.cb = phi { i1, i8 } [ %i.bl, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ { i1 false, i8 undef }, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.3.0.i7 = phi i8 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9655
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9656

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.pn9 = phi { i1, i8 } [ %i.cb, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ { i1 false, i8 undef }, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i8 [ %.sroa.3.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.p, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn = insertvalue { i1, i8 } %.pn9, i8 %.sroa.3.0.i.pn, 1, !dbg !9657
  ret { i1, i8 } %.pn, !dbg !9658
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9659 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !9768, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !9769
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !9770

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9771 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9771, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !9771
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !9772

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9773
  %i.h = load i64, ptr %i.g, align 8, !dbg !9773, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9774

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !9775
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9776

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !9777
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !9778
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !9778

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9779
  %i.l = load i64, ptr %i.k, align 8, !dbg !9779, !noundef !1221 ; 6 uses
  %.not.i = icmp samesign eq i64 %i.l, 0, !dbg !9780
  br i1 %.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !9781

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9782
  %i.n = load ptr, ptr %i.m, align 8, !dbg !9782, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !9783 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !dbg !9784, !noalias !9750, !noundef !1221 ; 5 uses
  %i.q = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.p, 1, !dbg !9785 ; 4 uses
  %i.r = icmp samesign eq i64 %i.l, 1, !dbg !9786
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !9787

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, -2
  %i.t = add i64 %i.l, -1, !dbg !9788             ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 9, !dbg !9788
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !9788

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.l, 33, !dbg !9788
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !9788

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 24
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !9788

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !9789 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi13 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index, !dbg !9790 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !9791
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !dbg !9791
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !dbg !9791
  %i.x = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !9792 ; 2 uses
  %i.y = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi13, <16 x i8> %wide.load14), !dbg !9792 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !9789 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !9788
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !9788, !llvm.loop !9704

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.x, <16 x i8> %i.y), !dbg !9788
  %i.aa = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax), !dbg !9788 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !9788
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !9788

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1483

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !9789
  %bc.merge.rdx = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ], !dbg !9793
  %n.vec15 = and i64 %i.t, -8                     ; 3 uses
  %broadcast.splatinsert16 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat17 = shufflevector <8 x i8> %broadcast.splatinsert16, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !9789 ; 2 uses
  %vec.phi19 = phi <8 x i8> [ %broadcast.splat17, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %index18, !dbg !9790
  %wide.load20 = load <8 x i8>, ptr %i.ab, align 1, !dbg !9791
  %i.ac = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %vec.phi19, <8 x i8> %wide.load20), !dbg !9792 ; 2 uses
  %index.next21 = add nuw i64 %index18, 8, !dbg !9789 ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec15, !dbg !9788
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !9788, !llvm.loop !9705

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.ac), !dbg !9788 ; 2 uses
  %cmp.n22 = icmp eq i64 %i.t, %n.vec15, !dbg !9788
  br i1 %cmp.n22, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !9788

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !9788

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9789 ; 3 uses
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !9793
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i.i.i, !dbg !9790
  %.val.i.i.i = load i8, ptr %i.af, align 1, !dbg !9791, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i8 @llvm.smin.i8(i8 %.sroa.02.0.i.i.i, i8 %.val.i.i.i), !dbg !9792 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !9794
  %i.ah = icmp eq i64 %.sroa.04.0.i.i.i, %i.s, !dbg !9788
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !9788, !llvm.loop !9708

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9795
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9796
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !9796, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9797
  %i.al = load i64, ptr %i.ak, align 8, !dbg !9797, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9798 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !9798, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !9798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9758), !dbg !9799
  br i1 %.not, label %bb.h, label %bb.g, !dbg !9800

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9801 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !9801, !noalias !9758, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !9802
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !9802, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !9803, !alias.scope !9758
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9803
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9803
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !9803, !alias.scope !9758
  store i64 %i.al, ptr %i.ar, align 8, !dbg !9803, !alias.scope !9758
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !9803
  store i64 0, ptr %i.as, align 8, !dbg !9803, !alias.scope !9758
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9803
  store i64 %i.al, ptr %i.at, align 8, !dbg !9803, !alias.scope !9758
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9804

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !9805, !noalias !9758
  unreachable, !dbg !9805

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !9806
  %i.au = load i64, ptr %i.ao, align 8, !dbg !9807, !noalias !9758, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !9808, !noalias !9758
  %i.aw = sub i64 %i.au, %i.av, !dbg !9809
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !9810
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !9810
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !9810, !alias.scope !9758
  store i64 %i.al, ptr %i.ay, align 8, !dbg !9810, !alias.scope !9758
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !9804

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !9811
  store i64 %.sink, ptr %i.az, align 8, !dbg !9811, !alias.scope !9758
  store ptr %i.aj, ptr %i.c, align 8, !dbg !9812
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9812 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !9812
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9812 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !9812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9813
  call void @llvm.experimental.noalias.scope.decl(metadata !9759), !dbg !9814
  call void @llvm.experimental.noalias.scope.decl(metadata !9760), !dbg !9815
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !9816 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !9816
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !9817
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9817

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !9816 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !9818, !alias.scope !9761, !nonnull !1221, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !9818, !alias.scope !9761, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !9819
  call void @llvm.assume(i1 %i.bi), !dbg !9820
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !9821
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !9822, !alias.scope !9762, !noalias !9761, !noundef !1221 ; 3 uses
  %i.bl = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.bk, 1, !dbg !9823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9824, !noalias !9759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !9824
  call void @llvm.experimental.noalias.scope.decl(metadata !9763), !dbg !9825
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bn = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !9826, !noalias !9759 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0, !dbg !9826
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !9827
  br i1 %i.bp, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9827

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !9827

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.br = phi { i64, i64 } [ %i.bn, %.lr.ph.i.i ], [ %i.by, %bb.l ]
  %.sroa.0.08.i.i = phi i8 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9764), !dbg !9828
  %i.bs = extractvalue { i64, i64 } %i.br, 1, !dbg !9826 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !dbg !9829, !alias.scope !9765, !noalias !9759, !nonnull !1221, !noundef !1221
  %i.bu = load i64, ptr %i.bq, align 8, !dbg !9829, !alias.scope !9765, !noalias !9759, !noundef !1221
  %i.bv = icmp ult i64 %i.bs, %i.bu, !dbg !9830
  call void @llvm.assume(i1 %i.bv), !dbg !9831
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !9832
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9833, !alias.scope !9766, !noalias !9767, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.smin.i8(i8 %.sroa.0.08.i.i, i8 %i.bx), !dbg !9834 ; 2 uses
  %i.by = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !9826, !noalias !9759 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0, !dbg !9826
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !9827
  br i1 %i.ca, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !9827

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i8 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !9835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9836, !noalias !9759
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9837

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %i.cb = phi { i1, i8 } [ %i.bl, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ { i1 false, i8 undef }, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.3.0.i7 = phi i8 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldaNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9838
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !9839

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteraEENtNtNtBa_6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.pn9 = phi { i1, i8 } [ %i.cb, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ { i1 false, i8 undef }, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i8 [ %.sroa.3.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSaENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYaNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.p, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn = insertvalue { i1, i8 } %.pn9, i8 %.sroa.3.0.i.pn, 1, !dbg !9840
  ret { i1, i8 } %.pn, !dbg !9841
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsdNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9842 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !9963, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !9964
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !9965

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !9966 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !9966, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !9966
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !9967

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9968
  %i.h = load i64, ptr %i.g, align 8, !dbg !9968, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9969

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !9970
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !9971

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !9972
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !9973
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.g, !dbg !9973

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !9974
  %i.l = load i64, ptr %i.k, align 8, !dbg !9974, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !9975
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !9976

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9977
  %i.o = load ptr, ptr %i.n, align 8, !dbg !9977, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !9978 ; 2 uses
  %i.q = load double, ptr %i.o, align 8, !dbg !9979, !noalias !9945, !noundef !1221 ; 3 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !9980
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterdEENtNtNtBa_6traits8iterator8Iterator6reduceNvYdNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !9981

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %i.l, 2305843009213693951, !dbg !9982 ; 2 uses
  %i.t = and i64 %i.s, 2305843009213693951, !dbg !9982 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !9983
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !9983

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.q, i64 0
end_hunk_0
begin_hunk_1_@_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanEB6_:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11369
  store i64 %i.ai, ptr %i.aq, align 8, !dbg !11369, !alias.scope !11321
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !11370

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !11371, !noalias !11321
  unreachable, !dbg !11371

bb.l:                                             ; preds = %bb.i
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.aj), !dbg !11372
  %i.ar = load i64, ptr %i.al, align 8, !dbg !11373, !noalias !11321, !noundef !1221
  %i.as = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.aj), !dbg !11374, !noalias !11321
  %i.at = sub i64 %i.ar, %i.as, !dbg !11375
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11376
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !dbg !11376, !alias.scope !11321
  store i64 %i.ai, ptr %i.av, align 8, !dbg !11376, !alias.scope !11321
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !11370

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.j, %bb.l
  %.sink = phi i64 [ %i.ai, %bb.j ], [ %i.at, %bb.l ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !11377
  store i64 %.sink, ptr %i.aw, align 8, !dbg !11377, !alias.scope !11321
  store ptr %i.ag, ptr %i.c, align 8, !dbg !11378
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11378 ; 2 uses
  store i64 %i.ai, ptr %i.ax, align 8, !dbg !11378
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11378 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !11378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11379
  call void @llvm.experimental.noalias.scope.decl(metadata !11322), !dbg !11380
  call void @llvm.experimental.noalias.scope.decl(metadata !11323), !dbg !11381
  %i.az = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.ay) #35, !dbg !11382 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 0, !dbg !11382
  %i.bb = trunc nuw i64 %i.ba to i1, !dbg !11383
  br i1 %i.bb, label %bb.m, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11383

bb.m:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bc = extractvalue { i64, i64 } %i.az, 1, !dbg !11382 ; 2 uses
  %i.bd = load ptr, ptr %i.c, align 8, !dbg !11384, !alias.scope !11324, !nonnull !1221, !align !1492, !noundef !1221
  %i.be = load i64, ptr %i.ax, align 8, !dbg !11384, !alias.scope !11324, !noundef !1221
  %i.bf = icmp ult i64 %i.bc, %i.be, !dbg !11385
  call void @llvm.assume(i1 %i.bf), !dbg !11386
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc, !dbg !11387
  %i.bh = load float, ptr %i.bg, align 4, !dbg !11388, !alias.scope !11325, !noalias !11324, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11389, !noalias !11322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !11389
  call void @llvm.experimental.noalias.scope.decl(metadata !11326), !dbg !11390
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bj = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bi) #35, !dbg !11391, !noalias !11322 ; 2 uses
  %i.bk = extractvalue { i64, i64 } %i.bj, 0, !dbg !11391
  %i.bl = trunc nuw i64 %i.bk to i1, !dbg !11392
  br i1 %i.bl, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !11392

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.n, !dbg !11392

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bn = phi { i64, i64 } [ %i.bj, %.lr.ph.i.i ], [ %i.bx, %bb.n ]
  %.sroa.0.09.i.i = phi float [ %i.bh, %.lr.ph.i.i ], [ %..i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11327), !dbg !11393
  %i.bo = extractvalue { i64, i64 } %i.bn, 1, !dbg !11391 ; 2 uses
  %i.bp = load ptr, ptr %i.a, align 8, !dbg !11394, !alias.scope !11328, !noalias !11322, !nonnull !1221, !align !1492, !noundef !1221
  %i.bq = load i64, ptr %i.bm, align 8, !dbg !11394, !alias.scope !11328, !noalias !11322, !noundef !1221
  %i.br = icmp ult i64 %i.bo, %i.bq, !dbg !11395
  call void @llvm.assume(i1 %i.br), !dbg !11396
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo, !dbg !11397
  %i.bt = load float, ptr %i.bs, align 4, !dbg !11398, !alias.scope !11329, !noalias !11330, !noundef !1221 ; 2 uses
  %i.bu = fcmp olt float %.sroa.0.09.i.i, %i.bt, !dbg !11399
  %i.bv = fcmp uno float %.sroa.0.09.i.i, 0.000000e+00, !dbg !11400
  %i.bw = or i1 %i.bv, %i.bu, !dbg !11399
  %..i.i.i.i = select i1 %i.bw, float %.sroa.0.09.i.i, float %i.bt, !dbg !11401 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bi) #35, !dbg !11391, !noalias !11322 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !11391
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !11392
  br i1 %i.bz, label %bb.n, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !11392

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.lcssa.i.i = phi float [ %i.bh, %bb.m ], [ %..i.i.i.i, %bb.n ], !dbg !11402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11403, !noalias !11322
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11404

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi float [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i32 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldfNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !11405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11406
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11407

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !11360
  br i1 %lcmp.mod.not, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %.epil.preheader, !dbg !11360

.epil.preheader:                                  ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.f
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %i.ae, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi float [ %i.q, %bb.f ], [ %..i.i.i.i.i.i.1, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod14 = trunc i64 %i.s to i1, !dbg !11360
  tail call void @llvm.assume(i1 %lcmp.mod14), !dbg !11360
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i.epil.init, !dbg !11354
  %.val.i.i.i.epil = load float, ptr %i.ca, align 4, !dbg !11355, !noundef !1221 ; 2 uses
  %i.cb = fcmp olt float %.sroa.02.0.i.i.i.epil.init, %.val.i.i.i.epil, !dbg !11356
  %i.cc = fcmp uno float %.sroa.02.0.i.i.i.epil.init, 0.000000e+00, !dbg !11357
  %i.cd = or i1 %i.cc, %i.cb, !dbg !11356
  %..i.i.i.i.i.i.epil = select i1 %i.cd, float %.sroa.02.0.i.i.i.epil.init, float %.val.i.i.i.epil, !dbg !11358
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11408

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %.epil.preheader, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i32 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ 1, %.epil.preheader ]
  %.sroa.3.0.i.pn = phi float [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSfENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %..i.i.i.i.i.i.1, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterfEENtNtNtBa_6traits8iterator8Iterator6reduceNvYfNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.epil, %.epil.preheader ]
  %.pn9 = insertvalue { i32, float } poison, i32 %.sroa.0.0.i.pn, 0, !dbg !11408
  %.pn = insertvalue { i32, float } %.pn9, float %.sroa.3.0.i.pn, 1, !dbg !11408
  ret { i32, float } %.pn, !dbg !11409
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valshNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11410 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !11520, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !11521
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !11522

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11523 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !11523, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !11523
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !11524

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11525
  %i.h = load i64, ptr %i.g, align 8, !dbg !11525, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !11526

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !11527
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !11528

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !11529
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !11530
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !11530

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11531
  %i.l = load i64, ptr %i.k, align 8, !dbg !11531, !noundef !1221 ; 6 uses
  %.not.i = icmp samesign eq i64 %i.l, 0, !dbg !11532
  br i1 %.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !11533

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11534
  %i.n = load ptr, ptr %i.m, align 8, !dbg !11534, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !11535 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !dbg !11536, !noalias !11502, !noundef !1221 ; 5 uses
  %i.q = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.p, 1, !dbg !11537 ; 4 uses
  %i.r = icmp samesign eq i64 %i.l, 1, !dbg !11538
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !11539

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, -2
  %i.t = add i64 %i.l, -1, !dbg !11540            ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 5, !dbg !11540
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !11540

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.l, 33, !dbg !11540
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !11540

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 28
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !11540

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !11541 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi13 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index, !dbg !11542 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !11543
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !dbg !11543
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !dbg !11543
  %i.x = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !11544 ; 2 uses
  %i.y = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi13, <16 x i8> %wide.load14), !dbg !11544 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !11541 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !11540
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !11540, !llvm.loop !11456

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.x, <16 x i8> %i.y), !dbg !11540
  %i.aa = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax), !dbg !11540 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !11540
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !11540

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !11541
  %bc.merge.rdx = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ], !dbg !11545
  %n.vec15 = and i64 %i.t, -4                     ; 3 uses
  %broadcast.splatinsert16 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat17 = shufflevector <4 x i8> %broadcast.splatinsert16, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !11541 ; 2 uses
  %vec.phi19 = phi <4 x i8> [ %broadcast.splat17, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %index18, !dbg !11542
  %wide.load20 = load <4 x i8>, ptr %i.ab, align 1, !dbg !11543
  %i.ac = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi19, <4 x i8> %wide.load20), !dbg !11544 ; 2 uses
  %index.next21 = add nuw i64 %index18, 4, !dbg !11541 ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec15, !dbg !11540
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !11540, !llvm.loop !11457

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.ac), !dbg !11540 ; 2 uses
  %cmp.n22 = icmp eq i64 %i.t, %n.vec15, !dbg !11540
  br i1 %cmp.n22, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !11540

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !11540

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !11541 ; 3 uses
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !11545
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i.i.i, !dbg !11542
  %.val.i.i.i = load i8, ptr %i.af, align 1, !dbg !11543, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i8 @llvm.umax.i8(i8 %.sroa.02.0.i.i.i, i8 %.val.i.i.i), !dbg !11544 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !11546
  %i.ah = icmp eq i64 %.sroa.04.0.i.i.i, %i.s, !dbg !11540
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !11540, !llvm.loop !11460

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11547
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11548
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !11548, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11549
  %i.al = load i64, ptr %i.ak, align 8, !dbg !11549, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11550 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !11550, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !11550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11510), !dbg !11551
  br i1 %.not, label %bb.h, label %bb.g, !dbg !11552

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11553 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !11553, !noalias !11510, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !11554
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !11554, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !11555, !alias.scope !11510
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11555
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11555
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !11555, !alias.scope !11510
  store i64 %i.al, ptr %i.ar, align 8, !dbg !11555, !alias.scope !11510
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !11555
  store i64 0, ptr %i.as, align 8, !dbg !11555, !alias.scope !11510
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11555
  store i64 %i.al, ptr %i.at, align 8, !dbg !11555, !alias.scope !11510
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !11556

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !11557, !noalias !11510
  unreachable, !dbg !11557

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !11558
  %i.au = load i64, ptr %i.ao, align 8, !dbg !11559, !noalias !11510, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !11560, !noalias !11510
  %i.aw = sub i64 %i.au, %i.av, !dbg !11561
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11562
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !11562, !alias.scope !11510
  store i64 %i.al, ptr %i.ay, align 8, !dbg !11562, !alias.scope !11510
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !11556

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !11563
  store i64 %.sink, ptr %i.az, align 8, !dbg !11563, !alias.scope !11510
  store ptr %i.aj, ptr %i.c, align 8, !dbg !11564
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11564 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !11564
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11564 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !11564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11565
  call void @llvm.experimental.noalias.scope.decl(metadata !11511), !dbg !11566
  call void @llvm.experimental.noalias.scope.decl(metadata !11512), !dbg !11567
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !11568 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !11568
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !11569
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11569

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !11568 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !11570, !alias.scope !11513, !nonnull !1221, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !11570, !alias.scope !11513, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !11571
  call void @llvm.assume(i1 %i.bi), !dbg !11572
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !11573
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !11574, !alias.scope !11514, !noalias !11513, !noundef !1221 ; 3 uses
  %i.bl = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.bk, 1, !dbg !11575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11576, !noalias !11511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !11576
  call void @llvm.experimental.noalias.scope.decl(metadata !11515), !dbg !11577
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bn = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !11578, !noalias !11511 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0, !dbg !11578
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !11579
  br i1 %i.bp, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !11579

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !11579

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.br = phi { i64, i64 } [ %i.bn, %.lr.ph.i.i ], [ %i.by, %bb.l ]
  %.sroa.0.08.i.i = phi i8 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11516), !dbg !11580
  %i.bs = extractvalue { i64, i64 } %i.br, 1, !dbg !11578 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !dbg !11581, !alias.scope !11517, !noalias !11511, !nonnull !1221, !noundef !1221
  %i.bu = load i64, ptr %i.bq, align 8, !dbg !11581, !alias.scope !11517, !noalias !11511, !noundef !1221
  %i.bv = icmp ult i64 %i.bs, %i.bu, !dbg !11582
  call void @llvm.assume(i1 %i.bv), !dbg !11583
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !11584
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !11585, !alias.scope !11518, !noalias !11519, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.umax.i8(i8 %.sroa.0.08.i.i, i8 %i.bx), !dbg !11586 ; 2 uses
  %i.by = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !11578, !noalias !11511 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0, !dbg !11578
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !11579
  br i1 %i.ca, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !11579

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i8 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !11587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11588, !noalias !11511
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11589

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i
  %i.cb = phi { i1, i8 } [ %i.bl, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ { i1 false, i8 undef }, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.3.0.i7 = phi i8 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11590
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11591

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit
  %.pn9 = phi { i1, i8 } [ %i.cb, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ { i1 false, i8 undef }, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i8 [ %.sroa.3.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.p, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn = insertvalue { i1, i8 } %.pn9, i8 %.sroa.3.0.i.pn, 1, !dbg !11592
  ret { i1, i8 } %.pn, !dbg !11593
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valshNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11594 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !11704, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !11705
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !11706

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11707 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !11707, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !11707
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !11708

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11709
  %i.h = load i64, ptr %i.g, align 8, !dbg !11709, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !11710

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !11711
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !11712

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !11713
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !11714
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !11714

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11715
  %i.l = load i64, ptr %i.k, align 8, !dbg !11715, !noundef !1221 ; 6 uses
  %.not.i = icmp samesign eq i64 %i.l, 0, !dbg !11716
  br i1 %.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !11717

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11718
  %i.n = load ptr, ptr %i.m, align 8, !dbg !11718, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !11719 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !dbg !11720, !noalias !11686, !noundef !1221 ; 5 uses
  %i.q = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.p, 1, !dbg !11721 ; 4 uses
  %i.r = icmp samesign eq i64 %i.l, 1, !dbg !11722
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !11723

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, -2
  %i.t = add i64 %i.l, -1, !dbg !11724            ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 5, !dbg !11724
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !11724

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.l, 33, !dbg !11724
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !11724

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 28
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !11724

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !11725 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi13 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index, !dbg !11726 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !11727
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !dbg !11727
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !dbg !11727
  %i.x = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !11728 ; 2 uses
  %i.y = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi13, <16 x i8> %wide.load14), !dbg !11728 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !11725 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !11724
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !11724, !llvm.loop !11640

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.x, <16 x i8> %i.y), !dbg !11724
  %i.aa = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax), !dbg !11724 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !11724
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !11724

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !11725
  %bc.merge.rdx = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ], !dbg !11729
  %n.vec15 = and i64 %i.t, -4                     ; 3 uses
  %broadcast.splatinsert16 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat17 = shufflevector <4 x i8> %broadcast.splatinsert16, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !11725 ; 2 uses
  %vec.phi19 = phi <4 x i8> [ %broadcast.splat17, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %index18, !dbg !11726
  %wide.load20 = load <4 x i8>, ptr %i.ab, align 1, !dbg !11727
  %i.ac = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi19, <4 x i8> %wide.load20), !dbg !11728 ; 2 uses
  %index.next21 = add nuw i64 %index18, 4, !dbg !11725 ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec15, !dbg !11724
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !11724, !llvm.loop !11641

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.ac), !dbg !11724 ; 2 uses
  %cmp.n22 = icmp eq i64 %i.t, %n.vec15, !dbg !11724
  br i1 %cmp.n22, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !11724

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !11724

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !11725 ; 3 uses
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !11729
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i.i.i, !dbg !11726
  %.val.i.i.i = load i8, ptr %i.af, align 1, !dbg !11727, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i8 @llvm.umin.i8(i8 %.sroa.02.0.i.i.i, i8 %.val.i.i.i), !dbg !11728 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !11730
  %i.ah = icmp eq i64 %.sroa.04.0.i.i.i, %i.s, !dbg !11724
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !11724, !llvm.loop !11644

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11731
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11732
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !11732, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11733
  %i.al = load i64, ptr %i.ak, align 8, !dbg !11733, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11734 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !11734, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !11734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11735
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11694), !dbg !11735
  br i1 %.not, label %bb.h, label %bb.g, !dbg !11736

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11737 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !11737, !noalias !11694, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !11738
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !11738, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !11739, !alias.scope !11694
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11739
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11739
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !11739, !alias.scope !11694
  store i64 %i.al, ptr %i.ar, align 8, !dbg !11739, !alias.scope !11694
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !11739
  store i64 0, ptr %i.as, align 8, !dbg !11739, !alias.scope !11694
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11739
  store i64 %i.al, ptr %i.at, align 8, !dbg !11739, !alias.scope !11694
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !11740

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !11741, !noalias !11694
  unreachable, !dbg !11741

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !11742
  %i.au = load i64, ptr %i.ao, align 8, !dbg !11743, !noalias !11694, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !11744, !noalias !11694
  %i.aw = sub i64 %i.au, %i.av, !dbg !11745
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11746
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !11746, !alias.scope !11694
  store i64 %i.al, ptr %i.ay, align 8, !dbg !11746, !alias.scope !11694
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !11740

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !11747
  store i64 %.sink, ptr %i.az, align 8, !dbg !11747, !alias.scope !11694
  store ptr %i.aj, ptr %i.c, align 8, !dbg !11748
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11748 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !11748
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11748 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !11748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11749
  call void @llvm.experimental.noalias.scope.decl(metadata !11695), !dbg !11750
  call void @llvm.experimental.noalias.scope.decl(metadata !11696), !dbg !11751
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !11752 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !11752
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !11753
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11753

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !11752 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !11754, !alias.scope !11697, !nonnull !1221, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !11754, !alias.scope !11697, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !11755
  call void @llvm.assume(i1 %i.bi), !dbg !11756
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !11757
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !11758, !alias.scope !11698, !noalias !11697, !noundef !1221 ; 3 uses
  %i.bl = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.bk, 1, !dbg !11759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11760, !noalias !11695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !11760
  call void @llvm.experimental.noalias.scope.decl(metadata !11699), !dbg !11761
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bn = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !11762, !noalias !11695 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0, !dbg !11762
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !11763
  br i1 %i.bp, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !11763

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !11763

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.br = phi { i64, i64 } [ %i.bn, %.lr.ph.i.i ], [ %i.by, %bb.l ]
  %.sroa.0.08.i.i = phi i8 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11700), !dbg !11764
  %i.bs = extractvalue { i64, i64 } %i.br, 1, !dbg !11762 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !dbg !11765, !alias.scope !11701, !noalias !11695, !nonnull !1221, !noundef !1221
  %i.bu = load i64, ptr %i.bq, align 8, !dbg !11765, !alias.scope !11701, !noalias !11695, !noundef !1221
  %i.bv = icmp ult i64 %i.bs, %i.bu, !dbg !11766
  call void @llvm.assume(i1 %i.bv), !dbg !11767
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !11768
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !11769, !alias.scope !11702, !noalias !11703, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.umin.i8(i8 %.sroa.0.08.i.i, i8 %i.bx), !dbg !11770 ; 2 uses
  %i.by = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !11762, !noalias !11695 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0, !dbg !11762
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !11763
  br i1 %i.ca, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !11763

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i8 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !11771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11772, !noalias !11695
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11773

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i
  %i.cb = phi { i1, i8 } [ %i.bl, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ { i1 false, i8 undef }, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.3.0.i7 = phi i8 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11774
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11775

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit
  %.pn9 = phi { i1, i8 } [ %i.cb, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ { i1 false, i8 undef }, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i8 [ %.sroa.3.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.p, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn = insertvalue { i1, i8 } %.pn9, i8 %.sroa.3.0.i.pn, 1, !dbg !11776
  ret { i1, i8 } %.pn, !dbg !11777
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valshNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11778 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !11887, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !11888
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !11889

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11890 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !11890, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !11890
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !11891

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11892
  %i.h = load i64, ptr %i.g, align 8, !dbg !11892, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !11893

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !11894
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !11895

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !11896
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !11897
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !11897

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11898
  %i.l = load i64, ptr %i.k, align 8, !dbg !11898, !noundef !1221 ; 6 uses
  %.not.i = icmp samesign eq i64 %i.l, 0, !dbg !11899
  br i1 %.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !11900

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11901
  %i.n = load ptr, ptr %i.m, align 8, !dbg !11901, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !11902 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !dbg !11903, !noalias !11869, !noundef !1221 ; 5 uses
  %i.q = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.p, 1, !dbg !11904 ; 4 uses
  %i.r = icmp samesign eq i64 %i.l, 1, !dbg !11905
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !11906

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, -2
  %i.t = add i64 %i.l, -1, !dbg !11907            ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 5, !dbg !11907
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !11907

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.l, 33, !dbg !11907
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !11907

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 28
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !11907

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !11908 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi13 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index, !dbg !11909 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !11910
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !dbg !11910
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !dbg !11910
  %i.x = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !11911 ; 2 uses
  %i.y = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi13, <16 x i8> %wide.load14), !dbg !11911 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !11908 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !11907
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !11907, !llvm.loop !11823

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.x, <16 x i8> %i.y), !dbg !11907
  %i.aa = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax), !dbg !11907 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !11907
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !11907

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !11908
  %bc.merge.rdx = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ], !dbg !11912
  %n.vec15 = and i64 %i.t, -4                     ; 3 uses
  %broadcast.splatinsert16 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat17 = shufflevector <4 x i8> %broadcast.splatinsert16, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !11908 ; 2 uses
  %vec.phi19 = phi <4 x i8> [ %broadcast.splat17, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %index18, !dbg !11909
  %wide.load20 = load <4 x i8>, ptr %i.ab, align 1, !dbg !11910
  %i.ac = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi19, <4 x i8> %wide.load20), !dbg !11911 ; 2 uses
  %index.next21 = add nuw i64 %index18, 4, !dbg !11908 ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec15, !dbg !11907
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !11907, !llvm.loop !11824

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.ac), !dbg !11907 ; 2 uses
  %cmp.n22 = icmp eq i64 %i.t, %n.vec15, !dbg !11907
  br i1 %cmp.n22, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !11907

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !11907

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !11908 ; 3 uses
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !11912
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i.i.i, !dbg !11909
  %.val.i.i.i = load i8, ptr %i.af, align 1, !dbg !11910, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i8 @llvm.umax.i8(i8 %.sroa.02.0.i.i.i, i8 %.val.i.i.i), !dbg !11911 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !11913
  %i.ah = icmp eq i64 %.sroa.04.0.i.i.i, %i.s, !dbg !11907
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !11907, !llvm.loop !11827

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11914
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !11915
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !11915, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !11916
  %i.al = load i64, ptr %i.ak, align 8, !dbg !11916, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !11917 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !11917, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !11917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11918
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11877), !dbg !11918
  br i1 %.not, label %bb.h, label %bb.g, !dbg !11919

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !11920 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !11920, !noalias !11877, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !11921
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !11921, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !11922, !alias.scope !11877
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11922
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !11922, !alias.scope !11877
  store i64 %i.al, ptr %i.ar, align 8, !dbg !11922, !alias.scope !11877
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !11922
  store i64 0, ptr %i.as, align 8, !dbg !11922, !alias.scope !11877
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11922
  store i64 %i.al, ptr %i.at, align 8, !dbg !11922, !alias.scope !11877
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !11923

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !11924, !noalias !11877
  unreachable, !dbg !11924

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !11925
  %i.au = load i64, ptr %i.ao, align 8, !dbg !11926, !noalias !11877, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !11927, !noalias !11877
  %i.aw = sub i64 %i.au, %i.av, !dbg !11928
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !11929
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !11929
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !11929, !alias.scope !11877
  store i64 %i.al, ptr %i.ay, align 8, !dbg !11929, !alias.scope !11877
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !11923

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !11930
  store i64 %.sink, ptr %i.az, align 8, !dbg !11930, !alias.scope !11877
  store ptr %i.aj, ptr %i.c, align 8, !dbg !11931
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11931 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !11931
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11931 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !11931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11932
  call void @llvm.experimental.noalias.scope.decl(metadata !11878), !dbg !11933
  call void @llvm.experimental.noalias.scope.decl(metadata !11879), !dbg !11934
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !11935 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !11935
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !11936
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11936

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !11935 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !11937, !alias.scope !11880, !nonnull !1221, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !11937, !alias.scope !11880, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !11938
  call void @llvm.assume(i1 %i.bi), !dbg !11939
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !11940
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !11941, !alias.scope !11881, !noalias !11880, !noundef !1221 ; 3 uses
  %i.bl = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.bk, 1, !dbg !11942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11943, !noalias !11878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !11943
  call void @llvm.experimental.noalias.scope.decl(metadata !11882), !dbg !11944
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bn = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !11945, !noalias !11878 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0, !dbg !11945
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !11946
  br i1 %i.bp, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !11946

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !11946

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.br = phi { i64, i64 } [ %i.bn, %.lr.ph.i.i ], [ %i.by, %bb.l ]
  %.sroa.0.08.i.i = phi i8 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11883), !dbg !11947
  %i.bs = extractvalue { i64, i64 } %i.br, 1, !dbg !11945 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !dbg !11948, !alias.scope !11884, !noalias !11878, !nonnull !1221, !noundef !1221
  %i.bu = load i64, ptr %i.bq, align 8, !dbg !11948, !alias.scope !11884, !noalias !11878, !noundef !1221
  %i.bv = icmp ult i64 %i.bs, %i.bu, !dbg !11949
  call void @llvm.assume(i1 %i.bv), !dbg !11950
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !11951
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !11952, !alias.scope !11885, !noalias !11886, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.umax.i8(i8 %.sroa.0.08.i.i, i8 %i.bx), !dbg !11953 ; 2 uses
  %i.by = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !11945, !noalias !11878 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0, !dbg !11945
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !11946
  br i1 %i.ca, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !11946

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i8 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !11954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11955, !noalias !11878
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11956

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %i.cb = phi { i1, i8 } [ %i.bl, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ { i1 false, i8 undef }, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.3.0.i7 = phi i8 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11957
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !11958

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.pn9 = phi { i1, i8 } [ %i.cb, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ { i1 false, i8 undef }, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i8 [ %.sroa.3.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.p, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn = insertvalue { i1, i8 } %.pn9, i8 %.sroa.3.0.i.pn, 1, !dbg !11959
  ret { i1, i8 } %.pn, !dbg !11960
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valshNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11961 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !12070, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !12071
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !12072

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12073 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !12073, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !12073
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !12074

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12075
  %i.h = load i64, ptr %i.g, align 8, !dbg !12075, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !12076

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !12077
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !12078

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !12079
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !12080
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !12080

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12081
  %i.l = load i64, ptr %i.k, align 8, !dbg !12081, !noundef !1221 ; 6 uses
  %.not.i = icmp samesign eq i64 %i.l, 0, !dbg !12082
  br i1 %.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !12083

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12084
  %i.n = load ptr, ptr %i.m, align 8, !dbg !12084, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !12085 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !dbg !12086, !noalias !12052, !noundef !1221 ; 5 uses
  %i.q = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.p, 1, !dbg !12087 ; 4 uses
  %i.r = icmp samesign eq i64 %i.l, 1, !dbg !12088
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !12089

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, -2
  %i.t = add i64 %i.l, -1, !dbg !12090            ; 5 uses
  %min.iters.check = icmp ult i64 %i.l, 5, !dbg !12090
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !12090

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.l, 33, !dbg !12090
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph, !dbg !12090

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 28
  %n.vec = and i64 %i.t, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !12090

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !12091 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi13 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %index, !dbg !12092 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !12093
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !dbg !12093
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !dbg !12093
  %i.x = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !12094 ; 2 uses
  %i.y = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi13, <16 x i8> %wide.load14), !dbg !12094 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !12091 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !12090
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !12090, !llvm.loop !12006

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.x, <16 x i8> %i.y), !dbg !12090
  %i.aa = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax), !dbg !12090 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !12090
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !12090

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !12091
  %bc.merge.rdx = phi i8 [ %i.aa, %vec.epilog.iter.check ], [ %i.p, %vector.main.loop.iter.check ], !dbg !12095
  %n.vec15 = and i64 %i.t, -4                     ; 3 uses
  %broadcast.splatinsert16 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat17 = shufflevector <4 x i8> %broadcast.splatinsert16, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ], !dbg !12091 ; 2 uses
  %vec.phi19 = phi <4 x i8> [ %broadcast.splat17, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %index18, !dbg !12092
  %wide.load20 = load <4 x i8>, ptr %i.ab, align 1, !dbg !12093
  %i.ac = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi19, <4 x i8> %wide.load20), !dbg !12094 ; 2 uses
  %index.next21 = add nuw i64 %index18, 4, !dbg !12091 ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec15, !dbg !12090
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !12090, !llvm.loop !12007

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.ac), !dbg !12090 ; 2 uses
  %cmp.n22 = icmp eq i64 %i.t, %n.vec15, !dbg !12090
  br i1 %cmp.n22, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !12090

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i8 [ %i.p, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !12090

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !12091 ; 3 uses
  %.sroa.02.0.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !12095
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.04.0.i.i.i, !dbg !12092
  %.val.i.i.i = load i8, ptr %i.af, align 1, !dbg !12093, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i8 @llvm.umin.i8(i8 %.sroa.02.0.i.i.i, i8 %.val.i.i.i), !dbg !12094 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !12096
  %i.ah = icmp eq i64 %.sroa.04.0.i.i.i, %i.s, !dbg !12090
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !12090, !llvm.loop !12010

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12097
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12098
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !12098, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12099
  %i.al = load i64, ptr %i.ak, align 8, !dbg !12099, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12100 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !12100, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !12100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12060), !dbg !12101
  br i1 %.not, label %bb.h, label %bb.g, !dbg !12102

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !12103 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !12103, !noalias !12060, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !12104
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !12104, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !12105, !alias.scope !12060
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12105
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !12105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !12105, !alias.scope !12060
  store i64 %i.al, ptr %i.ar, align 8, !dbg !12105, !alias.scope !12060
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !12105
  store i64 0, ptr %i.as, align 8, !dbg !12105, !alias.scope !12060
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !12105
  store i64 %i.al, ptr %i.at, align 8, !dbg !12105, !alias.scope !12060
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !12106

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !12107, !noalias !12060
  unreachable, !dbg !12107

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !12108
  %i.au = load i64, ptr %i.ao, align 8, !dbg !12109, !noalias !12060, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !12110, !noalias !12060
  %i.aw = sub i64 %i.au, %i.av, !dbg !12111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !12112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !12112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !12112, !alias.scope !12060
  store i64 %i.al, ptr %i.ay, align 8, !dbg !12112, !alias.scope !12060
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !12106

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !12113
  store i64 %.sink, ptr %i.az, align 8, !dbg !12113, !alias.scope !12060
  store ptr %i.aj, ptr %i.c, align 8, !dbg !12114
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12114 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !12114
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !12114 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !12114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12115
  call void @llvm.experimental.noalias.scope.decl(metadata !12061), !dbg !12116
  call void @llvm.experimental.noalias.scope.decl(metadata !12062), !dbg !12117
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !12118 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !12118
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !12119
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !12119

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !12118 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !12120, !alias.scope !12063, !nonnull !1221, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !12120, !alias.scope !12063, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !12121
  call void @llvm.assume(i1 %i.bi), !dbg !12122
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf, !dbg !12123
  %i.bk = load i8, ptr %i.bj, align 1, !dbg !12124, !alias.scope !12064, !noalias !12063, !noundef !1221 ; 3 uses
  %i.bl = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %i.bk, 1, !dbg !12125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12126, !noalias !12061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !12126
  call void @llvm.experimental.noalias.scope.decl(metadata !12065), !dbg !12127
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bn = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !12128, !noalias !12061 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0, !dbg !12128
  %i.bp = trunc nuw i64 %i.bo to i1, !dbg !12129
  br i1 %i.bp, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !12129

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !12129

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.br = phi { i64, i64 } [ %i.bn, %.lr.ph.i.i ], [ %i.by, %bb.l ]
  %.sroa.0.08.i.i = phi i8 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12066), !dbg !12130
  %i.bs = extractvalue { i64, i64 } %i.br, 1, !dbg !12128 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !dbg !12131, !alias.scope !12067, !noalias !12061, !nonnull !1221, !noundef !1221
  %i.bu = load i64, ptr %i.bq, align 8, !dbg !12131, !alias.scope !12067, !noalias !12061, !noundef !1221
  %i.bv = icmp ult i64 %i.bs, %i.bu, !dbg !12132
  call void @llvm.assume(i1 %i.bv), !dbg !12133
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !12134
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !12135, !alias.scope !12068, !noalias !12069, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i8 @llvm.umin.i8(i8 %.sroa.0.08.i.i, i8 %i.bx), !dbg !12136 ; 2 uses
  %i.by = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bm) #35, !dbg !12128, !noalias !12061 ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0, !dbg !12128
  %i.ca = trunc nuw i64 %i.bz to i1, !dbg !12129
  br i1 %i.ca, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !12129

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i8 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !12137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12138, !noalias !12061
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !12139

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %i.cb = phi { i1, i8 } [ %i.bl, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ { i1 false, i8 undef }, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.3.0.i7 = phi i8 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldhNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12140
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !12141

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.pn9 = phi { i1, i8 } [ %i.cb, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ { i1 false, i8 undef }, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.q, %middle.block ], [ %i.q, %vec.epilog.middle.block ], [ %i.q, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i8 [ %.sroa.3.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterShENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYhNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.p, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn = insertvalue { i1, i8 } %.pn9, i8 %.sroa.3.0.i.pn, 1, !dbg !12142
  ret { i1, i8 } %.pn, !dbg !12143
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valslNvYlNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12144 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !12262, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !12263
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !12264

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12265 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !12265, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !12265
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !12266

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12267
  %i.h = load i64, ptr %i.g, align 8, !dbg !12267, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !12268

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !12269
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !12270

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !12271
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !12272
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.g, !dbg !12272

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12273
  %i.l = load i64, ptr %i.k, align 8, !dbg !12273, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !12274
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterlEENtNtNtBa_6traits8iterator8Iterator6reduceNvYlNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !12275

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !12276
  %i.o = load ptr, ptr %i.n, align 8, !dbg !12276, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !12277 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !dbg !12278, !noalias !12244, !noundef !1221 ; 3 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !12279
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterlEENtNtNtBa_6traits8iterator8Iterator6reduceNvYlNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !12280

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %i.l, 4611686018427387903, !dbg !12281 ; 2 uses
  %i.t = and i64 %i.s, 4611686018427387903, !dbg !12281 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 8, !dbg !12282
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !12282

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.s, 4611686018427387896      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.q, i64 0
end_hunk_1
begin_hunk_2_@_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsoNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanEB6_:bb.a
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !15291, !noundef !1221 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !15292 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !15292, !noundef !1221
  %.not = icmp eq ptr %i.ag, null, !dbg !15292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15242), !dbg !15293
  br i1 %.not, label %bb.j, label %bb.i, !dbg !15294

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !15295 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !15295, !noalias !15242, !noundef !1221
  %i.aj = icmp eq i64 %i.ae, %i.ai, !dbg !15296
  br i1 %i.aj, label %bb.l, label %bb.k, !dbg !15296, !prof !1388

bb.j:                                             ; preds = %bb.h
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !15297, !alias.scope !15242
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15297
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15297
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !15297, !alias.scope !15242
  store i64 %i.ae, ptr %i.ak, align 8, !dbg !15297, !alias.scope !15242
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !15297
  store i64 0, ptr %i.al, align 8, !dbg !15297, !alias.scope !15242
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15297
  store i64 %i.ae, ptr %i.am, align 8, !dbg !15297, !alias.scope !15242
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !15298

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !15299, !noalias !15242
  unreachable, !dbg !15299

bb.l:                                             ; preds = %bb.i
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.af), !dbg !15300
  %i.an = load i64, ptr %i.ah, align 8, !dbg !15301, !noalias !15242, !noundef !1221
  %i.ao = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.af), !dbg !15302, !noalias !15242
  %i.ap = sub i64 %i.an, %i.ao, !dbg !15303
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15304
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !dbg !15304, !alias.scope !15242
  store i64 %i.ae, ptr %i.ar, align 8, !dbg !15304, !alias.scope !15242
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !15298

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.j, %bb.l
  %.sink = phi i64 [ %i.ae, %bb.j ], [ %i.ap, %bb.l ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !15305
  store i64 %.sink, ptr %i.as, align 8, !dbg !15305, !alias.scope !15242
  store ptr %i.ac, ptr %i.c, align 8, !dbg !15306
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15306 ; 2 uses
  store i64 %i.ae, ptr %i.at, align 8, !dbg !15306
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15306 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !15306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15307
  call void @llvm.experimental.noalias.scope.decl(metadata !15243), !dbg !15308
  call void @llvm.experimental.noalias.scope.decl(metadata !15244), !dbg !15308
  call void @llvm.experimental.noalias.scope.decl(metadata !15245), !dbg !15309
  %i.av = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.au) #35, !dbg !15310, !noalias !15246 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0, !dbg !15310
  %i.ax = trunc nuw i64 %i.aw to i1, !dbg !15311
  br i1 %i.ax, label %bb.m, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15311

bb.m:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.ay = extractvalue { i64, i64 } %i.av, 1, !dbg !15310 ; 2 uses
  %i.az = load ptr, ptr %i.c, align 8, !dbg !15312, !alias.scope !15247, !nonnull !1221, !align !1494, !noundef !1221
  %i.ba = load i64, ptr %i.at, align 8, !dbg !15312, !alias.scope !15247, !noundef !1221
  %i.bb = icmp ult i64 %i.ay, %i.ba, !dbg !15313
  call void @llvm.assume(i1 %i.bb), !dbg !15314
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay, !dbg !15315
  %i.bd = load i128, ptr %i.bc, align 16, !dbg !15316, !alias.scope !15248, !noalias !15249, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15317, !noalias !15250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !15317, !noalias !15243
  call void @llvm.experimental.noalias.scope.decl(metadata !15251), !dbg !15318
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bf = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.be) #35, !dbg !15319, !noalias !15252 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0, !dbg !15319
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !15320
  br i1 %i.bh, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldoNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !15320

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.n, !dbg !15320

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bj = phi { i64, i64 } [ %i.bf, %.lr.ph.i.i ], [ %i.bq, %bb.n ]
  %.sroa.0.07.i.i = phi i128 [ %i.bd, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.n ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15253), !dbg !15321
  %i.bk = extractvalue { i64, i64 } %i.bj, 1, !dbg !15319 ; 2 uses
  %i.bl = load ptr, ptr %i.a, align 8, !dbg !15322, !alias.scope !15254, !noalias !15250, !nonnull !1221, !align !1494, !noundef !1221
  %i.bm = load i64, ptr %i.bi, align 8, !dbg !15322, !alias.scope !15254, !noalias !15250, !noundef !1221
  %i.bn = icmp ult i64 %i.bk, %i.bm, !dbg !15323
  call void @llvm.assume(i1 %i.bn), !dbg !15324
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk, !dbg !15325
  %i.bp = load i128, ptr %i.bo, align 16, !dbg !15326, !alias.scope !15255, !noalias !15256, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i128 @llvm.umin.i128(i128 %.sroa.0.07.i.i, i128 %i.bp), !dbg !15327 ; 2 uses
  %i.bq = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.be) #35, !dbg !15319, !noalias !15252 ; 2 uses
  %i.br = extractvalue { i64, i64 } %i.bq, 0, !dbg !15319
  %i.bs = trunc nuw i64 %i.br to i1, !dbg !15320
  br i1 %i.bs, label %bb.n, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldoNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !15320

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldoNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.lcssa.i.i = phi i128 [ %i.bd, %bb.m ], [ %.sroa.0.0.i.i.i.i, %bb.n ], !dbg !15328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15329, !noalias !15250
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !15330
  store i128 %.sroa.0.0.lcssa.i.i, ptr %i.bt, align 16, !dbg !15330, !alias.scope !15243
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15331

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldoNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %storemerge.i4 = phi i128 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldoNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !15332
  store i128 %storemerge.i4, ptr %0, align 16, !dbg !15332, !alias.scope !15243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15333
  br label %bb.o, !dbg !15334

bb.o:                                             ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IteroEENtNtNtBa_6traits8iterator8Iterator6reduceNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSoENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYoNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  ret void, !dbg !15335
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15336 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !15455, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !15456
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !15457

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15458 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !15458, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !15458
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !15459

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15460
  %i.h = load i64, ptr %i.g, align 8, !dbg !15460, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !15461

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !15462
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !15463

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !15464
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !15465
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !15465

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15466
  %i.l = load i64, ptr %i.k, align 8, !dbg !15466, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !15467
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !15468

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !15469
  %i.o = load ptr, ptr %i.n, align 8, !dbg !15469, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !15470 ; 3 uses
  %i.q = load i16, ptr %i.o, align 2, !dbg !15471, !noalias !15437, !noundef !1221 ; 4 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !15472
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !15473

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, 9223372036854775807, !dbg !15474 ; 4 uses
  %i.t = and i64 %i.s, 9223372036854775807, !dbg !15474 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !15475
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !15475

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %i.t, 16, !dbg !15475
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !15475

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !15475

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !15476 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index, !dbg !15477 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !15478
  %wide.load = load <8 x i16>, ptr %i.v, align 2, !dbg !15478
  %wide.load15 = load <8 x i16>, ptr %i.w, align 2, !dbg !15478
  %i.x = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !15479 ; 2 uses
  %i.y = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi14, <8 x i16> %wide.load15), !dbg !15479 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !15476 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !15480
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !15480, !llvm.loop !15391

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.x, <8 x i16> %i.y), !dbg !15480
  %i.aa = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax), !dbg !15480 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !15480
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !15480

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !15476
  %bc.merge.rdx = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.q, %vector.main.loop.iter.check ], !dbg !15481
  %n.vec16 = and i64 %i.s, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ], !dbg !15476 ; 2 uses
  %vec.phi20 = phi <4 x i16> [ %broadcast.splat18, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index19, !dbg !15477
  %wide.load21 = load <4 x i16>, ptr %i.ab, align 2, !dbg !15478
  %i.ac = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi20, <4 x i16> %wide.load21), !dbg !15479 ; 2 uses
  %index.next22 = add nuw i64 %index19, 4, !dbg !15476 ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec16, !dbg !15480
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !15480, !llvm.loop !15392

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.ac), !dbg !15480 ; 2 uses
  %cmp.n23 = icmp eq i64 %i.t, %n.vec16, !dbg !15480
  br i1 %cmp.n23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !15480

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.q, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !15480

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !15476 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !15481
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i, !dbg !15477
  %.val.i.i.i = load i16, ptr %i.af, align 2, !dbg !15478, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i16 @llvm.smax.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i), !dbg !15479 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !15482 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.t, !dbg !15480
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !15480, !llvm.loop !15395

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15483
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !15484
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !15484, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15485
  %i.al = load i64, ptr %i.ak, align 8, !dbg !15485, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15486 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !15486, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !15486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15487
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15445), !dbg !15487
  br i1 %.not, label %bb.h, label %bb.g, !dbg !15488

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15489 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !15489, !noalias !15445, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !15490
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !15490, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !15491, !alias.scope !15445
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15491
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15491
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !15491, !alias.scope !15445
  store i64 %i.al, ptr %i.ar, align 8, !dbg !15491, !alias.scope !15445
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !15491
  store i64 0, ptr %i.as, align 8, !dbg !15491, !alias.scope !15445
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15491
  store i64 %i.al, ptr %i.at, align 8, !dbg !15491, !alias.scope !15445
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !15492

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !15493, !noalias !15445
  unreachable, !dbg !15493

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !15494
  %i.au = load i64, ptr %i.ao, align 8, !dbg !15495, !noalias !15445, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !15496, !noalias !15445
  %i.aw = sub i64 %i.au, %i.av, !dbg !15497
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15498
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15498
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !15498, !alias.scope !15445
  store i64 %i.al, ptr %i.ay, align 8, !dbg !15498, !alias.scope !15445
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !15492

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !15499
  store i64 %.sink, ptr %i.az, align 8, !dbg !15499, !alias.scope !15445
  store ptr %i.aj, ptr %i.c, align 8, !dbg !15500
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15500 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !15500
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15500 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !15500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15501
  call void @llvm.experimental.noalias.scope.decl(metadata !15446), !dbg !15502
  call void @llvm.experimental.noalias.scope.decl(metadata !15447), !dbg !15503
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !15504 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !15504
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !15505
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15505

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !15504 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !15506, !alias.scope !15448, !nonnull !1221, !align !1474, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !15506, !alias.scope !15448, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !15507
  call void @llvm.assume(i1 %i.bi), !dbg !15508
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf, !dbg !15509
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !15510, !alias.scope !15449, !noalias !15448, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15511, !noalias !15446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !15511
  call void @llvm.experimental.noalias.scope.decl(metadata !15450), !dbg !15512
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bm = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !15513, !noalias !15446 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0, !dbg !15513
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !15514
  br i1 %i.bo, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !15514

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !15514

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bq = phi { i64, i64 } [ %i.bm, %.lr.ph.i.i ], [ %i.bx, %bb.l ]
  %.sroa.0.09.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15451), !dbg !15515
  %i.br = extractvalue { i64, i64 } %i.bq, 1, !dbg !15513 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !dbg !15516, !alias.scope !15452, !noalias !15446, !nonnull !1221, !align !1474, !noundef !1221
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !15516, !alias.scope !15452, !noalias !15446, !noundef !1221
  %i.bu = icmp ult i64 %i.br, %i.bt, !dbg !15517
  call void @llvm.assume(i1 %i.bu), !dbg !15518
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.br, !dbg !15519
  %i.bw = load i16, ptr %i.bv, align 2, !dbg !15520, !alias.scope !15453, !noalias !15454, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i16 @llvm.smax.i16(i16 %.sroa.0.09.i.i, i16 %i.bw), !dbg !15521 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !15513, !noalias !15446 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !15513
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !15514
  br i1 %i.bz, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !15514

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !15522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15523, !noalias !15446
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15524

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !15525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15526
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15527

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !15528
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !15528
  ret { i16, i16 } %.pn, !dbg !15529
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15530 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !15649, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !15650
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !15651

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15652 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !15652, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !15652
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !15653

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15654
  %i.h = load i64, ptr %i.g, align 8, !dbg !15654, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !15655

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !15656
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !15657

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !15658
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !15659
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !15659

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15660
  %i.l = load i64, ptr %i.k, align 8, !dbg !15660, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !15661
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !15662

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !15663
  %i.o = load ptr, ptr %i.n, align 8, !dbg !15663, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !15664 ; 3 uses
  %i.q = load i16, ptr %i.o, align 2, !dbg !15665, !noalias !15631, !noundef !1221 ; 4 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !15666
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !15667

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, 9223372036854775807, !dbg !15668 ; 4 uses
  %i.t = and i64 %i.s, 9223372036854775807, !dbg !15668 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !15669
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !15669

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %i.t, 16, !dbg !15669
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !15669

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !15669

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !15670 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index, !dbg !15671 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !15672
  %wide.load = load <8 x i16>, ptr %i.v, align 2, !dbg !15672
  %wide.load15 = load <8 x i16>, ptr %i.w, align 2, !dbg !15672
  %i.x = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !15673 ; 2 uses
  %i.y = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi14, <8 x i16> %wide.load15), !dbg !15673 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !15670 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !15674
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !15674, !llvm.loop !15585

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.x, <8 x i16> %i.y), !dbg !15674
  %i.aa = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax), !dbg !15674 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !15674
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !15674

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !15670
  %bc.merge.rdx = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.q, %vector.main.loop.iter.check ], !dbg !15675
  %n.vec16 = and i64 %i.s, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ], !dbg !15670 ; 2 uses
  %vec.phi20 = phi <4 x i16> [ %broadcast.splat18, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index19, !dbg !15671
  %wide.load21 = load <4 x i16>, ptr %i.ab, align 2, !dbg !15672
  %i.ac = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi20, <4 x i16> %wide.load21), !dbg !15673 ; 2 uses
  %index.next22 = add nuw i64 %index19, 4, !dbg !15670 ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec16, !dbg !15674
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !15674, !llvm.loop !15586

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.ac), !dbg !15674 ; 2 uses
  %cmp.n23 = icmp eq i64 %i.t, %n.vec16, !dbg !15674
  br i1 %cmp.n23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !15674

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.q, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !15674

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !15670 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !15675
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i, !dbg !15671
  %.val.i.i.i = load i16, ptr %i.af, align 2, !dbg !15672, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i16 @llvm.smin.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i), !dbg !15673 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !15676 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.t, !dbg !15674
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !15674, !llvm.loop !15589

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15677
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !15678
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !15678, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15679
  %i.al = load i64, ptr %i.ak, align 8, !dbg !15679, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15680 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !15680, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !15680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15639), !dbg !15681
  br i1 %.not, label %bb.h, label %bb.g, !dbg !15682

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15683 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !15683, !noalias !15639, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !15684
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !15684, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !15685, !alias.scope !15639
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15685
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15685
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !15685, !alias.scope !15639
  store i64 %i.al, ptr %i.ar, align 8, !dbg !15685, !alias.scope !15639
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !15685
  store i64 0, ptr %i.as, align 8, !dbg !15685, !alias.scope !15639
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15685
  store i64 %i.al, ptr %i.at, align 8, !dbg !15685, !alias.scope !15639
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !15686

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !15687, !noalias !15639
  unreachable, !dbg !15687

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !15688
  %i.au = load i64, ptr %i.ao, align 8, !dbg !15689, !noalias !15639, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !15690, !noalias !15639
  %i.aw = sub i64 %i.au, %i.av, !dbg !15691
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15692
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !15692, !alias.scope !15639
  store i64 %i.al, ptr %i.ay, align 8, !dbg !15692, !alias.scope !15639
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !15686

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !15693
  store i64 %.sink, ptr %i.az, align 8, !dbg !15693, !alias.scope !15639
  store ptr %i.aj, ptr %i.c, align 8, !dbg !15694
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15694 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !15694
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15694 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !15694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15695
  call void @llvm.experimental.noalias.scope.decl(metadata !15640), !dbg !15696
  call void @llvm.experimental.noalias.scope.decl(metadata !15641), !dbg !15697
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !15698 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !15698
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !15699
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15699

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !15698 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !15700, !alias.scope !15642, !nonnull !1221, !align !1474, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !15700, !alias.scope !15642, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !15701
  call void @llvm.assume(i1 %i.bi), !dbg !15702
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf, !dbg !15703
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !15704, !alias.scope !15643, !noalias !15642, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15705, !noalias !15640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !15705
  call void @llvm.experimental.noalias.scope.decl(metadata !15644), !dbg !15706
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bm = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !15707, !noalias !15640 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0, !dbg !15707
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !15708
  br i1 %i.bo, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !15708

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !15708

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bq = phi { i64, i64 } [ %i.bm, %.lr.ph.i.i ], [ %i.bx, %bb.l ]
  %.sroa.0.09.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15645), !dbg !15709
  %i.br = extractvalue { i64, i64 } %i.bq, 1, !dbg !15707 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !dbg !15710, !alias.scope !15646, !noalias !15640, !nonnull !1221, !align !1474, !noundef !1221
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !15710, !alias.scope !15646, !noalias !15640, !noundef !1221
  %i.bu = icmp ult i64 %i.br, %i.bt, !dbg !15711
  call void @llvm.assume(i1 %i.bu), !dbg !15712
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.br, !dbg !15713
  %i.bw = load i16, ptr %i.bv, align 2, !dbg !15714, !alias.scope !15647, !noalias !15648, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i16 @llvm.smin.i16(i16 %.sroa.0.09.i.i, i16 %i.bw), !dbg !15715 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !15707, !noalias !15640 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !15707
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !15708
  br i1 %i.bz, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !15708

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !15716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15717, !noalias !15640
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15718

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !15719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15720
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15721

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !15722
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !15722
  ret { i16, i16 } %.pn, !dbg !15723
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15724 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !15842, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !15843
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !15844

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15845 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !15845, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !15845
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !15846

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15847
  %i.h = load i64, ptr %i.g, align 8, !dbg !15847, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !15848

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !15849
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !15850

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !15851
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !15852
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !15852

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15853
  %i.l = load i64, ptr %i.k, align 8, !dbg !15853, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !15854
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !15855

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !15856
  %i.o = load ptr, ptr %i.n, align 8, !dbg !15856, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !15857 ; 3 uses
  %i.q = load i16, ptr %i.o, align 2, !dbg !15858, !noalias !15824, !noundef !1221 ; 4 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !15859
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !15860

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, 9223372036854775807, !dbg !15861 ; 4 uses
  %i.t = and i64 %i.s, 9223372036854775807, !dbg !15861 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !15862
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !15862

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %i.t, 16, !dbg !15862
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !15862

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !15862

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !15863 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index, !dbg !15864 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !15865
  %wide.load = load <8 x i16>, ptr %i.v, align 2, !dbg !15865
  %wide.load15 = load <8 x i16>, ptr %i.w, align 2, !dbg !15865
  %i.x = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !15866 ; 2 uses
  %i.y = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi14, <8 x i16> %wide.load15), !dbg !15866 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !15863 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !15867
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !15867, !llvm.loop !15778

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.x, <8 x i16> %i.y), !dbg !15867
  %i.aa = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax), !dbg !15867 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !15867
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !15867

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !15863
  %bc.merge.rdx = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.q, %vector.main.loop.iter.check ], !dbg !15868
  %n.vec16 = and i64 %i.s, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ], !dbg !15863 ; 2 uses
  %vec.phi20 = phi <4 x i16> [ %broadcast.splat18, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index19, !dbg !15864
  %wide.load21 = load <4 x i16>, ptr %i.ab, align 2, !dbg !15865
  %i.ac = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi20, <4 x i16> %wide.load21), !dbg !15866 ; 2 uses
  %index.next22 = add nuw i64 %index19, 4, !dbg !15863 ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec16, !dbg !15867
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !15867, !llvm.loop !15779

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.ac), !dbg !15867 ; 2 uses
  %cmp.n23 = icmp eq i64 %i.t, %n.vec16, !dbg !15867
  br i1 %cmp.n23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !15867

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.q, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !15867

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !15863 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !15868
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i, !dbg !15864
  %.val.i.i.i = load i16, ptr %i.af, align 2, !dbg !15865, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i16 @llvm.smax.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i), !dbg !15866 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !15869 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.t, !dbg !15867
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !15867, !llvm.loop !15782

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15870
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !15871
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !15871, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15872
  %i.al = load i64, ptr %i.ak, align 8, !dbg !15872, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15873 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !15873, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !15873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15832), !dbg !15874
  br i1 %.not, label %bb.h, label %bb.g, !dbg !15875

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !15876 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !15876, !noalias !15832, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !15877
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !15877, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !15878, !alias.scope !15832
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15878
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !15878, !alias.scope !15832
  store i64 %i.al, ptr %i.ar, align 8, !dbg !15878, !alias.scope !15832
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !15878
  store i64 0, ptr %i.as, align 8, !dbg !15878, !alias.scope !15832
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15878
  store i64 %i.al, ptr %i.at, align 8, !dbg !15878, !alias.scope !15832
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !15879

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !15880, !noalias !15832
  unreachable, !dbg !15880

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !15881
  %i.au = load i64, ptr %i.ao, align 8, !dbg !15882, !noalias !15832, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !15883, !noalias !15832
  %i.aw = sub i64 %i.au, %i.av, !dbg !15884
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !15885
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !15885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !15885, !alias.scope !15832
  store i64 %i.al, ptr %i.ay, align 8, !dbg !15885, !alias.scope !15832
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !15879

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !15886
  store i64 %.sink, ptr %i.az, align 8, !dbg !15886, !alias.scope !15832
  store ptr %i.aj, ptr %i.c, align 8, !dbg !15887
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !15887 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !15887
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !15887 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !15887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15888
  call void @llvm.experimental.noalias.scope.decl(metadata !15833), !dbg !15889
  call void @llvm.experimental.noalias.scope.decl(metadata !15834), !dbg !15890
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !15891 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !15891
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !15892
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15892

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !15891 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !15893, !alias.scope !15835, !nonnull !1221, !align !1474, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !15893, !alias.scope !15835, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !15894
  call void @llvm.assume(i1 %i.bi), !dbg !15895
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf, !dbg !15896
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !15897, !alias.scope !15836, !noalias !15835, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15898, !noalias !15833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !15898
  call void @llvm.experimental.noalias.scope.decl(metadata !15837), !dbg !15899
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bm = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !15900, !noalias !15833 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0, !dbg !15900
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !15901
  br i1 %i.bo, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !15901

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !15901

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bq = phi { i64, i64 } [ %i.bm, %.lr.ph.i.i ], [ %i.bx, %bb.l ]
  %.sroa.0.09.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15838), !dbg !15902
  %i.br = extractvalue { i64, i64 } %i.bq, 1, !dbg !15900 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !dbg !15903, !alias.scope !15839, !noalias !15833, !nonnull !1221, !align !1474, !noundef !1221
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !15903, !alias.scope !15839, !noalias !15833, !noundef !1221
  %i.bu = icmp ult i64 %i.br, %i.bt, !dbg !15904
  call void @llvm.assume(i1 %i.bu), !dbg !15905
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.br, !dbg !15906
  %i.bw = load i16, ptr %i.bv, align 2, !dbg !15907, !alias.scope !15840, !noalias !15841, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i16 @llvm.smax.i16(i16 %.sroa.0.09.i.i, i16 %i.bw), !dbg !15908 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !15900, !noalias !15833 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !15900
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !15901
  br i1 %i.bz, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !15901

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !15909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15910, !noalias !15833
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15911

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !15912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15913
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !15914

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !15915
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !15915
  ret { i16, i16 } %.pn, !dbg !15916
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valssNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15917 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !16035, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !16036
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !16037

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16038 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !16038, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !16038
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !16039

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16040
  %i.h = load i64, ptr %i.g, align 8, !dbg !16040, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16041

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !16042
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16043

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !16044
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !16045
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !16045

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16046
  %i.l = load i64, ptr %i.k, align 8, !dbg !16046, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !16047
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !16048

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16049
  %i.o = load ptr, ptr %i.n, align 8, !dbg !16049, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !16050 ; 3 uses
  %i.q = load i16, ptr %i.o, align 2, !dbg !16051, !noalias !16017, !noundef !1221 ; 4 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !16052
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !16053

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, 9223372036854775807, !dbg !16054 ; 4 uses
  %i.t = and i64 %i.s, 9223372036854775807, !dbg !16054 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !16055
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !16055

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %i.t, 16, !dbg !16055
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !16055

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16055

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16056 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index, !dbg !16057 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !16058
  %wide.load = load <8 x i16>, ptr %i.v, align 2, !dbg !16058
  %wide.load15 = load <8 x i16>, ptr %i.w, align 2, !dbg !16058
  %i.x = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !16059 ; 2 uses
  %i.y = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi14, <8 x i16> %wide.load15), !dbg !16059 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !16056 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !16060
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !16060, !llvm.loop !15971

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.x, <8 x i16> %i.y), !dbg !16060
  %i.aa = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax), !dbg !16060 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !16060
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !16060

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !16056
  %bc.merge.rdx = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.q, %vector.main.loop.iter.check ], !dbg !16061
  %n.vec16 = and i64 %i.s, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ], !dbg !16056 ; 2 uses
  %vec.phi20 = phi <4 x i16> [ %broadcast.splat18, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index19, !dbg !16057
  %wide.load21 = load <4 x i16>, ptr %i.ab, align 2, !dbg !16058
  %i.ac = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi20, <4 x i16> %wide.load21), !dbg !16059 ; 2 uses
  %index.next22 = add nuw i64 %index19, 4, !dbg !16056 ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec16, !dbg !16060
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !16060, !llvm.loop !15972

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.ac), !dbg !16060 ; 2 uses
  %cmp.n23 = icmp eq i64 %i.t, %n.vec16, !dbg !16060
  br i1 %cmp.n23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !16060

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.q, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !16060

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16056 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16061
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i, !dbg !16057
  %.val.i.i.i = load i16, ptr %i.af, align 2, !dbg !16058, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i16 @llvm.smin.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i), !dbg !16059 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !16062 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.t, !dbg !16060
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !16060, !llvm.loop !15975

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16063
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16064
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !16064, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16065
  %i.al = load i64, ptr %i.ak, align 8, !dbg !16065, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16066 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !16066, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !16066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16025), !dbg !16067
  br i1 %.not, label %bb.h, label %bb.g, !dbg !16068

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16069 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !16069, !noalias !16025, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !16070
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !16070, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !16071, !alias.scope !16025
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16071
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16071
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !16071, !alias.scope !16025
  store i64 %i.al, ptr %i.ar, align 8, !dbg !16071, !alias.scope !16025
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16071
  store i64 0, ptr %i.as, align 8, !dbg !16071, !alias.scope !16025
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16071
  store i64 %i.al, ptr %i.at, align 8, !dbg !16071, !alias.scope !16025
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16072

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !16073, !noalias !16025
  unreachable, !dbg !16073

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !16074
  %i.au = load i64, ptr %i.ao, align 8, !dbg !16075, !noalias !16025, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !16076, !noalias !16025
  %i.aw = sub i64 %i.au, %i.av, !dbg !16077
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16078
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16078
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !16078, !alias.scope !16025
  store i64 %i.al, ptr %i.ay, align 8, !dbg !16078, !alias.scope !16025
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16072

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !16079
  store i64 %.sink, ptr %i.az, align 8, !dbg !16079, !alias.scope !16025
  store ptr %i.aj, ptr %i.c, align 8, !dbg !16080
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16080 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !16080
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16080 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !16080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16081
  call void @llvm.experimental.noalias.scope.decl(metadata !16026), !dbg !16082
  call void @llvm.experimental.noalias.scope.decl(metadata !16027), !dbg !16083
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !16084 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !16084
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !16085
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16085

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !16084 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !16086, !alias.scope !16028, !nonnull !1221, !align !1474, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !16086, !alias.scope !16028, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !16087
  call void @llvm.assume(i1 %i.bi), !dbg !16088
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf, !dbg !16089
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !16090, !alias.scope !16029, !noalias !16028, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16091, !noalias !16026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !16091
  call void @llvm.experimental.noalias.scope.decl(metadata !16030), !dbg !16092
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bm = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16093, !noalias !16026 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0, !dbg !16093
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !16094
  br i1 %i.bo, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16094

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !16094

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bq = phi { i64, i64 } [ %i.bm, %.lr.ph.i.i ], [ %i.bx, %bb.l ]
  %.sroa.0.09.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16031), !dbg !16095
  %i.br = extractvalue { i64, i64 } %i.bq, 1, !dbg !16093 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !dbg !16096, !alias.scope !16032, !noalias !16026, !nonnull !1221, !align !1474, !noundef !1221
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !16096, !alias.scope !16032, !noalias !16026, !noundef !1221
  %i.bu = icmp ult i64 %i.br, %i.bt, !dbg !16097
  call void @llvm.assume(i1 %i.bu), !dbg !16098
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.br, !dbg !16099
  %i.bw = load i16, ptr %i.bv, align 2, !dbg !16100, !alias.scope !16033, !noalias !16034, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i16 @llvm.smin.i16(i16 %.sroa.0.09.i.i, i16 %i.bw), !dbg !16101 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16093, !noalias !16026 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !16093
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !16094
  br i1 %i.bz, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16094

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !16102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16103, !noalias !16026
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16104

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldsNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !16105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16106
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16107

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItersEENtNtNtBa_6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterSsENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYsNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !16108
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !16108
  ret { i16, i16 } %.pn, !dbg !16109
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valstNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16110 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !16229, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !16230
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !16231

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16232 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !16232, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !16232
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !16233

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16234
  %i.h = load i64, ptr %i.g, align 8, !dbg !16234, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16235

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !16236
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16237

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !16238
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !16239
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !16239

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16240
  %i.l = load i64, ptr %i.k, align 8, !dbg !16240, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !16241
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !16242

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16243
  %i.o = load ptr, ptr %i.n, align 8, !dbg !16243, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !16244 ; 3 uses
  %i.q = load i16, ptr %i.o, align 2, !dbg !16245, !noalias !16211, !noundef !1221 ; 4 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !16246
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !16247

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, 9223372036854775807, !dbg !16248 ; 4 uses
  %i.t = and i64 %i.s, 9223372036854775807, !dbg !16248 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !16249
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !16249

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %i.t, 16, !dbg !16249
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !16249

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16249

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16250 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index, !dbg !16251 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !16252
  %wide.load = load <8 x i16>, ptr %i.v, align 2, !dbg !16252
  %wide.load15 = load <8 x i16>, ptr %i.w, align 2, !dbg !16252
  %i.x = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !16253 ; 2 uses
  %i.y = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi14, <8 x i16> %wide.load15), !dbg !16253 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !16250 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !16254
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !16254, !llvm.loop !16165

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.x, <8 x i16> %i.y), !dbg !16254
  %i.aa = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax), !dbg !16254 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !16254
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !16254

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !16250
  %bc.merge.rdx = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.q, %vector.main.loop.iter.check ], !dbg !16255
  %n.vec16 = and i64 %i.s, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ], !dbg !16250 ; 2 uses
  %vec.phi20 = phi <4 x i16> [ %broadcast.splat18, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index19, !dbg !16251
  %wide.load21 = load <4 x i16>, ptr %i.ab, align 2, !dbg !16252
  %i.ac = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi20, <4 x i16> %wide.load21), !dbg !16253 ; 2 uses
  %index.next22 = add nuw i64 %index19, 4, !dbg !16250 ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec16, !dbg !16254
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !16254, !llvm.loop !16166

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ac), !dbg !16254 ; 2 uses
  %cmp.n23 = icmp eq i64 %i.t, %n.vec16, !dbg !16254
  br i1 %cmp.n23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !16254

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.q, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !16254

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16250 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16255
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i, !dbg !16251
  %.val.i.i.i = load i16, ptr %i.af, align 2, !dbg !16252, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i), !dbg !16253 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !16256 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.t, !dbg !16254
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !16254, !llvm.loop !16169

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16257
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16258
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !16258, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16259
  %i.al = load i64, ptr %i.ak, align 8, !dbg !16259, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16260 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !16260, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !16260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16219), !dbg !16261
  br i1 %.not, label %bb.h, label %bb.g, !dbg !16262

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16263 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !16263, !noalias !16219, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !16264
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !16264, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !16265, !alias.scope !16219
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16265
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !16265, !alias.scope !16219
  store i64 %i.al, ptr %i.ar, align 8, !dbg !16265, !alias.scope !16219
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16265
  store i64 0, ptr %i.as, align 8, !dbg !16265, !alias.scope !16219
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16265
  store i64 %i.al, ptr %i.at, align 8, !dbg !16265, !alias.scope !16219
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16266

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !16267, !noalias !16219
  unreachable, !dbg !16267

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !16268
  %i.au = load i64, ptr %i.ao, align 8, !dbg !16269, !noalias !16219, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !16270, !noalias !16219
  %i.aw = sub i64 %i.au, %i.av, !dbg !16271
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !16272, !alias.scope !16219
  store i64 %i.al, ptr %i.ay, align 8, !dbg !16272, !alias.scope !16219
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16266

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !16273
  store i64 %.sink, ptr %i.az, align 8, !dbg !16273, !alias.scope !16219
  store ptr %i.aj, ptr %i.c, align 8, !dbg !16274
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16274 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !16274
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16274 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !16274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16275
  call void @llvm.experimental.noalias.scope.decl(metadata !16220), !dbg !16276
  call void @llvm.experimental.noalias.scope.decl(metadata !16221), !dbg !16277
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !16278 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !16278
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !16279
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16279

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !16278 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !16280, !alias.scope !16222, !nonnull !1221, !align !1474, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !16280, !alias.scope !16222, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !16281
  call void @llvm.assume(i1 %i.bi), !dbg !16282
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf, !dbg !16283
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !16284, !alias.scope !16223, !noalias !16222, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16285, !noalias !16220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !16285
  call void @llvm.experimental.noalias.scope.decl(metadata !16224), !dbg !16286
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bm = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16287, !noalias !16220 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0, !dbg !16287
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !16288
  br i1 %i.bo, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16288

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !16288

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bq = phi { i64, i64 } [ %i.bm, %.lr.ph.i.i ], [ %i.bx, %bb.l ]
  %.sroa.0.09.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16225), !dbg !16289
  %i.br = extractvalue { i64, i64 } %i.bq, 1, !dbg !16287 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !dbg !16290, !alias.scope !16226, !noalias !16220, !nonnull !1221, !align !1474, !noundef !1221
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !16290, !alias.scope !16226, !noalias !16220, !noundef !1221
  %i.bu = icmp ult i64 %i.br, %i.bt, !dbg !16291
  call void @llvm.assume(i1 %i.bu), !dbg !16292
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.br, !dbg !16293
  %i.bw = load i16, ptr %i.bv, align 2, !dbg !16294, !alias.scope !16227, !noalias !16228, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i16 @llvm.umax.i16(i16 %.sroa.0.09.i.i, i16 %i.bw), !dbg !16295 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16287, !noalias !16220 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !16287
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !16288
  br i1 %i.bz, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16288

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !16296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16297, !noalias !16220
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16298

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !16299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16300
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16301

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !16302
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !16302
  ret { i16, i16 } %.pn, !dbg !16303
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valstNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16304 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !16423, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !16424
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !16425

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16426 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !16426, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !16426
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !16427

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16428
  %i.h = load i64, ptr %i.g, align 8, !dbg !16428, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16429

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !16430
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16431

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !16432
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !16433
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !16433

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16434
  %i.l = load i64, ptr %i.k, align 8, !dbg !16434, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !16435
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !16436

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16437
  %i.o = load ptr, ptr %i.n, align 8, !dbg !16437, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !16438 ; 3 uses
  %i.q = load i16, ptr %i.o, align 2, !dbg !16439, !noalias !16405, !noundef !1221 ; 4 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !16440
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !16441

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, 9223372036854775807, !dbg !16442 ; 4 uses
  %i.t = and i64 %i.s, 9223372036854775807, !dbg !16442 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !16443
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !16443

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %i.t, 16, !dbg !16443
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !16443

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16443

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16444 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index, !dbg !16445 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !16446
  %wide.load = load <8 x i16>, ptr %i.v, align 2, !dbg !16446
  %wide.load15 = load <8 x i16>, ptr %i.w, align 2, !dbg !16446
  %i.x = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !16447 ; 2 uses
  %i.y = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi14, <8 x i16> %wide.load15), !dbg !16447 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !16444 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !16448
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !16448, !llvm.loop !16359

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.x, <8 x i16> %i.y), !dbg !16448
  %i.aa = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax), !dbg !16448 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !16448
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !16448

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !16444
  %bc.merge.rdx = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.q, %vector.main.loop.iter.check ], !dbg !16449
  %n.vec16 = and i64 %i.s, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ], !dbg !16444 ; 2 uses
  %vec.phi20 = phi <4 x i16> [ %broadcast.splat18, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index19, !dbg !16445
  %wide.load21 = load <4 x i16>, ptr %i.ab, align 2, !dbg !16446
  %i.ac = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi20, <4 x i16> %wide.load21), !dbg !16447 ; 2 uses
  %index.next22 = add nuw i64 %index19, 4, !dbg !16444 ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec16, !dbg !16448
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !16448, !llvm.loop !16360

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.ac), !dbg !16448 ; 2 uses
  %cmp.n23 = icmp eq i64 %i.t, %n.vec16, !dbg !16448
  br i1 %cmp.n23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !16448

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.q, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !16448

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16444 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16449
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i, !dbg !16445
  %.val.i.i.i = load i16, ptr %i.af, align 2, !dbg !16446, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i16 @llvm.umin.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i), !dbg !16447 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !16450 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.t, !dbg !16448
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !16448, !llvm.loop !16363

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16451
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16452
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !16452, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16453
  %i.al = load i64, ptr %i.ak, align 8, !dbg !16453, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16454 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !16454, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !16454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16413), !dbg !16455
  br i1 %.not, label %bb.h, label %bb.g, !dbg !16456

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16457 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !16457, !noalias !16413, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !16458
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !16458, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !16459, !alias.scope !16413
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16459
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !16459, !alias.scope !16413
  store i64 %i.al, ptr %i.ar, align 8, !dbg !16459, !alias.scope !16413
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16459
  store i64 0, ptr %i.as, align 8, !dbg !16459, !alias.scope !16413
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16459
  store i64 %i.al, ptr %i.at, align 8, !dbg !16459, !alias.scope !16413
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16460

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !16461, !noalias !16413
  unreachable, !dbg !16461

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !16462
  %i.au = load i64, ptr %i.ao, align 8, !dbg !16463, !noalias !16413, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !16464, !noalias !16413
  %i.aw = sub i64 %i.au, %i.av, !dbg !16465
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16466
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !16466, !alias.scope !16413
  store i64 %i.al, ptr %i.ay, align 8, !dbg !16466, !alias.scope !16413
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16460

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !16467
  store i64 %.sink, ptr %i.az, align 8, !dbg !16467, !alias.scope !16413
  store ptr %i.aj, ptr %i.c, align 8, !dbg !16468
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16468 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !16468
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16468 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !16468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16469
  call void @llvm.experimental.noalias.scope.decl(metadata !16414), !dbg !16470
  call void @llvm.experimental.noalias.scope.decl(metadata !16415), !dbg !16471
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !16472 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !16472
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !16473
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16473

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !16472 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !16474, !alias.scope !16416, !nonnull !1221, !align !1474, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !16474, !alias.scope !16416, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !16475
  call void @llvm.assume(i1 %i.bi), !dbg !16476
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf, !dbg !16477
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !16478, !alias.scope !16417, !noalias !16416, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16479, !noalias !16414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !16479
  call void @llvm.experimental.noalias.scope.decl(metadata !16418), !dbg !16480
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bm = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16481, !noalias !16414 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0, !dbg !16481
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !16482
  br i1 %i.bo, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16482

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !16482

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bq = phi { i64, i64 } [ %i.bm, %.lr.ph.i.i ], [ %i.bx, %bb.l ]
  %.sroa.0.09.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16419), !dbg !16483
  %i.br = extractvalue { i64, i64 } %i.bq, 1, !dbg !16481 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !dbg !16484, !alias.scope !16420, !noalias !16414, !nonnull !1221, !align !1474, !noundef !1221
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !16484, !alias.scope !16420, !noalias !16414, !noundef !1221
  %i.bu = icmp ult i64 %i.br, %i.bt, !dbg !16485
  call void @llvm.assume(i1 %i.bu), !dbg !16486
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.br, !dbg !16487
  %i.bw = load i16, ptr %i.bv, align 2, !dbg !16488, !alias.scope !16421, !noalias !16422, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i16 @llvm.umin.i16(i16 %.sroa.0.09.i.i, i16 %i.bw), !dbg !16489 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16481, !noalias !16414 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !16481
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !16482
  br i1 %i.bz, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16482

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !16490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16491, !noalias !16414
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16492

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !16493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16494
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16495

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14min_ignore_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !16496
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !16496
  ret { i16, i16 } %.pn, !dbg !16497
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valstNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16498 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !16616, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !16617
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !16618

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16619 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !16619, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !16619
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !16620

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16621
  %i.h = load i64, ptr %i.g, align 8, !dbg !16621, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16622

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !16623
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16624

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !16625
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !16626
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !16626

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16627
  %i.l = load i64, ptr %i.k, align 8, !dbg !16627, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !16628
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !16629

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16630
  %i.o = load ptr, ptr %i.n, align 8, !dbg !16630, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !16631 ; 3 uses
  %i.q = load i16, ptr %i.o, align 2, !dbg !16632, !noalias !16598, !noundef !1221 ; 4 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !16633
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !16634

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, 9223372036854775807, !dbg !16635 ; 4 uses
  %i.t = and i64 %i.s, 9223372036854775807, !dbg !16635 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !16636
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !16636

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %i.t, 16, !dbg !16636
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !16636

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16636

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16637 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index, !dbg !16638 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !16639
  %wide.load = load <8 x i16>, ptr %i.v, align 2, !dbg !16639
  %wide.load15 = load <8 x i16>, ptr %i.w, align 2, !dbg !16639
  %i.x = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !16640 ; 2 uses
  %i.y = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi14, <8 x i16> %wide.load15), !dbg !16640 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !16637 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !16641
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !16641, !llvm.loop !16552

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.x, <8 x i16> %i.y), !dbg !16641
  %i.aa = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax), !dbg !16641 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !16641
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !16641

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !16637
  %bc.merge.rdx = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.q, %vector.main.loop.iter.check ], !dbg !16642
  %n.vec16 = and i64 %i.s, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ], !dbg !16637 ; 2 uses
  %vec.phi20 = phi <4 x i16> [ %broadcast.splat18, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index19, !dbg !16638
  %wide.load21 = load <4 x i16>, ptr %i.ab, align 2, !dbg !16639
  %i.ac = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi20, <4 x i16> %wide.load21), !dbg !16640 ; 2 uses
  %index.next22 = add nuw i64 %index19, 4, !dbg !16637 ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec16, !dbg !16641
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !16641, !llvm.loop !16553

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.ac), !dbg !16641 ; 2 uses
  %cmp.n23 = icmp eq i64 %i.t, %n.vec16, !dbg !16641
  br i1 %cmp.n23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !16641

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.q, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !16641

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16637 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16642
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i, !dbg !16638
  %.val.i.i.i = load i16, ptr %i.af, align 2, !dbg !16639, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i16 @llvm.umax.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i), !dbg !16640 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !16643 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.t, !dbg !16641
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !16641, !llvm.loop !16556

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16644
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16645
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !16645, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16646
  %i.al = load i64, ptr %i.ak, align 8, !dbg !16646, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16647 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !16647, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !16647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16648
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16606), !dbg !16648
  br i1 %.not, label %bb.h, label %bb.g, !dbg !16649

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16650 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !16650, !noalias !16606, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !16651
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !16651, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !16652, !alias.scope !16606
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16652
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16652
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !16652, !alias.scope !16606
  store i64 %i.al, ptr %i.ar, align 8, !dbg !16652, !alias.scope !16606
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16652
  store i64 0, ptr %i.as, align 8, !dbg !16652, !alias.scope !16606
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16652
  store i64 %i.al, ptr %i.at, align 8, !dbg !16652, !alias.scope !16606
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16653

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !16654, !noalias !16606
  unreachable, !dbg !16654

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !16655
  %i.au = load i64, ptr %i.ao, align 8, !dbg !16656, !noalias !16606, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !16657, !noalias !16606
  %i.aw = sub i64 %i.au, %i.av, !dbg !16658
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16659
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16659
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !16659, !alias.scope !16606
  store i64 %i.al, ptr %i.ay, align 8, !dbg !16659, !alias.scope !16606
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16653

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !16660
  store i64 %.sink, ptr %i.az, align 8, !dbg !16660, !alias.scope !16606
  store ptr %i.aj, ptr %i.c, align 8, !dbg !16661
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16661 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !16661
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16661 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !16661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16662
  call void @llvm.experimental.noalias.scope.decl(metadata !16607), !dbg !16663
  call void @llvm.experimental.noalias.scope.decl(metadata !16608), !dbg !16664
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !16665 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !16665
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !16666
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16666

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !16665 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !16667, !alias.scope !16609, !nonnull !1221, !align !1474, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !16667, !alias.scope !16609, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !16668
  call void @llvm.assume(i1 %i.bi), !dbg !16669
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf, !dbg !16670
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !16671, !alias.scope !16610, !noalias !16609, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16672, !noalias !16607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !16672
  call void @llvm.experimental.noalias.scope.decl(metadata !16611), !dbg !16673
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bm = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16674, !noalias !16607 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0, !dbg !16674
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !16675
  br i1 %i.bo, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16675

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !16675

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bq = phi { i64, i64 } [ %i.bm, %.lr.ph.i.i ], [ %i.bx, %bb.l ]
  %.sroa.0.09.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16612), !dbg !16676
  %i.br = extractvalue { i64, i64 } %i.bq, 1, !dbg !16674 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !dbg !16677, !alias.scope !16613, !noalias !16607, !nonnull !1221, !align !1474, !noundef !1221
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !16677, !alias.scope !16613, !noalias !16607, !noundef !1221
  %i.bu = icmp ult i64 %i.br, %i.bt, !dbg !16678
  call void @llvm.assume(i1 %i.bu), !dbg !16679
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.br, !dbg !16680
  %i.bw = load i16, ptr %i.bv, align 2, !dbg !16681, !alias.scope !16614, !noalias !16615, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i16 @llvm.umax.i16(i16 %.sroa.0.09.i.i, i16 %i.bw), !dbg !16682 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16674, !noalias !16607 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !16674
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !16675
  br i1 %i.bz, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16675

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !16683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16684, !noalias !16607
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16685

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !16686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16687
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16688

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17max_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !16689
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !16689
  ret { i16, i16 } %.pn, !dbg !16690
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valstNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16691 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !16809, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !16810
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !16811

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16812 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !16812, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !16812
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !16813

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16814
  %i.h = load i64, ptr %i.g, align 8, !dbg !16814, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16815

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !16816
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !16817

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !16818
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !16819
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.f, !dbg !16819

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16820
  %i.l = load i64, ptr %i.k, align 8, !dbg !16820, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !16821
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !16822

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16823
  %i.o = load ptr, ptr %i.n, align 8, !dbg !16823, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2, !dbg !16824 ; 3 uses
  %i.q = load i16, ptr %i.o, align 2, !dbg !16825, !noalias !16791, !noundef !1221 ; 4 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !16826
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %iter.check, !dbg !16827

iter.check:                                       ; preds = %bb.e
  %i.s = add i64 %i.l, 9223372036854775807, !dbg !16828 ; 4 uses
  %i.t = and i64 %i.s, 9223372036854775807, !dbg !16828 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !16829
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !16829

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %i.t, 16, !dbg !16829
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph, !dbg !16829

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !16829

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !16830 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index, !dbg !16831 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !16832
  %wide.load = load <8 x i16>, ptr %i.v, align 2, !dbg !16832
  %wide.load15 = load <8 x i16>, ptr %i.w, align 2, !dbg !16832
  %i.x = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !16833 ; 2 uses
  %i.y = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi14, <8 x i16> %wide.load15), !dbg !16833 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !16830 ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec, !dbg !16834
  br i1 %i.z, label %middle.block, label %vector.body, !dbg !16834, !llvm.loop !16745

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.x, <8 x i16> %i.y), !dbg !16834
  %i.aa = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax), !dbg !16834 ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec, !dbg !16834
  br i1 %cmp.n, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.iter.check, !dbg !16834

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !16830
  %bc.merge.rdx = phi i16 [ %i.aa, %vec.epilog.iter.check ], [ %i.q, %vector.main.loop.iter.check ], !dbg !16835
  %n.vec16 = and i64 %i.s, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert17 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat18 = shufflevector <4 x i16> %broadcast.splatinsert17, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ], !dbg !16830 ; 2 uses
  %vec.phi20 = phi <4 x i16> [ %broadcast.splat18, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index19, !dbg !16831
  %wide.load21 = load <4 x i16>, ptr %i.ab, align 2, !dbg !16832
  %i.ac = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi20, <4 x i16> %wide.load21), !dbg !16833 ; 2 uses
  %index.next22 = add nuw i64 %index19, 4, !dbg !16830 ; 2 uses
  %i.ad = icmp eq i64 %index.next22, %n.vec16, !dbg !16834
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !16834, !llvm.loop !16746

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.ac), !dbg !16834 ; 2 uses
  %cmp.n23 = icmp eq i64 %i.t, %n.vec16, !dbg !16834
  br i1 %cmp.n23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph.preheader, !dbg !16834

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.i.ph = phi i16 [ %i.q, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !16834

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i.i.i = phi i64 [ %i.ag, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16830 ; 2 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !16835
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %.sroa.04.0.i.i.i, !dbg !16831
  %.val.i.i.i = load i16, ptr %i.af, align 2, !dbg !16832, !noundef !1221
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i16 @llvm.umin.i16(i16 %.sroa.02.0.i.i.i, i16 %.val.i.i.i), !dbg !16833 ; 2 uses
  %i.ag = add nuw i64 %.sroa.04.0.i.i.i, 1, !dbg !16836 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.t, !dbg !16834
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, label %vec.epilog.scalar.ph, !dbg !16834, !llvm.loop !16749

bb.f:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16837
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16838
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !16838, !noundef !1221
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !16839
  %i.al = load i64, ptr %i.ak, align 8, !dbg !16839, !noundef !1221 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !16840 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !dbg !16840, !noundef !1221
  %.not = icmp eq ptr %i.an, null, !dbg !16840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16841
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16799), !dbg !16841
  br i1 %.not, label %bb.h, label %bb.g, !dbg !16842

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !16843 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !16843, !noalias !16799, !noundef !1221
  %i.aq = icmp eq i64 %i.al, %i.ap, !dbg !16844
  br i1 %i.aq, label %bb.j, label %bb.i, !dbg !16844, !prof !1388

bb.h:                                             ; preds = %bb.f
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !16845, !alias.scope !16799
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !16845
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16845
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !dbg !16845, !alias.scope !16799
  store i64 %i.al, ptr %i.ar, align 8, !dbg !16845, !alias.scope !16799
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !16845
  store i64 0, ptr %i.as, align 8, !dbg !16845, !alias.scope !16799
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16845
  store i64 %i.al, ptr %i.at, align 8, !dbg !16845, !alias.scope !16799
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16846

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #36, !dbg !16847, !noalias !16799
  unreachable, !dbg !16847

bb.j:                                             ; preds = %bb.g
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.am), !dbg !16848
  %i.au = load i64, ptr %i.ao, align 8, !dbg !16849, !noalias !16799, !noundef !1221
  %i.av = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.am), !dbg !16850, !noalias !16799
  %i.aw = sub i64 %i.au, %i.av, !dbg !16851
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !16852
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !16852
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !dbg !16852, !alias.scope !16799
  store i64 %i.al, ptr %i.ay, align 8, !dbg !16852, !alias.scope !16799
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, !dbg !16846

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit: ; preds = %bb.h, %bb.j
  %.sink = phi i64 [ %i.al, %bb.h ], [ %i.aw, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !16853
  store i64 %.sink, ptr %i.az, align 8, !dbg !16853, !alias.scope !16799
  store ptr %i.aj, ptr %i.c, align 8, !dbg !16854
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !16854 ; 2 uses
  store i64 %i.al, ptr %i.ba, align 8, !dbg !16854
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !16854 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !16854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16855
  call void @llvm.experimental.noalias.scope.decl(metadata !16800), !dbg !16856
  call void @llvm.experimental.noalias.scope.decl(metadata !16801), !dbg !16857
  %i.bc = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bb) #35, !dbg !16858 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0, !dbg !16858
  %i.be = trunc nuw i64 %i.bd to i1, !dbg !16859
  br i1 %i.be, label %bb.k, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16859

bb.k:                                             ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit
  %i.bf = extractvalue { i64, i64 } %i.bc, 1, !dbg !16858 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !dbg !16860, !alias.scope !16802, !nonnull !1221, !align !1474, !noundef !1221
  %i.bh = load i64, ptr %i.ba, align 8, !dbg !16860, !alias.scope !16802, !noundef !1221
  %i.bi = icmp ult i64 %i.bf, %i.bh, !dbg !16861
  call void @llvm.assume(i1 %i.bi), !dbg !16862
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf, !dbg !16863
  %i.bk = load i16, ptr %i.bj, align 2, !dbg !16864, !alias.scope !16803, !noalias !16802, !noundef !1221 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16865, !noalias !16800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !16865
  call void @llvm.experimental.noalias.scope.decl(metadata !16804), !dbg !16866
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bm = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16867, !noalias !16800 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0, !dbg !16867
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !16868
  br i1 %i.bo, label %.lr.ph.i.i, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16868

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.l, !dbg !16868

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %i.bq = phi { i64, i64 } [ %i.bm, %.lr.ph.i.i ], [ %i.bx, %bb.l ]
  %.sroa.0.09.i.i = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i.i, %bb.l ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16805), !dbg !16869
  %i.br = extractvalue { i64, i64 } %i.bq, 1, !dbg !16867 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !dbg !16870, !alias.scope !16806, !noalias !16800, !nonnull !1221, !align !1474, !noundef !1221
  %i.bt = load i64, ptr %i.bp, align 8, !dbg !16870, !alias.scope !16806, !noalias !16800, !noundef !1221
  %i.bu = icmp ult i64 %i.br, %i.bt, !dbg !16871
  call void @llvm.assume(i1 %i.bu), !dbg !16872
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.br, !dbg !16873
  %i.bw = load i16, ptr %i.bv, align 2, !dbg !16874, !alias.scope !16807, !noalias !16808, !noundef !1221
  %.sroa.0.0.i.i.i.i = call noundef i16 @llvm.umin.i16(i16 %.sroa.0.09.i.i, i16 %i.bw), !dbg !16875 ; 2 uses
  %i.bx = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %i.bl) #35, !dbg !16867, !noalias !16800 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0, !dbg !16867
  %i.bz = trunc nuw i64 %i.by to i1, !dbg !16868
  br i1 %i.bz, label %bb.l, label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i, !dbg !16868

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i16 [ %i.bk, %bb.k ], [ %.sroa.0.0.i.i.i.i, %bb.l ], !dbg !16876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16877, !noalias !16800
  br label %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16878

_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i
  %.sroa.3.0.i6 = phi i16 [ %.sroa.0.0.lcssa.i.i, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ undef, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ]
  %.sroa.0.0.i7 = phi i16 [ 1, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldtNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB2_11TrueIdxIter3new.exit ], !dbg !16879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16880
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit, !dbg !16881

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItertEENtNtNtBa_6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0.i.pn = phi i16 [ %.sroa.0.0.i7, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.middle.block ], [ 1, %vec.epilog.scalar.ph ]
  %.sroa.3.0.i.pn = phi i16 [ %.sroa.3.0.i6, %_RINvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterStENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator6reduceNvYtNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax17min_propagate_nanECslFlrwjHoTci_14polars_compute.exit ], [ undef, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread ], [ %i.q, %bb.e ], [ %i.aa, %middle.block ], [ %i.ae, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn9 = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i.pn, 0, !dbg !16882
  %.pn = insertvalue { i16, i16 } %.pn9, i16 %.sroa.3.0.i.pn, 1, !dbg !16882
  ret { i16, i16 } %.pn, !dbg !16883
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar11reduce_valsxNvYxNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanEB6_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16884 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %.val.i = load i8, ptr %0, align 8, !dbg !17002, !range !1291, !noundef !1221
  %i.d = icmp eq i8 %.val.i, 0, !dbg !17003
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !17004

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !17005 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !17005, !noundef !1221
  %.not.i.i = icmp eq ptr %i.f, null, !dbg !17005
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.d, !dbg !17006

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17007
  %i.h = load i64, ptr %i.g, align 8, !dbg !17007, !noundef !1221
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !17008

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.e), !dbg !17009
  br label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit, !dbg !17010

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], !dbg !17011
  %i.j = icmp eq i64 %.sroa.0.1.i, 0, !dbg !17012
  br i1 %i.j, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.g, !dbg !17012

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17013
  %i.l = load i64, ptr %i.k, align 8, !dbg !17013, !noundef !1221 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !17014
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterxEENtNtNtBa_6traits8iterator8Iterator6reduceNvYxNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.e, !dbg !17015

bb.e:                                             ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCslFlrwjHoTci_14polars_compute.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17016
  %i.o = load ptr, ptr %i.n, align 8, !dbg !17016, !nonnull !1221, !noundef !1221 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !17017 ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !dbg !17018, !noalias !16984, !noundef !1221 ; 3 uses
  %i.r = icmp eq i64 %i.l, 1, !dbg !17019
  br i1 %i.r, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterxEENtNtNtBa_6traits8iterator8Iterator6reduceNvYxNtNtCs2mZqlW55729_12polars_utils7min_max6MinMax14max_ignore_nanECslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !17020

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %i.l, 2305843009213693951, !dbg !17021 ; 2 uses
  %i.t = and i64 %i.s, 2305843009213693951, !dbg !17021 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 4, !dbg !17022
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !17022

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.s, 2305843009213693948      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
end_hunk_2
begin_hunk_3_@_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar21min_max_propagate_nanoEB6_
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar21min_max_propagate_nanoEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) initializes((0, 32)) %0, i128 noundef %1, i128 noundef %2, i128 noundef %3, i128 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !606 {
bb.a:
  %.sroa.0.0.i1 = tail call i128 @llvm.umin.i128(i128 %1, i128 %3), !dbg !20492
  %.sroa.0.0.i = tail call i128 @llvm.umax.i128(i128 %2, i128 %4), !dbg !20493
  store i128 %.sroa.0.0.i1, ptr %0, align 16, !dbg !20494
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20494
  store i128 %.sroa.0.0.i, ptr %i.a, align 16, !dbg !20494
  ret void, !dbg !20495
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar21min_max_propagate_nansEB6_(i16 noundef %0, i16 noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !608 {
bb.a:
  %.sroa.0.0.i1 = tail call i16 @llvm.smin.i16(i16 %0, i16 %2), !dbg !20498
  %.sroa.0.0.i = tail call i16 @llvm.smax.i16(i16 %1, i16 %3), !dbg !20499
  %i.a = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i1, 0, !dbg !20500
  %i.b = insertvalue { i16, i16 } %i.a, i16 %.sroa.0.0.i, 1, !dbg !20500
  ret { i16, i16 } %i.b, !dbg !20500
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i16, i16 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar21min_max_propagate_nantEB6_(i16 noundef %0, i16 noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !610 {
bb.a:
  %.sroa.0.0.i1 = tail call i16 @llvm.umin.i16(i16 %0, i16 %2), !dbg !20503
  %.sroa.0.0.i = tail call i16 @llvm.umax.i16(i16 %1, i16 %3), !dbg !20504
  %i.a = insertvalue { i16, i16 } poison, i16 %.sroa.0.0.i1, 0, !dbg !20505
  %i.b = insertvalue { i16, i16 } %i.a, i16 %.sroa.0.0.i, 1, !dbg !20505
  ret { i16, i16 } %i.b, !dbg !20505
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar21min_max_propagate_nanxEB6_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !612 {
bb.a:
  %.sroa.0.0.i1 = tail call i64 @llvm.smin.i64(i64 %0, i64 %2), !dbg !20508
  %.sroa.0.0.i = tail call i64 @llvm.smax.i64(i64 %1, i64 %3), !dbg !20509
  %i.a = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i1, 0, !dbg !20510
  %i.b = insertvalue { i64, i64 } %i.a, i64 %.sroa.0.0.i, 1, !dbg !20510
  ret { i64, i64 } %i.b, !dbg !20510
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar21min_max_propagate_nanyEB6_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !614 {
bb.a:
  %.sroa.0.0.i1 = tail call i64 @llvm.umin.i64(i64 %0, i64 %2), !dbg !20513
  %.sroa.0.0.i = tail call i64 @llvm.umax.i64(i64 %1, i64 %3), !dbg !20514
  %i.a = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i1, 0, !dbg !20515
  %i.b = insertvalue { i64, i64 } %i.a, i64 %.sroa.0.0.i, 1, !dbg !20515
  ret { i64, i64 } %i.b, !dbg !20515
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i16, i16 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4foldTB1s_B1s_ENCINvNtB7_3map8map_foldB1s_B2Q_B2Q_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsB1s_INvB3E_21min_max_propagate_nanB1s_EE0B4O_E0EB3I_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20516 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20561
  %i.a = icmp eq ptr %0, %1, !dbg !20562
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTBQ_BQ_ENCINvNtNtB1G_8adapters6copied9copy_foldBQ_B2k_NCINvNtB2z_3map8map_foldBQ_B2k_B2k_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBQ_INvB3Q_21min_max_propagate_nanBQ_EE0B4Z_E0E0EB3U_.exit, label %bb.b, !dbg !20563

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20564
  %i.c = ptrtoint ptr %0 to i64, !dbg !20564
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20564
  %i.e = lshr exact i64 %i.d, 1, !dbg !20564
  br label %bb.c, !dbg !20565

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i, %bb.b
  %.sroa.05.0.i = phi i64 [ 0, %bb.b ], [ %i.y, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i ], !dbg !20566 ; 2 uses
  %.sroa.6.0.i = phi i16 [ %3, %bb.b ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i ], !dbg !20567 ; 7 uses
  %.sroa.02.0.i = phi i16 [ %2, %bb.b ], [ %.sroa.0.0.i3.i.i.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i ], !dbg !20567 ; 5 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !20568
  %.val.i = load i16, ptr %i.f, align 2, !dbg !20569, !noundef !1221 ; 11 uses
  %i.g = and i16 %.sroa.02.0.i, 32767, !dbg !20570 ; 2 uses
  %i.h = icmp samesign ugt i16 %i.g, 31744, !dbg !20570 ; 2 uses
  %i.i = and i16 %.val.i, 32767                   ; 2 uses
  %i.j = icmp samesign ugt i16 %i.i, 31744        ; 2 uses
  %or.cond.i.i.i.i.i = select i1 %i.h, i1 true, i1 %i.j, !dbg !20571
  br i1 %or.cond.i.i.i.i.i, label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.i.i.i.i.i, label %bb.d, !dbg !20571

bb.d:                                             ; preds = %bb.c
  %.not.i7.i.i.i.i.i = icmp sgt i16 %.val.i, -1, !dbg !20572 ; 2 uses
  %i.k = icmp sgt i16 %.sroa.02.0.i, -1, !dbg !20573
  br i1 %i.k, label %bb.e, label %bb.f, !dbg !20573

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ult i16 %.sroa.02.0.i, %.val.i
  %spec.select.i.i.i.i.i = and i1 %.not.i7.i.i.i.i.i, %i.l, !dbg !20573
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.i.i.i.i.i, !dbg !20573

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i7.i.i.i.i.i, label %bb.g, label %bb.h, !dbg !20573

bb.g:                                             ; preds = %bb.f
  %i.m = or i16 %.val.i, %i.g, !dbg !20574
  %i.n = icmp ne i16 %i.m, 0, !dbg !20574
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.i.i.i.i.i, !dbg !20575

bb.h:                                             ; preds = %bb.f
  %i.o = icmp samesign ult i16 %.val.i, %.sroa.02.0.i, !dbg !20576
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.i.i.i.i.i, !dbg !20577

_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.sroa.0.0.i8.i.i.i.i.i = phi i1 [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ false, %bb.c ], [ %spec.select.i.i.i.i.i, %bb.e ], !dbg !20578
  %i.p = and i16 %.sroa.6.0.i, 32767, !dbg !20579
  %i.q = icmp samesign ugt i16 %i.p, 31744, !dbg !20579 ; 2 uses
  %brmerge.i.i.i = select i1 %i.q, i1 true, i1 %i.j, !dbg !20580
  %.mux.i.i.i = select i1 %i.q, i16 %.sroa.6.0.i, i16 %.val.i, !dbg !20580
  br i1 %brmerge.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i, label %bb.i, !dbg !20580

bb.i:                                             ; preds = %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.i.i.i.i.i
  %.not.i9.i.i.i.i.i = icmp slt i16 %.val.i, 0, !dbg !20581 ; 2 uses
  %i.r = icmp sgt i16 %.sroa.6.0.i, -1, !dbg !20582
  br i1 %i.r, label %bb.j, label %bb.k, !dbg !20582

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i9.i.i.i.i.i, label %bb.m, label %bb.l, !dbg !20582

bb.k:                                             ; preds = %bb.i
  %i.s = icmp ugt i16 %.val.i, %.sroa.6.0.i
  %spec.select21.i.i.i.i.i = and i1 %.not.i9.i.i.i.i.i, %i.s, !dbg !20582
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit13.thread.i.i.i.i.i, !dbg !20582

bb.l:                                             ; preds = %bb.j
  %i.t = icmp samesign ugt i16 %.sroa.6.0.i, %.val.i, !dbg !20583
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit13.thread.i.i.i.i.i, !dbg !20584

bb.m:                                             ; preds = %bb.j
  %i.u = or i16 %i.i, %.sroa.6.0.i, !dbg !20585
  %i.v = icmp ne i16 %i.u, 0, !dbg !20585
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit13.thread.i.i.i.i.i, !dbg !20586

_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit13.thread.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i10.ph.i.i.i.i.i = phi i1 [ %i.v, %bb.m ], [ %spec.select21.i.i.i.i.i, %bb.k ], [ %i.t, %bb.l ]
  %i.w = select i1 %.sroa.0.0.i10.ph.i.i.i.i.i, i16 %.sroa.6.0.i, i16 %.val.i, !dbg !20587
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i, !dbg !20583

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i: ; preds = %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit13.thread.i.i.i.i.i, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ %i.w, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit13.thread.i.i.i.i.i ], [ %.mux.i.i.i, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit.i.i.i.i.i ], !dbg !20583 ; 2 uses
  %i.x = or i1 %i.h, %.sroa.0.0.i8.i.i.i.i.i, !dbg !20588
  %.sroa.0.0.i3.i.i.i.i.i = select i1 %i.x, i16 %.sroa.02.0.i, i16 %.val.i, !dbg !20588 ; 2 uses
  %i.y = add nuw i64 %.sroa.05.0.i, 1, !dbg !20589 ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.e, !dbg !20590
  br i1 %i.z, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTBQ_BQ_ENCINvNtNtB1G_8adapters6copied9copy_foldBQ_B2k_NCINvNtB2z_3map8map_foldBQ_B2k_B2k_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBQ_INvB3Q_21min_max_propagate_nanBQ_EE0B4Z_E0E0EB3U_.exit, label %bb.c, !dbg !20590

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTBQ_BQ_ENCINvNtNtB1G_8adapters6copied9copy_foldBQ_B2k_NCINvNtB2z_3map8map_foldBQ_B2k_B2k_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBQ_INvB3Q_21min_max_propagate_nanBQ_EE0B4Z_E0E0EB3U_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i, %bb.a
  %.pn21.i = phi i16 [ %2, %bb.a ], [ %.sroa.0.0.i3.i.i.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i ]
  %.pn19.i = phi i16 [ %3, %bb.a ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldNtNtCs2mZqlW55729_12polars_utils7float164pf16TBY_BY_ENCINvNtB6_3map8map_foldBY_B1H_B1H_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsBY_INvB2s_21min_max_propagate_nanBY_EE0B3B_E0E0B2w_.exit.i ]
  %.pn.i = insertvalue { i16, i16 } poison, i16 %.pn21.i, 0, !dbg !20567
  %.merged.i = insertvalue { i16, i16 } %.pn.i, i16 %.pn19.i, 1, !dbg !20567
  ret { i16, i16 } %.merged.i, !dbg !20591
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldB1s_ttNvMB1u_B1s_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1s_ENtB3L_13BitwiseKernel10reduce_and0E0EB3N_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20592 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20628
  %i.a = icmp eq ptr %0, %1, !dbg !20629
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_and0E0E0EB3W_.exit, label %iter.check, !dbg !20630

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20631
  %i.c = ptrtoint ptr %0 to i64, !dbg !20631
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20631      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !20631      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !20632
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !20632

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !20632
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !20632

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>, i16 %2, i64 0
  br label %vector.body, !dbg !20632

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20633 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ splat (i16 -1), %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !20634 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !20635
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !20635
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !20635
  %i.i = and <8 x i16> %wide.load, %vec.phi, !dbg !20636 ; 2 uses
  %i.j = and <8 x i16> %wide.load4, %vec.phi3, !dbg !20636 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !20633 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !20637
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !20637, !llvm.loop !20622

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <8 x i16> %i.j, %i.i, !dbg !20637
  %i.l = tail call i16 @llvm.vector.reduce.and.v8i16(<8 x i16> %bin.rdx), !dbg !20637 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !20637
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_and0E0E0EB3W_.exit, label %vec.epilog.iter.check, !dbg !20637

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !20633
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !20638
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 -1, i16 -1, i16 -1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !20633 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !20634
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !20635
  %i.p = and <4 x i16> %wide.load8, %vec.phi7, !dbg !20636 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !20633 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !20637
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !20637, !llvm.loop !20623

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.p), !dbg !20637 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !20637
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_and0E0E0EB3W_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !20637

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !20637

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20633 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20638
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !20634
  %.val.i = load i16, ptr %i.s, align 2, !dbg !20635, !noundef !1221
  %i.t = and i16 %.val.i, %.sroa.02.0.i, !dbg !20636 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !20639 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !20637
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_and0E0E0EB3W_.exit, label %vec.epilog.scalar.ph, !dbg !20637, !llvm.loop !20626

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_and0E0E0EB3W_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !20638
  ret i16 %.sroa.0.0.i, !dbg !20640
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldB1s_ttNvMB1u_B1s_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1s_ENtB3L_13BitwiseKernel10reduce_xor0E0EB3N_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20641 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20677
  %i.a = icmp eq ptr %0, %1, !dbg !20678
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_xor0E0E0EB3W_.exit, label %iter.check, !dbg !20679

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20680
  %i.c = ptrtoint ptr %0 to i64, !dbg !20680
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20680      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !20680      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !20681
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !20681

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !20681
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !20681

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %2, i64 0
  br label %vector.body, !dbg !20681

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20682 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !20683 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !20684
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !20684
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !20684
  %i.i = xor <8 x i16> %wide.load, %vec.phi, !dbg !20685 ; 2 uses
  %i.j = xor <8 x i16> %wide.load4, %vec.phi3, !dbg !20685 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !20682 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !20686
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !20686, !llvm.loop !20671

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <8 x i16> %i.j, %i.i, !dbg !20686
  %i.l = tail call i16 @llvm.vector.reduce.xor.v8i16(<8 x i16> %bin.rdx), !dbg !20686 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !20686
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_xor0E0E0EB3W_.exit, label %vec.epilog.iter.check, !dbg !20686

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !20682
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !20687
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !20682 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !20683
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !20684
  %i.p = xor <4 x i16> %wide.load8, %vec.phi7, !dbg !20685 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !20682 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !20686
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !20686, !llvm.loop !20672

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.xor.v4i16(<4 x i16> %i.p), !dbg !20686 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !20686
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_xor0E0E0EB3W_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !20686

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !20686

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20682 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20687
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !20683
  %.val.i = load i16, ptr %i.s, align 2, !dbg !20684, !noundef !1221
  %i.t = xor i16 %.val.i, %.sroa.02.0.i, !dbg !20685 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !20688 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !20686
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_xor0E0E0EB3W_.exit, label %vec.epilog.scalar.ph, !dbg !20686, !llvm.loop !20675

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel10reduce_xor0E0E0EB3W_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !20687
  ret i16 %.sroa.0.0.i, !dbg !20689
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldB1s_ttNvMB1u_B1s_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1s_ENtB3L_13BitwiseKernel9reduce_or0E0EB3N_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20690 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20726
  %i.a = icmp eq ptr %0, %1, !dbg !20727
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel9reduce_or0E0E0EB3W_.exit, label %iter.check, !dbg !20728

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20729
  %i.c = ptrtoint ptr %0 to i64, !dbg !20729
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20729      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !20729      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !20730
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !20730

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !20730
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !20730

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %2, i64 0
  br label %vector.body, !dbg !20730

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20731 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !20732 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !20733
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !20733
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !20733
  %i.i = or <8 x i16> %wide.load, %vec.phi, !dbg !20734 ; 2 uses
  %i.j = or <8 x i16> %wide.load4, %vec.phi3, !dbg !20734 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !20731 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !20735
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !20735, !llvm.loop !20720

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i16> %i.j, %i.i, !dbg !20735
  %i.l = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx), !dbg !20735 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !20735
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel9reduce_or0E0E0EB3W_.exit, label %vec.epilog.iter.check, !dbg !20735

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !20731
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !20736
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !20731 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !20732
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !20733
  %i.p = or <4 x i16> %wide.load8, %vec.phi7, !dbg !20734 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !20731 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !20735
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !20735, !llvm.loop !20721

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.p), !dbg !20735 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !20735
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel9reduce_or0E0E0EB3W_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !20735

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !20735

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20731 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20736
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !20732
  %.val.i = load i16, ptr %i.s, align 2, !dbg !20733, !noundef !1221
  %i.t = or i16 %.val.i, %.sroa.02.0.i, !dbg !20734 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !20737 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !20735
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel9reduce_or0E0E0EB3W_.exit, label %vec.epilog.scalar.ph, !dbg !20735, !llvm.loop !20724

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1G_8adapters6copied9copy_foldBQ_tNCINvNtB2s_3map8map_foldBQ_ttNvMBS_BQ_7to_bitsNCNvXs7_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayBQ_ENtB3U_13BitwiseKernel9reduce_or0E0E0EB3W_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !20736
  ret i16 %.sroa.0.0.i, !dbg !20738
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i8, i8 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldTaaENCINvNtB7_3map8map_foldaB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2N_21min_max_propagate_nanaEE0B3U_E0EB2R_(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2, i8 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20739 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20777
  %i.a = icmp eq ptr %0, %1, !dbg !20778
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_21min_max_propagate_nanaEE0B46_E0E0EB33_.exit, label %iter.check, !dbg !20779

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20780
  %i.c = ptrtoint ptr %0 to i64, !dbg !20780
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20780      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !20781
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !20781

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !20781
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !20781

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat4 = shufflevector <16 x i8> %broadcast.splatinsert3, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !20781

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20782 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi5 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi6 = phi <16 x i8> [ %broadcast.splat4, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <16 x i8> [ %broadcast.splat4, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !20783 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !20784
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !20784 ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.g, align 1, !dbg !20784 ; 2 uses
  %i.h = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi6, <16 x i8> %wide.load), !dbg !20785 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi7, <16 x i8> %wide.load8), !dbg !20785 ; 2 uses
  %i.j = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !20786 ; 2 uses
  %i.k = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi5, <16 x i8> %wide.load8), !dbg !20786 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !20782 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !20787
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !20787, !llvm.loop !20772

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.j, <16 x i8> %i.k), !dbg !20787
  %i.m = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax), !dbg !20787 ; 3 uses
  %rdx.minmax9 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !20787
  %i.n = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax9), !dbg !20787 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !20787
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_21min_max_propagate_nanaEE0B46_E0E0EB33_.exit, label %vec.epilog.iter.check, !dbg !20787

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1483

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !20782
  %bc.merge.rdx = phi i8 [ %i.m, %vec.epilog.iter.check ], [ %3, %vector.main.loop.iter.check ], !dbg !20788
  %bc.merge.rdx10 = phi i8 [ %i.n, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !20788
  %n.vec11 = and i64 %i.d, -8                     ; 3 uses
  %broadcast.splatinsert12 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat13 = shufflevector <8 x i8> %broadcast.splatinsert12, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <8 x i8> poison, i8 %bc.merge.rdx10, i64 0
  %broadcast.splat15 = shufflevector <8 x i8> %broadcast.splatinsert14, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !20782 ; 2 uses
  %vec.phi17 = phi <8 x i8> [ %broadcast.splat13, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %vec.phi18 = phi <8 x i8> [ %broadcast.splat15, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index16, !dbg !20783
  %wide.load19 = load <8 x i8>, ptr %i.o, align 1, !dbg !20784 ; 2 uses
  %i.p = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %vec.phi18, <8 x i8> %wide.load19), !dbg !20785 ; 2 uses
  %i.q = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %vec.phi17, <8 x i8> %wide.load19), !dbg !20786 ; 2 uses
  %index.next20 = add nuw i64 %index16, 8, !dbg !20782 ; 2 uses
  %i.r = icmp eq i64 %index.next20, %n.vec11, !dbg !20787
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !20787, !llvm.loop !20773

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.s = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.q), !dbg !20787 ; 2 uses
  %i.t = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.p), !dbg !20787 ; 2 uses
  %cmp.n21 = icmp eq i64 %i.d, %n.vec11, !dbg !20787
  br i1 %cmp.n21, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_21min_max_propagate_nanaEE0B46_E0E0EB33_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !20787

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.6.0.i.ph = phi i8 [ %3, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !20787

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.v, %vec.epilog.scalar.ph ], [ %.sroa.05.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20782 ; 2 uses
  %.sroa.6.0.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.6.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20788
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20788
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.05.0.i, !dbg !20783
  %.val.i = load i8, ptr %i.u, align 1, !dbg !20784, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i8 @llvm.smin.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !20785 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i8 @llvm.smax.i8(i8 %.sroa.6.0.i, i8 %.val.i), !dbg !20786 ; 2 uses
  %i.v = add nuw i64 %.sroa.05.0.i, 1, !dbg !20789 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !20787
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_21min_max_propagate_nanaEE0B46_E0E0EB33_.exit, label %vec.epilog.scalar.ph, !dbg !20787, !llvm.loop !20776

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_21min_max_propagate_nanaEE0B46_E0E0EB33_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.pn21.i = phi i8 [ %2, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn19.i = phi i8 [ %3, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn.i = insertvalue { i8, i8 } poison, i8 %.pn21.i, 0, !dbg !20788
  %.merged.i = insertvalue { i8, i8 } %.pn.i, i8 %.pn19.i, 1, !dbg !20788
  ret { i8, i8 } %.merged.i, !dbg !20790
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNCINvNtB7_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB37_13BitwiseKernel10reduce_and0E0EB39_(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20791 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20827
  %i.a = icmp eq ptr %0, %1, !dbg !20828
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_and0E0E0EB3i_.exit, label %iter.check, !dbg !20829

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20830
  %i.c = ptrtoint ptr %0 to i64, !dbg !20830
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20830      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !20831
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !20831

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !20831
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !20831

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %i.f = insertelement <16 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %2, i64 0
  br label %vector.body, !dbg !20831

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20832 ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ splat (i8 -1), %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !20833 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !20834
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !20834
  %wide.load4 = load <16 x i8>, ptr %i.h, align 1, !dbg !20834
  %i.i = and <16 x i8> %wide.load, %vec.phi, !dbg !20835 ; 2 uses
  %i.j = and <16 x i8> %wide.load4, %vec.phi3, !dbg !20835 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !20832 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !20836
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !20836, !llvm.loop !20821

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <16 x i8> %i.j, %i.i, !dbg !20836
  %i.l = tail call i8 @llvm.vector.reduce.and.v16i8(<16 x i8> %bin.rdx), !dbg !20836 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !20836
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_and0E0E0EB3i_.exit, label %vec.epilog.iter.check, !dbg !20836

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !20832
  %bc.merge.rdx = phi i8 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !20837
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %i.m = insertelement <4 x i8> <i8 poison, i8 -1, i8 -1, i8 -1>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !20832 ; 2 uses
  %vec.phi7 = phi <4 x i8> [ %i.m, %vec.epilog.ph ], [ %i.o, %vec.epilog.vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index6, !dbg !20833
  %wide.load8 = load <4 x i8>, ptr %i.n, align 1, !dbg !20834
  %i.o = and <4 x i8> %wide.load8, %vec.phi7, !dbg !20835 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !20832 ; 2 uses
  %i.p = icmp eq i64 %index.next9, %n.vec5, !dbg !20836
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !20836, !llvm.loop !20822

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.q = tail call i8 @llvm.vector.reduce.and.v4i8(<4 x i8> %i.o), !dbg !20836 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.d, %n.vec5, !dbg !20836
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_and0E0E0EB3i_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !20836

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !20836

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20832 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20837
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !20833
  %.val.i = load i8, ptr %i.r, align 1, !dbg !20834, !noundef !1221
  %i.s = and i8 %.val.i, %.sroa.02.0.i, !dbg !20835 ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 1, !dbg !20838 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d, !dbg !20836
  br i1 %i.u, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_and0E0E0EB3i_.exit, label %vec.epilog.scalar.ph, !dbg !20836, !llvm.loop !20825

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_and0E0E0EB3i_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.s, %vec.epilog.scalar.ph ], !dbg !20837
  ret i8 %.sroa.0.0.i, !dbg !20839
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNCINvNtB7_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB37_13BitwiseKernel10reduce_xor0E0EB39_(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20840 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20876
  %i.a = icmp eq ptr %0, %1, !dbg !20877
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_xor0E0E0EB3i_.exit, label %iter.check, !dbg !20878

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20879
  %i.c = ptrtoint ptr %0 to i64, !dbg !20879
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20879      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !20880
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !20880

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !20880
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !20880

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %i.f = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %2, i64 0
  br label %vector.body, !dbg !20880

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20881 ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !20882 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !20883
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !20883
  %wide.load4 = load <16 x i8>, ptr %i.h, align 1, !dbg !20883
  %i.i = xor <16 x i8> %wide.load, %vec.phi, !dbg !20884 ; 2 uses
  %i.j = xor <16 x i8> %wide.load4, %vec.phi3, !dbg !20884 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !20881 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !20885
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !20885, !llvm.loop !20870

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <16 x i8> %i.j, %i.i, !dbg !20885
  %i.l = tail call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx), !dbg !20885 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !20885
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_xor0E0E0EB3i_.exit, label %vec.epilog.iter.check, !dbg !20885

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !20881
  %bc.merge.rdx = phi i8 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !20886
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %i.m = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !20881 ; 2 uses
  %vec.phi7 = phi <4 x i8> [ %i.m, %vec.epilog.ph ], [ %i.o, %vec.epilog.vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index6, !dbg !20882
  %wide.load8 = load <4 x i8>, ptr %i.n, align 1, !dbg !20883
  %i.o = xor <4 x i8> %wide.load8, %vec.phi7, !dbg !20884 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !20881 ; 2 uses
  %i.p = icmp eq i64 %index.next9, %n.vec5, !dbg !20885
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !20885, !llvm.loop !20871

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.q = tail call i8 @llvm.vector.reduce.xor.v4i8(<4 x i8> %i.o), !dbg !20885 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.d, %n.vec5, !dbg !20885
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_xor0E0E0EB3i_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !20885

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !20885

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20881 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20886
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !20882
  %.val.i = load i8, ptr %i.r, align 1, !dbg !20883, !noundef !1221
  %i.s = xor i8 %.val.i, %.sroa.02.0.i, !dbg !20884 ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 1, !dbg !20887 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d, !dbg !20885
  br i1 %i.u, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_xor0E0E0EB3i_.exit, label %vec.epilog.scalar.ph, !dbg !20885, !llvm.loop !20874

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel10reduce_xor0E0E0EB3i_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.s, %vec.epilog.scalar.ph ], !dbg !20886
  ret i8 %.sroa.0.0.i, !dbg !20888
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldaNCINvNtB7_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB37_13BitwiseKernel9reduce_or0E0EB39_(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20889 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20925
  %i.a = icmp eq ptr %0, %1, !dbg !20926
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel9reduce_or0E0E0EB3i_.exit, label %iter.check, !dbg !20927

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20928
  %i.c = ptrtoint ptr %0 to i64, !dbg !20928
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20928      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !20929
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !20929

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !20929
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !20929

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %i.f = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %2, i64 0
  br label %vector.body, !dbg !20929

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !20930 ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !20931 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !20932
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !20932
  %wide.load4 = load <16 x i8>, ptr %i.h, align 1, !dbg !20932
  %i.i = or <16 x i8> %wide.load, %vec.phi, !dbg !20933 ; 2 uses
  %i.j = or <16 x i8> %wide.load4, %vec.phi3, !dbg !20933 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !20930 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !20934
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !20934, !llvm.loop !20919

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i8> %i.j, %i.i, !dbg !20934
  %i.l = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx), !dbg !20934 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !20934
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel9reduce_or0E0E0EB3i_.exit, label %vec.epilog.iter.check, !dbg !20934

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !20930
  %bc.merge.rdx = phi i8 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !20935
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %i.m = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !20930 ; 2 uses
  %vec.phi7 = phi <4 x i8> [ %i.m, %vec.epilog.ph ], [ %i.o, %vec.epilog.vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index6, !dbg !20931
  %wide.load8 = load <4 x i8>, ptr %i.n, align 1, !dbg !20932
  %i.o = or <4 x i8> %wide.load8, %vec.phi7, !dbg !20933 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !20930 ; 2 uses
  %i.p = icmp eq i64 %index.next9, %n.vec5, !dbg !20934
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !20934, !llvm.loop !20920

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.q = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.o), !dbg !20934 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.d, %n.vec5, !dbg !20934
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel9reduce_or0E0E0EB3i_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !20934

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !20934

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20930 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !20935
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !20931
  %.val.i = load i8, ptr %i.r, align 1, !dbg !20932, !noundef !1221
  %i.s = or i8 %.val.i, %.sroa.02.0.i, !dbg !20933 ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 1, !dbg !20936 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d, !dbg !20934
  br i1 %i.u, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel9reduce_or0E0E0EB3i_.exit, label %vec.epilog.scalar.ph, !dbg !20934, !llvm.loop !20923

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldaNCINvNtNtBY_8adapters6copied9copy_foldaaNCINvNtB1K_3map8map_foldaaaINvNtBb_7convert8identityaENCNvXs_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayaENtB3g_13BitwiseKernel9reduce_or0E0E0EB3i_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.s, %vec.epilog.scalar.ph ], !dbg !20935
  ret i8 %.sroa.0.0.i, !dbg !20937
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { double, double } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4foldTddENCINvNtB7_3map8map_folddB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsdINvB2N_21min_max_propagate_nandEE0B3U_E0EB2R_(ptr noundef nonnull %0, ptr noundef %1, double noundef %2, double noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20938 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !20975
  %i.a = icmp eq ptr %0, %1, !dbg !20976
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtBY_8adapters6copied9copy_folddB1C_NCINvNtB1N_3map8map_folddB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsdINvB2Z_21min_max_propagate_nandEE0B46_E0E0EB33_.exit, label %bb.b, !dbg !20977

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !20978
  %i.c = ptrtoint ptr %0 to i64, !dbg !20978
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !20978
  %i.e = lshr exact i64 %i.d, 3, !dbg !20978
  br label %bb.c, !dbg !20979

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.c ], !dbg !20980 ; 2 uses
  %.sroa.6.0.i = phi double [ %3, %bb.b ], [ %..i.i.i.i.i.i, %bb.c ], !dbg !20981 ; 3 uses
  %.sroa.02.0.i = phi double [ %2, %bb.b ], [ %..i1.i.i.i.i.i, %bb.c ], !dbg !20981 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !20982
  %.val.i = load double, ptr %i.f, align 8, !dbg !20983, !noundef !1221 ; 4 uses
  %i.g = fcmp olt double %.sroa.02.0.i, %.val.i, !dbg !20984
  %i.h = fcmp uno double %.sroa.02.0.i, 0.000000e+00, !dbg !20985
  %i.i = or i1 %i.h, %i.g, !dbg !20984
  %..i1.i.i.i.i.i = select i1 %i.i, double %.sroa.02.0.i, double %.val.i, !dbg !20986 ; 2 uses
  %i.j = fcmp ogt double %.sroa.6.0.i, %.val.i, !dbg !20987
  %i.k = fcmp uno double %.sroa.6.0.i, 0.000000e+00, !dbg !20988
  %i.l = or i1 %i.k, %i.j, !dbg !20987
  %..i.i.i.i.i.i = select i1 %i.l, double %.sroa.6.0.i, double %.val.i, !dbg !20989 ; 2 uses
  %i.m = add nuw i64 %.sroa.05.0.i, 1, !dbg !20990 ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e, !dbg !20991
  br i1 %i.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtBY_8adapters6copied9copy_folddB1C_NCINvNtB1N_3map8map_folddB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsdINvB2Z_21min_max_propagate_nandEE0B46_E0E0EB33_.exit, label %bb.c, !dbg !20991

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtBY_8adapters6copied9copy_folddB1C_NCINvNtB1N_3map8map_folddB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsdINvB2Z_21min_max_propagate_nandEE0B46_E0E0EB33_.exit: ; preds = %bb.c, %bb.a
  %.pn20.i = phi double [ %2, %bb.a ], [ %..i1.i.i.i.i.i, %bb.c ]
  %.pn18.i = phi double [ %3, %bb.a ], [ %..i.i.i.i.i.i, %bb.c ]
  %.pn.i = insertvalue { double, double } poison, double %.pn20.i, 0, !dbg !20981
  %.merged.i = insertvalue { double, double } %.pn.i, double %.pn18.i, 1, !dbg !20981
  ret { double, double } %.merged.i, !dbg !20992
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef double @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvNtCs2mZqlW55729_12polars_utils13algebraic_ops11alg_add_f64ECslFlrwjHoTci_14polars_compute(ptr noundef nonnull %0, ptr noundef %1, double noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20993 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21029
  %i.a = icmp eq ptr %0, %1, !dbg !21030
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvNtCs2mZqlW55729_12polars_utils13algebraic_ops11alg_add_f64E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !21031

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21032
  %i.c = ptrtoint ptr %0 to i64, !dbg !21032
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21032      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !21032      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !21033
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !21033

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %i.f = insertelement <2 x double> <double poison, double 0.000000e+00>, double %2, i64 0
  br label %vector.body, !dbg !21033

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21034 ; 2 uses
  %vec.phi = phi <2 x double> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi2 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !21035 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21036
  %wide.load = load <2 x double>, ptr %i.g, align 8, !dbg !21036
  %wide.load3 = load <2 x double>, ptr %i.h, align 8, !dbg !21036
  %i.i = fadd reassoc nsz arcp contract <2 x double> %wide.load, %vec.phi, !dbg !21037 ; 2 uses
  %i.j = fadd reassoc nsz arcp contract <2 x double> %wide.load3, %vec.phi2, !dbg !21037 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !21034 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !21038
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !21038, !llvm.loop !21023

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract <2 x double> %i.j, %i.i, !dbg !21038
  %i.l = tail call reassoc nsz arcp contract double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx), !dbg !21038 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !21038
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvNtCs2mZqlW55729_12polars_utils13algebraic_ops11alg_add_f64E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph.preheader, !dbg !21038

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi double [ %2, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !21038

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !21034 ; 2 uses
  %.sroa.02.0.i = phi double [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !21039
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !21035
  %.val.i = load double, ptr %i.m, align 8, !dbg !21036, !noundef !1221
  %i.n = fadd reassoc nsz arcp contract double %.val.i, %.sroa.02.0.i, !dbg !21037 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1, !dbg !21040 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !21038
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvNtCs2mZqlW55729_12polars_utils13algebraic_ops11alg_add_f64E0ECslFlrwjHoTci_14polars_compute.exit, label %scalar.ph, !dbg !21038, !llvm.loop !21026

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters6copied9copy_foldddNvNtCs2mZqlW55729_12polars_utils13algebraic_ops11alg_add_f64E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi double [ %2, %bb.a ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ], !dbg !21039
  ret double %.sroa.0.0.i, !dbg !21041
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4foldyNCINvNtB7_3map8map_folddyyNvMNtBb_3f64d7to_bitsNCNvXs9_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB32_13BitwiseKernel10reduce_and0E0EB34_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21042 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21077
  %i.a = icmp eq ptr %0, %1, !dbg !21078
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters6copied9copy_folddyNCINvNtB1K_3map8map_folddyyNvMNtBb_3f64d7to_bitsNCNvXs9_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB3b_13BitwiseKernel10reduce_and0E0E0EB3d_.exit, label %bb.b, !dbg !21079

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21080
  %i.c = ptrtoint ptr %0 to i64, !dbg !21080
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21080      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !21080      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !21081
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !21081

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %i.f = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %2, i64 0
  br label %vector.body, !dbg !21081

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21082 ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ splat (i64 -1), %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !21083 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21084
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !dbg !21084
  %wide.load3 = load <2 x i64>, ptr %i.h, align 8, !dbg !21084
  %i.i = and <2 x i64> %wide.load, %vec.phi, !dbg !21085 ; 2 uses
  %i.j = and <2 x i64> %wide.load3, %vec.phi2, !dbg !21085 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !21082 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !21086
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !21086, !llvm.loop !21072

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <2 x i64> %i.j, %i.i, !dbg !21086
  %i.l = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx), !dbg !21086 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !21086
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters6copied9copy_folddyNCINvNtB1K_3map8map_folddyyNvMNtBb_3f64d7to_bitsNCNvXs9_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB3b_13BitwiseKernel10reduce_and0E0E0EB3d_.exit, label %scalar.ph.preheader, !dbg !21086

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ %2, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !21086

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !21082 ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !21087
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !21083
  %.val13.i = load i64, ptr %i.m, align 8, !dbg !21084, !noundef !1221
  %i.n = and i64 %.val13.i, %.sroa.02.0.i, !dbg !21085 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1, !dbg !21088 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !21086
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters6copied9copy_folddyNCINvNtB1K_3map8map_folddyyNvMNtBb_3f64d7to_bitsNCNvXs9_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB3b_13BitwiseKernel10reduce_and0E0E0EB3d_.exit, label %scalar.ph, !dbg !21086, !llvm.loop !21075

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtBY_8adapters6copied9copy_folddyNCINvNtB1K_3map8map_folddyyNvMNtBb_3f64d7to_bitsNCNvXs9_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB3b_13BitwiseKernel10reduce_and0E0E0EB3d_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ], !dbg !21087
  ret i64 %.sroa.0.0.i, !dbg !21089
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
end_hunk_3
begin_hunk_4_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNtB7_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB32_13BitwiseKernel10reduce_and0E0EB34_:bb.a
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel10reduce_and0E0E0EB3d_.exit, label %scalar.ph.preheader, !dbg !21285

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ %2, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !21285

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !21281 ; 2 uses
  %.sroa.02.0.i = phi i32 [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !21286
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !21282
  %.val13.i = load i32, ptr %i.m, align 4, !dbg !21283, !noundef !1221
  %i.n = and i32 %.val13.i, %.sroa.02.0.i, !dbg !21284 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1, !dbg !21287 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !21285
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel10reduce_and0E0E0EB3d_.exit, label %scalar.ph, !dbg !21285, !llvm.loop !21274

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel10reduce_and0E0E0EB3d_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi i32 [ %2, %bb.a ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ], !dbg !21286
  ret i32 %.sroa.0.0.i, !dbg !21288
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNtB7_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB32_13BitwiseKernel10reduce_xor0E0EB34_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21289 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21324
  %i.a = icmp eq ptr %0, %1, !dbg !21325
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel10reduce_xor0E0E0EB3d_.exit, label %bb.b, !dbg !21326

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21327
  %i.c = ptrtoint ptr %0 to i64, !dbg !21327
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21327      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !21327      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !21328
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !21328

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %2, i64 0
  br label %vector.body, !dbg !21328

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21329 ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !21330 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21331
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !dbg !21331
  %wide.load3 = load <4 x i32>, ptr %i.h, align 4, !dbg !21331
  %i.i = xor <4 x i32> %wide.load, %vec.phi, !dbg !21332 ; 2 uses
  %i.j = xor <4 x i32> %wide.load3, %vec.phi2, !dbg !21332 ; 2 uses
  %index.next = add nuw i64 %index, 8, !dbg !21329 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !21333
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !21333, !llvm.loop !21319

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.j, %i.i, !dbg !21333
  %i.l = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx), !dbg !21333 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !21333
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel10reduce_xor0E0E0EB3d_.exit, label %scalar.ph.preheader, !dbg !21333

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ %2, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !21333

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !21329 ; 2 uses
  %.sroa.02.0.i = phi i32 [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !21334
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !21330
  %.val13.i = load i32, ptr %i.m, align 4, !dbg !21331, !noundef !1221
  %i.n = xor i32 %.val13.i, %.sroa.02.0.i, !dbg !21332 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1, !dbg !21335 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !21333
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel10reduce_xor0E0E0EB3d_.exit, label %scalar.ph, !dbg !21333, !llvm.loop !21322

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel10reduce_xor0E0E0EB3d_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi i32 [ %2, %bb.a ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ], !dbg !21334
  ret i32 %.sroa.0.0.i, !dbg !21336
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4foldmNCINvNtB7_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB32_13BitwiseKernel9reduce_or0E0EB34_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21337 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21372
  %i.a = icmp eq ptr %0, %1, !dbg !21373
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel9reduce_or0E0E0EB3d_.exit, label %bb.b, !dbg !21374

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21375
  %i.c = ptrtoint ptr %0 to i64, !dbg !21375
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21375      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !21375      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !21376
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !21376

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %2, i64 0
  br label %vector.body, !dbg !21376

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21377 ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !21378 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21379
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !dbg !21379
  %wide.load3 = load <4 x i32>, ptr %i.h, align 4, !dbg !21379
  %i.i = or <4 x i32> %wide.load, %vec.phi, !dbg !21380 ; 2 uses
  %i.j = or <4 x i32> %wide.load3, %vec.phi2, !dbg !21380 ; 2 uses
  %index.next = add nuw i64 %index, 8, !dbg !21377 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !21381
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !21381, !llvm.loop !21367

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.j, %i.i, !dbg !21381
  %i.l = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx), !dbg !21381 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !21381
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel9reduce_or0E0E0EB3d_.exit, label %scalar.ph.preheader, !dbg !21381

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ %2, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !21381

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !21377 ; 2 uses
  %.sroa.02.0.i = phi i32 [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !21382
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !21378
  %.val13.i = load i32, ptr %i.m, align 4, !dbg !21379, !noundef !1221
  %i.n = or i32 %.val13.i, %.sroa.02.0.i, !dbg !21380 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1, !dbg !21383 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !21381
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel9reduce_or0E0E0EB3d_.exit, label %scalar.ph, !dbg !21381, !llvm.loop !21370

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtBY_8adapters6copied9copy_foldfmNCINvNtB1K_3map8map_foldfmmNvMNtBb_3f32f7to_bitsNCNvXs8_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB3b_13BitwiseKernel9reduce_or0E0E0EB3d_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi i32 [ %2, %bb.a ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ], !dbg !21382
  ret i32 %.sroa.0.0.i, !dbg !21384
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i8, i8 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldThhENCINvNtB7_3map8map_foldhB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2N_21min_max_propagate_nanhEE0B3U_E0EB2R_(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2, i8 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21385 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21423
  %i.a = icmp eq ptr %0, %1, !dbg !21424
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_21min_max_propagate_nanhEE0B46_E0E0EB33_.exit, label %iter.check, !dbg !21425

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21426
  %i.c = ptrtoint ptr %0 to i64, !dbg !21426
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21426      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !21427
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21427

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !21427
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !21427

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat4 = shufflevector <16 x i8> %broadcast.splatinsert3, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !21427

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21428 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi5 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi6 = phi <16 x i8> [ %broadcast.splat4, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <16 x i8> [ %broadcast.splat4, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !21429 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !21430
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !21430 ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.g, align 1, !dbg !21430 ; 2 uses
  %i.h = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi6, <16 x i8> %wide.load), !dbg !21431 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi7, <16 x i8> %wide.load8), !dbg !21431 ; 2 uses
  %i.j = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !21432 ; 2 uses
  %i.k = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi5, <16 x i8> %wide.load8), !dbg !21432 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !21428 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !21433
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !21433, !llvm.loop !21418

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.j, <16 x i8> %i.k), !dbg !21433
  %i.m = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax), !dbg !21433 ; 3 uses
  %rdx.minmax9 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !21433
  %i.n = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax9), !dbg !21433 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !21433
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_21min_max_propagate_nanhEE0B46_E0E0EB33_.exit, label %vec.epilog.iter.check, !dbg !21433

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21428
  %bc.merge.rdx = phi i8 [ %i.m, %vec.epilog.iter.check ], [ %3, %vector.main.loop.iter.check ], !dbg !21434
  %bc.merge.rdx10 = phi i8 [ %i.n, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !21434
  %n.vec11 = and i64 %i.d, -4                     ; 3 uses
  %broadcast.splatinsert12 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat13 = shufflevector <4 x i8> %broadcast.splatinsert12, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x i8> poison, i8 %bc.merge.rdx10, i64 0
  %broadcast.splat15 = shufflevector <4 x i8> %broadcast.splatinsert14, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !21428 ; 2 uses
  %vec.phi17 = phi <4 x i8> [ %broadcast.splat13, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %vec.phi18 = phi <4 x i8> [ %broadcast.splat15, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index16, !dbg !21429
  %wide.load19 = load <4 x i8>, ptr %i.o, align 1, !dbg !21430 ; 2 uses
  %i.p = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi18, <4 x i8> %wide.load19), !dbg !21431 ; 2 uses
  %i.q = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi17, <4 x i8> %wide.load19), !dbg !21432 ; 2 uses
  %index.next20 = add nuw i64 %index16, 4, !dbg !21428 ; 2 uses
  %i.r = icmp eq i64 %index.next20, %n.vec11, !dbg !21433
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21433, !llvm.loop !21419

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.s = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.q), !dbg !21433 ; 2 uses
  %i.t = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.p), !dbg !21433 ; 2 uses
  %cmp.n21 = icmp eq i64 %i.d, %n.vec11, !dbg !21433
  br i1 %cmp.n21, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_21min_max_propagate_nanhEE0B46_E0E0EB33_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21433

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.6.0.i.ph = phi i8 [ %3, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !21433

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.v, %vec.epilog.scalar.ph ], [ %.sroa.05.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21428 ; 2 uses
  %.sroa.6.0.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.6.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21434
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21434
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.05.0.i, !dbg !21429
  %.val.i = load i8, ptr %i.u, align 1, !dbg !21430, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i8 @llvm.umin.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !21431 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i8 @llvm.umax.i8(i8 %.sroa.6.0.i, i8 %.val.i), !dbg !21432 ; 2 uses
  %i.v = add nuw i64 %.sroa.05.0.i, 1, !dbg !21435 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !21433
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_21min_max_propagate_nanhEE0B46_E0E0EB33_.exit, label %vec.epilog.scalar.ph, !dbg !21433, !llvm.loop !21422

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_21min_max_propagate_nanhEE0B46_E0E0EB33_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.pn21.i = phi i8 [ %2, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn19.i = phi i8 [ %3, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn.i = insertvalue { i8, i8 } poison, i8 %.pn21.i, 0, !dbg !21434
  %.merged.i = insertvalue { i8, i8 } %.pn.i, i8 %.pn19.i, 1, !dbg !21434
  ret { i8, i8 } %.merged.i, !dbg !21436
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNCINvNtB7_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB38_13BitwiseKernel10reduce_and0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21437 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21473
  %i.a = icmp eq ptr %0, %1, !dbg !21474
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %iter.check, !dbg !21475

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21476
  %i.c = ptrtoint ptr %0 to i64, !dbg !21476
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21476      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !21477
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21477

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !21477
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !21477

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %i.f = insertelement <16 x i8> <i8 poison, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, i8 %2, i64 0
  br label %vector.body, !dbg !21477

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21478 ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ splat (i8 -1), %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !21479 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21480
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !21480
  %wide.load4 = load <16 x i8>, ptr %i.h, align 1, !dbg !21480
  %i.i = and <16 x i8> %wide.load, %vec.phi, !dbg !21481 ; 2 uses
  %i.j = and <16 x i8> %wide.load4, %vec.phi3, !dbg !21481 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !21478 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !21482
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !21482, !llvm.loop !21467

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <16 x i8> %i.j, %i.i, !dbg !21482
  %i.l = tail call i8 @llvm.vector.reduce.and.v16i8(<16 x i8> %bin.rdx), !dbg !21482 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !21482
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !21482

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21478
  %bc.merge.rdx = phi i8 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !21483
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %i.m = insertelement <4 x i8> <i8 poison, i8 -1, i8 -1, i8 -1>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !21478 ; 2 uses
  %vec.phi7 = phi <4 x i8> [ %i.m, %vec.epilog.ph ], [ %i.o, %vec.epilog.vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index6, !dbg !21479
  %wide.load8 = load <4 x i8>, ptr %i.n, align 1, !dbg !21480
  %i.o = and <4 x i8> %wide.load8, %vec.phi7, !dbg !21481 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !21478 ; 2 uses
  %i.p = icmp eq i64 %index.next9, %n.vec5, !dbg !21482
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21482, !llvm.loop !21468

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.q = tail call i8 @llvm.vector.reduce.and.v4i8(<4 x i8> %i.o), !dbg !21482 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.d, %n.vec5, !dbg !21482
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21482

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !21482

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21478 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21483
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !21479
  %.val.i = load i8, ptr %i.r, align 1, !dbg !21480, !noundef !1221
  %i.s = and i8 %.val.i, %.sroa.02.0.i, !dbg !21481 ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 1, !dbg !21484 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d, !dbg !21482
  br i1 %i.u, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !21482, !llvm.loop !21471

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.s, %vec.epilog.scalar.ph ], !dbg !21483
  ret i8 %.sroa.0.0.i, !dbg !21485
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNCINvNtB7_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB38_13BitwiseKernel10reduce_xor0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21486 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21522
  %i.a = icmp eq ptr %0, %1, !dbg !21523
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %iter.check, !dbg !21524

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21525
  %i.c = ptrtoint ptr %0 to i64, !dbg !21525
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21525      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !21526
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21526

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !21526
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !21526

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %i.f = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %2, i64 0
  br label %vector.body, !dbg !21526

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21527 ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !21528 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21529
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !21529
  %wide.load4 = load <16 x i8>, ptr %i.h, align 1, !dbg !21529
  %i.i = xor <16 x i8> %wide.load, %vec.phi, !dbg !21530 ; 2 uses
  %i.j = xor <16 x i8> %wide.load4, %vec.phi3, !dbg !21530 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !21527 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !21531
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !21531, !llvm.loop !21516

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <16 x i8> %i.j, %i.i, !dbg !21531
  %i.l = tail call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx), !dbg !21531 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !21531
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !21531

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21527
  %bc.merge.rdx = phi i8 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !21532
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %i.m = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !21527 ; 2 uses
  %vec.phi7 = phi <4 x i8> [ %i.m, %vec.epilog.ph ], [ %i.o, %vec.epilog.vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index6, !dbg !21528
  %wide.load8 = load <4 x i8>, ptr %i.n, align 1, !dbg !21529
  %i.o = xor <4 x i8> %wide.load8, %vec.phi7, !dbg !21530 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !21527 ; 2 uses
  %i.p = icmp eq i64 %index.next9, %n.vec5, !dbg !21531
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21531, !llvm.loop !21517

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.q = tail call i8 @llvm.vector.reduce.xor.v4i8(<4 x i8> %i.o), !dbg !21531 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.d, %n.vec5, !dbg !21531
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21531

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !21531

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21527 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21532
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !21528
  %.val.i = load i8, ptr %i.r, align 1, !dbg !21529, !noundef !1221
  %i.s = xor i8 %.val.i, %.sroa.02.0.i, !dbg !21530 ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 1, !dbg !21533 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d, !dbg !21531
  br i1 %i.u, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !21531, !llvm.loop !21520

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.s, %vec.epilog.scalar.ph ], !dbg !21532
  ret i8 %.sroa.0.0.i, !dbg !21534
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i8 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldhNCINvNtB7_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB38_13BitwiseKernel9reduce_or0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21535 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21571
  %i.a = icmp eq ptr %0, %1, !dbg !21572
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %iter.check, !dbg !21573

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21574
  %i.c = ptrtoint ptr %0 to i64, !dbg !21574
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21574      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !21575
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !21575

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !21575
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !21575

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %i.f = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %2, i64 0
  br label %vector.body, !dbg !21575

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21576 ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !21577 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21578
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !dbg !21578
  %wide.load4 = load <16 x i8>, ptr %i.h, align 1, !dbg !21578
  %i.i = or <16 x i8> %wide.load, %vec.phi, !dbg !21579 ; 2 uses
  %i.j = or <16 x i8> %wide.load4, %vec.phi3, !dbg !21579 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !21576 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !21580
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !21580, !llvm.loop !21565

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i8> %i.j, %i.i, !dbg !21580
  %i.l = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx), !dbg !21580 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !21580
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !21580

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1493

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !21576
  %bc.merge.rdx = phi i8 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !21581
  %n.vec5 = and i64 %i.d, -4                      ; 3 uses
  %i.m = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !21576 ; 2 uses
  %vec.phi7 = phi <4 x i8> [ %i.m, %vec.epilog.ph ], [ %i.o, %vec.epilog.vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index6, !dbg !21577
  %wide.load8 = load <4 x i8>, ptr %i.n, align 1, !dbg !21578
  %i.o = or <4 x i8> %wide.load8, %vec.phi7, !dbg !21579 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !21576 ; 2 uses
  %i.p = icmp eq i64 %index.next9, %n.vec5, !dbg !21580
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !21580, !llvm.loop !21566

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.q = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.o), !dbg !21580 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.d, %n.vec5, !dbg !21580
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !21580

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !21580

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21576 ; 2 uses
  %.sroa.02.0.i = phi i8 [ %i.s, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !21581
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0.i, !dbg !21577
  %.val.i = load i8, ptr %i.r, align 1, !dbg !21578, !noundef !1221
  %i.s = or i8 %.val.i, %.sroa.02.0.i, !dbg !21579 ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 1, !dbg !21582 ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.d, !dbg !21580
  br i1 %i.u, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !21580, !llvm.loop !21569

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldhNCINvNtNtBY_8adapters6copied9copy_foldhhNCINvNtB1K_3map8map_foldhhhINvNtBb_7convert8identityhENCNvXs3_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i8 [ %2, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.s, %vec.epilog.scalar.ph ], !dbg !21581
  ret i8 %.sroa.0.0.i, !dbg !21583
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i32, i32 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldTllENCINvNtB7_3map8map_foldlB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2N_21min_max_propagate_nanlEE0B3U_E0EB2R_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21584 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21621
  %i.a = icmp eq ptr %0, %1, !dbg !21622
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTllENCINvNtNtBY_8adapters6copied9copy_foldlB1C_NCINvNtB1N_3map8map_foldlB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2Z_21min_max_propagate_nanlEE0B46_E0E0EB33_.exit, label %bb.b, !dbg !21623

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21624
  %i.c = ptrtoint ptr %0 to i64, !dbg !21624
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21624      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !21624      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !21625
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !21625

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat3 = shufflevector <4 x i32> %broadcast.splatinsert2, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !21625

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21626 ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ %broadcast.splat3, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ %broadcast.splat3, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !21627 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !21628
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !dbg !21628 ; 2 uses
  %wide.load7 = load <4 x i32>, ptr %i.g, align 4, !dbg !21628 ; 2 uses
  %i.h = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi5, <4 x i32> %wide.load), !dbg !21629 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi6, <4 x i32> %wide.load7), !dbg !21629 ; 2 uses
  %i.j = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load), !dbg !21630 ; 2 uses
  %i.k = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi4, <4 x i32> %wide.load7), !dbg !21630 ; 2 uses
  %index.next = add nuw i64 %index, 8, !dbg !21626 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !21631
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !21631, !llvm.loop !21617

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.j, <4 x i32> %i.k), !dbg !21631
  %i.m = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax), !dbg !21631 ; 2 uses
  %rdx.minmax8 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.h, <4 x i32> %i.i), !dbg !21631
  %i.n = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax8), !dbg !21631 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !21631
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTllENCINvNtNtBY_8adapters6copied9copy_foldlB1C_NCINvNtB1N_3map8map_foldlB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2Z_21min_max_propagate_nanlEE0B46_E0E0EB33_.exit, label %scalar.ph.preheader, !dbg !21631

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.6.0.i.ph = phi i32 [ %3, %bb.b ], [ %i.m, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ %2, %bb.b ], [ %i.n, %middle.block ]
  br label %scalar.ph, !dbg !21631

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.05.0.i.ph, %scalar.ph.preheader ], !dbg !21626 ; 2 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i, %scalar.ph ], [ %.sroa.6.0.i.ph, %scalar.ph.preheader ], !dbg !21632
  %.sroa.02.0.i = phi i32 [ %.sroa.0.0.i1.i.i.i.i.i, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !21632
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !21627
  %.val.i = load i32, ptr %i.o, align 4, !dbg !21628, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.02.0.i, i32 %.val.i), !dbg !21629 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.6.0.i, i32 %.val.i), !dbg !21630 ; 2 uses
  %i.p = add nuw i64 %.sroa.05.0.i, 1, !dbg !21633 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e, !dbg !21631
  br i1 %i.q, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTllENCINvNtNtBY_8adapters6copied9copy_foldlB1C_NCINvNtB1N_3map8map_foldlB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2Z_21min_max_propagate_nanlEE0B46_E0E0EB33_.exit, label %scalar.ph, !dbg !21631, !llvm.loop !21620

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTllENCINvNtNtBY_8adapters6copied9copy_foldlB1C_NCINvNtB1N_3map8map_foldlB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2Z_21min_max_propagate_nanlEE0B46_E0E0EB33_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.pn20.i = phi i32 [ %2, %bb.a ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %scalar.ph ]
  %.pn18.i = phi i32 [ %3, %bb.a ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %scalar.ph ]
  %.pn.i = insertvalue { i32, i32 } poison, i32 %.pn20.i, 0, !dbg !21632
  %.merged.i = insertvalue { i32, i32 } %.pn.i, i32 %.pn18.i, 1, !dbg !21632
  ret { i32, i32 } %.merged.i, !dbg !21634
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldlNCINvNtB7_3map8map_foldlllINvNtBb_7convert8identitylENCNvXs1_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB38_13BitwiseKernel10reduce_and0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21635 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21670
  %i.a = icmp eq ptr %0, %1, !dbg !21671
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldlNCINvNtNtBY_8adapters6copied9copy_foldllNCINvNtB1K_3map8map_foldlllINvNtBb_7convert8identitylENCNvXs1_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %bb.b, !dbg !21672

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21673
  %i.c = ptrtoint ptr %0 to i64, !dbg !21673
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21673      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !21673      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !21674
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !21674

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %i.f = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %2, i64 0
  br label %vector.body, !dbg !21674

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21675 ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !21676 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21677
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !dbg !21677
  %wide.load3 = load <4 x i32>, ptr %i.h, align 4, !dbg !21677
  %i.i = and <4 x i32> %wide.load, %vec.phi, !dbg !21678 ; 2 uses
  %i.j = and <4 x i32> %wide.load3, %vec.phi2, !dbg !21678 ; 2 uses
  %index.next = add nuw i64 %index, 8, !dbg !21675 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !21679
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !21679, !llvm.loop !21665

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.j, %i.i, !dbg !21679
  %i.l = tail call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %bin.rdx), !dbg !21679 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !21679
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldlNCINvNtNtBY_8adapters6copied9copy_foldllNCINvNtB1K_3map8map_foldlllINvNtBb_7convert8identitylENCNvXs1_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %scalar.ph.preheader, !dbg !21679

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ %2, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !21679

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !21675 ; 2 uses
  %.sroa.02.0.i = phi i32 [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !21680
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !21676
  %.val.i = load i32, ptr %i.m, align 4, !dbg !21677, !noundef !1221
  %i.n = and i32 %.val.i, %.sroa.02.0.i, !dbg !21678 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1, !dbg !21681 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !21679
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldlNCINvNtNtBY_8adapters6copied9copy_foldllNCINvNtB1K_3map8map_foldlllINvNtBb_7convert8identitylENCNvXs1_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %scalar.ph, !dbg !21679, !llvm.loop !21668

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldlNCINvNtNtBY_8adapters6copied9copy_foldllNCINvNtB1K_3map8map_foldlllINvNtBb_7convert8identitylENCNvXs1_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi i32 [ %2, %bb.a ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ], !dbg !21680
  ret i32 %.sroa.0.0.i, !dbg !21682
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i32 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldlNCINvNtB7_3map8map_foldlllINvNtBb_7convert8identitylENCNvXs1_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB38_13BitwiseKernel10reduce_xor0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !21683 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !21718
  %i.a = icmp eq ptr %0, %1, !dbg !21719
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldlNCINvNtNtBY_8adapters6copied9copy_foldllNCINvNtB1K_3map8map_foldlllINvNtBb_7convert8identitylENCNvXs1_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %bb.b, !dbg !21720

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !21721
  %i.c = ptrtoint ptr %0 to i64, !dbg !21721
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !21721      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !21721      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !21722
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !21722

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %2, i64 0
  br label %vector.body, !dbg !21722

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !21723 ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi2 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !21724 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !21725
end_hunk_4
begin_hunk_5_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4foldoNCINvNtB7_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB38_13BitwiseKernel10reduce_xor0E0EB3a_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22302
  %i.a = icmp eq ptr %0, %1, !dbg !22303
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %bb.b, !dbg !22304

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22305
  %i.c = ptrtoint ptr %0 to i64, !dbg !22305
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22305      ; 2 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !22305      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !22306        ; 3 uses
  %i.f = icmp ult i64 %i.d, 64, !dbg !22306
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !22306

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972, !dbg !22306
  br label %bb.c, !dbg !22306

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.r, %bb.c ], !dbg !22307 ; 5 uses
  %.sroa.02.0.i = phi i128 [ %2, %.new ], [ %i.q, %bb.c ], !dbg !22308
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22309
  %.val.i = load i128, ptr %i.g, align 16, !dbg !22310, !noundef !1221
  %i.h = xor i128 %.val.i, %.sroa.02.0.i, !dbg !22311
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22309
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !22309
  %.val.i.1 = load i128, ptr %i.j, align 16, !dbg !22310, !noundef !1221
  %i.k = xor i128 %.val.i.1, %i.h, !dbg !22311
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22309
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !22309
  %.val.i.2 = load i128, ptr %i.m, align 16, !dbg !22310, !noundef !1221
  %i.n = xor i128 %.val.i.2, %i.k, !dbg !22311
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22309
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48, !dbg !22309
  %.val.i.3 = load i128, ptr %i.p, align 16, !dbg !22310, !noundef !1221
  %i.q = xor i128 %.val.i.3, %i.n, !dbg !22311    ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 4, !dbg !22312 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !22313  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !22313
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !22313

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22313
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %.epil.preheader, !dbg !22313

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i128 [ %2, %bb.b ], [ %i.q, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !22313
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !22313
  br label %bb.d, !dbg !22313

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.u, %bb.d ], !dbg !22307 ; 2 uses
  %.sroa.02.0.i.epil = phi i128 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %i.t, %bb.d ], !dbg !22308
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i.epil, !dbg !22309
  %.val.i.epil = load i128, ptr %i.s, align 16, !dbg !22310, !noundef !1221
  %i.t = xor i128 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !22311 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !22312
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !22313 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !22313
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %bb.d, !dbg !22313, !llvm.loop !22300

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i128 [ %2, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit.loopexit.unr-lcssa ], [ %i.t, %bb.d ], !dbg !22308
  ret i128 %.sroa.0.0.i, !dbg !22314
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i128 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4foldoNCINvNtB7_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB38_13BitwiseKernel9reduce_or0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i128 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22315 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22349
  %i.a = icmp eq ptr %0, %1, !dbg !22350
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %bb.b, !dbg !22351

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22352
  %i.c = ptrtoint ptr %0 to i64, !dbg !22352
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22352      ; 2 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !22352      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !22353        ; 3 uses
  %i.f = icmp ult i64 %i.d, 64, !dbg !22353
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !22353

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846972, !dbg !22353
  br label %bb.c, !dbg !22353

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.r, %bb.c ], !dbg !22354 ; 5 uses
  %.sroa.02.0.i = phi i128 [ %2, %.new ], [ %i.q, %bb.c ], !dbg !22355
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22356
  %.val.i = load i128, ptr %i.g, align 16, !dbg !22357, !noundef !1221
  %i.h = or i128 %.val.i, %.sroa.02.0.i, !dbg !22358
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22356
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !22356
  %.val.i.1 = load i128, ptr %i.j, align 16, !dbg !22357, !noundef !1221
  %i.k = or i128 %.val.i.1, %i.h, !dbg !22358
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22356
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !22356
  %.val.i.2 = load i128, ptr %i.m, align 16, !dbg !22357, !noundef !1221
  %i.n = or i128 %.val.i.2, %i.k, !dbg !22358
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22356
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48, !dbg !22356
  %.val.i.3 = load i128, ptr %i.p, align 16, !dbg !22357, !noundef !1221
  %i.q = or i128 %.val.i.3, %i.n, !dbg !22358     ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 4, !dbg !22359 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !22360  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !22360
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !22360

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22360
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %.epil.preheader, !dbg !22360

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i128 [ %2, %bb.b ], [ %i.q, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0, !dbg !22360
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !22360
  br label %bb.d, !dbg !22360

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %.sroa.04.0.i.epil.init, %.epil.preheader ], [ %i.u, %bb.d ], !dbg !22354 ; 2 uses
  %.sroa.02.0.i.epil = phi i128 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %i.t, %bb.d ], !dbg !22355
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i.epil, !dbg !22356
  %.val.i.epil = load i128, ptr %i.s, align 16, !dbg !22357, !noundef !1221
  %i.t = or i128 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !22358 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !22359
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !22360 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !22360
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %bb.d, !dbg !22360, !llvm.loop !22347

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.sroa.0.0.i = phi i128 [ %2, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4foldoNCINvNtNtBY_8adapters6copied9copy_foldooNCINvNtB1K_3map8map_foldoooINvNtBb_7convert8identityoENCNvXsa_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit.loopexit.unr-lcssa ], [ %i.t, %bb.d ], !dbg !22355
  ret i128 %.sroa.0.0.i, !dbg !22361
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i16, i16 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldTssENCINvNtB7_3map8map_foldsB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2N_21min_max_propagate_nansEE0B3U_E0EB2R_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22362 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22400
  %i.a = icmp eq ptr %0, %1, !dbg !22401
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_21min_max_propagate_nansEE0B46_E0E0EB33_.exit, label %iter.check, !dbg !22402

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22403
  %i.c = ptrtoint ptr %0 to i64, !dbg !22403
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22403      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !22403      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !22404
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !22404

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !22404
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !22404

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat4 = shufflevector <8 x i16> %broadcast.splatinsert3, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !22404

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22405 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi5 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi6 = phi <8 x i16> [ %broadcast.splat4, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <8 x i16> [ %broadcast.splat4, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !22406 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !22407
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !22407 ; 2 uses
  %wide.load8 = load <8 x i16>, ptr %i.g, align 2, !dbg !22407 ; 2 uses
  %i.h = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi6, <8 x i16> %wide.load), !dbg !22408 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi7, <8 x i16> %wide.load8), !dbg !22408 ; 2 uses
  %i.j = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !22409 ; 2 uses
  %i.k = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi5, <8 x i16> %wide.load8), !dbg !22409 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !22405 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !22410
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !22410, !llvm.loop !22395

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.j, <8 x i16> %i.k), !dbg !22410
  %i.m = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax), !dbg !22410 ; 3 uses
  %rdx.minmax9 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !22410
  %i.n = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax9), !dbg !22410 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22410
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_21min_max_propagate_nansEE0B46_E0E0EB33_.exit, label %vec.epilog.iter.check, !dbg !22410

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.o = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !22405
  %bc.merge.rdx = phi i16 [ %i.m, %vec.epilog.iter.check ], [ %3, %vector.main.loop.iter.check ], !dbg !22411
  %bc.merge.rdx10 = phi i16 [ %i.n, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !22411
  %n.vec11 = and i64 %i.e, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert12 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat13 = shufflevector <4 x i16> %broadcast.splatinsert12, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x i16> poison, i16 %bc.merge.rdx10, i64 0
  %broadcast.splat15 = shufflevector <4 x i16> %broadcast.splatinsert14, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !22405 ; 2 uses
  %vec.phi17 = phi <4 x i16> [ %broadcast.splat13, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %vec.phi18 = phi <4 x i16> [ %broadcast.splat15, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index16, !dbg !22406
  %wide.load19 = load <4 x i16>, ptr %i.p, align 2, !dbg !22407 ; 2 uses
  %i.q = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi18, <4 x i16> %wide.load19), !dbg !22408 ; 2 uses
  %i.r = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi17, <4 x i16> %wide.load19), !dbg !22409 ; 2 uses
  %index.next20 = add nuw i64 %index16, 4, !dbg !22405 ; 2 uses
  %i.s = icmp eq i64 %index.next20, %n.vec11, !dbg !22410
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !22410, !llvm.loop !22396

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.r), !dbg !22410 ; 2 uses
  %i.u = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.q), !dbg !22410 ; 2 uses
  %cmp.n21 = icmp eq i64 %i.e, %n.vec11, !dbg !22410
  br i1 %cmp.n21, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_21min_max_propagate_nansEE0B46_E0E0EB33_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !22410

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.6.0.i.ph = phi i16 [ %3, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !22410

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.w, %vec.epilog.scalar.ph ], [ %.sroa.05.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22405 ; 2 uses
  %.sroa.6.0.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.6.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22411
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22411
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !22406
  %.val.i = load i16, ptr %i.v, align 2, !dbg !22407, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i16 @llvm.smin.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !22408 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i16 @llvm.smax.i16(i16 %.sroa.6.0.i, i16 %.val.i), !dbg !22409 ; 2 uses
  %i.w = add nuw i64 %.sroa.05.0.i, 1, !dbg !22412 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.e, !dbg !22410
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_21min_max_propagate_nansEE0B46_E0E0EB33_.exit, label %vec.epilog.scalar.ph, !dbg !22410, !llvm.loop !22399

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_21min_max_propagate_nansEE0B46_E0E0EB33_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.pn21.i = phi i16 [ %2, %bb.a ], [ %i.u, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn19.i = phi i16 [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn.i = insertvalue { i16, i16 } poison, i16 %.pn21.i, 0, !dbg !22411
  %.merged.i = insertvalue { i16, i16 } %.pn.i, i16 %.pn19.i, 1, !dbg !22411
  ret { i16, i16 } %.merged.i, !dbg !22413
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNCINvNtB7_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB38_13BitwiseKernel10reduce_and0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22414 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22450
  %i.a = icmp eq ptr %0, %1, !dbg !22451
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %iter.check, !dbg !22452

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22453
  %i.c = ptrtoint ptr %0 to i64, !dbg !22453
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22453      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !22453      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !22454
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !22454

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !22454
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !22454

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>, i16 %2, i64 0
  br label %vector.body, !dbg !22454

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22455 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ splat (i16 -1), %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !22456 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !22457
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !22457
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !22457
  %i.i = and <8 x i16> %wide.load, %vec.phi, !dbg !22458 ; 2 uses
  %i.j = and <8 x i16> %wide.load4, %vec.phi3, !dbg !22458 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !22455 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !22459
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !22459, !llvm.loop !22444

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <8 x i16> %i.j, %i.i, !dbg !22459
  %i.l = tail call i16 @llvm.vector.reduce.and.v8i16(<8 x i16> %bin.rdx), !dbg !22459 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22459
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !22459

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !22455
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !22460
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 -1, i16 -1, i16 -1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !22455 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !22456
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !22457
  %i.p = and <4 x i16> %wide.load8, %vec.phi7, !dbg !22458 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !22455 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !22459
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !22459, !llvm.loop !22445

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.p), !dbg !22459 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !22459
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !22459

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !22459

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22455 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22460
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22456
  %.val.i = load i16, ptr %i.s, align 2, !dbg !22457, !noundef !1221
  %i.t = and i16 %.val.i, %.sroa.02.0.i, !dbg !22458 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !22461 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !22459
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !22459, !llvm.loop !22448

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !22460
  ret i16 %.sroa.0.0.i, !dbg !22462
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNCINvNtB7_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB38_13BitwiseKernel10reduce_xor0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22463 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22499
  %i.a = icmp eq ptr %0, %1, !dbg !22500
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %iter.check, !dbg !22501

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22502
  %i.c = ptrtoint ptr %0 to i64, !dbg !22502
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22502      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !22502      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !22503
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !22503

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !22503
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !22503

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %2, i64 0
  br label %vector.body, !dbg !22503

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22504 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !22505 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !22506
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !22506
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !22506
  %i.i = xor <8 x i16> %wide.load, %vec.phi, !dbg !22507 ; 2 uses
  %i.j = xor <8 x i16> %wide.load4, %vec.phi3, !dbg !22507 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !22504 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !22508
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !22508, !llvm.loop !22493

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <8 x i16> %i.j, %i.i, !dbg !22508
  %i.l = tail call i16 @llvm.vector.reduce.xor.v8i16(<8 x i16> %bin.rdx), !dbg !22508 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22508
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !22508

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !22504
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !22509
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !22504 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !22505
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !22506
  %i.p = xor <4 x i16> %wide.load8, %vec.phi7, !dbg !22507 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !22504 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !22508
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !22508, !llvm.loop !22494

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.xor.v4i16(<4 x i16> %i.p), !dbg !22508 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !22508
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !22508

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !22508

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22504 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22509
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22505
  %.val.i = load i16, ptr %i.s, align 2, !dbg !22506, !noundef !1221
  %i.t = xor i16 %.val.i, %.sroa.02.0.i, !dbg !22507 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !22510 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !22508
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !22508, !llvm.loop !22497

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !22509
  ret i16 %.sroa.0.0.i, !dbg !22511
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldsNCINvNtB7_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB38_13BitwiseKernel9reduce_or0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22512 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22548
  %i.a = icmp eq ptr %0, %1, !dbg !22549
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %iter.check, !dbg !22550

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22551
  %i.c = ptrtoint ptr %0 to i64, !dbg !22551
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22551      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !22551      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !22552
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !22552

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !22552
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !22552

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %2, i64 0
  br label %vector.body, !dbg !22552

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22553 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !22554 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !22555
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !22555
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !22555
  %i.i = or <8 x i16> %wide.load, %vec.phi, !dbg !22556 ; 2 uses
  %i.j = or <8 x i16> %wide.load4, %vec.phi3, !dbg !22556 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !22553 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !22557
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !22557, !llvm.loop !22542

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i16> %i.j, %i.i, !dbg !22557
  %i.l = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx), !dbg !22557 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22557
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !22557

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !22553
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !22558
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !22553 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !22554
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !22555
  %i.p = or <4 x i16> %wide.load8, %vec.phi7, !dbg !22556 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !22553 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !22557
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !22557, !llvm.loop !22543

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.p), !dbg !22557 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !22557
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !22557

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !22557

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22553 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22558
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22554
  %.val.i = load i16, ptr %i.s, align 2, !dbg !22555, !noundef !1221
  %i.t = or i16 %.val.i, %.sroa.02.0.i, !dbg !22556 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !22559 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !22557
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !22557, !llvm.loop !22546

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldsNCINvNtNtBY_8adapters6copied9copy_foldssNCINvNtB1K_3map8map_foldsssINvNtBb_7convert8identitysENCNvXs0_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraysENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !22558
  ret i16 %.sroa.0.0.i, !dbg !22560
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i16, i16 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldTttENCINvNtB7_3map8map_foldtB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2N_21min_max_propagate_nantEE0B3U_E0EB2R_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22561 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22599
  %i.a = icmp eq ptr %0, %1, !dbg !22600
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_21min_max_propagate_nantEE0B46_E0E0EB33_.exit, label %iter.check, !dbg !22601

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22602
  %i.c = ptrtoint ptr %0 to i64, !dbg !22602
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22602      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !22602      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !22603
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !22603

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !22603
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !22603

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat4 = shufflevector <8 x i16> %broadcast.splatinsert3, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !22603

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22604 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi5 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi6 = phi <8 x i16> [ %broadcast.splat4, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <8 x i16> [ %broadcast.splat4, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !22605 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !22606
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !22606 ; 2 uses
  %wide.load8 = load <8 x i16>, ptr %i.g, align 2, !dbg !22606 ; 2 uses
  %i.h = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi6, <8 x i16> %wide.load), !dbg !22607 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi7, <8 x i16> %wide.load8), !dbg !22607 ; 2 uses
  %i.j = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !22608 ; 2 uses
  %i.k = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi5, <8 x i16> %wide.load8), !dbg !22608 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !22604 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !22609
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !22609, !llvm.loop !22594

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.j, <8 x i16> %i.k), !dbg !22609
  %i.m = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax), !dbg !22609 ; 3 uses
  %rdx.minmax9 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !22609
  %i.n = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax9), !dbg !22609 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22609
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_21min_max_propagate_nantEE0B46_E0E0EB33_.exit, label %vec.epilog.iter.check, !dbg !22609

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.o = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !22604
  %bc.merge.rdx = phi i16 [ %i.m, %vec.epilog.iter.check ], [ %3, %vector.main.loop.iter.check ], !dbg !22610
  %bc.merge.rdx10 = phi i16 [ %i.n, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !22610
  %n.vec11 = and i64 %i.e, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert12 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat13 = shufflevector <4 x i16> %broadcast.splatinsert12, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x i16> poison, i16 %bc.merge.rdx10, i64 0
  %broadcast.splat15 = shufflevector <4 x i16> %broadcast.splatinsert14, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !22604 ; 2 uses
  %vec.phi17 = phi <4 x i16> [ %broadcast.splat13, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %vec.phi18 = phi <4 x i16> [ %broadcast.splat15, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index16, !dbg !22605
  %wide.load19 = load <4 x i16>, ptr %i.p, align 2, !dbg !22606 ; 2 uses
  %i.q = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi18, <4 x i16> %wide.load19), !dbg !22607 ; 2 uses
  %i.r = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi17, <4 x i16> %wide.load19), !dbg !22608 ; 2 uses
  %index.next20 = add nuw i64 %index16, 4, !dbg !22604 ; 2 uses
  %i.s = icmp eq i64 %index.next20, %n.vec11, !dbg !22609
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !22609, !llvm.loop !22595

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.r), !dbg !22609 ; 2 uses
  %i.u = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.q), !dbg !22609 ; 2 uses
  %cmp.n21 = icmp eq i64 %i.e, %n.vec11, !dbg !22609
  br i1 %cmp.n21, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_21min_max_propagate_nantEE0B46_E0E0EB33_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !22609

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.6.0.i.ph = phi i16 [ %3, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !22609

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.w, %vec.epilog.scalar.ph ], [ %.sroa.05.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22604 ; 2 uses
  %.sroa.6.0.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.6.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22610
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22610
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !22605
  %.val.i = load i16, ptr %i.v, align 2, !dbg !22606, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i16 @llvm.umin.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !22607 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i16 @llvm.umax.i16(i16 %.sroa.6.0.i, i16 %.val.i), !dbg !22608 ; 2 uses
  %i.w = add nuw i64 %.sroa.05.0.i, 1, !dbg !22611 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.e, !dbg !22609
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_21min_max_propagate_nantEE0B46_E0E0EB33_.exit, label %vec.epilog.scalar.ph, !dbg !22609, !llvm.loop !22598

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_21min_max_propagate_nantEE0B46_E0E0EB33_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.pn21.i = phi i16 [ %2, %bb.a ], [ %i.u, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn19.i = phi i16 [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn.i = insertvalue { i16, i16 } poison, i16 %.pn21.i, 0, !dbg !22610
  %.merged.i = insertvalue { i16, i16 } %.pn.i, i16 %.pn19.i, 1, !dbg !22610
  ret { i16, i16 } %.merged.i, !dbg !22612
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB38_13BitwiseKernel10reduce_and0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22613 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22649
  %i.a = icmp eq ptr %0, %1, !dbg !22650
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %iter.check, !dbg !22651

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22652
  %i.c = ptrtoint ptr %0 to i64, !dbg !22652
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22652      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !22652      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !22653
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !22653

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !22653
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !22653

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>, i16 %2, i64 0
  br label %vector.body, !dbg !22653

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22654 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ splat (i16 -1), %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !22655 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !22656
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !22656
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !22656
  %i.i = and <8 x i16> %wide.load, %vec.phi, !dbg !22657 ; 2 uses
  %i.j = and <8 x i16> %wide.load4, %vec.phi3, !dbg !22657 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !22654 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !22658
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !22658, !llvm.loop !22643

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <8 x i16> %i.j, %i.i, !dbg !22658
  %i.l = tail call i16 @llvm.vector.reduce.and.v8i16(<8 x i16> %bin.rdx), !dbg !22658 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22658
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !22658

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !22654
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !22659
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 -1, i16 -1, i16 -1>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !22654 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !22655
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !22656
  %i.p = and <4 x i16> %wide.load8, %vec.phi7, !dbg !22657 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !22654 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !22658
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !22658, !llvm.loop !22644

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.p), !dbg !22658 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !22658
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !22658

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !22658

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22654 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22659
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22655
  %.val.i = load i16, ptr %i.s, align 2, !dbg !22656, !noundef !1221
  %i.t = and i16 %.val.i, %.sroa.02.0.i, !dbg !22657 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !22660 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !22658
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !22658, !llvm.loop !22647

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !22659
  ret i16 %.sroa.0.0.i, !dbg !22661
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB38_13BitwiseKernel10reduce_xor0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22662 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22698
  %i.a = icmp eq ptr %0, %1, !dbg !22699
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %iter.check, !dbg !22700

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22701
  %i.c = ptrtoint ptr %0 to i64, !dbg !22701
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22701      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !22701      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !22702
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !22702

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !22702
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !22702

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %2, i64 0
  br label %vector.body, !dbg !22702

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22703 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !22704 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !22705
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !22705
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !22705
  %i.i = xor <8 x i16> %wide.load, %vec.phi, !dbg !22706 ; 2 uses
  %i.j = xor <8 x i16> %wide.load4, %vec.phi3, !dbg !22706 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !22703 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !22707
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !22707, !llvm.loop !22692

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <8 x i16> %i.j, %i.i, !dbg !22707
  %i.l = tail call i16 @llvm.vector.reduce.xor.v8i16(<8 x i16> %bin.rdx), !dbg !22707 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22707
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !22707

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !22703
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !22708
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !22703 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !22704
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !22705
  %i.p = xor <4 x i16> %wide.load8, %vec.phi7, !dbg !22706 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !22703 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !22707
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !22707, !llvm.loop !22693

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.xor.v4i16(<4 x i16> %i.p), !dbg !22707 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !22707
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !22707

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !22707

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22703 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22708
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22704
  %.val.i = load i16, ptr %i.s, align 2, !dbg !22705, !noundef !1221
  %i.t = xor i16 %.val.i, %.sroa.02.0.i, !dbg !22706 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !22709 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !22707
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !22707, !llvm.loop !22696

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !22708
  ret i16 %.sroa.0.0.i, !dbg !22710
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i16 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldtNCINvNtB7_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB38_13BitwiseKernel9reduce_or0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22711 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22747
  %i.a = icmp eq ptr %0, %1, !dbg !22748
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %iter.check, !dbg !22749

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22750
  %i.c = ptrtoint ptr %0 to i64, !dbg !22750
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22750      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !22750      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !22751
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !22751

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !22751
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !22751

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %i.f = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %2, i64 0
  br label %vector.body, !dbg !22751

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22752 ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi3 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !22753 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !22754
  %wide.load = load <8 x i16>, ptr %i.g, align 2, !dbg !22754
  %wide.load4 = load <8 x i16>, ptr %i.h, align 2, !dbg !22754
  %i.i = or <8 x i16> %wide.load, %vec.phi, !dbg !22755 ; 2 uses
  %i.j = or <8 x i16> %wide.load4, %vec.phi3, !dbg !22755 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !22752 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !22756
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !22756, !llvm.loop !22741

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i16> %i.j, %i.i, !dbg !22756
  %i.l = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx), !dbg !22756 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22756
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.iter.check, !dbg !22756

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.m = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !22752
  %bc.merge.rdx = phi i16 [ %i.l, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ], !dbg !22757
  %n.vec5 = and i64 %i.e, 9223372036854775804     ; 3 uses
  %i.n = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !22752 ; 2 uses
  %vec.phi7 = phi <4 x i16> [ %i.n, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index6, !dbg !22753
  %wide.load8 = load <4 x i16>, ptr %i.o, align 2, !dbg !22754
  %i.p = or <4 x i16> %wide.load8, %vec.phi7, !dbg !22755 ; 2 uses
  %index.next9 = add nuw i64 %index6, 4, !dbg !22752 ; 2 uses
  %i.q = icmp eq i64 %index.next9, %n.vec5, !dbg !22756
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !22756, !llvm.loop !22742

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.r = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.p), !dbg !22756 ; 2 uses
  %cmp.n10 = icmp eq i64 %i.e, %n.vec5, !dbg !22756
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.scalar.ph.preheader, !dbg !22756

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.r, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !22756

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.u, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22752 ; 2 uses
  %.sroa.02.0.i = phi i16 [ %i.t, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !22757
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22753
  %.val.i = load i16, ptr %i.s, align 2, !dbg !22754, !noundef !1221
  %i.t = or i16 %.val.i, %.sroa.02.0.i, !dbg !22755 ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1, !dbg !22758 ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !22756
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit, label %vec.epilog.scalar.ph, !dbg !22756, !llvm.loop !22745

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtBY_8adapters6copied9copy_foldttNCINvNtB1K_3map8map_foldtttINvNtBb_7convert8identitytENCNvXs4_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraytENtB3h_13BitwiseKernel9reduce_or0E0E0EB3j_.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.sroa.0.0.i = phi i16 [ %2, %bb.a ], [ %i.r, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.t, %vec.epilog.scalar.ph ], !dbg !22757
  ret i16 %.sroa.0.0.i, !dbg !22759
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, i64 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4foldTxxENCINvNtB7_3map8map_foldxB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2N_21min_max_propagate_nanxEE0B3U_E0EB2R_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22760 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22796
  %i.a = icmp eq ptr %0, %1, !dbg !22797
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit, label %bb.b, !dbg !22798

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22799
  %i.c = ptrtoint ptr %0 to i64, !dbg !22799
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22799      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !22799      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !22800        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !22800
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !22800

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !22800
  br label %bb.c, !dbg !22800

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.05.0.i = phi i64 [ 0, %.new ], [ %i.n, %bb.c ], !dbg !22801 ; 5 uses
  %.sroa.6.0.i = phi i64 [ %3, %.new ], [ %.sroa.0.0.i.i.i.i.i.i.3, %bb.c ], !dbg !22802
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %.sroa.0.0.i1.i.i.i.i.i.3, %bb.c ], !dbg !22802
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !22803
  %.val.i = load i64, ptr %i.g, align 8, !dbg !22804, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.02.0.i, i64 %.val.i), !dbg !22805
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %.sroa.6.0.i, i64 %.val.i), !dbg !22806
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !22803
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !22803
  %.val.i.1 = load i64, ptr %i.i, align 8, !dbg !22804, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i.1 = tail call i64 @llvm.smin.i64(i64 %.sroa.0.0.i1.i.i.i.i.i, i64 %.val.i.1), !dbg !22805
  %.sroa.0.0.i.i.i.i.i.i.1 = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 %.val.i.1), !dbg !22806
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !22803
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !22803
  %.val.i.2 = load i64, ptr %i.k, align 8, !dbg !22804, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i.2 = tail call i64 @llvm.smin.i64(i64 %.sroa.0.0.i1.i.i.i.i.i.1, i64 %.val.i.2), !dbg !22805
  %.sroa.0.0.i.i.i.i.i.i.2 = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.1, i64 %.val.i.2), !dbg !22806
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !22803
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !22803
  %.val.i.3 = load i64, ptr %i.m, align 8, !dbg !22804, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i.3 = tail call i64 @llvm.smin.i64(i64 %.sroa.0.0.i1.i.i.i.i.i.2, i64 %.val.i.3), !dbg !22805 ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.3 = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.2, i64 %.val.i.3), !dbg !22806 ; 3 uses
  %i.n = add nuw i64 %.sroa.05.0.i, 4, !dbg !22807 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !22808  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !22808
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !22808

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !22808
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit, label %.epil.preheader, !dbg !22808

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.05.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa ]
  %.sroa.6.0.i.epil.init = phi i64 [ %3, %bb.b ], [ %.sroa.0.0.i.i.i.i.i.i.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i1.i.i.i.i.i.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0, !dbg !22808
  tail call void @llvm.assume(i1 %lcmp.mod4), !dbg !22808
  br label %bb.d, !dbg !22808

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.05.0.i.epil = phi i64 [ %.sroa.05.0.i.epil.init, %.epil.preheader ], [ %i.p, %bb.d ], !dbg !22801 ; 2 uses
  %.sroa.6.0.i.epil = phi i64 [ %.sroa.6.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.i.i.epil, %bb.d ], !dbg !22802
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i1.i.i.i.i.i.epil, %bb.d ], !dbg !22802
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i.epil, !dbg !22803
  %.val.i.epil = load i64, ptr %i.o, align 8, !dbg !22804, !noundef !1221 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i.epil = tail call i64 @llvm.smin.i64(i64 %.sroa.02.0.i.epil, i64 %.val.i.epil), !dbg !22805 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.epil = tail call i64 @llvm.smax.i64(i64 %.sroa.6.0.i.epil, i64 %.val.i.epil), !dbg !22806 ; 2 uses
  %i.p = add nuw i64 %.sroa.05.0.i.epil, 1, !dbg !22807
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !22808 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !22808
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit, label %bb.d, !dbg !22808, !llvm.loop !22795

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.pn20.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i1.i.i.i.i.i.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i1.i.i.i.i.i.epil, %bb.d ]
  %.pn18.i = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i.i.i.i.i.i.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_21min_max_propagate_nanxEE0B46_E0E0EB33_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.i.i.epil, %bb.d ]
  %.pn.i = insertvalue { i64, i64 } poison, i64 %.pn20.i, 0, !dbg !22802
  %.merged.i = insertvalue { i64, i64 } %.pn.i, i64 %.pn18.i, 1, !dbg !22802
  ret { i64, i64 } %.merged.i, !dbg !22809
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4foldxNCINvNtB7_3map8map_foldxxxINvNtBb_7convert8identityxENCNvXs2_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB38_13BitwiseKernel10reduce_and0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22810 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22845
  %i.a = icmp eq ptr %0, %1, !dbg !22846
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtBY_8adapters6copied9copy_foldxxNCINvNtB1K_3map8map_foldxxxINvNtBb_7convert8identityxENCNvXs2_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %bb.b, !dbg !22847

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22848
  %i.c = ptrtoint ptr %0 to i64, !dbg !22848
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22848      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !22848      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !22849
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !22849

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %i.f = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %2, i64 0
  br label %vector.body, !dbg !22849

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !22850 ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.f, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi2 = phi <2 x i64> [ splat (i64 -1), %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !22851 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !22852
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !dbg !22852
  %wide.load3 = load <2 x i64>, ptr %i.h, align 8, !dbg !22852
  %i.i = and <2 x i64> %wide.load, %vec.phi, !dbg !22853 ; 2 uses
  %i.j = and <2 x i64> %wide.load3, %vec.phi2, !dbg !22853 ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !22850 ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec, !dbg !22854
  br i1 %i.k, label %middle.block, label %vector.body, !dbg !22854, !llvm.loop !22840

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <2 x i64> %i.j, %i.i, !dbg !22854
  %i.l = tail call i64 @llvm.vector.reduce.and.v2i64(<2 x i64> %bin.rdx), !dbg !22854 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !22854
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtBY_8adapters6copied9copy_foldxxNCINvNtB1K_3map8map_foldxxxINvNtBb_7convert8identityxENCNvXs2_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %scalar.ph.preheader, !dbg !22854

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ %2, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph, !dbg !22854

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i = phi i64 [ %i.o, %scalar.ph ], [ %.sroa.04.0.i.ph, %scalar.ph.preheader ], !dbg !22850 ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !22855
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.04.0.i, !dbg !22851
  %.val.i = load i64, ptr %i.m, align 8, !dbg !22852, !noundef !1221
  %i.n = and i64 %.val.i, %.sroa.02.0.i, !dbg !22853 ; 2 uses
  %i.o = add nuw i64 %.sroa.04.0.i, 1, !dbg !22856 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !22854
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtBY_8adapters6copied9copy_foldxxNCINvNtB1K_3map8map_foldxxxINvNtBb_7convert8identityxENCNvXs2_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit, label %scalar.ph, !dbg !22854, !llvm.loop !22843

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtBY_8adapters6copied9copy_foldxxNCINvNtB1K_3map8map_foldxxxINvNtBb_7convert8identityxENCNvXs2_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB3h_13BitwiseKernel10reduce_and0E0E0EB3j_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %i.l, %middle.block ], [ %i.n, %scalar.ph ], !dbg !22855
  ret i64 %.sroa.0.0.i, !dbg !22857
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4foldxNCINvNtB7_3map8map_foldxxxINvNtBb_7convert8identityxENCNvXs2_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB38_13BitwiseKernel10reduce_xor0E0EB3a_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !22858 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !22893
  %i.a = icmp eq ptr %0, %1, !dbg !22894
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldxNCINvNtNtBY_8adapters6copied9copy_foldxxNCINvNtB1K_3map8map_foldxxxINvNtBb_7convert8identityxENCNvXs2_NtCslFlrwjHoTci_14polars_compute7bitwiseINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB3h_13BitwiseKernel10reduce_xor0E0E0EB3j_.exit, label %bb.b, !dbg !22895

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !22896
  %i.c = ptrtoint ptr %0 to i64, !dbg !22896
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22896      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !22896      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !22897
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !22897

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 2305843009213693948      ; 3 uses
  %i.f = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0
end_hunk_5
