inline.NumInlined: 11296
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6duckdbL12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.ot = extractvalue { i64, ptr } %i.or, 1
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %.2111.i.i.i.i ; 2 uses
  store i64 %i.os, ptr %i.ou, align 8, !alias.scope !880, !noalias !885
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store ptr %i.ot, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !tbaa !66, !alias.scope !880, !noalias !885
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit91.i.i.i.i, %.lr.ph112.i.i.i.i
  %i.ov = add nuw i64 %.2111.i.i.i.i, 1           ; 2 uses
  %exitcond124.not.i.i.i.i = icmp eq i64 %i.ov, %i.nd
  br i1 %exitcond124.not.i.i.i.i, label %.loopexit106.i.i.i.i, label %.lr.ph112.i.i.i.i, !llvm.loop !887

.loopexit106.i.i.i.i:                             ; preds = %bb.bs, %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i133.i.i, %.preheader105.i.i.i.i, %.preheader107.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i124.i.i
  %.4.i.i125.i.i = phi i64 [ %i.nd, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i124.i.i ], [ %i.ne, %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i133.i.i ], [ %.0115.i.i.i.i, %.preheader105.i.i.i.i ], [ %.0115.i.i.i.i, %.preheader107.i.i.i.i ], [ %i.nd, %bb.bs ]
  %i.ow = add nuw nsw i64 %.079114.i.i.i.i, 1     ; 2 uses
  %exitcond125.not.i.i.i.i = icmp eq i64 %i.ow, %i.ms
  br i1 %exitcond125.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tElS2_ZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvSA_SA_SA_mT2_.exit, label %bb.bm, !llvm.loop !888

bb.bt:                                            ; preds = %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit101.i.i.i.i, %.lr.ph118.i.i.i.i
  %.080117.i.i.i.i = phi i64 [ 0, %.lr.ph118.i.i.i.i ], [ %i.pp, %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit101.i.i.i.i ] ; 4 uses
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %.080117.i.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i139.i.i = load i64, ptr %i.ox, align 8, !alias.scope !875, !noalias !883 ; 4 uses
  %.sroa.44.0..sroa_idx.i.i140.i.i = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %.sroa.44.0.copyload.i.i141.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i140.i.i, align 8, !tbaa !66, !alias.scope !875, !noalias !883 ; 3 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %.080117.i.i.i.i
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !84, !alias.scope !878, !noalias !884 ; 3 uses
  %i.pa = icmp sgt i64 %i.oz, -1
  br i1 %i.pa, label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit101.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !882
  store i64 %.sroa.03.0.copyload.i.i139.i.i, ptr %7, align 8, !noalias !882
  store ptr %.sroa.44.0.copyload.i.i141.i.i, ptr %i.mp, align 8, !noalias !882
  %i.pb = trunc i64 %.sroa.03.0.copyload.i.i139.i.i to i32 ; 2 uses
  %i.pc = icmp ult i32 %i.pb, 13
  %i.pd = select i1 %i.pc, ptr %i.mq, ptr %.sroa.44.0.copyload.i.i141.i.i ; 2 uses
  %i.pe = and i64 %.sroa.03.0.copyload.i.i139.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i92.i.i.i.i = icmp eq i32 %i.pb, 0
  br i1 %.not1214.not.i.i.i.i.i92.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i97.i.i.i.i, label %.lr.ph.i.i.i.i.i93.i.i.i.i

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i93.i.i.i.i
  %i.pf = add nuw nsw i64 %.0915.i.i.i.i.i94.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i100.i.i.i.i = icmp eq i64 %i.pf, %i.pe
  br i1 %exitcond.not.i.i.i.i.i100.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i97.i.i.i.i, label %.lr.ph.i.i.i.i.i93.i.i.i.i, !llvm.loop !841

.lr.ph.i.i.i.i.i93.i.i.i.i:                       ; preds = %bb.bu, %bb.bv
  %.0915.i.i.i.i.i94.i.i.i.i = phi i64 [ %i.pf, %bb.bv ], [ 0, %bb.bu ] ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 %.0915.i.i.i.i.i94.i.i.i.i
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !66, !noalias !882
  %.not.i.i.i.i.i95.i.i.i.i = icmp sgt i8 %i.ph, -1
  br i1 %.not.i.i.i.i.i95.i.i.i.i, label %bb.bv, label %.thread.i.i.i.i.i96.i.i.i.i

.thread.i.i.i.i.i96.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i93.i.i.i.i
  %i.pi = call noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.pd, i64 noundef %i.pe), !noalias !882
  br label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i97.i.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i97.i.i.i.i: ; preds = %bb.bv, %.thread.i.i.i.i.i96.i.i.i.i, %bb.bu
  %.1.i.i.i.i.i98.i.i.i.i = phi i64 [ %i.pi, %.thread.i.i.i.i.i96.i.i.i.i ], [ %i.pe, %bb.bu ], [ %i.pe, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !882
  %i.pj = add nsw i64 %.1.i.i.i.i.i98.i.i.i.i, %i.oz
  %i.pk = call noundef i64 @llvm.smax.i64(i64 %i.pj, i64 0)
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit101.i.i.i.i

_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit101.i.i.i.i: ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i97.i.i.i.i, %bb.bt
  %.sink149.i.i.i.i = phi i64 [ %i.pk, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i97.i.i.i.i ], [ %i.oz, %bb.bt ]
  %i.pl = call { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.03.0.copyload.i.i139.i.i, ptr %.sroa.44.0.copyload.i.i141.i.i, i64 noundef 1, i64 noundef %.sink149.i.i.i.i), !noalias !882 ; 2 uses
  %i.pm = extractvalue { i64, ptr } %i.pl, 0
  %i.pn = extractvalue { i64, ptr } %i.pl, 1
  %i.po = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %.080117.i.i.i.i ; 2 uses
  store i64 %i.pm, ptr %i.po, align 8, !alias.scope !880, !noalias !885
  %.sroa.4.0..sroa_idx.i.i142.i.i = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store ptr %i.pn, ptr %.sroa.4.0..sroa_idx.i.i142.i.i, align 8, !tbaa !66, !alias.scope !880, !noalias !885
  %i.pp = add nuw i64 %.080117.i.i.i.i, 1         ; 2 uses
  %exitcond126.not.i.i.i.i = icmp eq i64 %i.pp, %i.d
  br i1 %exitcond126.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tElS2_ZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvSA_SA_SA_mT2_.exit, label %bb.bt, !llvm.loop !889

bb.bw:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.bx unwind label %bb.ds

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.by unwind label %bb.dt

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.bz unwind label %bb.dt

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.ca unwind label %bb.dt

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !82 ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.cc unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.ps = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !136 ; 4 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.pu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !136 ; 4 uses
  %i.pw = load ptr, ptr %5, align 8, !tbaa !145   ; 2 uses
  %i.px = load ptr, ptr %6, align 8, !tbaa !145   ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !83, !noalias !901
  %.not.i.i.i143.i.i = icmp eq ptr %i.qb, null
  %i.qc = load ptr, ptr %i.pz, align 8, !noalias !901
  %.not.i50.i.i.i.i = icmp eq ptr %i.qc, null
  %or.cond.i.i.i.i = select i1 %.not.i.i.i143.i.i, i1 %.not.i50.i.i.i.i, i1 false
  %.not82.i.i.i.i = icmp eq i64 %i.d, 0           ; 2 uses
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i163.i.i, label %.preheader76.i.i.i.i

.preheader76.i.i.i.i:                             ; preds = %bb.ce
  br i1 %.not82.i.i.i.i, label %_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8string_tElS2_NS_19BinaryLambdaWrapperEbZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESN_mRNS_12ValidityMaskESP_SP_T4_.exit.i.i.i, label %.lr.ph.i.i144.i.i

.lr.ph.i.i144.i.i:                                ; preds = %.preheader76.i.i.i.i
  %i.qd = load ptr, ptr %i.pw, align 8, !tbaa !158, !alias.scope !897, !noalias !902 ; 2 uses
  %.not.i51.i.i.i.i = icmp eq ptr %i.qd, null
  %i.qe = load ptr, ptr %i.px, align 8, !tbaa !158, !alias.scope !899, !noalias !903 ; 2 uses
  %.not.i52.i.i.i.i = icmp eq ptr %i.qe, null
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.ck

.preheader.i.i163.i.i:                            ; preds = %bb.ce
  br i1 %.not82.i.i.i.i, label %_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8string_tElS2_NS_19BinaryLambdaWrapperEbZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESN_mRNS_12ValidityMaskESP_SP_T4_.exit.i.i.i, label %.lr.ph80.i.i.i.i

.lr.ph80.i.i.i.i:                                 ; preds = %.preheader.i.i163.i.i
  %i.qi = load ptr, ptr %i.pw, align 8, !tbaa !158, !alias.scope !897, !noalias !902 ; 3 uses
  %.not.i59.i.i.i.i = icmp eq ptr %i.qi, null
  %i.qj = load ptr, ptr %i.px, align 8, !tbaa !158, !alias.scope !899, !noalias !903 ; 3 uses
  %.not.i61.i.i.i.i = icmp eq ptr %i.qj, null     ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  br i1 %.not.i59.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us.i.i.i, label %.lr.ph80.i.split.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us.i.i.i: ; preds = %.lr.ph80.i.i.i.i, %.noexc18.us.i.i.i
  %.04979.i.us.i.i.i = phi i64 [ %i.rh, %.noexc18.us.i.i.i ], [ 0, %.lr.ph80.i.i.i.i ] ; 5 uses
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %.04979.i.us.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.us.i.i.i = load i64, ptr %i.qm, align 8, !alias.scope !890, !noalias !904 ; 4 uses
  %.sroa.44.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %.sroa.44.0.copyload.i.us.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.us.i.i.i, align 8, !tbaa !66, !alias.scope !890, !noalias !904 ; 3 uses
  br i1 %.not.i61.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.us.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us.i.i.i
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %.04979.i.us.i.i.i
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !3, !noalias !901
  %i.qp = zext i32 %i.qo to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.us.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.us.i.i.i: ; preds = %bb.cf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us.i.i.i
  %i.qq = phi i64 [ %i.qp, %bb.cf ], [ %.04979.i.us.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us.i.i.i ]
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.qq
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !84, !alias.scope !893, !noalias !905 ; 3 uses
  %i.qt = icmp sgt i64 %i.qs, -1
  br i1 %i.qt, label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !901
  store i64 %.sroa.03.0.copyload.i.us.i.i.i, ptr %3, align 8, !noalias !901
  store ptr %.sroa.44.0.copyload.i.us.i.i.i, ptr %i.qk, align 8, !noalias !901
  %i.qu = trunc i64 %.sroa.03.0.copyload.i.us.i.i.i to i32 ; 2 uses
  %i.qv = icmp ult i32 %i.qu, 13
  %i.qw = select i1 %i.qv, ptr %i.ql, ptr %.sroa.44.0.copyload.i.us.i.i.i ; 2 uses
  %i.qx = and i64 %.sroa.03.0.copyload.i.us.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i63.i.us.i.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not1214.not.i.i.i.i.i63.i.us.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us.i.i.i, label %.lr.ph.i.i.i.i.i64.i.us.i.i.i

.lr.ph.i.i.i.i.i64.i.us.i.i.i:                    ; preds = %bb.cg, %bb.ch
  %.0915.i.i.i.i.i65.i.us.i.i.i = phi i64 [ %i.ra, %bb.ch ], [ 0, %bb.cg ] ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.0915.i.i.i.i.i65.i.us.i.i.i
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !66, !noalias !901
  %.not.i.i.i.i.i66.i.us.i.i.i = icmp sgt i8 %i.qz, -1
  br i1 %.not.i.i.i.i.i66.i.us.i.i.i, label %bb.ch, label %.thread.i.i.i.i.i67.i.us.i.i.i

bb.ch:                                            ; preds = %.lr.ph.i.i.i.i.i64.i.us.i.i.i
  %i.ra = add nuw nsw i64 %.0915.i.i.i.i.i65.i.us.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i71.i.us.i.i.i = icmp eq i64 %i.ra, %i.qx
  br i1 %exitcond.not.i.i.i.i.i71.i.us.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us.i.i.i, label %.lr.ph.i.i.i.i.i64.i.us.i.i.i, !llvm.loop !841

.thread.i.i.i.i.i67.i.us.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i64.i.us.i.i.i
  %17 = invoke noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.qw, i64 noundef %i.qx)
          to label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us.i.i.i unwind label %.loopexit.split.us.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us.i.i.i: ; preds = %bb.ch, %.thread.i.i.i.i.i67.i.us.i.i.i, %bb.cg
  %.1.i.i.i.i.i69.i.us.i.i.i = phi i64 [ %17, %.thread.i.i.i.i.i67.i.us.i.i.i ], [ %i.qx, %bb.cg ], [ %i.qx, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !901
  %i.rb = add nsw i64 %.1.i.i.i.i.i69.i.us.i.i.i, %i.qs
  %i.rc = call noundef i64 @llvm.smax.i64(i64 %i.rb, i64 0)
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us.i.i.i

_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us.i.i.i: ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.us.i.i.i
  %.sink103.i.us.i.i.i = phi i64 [ %i.rc, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us.i.i.i ], [ %i.qs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.us.i.i.i ]
  %i.rd = invoke { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.03.0.copyload.i.us.i.i.i, ptr %.sroa.44.0.copyload.i.us.i.i.i, i64 noundef 1, i64 noundef %.sink103.i.us.i.i.i)
          to label %.noexc18.us.i.i.i unwind label %.loopexit.split.us.i.i.i ; 2 uses

.noexc18.us.i.i.i:                                ; preds = %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us.i.i.i
  %i.re = extractvalue { i64, ptr } %i.rd, 0
  %i.rf = extractvalue { i64, ptr } %i.rd, 1
  %i.rg = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %.04979.i.us.i.i.i ; 2 uses
  store i64 %i.re, ptr %i.rg, align 8, !alias.scope !895, !noalias !906
  %.sroa.4.0..sroa_idx.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  store ptr %i.rf, ptr %.sroa.4.0..sroa_idx.i.us.i.i.i, align 8, !tbaa !66, !alias.scope !895, !noalias !906
  %i.rh = add nuw i64 %.04979.i.us.i.i.i, 1       ; 2 uses
  %exitcond84.not.i.us.i.i.i = icmp eq i64 %i.rh, %i.d
  br i1 %exitcond84.not.i.us.i.i.i, label %_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8string_tElS2_NS_19BinaryLambdaWrapperEbZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESN_mRNS_12ValidityMaskESP_SP_T4_.exit.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us.i.i.i, !llvm.loop !907

.loopexit.split.us.i.i.i:                         ; preds = %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us.i.i.i, %.thread.i.i.i.i.i67.i.us.i.i.i
  %lpad.loopexit.us.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

.lr.ph80.i.split.i.i.i:                           ; preds = %.lr.ph80.i.i.i.i
  br i1 %.not.i61.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us34.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us34.i.i.i: ; preds = %.lr.ph80.i.split.i.i.i, %.noexc18.us50.i.i.i
  %.04979.i.us35.i.i.i = phi i64 [ %i.sc, %.noexc18.us50.i.i.i ], [ 0, %.lr.ph80.i.split.i.i.i ] ; 4 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.04979.i.us35.i.i.i
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !3, !noalias !901
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %i.rk ; 2 uses
  %.sroa.03.0.copyload.i.us36.i.i.i = load i64, ptr %i.rl, align 8, !alias.scope !890, !noalias !904 ; 4 uses
  %.sroa.44.0..sroa_idx.i.us37.i.i.i = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %.sroa.44.0.copyload.i.us38.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.us37.i.i.i, align 8, !tbaa !66, !alias.scope !890, !noalias !904 ; 3 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %.04979.i.us35.i.i.i
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !84, !alias.scope !893, !noalias !905 ; 3 uses
  %i.ro = icmp sgt i64 %i.rn, -1
  br i1 %i.ro, label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us48.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us34.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !901
  store i64 %.sroa.03.0.copyload.i.us36.i.i.i, ptr %3, align 8, !noalias !901
  store ptr %.sroa.44.0.copyload.i.us38.i.i.i, ptr %i.qk, align 8, !noalias !901
  %i.rp = trunc i64 %.sroa.03.0.copyload.i.us36.i.i.i to i32 ; 2 uses
  %i.rq = icmp ult i32 %i.rp, 13
  %i.rr = select i1 %i.rq, ptr %i.ql, ptr %.sroa.44.0.copyload.i.us38.i.i.i ; 2 uses
  %i.rs = and i64 %.sroa.03.0.copyload.i.us36.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i63.i.us40.i.i.i = icmp eq i32 %i.rp, 0
  br i1 %.not1214.not.i.i.i.i.i63.i.us40.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us46.i.i.i, label %.lr.ph.i.i.i.i.i64.i.us41.i.i.i

.lr.ph.i.i.i.i.i64.i.us41.i.i.i:                  ; preds = %bb.ci, %bb.cj
  %.0915.i.i.i.i.i65.i.us42.i.i.i = phi i64 [ %i.rv, %bb.cj ], [ 0, %bb.ci ] ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 %.0915.i.i.i.i.i65.i.us42.i.i.i
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !66, !noalias !901
  %.not.i.i.i.i.i66.i.us43.i.i.i = icmp sgt i8 %i.ru, -1
  br i1 %.not.i.i.i.i.i66.i.us43.i.i.i, label %bb.cj, label %.thread.i.i.i.i.i67.i.us45.i.i.i

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i64.i.us41.i.i.i
  %i.rv = add nuw nsw i64 %.0915.i.i.i.i.i65.i.us42.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i71.i.us45.i.i.i = icmp eq i64 %i.rv, %i.rs
  br i1 %exitcond.not.i.i.i.i.i71.i.us45.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us46.i.i.i, label %.lr.ph.i.i.i.i.i64.i.us41.i.i.i, !llvm.loop !841

.thread.i.i.i.i.i67.i.us45.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i64.i.us41.i.i.i
  %18 = invoke noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.rr, i64 noundef %i.rs)
          to label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us46.i.i.i unwind label %.loopexit.split.split.us.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us46.i.i.i: ; preds = %bb.cj, %.thread.i.i.i.i.i67.i.us45.i.i.i, %bb.ci
  %.1.i.i.i.i.i69.i.us47.i.i.i = phi i64 [ %18, %.thread.i.i.i.i.i67.i.us45.i.i.i ], [ %i.rs, %bb.ci ], [ %i.rs, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !901
  %i.rw = add nsw i64 %.1.i.i.i.i.i69.i.us47.i.i.i, %i.rn
  %i.rx = call noundef i64 @llvm.smax.i64(i64 %i.rw, i64 0)
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us48.i.i.i

_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us48.i.i.i: ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us46.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us34.i.i.i
  %.sink103.i.us49.i.i.i = phi i64 [ %i.rx, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.us46.i.i.i ], [ %i.rn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us34.i.i.i ]
  %i.ry = invoke { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.03.0.copyload.i.us36.i.i.i, ptr %.sroa.44.0.copyload.i.us38.i.i.i, i64 noundef 1, i64 noundef %.sink103.i.us49.i.i.i)
          to label %.noexc18.us50.i.i.i unwind label %.loopexit.split.split.us.i.i.i ; 2 uses

.noexc18.us50.i.i.i:                              ; preds = %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us48.i.i.i
  %i.rz = extractvalue { i64, ptr } %i.ry, 0
  %i.sa = extractvalue { i64, ptr } %i.ry, 1
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %.04979.i.us35.i.i.i ; 2 uses
  store i64 %i.rz, ptr %i.sb, align 8, !alias.scope !895, !noalias !906
  %.sroa.4.0..sroa_idx.i.us51.i.i.i = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store ptr %i.sa, ptr %.sroa.4.0..sroa_idx.i.us51.i.i.i, align 8, !tbaa !66, !alias.scope !895, !noalias !906
  %i.sc = add nuw i64 %.04979.i.us35.i.i.i, 1     ; 2 uses
  %exitcond84.not.i.us52.i.i.i = icmp eq i64 %i.sc, %i.d
  br i1 %exitcond84.not.i.us52.i.i.i, label %_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8string_tElS2_NS_19BinaryLambdaWrapperEbZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESN_mRNS_12ValidityMaskESP_SP_T4_.exit.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.us34.i.i.i, !llvm.loop !907

.loopexit.split.split.us.i.i.i:                   ; preds = %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.us48.i.i.i, %.thread.i.i.i.i.i67.i.us45.i.i.i
  %lpad.loopexit.us55.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i.i

bb.ck:                                            ; preds = %bb.cr, %.lr.ph.i.i144.i.i
  %.078.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i144.i.i ], [ %i.ub, %bb.cr ] ; 8 uses
  br i1 %.not.i51.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %.078.i.i.i.i
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !3, !noalias !901
  %i.sf = zext i32 %i.se to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i: ; preds = %bb.cl, %bb.ck
  %i.sg = phi i64 [ %i.sf, %bb.cl ], [ %.078.i.i.i.i, %bb.ck ] ; 3 uses
  br i1 %.not.i52.i.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit53.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %.078.i.i.i.i
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !3, !noalias !901
  %i.sj = zext i32 %i.si to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit53.i.i.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit53.i.i.i.i: ; preds = %bb.cm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i
  %i.sk = phi i64 [ %i.sj, %bb.cm ], [ %.078.i.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.i.i ] ; 3 uses
  %i.sl = load ptr, ptr %i.qa, align 8, !tbaa !83, !noalias !901 ; 2 uses
  %.not.i54.i.i.i.i = icmp eq ptr %i.sl, null
  br i1 %.not.i54.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit53.i.i.i.i
  %i.sm = lshr i64 %i.sg, 6
  %i.sn = and i64 %i.sg, 63
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sm
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !84, !noalias !901
  %i.sq = shl nuw i64 1, %i.sn
  %i.sr = and i64 %i.sp, %i.sq
  %.not.i.i145.i.i = icmp eq i64 %i.sr, 0
  br i1 %.not.i.i145.i.i, label %bb.cp, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit53.i.i.i.i
  %i.ss = load ptr, ptr %i.pz, align 8, !tbaa !83, !noalias !901 ; 2 uses
  %.not.i55.i.i.i.i = icmp eq ptr %i.ss, null
  br i1 %.not.i55.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.i.i.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i.i.i
  %i.st = lshr i64 %i.sk, 6
  %i.su = and i64 %i.sk, 63
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.st
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !84, !noalias !901
  %i.sx = shl nuw i64 1, %i.su
  %i.sy = and i64 %i.sw, %i.sx
  %.not75.i.i.i.i = icmp eq i64 %i.sy, 0
  br i1 %.not75.i.i.i.i, label %bb.cp, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.thread.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.thread.i.i.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i.i.i
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %i.sg ; 2 uses
  %.sroa.017.0.copyload.i.i146.i.i = load i64, ptr %i.sz, align 8, !alias.scope !890, !noalias !904 ; 4 uses
  %.sroa.418.0..sroa_idx.i.i147.i.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %.sroa.418.0.copyload.i.i148.i.i = load ptr, ptr %.sroa.418.0..sroa_idx.i.i147.i.i, align 8, !tbaa !66, !alias.scope !890, !noalias !904 ; 3 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.sk
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !84, !alias.scope !893, !noalias !905 ; 3 uses
  %i.tc = icmp sgt i64 %i.tb, -1
  br i1 %i.tc, label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i156.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !901
  store i64 %.sroa.017.0.copyload.i.i146.i.i, ptr %4, align 8, !noalias !901
  store ptr %.sroa.418.0.copyload.i.i148.i.i, ptr %i.qg, align 8, !noalias !901
  %i.td = trunc i64 %.sroa.017.0.copyload.i.i146.i.i to i32 ; 2 uses
  %i.te = icmp ult i32 %i.td, 13
  %i.tf = select i1 %i.te, ptr %i.qh, ptr %.sroa.418.0.copyload.i.i148.i.i ; 2 uses
  %i.tg = and i64 %.sroa.017.0.copyload.i.i146.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i.i.i149.i.i = icmp eq i32 %i.td, 0
  br i1 %.not1214.not.i.i.i.i.i.i.i149.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i154.i.i, label %.lr.ph.i.i.i.i.i.i.i150.i.i

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i150.i.i
  %i.th = add nuw nsw i64 %.0915.i.i.i.i.i.i.i151.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i162.i.i = icmp eq i64 %i.th, %i.tg
  br i1 %exitcond.not.i.i.i.i.i.i.i162.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i154.i.i, label %.lr.ph.i.i.i.i.i.i.i150.i.i, !llvm.loop !841

.lr.ph.i.i.i.i.i.i.i150.i.i:                      ; preds = %bb.cn, %bb.co
  %.0915.i.i.i.i.i.i.i151.i.i = phi i64 [ %i.th, %bb.co ], [ 0, %bb.cn ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.0915.i.i.i.i.i.i.i151.i.i
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !66, !noalias !901
  %.not.i.i.i.i.i.i.i152.i.i = icmp sgt i8 %i.tj, -1
  br i1 %.not.i.i.i.i.i.i.i152.i.i, label %bb.co, label %.thread.i.i.i.i.i.i.i153.i.i

.thread.i.i.i.i.i.i.i153.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i150.i.i
  %i.tk = invoke noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.tf, i64 noundef %i.tg)
          to label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i154.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i154.i.i: ; preds = %bb.co, %.thread.i.i.i.i.i.i.i153.i.i, %bb.cn
  %.1.i.i.i.i.i.i.i155.i.i = phi i64 [ %i.tk, %.thread.i.i.i.i.i.i.i153.i.i ], [ %i.tg, %bb.cn ], [ %i.tg, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !901
  %i.tl = add nsw i64 %.1.i.i.i.i.i.i.i155.i.i, %i.tb
  %i.tm = call noundef i64 @llvm.smax.i64(i64 %i.tl, i64 0)
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i156.i.i

_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i156.i.i: ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i154.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.thread.i.i.i.i
  %.sink.i.i157.i.i = phi i64 [ %i.tm, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i154.i.i ], [ %i.tb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.thread.i.i.i.i ]
  %i.tn = invoke { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.017.0.copyload.i.i146.i.i, ptr %.sroa.418.0.copyload.i.i148.i.i, i64 noundef 1, i64 noundef %.sink.i.i157.i.i)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i ; 2 uses

.noexc15.i.i.i:                                   ; preds = %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i156.i.i
  %i.to = extractvalue { i64, ptr } %i.tn, 0
  %i.tp = extractvalue { i64, ptr } %i.tn, 1
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %.078.i.i.i.i ; 2 uses
  store i64 %i.to, ptr %i.tq, align 8, !alias.scope !895, !noalias !906
  %.sroa.415.0..sroa_idx.i.i158.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store ptr %i.tp, ptr %.sroa.415.0..sroa_idx.i.i158.i.i, align 8, !tbaa !66, !alias.scope !895, !noalias !906
  br label %bb.cr

bb.cp:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit57.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.i.i.i
  %i.tr = load ptr, ptr %i.py, align 8, !tbaa !83, !noalias !901 ; 2 uses
  %.not.i58.i.i.i.i = icmp eq ptr %i.tr, null
  br i1 %.not.i58.i.i.i.i, label %bb.cq, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.ts = load i64, ptr %i.qf, align 8, !tbaa !88, !noalias !901
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.py, i64 noundef %i.ts)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i

.noexc16.i.i.i:                                   ; preds = %bb.cq
  %.pre.i.i.i.i.i = load ptr, ptr %i.py, align 8, !tbaa !83, !noalias !901
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i: ; preds = %.noexc16.i.i.i, %bb.cp
  %i.tt = phi ptr [ %.pre.i.i.i.i.i, %.noexc16.i.i.i ], [ %i.tr, %bb.cp ]
  %i.tu = lshr i64 %.078.i.i.i.i, 6
  %i.tv = and i64 %.078.i.i.i.i, 63
  %i.tw = shl nuw i64 1, %i.tv
  %i.tx = xor i64 %i.tw, -1
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tu ; 2 uses
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !84, !noalias !901
  %i.ua = and i64 %i.tz, %i.tx
  store i64 %i.ua, ptr %i.ty, align 8, !tbaa !84, !noalias !901
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i, %.noexc15.i.i.i
  %i.ub = add nuw i64 %.078.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i159.i.i = icmp eq i64 %i.ub, %i.d
  br i1 %exitcond.not.i.i159.i.i, label %_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8string_tElS2_NS_19BinaryLambdaWrapperEbZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESN_mRNS_12ValidityMaskESP_SP_T4_.exit.i.i.i, label %bb.ck, !llvm.loop !908

_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.i.i.i: ; preds = %.lr.ph80.i.split.i.i.i, %.noexc18.i.i.i
  %.04979.i.i.i.i = phi i64 [ %i.va, %.noexc18.i.i.i ], [ 0, %.lr.ph80.i.split.i.i.i ] ; 4 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.04979.i.i.i.i
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !3, !noalias !901
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %i.ue ; 2 uses
  %.sroa.03.0.copyload.i.i164.i.i = load i64, ptr %i.uf, align 8, !alias.scope !890, !noalias !904 ; 4 uses
  %.sroa.44.0..sroa_idx.i.i165.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %.sroa.44.0.copyload.i.i166.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i165.i.i, align 8, !tbaa !66, !alias.scope !890, !noalias !904 ; 3 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %.04979.i.i.i.i
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !3, !noalias !901
  %i.ui = zext i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.ui
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !84, !alias.scope !893, !noalias !905 ; 3 uses
  %i.ul = icmp sgt i64 %i.uk, -1
  br i1 %i.ul, label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !901
  store i64 %.sroa.03.0.copyload.i.i164.i.i, ptr %3, align 8, !noalias !901
  store ptr %.sroa.44.0.copyload.i.i166.i.i, ptr %i.qk, align 8, !noalias !901
  %i.um = trunc i64 %.sroa.03.0.copyload.i.i164.i.i to i32 ; 2 uses
  %i.un = icmp ult i32 %i.um, 13
  %i.uo = select i1 %i.un, ptr %i.ql, ptr %.sroa.44.0.copyload.i.i166.i.i ; 2 uses
  %i.up = and i64 %.sroa.03.0.copyload.i.i164.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i63.i.i.i.i = icmp eq i32 %i.um, 0
  br i1 %.not1214.not.i.i.i.i.i63.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.i.i.i, label %.lr.ph.i.i.i.i.i64.i.i.i.i

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i.i64.i.i.i.i
  %i.uq = add nuw nsw i64 %.0915.i.i.i.i.i65.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i71.i.i.i.i = icmp eq i64 %i.uq, %i.up
  br i1 %exitcond.not.i.i.i.i.i71.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.i.i.i, label %.lr.ph.i.i.i.i.i64.i.i.i.i, !llvm.loop !841

.lr.ph.i.i.i.i.i64.i.i.i.i:                       ; preds = %bb.cs, %bb.ct
  %.0915.i.i.i.i.i65.i.i.i.i = phi i64 [ %i.uq, %bb.ct ], [ 0, %bb.cs ] ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 %.0915.i.i.i.i.i65.i.i.i.i
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !66, !noalias !901
  %.not.i.i.i.i.i66.i.i.i.i = icmp sgt i8 %i.us, -1
  br i1 %.not.i.i.i.i.i66.i.i.i.i, label %bb.ct, label %.thread.i.i.i.i.i67.i.i.i.i

.thread.i.i.i.i.i67.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i64.i.i.i.i
  %i.ut = invoke noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.uo, i64 noundef %i.up)
          to label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.i.i.i unwind label %.loopexit.split.split.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.i.i.i: ; preds = %bb.ct, %.thread.i.i.i.i.i67.i.i.i.i, %bb.cs
  %.1.i.i.i.i.i69.i.i.i.i = phi i64 [ %i.ut, %.thread.i.i.i.i.i67.i.i.i.i ], [ %i.up, %bb.cs ], [ %i.up, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !901
  %i.uu = add nsw i64 %.1.i.i.i.i.i69.i.i.i.i, %i.uk
  %i.uv = call noundef i64 @llvm.smax.i64(i64 %i.uu, i64 0)
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.i.i.i

_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L12LeftFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit72.i.i.i.i: ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.i.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.i.i.i
  %.sink103.i.i.i.i = phi i64 [ %i.uv, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i68.i.i.i.i ], [ %i.uk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit60.i.i.i.i ]
  %i.uw = invoke { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.03.0.copyload.i.i164.i.i, ptr %.sroa.44.0.copyload.i.i166.i.i, i64 noundef 1, i64 noundef %.sink103.i.i.i.i)
          to label %.noexc18.i.i.i unwind label %.loopexit.split.split.i.i.i ; 2 uses

end_hunk_0
begin_hunk_1_@_ZN6duckdbL13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  br label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i: ; preds = %bb.d, %.thread.i.i.i.i.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.thread.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %.thread.i.i.i.i.i.i.i.i ], [ %i.ac, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit16.thread.i.i.i ], [ %i.ac, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.ah = icmp sgt i64 %i.w, -1
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i
  %i.ai = call noundef i64 @llvm.smin.i64(i64 %.1.i.i.i.i.i.i.i.i, i64 %i.w)
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i

bb.f:                                             ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.w, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = sub nsw i64 0, %i.w
  %i.ak = call noundef i64 @llvm.smin.i64(i64 %.1.i.i.i.i.i.i.i.i, i64 %i.aj)
  %i.al = sub nsw i64 %.1.i.i.i.i.i.i.i.i, %i.ak
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i

_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.sink30.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %i.al, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.am = add i64 %.1.i.i.i.i.i.i.i.i, 1
  %i.an = sub i64 %i.am, %.0.sink30.i.i.i.i.i.i
  %i.ao = call { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.2.0.copyload.i.i.i, i64 noundef %i.an, i64 noundef %.0.sink30.i.i.i.i.i.i) ; 2 uses
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = extractvalue { i64, ptr } %i.ao, 1
  store i64 %i.ap, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !66
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tElS2_ZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvSA_SA_SA_mT2_.exit

bb.h:                                             ; preds = %bb.a
  %i.ar = icmp eq i8 %i.e, 0
  %or.cond3.i.i = and i1 %i.ar, %i.h
  br i1 %or.cond3.i.i, label %bb.i, label %bb.al

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i40.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i40.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i: ; preds = %bb.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !84
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tElS2_ZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvSA_SA_SA_mT2_.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i, %bb.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !82 ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !83
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bg = icmp eq ptr %2, %i.a
  br i1 %i.bg, label %bb.u, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !61 ; 8 uses
  store <2 x ptr> %i.bk, ptr %i.bf, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bs, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !64
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #25, !inline_history !1008
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #25, !inline_history !1008
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !66
  %.not.i.i.i.i5.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.r ], [ %i.cf, %bb.s ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !67

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.p, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !88
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !83, !noalias !1016
  %.not.i.i18.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.x

.preheader.i.i.i.i:                               ; preds = %bb.u
  %.not131.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not131.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tElS2_ZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvSA_SA_SA_mT2_.exit, label %.lr.ph111.i.i.i.i

.lr.ph111.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.cl = load i64, ptr %i.av, align 8, !tbaa !84, !alias.scope !1012, !noalias !1017
  %.fr132.i.i.i.i = freeze i64 %i.cl              ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 3 uses
  %i.co = icmp sgt i64 %.fr132.i.i.i.i, -1
  %i.cp = sub nsw i64 0, %.fr132.i.i.i.i
  br i1 %i.co, label %.lr.ph111.split.us.i.i.i.i, label %.lr.ph111.split.i.i.i.i

.lr.ph111.split.us.i.i.i.i:                       ; preds = %.lr.ph111.i.i.i.i, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us.i.i.i.i
  %.071110.us.i.i.i.i = phi i64 [ %i.df, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us.i.i.i.i ], [ 0, %.lr.ph111.i.i.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.071110.us.i.i.i.i ; 2 uses
  %.sroa.03.0.copyload.us.i.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !1009, !noalias !1018 ; 4 uses
  %.sroa.44.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.44.0.copyload.us.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !66, !alias.scope !1009, !noalias !1018 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !1016
  store i64 %.sroa.03.0.copyload.us.i.i.i.i, ptr %13, align 8, !noalias !1016
  store ptr %.sroa.44.0.copyload.us.i.i.i.i, ptr %i.cm, align 8, !noalias !1016
  %i.cr = trunc i64 %.sroa.03.0.copyload.us.i.i.i.i to i32 ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 13
  %i.ct = select i1 %i.cs, ptr %i.cn, ptr %.sroa.44.0.copyload.us.i.i.i.i ; 2 uses
  %i.cu = and i64 %.sroa.03.0.copyload.us.i.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i84.us.i.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not1214.not.i.i.i.i.i84.us.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us.i.i.i.i, label %.lr.ph.i.i.i.i.i85.us.i.i.i.i

.lr.ph.i.i.i.i.i85.us.i.i.i.i:                    ; preds = %.lr.ph111.split.us.i.i.i.i, %bb.v
  %.0915.i.i.i.i.i86.us.i.i.i.i = phi i64 [ %i.cx, %bb.v ], [ 0, %.lr.ph111.split.us.i.i.i.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.0915.i.i.i.i.i86.us.i.i.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !66, !noalias !1016
  %.not.i.i.i.i.i87.us.i.i.i.i = icmp sgt i8 %i.cw, -1
  br i1 %.not.i.i.i.i.i87.us.i.i.i.i, label %bb.v, label %.thread.i.i.i.i.i88.us.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i85.us.i.i.i.i
  %i.cx = add nuw nsw i64 %.0915.i.i.i.i.i86.us.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i93.us.i.i.i.i = icmp eq i64 %i.cx, %i.cu
  br i1 %exitcond.not.i.i.i.i.i93.us.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us.i.i.i.i, label %.lr.ph.i.i.i.i.i85.us.i.i.i.i, !llvm.loop !841

.thread.i.i.i.i.i88.us.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i85.us.i.i.i.i
  %17 = call noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.ct, i64 noundef %i.cu), !noalias !1016
  br label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us.i.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us.i.i.i.i: ; preds = %bb.v, %.thread.i.i.i.i.i88.us.i.i.i.i, %.lr.ph111.split.us.i.i.i.i
  %.1.i.i.i.i.i90.us.i.i.i.i = phi i64 [ %17, %.thread.i.i.i.i.i88.us.i.i.i.i ], [ %i.cu, %.lr.ph111.split.us.i.i.i.i ], [ %i.cu, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !1016
  %i.cy = call noundef i64 @llvm.smin.i64(i64 %.1.i.i.i.i.i90.us.i.i.i.i, i64 %.fr132.i.i.i.i) ; 2 uses
  %i.cz = add i64 %.1.i.i.i.i.i90.us.i.i.i.i, 1
  %i.da = sub i64 %i.cz, %i.cy
  %i.db = call { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.03.0.copyload.us.i.i.i.i, ptr %.sroa.44.0.copyload.us.i.i.i.i, i64 noundef %i.da, i64 noundef %i.cy), !noalias !1016 ; 2 uses
  %i.dc = extractvalue { i64, ptr } %i.db, 0
  %i.dd = extractvalue { i64, ptr } %i.db, 1
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.071110.us.i.i.i.i ; 2 uses
  store i64 %i.dc, ptr %i.de, align 8, !alias.scope !1014, !noalias !1019
  %.sroa.4.0..sroa_idx.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %.sroa.4.0..sroa_idx.us.i.i.i.i, align 8, !tbaa !66, !alias.scope !1014, !noalias !1019
  %i.df = add nuw i64 %.071110.us.i.i.i.i, 1      ; 2 uses
  %exitcond142.not.i.i.i.i = icmp eq i64 %i.df, %i.d
  br i1 %exitcond142.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tElS2_ZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvSA_SA_SA_mT2_.exit, label %.lr.ph111.split.us.i.i.i.i, !llvm.loop !1020

.lr.ph111.split.i.i.i.i:                          ; preds = %.lr.ph111.i.i.i.i
  %.not.i.i.i91.i.i.i.i = icmp eq i64 %.fr132.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i91.i.i.i.i, label %.lr.ph111.split.split.us.i.i.i.i, label %.lr.ph111.split.split.i.i.i.i

.lr.ph111.split.split.us.i.i.i.i:                 ; preds = %.lr.ph111.split.i.i.i.i, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us122.i.i.i.i
  %.071110.us112.i.i.i.i = phi i64 [ %i.dt, %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us122.i.i.i.i ], [ 0, %.lr.ph111.split.i.i.i.i ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.071110.us112.i.i.i.i ; 2 uses
  %.sroa.03.0.copyload.us113.i.i.i.i = load i64, ptr %i.dg, align 8, !alias.scope !1009, !noalias !1018 ; 4 uses
  %.sroa.44.0..sroa_idx.us114.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.44.0.copyload.us115.i.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.us114.i.i.i.i, align 8, !tbaa !66, !alias.scope !1009, !noalias !1018 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !1016
  store i64 %.sroa.03.0.copyload.us113.i.i.i.i, ptr %13, align 8, !noalias !1016
  store ptr %.sroa.44.0.copyload.us115.i.i.i.i, ptr %i.cm, align 8, !noalias !1016
  %i.dh = trunc i64 %.sroa.03.0.copyload.us113.i.i.i.i to i32 ; 2 uses
  %i.di = icmp ult i32 %i.dh, 13
  %i.dj = select i1 %i.di, ptr %i.cn, ptr %.sroa.44.0.copyload.us115.i.i.i.i ; 2 uses
  %i.dk = and i64 %.sroa.03.0.copyload.us113.i.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i84.us116.i.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not1214.not.i.i.i.i.i84.us116.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us122.i.i.i.i, label %.lr.ph.i.i.i.i.i85.us117.i.i.i.i

.lr.ph.i.i.i.i.i85.us117.i.i.i.i:                 ; preds = %.lr.ph111.split.split.us.i.i.i.i, %bb.w
  %.0915.i.i.i.i.i86.us118.i.i.i.i = phi i64 [ %i.dn, %bb.w ], [ 0, %.lr.ph111.split.split.us.i.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.0915.i.i.i.i.i86.us118.i.i.i.i
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !66, !noalias !1016
  %.not.i.i.i.i.i87.us119.i.i.i.i = icmp sgt i8 %i.dm, -1
  br i1 %.not.i.i.i.i.i87.us119.i.i.i.i, label %bb.w, label %.thread.i.i.i.i.i88.us121.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i85.us117.i.i.i.i
  %i.dn = add nuw nsw i64 %.0915.i.i.i.i.i86.us118.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i93.us121.i.i.i.i = icmp eq i64 %i.dn, %i.dk
  br i1 %exitcond.not.i.i.i.i.i93.us121.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us122.i.i.i.i, label %.lr.ph.i.i.i.i.i85.us117.i.i.i.i, !llvm.loop !841

.thread.i.i.i.i.i88.us121.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i85.us117.i.i.i.i
  %18 = call noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.dj, i64 noundef %i.dk), !noalias !1016
  br label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us122.i.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i89.us122.i.i.i.i: ; preds = %bb.w, %.thread.i.i.i.i.i88.us121.i.i.i.i, %.lr.ph111.split.split.us.i.i.i.i
  %.1.i.i.i.i.i90.us123.i.i.i.i = phi i64 [ %18, %.thread.i.i.i.i.i88.us121.i.i.i.i ], [ %i.dk, %.lr.ph111.split.split.us.i.i.i.i ], [ %i.dk, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !1016
  %i.do = add i64 %.1.i.i.i.i.i90.us123.i.i.i.i, 1
  %i.dp = call { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.03.0.copyload.us113.i.i.i.i, ptr %.sroa.44.0.copyload.us115.i.i.i.i, i64 noundef %i.do, i64 noundef 0), !noalias !1016 ; 2 uses
  %i.dq = extractvalue { i64, ptr } %i.dp, 0
  %i.dr = extractvalue { i64, ptr } %i.dp, 1
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.071110.us112.i.i.i.i ; 2 uses
  store i64 %i.dq, ptr %i.ds, align 8, !alias.scope !1014, !noalias !1019
  %.sroa.4.0..sroa_idx.us127.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.4.0..sroa_idx.us127.i.i.i.i, align 8, !tbaa !66, !alias.scope !1014, !noalias !1019
  %i.dt = add nuw i64 %.071110.us112.i.i.i.i, 1   ; 2 uses
  %exitcond141.not.i.i.i.i = icmp eq i64 %i.dt, %i.d
  br i1 %exitcond141.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tElS2_ZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvSA_SA_SA_mT2_.exit, label %.lr.ph111.split.split.us.i.i.i.i, !llvm.loop !1020

bb.x:                                             ; preds = %bb.u
  %i.du = add i64 %i.d, 63
  %i.dv = lshr i64 %i.du, 6                       ; 2 uses
  %.not130.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not130.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_8string_tElS2_ZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlS2_lE_EEvSA_SA_SA_mT2_.exit, label %.lr.ph109.i.i.i.i

.lr.ph109.i.i.i.i:                                ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 4
  br label %bb.y

bb.y:                                             ; preds = %.loopexit99.i.i.i.i, %.lr.ph109.i.i.i.i
  %.0108.i.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit99.i.i.i.i ] ; 9 uses
  %.070107.i.i.i.i = phi i64 [ 0, %.lr.ph109.i.i.i.i ], [ %i.gf, %.loopexit99.i.i.i.i ] ; 2 uses
  %i.ea = load ptr, ptr %i.bc, align 8, !tbaa !83, !noalias !1016 ; 2 uses
  %.not.i72.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i72.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.y
  %i.eb = add i64 %.0108.i.i.i.i, 64
  %i.ec = call noundef i64 @llvm.umin.i64(i64 %i.eb, i64 %i.d)
  br label %.preheader100.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.070107.i.i.i.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !84, !noalias !1016 ; 2 uses
  %i.ef = add i64 %.0108.i.i.i.i, 64
  %i.eg = call noundef i64 @llvm.umin.i64(i64 %i.ef, i64 %i.d) ; 5 uses
  switch i64 %i.ee, label %.preheader98.i.i.i.i [
    i64 -1, label %.preheader100.i.i.i.i
    i64 0, label %.loopexit99.i.i.i.i
  ]

.preheader100.i.i.i.i:                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.eh = phi i64 [ %i.ec, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.eg, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 3 uses
  %i.ei = icmp ult i64 %.0108.i.i.i.i, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i.i.i, label %.loopexit99.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader100.i.i.i.i
  %i.ej = load i64, ptr %i.av, align 8, !tbaa !84, !alias.scope !1012, !noalias !1017 ; 4 uses
  %i.ek = icmp sgt i64 %i.ej, -1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ej, -9223372036854775808
  %i.el = sub nsw i64 0, %i.ej
  br label %bb.z

.preheader98.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.em = icmp ult i64 %.0108.i.i.i.i, %i.eg
  br i1 %i.em, label %.lr.ph105.i.i.i.i, label %.loopexit99.i.i.i.i

bb.z:                                             ; preds = %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.1103.i.i.i.i = phi i64 [ %.0108.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ff, %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ] ; 3 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.1103.i.i.i.i ; 2 uses
  %.sroa.025.0.copyload.i.i.i.i = load i64, ptr %i.en, align 8, !alias.scope !1009, !noalias !1018 ; 4 uses
  %.sroa.426.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.426.0.copyload.i.i.i.i = load ptr, ptr %.sroa.426.0..sroa_idx.i.i.i.i, align 8, !tbaa !66, !alias.scope !1009, !noalias !1018 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !1016
  store i64 %.sroa.025.0.copyload.i.i.i.i, ptr %15, align 8, !noalias !1016
  store ptr %.sroa.426.0.copyload.i.i.i.i, ptr %i.dw, align 8, !noalias !1016
  %i.eo = trunc i64 %.sroa.025.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.ep = icmp ult i32 %i.eo, 13
  %i.eq = select i1 %i.ep, ptr %i.dx, ptr %.sroa.426.0.copyload.i.i.i.i ; 2 uses
  %i.er = and i64 %.sroa.025.0.copyload.i.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not1214.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.es = add nuw nsw i64 %.0915.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.es, %i.er
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !841

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.z, %bb.aa
  %.0915.i.i.i.i.i.i.i.i.i = phi i64 [ %i.es, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.0915.i.i.i.i.i.i.i.i.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !66, !noalias !1016
  %.not.i.i.i.i.i.i19.i.i.i = icmp sgt i8 %i.eu, -1
  br i1 %.not.i.i.i.i.i.i19.i.i.i, label %bb.aa, label %.thread.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ev = call noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.eq, i64 noundef %i.er), !noalias !1016
  br label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i.i: ; preds = %bb.aa, %.thread.i.i.i.i.i.i.i.i.i, %bb.z
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.er, %bb.z ], [ %i.er, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !1016
  br i1 %i.ek, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i.i
  %i.ew = call noundef i64 @llvm.smin.i64(i64 %.1.i.i.i.i.i.i.i.i.i, i64 %i.ej)
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

bb.ac:                                            ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = call noundef i64 @llvm.smin.i64(i64 %.1.i.i.i.i.i.i.i.i.i, i64 %i.el)
  %i.ey = sub nsw i64 %.1.i.i.i.i.i.i.i.i.i, %i.ex
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %.0.sink30.i.i.i.i.i.i.i = phi i64 [ %i.ew, %bb.ab ], [ %i.ey, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.ez = add i64 %.1.i.i.i.i.i.i.i.i.i, 1
  %i.fa = sub i64 %i.ez, %.0.sink30.i.i.i.i.i.i.i
  %i.fb = call { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.025.0.copyload.i.i.i.i, ptr %.sroa.426.0.copyload.i.i.i.i, i64 noundef %i.fa, i64 noundef %.0.sink30.i.i.i.i.i.i.i), !noalias !1016 ; 2 uses
  %i.fc = extractvalue { i64, ptr } %i.fb, 0
  %i.fd = extractvalue { i64, ptr } %i.fb, 1
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.1103.i.i.i.i ; 2 uses
  store i64 %i.fc, ptr %i.fe, align 8, !alias.scope !1014, !noalias !1019
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.fd, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 8, !tbaa !66, !alias.scope !1014, !noalias !1019
  %i.ff = add nuw i64 %.1103.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ff, %i.eh
  br i1 %exitcond.not.i.i.i.i, label %.loopexit99.i.i.i.i, label %bb.z, !llvm.loop !1021

.lr.ph105.i.i.i.i:                                ; preds = %.preheader98.i.i.i.i, %bb.aj
  %.2104.i.i.i.i = phi i64 [ %i.ge, %bb.aj ], [ %.0108.i.i.i.i, %.preheader98.i.i.i.i ] ; 4 uses
  %i.fg = sub nuw i64 %.2104.i.i.i.i, %.0108.i.i.i.i
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.fh, %i.ee
  %.not.i.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph105.i.i.i.i
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.2104.i.i.i.i ; 2 uses
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.fj, align 8, !alias.scope !1009, !noalias !1018 ; 4 uses
  %.sroa.417.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.sroa.417.0.copyload.i.i.i.i = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i.i, align 8, !tbaa !66, !alias.scope !1009, !noalias !1018 ; 3 uses
  %i.fk = load i64, ptr %i.av, align 8, !tbaa !84, !alias.scope !1012, !noalias !1017 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !1016
  store i64 %.sroa.016.0.copyload.i.i.i.i, ptr %14, align 8, !noalias !1016
  store ptr %.sroa.417.0.copyload.i.i.i.i, ptr %i.dy, align 8, !noalias !1016
  %i.fl = trunc i64 %.sroa.016.0.copyload.i.i.i.i to i32 ; 2 uses
  %i.fm = icmp ult i32 %i.fl, 13
  %i.fn = select i1 %i.fm, ptr %i.dz, ptr %.sroa.417.0.copyload.i.i.i.i ; 2 uses
  %i.fo = and i64 %.sroa.016.0.copyload.i.i.i.i, 4294967295 ; 4 uses
  %.not1214.not.i.i.i.i.i73.i.i.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not1214.not.i.i.i.i.i73.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i78.i.i.i.i, label %.lr.ph.i.i.i.i.i74.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i74.i.i.i.i
  %i.fp = add nuw nsw i64 %.0915.i.i.i.i.i75.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i82.i.i.i.i = icmp eq i64 %i.fp, %i.fo
  br i1 %exitcond.not.i.i.i.i.i82.i.i.i.i, label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i78.i.i.i.i, label %.lr.ph.i.i.i.i.i74.i.i.i.i, !llvm.loop !841

.lr.ph.i.i.i.i.i74.i.i.i.i:                       ; preds = %bb.ae, %bb.af
  %.0915.i.i.i.i.i75.i.i.i.i = phi i64 [ %i.fp, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0915.i.i.i.i.i75.i.i.i.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !66, !noalias !1016
  %.not.i.i.i.i.i76.i.i.i.i = icmp sgt i8 %i.fr, -1
  br i1 %.not.i.i.i.i.i76.i.i.i.i, label %bb.af, label %.thread.i.i.i.i.i77.i.i.i.i

.thread.i.i.i.i.i77.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i74.i.i.i.i
  %i.fs = call noundef i64 @_ZN6duckdb8Utf8Proc13GraphemeCountEPKcm(ptr noundef nonnull %i.fn, i64 noundef %i.fo), !noalias !1016
  br label %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i78.i.i.i.i

_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i78.i.i.i.i: ; preds = %bb.af, %.thread.i.i.i.i.i77.i.i.i.i, %bb.ae
  %.1.i.i.i.i.i79.i.i.i.i = phi i64 [ %i.fs, %.thread.i.i.i.i.i77.i.i.i.i ], [ %i.fo, %bb.ae ], [ %i.fo, %bb.af ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !1016
  %i.ft = icmp sgt i64 %i.fk, -1
  br i1 %i.ft, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i78.i.i.i.i
  %i.fu = call noundef i64 @llvm.smin.i64(i64 %.1.i.i.i.i.i79.i.i.i.i, i64 %i.fk)
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit83.i.i.i.i

bb.ah:                                            ; preds = %_ZN6duckdb17LeftRightGrapheme9OperationINS_8string_tElEET0_T_.exit.i.i.i78.i.i.i.i
  %.not.i.i.i80.i.i.i.i = icmp eq i64 %i.fk, -9223372036854775808
  br i1 %.not.i.i.i80.i.i.i.i, label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit83.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = sub nsw i64 0, %i.fk
  %i.fw = call noundef i64 @llvm.smin.i64(i64 %.1.i.i.i.i.i79.i.i.i.i, i64 %i.fv)
  %i.fx = sub nsw i64 %.1.i.i.i.i.i79.i.i.i.i, %i.fw
  br label %_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit83.i.i.i.i

_ZN6duckdb19BinaryLambdaWrapper9OperationIZNS_L13RightFunctionINS_17LeftRightGraphemeEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlNS_8string_tElE_bSA_lSA_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit83.i.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.0.sink30.i.i.i81.i.i.i.i = phi i64 [ %i.fu, %bb.ag ], [ %i.fx, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.fy = add i64 %.1.i.i.i.i.i79.i.i.i.i, 1
  %i.fz = sub i64 %i.fy, %.0.sink30.i.i.i81.i.i.i.i
  %i.ga = call { i64, ptr } @_ZN6duckdb17SubstringGraphemeERNS_6VectorENS_8string_tEll(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 %.sroa.016.0.copyload.i.i.i.i, ptr %.sroa.417.0.copyload.i.i.i.i, i64 noundef %i.fz, i64 noundef %.0.sink30.i.i.i81.i.i.i.i), !noalias !1016 ; 2 uses
  %i.gb = extractvalue { i64, ptr } %i.ga, 0
  %i.gc = extractvalue { i64, ptr } %i.ga, 1
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.2104.i.i.i.i ; 2 uses
  store i64 %i.gb, ptr %i.gd, align 8, !alias.scope !1014, !noalias !1019
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gc, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !tbaa !66, !alias.scope !1014, !noalias !1019
  br label %bb.aj
end_hunk_1
