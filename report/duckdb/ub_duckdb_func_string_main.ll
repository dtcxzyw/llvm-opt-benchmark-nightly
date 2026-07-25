inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN6duckdb14ScalarFunction13UnaryFunctionINS_8string_tElNS_12_GLOBAL__N_121GraphemeCountOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.r
  %.0915.i.i.i.i.i.i = phi i64 [ %i.cf, %bb.r ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.0915.i.i.i.i.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !7, !noalias !420
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.ch, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ci = call noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.cd, i64 noundef %i.ce), !noalias !420
  br label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i

_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i: ; preds = %bb.r, %.thread.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.1.i.i.i.i.i.i = phi i64 [ %i.ci, %.thread.i.i.i.i.i.i ], [ %i.ce, %.lr.ph.i.i.i ], [ %i.ce, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !420
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.19.i.i.i
  store i64 %.1.i.i.i.i.i.i, ptr %i.cj, align 8, !tbaa !69, !alias.scope !418, !noalias !415
  %i.ck = add nuw i64 %.19.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ck, %i.bx
  br i1 %exitcond.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !422

.lr.ph11.i.i.i:                                   ; preds = %.preheader4.i.i.i, %bb.u
  %.210.i.i.i = phi i64 [ %i.cy, %bb.u ], [ %.014.i.i.i, %.preheader4.i.i.i ] ; 4 uses
  %i.cl = sub nuw i64 %.210.i.i.i, %.014.i.i.i
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = and i64 %i.cm, %i.bu
  %.not.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph11.i.i.i
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.210.i.i.i ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !415, !noalias !418 ; 3 uses
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.26.0.copyload.i.i.i = load ptr, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !7, !alias.scope !415, !noalias !418 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !420
  store i64 %.sroa.05.0.copyload.i.i.i, ptr %6, align 8, !noalias !420
  store ptr %.sroa.26.0.copyload.i.i.i, ptr %i.bo, align 8, !noalias !420
  %i.cp = trunc i64 %.sroa.05.0.copyload.i.i.i to i32 ; 2 uses
  %i.cq = icmp ult i32 %i.cp, 13
  %i.cr = select i1 %i.cq, ptr %i.bp, ptr %.sroa.26.0.copyload.i.i.i ; 2 uses
  %i.cs = and i64 %.sroa.05.0.copyload.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i61.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not1214.not.i.i.i61.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit68.i.i.i, label %.lr.ph.i.i.i62.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i62.i.i.i
  %i.ct = add nuw nsw i64 %.0915.i.i.i63.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i67.i.i.i = icmp eq i64 %i.ct, %i.cs
  br i1 %exitcond.not.i.i.i67.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit68.i.i.i, label %.lr.ph.i.i.i62.i.i.i, !llvm.loop !414

.lr.ph.i.i.i62.i.i.i:                             ; preds = %bb.s, %bb.t
  %.0915.i.i.i63.i.i.i = phi i64 [ %i.ct, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.0915.i.i.i63.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !7, !noalias !420
  %.not.i.i.i64.i.i.i = icmp sgt i8 %i.cv, -1
  br i1 %.not.i.i.i64.i.i.i, label %bb.t, label %.thread.i.i.i65.i.i.i

.thread.i.i.i65.i.i.i:                            ; preds = %.lr.ph.i.i.i62.i.i.i
  %i.cw = call noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.cr, i64 noundef %i.cs), !noalias !420
  br label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit68.i.i.i

_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit68.i.i.i: ; preds = %bb.t, %.thread.i.i.i65.i.i.i, %bb.s
  %.1.i.i.i66.i.i.i = phi i64 [ %i.cw, %.thread.i.i.i65.i.i.i ], [ %i.cs, %bb.s ], [ %i.cs, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !420
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.210.i.i.i
  store i64 %.1.i.i.i66.i.i.i, ptr %i.cx, align 8, !tbaa !69, !alias.scope !418, !noalias !415
  br label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit68.i.i.i, %.lr.ph11.i.i.i
  %i.cy = add nuw i64 %.210.i.i.i, 1              ; 2 uses
  %exitcond23.not.i.i.i = icmp eq i64 %i.cy, %i.bw
  br i1 %exitcond23.not.i.i.i, label %.loopexit5.i.i.i, label %.lr.ph11.i.i.i, !llvm.loop !423

.loopexit5.i.i.i:                                 ; preds = %bb.u, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i, %.preheader4.i.i.i, %.preheader6.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %.4.i.i.i = phi i64 [ %i.bw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i ], [ %i.bx, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i ], [ %.014.i.i.i, %.preheader4.i.i.i ], [ %.014.i.i.i, %.preheader6.i.i.i ], [ %i.bw, %bb.u ]
  %i.cz = add nuw nsw i64 %.05813.i.i.i, 1        ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i64 %i.cz, %i.bl
  br i1 %exitcond24.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_121GraphemeCountOperatorEEEvRNS_6VectorES6_m.exit, label %bb.q, !llvm.loop !424

bb.v:                                             ; preds = %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit76.i.i.i, %.lr.ph17.i.i.i
  %.05916.i.i.i = phi i64 [ 0, %.lr.ph17.i.i.i ], [ %i.dk, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit76.i.i.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.05916.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.da, align 8, !alias.scope !415, !noalias !418 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !7, !alias.scope !415, !noalias !418 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !420
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %5, align 8, !noalias !420
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.ac, align 8, !noalias !420
  %i.db = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.dc = icmp ult i32 %i.db, 13
  %i.dd = select i1 %i.dc, ptr %i.ad, ptr %.sroa.2.0.copyload.i.i.i ; 2 uses
  %i.de = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i69.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not1214.not.i.i.i69.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit76.i.i.i, label %.lr.ph.i.i.i70.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i70.i.i.i
  %i.df = add nuw nsw i64 %.0915.i.i.i71.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i75.i.i.i = icmp eq i64 %i.df, %i.de
  br i1 %exitcond.not.i.i.i75.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit76.i.i.i, label %.lr.ph.i.i.i70.i.i.i, !llvm.loop !414

.lr.ph.i.i.i70.i.i.i:                             ; preds = %bb.v, %bb.w
  %.0915.i.i.i71.i.i.i = phi i64 [ %i.df, %bb.w ], [ 0, %bb.v ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.0915.i.i.i71.i.i.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !7, !noalias !420
  %.not.i.i.i72.i.i.i = icmp sgt i8 %i.dh, -1
  br i1 %.not.i.i.i72.i.i.i, label %bb.w, label %.thread.i.i.i73.i.i.i

.thread.i.i.i73.i.i.i:                            ; preds = %.lr.ph.i.i.i70.i.i.i
  %i.di = call noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.dd, i64 noundef %i.de), !noalias !420
  br label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit76.i.i.i

_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit76.i.i.i: ; preds = %bb.w, %.thread.i.i.i73.i.i.i, %bb.v
  %.1.i.i.i74.i.i.i = phi i64 [ %i.di, %.thread.i.i.i73.i.i.i ], [ %i.de, %bb.v ], [ %i.de, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !420
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05916.i.i.i
  store i64 %.1.i.i.i74.i.i.i, ptr %i.dj, align 8, !tbaa !69, !alias.scope !418, !noalias !415
  %i.dk = add nuw i64 %.05916.i.i.i, 1            ; 2 uses
  %exitcond25.not.i.i.i = icmp eq i64 %i.dk, %i.c
  br i1 %exitcond25.not.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tElNS_12_GLOBAL__N_121GraphemeCountOperatorEEEvRNS_6VectorES6_m.exit, label %bb.v, !llvm.loop !425

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.y unwind label %bb.ay

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.z unwind label %bb.ay

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.aa unwind label %bb.az

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !67 ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !89 ; 3 uses
  %i.dp = load ptr, ptr %9, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !68, !noalias !433
  %.not.i.i60.i.i = icmp eq ptr %i.ds, null
  %.not7.i.i.i = icmp eq i64 %i.c, 0              ; 2 uses
  br i1 %.not.i.i60.i.i, label %.preheader.i72.i.i, label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %bb.ac
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121GraphemeCountOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph.i61.i.i

.lr.ph.i61.i.i:                                   ; preds = %.preheader1.i.i.i
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !107, !alias.scope !431, !noalias !434 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.dt, null
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ae

.preheader.i72.i.i:                               ; preds = %bb.ac
  br i1 %.not7.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121GraphemeCountOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %.lr.ph5.i.i.i

.lr.ph5.i.i.i:                                    ; preds = %.preheader.i72.i.i
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !107, !alias.scope !431, !noalias !434 ; 2 uses
  %.not.i33.i.i.i = icmp eq ptr %i.dx, null
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br i1 %.not.i33.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i: ; preds = %.lr.ph5.i.i.i, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.us.i.i.i
  %.0304.us.i.i.i = phi i64 [ %i.ej, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.us.i.i.i ], [ 0, %.lr.ph5.i.i.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %.0304.us.i.i.i ; 2 uses
  %.sroa.0.0.copyload.us.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !426, !noalias !435 ; 3 uses
  %.sroa.2.0..sroa_idx.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.2.0.copyload.us.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.us.i.i.i, align 8, !tbaa !7, !alias.scope !426, !noalias !435 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !433
  store i64 %.sroa.0.0.copyload.us.i.i.i, ptr %3, align 8, !noalias !433
  store ptr %.sroa.2.0.copyload.us.i.i.i, ptr %i.dy, align 8, !noalias !433
  %i.eb = trunc i64 %.sroa.0.0.copyload.us.i.i.i to i32 ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 13
  %i.ed = select i1 %i.ec, ptr %i.dz, ptr %.sroa.2.0.copyload.us.i.i.i ; 2 uses
  %i.ee = and i64 %.sroa.0.0.copyload.us.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i35.us.i.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not1214.not.i.i.i35.us.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.us.i.i.i, label %.lr.ph.i.i.i36.us.i.i.i

.lr.ph.i.i.i36.us.i.i.i:                          ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, %bb.ad
  %.0915.i.i.i37.us.i.i.i = phi i64 [ %i.eh, %bb.ad ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.0915.i.i.i37.us.i.i.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !7, !noalias !433
  %.not.i.i.i38.us.i.i.i = icmp sgt i8 %i.eg, -1
  br i1 %.not.i.i.i38.us.i.i.i, label %bb.ad, label %.thread.i.i.i39.us.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i36.us.i.i.i
  %i.eh = add nuw nsw i64 %.0915.i.i.i37.us.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i41.us.i.i.i = icmp eq i64 %i.eh, %i.ee
  br i1 %exitcond.not.i.i.i41.us.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.us.i.i.i, label %.lr.ph.i.i.i36.us.i.i.i, !llvm.loop !414

.thread.i.i.i39.us.i.i.i:                         ; preds = %.lr.ph.i.i.i36.us.i.i.i
  %10 = invoke noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.ed, i64 noundef %i.ee)
          to label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.us.i.i.i unwind label %.loopexit.i.i

_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.us.i.i.i: ; preds = %bb.ad, %.thread.i.i.i39.us.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i
  %.1.i.i.i40.us.i.i.i = phi i64 [ %10, %.thread.i.i.i39.us.i.i.i ], [ %i.ee, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i ], [ %i.ee, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !433
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0304.us.i.i.i
  store i64 %.1.i.i.i40.us.i.i.i, ptr %i.ei, align 8, !tbaa !69, !alias.scope !429, !noalias !436
  %i.ej = add nuw i64 %.0304.us.i.i.i, 1          ; 2 uses
  %exitcond11.not.i.i.i = icmp eq i64 %i.ej, %i.c
  br i1 %exitcond11.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121GraphemeCountOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us.i.i.i, !llvm.loop !437

bb.ae:                                            ; preds = %bb.ak, %.lr.ph.i61.i.i
  %.03.i.i.i = phi i64 [ 0, %.lr.ph.i61.i.i ], [ %i.fp, %bb.ak ] ; 6 uses
  br i1 %.not.i31.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.03.i.i.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3, !noalias !433
  %i.em = zext i32 %i.el to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.en = phi i64 [ %i.em, %bb.af ], [ %.03.i.i.i, %bb.ae ] ; 3 uses
  %i.eo = lshr i64 %i.en, 6
  %i.ep = and i64 %i.en, 63
  %i.eq = load ptr, ptr %i.dr, align 8, !tbaa !68, !noalias !433
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  %i.es = load i64, ptr %i.er, align 8, !tbaa !69, !noalias !433
  %i.et = shl nuw i64 1, %i.ep
  %i.eu = and i64 %i.es, %i.et
  %.not.i62.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i62.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.en ; 2 uses
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.ev, align 8, !alias.scope !426, !noalias !435 ; 3 uses
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.27.0.copyload.i.i.i = load ptr, ptr %.sroa.27.0..sroa_idx.i.i.i, align 8, !tbaa !7, !alias.scope !426, !noalias !435 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !433
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %4, align 8, !noalias !433
  store ptr %.sroa.27.0.copyload.i.i.i, ptr %i.du, align 8, !noalias !433
  %i.ew = trunc i64 %.sroa.06.0.copyload.i.i.i to i32 ; 2 uses
  %i.ex = icmp ult i32 %i.ew, 13
  %i.ey = select i1 %i.ex, ptr %i.dv, ptr %.sroa.27.0.copyload.i.i.i ; 2 uses
  %i.ez = and i64 %.sroa.06.0.copyload.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i63.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not1214.not.i.i.i.i63.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i68.i.i, label %.lr.ph.i.i.i.i64.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i64.i.i
  %i.fa = add nuw nsw i64 %.0915.i.i.i.i65.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i71.i.i = icmp eq i64 %i.fa, %i.ez
  br i1 %exitcond.not.i.i.i.i71.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i68.i.i, label %.lr.ph.i.i.i.i64.i.i, !llvm.loop !414

.lr.ph.i.i.i.i64.i.i:                             ; preds = %bb.ag, %bb.ah
  %.0915.i.i.i.i65.i.i = phi i64 [ %i.fa, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.0915.i.i.i.i65.i.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !7, !noalias !433
  %.not.i.i.i.i66.i.i = icmp sgt i8 %i.fc, -1
  br i1 %.not.i.i.i.i66.i.i, label %bb.ah, label %.thread.i.i.i.i67.i.i

.thread.i.i.i.i67.i.i:                            ; preds = %.lr.ph.i.i.i.i64.i.i
  %i.fd = invoke noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.ey, i64 noundef %i.ez)
          to label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i68.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i68.i.i: ; preds = %bb.ah, %.thread.i.i.i.i67.i.i, %bb.ag
  %.1.i.i.i.i69.i.i = phi i64 [ %i.fd, %.thread.i.i.i.i67.i.i ], [ %i.ez, %bb.ag ], [ %i.ez, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !433
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.03.i.i.i
  store i64 %.1.i.i.i.i69.i.i, ptr %i.fe, align 8, !tbaa !69, !alias.scope !429, !noalias !436
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i
  %i.ff = load ptr, ptr %i.dq, align 8, !tbaa !68, !noalias !433 ; 2 uses
  %.not.i32.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i32.i.i.i, label %bb.aj, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fg = load i64, ptr %i.dw, align 8, !tbaa !84, !noalias !433
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, i64 noundef %i.fg)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc77.i.i:                                     ; preds = %bb.aj
  %.pre.i.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !68, !noalias !433
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i: ; preds = %.noexc77.i.i, %bb.ai
  %i.fh = phi ptr [ %.pre.i.i.i.i, %.noexc77.i.i ], [ %i.ff, %bb.ai ]
  %i.fi = lshr i64 %.03.i.i.i, 6
  %i.fj = and i64 %.03.i.i.i, 63
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = xor i64 %i.fk, -1
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !69, !noalias !433
  %i.fo = and i64 %i.fn, %i.fl
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !69, !noalias !433
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit.i68.i.i
  %i.fp = add nuw i64 %.03.i.i.i, 1               ; 2 uses
  %exitcond.not.i70.i.i = icmp eq i64 %i.fp, %i.c
  br i1 %exitcond.not.i70.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121GraphemeCountOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %bb.ae, !llvm.loop !438

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i: ; preds = %.lr.ph5.i.i.i, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.i.i.i
  %.0304.i.i.i = phi i64 [ %i.gd, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.i.i.i ], [ 0, %.lr.ph5.i.i.i ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.0304.i.i.i
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !433
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.fs ; 2 uses
  %.sroa.0.0.copyload.i73.i.i = load i64, ptr %i.ft, align 8, !alias.scope !426, !noalias !435 ; 3 uses
  %.sroa.2.0..sroa_idx.i74.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.sroa.2.0.copyload.i75.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i74.i.i, align 8, !tbaa !7, !alias.scope !426, !noalias !435 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !433
  store i64 %.sroa.0.0.copyload.i73.i.i, ptr %3, align 8, !noalias !433
  store ptr %.sroa.2.0.copyload.i75.i.i, ptr %i.dy, align 8, !noalias !433
  %i.fu = trunc i64 %.sroa.0.0.copyload.i73.i.i to i32 ; 2 uses
  %i.fv = icmp ult i32 %i.fu, 13
  %i.fw = select i1 %i.fv, ptr %i.dz, ptr %.sroa.2.0.copyload.i75.i.i ; 2 uses
  %i.fx = and i64 %.sroa.0.0.copyload.i73.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i35.i.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not1214.not.i.i.i35.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.i.i.i, label %.lr.ph.i.i.i36.i.i.i

bb.al:                                            ; preds = %.lr.ph.i.i.i36.i.i.i
  %i.fy = add nuw nsw i64 %.0915.i.i.i37.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i41.i.i.i = icmp eq i64 %i.fy, %i.fx
  br i1 %exitcond.not.i.i.i41.i.i.i, label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.i.i.i, label %.lr.ph.i.i.i36.i.i.i, !llvm.loop !414

.lr.ph.i.i.i36.i.i.i:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i, %bb.al
  %.0915.i.i.i37.i.i.i = phi i64 [ %i.fy, %bb.al ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.0915.i.i.i37.i.i.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !7, !noalias !433
  %.not.i.i.i38.i.i.i = icmp sgt i8 %i.ga, -1
  br i1 %.not.i.i.i38.i.i.i, label %bb.al, label %.thread.i.i.i39.i.i.i

.thread.i.i.i39.i.i.i:                            ; preds = %.lr.ph.i.i.i36.i.i.i
  %i.gb = invoke noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.fw, i64 noundef %i.fx)
          to label %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i

_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.i.i.i: ; preds = %bb.al, %.thread.i.i.i39.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i
  %.1.i.i.i40.i.i.i = phi i64 [ %i.gb, %.thread.i.i.i39.i.i.i ], [ %i.fx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i ], [ %i.fx, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !433
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.0304.i.i.i
  store i64 %.1.i.i.i40.i.i.i, ptr %i.gc, align 8, !tbaa !69, !alias.scope !429, !noalias !436
  %i.gd = add nuw i64 %.0304.i.i.i, 1             ; 2 uses
  %exitcond10.not.i.i.i = icmp eq i64 %i.gd, %i.c
  br i1 %exitcond10.not.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121GraphemeCountOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.i.i.i, !llvm.loop !437

_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121GraphemeCountOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i: ; preds = %bb.ak, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.i.i.i, %_ZN6duckdb20UnaryOperatorWrapper9OperationINS_12_GLOBAL__N_121GraphemeCountOperatorENS_8string_tElEET1_T0_RNS_12ValidityMaskEmPv.exit42.us.i.i.i, %.preheader.i72.i.i, %.preheader1.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121GraphemeCountOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 4294967297
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  br i1 %i.gi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.gg, align 8, !tbaa !77
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gk, align 4, !tbaa !79
  %i.gl = load ptr, ptr %i.gf, align 8, !tbaa !80
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #28, !inline_history !439
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !80
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #28, !inline_history !439
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.gr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i79.i.i = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i.i.i.i79.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gs = add nsw i32 %i.gj, -1
  store i32 %i.gs, ptr %i.gg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.gt = atomicrmw volatile add ptr %i.gg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gj, %bb.ap ], [ %i.gt, %bb.aq ]
  %i.gu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gu, label %bb.ar, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i, !prof !83

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i.i:       ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.an, %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tElNS_20UnaryOperatorWrapperENS_12_GLOBAL__N_121GraphemeCountOperatorEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESF_Pvb.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i.i1.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i.i, label %bb.as

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_120NFCNormalizeFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i70.i.i.i.i:     ; preds = %.lr.ph, %.lr.ph.i.i.i.i74.i.i.i.i
  %i.ea = call noundef ptr @_ZN6duckdb8Utf8Proc9NormalizeEPKcm(ptr noundef nonnull %i.dn, i64 noundef %i.do), !noalias !1036 ; 2 uses
  %i.eb = call { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.ea), !noalias !1036
  call void @free(ptr noundef %i.ea) #28, !noalias !1036
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit78.i.i.i.i

_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit78.i.i.i.i: ; preds = %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i70.i.i.i.i, %.loopexit.i.i.i73.i.i.i.i
  %.fca.1.insert.merged.i.i.i71.i.i.i.i = phi { i64, ptr } [ %i.dz, %.loopexit.i.i.i73.i.i.i.i ], [ %i.eb, %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i70.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1036
  %i.ec = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i71.i.i.i.i, 0
  %i.ed = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i71.i.i.i.i, 1
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.2104.i.i.i.i ; 2 uses
  store i64 %i.ec, ptr %i.ee, align 8, !alias.scope !1034, !noalias !1031
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ed, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1034, !noalias !1031
  br label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit78.i.i.i.i, %.lr.ph105.i.i.i.i
  %i.ef = add nuw i64 %.2104.i.i.i.i, 1           ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i64 %i.ef, %i.ch
  br i1 %exitcond120.not.i.i.i.i, label %.loopexit99.i.i.i.i, label %.lr.ph105.i.i.i.i, !llvm.loop !1039

.loopexit99.i.i.i.i:                              ; preds = %bb.x, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i.i, %.preheader98.i.i.i.i, %.preheader100.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.ch, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.ci, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i.i ], [ %.0108.i.i.i.i, %.preheader98.i.i.i.i ], [ %.0108.i.i.i.i, %.preheader100.i.i.i.i ], [ %i.ch, %bb.x ]
  %i.eg = add nuw nsw i64 %.063107.i.i.i.i, 1     ; 2 uses
  %exitcond121.not.i.i.i.i = icmp eq i64 %i.eg, %i.bw
  br i1 %exitcond121.not.i.i.i.i, label %_ZN6duckdb13UnaryExecutor13ExecuteStringINS_8string_tES2_NS_12_GLOBAL__N_120NFCNormalizeOperatorEEEvRNS_6VectorES6_m.exit, label %bb.r, !llvm.loop !1040

bb.y:                                             ; preds = %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i, %.lr.ph111.i.i.i.i
  %.064110.i.i.i.i = phi i64 [ 0, %.lr.ph111.i.i.i.i ], [ %i.fc, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.064110.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !1031, !noalias !1034 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1031, !noalias !1034 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1036
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %5, align 8, !noalias !1036
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.an, align 8, !noalias !1036
  %i.ei = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.ej = icmp ult i32 %i.ei, 13
  %i.ek = select i1 %i.ej, ptr %i.ao, ptr %.sroa.2.0.copyload.i.i.i.i ; 3 uses
  %i.el = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967295 ; 5 uses
  %i.em = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967288 ; 2 uses
  %.not.i.i.i.i80.i.i.i.i104 = icmp samesign ult i64 %i.el, 8
  br i1 %.not.i.i.i.i80.i.i.i.i104, label %.preheader.i.i.i.i85.i.i.i.i, label %.lr.ph106

bb.z:                                             ; preds = %.lr.ph106
  %i.en = add nuw nsw i64 %i.ep, 8                ; 2 uses
  %.not.i.i.i.i80.i.i.i.i = icmp samesign ugt i64 %i.en, %i.el
  br i1 %.not.i.i.i.i80.i.i.i.i, label %.preheader.i.i.i.i85.i.i.i.i, label %.lr.ph106, !llvm.loop !1029

.preheader.i.i.i.i85.i.i.i.i:                     ; preds = %bb.z, %bb.y
  %i.eo = icmp samesign ult i64 %i.em, %i.el
  br i1 %i.eo, label %.lr.ph.i.i.i.i87.i.i.i.i, label %.loopexit.i.i.i86.i.i.i.i

.lr.ph106:                                        ; preds = %bb.y, %bb.z
  %i.ep = phi i64 [ %i.en, %bb.z ], [ 8, %bb.y ]  ; 2 uses
  %.0.i.i.i.i79.i.i.i.i105 = phi i64 [ %i.ep, %bb.z ], [ 0, %bb.y ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.0.i.i.i.i79.i.i.i.i105
  %.0.copyload.i.i.i.i.i81.i.i.i.i = load i64, ptr %i.eq, align 1, !noalias !1036
  %i.er = and i64 %.0.copyload.i.i.i.i.i81.i.i.i.i, -9187201950435737472
  %.not13.i.i.i.i82.i.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not13.i.i.i.i82.i.i.i.i, label %bb.z, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i, !llvm.loop !1029

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i87.i.i.i.i
  %i.es = add i64 %.116.i.i.i.i88.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i90.i.i.i.i = icmp eq i64 %i.es, %i.el
  br i1 %exitcond.not.i.i.i.i90.i.i.i.i, label %.loopexit.i.i.i86.i.i.i.i, label %.lr.ph.i.i.i.i87.i.i.i.i, !llvm.loop !1030

.lr.ph.i.i.i.i87.i.i.i.i:                         ; preds = %.preheader.i.i.i.i85.i.i.i.i, %bb.aa
  %.116.i.i.i.i88.i.i.i.i = phi i64 [ %i.es, %bb.aa ], [ %i.em, %.preheader.i.i.i.i85.i.i.i.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.116.i.i.i.i88.i.i.i.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !7, !noalias !1036
  %.not12.i.i.i.i89.i.i.i.i = icmp sgt i8 %i.eu, -1
  br i1 %.not12.i.i.i.i89.i.i.i.i, label %bb.aa, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i

.loopexit.i.i.i86.i.i.i.i:                        ; preds = %bb.aa, %.preheader.i.i.i.i85.i.i.i.i
  %i.ev = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.ew = insertvalue { i64, ptr } %i.ev, ptr %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i

_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i:     ; preds = %.lr.ph106, %.lr.ph.i.i.i.i87.i.i.i.i
  %i.ex = call noundef ptr @_ZN6duckdb8Utf8Proc9NormalizeEPKcm(ptr noundef nonnull %i.ek, i64 noundef %i.el), !noalias !1036 ; 2 uses
  %i.ey = call { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.ex), !noalias !1036
  call void @free(ptr noundef %i.ex) #28, !noalias !1036
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i

_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i: ; preds = %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i, %.loopexit.i.i.i86.i.i.i.i
  %.fca.1.insert.merged.i.i.i84.i.i.i.i = phi { i64, ptr } [ %i.ew, %.loopexit.i.i.i86.i.i.i.i ], [ %i.ey, %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1036
  %i.ez = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i84.i.i.i.i, 0
  %i.fa = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i84.i.i.i.i, 1
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.064110.i.i.i.i ; 2 uses
  store i64 %i.ez, ptr %i.fb, align 8, !alias.scope !1034, !noalias !1031
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fa, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1034, !noalias !1031
  %i.fc = add nuw i64 %.064110.i.i.i.i, 1         ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.fc, %i.c
  br i1 %exitcond122.not.i.i.i.i, label %_ZN6duckdb13UnaryExecutor13ExecuteStringINS_8string_tES2_NS_12_GLOBAL__N_120NFCNormalizeOperatorEEEvRNS_6VectorES6_m.exit, label %bb.y, !llvm.loop !1041

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ac unwind label %bb.be

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.ad unwind label %bb.be

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ae unwind label %bb.bf

bb.ae:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !67 ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !89 ; 3 uses
  %i.fh = load ptr, ptr %9, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !68, !noalias !1049
  %.not.i.i61.i.i.i = icmp eq ptr %i.fk, null
  %.not59.i.i.i.i = icmp eq i64 %i.c, 0           ; 2 uses
  br i1 %.not.i.i61.i.i.i, label %.preheader.i78.i.i.i, label %.preheader53.i.i.i.i

.preheader53.i.i.i.i:                             ; preds = %bb.ag
  br i1 %.not59.i.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb.exit.i.i.i, label %.lr.ph.i62.i.i.i

.lr.ph.i62.i.i.i:                                 ; preds = %.preheader53.i.i.i.i
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !107, !alias.scope !1047, !noalias !1050 ; 2 uses
  %.not.i34.i.i.i.i = icmp eq ptr %i.fl, null
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ai

.preheader.i78.i.i.i:                             ; preds = %bb.ag
  br i1 %.not59.i.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb.exit.i.i.i, label %.lr.ph57.i.i.i.i

.lr.ph57.i.i.i.i:                                 ; preds = %.preheader.i78.i.i.i
  %i.fp = load ptr, ptr %i.fh, align 8, !tbaa !107, !alias.scope !1047, !noalias !1050 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq ptr %i.fp, null
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br i1 %.not.i36.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i: ; preds = %.lr.ph57.i.i.i.i, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i
  %.03356.us.i.i.i.i = phi i64 [ %i.gm, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i ], [ 0, %.lr.ph57.i.i.i.i ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %.03356.us.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.us.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !1042, !noalias !1051 ; 5 uses
  %.sroa.2.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.2.0.copyload.us.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !7, !alias.scope !1042, !noalias !1051 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1049
  store i64 %.sroa.0.0.copyload.us.i.i.i.i, ptr %3, align 8, !noalias !1049
  store ptr %.sroa.2.0.copyload.us.i.i.i.i, ptr %i.fq, align 8, !noalias !1049
  %i.ft = trunc i64 %.sroa.0.0.copyload.us.i.i.i.i to i32
  %i.fu = icmp ult i32 %i.ft, 13
  %i.fv = select i1 %i.fu, ptr %i.fr, ptr %.sroa.2.0.copyload.us.i.i.i.i ; 3 uses
  %i.fw = and i64 %.sroa.0.0.copyload.us.i.i.i.i, 4294967295 ; 5 uses
  %i.fx = and i64 %.sroa.0.0.copyload.us.i.i.i.i, 4294967288 ; 2 uses
  %.not.i.i.i.i39.us.i.i.i.i116 = icmp samesign ult i64 %i.fw, 8
  br i1 %.not.i.i.i.i39.us.i.i.i.i116, label %.preheader.i.i.i.i44.us.i.i.i.i, label %.lr.ph118

bb.ah:                                            ; preds = %.lr.ph118
  %i.fy = add nuw nsw i64 %i.fz, 8                ; 2 uses
  %.not.i.i.i.i39.us.i.i.i.i = icmp samesign ugt i64 %i.fy, %i.fw
  br i1 %.not.i.i.i.i39.us.i.i.i.i, label %.preheader.i.i.i.i44.us.i.i.i.i, label %.lr.ph118, !llvm.loop !1029

.lr.ph118:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i, %bb.ah
  %i.fz = phi i64 [ %i.fy, %bb.ah ], [ 8, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i38.us.i.i.i.i117 = phi i64 [ %i.fz, %bb.ah ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.0.i.i.i.i38.us.i.i.i.i117
  %.0.copyload.i.i.i.i.i40.us.i.i.i.i = load i64, ptr %i.ga, align 1, !noalias !1049
  %i.gb = and i64 %.0.copyload.i.i.i.i.i40.us.i.i.i.i, -9187201950435737472
  %.not13.i.i.i.i41.us.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not13.i.i.i.i41.us.i.i.i.i, label %bb.ah, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i, !llvm.loop !1029

.preheader.i.i.i.i44.us.i.i.i.i:                  ; preds = %bb.ah, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i
  %i.gc = icmp samesign ult i64 %i.fx, %i.fw
  br i1 %i.gc, label %.lr.ph.i.i.i.i46.us.i.i.i.i, label %.loopexit.i.i.i45.us.i.i.i.i

.lr.ph.i.i.i.i46.us.i.i.i.i:                      ; preds = %.preheader.i.i.i.i44.us.i.i.i.i, %10
  %.116.i.i.i.i47.us.i.i.i.i = phi i64 [ %11, %10 ], [ %i.fx, %.preheader.i.i.i.i44.us.i.i.i.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.116.i.i.i.i47.us.i.i.i.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !7, !noalias !1049
  %.not12.i.i.i.i48.us.i.i.i.i = icmp sgt i8 %i.ge, -1
  br i1 %.not12.i.i.i.i48.us.i.i.i.i, label %10, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i

10:                                               ; preds = %.lr.ph.i.i.i.i46.us.i.i.i.i
  %11 = add i64 %.116.i.i.i.i47.us.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i49.us.i.i.i.i = icmp eq i64 %11, %i.fw
  br i1 %exitcond.not.i.i.i.i49.us.i.i.i.i, label %.loopexit.i.i.i45.us.i.i.i.i, label %.lr.ph.i.i.i.i46.us.i.i.i.i, !llvm.loop !1030

_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i:  ; preds = %.lr.ph118, %.lr.ph.i.i.i.i46.us.i.i.i.i
  %i.gf = invoke noundef ptr @_ZN6duckdb8Utf8Proc9NormalizeEPKcm(ptr noundef nonnull %i.fv, i64 noundef %i.fw)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i ; 2 uses

.noexc.i.i.i:                                     ; preds = %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i
  %i.gg = invoke { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.gf)
          to label %.noexc83.i.i.i unwind label %.loopexit.i.i.i

.noexc83.i.i.i:                                   ; preds = %.noexc.i.i.i
  call void @free(ptr noundef %i.gf) #28, !noalias !1049
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i

.loopexit.i.i.i45.us.i.i.i.i:                     ; preds = %10, %.preheader.i.i.i.i44.us.i.i.i.i
  %i.gh = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.us.i.i.i.i, 0
  %i.gi = insertvalue { i64, ptr } %i.gh, ptr %.sroa.2.0.copyload.us.i.i.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i

_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i: ; preds = %.loopexit.i.i.i45.us.i.i.i.i, %.noexc83.i.i.i
  %.fca.1.insert.merged.i.i.i43.us.i.i.i.i = phi { i64, ptr } [ %i.gi, %.loopexit.i.i.i45.us.i.i.i.i ], [ %i.gg, %.noexc83.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1049
  %i.gj = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i43.us.i.i.i.i, 0
  %i.gk = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i43.us.i.i.i.i, 1
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %.03356.us.i.i.i.i ; 2 uses
  store i64 %i.gj, ptr %i.gl, align 8, !alias.scope !1045, !noalias !1052
  %.sroa.4.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.gk, ptr %.sroa.4.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !7, !alias.scope !1045, !noalias !1052
  %i.gm = add nuw i64 %.03356.us.i.i.i.i, 1       ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.gm, %i.c
  br i1 %exitcond66.not.i.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb.exit.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i, !llvm.loop !1053

bb.ai:                                            ; preds = %bb.ap, %.lr.ph.i62.i.i.i
  %.055.i.i.i.i = phi i64 [ 0, %.lr.ph.i62.i.i.i ], [ %i.id, %bb.ap ] ; 6 uses
  br i1 %.not.i34.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.055.i.i.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3, !noalias !1049
  %i.gp = zext i32 %i.go to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %i.gq = phi i64 [ %i.gp, %bb.aj ], [ %.055.i.i.i.i, %bb.ai ] ; 3 uses
  %i.gr = lshr i64 %i.gq, 6
  %i.gs = and i64 %i.gq, 63
  %i.gt = load ptr, ptr %i.fj, align 8, !tbaa !68, !noalias !1049
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !69, !noalias !1049
  %i.gw = shl nuw i64 1, %i.gs
  %i.gx = and i64 %i.gv, %i.gw
  %.not.i63.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i63.i.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.gq ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i = load i64, ptr %i.gy, align 8, !alias.scope !1042, !noalias !1051 ; 5 uses
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.28.0.copyload.i.i.i.i = load ptr, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1042, !noalias !1051 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1049
  store i64 %.sroa.07.0.copyload.i.i.i.i, ptr %4, align 8, !noalias !1049
  store ptr %.sroa.28.0.copyload.i.i.i.i, ptr %i.fm, align 8, !noalias !1049
  %i.gz = trunc i64 %.sroa.07.0.copyload.i.i.i.i to i32
  %i.ha = icmp ult i32 %i.gz, 13
  %i.hb = select i1 %i.ha, ptr %i.fn, ptr %.sroa.28.0.copyload.i.i.i.i ; 3 uses
  %i.hc = and i64 %.sroa.07.0.copyload.i.i.i.i, 4294967295 ; 5 uses
  %i.hd = and i64 %.sroa.07.0.copyload.i.i.i.i, 4294967288 ; 2 uses
  %.not.i.i.i.i.i65.i.i.i110 = icmp samesign ult i64 %i.hc, 8
  br i1 %.not.i.i.i.i.i65.i.i.i110, label %.preheader.i.i.i.i.i72.i.i.i, label %.lr.ph112

bb.al:                                            ; preds = %.lr.ph112
  %i.he = add nuw nsw i64 %i.hg, 8                ; 2 uses
  %.not.i.i.i.i.i65.i.i.i = icmp samesign ugt i64 %i.he, %i.hc
  br i1 %.not.i.i.i.i.i65.i.i.i, label %.preheader.i.i.i.i.i72.i.i.i, label %.lr.ph112, !llvm.loop !1029

.preheader.i.i.i.i.i72.i.i.i:                     ; preds = %bb.al, %bb.ak
  %i.hf = icmp samesign ult i64 %i.hd, %i.hc
  br i1 %i.hf, label %.lr.ph.i.i.i.i.i74.i.i.i, label %.loopexit.i.i.i.i73.i.i.i

.lr.ph112:                                        ; preds = %bb.ak, %bb.al
  %i.hg = phi i64 [ %i.he, %bb.al ], [ 8, %bb.ak ] ; 2 uses
  %.0.i.i.i.i.i64.i.i.i111 = phi i64 [ %i.hg, %bb.al ], [ 0, %bb.ak ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.i.i.i.i.i64.i.i.i111
  %.0.copyload.i.i.i.i.i.i66.i.i.i = load i64, ptr %i.hh, align 1, !noalias !1049
  %i.hi = and i64 %.0.copyload.i.i.i.i.i.i66.i.i.i, -9187201950435737472
  %.not13.i.i.i.i.i67.i.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not13.i.i.i.i.i67.i.i.i, label %bb.al, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i, !llvm.loop !1029

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i74.i.i.i
  %i.hj = add i64 %.116.i.i.i.i.i75.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i77.i.i.i = icmp eq i64 %i.hj, %i.hc
  br i1 %exitcond.not.i.i.i.i.i77.i.i.i, label %.loopexit.i.i.i.i73.i.i.i, label %.lr.ph.i.i.i.i.i74.i.i.i, !llvm.loop !1030

.lr.ph.i.i.i.i.i74.i.i.i:                         ; preds = %.preheader.i.i.i.i.i72.i.i.i, %bb.am
  %.116.i.i.i.i.i75.i.i.i = phi i64 [ %i.hj, %bb.am ], [ %i.hd, %.preheader.i.i.i.i.i72.i.i.i ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.116.i.i.i.i.i75.i.i.i
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !7, !noalias !1049
  %.not12.i.i.i.i.i76.i.i.i = icmp sgt i8 %i.hl, -1
  br i1 %.not12.i.i.i.i.i76.i.i.i, label %bb.am, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i

.loopexit.i.i.i.i73.i.i.i:                        ; preds = %bb.am, %.preheader.i.i.i.i.i72.i.i.i
  %i.hm = insertvalue { i64, ptr } poison, i64 %.sroa.07.0.copyload.i.i.i.i, 0
  %i.hn = insertvalue { i64, ptr } %i.hm, ptr %.sroa.28.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i69.i.i.i

_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i:     ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i74.i.i.i
  %i.ho = invoke noundef ptr @_ZN6duckdb8Utf8Proc9NormalizeEPKcm(ptr noundef nonnull %i.hb, i64 noundef %i.hc)
          to label %.noexc84.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ; 2 uses

.noexc84.i.i.i:                                   ; preds = %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i
  %i.hp = invoke { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.ho)
          to label %.noexc85.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i

.noexc85.i.i.i:                                   ; preds = %.noexc84.i.i.i
  call void @free(ptr noundef %i.ho) #28, !noalias !1049
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i69.i.i.i

_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i69.i.i.i: ; preds = %.noexc85.i.i.i, %.loopexit.i.i.i.i73.i.i.i
  %.fca.1.insert.merged.i.i.i.i70.i.i.i = phi { i64, ptr } [ %i.hn, %.loopexit.i.i.i.i73.i.i.i ], [ %i.hp, %.noexc85.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1049
  %i.hq = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i.i70.i.i.i, 0
  %i.hr = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i.i70.i.i.i, 1
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %.055.i.i.i.i ; 2 uses
  store i64 %i.hq, ptr %i.hs, align 8, !alias.scope !1045, !noalias !1052
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.hr, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1045, !noalias !1052
  br label %bb.ap

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i
  %i.ht = load ptr, ptr %i.fi, align 8, !tbaa !68, !noalias !1049 ; 2 uses
  %.not.i35.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i35.i.i.i.i, label %bb.ao, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hu = load i64, ptr %i.fo, align 8, !tbaa !84, !noalias !1049
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, i64 noundef %i.hu)
          to label %.noexc86.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i

.noexc86.i.i.i:                                   ; preds = %bb.ao
  %.pre.i.i.i.i.i = load ptr, ptr %i.fi, align 8, !tbaa !68, !noalias !1049
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i: ; preds = %.noexc86.i.i.i, %bb.an
  %i.hv = phi ptr [ %.pre.i.i.i.i.i, %.noexc86.i.i.i ], [ %i.ht, %bb.an ]
  %i.hw = lshr i64 %.055.i.i.i.i, 6
  %i.hx = and i64 %.055.i.i.i.i, 63
  %i.hy = shl nuw i64 1, %i.hx
  %i.hz = xor i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hw ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !69, !noalias !1049
  %i.ic = and i64 %i.ib, %i.hz
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !69, !noalias !1049
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i69.i.i.i
  %i.id = add nuw i64 %.055.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i71.i.i.i = icmp eq i64 %i.id, %i.c
  br i1 %exitcond.not.i71.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb.exit.i.i.i, label %bb.ai, !llvm.loop !1054

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i: ; preds = %.lr.ph57.i.i.i.i, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.i.i.i.i
  %.03356.i.i.i.i = phi i64 [ %i.jc, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.i.i.i.i ], [ 0, %.lr.ph57.i.i.i.i ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.03356.i.i.i.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3, !noalias !1049
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ig ; 2 uses
  %.sroa.0.0.copyload.i79.i.i.i = load i64, ptr %i.ih, align 8, !alias.scope !1042, !noalias !1051 ; 5 uses
  %.sroa.2.0..sroa_idx.i80.i.i.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.sroa.2.0.copyload.i81.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i80.i.i.i, align 8, !tbaa !7, !alias.scope !1042, !noalias !1051 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1049
  store i64 %.sroa.0.0.copyload.i79.i.i.i, ptr %3, align 8, !noalias !1049
  store ptr %.sroa.2.0.copyload.i81.i.i.i, ptr %i.fq, align 8, !noalias !1049
  %i.ii = trunc i64 %.sroa.0.0.copyload.i79.i.i.i to i32
  %i.ij = icmp ult i32 %i.ii, 13
  %i.ik = select i1 %i.ij, ptr %i.fr, ptr %.sroa.2.0.copyload.i81.i.i.i ; 3 uses
  %i.il = and i64 %.sroa.0.0.copyload.i79.i.i.i, 4294967295 ; 5 uses
  %i.im = and i64 %.sroa.0.0.copyload.i79.i.i.i, 4294967288 ; 2 uses
  %.not.i.i.i.i39.i.i.i.i113 = icmp samesign ult i64 %i.il, 8
  br i1 %.not.i.i.i.i39.i.i.i.i113, label %.preheader.i.i.i.i44.i.i.i.i, label %.lr.ph115

bb.aq:                                            ; preds = %.lr.ph115
  %i.in = add nuw nsw i64 %i.ip, 8                ; 2 uses
  %.not.i.i.i.i39.i.i.i.i = icmp samesign ugt i64 %i.in, %i.il
  br i1 %.not.i.i.i.i39.i.i.i.i, label %.preheader.i.i.i.i44.i.i.i.i, label %.lr.ph115, !llvm.loop !1029

.preheader.i.i.i.i44.i.i.i.i:                     ; preds = %bb.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i
  %i.io = icmp samesign ult i64 %i.im, %i.il
  br i1 %i.io, label %.lr.ph.i.i.i.i46.i.i.i.i, label %.loopexit.i.i.i45.i.i.i.i

.lr.ph115:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i, %bb.aq
  %i.ip = phi i64 [ %i.in, %bb.aq ], [ 8, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i38.i.i.i.i114 = phi i64 [ %i.ip, %bb.aq ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0.i.i.i.i38.i.i.i.i114
  %.0.copyload.i.i.i.i.i40.i.i.i.i = load i64, ptr %i.iq, align 1, !noalias !1049
  %i.ir = and i64 %.0.copyload.i.i.i.i.i40.i.i.i.i, -9187201950435737472
  %.not13.i.i.i.i41.i.i.i.i = icmp eq i64 %i.ir, 0
  br i1 %.not13.i.i.i.i41.i.i.i.i, label %bb.aq, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.i.i.i.i, !llvm.loop !1029

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i46.i.i.i.i
  %i.is = add i64 %.116.i.i.i.i47.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i49.i.i.i.i = icmp eq i64 %i.is, %i.il
  br i1 %exitcond.not.i.i.i.i49.i.i.i.i, label %.loopexit.i.i.i45.i.i.i.i, label %.lr.ph.i.i.i.i46.i.i.i.i, !llvm.loop !1030

.lr.ph.i.i.i.i46.i.i.i.i:                         ; preds = %.preheader.i.i.i.i44.i.i.i.i, %bb.ar
  %.116.i.i.i.i47.i.i.i.i = phi i64 [ %i.is, %bb.ar ], [ %i.im, %.preheader.i.i.i.i44.i.i.i.i ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.116.i.i.i.i47.i.i.i.i
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !7, !noalias !1049
  %.not12.i.i.i.i48.i.i.i.i = icmp sgt i8 %i.iu, -1
  br i1 %.not12.i.i.i.i48.i.i.i.i, label %bb.ar, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.i.i.i.i

.loopexit.i.i.i45.i.i.i.i:                        ; preds = %bb.ar, %.preheader.i.i.i.i44.i.i.i.i
  %i.iv = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.i79.i.i.i, 0
  %i.iw = insertvalue { i64, ptr } %i.iv, ptr %.sroa.2.0.copyload.i81.i.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120NFCNormalizeOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN6duckdb12_GLOBAL__N_120StripAccentsFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i70.i.i.i.i:     ; preds = %.lr.ph, %.lr.ph.i.i.i.i74.i.i.i.i
  %i.ea = call noundef ptr @_ZN6duckdb23utf8proc_remove_accentsEPKhl(ptr noundef nonnull %i.dn, i64 noundef %i.do), !noalias !1912 ; 2 uses
  %i.eb = call { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.ea), !noalias !1912
  call void @free(ptr noundef %i.ea) #28, !noalias !1912
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit78.i.i.i.i

_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit78.i.i.i.i: ; preds = %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i70.i.i.i.i, %.loopexit.i.i.i73.i.i.i.i
  %.fca.1.insert.merged.i.i.i71.i.i.i.i = phi { i64, ptr } [ %i.dz, %.loopexit.i.i.i73.i.i.i.i ], [ %i.eb, %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i70.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1912
  %i.ec = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i71.i.i.i.i, 0
  %i.ed = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i71.i.i.i.i, 1
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.2104.i.i.i.i ; 2 uses
  store i64 %i.ec, ptr %i.ee, align 8, !alias.scope !1910, !noalias !1907
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ed, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1910, !noalias !1907
  br label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit78.i.i.i.i, %.lr.ph105.i.i.i.i
  %i.ef = add nuw i64 %.2104.i.i.i.i, 1           ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i64 %i.ef, %i.ch
  br i1 %exitcond120.not.i.i.i.i, label %.loopexit99.i.i.i.i, label %.lr.ph105.i.i.i.i, !llvm.loop !1915

.loopexit99.i.i.i.i:                              ; preds = %bb.x, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i.i, %.preheader98.i.i.i.i, %.preheader100.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.ch, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.ci, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i.i.i.i ], [ %.0108.i.i.i.i, %.preheader98.i.i.i.i ], [ %.0108.i.i.i.i, %.preheader100.i.i.i.i ], [ %i.ch, %bb.x ]
  %i.eg = add nuw nsw i64 %.063107.i.i.i.i, 1     ; 2 uses
  %exitcond121.not.i.i.i.i = icmp eq i64 %i.eg, %i.bw
  br i1 %exitcond121.not.i.i.i.i, label %_ZN6duckdb13UnaryExecutor13ExecuteStringINS_8string_tES2_NS_12_GLOBAL__N_120StripAccentsOperatorEEEvRNS_6VectorES6_m.exit, label %bb.r, !llvm.loop !1916

bb.y:                                             ; preds = %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i, %.lr.ph111.i.i.i.i
  %.064110.i.i.i.i = phi i64 [ 0, %.lr.ph111.i.i.i.i ], [ %i.fc, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.064110.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.eh, align 8, !alias.scope !1907, !noalias !1910 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1907, !noalias !1910 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1912
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %5, align 8, !noalias !1912
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %i.an, align 8, !noalias !1912
  %i.ei = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.ej = icmp ult i32 %i.ei, 13
  %i.ek = select i1 %i.ej, ptr %i.ao, ptr %.sroa.2.0.copyload.i.i.i.i ; 3 uses
  %i.el = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967295 ; 5 uses
  %i.em = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967288 ; 2 uses
  %.not.i.i.i.i80.i.i.i.i104 = icmp samesign ult i64 %i.el, 8
  br i1 %.not.i.i.i.i80.i.i.i.i104, label %.preheader.i.i.i.i85.i.i.i.i, label %.lr.ph106

bb.z:                                             ; preds = %.lr.ph106
  %i.en = add nuw nsw i64 %i.ep, 8                ; 2 uses
  %.not.i.i.i.i80.i.i.i.i = icmp samesign ugt i64 %i.en, %i.el
  br i1 %.not.i.i.i.i80.i.i.i.i, label %.preheader.i.i.i.i85.i.i.i.i, label %.lr.ph106, !llvm.loop !1029

.preheader.i.i.i.i85.i.i.i.i:                     ; preds = %bb.z, %bb.y
  %i.eo = icmp samesign ult i64 %i.em, %i.el
  br i1 %i.eo, label %.lr.ph.i.i.i.i87.i.i.i.i, label %.loopexit.i.i.i86.i.i.i.i

.lr.ph106:                                        ; preds = %bb.y, %bb.z
  %i.ep = phi i64 [ %i.en, %bb.z ], [ 8, %bb.y ]  ; 2 uses
  %.0.i.i.i.i79.i.i.i.i105 = phi i64 [ %i.ep, %bb.z ], [ 0, %bb.y ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.0.i.i.i.i79.i.i.i.i105
  %.0.copyload.i.i.i.i.i81.i.i.i.i = load i64, ptr %i.eq, align 1, !noalias !1912
  %i.er = and i64 %.0.copyload.i.i.i.i.i81.i.i.i.i, -9187201950435737472
  %.not13.i.i.i.i82.i.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not13.i.i.i.i82.i.i.i.i, label %bb.z, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i, !llvm.loop !1029

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i87.i.i.i.i
  %i.es = add i64 %.116.i.i.i.i88.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i90.i.i.i.i = icmp eq i64 %i.es, %i.el
  br i1 %exitcond.not.i.i.i.i90.i.i.i.i, label %.loopexit.i.i.i86.i.i.i.i, label %.lr.ph.i.i.i.i87.i.i.i.i, !llvm.loop !1030

.lr.ph.i.i.i.i87.i.i.i.i:                         ; preds = %.preheader.i.i.i.i85.i.i.i.i, %bb.aa
  %.116.i.i.i.i88.i.i.i.i = phi i64 [ %i.es, %bb.aa ], [ %i.em, %.preheader.i.i.i.i85.i.i.i.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.116.i.i.i.i88.i.i.i.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !7, !noalias !1912
  %.not12.i.i.i.i89.i.i.i.i = icmp sgt i8 %i.eu, -1
  br i1 %.not12.i.i.i.i89.i.i.i.i, label %bb.aa, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i

.loopexit.i.i.i86.i.i.i.i:                        ; preds = %bb.aa, %.preheader.i.i.i.i85.i.i.i.i
  %i.ev = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.ew = insertvalue { i64, ptr } %i.ev, ptr %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i

_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i:     ; preds = %.lr.ph106, %.lr.ph.i.i.i.i87.i.i.i.i
  %i.ex = call noundef ptr @_ZN6duckdb23utf8proc_remove_accentsEPKhl(ptr noundef nonnull %i.ek, i64 noundef %i.el), !noalias !1912 ; 2 uses
  %i.ey = call { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.ex), !noalias !1912
  call void @free(ptr noundef %i.ex) #28, !noalias !1912
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i

_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit91.i.i.i.i: ; preds = %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i, %.loopexit.i.i.i86.i.i.i.i
  %.fca.1.insert.merged.i.i.i84.i.i.i.i = phi { i64, ptr } [ %i.ew, %.loopexit.i.i.i86.i.i.i.i ], [ %i.ey, %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i83.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1912
  %i.ez = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i84.i.i.i.i, 0
  %i.fa = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i84.i.i.i.i, 1
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.064110.i.i.i.i ; 2 uses
  store i64 %i.ez, ptr %i.fb, align 8, !alias.scope !1910, !noalias !1907
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fa, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1910, !noalias !1907
  %i.fc = add nuw i64 %.064110.i.i.i.i, 1         ; 2 uses
  %exitcond122.not.i.i.i.i = icmp eq i64 %i.fc, %i.c
  br i1 %exitcond122.not.i.i.i.i, label %_ZN6duckdb13UnaryExecutor13ExecuteStringINS_8string_tES2_NS_12_GLOBAL__N_120StripAccentsOperatorEEEvRNS_6VectorES6_m.exit, label %bb.y, !llvm.loop !1917

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.ac unwind label %bb.be

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.ad unwind label %bb.be

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ae unwind label %bb.bf

bb.ae:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !67 ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !89 ; 3 uses
  %i.fh = load ptr, ptr %9, align 8, !tbaa !98    ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  call void @llvm.experimental.noalias.scope.decl(metadata !1921)
  call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !68, !noalias !1925
  %.not.i.i61.i.i.i = icmp eq ptr %i.fk, null
  %.not59.i.i.i.i = icmp eq i64 %i.c, 0           ; 2 uses
  br i1 %.not.i.i61.i.i.i, label %.preheader.i78.i.i.i, label %.preheader53.i.i.i.i

.preheader53.i.i.i.i:                             ; preds = %bb.ag
  br i1 %.not59.i.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb.exit.i.i.i, label %.lr.ph.i62.i.i.i

.lr.ph.i62.i.i.i:                                 ; preds = %.preheader53.i.i.i.i
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !107, !alias.scope !1923, !noalias !1926 ; 2 uses
  %.not.i34.i.i.i.i = icmp eq ptr %i.fl, null
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ai

.preheader.i78.i.i.i:                             ; preds = %bb.ag
  br i1 %.not59.i.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb.exit.i.i.i, label %.lr.ph57.i.i.i.i

.lr.ph57.i.i.i.i:                                 ; preds = %.preheader.i78.i.i.i
  %i.fp = load ptr, ptr %i.fh, align 8, !tbaa !107, !alias.scope !1923, !noalias !1926 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq ptr %i.fp, null
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br i1 %.not.i36.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i: ; preds = %.lr.ph57.i.i.i.i, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i
  %.03356.us.i.i.i.i = phi i64 [ %i.gm, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i ], [ 0, %.lr.ph57.i.i.i.i ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %.03356.us.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.us.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !1918, !noalias !1927 ; 5 uses
  %.sroa.2.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.sroa.2.0.copyload.us.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !7, !alias.scope !1918, !noalias !1927 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1925
  store i64 %.sroa.0.0.copyload.us.i.i.i.i, ptr %3, align 8, !noalias !1925
  store ptr %.sroa.2.0.copyload.us.i.i.i.i, ptr %i.fq, align 8, !noalias !1925
  %i.ft = trunc i64 %.sroa.0.0.copyload.us.i.i.i.i to i32
  %i.fu = icmp ult i32 %i.ft, 13
  %i.fv = select i1 %i.fu, ptr %i.fr, ptr %.sroa.2.0.copyload.us.i.i.i.i ; 3 uses
  %i.fw = and i64 %.sroa.0.0.copyload.us.i.i.i.i, 4294967295 ; 5 uses
  %i.fx = and i64 %.sroa.0.0.copyload.us.i.i.i.i, 4294967288 ; 2 uses
  %.not.i.i.i.i39.us.i.i.i.i116 = icmp samesign ult i64 %i.fw, 8
  br i1 %.not.i.i.i.i39.us.i.i.i.i116, label %.preheader.i.i.i.i44.us.i.i.i.i, label %.lr.ph118

bb.ah:                                            ; preds = %.lr.ph118
  %i.fy = add nuw nsw i64 %i.fz, 8                ; 2 uses
  %.not.i.i.i.i39.us.i.i.i.i = icmp samesign ugt i64 %i.fy, %i.fw
  br i1 %.not.i.i.i.i39.us.i.i.i.i, label %.preheader.i.i.i.i44.us.i.i.i.i, label %.lr.ph118, !llvm.loop !1029

.lr.ph118:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i, %bb.ah
  %i.fz = phi i64 [ %i.fy, %bb.ah ], [ 8, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i38.us.i.i.i.i117 = phi i64 [ %i.fz, %bb.ah ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.0.i.i.i.i38.us.i.i.i.i117
  %.0.copyload.i.i.i.i.i40.us.i.i.i.i = load i64, ptr %i.ga, align 1, !noalias !1925
  %i.gb = and i64 %.0.copyload.i.i.i.i.i40.us.i.i.i.i, -9187201950435737472
  %.not13.i.i.i.i41.us.i.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not13.i.i.i.i41.us.i.i.i.i, label %bb.ah, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i, !llvm.loop !1029

.preheader.i.i.i.i44.us.i.i.i.i:                  ; preds = %bb.ah, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i
  %i.gc = icmp samesign ult i64 %i.fx, %i.fw
  br i1 %i.gc, label %.lr.ph.i.i.i.i46.us.i.i.i.i, label %.loopexit.i.i.i45.us.i.i.i.i

.lr.ph.i.i.i.i46.us.i.i.i.i:                      ; preds = %.preheader.i.i.i.i44.us.i.i.i.i, %10
  %.116.i.i.i.i47.us.i.i.i.i = phi i64 [ %11, %10 ], [ %i.fx, %.preheader.i.i.i.i44.us.i.i.i.i ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.116.i.i.i.i47.us.i.i.i.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !7, !noalias !1925
  %.not12.i.i.i.i48.us.i.i.i.i = icmp sgt i8 %i.ge, -1
  br i1 %.not12.i.i.i.i48.us.i.i.i.i, label %10, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i

10:                                               ; preds = %.lr.ph.i.i.i.i46.us.i.i.i.i
  %11 = add i64 %.116.i.i.i.i47.us.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i49.us.i.i.i.i = icmp eq i64 %11, %i.fw
  br i1 %exitcond.not.i.i.i.i49.us.i.i.i.i, label %.loopexit.i.i.i45.us.i.i.i.i, label %.lr.ph.i.i.i.i46.us.i.i.i.i, !llvm.loop !1030

_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i:  ; preds = %.lr.ph118, %.lr.ph.i.i.i.i46.us.i.i.i.i
  %i.gf = invoke noundef ptr @_ZN6duckdb23utf8proc_remove_accentsEPKhl(ptr noundef nonnull %i.fv, i64 noundef %i.fw)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i ; 2 uses

.noexc.i.i.i:                                     ; preds = %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.us.i.i.i.i
  %i.gg = invoke { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.gf)
          to label %.noexc83.i.i.i unwind label %.loopexit.i.i.i

.noexc83.i.i.i:                                   ; preds = %.noexc.i.i.i
  call void @free(ptr noundef %i.gf) #28, !noalias !1925
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i

.loopexit.i.i.i45.us.i.i.i.i:                     ; preds = %10, %.preheader.i.i.i.i44.us.i.i.i.i
  %i.gh = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.us.i.i.i.i, 0
  %i.gi = insertvalue { i64, ptr } %i.gh, ptr %.sroa.2.0.copyload.us.i.i.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i

_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.us.i.i.i.i: ; preds = %.loopexit.i.i.i45.us.i.i.i.i, %.noexc83.i.i.i
  %.fca.1.insert.merged.i.i.i43.us.i.i.i.i = phi { i64, ptr } [ %i.gi, %.loopexit.i.i.i45.us.i.i.i.i ], [ %i.gg, %.noexc83.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1925
  %i.gj = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i43.us.i.i.i.i, 0
  %i.gk = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i43.us.i.i.i.i, 1
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %.03356.us.i.i.i.i ; 2 uses
  store i64 %i.gj, ptr %i.gl, align 8, !alias.scope !1921, !noalias !1928
  %.sroa.4.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.gk, ptr %.sroa.4.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !7, !alias.scope !1921, !noalias !1928
  %i.gm = add nuw i64 %.03356.us.i.i.i.i, 1       ; 2 uses
  %exitcond66.not.i.i.i.i = icmp eq i64 %i.gm, %i.c
  br i1 %exitcond66.not.i.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb.exit.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.i.i, !llvm.loop !1929

bb.ai:                                            ; preds = %bb.ap, %.lr.ph.i62.i.i.i
  %.055.i.i.i.i = phi i64 [ 0, %.lr.ph.i62.i.i.i ], [ %i.id, %bb.ap ] ; 6 uses
  br i1 %.not.i34.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.055.i.i.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3, !noalias !1925
  %i.gp = zext i32 %i.go to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %i.gq = phi i64 [ %i.gp, %bb.aj ], [ %.055.i.i.i.i, %bb.ai ] ; 3 uses
  %i.gr = lshr i64 %i.gq, 6
  %i.gs = and i64 %i.gq, 63
  %i.gt = load ptr, ptr %i.fj, align 8, !tbaa !68, !noalias !1925
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !69, !noalias !1925
  %i.gw = shl nuw i64 1, %i.gs
  %i.gx = and i64 %i.gv, %i.gw
  %.not.i63.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i63.i.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.gq ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i = load i64, ptr %i.gy, align 8, !alias.scope !1918, !noalias !1927 ; 5 uses
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.sroa.28.0.copyload.i.i.i.i = load ptr, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1918, !noalias !1927 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1925
  store i64 %.sroa.07.0.copyload.i.i.i.i, ptr %4, align 8, !noalias !1925
  store ptr %.sroa.28.0.copyload.i.i.i.i, ptr %i.fm, align 8, !noalias !1925
  %i.gz = trunc i64 %.sroa.07.0.copyload.i.i.i.i to i32
  %i.ha = icmp ult i32 %i.gz, 13
  %i.hb = select i1 %i.ha, ptr %i.fn, ptr %.sroa.28.0.copyload.i.i.i.i ; 3 uses
  %i.hc = and i64 %.sroa.07.0.copyload.i.i.i.i, 4294967295 ; 5 uses
  %i.hd = and i64 %.sroa.07.0.copyload.i.i.i.i, 4294967288 ; 2 uses
  %.not.i.i.i.i.i65.i.i.i110 = icmp samesign ult i64 %i.hc, 8
  br i1 %.not.i.i.i.i.i65.i.i.i110, label %.preheader.i.i.i.i.i72.i.i.i, label %.lr.ph112

bb.al:                                            ; preds = %.lr.ph112
  %i.he = add nuw nsw i64 %i.hg, 8                ; 2 uses
  %.not.i.i.i.i.i65.i.i.i = icmp samesign ugt i64 %i.he, %i.hc
  br i1 %.not.i.i.i.i.i65.i.i.i, label %.preheader.i.i.i.i.i72.i.i.i, label %.lr.ph112, !llvm.loop !1029

.preheader.i.i.i.i.i72.i.i.i:                     ; preds = %bb.al, %bb.ak
  %i.hf = icmp samesign ult i64 %i.hd, %i.hc
  br i1 %i.hf, label %.lr.ph.i.i.i.i.i74.i.i.i, label %.loopexit.i.i.i.i73.i.i.i

.lr.ph112:                                        ; preds = %bb.ak, %bb.al
  %i.hg = phi i64 [ %i.he, %bb.al ], [ 8, %bb.ak ] ; 2 uses
  %.0.i.i.i.i.i64.i.i.i111 = phi i64 [ %i.hg, %bb.al ], [ 0, %bb.ak ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.i.i.i.i.i64.i.i.i111
  %.0.copyload.i.i.i.i.i.i66.i.i.i = load i64, ptr %i.hh, align 1, !noalias !1925
  %i.hi = and i64 %.0.copyload.i.i.i.i.i.i66.i.i.i, -9187201950435737472
  %.not13.i.i.i.i.i67.i.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not13.i.i.i.i.i67.i.i.i, label %bb.al, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i, !llvm.loop !1029

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i74.i.i.i
  %i.hj = add i64 %.116.i.i.i.i.i75.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i77.i.i.i = icmp eq i64 %i.hj, %i.hc
  br i1 %exitcond.not.i.i.i.i.i77.i.i.i, label %.loopexit.i.i.i.i73.i.i.i, label %.lr.ph.i.i.i.i.i74.i.i.i, !llvm.loop !1030

.lr.ph.i.i.i.i.i74.i.i.i:                         ; preds = %.preheader.i.i.i.i.i72.i.i.i, %bb.am
  %.116.i.i.i.i.i75.i.i.i = phi i64 [ %i.hj, %bb.am ], [ %i.hd, %.preheader.i.i.i.i.i72.i.i.i ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.116.i.i.i.i.i75.i.i.i
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !7, !noalias !1925
  %.not12.i.i.i.i.i76.i.i.i = icmp sgt i8 %i.hl, -1
  br i1 %.not12.i.i.i.i.i76.i.i.i, label %bb.am, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i

.loopexit.i.i.i.i73.i.i.i:                        ; preds = %bb.am, %.preheader.i.i.i.i.i72.i.i.i
  %i.hm = insertvalue { i64, ptr } poison, i64 %.sroa.07.0.copyload.i.i.i.i, 0
  %i.hn = insertvalue { i64, ptr } %i.hm, ptr %.sroa.28.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i69.i.i.i

_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i:     ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i74.i.i.i
  %i.ho = invoke noundef ptr @_ZN6duckdb23utf8proc_remove_accentsEPKhl(ptr noundef nonnull %i.hb, i64 noundef %i.hc)
          to label %.noexc84.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ; 2 uses

.noexc84.i.i.i:                                   ; preds = %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i.i68.i.i.i
  %i.hp = invoke { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorEPKc(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.ho)
          to label %.noexc85.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i

.noexc85.i.i.i:                                   ; preds = %.noexc84.i.i.i
  call void @free(ptr noundef %i.ho) #28, !noalias !1925
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i69.i.i.i

_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i69.i.i.i: ; preds = %.noexc85.i.i.i, %.loopexit.i.i.i.i73.i.i.i
  %.fca.1.insert.merged.i.i.i.i70.i.i.i = phi { i64, ptr } [ %i.hn, %.loopexit.i.i.i.i73.i.i.i ], [ %i.hp, %.noexc85.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1925
  %i.hq = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i.i70.i.i.i, 0
  %i.hr = extractvalue { i64, ptr } %.fca.1.insert.merged.i.i.i.i70.i.i.i, 1
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %.055.i.i.i.i ; 2 uses
  store i64 %i.hq, ptr %i.hs, align 8, !alias.scope !1921, !noalias !1928
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.hr, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !tbaa !7, !alias.scope !1921, !noalias !1928
  br label %bb.ap

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i
  %i.ht = load ptr, ptr %i.fi, align 8, !tbaa !68, !noalias !1925 ; 2 uses
  %.not.i35.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i35.i.i.i.i, label %bb.ao, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hu = load i64, ptr %i.fo, align 8, !tbaa !84, !noalias !1925
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, i64 noundef %i.hu)
          to label %.noexc86.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i

.noexc86.i.i.i:                                   ; preds = %bb.ao
  %.pre.i.i.i.i.i = load ptr, ptr %i.fi, align 8, !tbaa !68, !noalias !1925
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i: ; preds = %.noexc86.i.i.i, %bb.an
  %i.hv = phi ptr [ %.pre.i.i.i.i.i, %.noexc86.i.i.i ], [ %i.ht, %bb.an ]
  %i.hw = lshr i64 %.055.i.i.i.i, 6
  %i.hx = and i64 %.055.i.i.i.i, 63
  %i.hy = shl nuw i64 1, %i.hx
  %i.hz = xor i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hw ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !69, !noalias !1925
  %i.ic = and i64 %i.ib, %i.hz
  store i64 %i.ic, ptr %i.ia, align 8, !tbaa !69, !noalias !1925
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit.i69.i.i.i
  %i.id = add nuw i64 %.055.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i71.i.i.i = icmp eq i64 %i.id, %i.c
  br i1 %exitcond.not.i71.i.i.i, label %_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tES2_NS_19GenericUnaryWrapperENS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESH_Pvb.exit.i.i.i, label %bb.ai, !llvm.loop !1930

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i: ; preds = %.lr.ph57.i.i.i.i, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.i.i.i.i
  %.03356.i.i.i.i = phi i64 [ %i.jc, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.i.i.i.i ], [ 0, %.lr.ph57.i.i.i.i ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.03356.i.i.i.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !3, !noalias !1925
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ig ; 2 uses
  %.sroa.0.0.copyload.i79.i.i.i = load i64, ptr %i.ih, align 8, !alias.scope !1918, !noalias !1927 ; 5 uses
  %.sroa.2.0..sroa_idx.i80.i.i.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.sroa.2.0.copyload.i81.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i80.i.i.i, align 8, !tbaa !7, !alias.scope !1918, !noalias !1927 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1925
  store i64 %.sroa.0.0.copyload.i79.i.i.i, ptr %3, align 8, !noalias !1925
  store ptr %.sroa.2.0.copyload.i81.i.i.i, ptr %i.fq, align 8, !noalias !1925
  %i.ii = trunc i64 %.sroa.0.0.copyload.i79.i.i.i to i32
  %i.ij = icmp ult i32 %i.ii, 13
  %i.ik = select i1 %i.ij, ptr %i.fr, ptr %.sroa.2.0.copyload.i81.i.i.i ; 3 uses
  %i.il = and i64 %.sroa.0.0.copyload.i79.i.i.i, 4294967295 ; 5 uses
  %i.im = and i64 %.sroa.0.0.copyload.i79.i.i.i, 4294967288 ; 2 uses
  %.not.i.i.i.i39.i.i.i.i113 = icmp samesign ult i64 %i.il, 8
  br i1 %.not.i.i.i.i39.i.i.i.i113, label %.preheader.i.i.i.i44.i.i.i.i, label %.lr.ph115

bb.aq:                                            ; preds = %.lr.ph115
  %i.in = add nuw nsw i64 %i.ip, 8                ; 2 uses
  %.not.i.i.i.i39.i.i.i.i = icmp samesign ugt i64 %i.in, %i.il
  br i1 %.not.i.i.i.i39.i.i.i.i, label %.preheader.i.i.i.i44.i.i.i.i, label %.lr.ph115, !llvm.loop !1029

.preheader.i.i.i.i44.i.i.i.i:                     ; preds = %bb.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i
  %i.io = icmp samesign ult i64 %i.im, %i.il
  br i1 %i.io, label %.lr.ph.i.i.i.i46.i.i.i.i, label %.loopexit.i.i.i45.i.i.i.i

.lr.ph115:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i, %bb.aq
  %i.ip = phi i64 [ %i.in, %bb.aq ], [ 8, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i38.i.i.i.i114 = phi i64 [ %i.ip, %bb.aq ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.i.i ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0.i.i.i.i38.i.i.i.i114
  %.0.copyload.i.i.i.i.i40.i.i.i.i = load i64, ptr %i.iq, align 1, !noalias !1925
  %i.ir = and i64 %.0.copyload.i.i.i.i.i40.i.i.i.i, -9187201950435737472
  %.not13.i.i.i.i41.i.i.i.i = icmp eq i64 %i.ir, 0
  br i1 %.not13.i.i.i.i41.i.i.i.i, label %bb.aq, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.i.i.i.i, !llvm.loop !1029

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i46.i.i.i.i
  %i.is = add i64 %.116.i.i.i.i47.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i49.i.i.i.i = icmp eq i64 %i.is, %i.il
  br i1 %exitcond.not.i.i.i.i49.i.i.i.i, label %.loopexit.i.i.i45.i.i.i.i, label %.lr.ph.i.i.i.i46.i.i.i.i, !llvm.loop !1030

.lr.ph.i.i.i.i46.i.i.i.i:                         ; preds = %.preheader.i.i.i.i44.i.i.i.i, %bb.ar
  %.116.i.i.i.i47.i.i.i.i = phi i64 [ %i.is, %bb.ar ], [ %i.im, %.preheader.i.i.i.i44.i.i.i.i ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.116.i.i.i.i47.i.i.i.i
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !7, !noalias !1925
  %.not12.i.i.i.i48.i.i.i.i = icmp sgt i8 %i.iu, -1
  br i1 %.not12.i.i.i.i48.i.i.i.i, label %bb.ar, label %_ZN6duckdb7IsAsciiEPKcm.exit.i.i.i42.i.i.i.i

.loopexit.i.i.i45.i.i.i.i:                        ; preds = %bb.ar, %.preheader.i.i.i.i44.i.i.i.i
  %i.iv = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.copyload.i79.i.i.i, 0
  %i.iw = insertvalue { i64, ptr } %i.iv, ptr %.sroa.2.0.copyload.i81.i.i.i, 1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_19UnaryStringOperatorINS_12_GLOBAL__N_120StripAccentsOperatorEEENS_8string_tES6_EET1_T0_RNS_12ValidityMaskEmPv.exit50.i.i.i.i

end_hunk_2
