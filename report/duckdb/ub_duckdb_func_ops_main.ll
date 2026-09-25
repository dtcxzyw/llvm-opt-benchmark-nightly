Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_ops_main?download=true
inline.NumInlined: 21423
inline.NumDeleted: 1880
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 369
loop-unroll.NumUnrolled: 513
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.ej, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.ej ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %.pn11.i.i.i.i.i, %bb.v ], [ %i.kg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i ], [ %.pn11.i.i.i72.i.i, %bb.at ], [ %i.px, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i ], [ %.pn11.i.i.i120.i.i, %bb.bw ], [ %i.px, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.w:                                             ; preds = %bb.t
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.196.i.i.i.i
  %i.fg = load <2 x i64>, ptr %11, align 16, !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !517
  store <2 x i64> %i.fg, ptr %i.ff, align 8, !alias.scope !516, !noalias !520
  %i.fh = add i64 %.196.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fh, %i.ce
  br i1 %exitcond.not.i.i.i.i, label %.loopexit89.i.i.i.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !484

.lr.ph98.i.i.i.i:                                 ; preds = %.preheader88.i.i.i.i, %bb.ab
  %.297.i.i.i.i = phi i64 [ %i.ge, %bb.ab ], [ %.0101.i.i.i.i, %.preheader88.i.i.i.i ] ; 6 uses
  %i.fi = sub nuw i64 %.297.i.i.i.i, %.0101.i.i.i.i
  %i.fj = shl nuw i64 1, %i.fi
  %i.fk = and i64 %i.fj, %i.cb
  %.not.i.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.lr.ph98.i.i.i.i
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.297.i.i.i.i ; 2 uses
  %.sroa.013.0.copyload.i.i.i.i = load i64, ptr %i.fl, align 8, !alias.scope !514, !noalias !519 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.sroa.414.0.copyload.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !514, !noalias !519 ; 2 uses
  %i.fm = load double, ptr %i.ar, align 8, !tbaa !185, !alias.scope !515, !noalias !518 ; 2 uses
  %i.fn = fcmp oeq double %i.fm, 0.000000e+00
  br i1 %i.fn, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fo = load ptr, ptr %i.ay, align 8, !tbaa !113, !noalias !517 ; 2 uses
  %.not.i.i73.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i73.i.i.i.i, label %bb.z, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fp = load i64, ptr %i.bw, align 8, !tbaa !114, !noalias !517
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.fp), !noalias !517
  %.pre.i.i75.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !113, !noalias !517
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i: ; preds = %bb.z, %bb.y
  %i.fq = phi ptr [ %.pre.i.i75.i.i.i.i, %bb.z ], [ %i.fo, %bb.y ]
  %i.fr = lshr i64 %.297.i.i.i.i, 6
  %i.fs = and i64 %.297.i.i.i.i, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = xor i64 %i.ft, -1
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fr ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !44, !noalias !517
  %i.fx = and i64 %i.fw, %i.fu
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !44, !noalias !517
  %i.fy = insertvalue { i64, i64 } poison, i64 %.sroa.013.0.copyload.i.i.i.i, 0
  %i.fz = insertvalue { i64, i64 } %i.fy, i64 %.sroa.414.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  %i.ga = call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.013.0.copyload.i.i.i.i, i64 %.sroa.414.0.copyload.i.i.i.i, double noundef %i.fm), !noalias !517
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i: ; preds = %bb.aa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i
  %.fca.1.insert.merged.i72.i.i.i.i = phi { i64, i64 } [ %i.fz, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i ], [ %i.ga, %bb.aa ] ; 2 uses
  %i.gb = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i.i.i, 0
  %i.gc = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i.i.i, 1
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.297.i.i.i.i ; 2 uses
  store i64 %i.gb, ptr %i.gd, align 8, !alias.scope !516, !noalias !520
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.gc, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !516, !noalias !520
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i, %.lr.ph98.i.i.i.i
  %i.ge = add i64 %.297.i.i.i.i, 1                ; 2 uses
  %exitcond115.not.i.i.i.i = icmp eq i64 %i.ge, %i.cd
  br i1 %exitcond115.not.i.i.i.i, label %.loopexit89.i.i.i.i, label %.lr.ph98.i.i.i.i, !llvm.loop !485

.loopexit89.i.i.i.i:                              ; preds = %bb.ab, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i, %.preheader88.i.i.i.i, %.preheader90.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.cd, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.ce, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i ], [ %.0101.i.i.i.i, %.preheader88.i.i.i.i ], [ %.0101.i.i.i.i, %.preheader90.i.i.i.i ], [ %i.ce, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i ], [ %i.cd, %bb.ab ]
  %i.gf = add nuw nsw i64 %.069100.i.i.i.i, 1     ; 2 uses
  %exitcond116.not.i.i.i.i = icmp eq i64 %i.gf, %i.bt
  br i1 %exitcond116.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.l, !llvm.loop !486

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i: ; preds = %.lr.ph104.i.i.i.i, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i
  %.070103.i.i.i.i = phi i64 [ %i.gl, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i ], [ 0, %.lr.ph104.i.i.i.i ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.070103.i.i.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.gg, align 8, !alias.scope !514, !noalias !519
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.43.0.copyload.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !514, !noalias !519
  %i.gh = tail call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.i.i.i.i, i64 %.sroa.43.0.copyload.i.i.i.i, double noundef %i.bb), !noalias !517 ; 2 uses
  %i.gi = extractvalue { i64, i64 } %i.gh, 0
  %i.gj = extractvalue { i64, i64 } %i.gh, 1
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.070103.i.i.i.i ; 2 uses
  store i64 %i.gi, ptr %i.gk, align 8, !alias.scope !516, !noalias !520
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 %i.gj, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !516, !noalias !520
  %i.gl = add nuw i64 %.070103.i.i.i.i, 1         ; 2 uses
  %exitcond117.not.i.i.i.i = icmp eq i64 %i.gl, %i.g
  br i1 %exitcond117.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i, !llvm.loop !487

bb.ac:                                            ; preds = %bb.g
  %i.gm = icmp eq i8 %i.i, 0
  %or.cond5.i.i = and i1 %i.j, %i.gm
  br i1 %or.cond5.i.i, label %bb.ad, label %bb.be

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !112 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !112 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.ad
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !44
  %i.gu = trunc i64 %i.gt to i1
  br i1 %i.gu, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.ad
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !112 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %i.gy, i64 noundef %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !113, !noalias !524
  %.not.i.i18.i46.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i18.i46.i.i, label %.preheader.i.i96.i.i, label %bb.af

.preheader.i.i96.i.i:                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %.not106.i.i97.i.i = icmp eq i64 %i.g, 0
  br i1 %.not106.i.i97.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph104.i.i98.i.i

.lr.ph104.i.i98.i.i:                              ; preds = %.preheader.i.i96.i.i
  %.sroa.02.0.copyload.i.i99.i.i = load i64, ptr %i.go, align 8, !alias.scope !521, !noalias !525 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i100.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.sroa.43.0.copyload.i.i101.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i100.i.i, align 8, !tbaa !44, !alias.scope !521, !noalias !525 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hb = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.copyload.i.i99.i.i, 0
  %i.hc = insertvalue { i64, i64 } %i.hb, i64 %.sroa.43.0.copyload.i.i101.i.i, 1
  br label %bb.ba

bb.af:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.hd = add i64 %i.g, 63
  %i.he = lshr i64 %i.hd, 6                       ; 2 uses
  %.not105.i.i47.i.i = icmp eq i64 %i.he, 0
  br i1 %.not105.i.i47.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph102.i.i48.i.i

.lr.ph102.i.i48.i.i:                              ; preds = %bb.af
  %.sroa.422.0..sroa_idx.i.i49.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit89.i.i54.i.i, %.lr.ph102.i.i48.i.i
  %.0101.i.i50.i.i = phi i64 [ 0, %.lr.ph102.i.i48.i.i ], [ %.4.i.i55.i.i, %.loopexit89.i.i54.i.i ] ; 9 uses
  %.069100.i.i51.i.i = phi i64 [ 0, %.lr.ph102.i.i48.i.i ], [ %i.ll, %.loopexit89.i.i54.i.i ] ; 2 uses
  %i.hi = load ptr, ptr %i.gx, align 8, !tbaa !113, !noalias !524 ; 2 uses
  %.not.i71.i.i52.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i71.i.i52.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i: ; preds = %bb.ag
  %i.hj = add i64 %.0101.i.i50.i.i, 64
  %i.hk = call noundef i64 @llvm.umin.i64(i64 %i.hj, i64 %i.g)
  br label %.preheader90.i.i56.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i: ; preds = %bb.ag
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %.069100.i.i51.i.i
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !44, !noalias !524 ; 2 uses
  %i.hn = add i64 %.0101.i.i50.i.i, 64
  %i.ho = call noundef i64 @llvm.umin.i64(i64 %i.hn, i64 %i.g) ; 5 uses
  switch i64 %i.hm, label %.preheader88.i.i83.i.i [
    i64 -1, label %.preheader90.i.i56.i.i
    i64 0, label %.loopexit89.i.i54.i.i
  ]

.preheader90.i.i56.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i
  %i.hp = phi i64 [ %i.hk, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i ], [ %i.ho, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i ] ; 3 uses
  %i.hq = icmp ult i64 %.0101.i.i50.i.i, %i.hp
  br i1 %i.hq, label %.lr.ph.i.i57.i.i, label %.loopexit89.i.i54.i.i

.lr.ph.i.i57.i.i:                                 ; preds = %.preheader90.i.i56.i.i
  %i.hr = load <2 x i64>, ptr %i.go, align 8, !alias.scope !521, !noalias !525 ; 4 uses
  %14 = trunc <2 x i64> %i.hr to <2 x i32>
  %15 = bitcast <2 x i64> %i.hr to <4 x i32>
  %16 = extractelement <4 x i32> %15, i64 1
  %17 = insertelement <2 x i32> %14, i32 %16, i64 1
  %i.hs = sitofp <2 x i32> %17 to <2 x double>    ; 3 uses
  %i.ht = extractelement <2 x i64> %i.hr, i64 1
  %i.hu = extractelement <2 x double> %i.hs, i64 0
  %i.hv = extractelement <2 x double> %i.hs, i64 1
  br label %bb.ah

.preheader88.i.i83.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i
  %i.hw = icmp ult i64 %.0101.i.i50.i.i, %i.ho
  br i1 %i.hw, label %.lr.ph98.i.i84.i.i, label %.loopexit89.i.i54.i.i

bb.ah:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %.lr.ph.i.i57.i.i
  %.196.i.i63.i.i = phi i64 [ %.0101.i.i50.i.i, %.lr.ph.i.i57.i.i ], [ %i.kn, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ] ; 5 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %.196.i.i63.i.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !185, !alias.scope !522, !noalias !526 ; 2 uses
  %i.hz = fcmp oeq double %i.hy, 0.000000e+00
  br i1 %i.hz, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ia = load ptr, ptr %i.gx, align 8, !tbaa !113, !noalias !524 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ib = load i64, ptr %i.hh, align 8, !tbaa !114, !noalias !524
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i64 noundef %i.ib), !noalias !524
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.gx, align 8, !tbaa !113, !noalias !524
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %i.ic = phi ptr [ %.pre.i.i.i.i.i.i, %bb.aj ], [ %i.ia, %bb.ai ]
  %i.id = lshr i64 %.196.i.i63.i.i, 6
  %i.ie = and i64 %.196.i.i63.i.i, 63
  %i.if = shl nuw i64 1, %i.ie
  %i.ig = xor i64 %i.if, -1
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.id ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !44, !noalias !524
  %i.ij = and i64 %i.ii, %i.ig
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !44, !noalias !524
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !524
  %i.ik = fdiv double 1.000000e+00, %i.hy         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !524
  %i.il = fmul double %i.ik, %i.hu                ; 4 uses
  %i.im = fcmp uno double %i.il, 0.000000e+00
  %i.in = fcmp olt double %i.il, f0xC1E0000000000000
  %or.cond.i.i.i64.i.i = or i1 %i.im, %i.in
  %i.io = fcmp ogt double %i.il, f0x41DFFFFFFFC00000
  %or.cond21.i.i.i65.i.i = or i1 %i.io, %or.cond.i.i.i64.i.i
  br i1 %or.cond21.i.i.i65.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ip = fptosi double %i.il to i32              ; 2 uses
  store i32 %i.ip, ptr %8, align 16, !tbaa !183, !noalias !524
  %i.iq = fmul double %i.ik, %i.hv                ; 5 uses
  store double %i.iq, ptr %i.b, align 8, !tbaa !185, !noalias !524
  %i.ir = fcmp uno double %i.iq, 0.000000e+00
  %i.is = fcmp olt double %i.iq, f0xC1E0000000000000
  %or.cond22.i.i.i66.i.i = or i1 %i.ir, %i.is
  %i.it = fcmp ogt double %i.iq, f0x41DFFFFFFFC00000
  %or.cond23.i.i.i67.i.i = or i1 %i.it, %or.cond22.i.i.i66.i.i
  br i1 %or.cond23.i.i.i67.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iu = fptosi double %i.iq to i32              ; 3 uses
  %18 = insertelement <2 x i32> poison, i32 %i.ip, i64 0
  %19 = insertelement <2 x i32> %18, i32 %i.iu, i64 1
  %20 = sitofp <2 x i32> %19 to <2 x double>
  %i.iv = fneg <2 x double> %20
  %i.iw = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.ix, <2 x double> %i.iv) ; 2 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 0
  %i.ja = fmul double %i.iz, 3.000000e+01
  %i.jb = fmul double %i.ja, 1.000000e+06
  %i.jc = call double @llvm.nearbyint.f64(double %i.jb)
  %i.jd = fdiv double %i.jc, 1.000000e+06         ; 2 uses
  %i.je = fptosi double %i.jd to i32              ; 2 uses
  %i.jf = extractelement <2 x double> %i.iy, i64 1
  %i.jg = fadd double %i.jf, %i.jd
  %i.jh = sitofp i32 %i.je to double
  %i.ji = fsub double %i.jg, %i.jh
  %i.jj = fmul double %i.ji, 8.640000e+04
  %i.jk = fmul double %i.jj, 1.000000e+06
  %i.jl = call double @llvm.nearbyint.f64(double %i.jk)
  %i.jm = fdiv double %i.jl, 1.000000e+06         ; 4 uses
  %i.jn = call double @llvm.fabs.f64(double %i.jm)
  %i.jo = fcmp ult double %i.jn, 8.640000e+04
  br i1 %i.jo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jp = fdiv double %i.jm, 8.640000e+04
  %i.jq = fptosi double %i.jp to i32              ; 2 uses
  %i.jr = add nsw i32 %i.jq, %i.iu
  %i.js = mul nsw i32 %i.jq, 86400
  %i.jt = sitofp i32 %i.js to double
  %i.ju = fsub nnan double %i.jm, %i.jt
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.jv = phi i32 [ %i.iu, %bb.am ], [ %i.jr, %bb.an ]
  %.020.i.i.i68.i.i = phi double [ %i.jm, %bb.am ], [ %i.ju, %bb.an ]
  %i.jw = add nsw i32 %i.jv, %i.je
  store i32 %i.jw, ptr %i.hf, align 4, !tbaa !186, !noalias !524
  %i.jx = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %i.ht, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false), !noalias !524
  br i1 %i.jx, label %bb.ap, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.jy = load double, ptr %i.b, align 8, !tbaa !185, !noalias !524
  %i.jz = fmul double %.020.i.i.i68.i.i, 1.000000e+06
  %i.ka = call double @llvm.fmuladd.f64(double %i.jy, double %i.ik, double %i.jz)
  %i.kb = call double @llvm.nearbyint.f64(double %i.ka) ; 3 uses
  store double %i.kb, ptr %i.b, align 8, !tbaa !185, !noalias !524
  %i.kc = fcmp uno double %i.kb, 0.000000e+00
  br i1 %i.kc, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i: ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !524
  br label %.loopexit92.i.i70.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i: ; preds = %bb.ap
  %i.kd = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.kb, ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i1 noundef zeroext false), !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !524
  br i1 %i.kd, label %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i, label %.loopexit92.i.i70.i.i

.loopexit92.i.i70.i.i:                            ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i
  %i.ke = call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !524 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !524
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !524
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i, !noalias !524

bb.aq:                                            ; preds = %.loopexit92.i.i70.i.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ke, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ar unwind label %bb.as, !noalias !524

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.ke, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.au unwind label %bb.as, !noalias !524

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i: ; preds = %.loopexit92.i.i70.i.i
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !524
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i82.i.i74.i.i = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.kg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kh = load ptr, ptr %9, align 8, !tbaa !38, !noalias !524 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.kh) #27, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !524
  br i1 %.0.i82.i.i74.i.i, label %bb.at, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !524
  br i1 %.0.i82.i.i74.i.i, label %bb.at, label %common.resume.i.i

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i
  %.pn11.i.i.i72.i.i = phi { ptr, i32 } [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i ], [ %i.kg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i ], [ %i.kg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i ]
  call void @__cxa_free_exception(ptr %i.ke) #25, !noalias !524
  br label %common.resume.i.i

bb.au:                                            ; preds = %bb.ar
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i
  %i.kk = load <2 x i64>, ptr %8, align 16, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !524
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i
  %i.kl = phi <2 x i64> [ %i.hr, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i ], [ %i.kk, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i ]
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %.196.i.i63.i.i
  store <2 x i64> %i.kl, ptr %i.km, align 8, !alias.scope !523, !noalias !527
  %i.kn = add i64 %.196.i.i63.i.i, 1              ; 2 uses
  %exitcond.not.i.i82.i.i = icmp eq i64 %i.kn, %i.hp
  br i1 %exitcond.not.i.i82.i.i, label %.loopexit89.i.i54.i.i, label %bb.ah, !llvm.loop !492

.lr.ph98.i.i84.i.i:                               ; preds = %.preheader88.i.i83.i.i, %bb.az
  %.297.i.i85.i.i = phi i64 [ %i.lk, %bb.az ], [ %.0101.i.i50.i.i, %.preheader88.i.i83.i.i ] ; 6 uses
  %i.ko = sub nuw i64 %.297.i.i85.i.i, %.0101.i.i50.i.i
  %i.kp = shl nuw i64 1, %i.ko
  %i.kq = and i64 %i.kp, %i.hm
  %.not.i.i86.i.i = icmp eq i64 %i.kq, 0
  br i1 %.not.i.i86.i.i, label %bb.az, label %bb.av

bb.av:                                            ; preds = %.lr.ph98.i.i84.i.i
  %.sroa.013.0.copyload.i.i87.i.i = load i64, ptr %i.go, align 8, !alias.scope !521, !noalias !525 ; 2 uses
  %.sroa.414.0.copyload.i.i88.i.i = load i64, ptr %.sroa.422.0..sroa_idx.i.i49.i.i, align 8, !tbaa !44, !alias.scope !521, !noalias !525 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %.297.i.i85.i.i
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !185, !alias.scope !522, !noalias !526 ; 2 uses
  %i.kt = fcmp oeq double %i.ks, 0.000000e+00
  br i1 %i.kt, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ku = load ptr, ptr %i.gx, align 8, !tbaa !113, !noalias !524 ; 2 uses
  %.not.i.i73.i.i92.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i73.i.i92.i.i, label %bb.ax, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.kv = load i64, ptr %i.hh, align 8, !tbaa !114, !noalias !524
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i64 noundef %i.kv), !noalias !524
  %.pre.i.i75.i.i94.i.i = load ptr, ptr %i.gx, align 8, !tbaa !113, !noalias !524
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i: ; preds = %bb.ax, %bb.aw
  %i.kw = phi ptr [ %.pre.i.i75.i.i94.i.i, %bb.ax ], [ %i.ku, %bb.aw ]
  %i.kx = lshr i64 %.297.i.i85.i.i, 6
  %i.ky = and i64 %.297.i.i85.i.i, 63
  %i.kz = shl nuw i64 1, %i.ky
  %i.la = xor i64 %i.kz, -1
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kx ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !44, !noalias !524
  %i.ld = and i64 %i.lc, %i.la
  store i64 %i.ld, ptr %i.lb, align 8, !tbaa !44, !noalias !524
  %i.le = insertvalue { i64, i64 } poison, i64 %.sroa.013.0.copyload.i.i87.i.i, 0
  %i.lf = insertvalue { i64, i64 } %i.le, i64 %.sroa.414.0.copyload.i.i88.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i

bb.ay:                                            ; preds = %bb.av
  %i.lg = call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.013.0.copyload.i.i87.i.i, i64 %.sroa.414.0.copyload.i.i88.i.i, double noundef %i.ks), !noalias !524
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i: ; preds = %bb.ay, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i
  %.fca.1.insert.merged.i72.i.i90.i.i = phi { i64, i64 } [ %i.lf, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i ], [ %i.lg, %bb.ay ] ; 2 uses
  %i.lh = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i90.i.i, 0
  %i.li = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i90.i.i, 1
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %.297.i.i85.i.i ; 2 uses
  store i64 %i.lh, ptr %i.lj, align 8, !alias.scope !523, !noalias !527
  %.sroa.411.0..sroa_idx.i.i91.i.i = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i64 %i.li, ptr %.sroa.411.0..sroa_idx.i.i91.i.i, align 8, !tbaa !44, !alias.scope !523, !noalias !527
  br label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i, %.lr.ph98.i.i84.i.i
  %i.lk = add i64 %.297.i.i85.i.i, 1              ; 2 uses
  %exitcond110.not.i.i.i.i = icmp eq i64 %i.lk, %i.ho
  br i1 %exitcond110.not.i.i.i.i, label %.loopexit89.i.i54.i.i, label %.lr.ph98.i.i84.i.i, !llvm.loop !493

.loopexit89.i.i54.i.i:                            ; preds = %bb.az, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %.preheader88.i.i83.i.i, %.preheader90.i.i56.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i
  %.4.i.i55.i.i = phi i64 [ %i.ho, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i ], [ %i.hp, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.0101.i.i50.i.i, %.preheader88.i.i83.i.i ], [ %.0101.i.i50.i.i, %.preheader90.i.i56.i.i ], [ %i.ho, %bb.az ]
  %i.ll = add nuw nsw i64 %.069100.i.i51.i.i, 1   ; 2 uses
  %exitcond111.not.i.i.i.i = icmp eq i64 %i.ll, %i.he
  br i1 %exitcond111.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.ag, !llvm.loop !494

bb.ba:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i, %.lr.ph104.i.i98.i.i
  %.070103.i.i102.i.i = phi i64 [ 0, %.lr.ph104.i.i98.i.i ], [ %i.md, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i ] ; 5 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %.070103.i.i102.i.i
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !185, !alias.scope !522, !noalias !526 ; 2 uses
  %i.lo = fcmp oeq double %i.ln, 0.000000e+00
  br i1 %i.lo, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.lp = load ptr, ptr %i.gx, align 8, !tbaa !113, !noalias !524 ; 2 uses
  %.not.i.i78.i.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not.i.i78.i.i.i.i, label %bb.bc, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.lq = load i64, ptr %i.ha, align 8, !tbaa !114, !noalias !524
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, i64 noundef %i.lq), !noalias !524
end_hunk_0
begin_hunk_1_@_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_:bb.a

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.ej = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.ej, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.ek = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.en = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.en) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

bb.w:                                             ; preds = %bb.u
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.er = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.er, ptr %i.eq, align 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.es = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.es, %i.q
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3833

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.r, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.q, %bb.x ]
  %i.et = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.et, %i.f
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3834

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.ez, %bb.y ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.070118 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.eu, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
  %i.ev = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.d) ; 2 uses
  %i.ew = extractvalue { i64, i64 } %i.ev, 0
  %i.ex = extractvalue { i64, i64 } %i.ev, 1
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.ew, ptr %i.ey, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.ex, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.ez = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.ez, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3835

.loopexit:                                        ; preds = %.loopexit101, %bb.y, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %6 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %.sroa.02.0.copyload = load i64, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %3, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not120 = icmp eq i64 %i.e, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.b
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph117, %.loopexit101
  %.0116 = phi i64 [ 0, %.lr.ph117 ], [ %.4, %.loopexit101 ] ; 9 uses
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.eo, %.loopexit101 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i71 = icmp eq ptr %i.j, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0116, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.069115
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %i.o = add i64 %.0116, 64
  %i.p = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %3) ; 5 uses
  switch i64 %i.n, label %.preheader100 [
    i64 -1, label %.preheader103
    i64 0, label %.loopexit101
  ]

.preheader103:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.q = phi i64 [ %i.l, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.r = icmp ult i64 %.0116, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit101

.lr.ph:                                           ; preds = %.preheader103
  %.sroa.021.0.copyload147 = load <2 x i32>, ptr %0, align 8
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !44
  %i.s = sitofp <2 x i32> %.sroa.021.0.copyload147 to <2 x double> ; 3 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = extractelement <2 x double> %i.s, i64 1
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.v = icmp ult i64 %.0116, %i.p
  br i1 %i.v, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.bz, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1111
  %i.x = load double, ptr %i.w, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.y = fmul double %i.x, %i.t                   ; 4 uses
  %i.z = fcmp uno double %i.y, 0.000000e+00
  %i.aa = fcmp olt double %i.y, f0xC1E0000000000000
  %or.cond.i = or i1 %i.z, %i.aa
  %i.ab = fcmp ogt double %i.y, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %i.ab, %or.cond.i
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = fptosi double %i.y to i32               ; 2 uses
  store i32 %i.ac, ptr %9, align 16, !tbaa !183
  %i.ad = fmul double %i.x, %i.u                  ; 5 uses
  store double %i.ad, ptr %i.b, align 8, !tbaa !185
  %i.ae = fcmp uno double %i.ad, 0.000000e+00
  %i.af = fcmp olt double %i.ad, f0xC1E0000000000000
  %or.cond22.i = or i1 %i.ae, %i.af
  %i.ag = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %i.ag, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = fptosi double %i.ad to i32              ; 3 uses
  %12 = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %13 = insertelement <2 x i32> %12, i32 %i.ah, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x double>
  %i.ai = fneg <2 x double> %14
  %i.aj = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.ak, <2 x double> %i.ai) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = fmul double %i.am, 3.000000e+01
  %i.ao = fmul double %i.an, 1.000000e+06
  %i.ap = call double @llvm.nearbyint.f64(double %i.ao)
  %i.aq = fdiv double %i.ap, 1.000000e+06         ; 2 uses
  %i.ar = fptosi double %i.aq to i32              ; 2 uses
  %i.as = extractelement <2 x double> %i.al, i64 1
  %i.at = fadd double %i.as, %i.aq
  %i.au = sitofp i32 %i.ar to double
  %i.av = fsub double %i.at, %i.au
  %i.aw = fmul double %i.av, 8.640000e+04
  %i.ax = fmul double %i.aw, 1.000000e+06
  %i.ay = call double @llvm.nearbyint.f64(double %i.ax)
  %i.az = fdiv double %i.ay, 1.000000e+06         ; 4 uses
  %i.ba = call double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ult double %i.ba, 8.640000e+04
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = fdiv double %i.az, 8.640000e+04
  %i.bd = fptosi double %i.bc to i32              ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.ah
  %i.bf = mul nsw i32 %i.bd, 86400
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fsub nnan double %i.az, %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = phi i32 [ %i.ah, %bb.f ], [ %i.be, %bb.g ]
  %.020.i = phi double [ %i.az, %bb.f ], [ %i.bh, %bb.g ]
  %i.bj = add nsw i32 %i.bi, %i.ar
  store i32 %i.bj, ptr %i.f, align 4, !tbaa !186
  %i.bk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bk, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bl = load double, ptr %i.b, align 8, !tbaa !185
  %i.bm = fmul double %.020.i, 1.000000e+06
  %i.bn = call double @llvm.fmuladd.f64(double %i.bl, double %i.x, double %i.bm)
  %i.bo = call double @llvm.nearbyint.f64(double %i.bn) ; 3 uses
  store double %i.bo, ptr %i.b, align 8, !tbaa !185
  %i.bp = fcmp uno double %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.bq = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bq, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bu = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.by = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.by, ptr %i.bx, align 8
  %i.bz = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.q
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3836

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.en, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.ca = sub nuw i64 %.2112, %.0116
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.cb, %i.n
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %.sroa.013.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.414.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !44
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.2112
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.013.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cf = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.cg = fmul double %i.ce, %i.cf                ; 4 uses
  %i.ch = fcmp uno double %i.cg, 0.000000e+00
  %i.ci = fcmp olt double %i.cg, f0xC1E0000000000000
  %or.cond.i86 = or i1 %i.ch, %i.ci
  %i.cj = fcmp ogt double %i.cg, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %i.cj, %or.cond.i86
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.013.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.ck = fptosi double %i.cg to i32              ; 2 uses
  store i32 %i.ck, ptr %6, align 16, !tbaa !183
  %i.cl = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.cm = fmul double %i.ce, %i.cl                ; 5 uses
  store double %i.cm, ptr %i.a, align 8, !tbaa !185
  %i.cn = fcmp uno double %i.cm, 0.000000e+00
  %i.co = fcmp olt double %i.cm, f0xC1E0000000000000
  %or.cond22.i90 = or i1 %i.cn, %i.co
  %i.cp = fcmp ogt double %i.cm, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %i.cp, %or.cond22.i90
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = fptosi double %i.cm to i32              ; 3 uses
  %i.cr = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %i.cs = insertelement <2 x i32> %i.cr, i32 %i.cq, i64 1
  %i.ct = sitofp <2 x i32> %i.cs to <2 x double>
  %i.cu = fneg <2 x double> %i.ct
  %i.cv = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cl, i64 1
  %i.cx = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cy, <2 x double> %i.cu) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fmul double %i.da, 3.000000e+01
  %i.dc = fmul double %i.db, 1.000000e+06
  %i.dd = call double @llvm.nearbyint.f64(double %i.dc)
  %i.de = fdiv double %i.dd, 1.000000e+06         ; 2 uses
  %i.df = fptosi double %i.de to i32              ; 2 uses
  %i.dg = extractelement <2 x double> %i.cz, i64 1
  %i.dh = fadd double %i.dg, %i.de
  %i.di = sitofp i32 %i.df to double
  %i.dj = fsub double %i.dh, %i.di
  %i.dk = fmul double %i.dj, 8.640000e+04
  %i.dl = fmul double %i.dk, 1.000000e+06
  %i.dm = call double @llvm.nearbyint.f64(double %i.dl)
  %i.dn = fdiv double %i.dm, 1.000000e+06         ; 4 uses
  %i.do = call double @llvm.fabs.f64(double %i.dn)
  %i.dp = fcmp ult double %i.do, 8.640000e+04
  br i1 %i.dp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = fdiv double %i.dn, 8.640000e+04
  %i.dr = fptosi double %i.dq to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, %i.cq
  %i.dt = mul nsw i32 %i.dr, 86400
  %i.du = sitofp i32 %i.dt to double
  %i.dv = fsub nnan double %i.dn, %i.du
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dw = phi i32 [ %i.cq, %bb.p ], [ %i.ds, %bb.q ]
end_hunk_1
begin_hunk_2_@_ZN6duckdb14BinaryExecutor14ExecuteGenericIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvRNS_6VectorES6_S6_mT4_:bb.a
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i18 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i18, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

_ZN6duckdb15SelectionVectorD2Ev.exit.i19:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i20, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !77
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i21 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i21, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i23 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i23, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, !prof !80

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.d, %bb.c, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ak ], [ %i.cc, %bb.aj ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %i.cb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %6 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %.sroa.02.0.copyload = load i64, ptr %1, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %3, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not120 = icmp eq i64 %i.e, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.b
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph117, %.loopexit101
  %.0116 = phi i64 [ 0, %.lr.ph117 ], [ %.4, %.loopexit101 ] ; 9 uses
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.eo, %.loopexit101 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i71 = icmp eq ptr %i.j, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0116, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.069115
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %i.o = add i64 %.0116, 64
  %i.p = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %3) ; 5 uses
  switch i64 %i.n, label %.preheader100 [
    i64 -1, label %.preheader103
    i64 0, label %.loopexit101
  ]

.preheader103:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.q = phi i64 [ %i.l, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.r = icmp ult i64 %.0116, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit101

.lr.ph:                                           ; preds = %.preheader103
  %.sroa.020.0.copyload147 = load <2 x i32>, ptr %1, align 8
  %.sroa.421.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !44
  %i.s = sitofp <2 x i32> %.sroa.020.0.copyload147 to <2 x double> ; 3 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = extractelement <2 x double> %i.s, i64 1
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.v = icmp ult i64 %.0116, %i.p
  br i1 %i.v, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.bz, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1111
  %i.x = load double, ptr %i.w, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.y = fmul double %i.x, %i.t                   ; 4 uses
  %i.z = fcmp uno double %i.y, 0.000000e+00
  %i.aa = fcmp olt double %i.y, f0xC1E0000000000000
  %or.cond.i = or i1 %i.z, %i.aa
  %i.ab = fcmp ogt double %i.y, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %i.ab, %or.cond.i
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = fptosi double %i.y to i32               ; 2 uses
  store i32 %i.ac, ptr %9, align 16, !tbaa !183
  %i.ad = fmul double %i.x, %i.u                  ; 5 uses
  store double %i.ad, ptr %i.b, align 8, !tbaa !185
  %i.ae = fcmp uno double %i.ad, 0.000000e+00
  %i.af = fcmp olt double %i.ad, f0xC1E0000000000000
  %or.cond22.i = or i1 %i.ae, %i.af
  %i.ag = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %i.ag, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = fptosi double %i.ad to i32              ; 3 uses
  %12 = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %13 = insertelement <2 x i32> %12, i32 %i.ah, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x double>
  %i.ai = fneg <2 x double> %14
  %i.aj = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.ak, <2 x double> %i.ai) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = fmul double %i.am, 3.000000e+01
  %i.ao = fmul double %i.an, 1.000000e+06
  %i.ap = call double @llvm.nearbyint.f64(double %i.ao)
  %i.aq = fdiv double %i.ap, 1.000000e+06         ; 2 uses
  %i.ar = fptosi double %i.aq to i32              ; 2 uses
  %i.as = extractelement <2 x double> %i.al, i64 1
  %i.at = fadd double %i.as, %i.aq
  %i.au = sitofp i32 %i.ar to double
  %i.av = fsub double %i.at, %i.au
  %i.aw = fmul double %i.av, 8.640000e+04
  %i.ax = fmul double %i.aw, 1.000000e+06
  %i.ay = call double @llvm.nearbyint.f64(double %i.ax)
  %i.az = fdiv double %i.ay, 1.000000e+06         ; 4 uses
  %i.ba = call double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ult double %i.ba, 8.640000e+04
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = fdiv double %i.az, 8.640000e+04
  %i.bd = fptosi double %i.bc to i32              ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.ah
  %i.bf = mul nsw i32 %i.bd, 86400
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fsub nnan double %i.az, %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = phi i32 [ %i.ah, %bb.f ], [ %i.be, %bb.g ]
  %.020.i = phi double [ %i.az, %bb.f ], [ %i.bh, %bb.g ]
  %i.bj = add nsw i32 %i.bi, %i.ar
  store i32 %i.bj, ptr %i.f, align 4, !tbaa !186
  %i.bk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.421.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bk, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bl = load double, ptr %i.b, align 8, !tbaa !185
  %i.bm = fmul double %.020.i, 1.000000e+06
  %i.bn = call double @llvm.fmuladd.f64(double %i.bl, double %i.x, double %i.bm)
  %i.bo = call double @llvm.nearbyint.f64(double %i.bn) ; 3 uses
  store double %i.bo, ptr %i.b, align 8, !tbaa !185
  %i.bp = fcmp uno double %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.bq = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bq, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bu = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.by = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.by, ptr %i.bx, align 8
  %i.bz = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.q
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3846

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.en, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.ca = sub nuw i64 %.2112, %.0116
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.cb, %i.n
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2112
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !185 ; 4 uses
  %.sroa.012.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.413.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.012.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cf = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.cg = fmul double %i.ce, %i.cf                ; 4 uses
  %i.ch = fcmp uno double %i.cg, 0.000000e+00
  %i.ci = fcmp olt double %i.cg, f0xC1E0000000000000
  %or.cond.i86 = or i1 %i.ch, %i.ci
  %i.cj = fcmp ogt double %i.cg, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %i.cj, %or.cond.i86
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.012.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.ck = fptosi double %i.cg to i32              ; 2 uses
  store i32 %i.ck, ptr %6, align 16, !tbaa !183
  %i.cl = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.cm = fmul double %i.ce, %i.cl                ; 5 uses
  store double %i.cm, ptr %i.a, align 8, !tbaa !185
  %i.cn = fcmp uno double %i.cm, 0.000000e+00
  %i.co = fcmp olt double %i.cm, f0xC1E0000000000000
  %or.cond22.i90 = or i1 %i.cn, %i.co
  %i.cp = fcmp ogt double %i.cm, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %i.cp, %or.cond22.i90
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = fptosi double %i.cm to i32              ; 3 uses
  %i.cr = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %i.cs = insertelement <2 x i32> %i.cr, i32 %i.cq, i64 1
  %i.ct = sitofp <2 x i32> %i.cs to <2 x double>
  %i.cu = fneg <2 x double> %i.ct
  %i.cv = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cl, i64 1
  %i.cx = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cy, <2 x double> %i.cu) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fmul double %i.da, 3.000000e+01
  %i.dc = fmul double %i.db, 1.000000e+06
  %i.dd = call double @llvm.nearbyint.f64(double %i.dc)
  %i.de = fdiv double %i.dd, 1.000000e+06         ; 2 uses
  %i.df = fptosi double %i.de to i32              ; 2 uses
  %i.dg = extractelement <2 x double> %i.cz, i64 1
  %i.dh = fadd double %i.dg, %i.de
  %i.di = sitofp i32 %i.df to double
  %i.dj = fsub double %i.dh, %i.di
  %i.dk = fmul double %i.dj, 8.640000e+04
  %i.dl = fmul double %i.dk, 1.000000e+06
  %i.dm = call double @llvm.nearbyint.f64(double %i.dl)
  %i.dn = fdiv double %i.dm, 1.000000e+06         ; 4 uses
  %i.do = call double @llvm.fabs.f64(double %i.dn)
  %i.dp = fcmp ult double %i.do, 8.640000e+04
  br i1 %i.dp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = fdiv double %i.dn, 8.640000e+04
  %i.dr = fptosi double %i.dq to i32              ; 2 uses
  %i.ds = add nsw i32 %i.dr, %i.cq
  %i.dt = mul nsw i32 %i.dr, 86400
  %i.du = sitofp i32 %i.dt to double
  %i.dv = fsub nnan double %i.dn, %i.du
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dw = phi i32 [ %i.cq, %bb.p ], [ %i.ds, %bb.q ]
end_hunk_2
