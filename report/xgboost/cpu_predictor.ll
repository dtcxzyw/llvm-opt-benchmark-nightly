Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSG_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvSA_iOT1_ENKUlSV_E_clImEEDaSV_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1410, !nonnull !141, !align !244
  %i.w = load i32, ptr %i.v, align 4, !tbaa !83
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.w, i64 %i.o, ptr %.val.i)
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1411, !nonnull !141, !align !245
  %i.z = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !314
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1412, !nonnull !141, !align !245
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1413, !nonnull !141, !align !245
  %i.ag = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1414, !nonnull !141
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82, !range !140, !noundef !141
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1415, !nonnull !141, !align !245
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE(ptr noundef nonnull align 8 dereferenceable(60) %i.y, i64 noundef %i.z, i64 %i.o, ptr %.val.i, i64 noundef %i.ab, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i1 noundef zeroext %i.aj, ptr noundef nonnull byval(%"struct.xgboost::common::OptionalWeights") align 8 %i.al)
  br i1 %i.q, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bd, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !167 ; 3 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !68 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.preheader8:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader8 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1405

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !319
  %i.bd = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.o
  br i1 %exitcond.not.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit, label %.lr.ph.i.i, !llvm.loop !1406

_ZZN7xgboost9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEEEvRKT0_RKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS1_9CopyViewsEEEPNS1_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS_6common15OptionalWeightsEENKUlOT_E_clINSS_7Range1dEEEDaSV_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EE12ThreadBufferEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS8_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i64 %3, ptr %4) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !314
  %i.c = load i64, ptr %1, align 8, !tbaa !315    ; 2 uses
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = zext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %scevgep23 = getelementptr i8, ptr %0, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit
  %i.f = phi i64 [ %i.c, %.lr.ph ], [ %i.dh, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ]
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.df, %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.011 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !68   ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp eq ptr %i.i, %i.j
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i64 %i.n, %i.d
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = sub nuw nsw i64 %i.d, %i.n
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i64 noundef %i.q)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !69
  %.pre2.i = load ptr, ptr %i.h, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %.pre2.i, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.s = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 6 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not6.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = add i64 %i.t, -4
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check37 = icmp ult i64 %i.w, 28
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i.preheader53, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec39 = and i64 %i.y, 9223372036854775800    ; 3 uses
  %i.z = shl i64 %n.vec39, 2
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph38
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next42, %vector.body40 ] ; 2 uses
  %i.ab = shl i64 %index41, 2
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !72
  store <4 x float> splat (float +qnan), ptr %i.ac, align 4, !tbaa !72
  %index.next42 = add nuw i64 %index41, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.ad, label %middle.block43, label %vector.body40, !llvm.loop !1416

middle.block43:                                   ; preds = %vector.body40
  %cmp.n44 = icmp eq i64 %i.y, %n.vec39
  br i1 %cmp.n44, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.preheader53:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block43
  %.07.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block43 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader53 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1417

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block43, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.af, align 8, !tbaa !319
  %.pre = load i64, ptr %1, align 8, !tbaa !315
  br label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.b
  %i.ag = phi ptr [ %i.s, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.j, %bb.b ] ; 10 uses
  %i.ah = phi i64 [ %.pre, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.b ]
  %i.ai = add i64 %i.ah, %.011                    ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !468   ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(56) %i.aj), !inline_history !1418 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1430, !noalias !1431 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1432, !noalias !1431 ; 10 uses
  %i.ar = mul i64 %i.aq, %i.ai
  %i.as = getelementptr [4 x i8], ptr %i.ao, i64 %i.ar ; 5 uses
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.aq, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.at = shl i64 %i.aq, 2
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %i.au = shl i64 %i.ai, 2
  %i.av = add i64 %i.au, 4
  %i.aw = mul i64 %i.aq, %i.av
  %scevgep22 = getelementptr i8, ptr %i.ao, i64 %i.aw
  %bound0 = icmp ult ptr %i.ag, %scevgep22
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ult ptr %i.ag, %scevgep23
  %bound125 = icmp ult ptr %i.e, %scevgep
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, -4                      ; 3 uses
  %i.ax = load float, ptr %i.e, align 8, !tbaa !469, !alias.scope !1433
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue34, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue34 ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %predphi, %pred.store.continue34 ]
  %vec.phi27 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %predphi35, %pred.store.continue34 ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %wide.load = load <2 x float>, ptr %i.ay, align 4, !tbaa !72, !alias.scope !1434, !noalias !1435 ; 4 uses
  %wide.load28 = load <2 x float>, ptr %i.az, align 4, !tbaa !72, !alias.scope !1434, !noalias !1435 ; 4 uses
  %i.ba = fcmp une <2 x float> %broadcast.splat, %wide.load
  %i.bb = fcmp une <2 x float> %broadcast.splat, %wide.load28
  %i.bc = fcmp ord <2 x float> %wide.load, zeroinitializer
  %i.bd = fcmp ord <2 x float> %wide.load28, zeroinitializer
  %.not48 = and <2 x i1> %i.bc, %i.ba             ; 3 uses
  %.not51 = and <2 x i1> %i.bd, %i.bb             ; 3 uses
  %i.be = extractelement <2 x i1> %.not48, i64 0
  br i1 %i.be, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index
  %i.bg = extractelement <2 x float> %wide.load, i64 0
  store float %i.bg, ptr %i.bf, align 4, !tbaa !72, !alias.scope !1436, !noalias !1437
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bh = extractelement <2 x i1> %.not48, i64 1
  br i1 %i.bh, label %pred.store.if29, label %pred.store.continue30

pred.store.if29:                                  ; preds = %pred.store.continue
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = extractelement <2 x float> %wide.load, i64 1
  store float %i.bk, ptr %i.bj, align 4, !tbaa !72, !alias.scope !1436, !noalias !1437
  br label %pred.store.continue30

pred.store.continue30:                            ; preds = %pred.store.if29, %pred.store.continue
  %i.bl = extractelement <2 x i1> %.not51, i64 0
  br i1 %i.bl, label %pred.store.if31, label %pred.store.continue32

pred.store.if31:                                  ; preds = %pred.store.continue30
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = extractelement <2 x float> %wide.load28, i64 0
  store float %i.bo, ptr %i.bn, align 4, !tbaa !72, !alias.scope !1436, !noalias !1437
  br label %pred.store.continue32

pred.store.continue32:                            ; preds = %pred.store.if31, %pred.store.continue30
  %i.bp = extractelement <2 x i1> %.not51, i64 1
  br i1 %i.bp, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = extractelement <2 x float> %wide.load28, i64 1
  store float %i.bs, ptr %i.br, align 4, !tbaa !72, !alias.scope !1436, !noalias !1437
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue32
  %i.bt = zext <2 x i1> %.not48 to <2 x i64>
  %predphi = add <2 x i64> %vec.phi, %i.bt        ; 2 uses
  %i.bu = zext <2 x i1> %.not51 to <2 x i64>
  %predphi35 = add <2 x i64> %vec.phi27, %i.bu    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1427

middle.block:                                     ; preds = %pred.store.continue34
  %bin.rdx = add <2 x i64> %predphi35, %predphi
  %i.bw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i.preheader52

.lr.ph.i.i.preheader52:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.014.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.0913.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %i.bw, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.014.i.i.ph, 1
  %xtraiter = and i64 %i.aq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader52
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.014.i.i.ph
  %i.by = load float, ptr %i.bx, align 4, !tbaa !72, !noalias !1435 ; 3 uses
  %i.bz = load float, ptr %i.e, align 8, !tbaa !469
  %i.ca = fcmp oeq float %i.bz, %i.by
  %i.cb = fcmp uno float %i.by, 0.000000e+00
  %or.cond.i.i.prol = or i1 %i.cb, %i.ca
  br i1 %or.cond.i.i.prol, label %.lr.ph.i.i.prol.loopexit.unr-lcssa, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.prol
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.014.i.i.ph
  store float %i.by, ptr %i.cc, align 4, !tbaa !72
  %i.cd = add i64 %.0913.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit.unr-lcssa

.lr.ph.i.i.prol.loopexit.unr-lcssa:               ; preds = %bb.f, %.lr.ph.i.i.prol
  %.1.i.i.prol = phi i64 [ %.0913.i.i.ph, %.lr.ph.i.i.prol ], [ %i.cd, %bb.f ] ; 2 uses
  %i.ce = or disjoint i64 %.014.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.preheader52
  %.1.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader52 ], [ %.1.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.014.i.i.unr = phi i64 [ %.014.i.i.ph, %.lr.ph.i.i.preheader52 ], [ %i.ce, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %.0913.i.i.unr = phi i64 [ %.0913.i.i.ph, %.lr.ph.i.i.preheader52 ], [ %.1.i.i.prol, %.lr.ph.i.i.prol.loopexit.unr-lcssa ]
  %i.cf = icmp eq i64 %i.aq, %.neg
  br i1 %i.cf, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.i
  %.014.i.i = phi i64 [ %i.cv, %bb.i ], [ %.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.0913.i.i = phi i64 [ %.1.i.i.1, %bb.i ], [ %.0913.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.014.i.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !72, !noalias !1435 ; 3 uses
  %i.ci = load float, ptr %i.e, align 8, !tbaa !469
  %i.cj = fcmp oeq float %i.ci, %i.ch
  %i.ck = fcmp uno float %i.ch, 0.000000e+00
  %or.cond.i.i = or i1 %i.ck, %i.cj
  br i1 %or.cond.i.i, label %.lr.ph.i.i.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.014.i.i
  store float %i.ch, ptr %i.cl, align 4, !tbaa !72
  %i.cm = add i64 %.0913.i.i, 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %.0913.i.i, %.lr.ph.i.i ], [ %i.cm, %bb.g ] ; 2 uses
  %i.cn = add nuw i64 %.014.i.i, 1                ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !72, !noalias !1435 ; 3 uses
  %i.cq = load float, ptr %i.e, align 8, !tbaa !469
  %i.cr = fcmp oeq float %i.cq, %i.cp
  %i.cs = fcmp uno float %i.cp, 0.000000e+00
  %or.cond.i.i.1 = or i1 %i.cs, %i.cr
  br i1 %or.cond.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.1
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cn
  store float %i.cp, ptr %i.ct, align 4, !tbaa !72
  %i.cu = add i64 %.1.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.1
  %.1.i.i.1 = phi i64 [ %.1.i.i, %.lr.ph.i.i.1 ], [ %i.cu, %bb.h ] ; 2 uses
  %i.cv = add nuw i64 %.014.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cv, %i.aq
  br i1 %exitcond.not.i.i.1, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit, label %.lr.ph.i.i, !llvm.loop !1428

_ZNK7xgboost9predictor13DataToFeatVecINS0_11AdapterViewINS_4data12DenseAdapterENS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %bb.i, %middle.block, %bb.e
  %.09.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %i.bw, %middle.block ], [ %.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.1.i.i.1, %bb.i ]
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = icmp ne i64 %.09.lcssa.i.i, %i.db
  %i.dd = zext i1 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 %i.dd, ptr %i.de, align 8, !tbaa !319
  %i.df = add nuw i64 %.011, 1                    ; 2 uses
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !314
  %i.dh = load i64, ptr %1, align 8, !tbaa !315   ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp ult i64 %i.df, %i.di
  br i1 %i.dj, label %bb.b, label %._crit_edge, !llvm.loop !1429
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3any17_Manager_externalISt10shared_ptrIN7xgboost4data12ArrayAdapterEEE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 7 uses
  switch i32 %0, label %bb.q [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
end_hunk_0
