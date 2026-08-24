Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_ZNS1_13LaunchPredictISF_EEvPKNS_7ContextES5_SC_SE_EUlPKS4_E_EEvSK_S5_SC_SE_OT0_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.ug

bb.ug:                                            ; preds = %.body138.i.i518, %bb.uf, %bb.ta
  %.pn26.i.i515 = phi { ptr, i32 } [ %i.bbu, %bb.ta ], [ %eh.lpad-body139.i.i519, %.body138.i.i518 ], [ %i.beq, %bb.uf ]
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #18
  br label %.body56.i.i508

.body56.i.i508:                                   ; preds = %bb.ug, %bb.sf
  %.pn26.pn.i.i509 = phi { ptr, i32 } [ %.pn26.i.i515, %bb.ug ], [ %i.azv, %bb.sf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %common.resume

_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicyD2Ev.exit: ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i600, %bb.qq, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i502, %bb.pc, %bb.pb, %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i151, %bb.ga, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i136, %bb.em, %bb.el
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1799, !nonnull !146, !align !335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !394
  %i.f = load i64, ptr %1, align 8, !tbaa !457    ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1801, !nonnull !146, !align !335 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !455  ; 2 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !150 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !153
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !179

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !63

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %.not.i.i = icmp eq i64 %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1802, !nonnull !146, !align !333
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bq, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %i.ai, %i.z
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.z, %i.ai
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i64 noundef %i.al)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !62
  %.pre2.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.ax, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1803

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.preheader50:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader50 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1804

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !462
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.bb = phi ptr [ %i.an, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ae, %bb.e ]
  %i.bc = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.aa, %bb.e ]
  %i.bd = add i64 %i.bc, %.011.i.i
  %i.be = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 noundef %i.bd, ptr noundef %i.bb)
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !173
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ne i64 %i.be, %i.bk
  %i.bm = zext i1 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !462
  %i.bo = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !455
  %i.bq = load i64, ptr %1, align 8, !tbaa !457   ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !837

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1805, !nonnull !146, !align !333
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1806, !nonnull !146, !align !335 ; 2 uses
  %.val12.i = load ptr, ptr %i.by, align 8, !tbaa !147 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !215 ; 2 uses
  %i.ca = icmp ne ptr %.val12.i, null
  %i.cb = icmp eq ptr %.val13.i, null
  %i.cc = or i1 %i.ca, %i.cb
  %i.cd = ptrtoint ptr %.val13.i to i64
  %i.ce = ptrtoint ptr %.val12.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv i64 %i.cf, 200
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ci = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cj = mul i64 %i.g, %i.ci
  br i1 %i.cc, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.i, !prof !63

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.db, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !173 ; 3 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !59 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i16.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = add i64 %i.co, -4
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec40 = and i64 %i.ct, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec40, 2
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 2 uses
  %i.cw = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep43, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep43, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.cx, align 4, !tbaa !64
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.cy, label %middle.block45, label %vector.body41, !llvm.loop !1807

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %i.ct, %n.vec40
  br i1 %cmp.n46, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block45
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block45 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1808

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block45, %.lr.ph.i16.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 1, ptr %i.da, align 8, !tbaa !462
  %i.db = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i, !llvm.loop !845

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cg
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !179

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.dc = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !227
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.l, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !179

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !825 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !826 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader.i

.lr.ph.i.i.i.i.i.i.i18.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %.val.i, align 8, !tbaa !59
  %.sroa.23.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.in.i.i29.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i18.preheader.i
  %i.dp = phi i32 [ %i.fx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ]
  %i.dq = phi ptr [ %i.fv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !850 ; 2 uses
  %i.dt = and i32 %i.ds, 2147483647
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !64 ; 6 uses
  %i.dx = fcmp uno float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.dy = icmp slt i32 %i.ds, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %.sroa.02.0.copyload.i21.i = load i64, ptr %i.dc, align 8, !tbaa !47 ; 2 uses
  %.sroa.23.0.copyload.i23.i = load ptr, ptr %.sroa.23.0..sroa_idx.i22.i, align 8, !tbaa !58
  %i.ea = icmp eq i64 %.sroa.02.0.copyload.i21.i, 0
  br i1 %i.ea, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.02.0.copyload.i21.i, %i.eb
  br i1 %i.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i, label %bb.p, !prof !63

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i23.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !352
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %bb.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i
  %i.eg = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.eh = load i64, ptr %i.dn, align 8, !tbaa !851
  %i.ei = icmp ugt i64 %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i: ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !852
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !853 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !855 ; 3 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.split.i.i33.i, label %bb.s

.split.i.i33.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.ep = load i64, ptr %i.dm, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i34.i = icmp ugt i64 %i.el, %i.ep
  br i1 %.not8.i.i34.i, label %bb.t, label %bb.u, !prof !179

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.eq = add i64 %i.en, %i.el
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !771
  %.not.i.i28.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i.i28.i, label %bb.t, label %bb.v, !prof !179

bb.t:                                             ; preds = %bb.s, %.split.i.i33.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.u:                                             ; preds = %.split.i.i33.i
  %i.es = sub nuw i64 %i.ep, %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.et = phi i64 [ %i.es, %bb.u ], [ %i.en, %bb.s ] ; 2 uses
  %i.eu = load ptr, ptr %.in.i.i29.i, align 8, !tbaa !772 ; 2 uses
  %i.ev = icmp ne ptr %i.eu, null
  %i.ew = icmp eq i64 %i.et, 0
  %i.ex = or i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i, label %bb.w, !prof !63

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable
end_hunk_0
begin_hunk_1_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
  %i.gy = zext i32 %.012.i.i.i.i.i10.i.i.i to i64 ; 2 uses
  %i.gz = icmp ugt i64 %.sroa.02.0.copyload.i.i, %i.gy
  br i1 %i.gz, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i, label %bb.af, !prof !63

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i: ; preds = %bb.ae
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i.i, i64 %i.gy
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !352
  %i.hc = icmp eq i8 %i.hb, 1
  br i1 %i.hc, label %bb.ag, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i

bb.ag:                                            ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i
  %i.hd = sext i32 %.012.i.i.i.i.i10.i.i.i to i64 ; 2 uses
  %i.he = load i64, ptr %i.gi, align 8, !tbaa !851
  %i.hf = icmp ugt i64 %i.he, %i.hd
  br i1 %i.hf, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i, label %bb.ah, !prof !63

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i: ; preds = %bb.ag
  %i.hg = load ptr, ptr %i.gj, align 8, !tbaa !852
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.hd ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !853 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !855 ; 3 uses
  %i.hl = icmp eq i64 %i.hk, -1
  br i1 %i.hl, label %.split.i.i20.i, label %bb.ai

.split.i.i20.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i
  %i.hm = load i64, ptr %i.gh, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i.i = icmp ugt i64 %i.hi, %i.hm
  br i1 %.not8.i.i.i, label %bb.aj, label %bb.ak, !prof !179

bb.ai:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i
  %i.hn = add i64 %i.hk, %i.hi
  %i.ho = load i64, ptr %i.gh, align 8, !tbaa !771
  %.not.i.i19.i = icmp ugt i64 %i.hn, %i.ho
  br i1 %.not.i.i19.i, label %bb.aj, label %bb.al, !prof !179

bb.aj:                                            ; preds = %bb.ai, %.split.i.i20.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.ak:                                            ; preds = %.split.i.i20.i
  %i.hp = sub nuw i64 %i.hm, %i.hi
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.hq = phi i64 [ %i.hp, %bb.ak ], [ %i.hk, %bb.ai ] ; 2 uses
  %i.hr = load ptr, ptr %.in.i.i.i, align 8, !tbaa !772 ; 2 uses
  %i.hs = icmp ne ptr %i.hr, null
  %i.ht = icmp eq i64 %i.hq, 0
  %i.hu = or i1 %i.ht, %i.hs
  br i1 %i.hu, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i, label %bb.am, !prof !63

bb.am:                                            ; preds = %bb.al
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i: ; preds = %bb.al
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hi
  %i.hw = fcmp olt float %i.gr, 0.000000e+00
  %i.hx = fcmp oge float %i.gr, f0x4B800000
  %i.hy = or i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.an, !prof !179

bb.an:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i
  %i.hz = fptoui float %i.gr to i64
  %i.ia = lshr i64 %i.hz, 5
  %.not.i15.i.i = icmp ult i64 %i.ia, %i.hq
  br i1 %.not.i15.i.i, label %bb.ao, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.ib = fptosi float %i.gr to i32               ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %i.id = lshr i64 %i.ic, 5
  %i.ie = and i32 %i.ib, 31
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.id
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !80
  %i.ih = lshr exact i32 -2147483648, %i.ie
  %i.ii = and i32 %i.ig, %i.ih
  %.not5.i.i.i = icmp eq i32 %i.ii, 0
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i, %bb.ad
  %i.ij = load ptr, ptr %i.gk, align 8, !tbaa !938
  %i.ik = sext i32 %.012.i.i.i.i.i10.i.i.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !64
  %i.in = fcmp olt float %i.gr, %i.im
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i, %bb.ao, %bb.an, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i
  %.0.i.i = phi i1 [ %i.in, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i ], [ %.not5.i.i.i, %bb.ao ], [ true, %bb.an ]
  %i.io = xor i1 %.0.i.i, true
  %i.ip = zext i1 %i.io to i32
  %i.iq = add nuw nsw i32 %i.gl, %i.ip
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %bb.ac
  %.0.i.i.i.i.i.i12.i.i.i = phi i32 [ %i.gw, %bb.ac ], [ %i.iq, %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ] ; 3 uses
  %i.ir = sext i32 %.0.i.i.i.i.i.i12.i.i.i to i64 ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !80 ; 2 uses
  %i.iu = icmp eq i32 %i.it, -1
  br i1 %i.iu, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %bb.ab, !llvm.loop !939

_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i ], [ %.0.i.i.i.i.i.i12.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ]
  %i.iv = sitofp i32 %.0.i.i.i to float
  %i.iw = load ptr, ptr %i.ch, align 8, !tbaa !1809, !nonnull !146, !align !335
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !59
  %i.iy = getelementptr [4 x i8], ptr %i.ix, i64 %i.cj
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %indvars.iv.i
  store float %i.iv, ptr %i.iz, align 4, !tbaa !64
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next.i, %i.ci
  br i1 %exitcond43.not.i, label %._crit_edge.i, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, !llvm.loop !1810

_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 6 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1811, !nonnull !146, !align !335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !445
  %i.f = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1813, !nonnull !146, !align !335 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !455
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !150 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !153
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !179

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 3 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !63

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1814, !nonnull !146, !align !333
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.y, i64 %i.s, ptr %.val.i)
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1815, !nonnull !146, !align !333
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !80 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1816, !nonnull !146, !align !335 ; 2 uses
  %.val12.i = load ptr, ptr %i.ae, align 8, !tbaa !147 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val13.i = load ptr, ptr %i.af, align 8, !tbaa !215 ; 2 uses
  %i.ag = icmp ne ptr %.val12.i, null
  %i.ah = icmp eq ptr %.val13.i, null
  %i.ai = or i1 %i.ag, %i.ah
  %i.aj = ptrtoint ptr %.val13.i to i64
  %i.ak = ptrtoint ptr %.val12.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv i64 %i.al, 200
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ao = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ap = mul i64 %i.g, %i.ao
  br i1 %i.ai, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.e, !prof !63

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bh, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !173 ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = ptrtoaddr ptr %i.at to i64
  %i.aw = add i64 %i.au, -4
  %i.ax = sub i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.at, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.bd, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.i.i.preheader29:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader29 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1818

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 1, ptr %i.bg, align 8, !tbaa !462
  %i.bh = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i, !llvm.loop !464

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.am
  br i1 %exitcond.not.i, label %bb.f, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !179

bb.e:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.f:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.bi = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !227
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.v

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.h, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !179

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !825 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !826 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i16.preheader.i

.lr.ph.i.i.i.i.i.i.i16.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.br = load ptr, ptr %.val.i, align 8, !tbaa !59
  %.sroa.23.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i16.i

.lr.ph.i.i.i.i.i.i.i16.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader.i
  %i.bv = phi i32 [ %i.ed, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ]
  %i.bw = phi ptr [ %i.eb, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !850 ; 2 uses
  %i.bz = and i32 %i.by, 2147483647
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !64 ; 6 uses
  %i.cd = fcmp uno float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %i.ce = icmp slt i32 %i.by, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ce, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.cf = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %.sroa.02.0.copyload.i19.i = load i64, ptr %i.bi, align 8, !tbaa !47 ; 2 uses
  %.sroa.23.0.copyload.i21.i = load ptr, ptr %.sroa.23.0..sroa_idx.i20.i, align 8, !tbaa !58
  %i.cg = icmp eq i64 %.sroa.02.0.copyload.i19.i, 0
  br i1 %i.cg, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ci = icmp ugt i64 %.sroa.02.0.copyload.i19.i, %i.ch
  br i1 %i.ci, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i, label %bb.l, !prof !63

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i: ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i21.i, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !352
  %i.cl = icmp eq i8 %i.ck, 1
  br i1 %i.cl, label %bb.m, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i

bb.m:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i
  %i.cm = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.cn = load i64, ptr %i.bt, align 8, !tbaa !851
  %i.co = icmp ugt i64 %i.cn, %i.cm
  br i1 %i.co, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i, label %bb.n, !prof !63

bb.n:                                             ; preds = %bb.m
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i: ; preds = %bb.m
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !852
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cm ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !853 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855 ; 3 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %.split.i.i31.i, label %bb.o

.split.i.i31.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.cv = load i64, ptr %i.bs, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i32.i = icmp ugt i64 %i.cr, %i.cv
  br i1 %.not8.i.i32.i, label %bb.p, label %bb.q, !prof !179

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.cw = add i64 %i.ct, %i.cr
  %i.cx = load i64, ptr %i.bs, align 8, !tbaa !771
  %.not.i.i26.i = icmp ugt i64 %i.cw, %i.cx
  br i1 %.not.i.i26.i, label %bb.p, label %bb.r, !prof !179

bb.p:                                             ; preds = %bb.o, %.split.i.i31.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.q:                                             ; preds = %.split.i.i31.i
  %i.cy = sub nuw i64 %i.cv, %i.cr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cz = phi i64 [ %i.cy, %bb.q ], [ %i.ct, %bb.o ] ; 2 uses
  %i.da = load ptr, ptr %.in.i.i27.i, align 8, !tbaa !772 ; 2 uses
  %i.db = icmp ne ptr %i.da, null
  %i.dc = icmp eq i64 %i.cz, 0
  %i.dd = or i1 %i.dc, %i.db
  br i1 %i.dd, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i, label %bb.s, !prof !63

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35
  unreachable
end_hunk_1
begin_hunk_2_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !80 ; 2 uses
  %i.ha = icmp eq i32 %i.gz, -1
  br i1 %i.ha, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %bb.x, !llvm.loop !939

_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i ], [ %.0.i.i.i.i.i.i12.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ]
  %i.hb = sitofp i32 %.0.i.i.i to float
  %i.hc = load ptr, ptr %i.an, align 8, !tbaa !1819, !nonnull !146, !align !335
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !59
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %i.ap
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %indvars.iv.i
  store float %i.hb, ptr %i.hf, align 4, !tbaa !64
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next.i, %i.ao
  br i1 %exitcond41.not.i, label %._crit_edge.i, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, !llvm.loop !1820

_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1821, !nonnull !146, !align !335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !488
  %i.f = load i64, ptr %1, align 8, !tbaa !457    ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1823, !nonnull !146, !align !335 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !455  ; 2 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !150 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !153
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !179

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !63

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %.not.i.i = icmp eq i64 %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1824, !nonnull !146, !align !333
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bq, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %i.ai, %i.z
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.z, %i.ai
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i64 noundef %i.al)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !62
  %.pre2.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.ax, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.preheader50:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader50 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1826

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !462
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.bb = phi ptr [ %i.an, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ae, %bb.e ]
  %i.bc = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.aa, %bb.e ]
  %i.bd = add i64 %i.bc, %.011.i.i
  %i.be = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.bd, ptr noundef %i.bb)
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !173
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ne i64 %i.be, %i.bk
  %i.bm = zext i1 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !462
  %i.bo = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !455
  %i.bq = load i64, ptr %1, align 8, !tbaa !457   ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !1176

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1827, !nonnull !146, !align !333
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1828, !nonnull !146, !align !335 ; 2 uses
  %.val12.i = load ptr, ptr %i.by, align 8, !tbaa !147 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !215 ; 2 uses
  %i.ca = icmp ne ptr %.val12.i, null
  %i.cb = icmp eq ptr %.val13.i, null
  %i.cc = or i1 %i.ca, %i.cb
  %i.cd = ptrtoint ptr %.val13.i to i64
  %i.ce = ptrtoint ptr %.val12.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv i64 %i.cf, 200
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ci = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cj = mul i64 %i.g, %i.ci
  br i1 %i.cc, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.i, !prof !63

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.db, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !173 ; 3 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !59 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i16.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = add i64 %i.co, -4
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec40 = and i64 %i.ct, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec40, 2
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 2 uses
  %i.cw = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep43, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep43, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.cx, align 4, !tbaa !64
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.cy, label %middle.block45, label %vector.body41, !llvm.loop !1829

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %i.ct, %n.vec40
  br i1 %cmp.n46, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block45
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block45 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1830

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block45, %.lr.ph.i16.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 1, ptr %i.da, align 8, !tbaa !462
  %i.db = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i, !llvm.loop !1184

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cg
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !179

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.dc = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !227
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.l, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !179

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !825 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !826 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader.i

.lr.ph.i.i.i.i.i.i.i18.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %.val.i, align 8, !tbaa !59
  %.sroa.23.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.in.i.i29.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i18.preheader.i
  %i.dp = phi i32 [ %i.fx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ]
  %i.dq = phi ptr [ %i.fv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !850 ; 2 uses
  %i.dt = and i32 %i.ds, 2147483647
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !64 ; 6 uses
  %i.dx = fcmp uno float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.dy = icmp slt i32 %i.ds, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %.sroa.02.0.copyload.i21.i = load i64, ptr %i.dc, align 8, !tbaa !47 ; 2 uses
  %.sroa.23.0.copyload.i23.i = load ptr, ptr %.sroa.23.0..sroa_idx.i22.i, align 8, !tbaa !58
  %i.ea = icmp eq i64 %.sroa.02.0.copyload.i21.i, 0
  br i1 %i.ea, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.02.0.copyload.i21.i, %i.eb
  br i1 %i.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i, label %bb.p, !prof !63

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i23.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !352
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %bb.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i
  %i.eg = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.eh = load i64, ptr %i.dn, align 8, !tbaa !851
  %i.ei = icmp ugt i64 %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i: ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !852
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !853 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !855 ; 3 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.split.i.i33.i, label %bb.s

.split.i.i33.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.ep = load i64, ptr %i.dm, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i34.i = icmp ugt i64 %i.el, %i.ep
  br i1 %.not8.i.i34.i, label %bb.t, label %bb.u, !prof !179

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.eq = add i64 %i.en, %i.el
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !771
  %.not.i.i28.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i.i28.i, label %bb.t, label %bb.v, !prof !179

bb.t:                                             ; preds = %bb.s, %.split.i.i33.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.u:                                             ; preds = %.split.i.i33.i
  %i.es = sub nuw i64 %i.ep, %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.et = phi i64 [ %i.es, %bb.u ], [ %i.en, %bb.s ] ; 2 uses
  %i.eu = load ptr, ptr %.in.i.i29.i, align 8, !tbaa !772 ; 2 uses
  %i.ev = icmp ne ptr %i.eu, null
  %i.ew = icmp eq i64 %i.et, 0
  %i.ex = or i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i, label %bb.w, !prof !63

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable
end_hunk_2
begin_hunk_3_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
  br i1 %i.al, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.am = icmp samesign ult i64 %i.ak, %i.z
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.an = sub nuw nsw i64 %i.z, %i.ak
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i64 noundef %i.an)
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !62
  %.pre2.i.i = load ptr, ptr %i.ae, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i:           ; preds = %bb.g, %bb.f
  %i.ao = phi ptr [ %.pre2.i.i, %bb.g ], [ %i.af, %bb.f ] ; 4 uses
  %i.ap = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ag, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1837

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.preheader51:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1838

_ZN7xgboost7RegTree4FVec4InitEm.exit.i:           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !462
  %.pre.i = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, %bb.e
  %i.bd = phi i64 [ %.pre.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ac, %bb.e ] ; 3 uses
  %i.be = phi ptr [ %i.ap, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ag, %bb.e ] ; 6 uses
  %i.bf = phi ptr [ %i.ao, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.af, %bb.e ]
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !794
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bd
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %.011.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !47 ; 3 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !47 ; 4 uses
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !1163 ; 2 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = icmp eq i64 %i.bk, %i.bl                ; 2 uses
  %i.bp = or i1 %i.bo, %i.bn
  br i1 %i.bp, label %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i, label %bb.i, !prof !63

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i: ; preds = %bb.h
  %i.bq = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl ; 5 uses
  br i1 %i.bo, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %xtraiter = and i64 %i.bq, 3                    ; 3 uses
  %i.bs = sub i64 %i.bl, %i.bk
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bq, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.020.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cv, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !1164
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !1166
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.by
  store float %i.bw, ptr %i.bz, align 4, !tbaa !64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !1164
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !1166
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cf
  store float %i.cd, ptr %i.cg, align 4, !tbaa !64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !1164
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !1166
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cm
  store float %i.ck, ptr %i.cn, align 4, !tbaa !64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !1164
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !1166
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ct
  store float %i.cr, ptr %i.cu, align 4, !tbaa !64
  %i.cv = add nuw i64 %.020.i.i.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !1208

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.020.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cv, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.020.i.i.i.epil = phi i64 [ %i.dc, %.lr.ph.i.i.i.epil ], [ %.020.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i.epil ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !1164
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !1166
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.da
  store float %i.cy, ptr %i.db, align 4, !tbaa !64
  %i.dc = add nuw i64 %.020.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1839

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %i.dd = ptrtoint ptr %i.bf to i64
  %i.de = ptrtoint ptr %i.be to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 2
  %i.dh = icmp ne i64 %i.bq, %i.dg
  %i.di = zext i1 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 %i.di, ptr %i.dj, align 8, !tbaa !462
  %i.dk = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !455
  %i.dm = sub i64 %i.dl, %i.bd
  %i.dn = icmp ult i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit, !llvm.loop !1210

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1840, !nonnull !146, !align !333
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !80 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1841, !nonnull !146, !align !335 ; 2 uses
  %.val12.i = load ptr, ptr %i.dt, align 8, !tbaa !147 ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %.val13.i = load ptr, ptr %i.du, align 8, !tbaa !215 ; 2 uses
  %i.dv = icmp ne ptr %.val12.i, null
  %i.dw = icmp eq ptr %.val13.i, null
  %i.dx = or i1 %i.dv, %i.dw
  %i.dy = ptrtoint ptr %.val13.i to i64
  %i.dz = ptrtoint ptr %.val12.i to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv i64 %i.ea, 200
  %i.ec = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ed = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ee = mul i64 %i.g, %i.ed
  br i1 %i.dx, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.j, !prof !63

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.ew, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !173 ; 3 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !59 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.eh
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.ej = ptrtoaddr ptr %i.eh to i64
  %i.ek = ptrtoaddr ptr %i.ei to i64
  %i.el = add i64 %i.ej, -4
  %i.em = sub i64 %i.el, %i.ek                    ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.em, 28
  br i1 %min.iters.check39, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec41 = and i64 %i.eo, 9223372036854775800   ; 3 uses
  %i.ep = shl i64 %n.vec41, 2
  %i.eq = getelementptr i8, ptr %i.ei, i64 %i.ep
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.er = shl i64 %index43, 2
  %next.gep44 = getelementptr i8, ptr %i.ei, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep44, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.es, align 4, !tbaa !64
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.et, label %middle.block46, label %vector.body42, !llvm.loop !1842

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.eo, %n.vec41
  br i1 %cmp.n47, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block46
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eq, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.eu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, %i.eh
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1843

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block46, %.lr.ph.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i8 1, ptr %i.ev, align 8, !tbaa !462
  %i.ew = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ew, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i, !llvm.loop !1218

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.eb
  br i1 %exitcond.not.i, label %bb.k, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !179

bb.j:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.k:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.ex = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 192
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !227
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.m, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !179

bb.m:                                             ; preds = %bb.l
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !825 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !826 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, -1
  br i1 %i.ff, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i16.preheader.i

.lr.ph.i.i.i.i.i.i.i16.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.fg = load ptr, ptr %.val.i, align 8, !tbaa !59
  %.sroa.23.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i16.i

.lr.ph.i.i.i.i.i.i.i16.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader.i
  %i.fk = phi i32 [ %i.hs, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ]
  %i.fl = phi ptr [ %i.hq, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !850 ; 2 uses
  %i.fo = and i32 %i.fn, 2147483647
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !64 ; 6 uses
  %i.fs = fcmp uno float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %i.ft = icmp slt i32 %i.fn, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ft, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.fu = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %.sroa.02.0.copyload.i19.i = load i64, ptr %i.ex, align 8, !tbaa !47 ; 2 uses
  %.sroa.23.0.copyload.i21.i = load ptr, ptr %.sroa.23.0..sroa_idx.i20.i, align 8, !tbaa !58
  %i.fv = icmp eq i64 %.sroa.02.0.copyload.i19.i, 0
  br i1 %i.fv, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fw = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.fx = icmp ugt i64 %.sroa.02.0.copyload.i19.i, %i.fw
  br i1 %i.fx, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i, label %bb.q, !prof !63

bb.q:                                             ; preds = %bb.p
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i: ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i21.i, i64 %i.fw
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !352
  %i.ga = icmp eq i8 %i.fz, 1
  br i1 %i.ga, label %bb.r, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i

bb.r:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i
  %i.gb = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.gc = load i64, ptr %i.fi, align 8, !tbaa !851
  %i.gd = icmp ugt i64 %i.gc, %i.gb
  br i1 %i.gd, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i, label %bb.s, !prof !63

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i: ; preds = %bb.r
  %i.ge = load ptr, ptr %i.fj, align 8, !tbaa !852
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gb ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !853 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !855 ; 3 uses
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %.split.i.i31.i, label %bb.t

.split.i.i31.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.gk = load i64, ptr %i.fh, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i32.i = icmp ugt i64 %i.gg, %i.gk
  br i1 %.not8.i.i32.i, label %bb.u, label %bb.v, !prof !179

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.gl = add i64 %i.gi, %i.gg
  %i.gm = load i64, ptr %i.fh, align 8, !tbaa !771
  %.not.i.i26.i = icmp ugt i64 %i.gl, %i.gm
  br i1 %.not.i.i26.i, label %bb.u, label %bb.w, !prof !179

bb.u:                                             ; preds = %bb.t, %.split.i.i31.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.v:                                             ; preds = %.split.i.i31.i
  %i.gn = sub nuw i64 %i.gk, %i.gg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.go = phi i64 [ %i.gn, %bb.v ], [ %i.gi, %bb.t ] ; 2 uses
  %i.gp = load ptr, ptr %.in.i.i27.i, align 8, !tbaa !772 ; 2 uses
  %i.gq = icmp ne ptr %i.gp, null
  %i.gr = icmp eq i64 %i.go, 0
  %i.gs = or i1 %i.gr, %i.gq
  br i1 %i.gs, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i, label %bb.x, !prof !63

bb.x:                                             ; preds = %bb.w
  call void @_ZSt9terminatev() #35
  unreachable
end_hunk_3
begin_hunk_4_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_11BlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !80 ; 2 uses
  %i.kp = icmp eq i32 %i.ko, -1
  br i1 %i.kp, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %bb.ac, !llvm.loop !939

_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_11BlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i ], [ %.0.i.i.i.i.i.i12.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ]
  %i.kq = sitofp i32 %.0.i.i.i to float
  %i.kr = load ptr, ptr %i.ec, align 8, !tbaa !1844, !nonnull !146, !align !335
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !59
  %i.kt = getelementptr [4 x i8], ptr %i.ks, i64 %i.ee
  %i.ku = getelementptr [4 x i8], ptr %i.kt, i64 %indvars.iv.i
  store float %i.kq, ptr %i.ku, align 4, !tbaa !64
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next.i, %i.ed
  br i1 %exitcond41.not.i, label %._crit_edge.i, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, !llvm.loop !1845

_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_11BlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1846, !nonnull !146, !align !335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !394
  %i.f = load i64, ptr %1, align 8, !tbaa !457    ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1848, !nonnull !146, !align !335 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !455  ; 2 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !150 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !153
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !179

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !63

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %.not.i.i = icmp eq i64 %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1849, !nonnull !146, !align !333
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bq, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %i.ai, %i.z
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.z, %i.ai
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i64 noundef %i.al)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !62
  %.pre2.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.ax, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1850

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.preheader50:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader50 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1851

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !462
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.bb = phi ptr [ %i.an, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ae, %bb.e ]
  %i.bc = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.aa, %bb.e ]
  %i.bd = add i64 %i.bc, %.011.i.i
  %i.be = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 noundef %i.bd, ptr noundef %i.bb)
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !173
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ne i64 %i.be, %i.bk
  %i.bm = zext i1 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !462
  %i.bo = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !455
  %i.bq = load i64, ptr %1, align 8, !tbaa !457   ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !837

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1852, !nonnull !146, !align !333
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1853, !nonnull !146, !align !335 ; 2 uses
  %.val12.i = load ptr, ptr %i.by, align 8, !tbaa !147 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !215 ; 2 uses
  %i.ca = icmp ne ptr %.val12.i, null
  %i.cb = icmp eq ptr %.val13.i, null
  %i.cc = or i1 %i.ca, %i.cb
  %i.cd = ptrtoint ptr %.val13.i to i64
  %i.ce = ptrtoint ptr %.val12.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv i64 %i.cf, 200
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ci = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cj = mul i64 %i.g, %i.ci
  br i1 %i.cc, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.i, !prof !63

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.db, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !173 ; 3 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !59 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i16.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = add i64 %i.co, -4
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec40 = and i64 %i.ct, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec40, 2
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 2 uses
  %i.cw = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep43, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep43, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.cx, align 4, !tbaa !64
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.cy, label %middle.block45, label %vector.body41, !llvm.loop !1854

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %i.ct, %n.vec40
  br i1 %cmp.n46, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block45
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block45 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1855

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block45, %.lr.ph.i16.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 1, ptr %i.da, align 8, !tbaa !462
  %i.db = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i, !llvm.loop !845

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cg
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !179

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.dc = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !227
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.l, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !179

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !825 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !826 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader.i

.lr.ph.i.i.i.i.i.i.i18.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %.val.i, align 8, !tbaa !59
  %.sroa.23.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.in.i.i29.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i18.preheader.i
  %i.dp = phi i32 [ %i.fx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ]
  %i.dq = phi ptr [ %i.fv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !850 ; 2 uses
  %i.dt = and i32 %i.ds, 2147483647
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !64 ; 6 uses
  %i.dx = fcmp uno float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.dy = icmp slt i32 %i.ds, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %.sroa.02.0.copyload.i21.i = load i64, ptr %i.dc, align 8, !tbaa !47 ; 2 uses
  %.sroa.23.0.copyload.i23.i = load ptr, ptr %.sroa.23.0..sroa_idx.i22.i, align 8, !tbaa !58
  %i.ea = icmp eq i64 %.sroa.02.0.copyload.i21.i, 0
  br i1 %i.ea, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.02.0.copyload.i21.i, %i.eb
  br i1 %i.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i, label %bb.p, !prof !63

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i23.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !352
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %bb.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i
  %i.eg = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.eh = load i64, ptr %i.dn, align 8, !tbaa !851
  %i.ei = icmp ugt i64 %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i: ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !852
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !853 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !855 ; 3 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.split.i.i33.i, label %bb.s

.split.i.i33.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.ep = load i64, ptr %i.dm, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i34.i = icmp ugt i64 %i.el, %i.ep
  br i1 %.not8.i.i34.i, label %bb.t, label %bb.u, !prof !179

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.eq = add i64 %i.en, %i.el
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !771
  %.not.i.i28.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i.i28.i, label %bb.t, label %bb.v, !prof !179

bb.t:                                             ; preds = %bb.s, %.split.i.i33.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.u:                                             ; preds = %.split.i.i33.i
  %i.es = sub nuw i64 %i.ep, %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.et = phi i64 [ %i.es, %bb.u ], [ %i.en, %bb.s ] ; 2 uses
  %i.eu = load ptr, ptr %.in.i.i29.i, align 8, !tbaa !772 ; 2 uses
  %i.ev = icmp ne ptr %i.eu, null
  %i.ew = icmp eq i64 %i.et, 0
  %i.ex = or i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i, label %bb.w, !prof !63

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable
end_hunk_4
begin_hunk_5_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
  %i.gy = zext i32 %.012.i.i.i.i.i10.i.i.i to i64 ; 2 uses
  %i.gz = icmp ugt i64 %.sroa.02.0.copyload.i.i, %i.gy
  br i1 %i.gz, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i, label %bb.af, !prof !63

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i: ; preds = %bb.ae
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i.i, i64 %i.gy
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !352
  %i.hc = icmp eq i8 %i.hb, 1
  br i1 %i.hc, label %bb.ag, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i

bb.ag:                                            ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i
  %i.hd = sext i32 %.012.i.i.i.i.i10.i.i.i to i64 ; 2 uses
  %i.he = load i64, ptr %i.gi, align 8, !tbaa !851
  %i.hf = icmp ugt i64 %i.he, %i.hd
  br i1 %i.hf, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i, label %bb.ah, !prof !63

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i: ; preds = %bb.ag
  %i.hg = load ptr, ptr %i.gj, align 8, !tbaa !852
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hg, i64 %i.hd ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !853 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !855 ; 3 uses
  %i.hl = icmp eq i64 %i.hk, -1
  br i1 %i.hl, label %.split.i.i20.i, label %bb.ai

.split.i.i20.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i
  %i.hm = load i64, ptr %i.gh, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i.i = icmp ugt i64 %i.hi, %i.hm
  br i1 %.not8.i.i.i, label %bb.aj, label %bb.ak, !prof !179

bb.ai:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i
  %i.hn = add i64 %i.hk, %i.hi
  %i.ho = load i64, ptr %i.gh, align 8, !tbaa !771
  %.not.i.i19.i = icmp ugt i64 %i.hn, %i.ho
  br i1 %.not.i.i19.i, label %bb.aj, label %bb.al, !prof !179

bb.aj:                                            ; preds = %bb.ai, %.split.i.i20.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.ak:                                            ; preds = %.split.i.i20.i
  %i.hp = sub nuw i64 %i.hm, %i.hi
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.hq = phi i64 [ %i.hp, %bb.ak ], [ %i.hk, %bb.ai ] ; 2 uses
  %i.hr = load ptr, ptr %.in.i.i.i, align 8, !tbaa !772 ; 2 uses
  %i.hs = icmp ne ptr %i.hr, null
  %i.ht = icmp eq i64 %i.hq, 0
  %i.hu = or i1 %i.ht, %i.hs
  br i1 %i.hu, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i, label %bb.am, !prof !63

bb.am:                                            ; preds = %bb.al
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i: ; preds = %bb.al
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hi
  %i.hw = fcmp olt float %i.gr, 0.000000e+00
  %i.hx = fcmp oge float %i.gr, f0x4B800000
  %i.hy = or i1 %i.hw, %i.hx
  br i1 %i.hy, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, label %bb.an, !prof !179

bb.an:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i
  %i.hz = fptoui float %i.gr to i64
  %i.ia = lshr i64 %i.hz, 5
  %.not.i15.i.i = icmp ult i64 %i.ia, %i.hq
  br i1 %.not.i15.i.i, label %bb.ao, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.ib = fptosi float %i.gr to i32               ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %i.id = lshr i64 %i.ic, 5
  %i.ie = and i32 %i.ib, 31
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.id
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !80
  %i.ih = lshr exact i32 -2147483648, %i.ie
  %i.ii = and i32 %i.ig, %i.ih
  %.not5.i.i.i = icmp eq i32 %i.ii, 0
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i, %bb.ad
  %i.ij = load ptr, ptr %i.gk, align 8, !tbaa !938
  %i.ik = sext i32 %.012.i.i.i.i.i10.i.i.i to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !64
  %i.in = fcmp olt float %i.gr, %i.im
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i, %bb.ao, %bb.an, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i
  %.0.i.i = phi i1 [ %i.in, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i ], [ %.not5.i.i.i, %bb.ao ], [ true, %bb.an ]
  %i.io = xor i1 %.0.i.i, true
  %i.ip = zext i1 %i.io to i32
  %i.iq = add nuw nsw i32 %i.gl, %i.ip
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %bb.ac
  %.0.i.i.i.i.i.i12.i.i.i = phi i32 [ %i.gw, %bb.ac ], [ %i.iq, %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ] ; 3 uses
  %i.ir = sext i32 %.0.i.i.i.i.i.i12.i.i.i to i64 ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !80 ; 2 uses
  %i.iu = icmp eq i32 %i.it, -1
  br i1 %i.iu, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %bb.ab, !llvm.loop !939

_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i ], [ %.0.i.i.i.i.i.i12.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ]
  %i.iv = sitofp i32 %.0.i.i.i to float
  %i.iw = load ptr, ptr %i.ch, align 8, !tbaa !1856, !nonnull !146, !align !335
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !59
  %i.iy = getelementptr [4 x i8], ptr %i.ix, i64 %i.cj
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %indvars.iv.i
  store float %i.iv, ptr %i.iz, align 4, !tbaa !64
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next.i, %i.ci
  br i1 %exitcond43.not.i, label %._crit_edge.i, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, !llvm.loop !1857

_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 6 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1858, !nonnull !146, !align !335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !445
  %i.f = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1860, !nonnull !146, !align !335 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !455
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !150 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !153
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !179

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 3 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !63

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1861, !nonnull !146, !align !333
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80
  call void @_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_11CatAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.y, i64 %i.s, ptr %.val.i)
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1862, !nonnull !146, !align !333
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !80 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1863, !nonnull !146, !align !335 ; 2 uses
  %.val12.i = load ptr, ptr %i.ae, align 8, !tbaa !147 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val13.i = load ptr, ptr %i.af, align 8, !tbaa !215 ; 2 uses
  %i.ag = icmp ne ptr %.val12.i, null
  %i.ah = icmp eq ptr %.val13.i, null
  %i.ai = or i1 %i.ag, %i.ah
  %i.aj = ptrtoint ptr %.val13.i to i64
  %i.ak = ptrtoint ptr %.val12.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv i64 %i.al, 200
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ao = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ap = mul i64 %i.g, %i.ao
  br i1 %i.ai, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.e, !prof !63

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.bh, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !173 ; 3 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = ptrtoaddr ptr %i.at to i64
  %i.aw = add i64 %i.au, -4
  %i.ax = sub i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 9223372036854775800     ; 3 uses
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %i.at, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.bd, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1864

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.i.i.preheader29:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader29 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1865

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i8 1, ptr %i.bg, align 8, !tbaa !462
  %i.bh = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i, !llvm.loop !464

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.am
  br i1 %exitcond.not.i, label %bb.f, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !179

bb.e:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.f:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.bi = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !227
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.v

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.h, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !179

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !825 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !826 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i16.preheader.i

.lr.ph.i.i.i.i.i.i.i16.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.br = load ptr, ptr %.val.i, align 8, !tbaa !59
  %.sroa.23.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i16.i

.lr.ph.i.i.i.i.i.i.i16.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader.i
  %i.bv = phi i32 [ %i.ed, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ]
  %i.bw = phi ptr [ %i.eb, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !850 ; 2 uses
  %i.bz = and i32 %i.by, 2147483647
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !64 ; 6 uses
  %i.cd = fcmp uno float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %i.ce = icmp slt i32 %i.by, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ce, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.cf = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %.sroa.02.0.copyload.i19.i = load i64, ptr %i.bi, align 8, !tbaa !47 ; 2 uses
  %.sroa.23.0.copyload.i21.i = load ptr, ptr %.sroa.23.0..sroa_idx.i20.i, align 8, !tbaa !58
  %i.cg = icmp eq i64 %.sroa.02.0.copyload.i19.i, 0
  br i1 %i.cg, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ci = icmp ugt i64 %.sroa.02.0.copyload.i19.i, %i.ch
  br i1 %i.ci, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i, label %bb.l, !prof !63

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i: ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i21.i, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !352
  %i.cl = icmp eq i8 %i.ck, 1
  br i1 %i.cl, label %bb.m, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i

bb.m:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i
  %i.cm = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.cn = load i64, ptr %i.bt, align 8, !tbaa !851
  %i.co = icmp ugt i64 %i.cn, %i.cm
  br i1 %i.co, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i, label %bb.n, !prof !63

bb.n:                                             ; preds = %bb.m
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i: ; preds = %bb.m
  %i.cp = load ptr, ptr %i.bu, align 8, !tbaa !852
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cm ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !853 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855 ; 3 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %.split.i.i31.i, label %bb.o

.split.i.i31.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.cv = load i64, ptr %i.bs, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i32.i = icmp ugt i64 %i.cr, %i.cv
  br i1 %.not8.i.i32.i, label %bb.p, label %bb.q, !prof !179

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.cw = add i64 %i.ct, %i.cr
  %i.cx = load i64, ptr %i.bs, align 8, !tbaa !771
  %.not.i.i26.i = icmp ugt i64 %i.cw, %i.cx
  br i1 %.not.i.i26.i, label %bb.p, label %bb.r, !prof !179

bb.p:                                             ; preds = %bb.o, %.split.i.i31.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.q:                                             ; preds = %.split.i.i31.i
  %i.cy = sub nuw i64 %i.cv, %i.cr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cz = phi i64 [ %i.cy, %bb.q ], [ %i.ct, %bb.o ] ; 2 uses
  %i.da = load ptr, ptr %.in.i.i27.i, align 8, !tbaa !772 ; 2 uses
  %i.db = icmp ne ptr %i.da, null
  %i.dc = icmp eq i64 %i.cz, 0
  %i.dd = or i1 %i.dc, %i.db
  br i1 %i.dd, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i, label %bb.s, !prof !63

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35
  unreachable
end_hunk_5
begin_hunk_6_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_17EncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_11CatAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !80 ; 2 uses
  %i.ha = icmp eq i32 %i.gz, -1
  br i1 %i.ha, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %bb.x, !llvm.loop !939

_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_17EncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_11CatAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i8.i.i.i ], [ %.0.i.i.i.i.i.i12.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ]
  %i.hb = sitofp i32 %.0.i.i.i to float
  %i.hc = load ptr, ptr %i.an, align 8, !tbaa !1866, !nonnull !146, !align !335
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !59
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %i.ap
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %indvars.iv.i
  store float %i.hb, ptr %i.hf, align 4, !tbaa !64
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next.i, %i.ao
  br i1 %exitcond41.not.i, label %._crit_edge.i, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, !llvm.loop !1867

_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_17EncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_11CatAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit: ; preds = %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_(i64 %.0.val.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %i.a = icmp ne i64 %.0.val.0.val, %0
  %.sroa.speculated = zext i1 %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = add i64 %0, %.sroa.speculated
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %0, i64 noundef %i.b)
  %i.c = load ptr, ptr %.8.val, align 8, !tbaa !1868, !nonnull !146, !align !335 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !488
  %i.f = load i64, ptr %1, align 8, !tbaa !457    ; 4 uses
  %i.g = add i64 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1870, !nonnull !146, !align !335 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !455  ; 2 uses
  %i.l = sub i64 %i.k, %i.f                       ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !150 ; 6 uses
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val11.i = load ptr, ptr %i.m, align 8, !tbaa !153
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 5                   ; 2 uses
  %i.r = icmp eq i64 %i.l, -1
  br i1 %i.r, label %.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i, label %bb.c, label %.split.i.i.i, !prof !179

bb.c:                                             ; preds = %bb.b
  call void @_ZSt9terminatev() #35
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %bb.a
  %i.s = phi i64 [ %i.l, %bb.b ], [ %i.q, %bb.a ] ; 2 uses
  %i.t = icmp ne ptr %.val.i, null
  %i.u = icmp eq i64 %i.s, 0                      ; 4 uses
  %i.v = or i1 %i.t, %i.u
  br i1 %i.v, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i, label %bb.d, !prof !63

bb.d:                                             ; preds = %.split.i.i.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i: ; preds = %.split.i.i.i
  %.not.i.i = icmp eq i64 %i.k, %i.f
  br i1 %.not.i.i, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1871, !nonnull !146, !align !333
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %i.aa = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.bq, %bb.h ]
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bo, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.011.i.i ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173 ; 3 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 4 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, %i.ae
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %i.ai, %i.z
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = sub nuw nsw i64 %i.z, %i.ai
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ab, i64 noundef %i.al)
  %.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !62
  %.pre2.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i:         ; preds = %bb.g, %bb.f
  %i.am = phi ptr [ %.pre2.i.i.i, %bb.g ], [ %i.ad, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.ae, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.ax, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1872

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.i.preheader50:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader50 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1873

_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 1, ptr %i.ba, align 8, !tbaa !462
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i, %bb.e
  %i.bb = phi ptr [ %i.an, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.ae, %bb.e ]
  %i.bc = phi i64 [ %.pre.i.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i.i ], [ %i.aa, %bb.e ]
  %i.bd = add i64 %i.bc, %.011.i.i
  %i.be = call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.bd, ptr noundef %i.bb)
  %i.bf = load ptr, ptr %i.ac, align 8, !tbaa !173
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ne i64 %i.be, %i.bk
  %i.bm = zext i1 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 %i.bm, ptr %i.bn, align 8, !tbaa !462
  %i.bo = add nuw i64 %.011.i.i, 1                ; 2 uses
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !455
  %i.bq = load i64, ptr %1, align 8, !tbaa !457   ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.bo, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i, !llvm.loop !1176

_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i: ; preds = %bb.h, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1874, !nonnull !146, !align !333
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !80 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1875, !nonnull !146, !align !335 ; 2 uses
  %.val12.i = load ptr, ptr %i.by, align 8, !tbaa !147 ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val13.i = load ptr, ptr %i.bz, align 8, !tbaa !215 ; 2 uses
  %i.ca = icmp ne ptr %.val12.i, null
  %i.cb = icmp eq ptr %.val13.i, null
  %i.cc = or i1 %i.ca, %i.cb
  %i.cd = ptrtoint ptr %.val13.i to i64
  %i.ce = ptrtoint ptr %.val12.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv i64 %i.cf, 200
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ci = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.cj = mul i64 %i.g, %i.ci
  br i1 %i.cc, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.i, !prof !63

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit.i
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.db, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !173 ; 3 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !59 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i16.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = ptrtoaddr ptr %i.cn to i64
  %i.cq = add i64 %i.co, -4
  %i.cr = sub i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.cr, 28
  br i1 %min.iters.check38, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec40 = and i64 %i.ct, 9223372036854775800   ; 3 uses
  %i.cu = shl i64 %n.vec40, 2
  %i.cv = getelementptr i8, ptr %i.cn, i64 %i.cu
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next44, %vector.body41 ] ; 2 uses
  %i.cw = shl i64 %index42, 2
  %next.gep43 = getelementptr i8, ptr %i.cn, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep43, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep43, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.cx, align 4, !tbaa !64
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.cy, label %middle.block45, label %vector.body41, !llvm.loop !1876

middle.block45:                                   ; preds = %vector.body41
  %cmp.n46 = icmp eq i64 %i.ct, %n.vec40
  br i1 %cmp.n46, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.i.preheader48:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block45
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block45 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1877

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block45, %.lr.ph.i16.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 1, ptr %i.da, align 8, !tbaa !462
  %i.db = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.db, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i16.i, !llvm.loop !1184

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.cg
  br i1 %exitcond.not.i, label %bb.j, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !179

bb.i:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.j:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.dc = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !227
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.l, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !179

bb.l:                                             ; preds = %bb.k
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !825 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !826 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i18.preheader.i

.lr.ph.i.i.i.i.i.i.i18.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %.val.i, align 8, !tbaa !59
  %.sroa.23.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %.in.i.i29.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i18.i

.lr.ph.i.i.i.i.i.i.i18.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i18.preheader.i
  %i.dp = phi i32 [ %i.fx, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ]
  %i.dq = phi ptr [ %i.fv, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i18.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !850 ; 2 uses
  %i.dt = and i32 %i.ds, 2147483647
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !64 ; 6 uses
  %i.dx = fcmp uno float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %i.dy = icmp slt i32 %i.ds, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i18.i
  %.sroa.02.0.copyload.i21.i = load i64, ptr %i.dc, align 8, !tbaa !47 ; 2 uses
  %.sroa.23.0.copyload.i23.i = load ptr, ptr %.sroa.23.0..sroa_idx.i22.i, align 8, !tbaa !58
  %i.ea = icmp eq i64 %.sroa.02.0.copyload.i21.i, 0
  br i1 %i.ea, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.ec = icmp ugt i64 %.sroa.02.0.copyload.i21.i, %i.eb
  br i1 %i.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i, label %bb.p, !prof !63

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i: ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i23.i, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !352
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %bb.q, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i25.i

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i24.i
  %i.eg = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.eh = load i64, ptr %i.dn, align 8, !tbaa !851
  %i.ei = icmp ugt i64 %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i, label %bb.r, !prof !63

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i: ; preds = %bb.q
  %i.ej = load ptr, ptr %i.do, align 8, !tbaa !852
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eg ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !853 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !855 ; 3 uses
  %i.eo = icmp eq i64 %i.en, -1
  br i1 %i.eo, label %.split.i.i33.i, label %bb.s

.split.i.i33.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.ep = load i64, ptr %i.dm, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i34.i = icmp ugt i64 %i.el, %i.ep
  br i1 %.not8.i.i34.i, label %bb.t, label %bb.u, !prof !179

bb.s:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i27.i
  %i.eq = add i64 %i.en, %i.el
  %i.er = load i64, ptr %i.dm, align 8, !tbaa !771
  %.not.i.i28.i = icmp ugt i64 %i.eq, %i.er
  br i1 %.not.i.i28.i, label %bb.t, label %bb.v, !prof !179

bb.t:                                             ; preds = %bb.s, %.split.i.i33.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.u:                                             ; preds = %.split.i.i33.i
  %i.es = sub nuw i64 %i.ep, %i.el
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.et = phi i64 [ %i.es, %bb.u ], [ %i.en, %bb.s ] ; 2 uses
  %i.eu = load ptr, ptr %.in.i.i29.i, align 8, !tbaa !772 ; 2 uses
  %i.ev = icmp ne ptr %i.eu, null
  %i.ew = icmp eq i64 %i.et, 0
  %i.ex = or i1 %i.ew, %i.ev
  br i1 %i.ex, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i30.i, label %bb.w, !prof !63

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable
end_hunk_6
begin_hunk_7_@_ZZN7xgboost6common13ParallelFor1dILm1EmZZZNKS_9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS2_12_GLOBAL__N_112LaunchConfigIJNSH_15NullBlockPolicyENSH_21NullEncAccessorPolicyEEEEEEDaSE_ENKUlSE_E_clINS2_14SparsePageViewINS_12NoOpAccessorEEEEEDaSE_EUlSE_E_EEvT0_iOT1_ENKUlSD_E_clImEEDaSD_:bb.a
  br i1 %i.al, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.am = icmp samesign ult i64 %i.ak, %i.z
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.an = sub nuw nsw i64 %i.z, %i.ak
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.ad, i64 noundef %i.an)
  %.pre.i.i = load ptr, ptr %i.ad, align 8, !tbaa !62
  %.pre2.i.i = load ptr, ptr %i.ae, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i:           ; preds = %bb.g, %bb.f
  %i.ao = phi ptr [ %.pre2.i.i, %bb.g ], [ %i.af, %bb.f ] ; 4 uses
  %i.ap = phi ptr [ %.pre.i.i, %bb.g ], [ %i.ag, %bb.f ] ; 6 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.az, align 4, !tbaa !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1884

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.preheader51:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1885

_ZN7xgboost7RegTree4FVec4InitEm.exit.i:           ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 1, ptr %i.bc, align 8, !tbaa !462
  %.pre.i = load i64, ptr %1, align 8, !tbaa !457
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit.i, %bb.e
  %i.bd = phi i64 [ %.pre.i, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ac, %bb.e ] ; 3 uses
  %i.be = phi ptr [ %i.ap, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.ag, %bb.e ] ; 6 uses
  %i.bf = phi ptr [ %i.ao, %_ZN7xgboost7RegTree4FVec4InitEm.exit.i ], [ %i.af, %bb.e ]
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !794
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %i.bd
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %.011.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !47 ; 3 uses
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !47 ; 4 uses
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !1163 ; 2 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = icmp eq i64 %i.bk, %i.bl                ; 2 uses
  %i.bp = or i1 %i.bo, %i.bn
  br i1 %i.bp, label %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i, label %bb.i, !prof !63

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i: ; preds = %bb.h
  %i.bq = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl ; 5 uses
  br i1 %i.bo, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %xtraiter = and i64 %i.bq, 3                    ; 3 uses
  %i.bs = sub i64 %i.bl, %i.bk
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bq, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.020.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.cv, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !1164
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !1166
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.by
  store float %i.bw, ptr %i.bz, align 4, !tbaa !64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !1164
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !1166
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cf
  store float %i.cd, ptr %i.cg, align 4, !tbaa !64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !1164
  %i.cl = load i32, ptr %i.ci, align 4, !tbaa !1166
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cm
  store float %i.ck, ptr %i.cn, align 4, !tbaa !64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !1164
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !1166
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ct
  store float %i.cr, ptr %i.cu, align 4, !tbaa !64
  %i.cv = add nuw i64 %.020.i.i.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !1208

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.020.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.cv, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.020.i.i.i.epil = phi i64 [ %i.dc, %.lr.ph.i.i.i.epil ], [ %.020.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.020.i.i.i.epil ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !1164
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !1166
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.da
  store float %i.cy, ptr %i.db, align 4, !tbaa !64
  %i.dc = add nuw i64 %.020.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1886

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i.i.i
  %i.dd = ptrtoint ptr %i.bf to i64
  %i.de = ptrtoint ptr %i.be to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 2
  %i.dh = icmp ne i64 %i.bq, %i.dg
  %i.di = zext i1 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 %i.di, ptr %i.dj, align 8, !tbaa !462
  %i.dk = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.dl = load i64, ptr %i.j, align 8, !tbaa !455
  %i.dm = sub i64 %i.dl, %i.bd
  %i.dn = icmp ult i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.e, label %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit, !llvm.loop !1210

_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit: ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE4FillEmPNS_7RegTree4FVecE.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EE12ThreadBufferEm.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1887, !nonnull !146, !align !333
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !80 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1888, !nonnull !146, !align !335 ; 2 uses
  %.val12.i = load ptr, ptr %i.dt, align 8, !tbaa !147 ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 8
  %.val13.i = load ptr, ptr %i.du, align 8, !tbaa !215 ; 2 uses
  %i.dv = icmp ne ptr %.val12.i, null
  %i.dw = icmp eq ptr %.val13.i, null
  %i.dx = or i1 %i.dv, %i.dw
  %i.dy = ptrtoint ptr %.val13.i to i64
  %i.dz = ptrtoint ptr %.val12.i to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv i64 %i.ea, 200
  %i.ec = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ed = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ee = mul i64 %i.g, %i.ed
  br i1 %i.dx, label %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i, label %bb.j, !prof !63

._crit_edge.i:                                    ; preds = %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, %_ZNK7xgboost9predictor13DataToFeatVecINS0_14SparsePageViewINS_12NoOpAccessorEEEE8FVecFillERKNS_6common7Range1dEjNS6_4SpanINS_7RegTree4FVecELm18446744073709551615EEE.exit
  br i1 %i.u, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i
  %.04.i.i = phi i64 [ %i.ew, %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.04.i.i ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !173 ; 3 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !59 ; 5 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.eh
  br i1 %.not6.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i
  %i.ej = ptrtoaddr ptr %i.eh to i64
  %i.ek = ptrtoaddr ptr %i.ei to i64
  %i.el = add i64 %i.ej, -4
  %i.em = sub i64 %i.el, %i.ek                    ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.em, 28
  br i1 %min.iters.check39, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec41 = and i64 %i.eo, 9223372036854775800   ; 3 uses
  %i.ep = shl i64 %n.vec41, 2
  %i.eq = getelementptr i8, ptr %i.ei, i64 %i.ep
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next45, %vector.body42 ] ; 2 uses
  %i.er = shl i64 %index43, 2
  %next.gep44 = getelementptr i8, ptr %i.ei, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep44, align 4, !tbaa !64
  store <4 x float> splat (float +qnan), ptr %i.es, align 4, !tbaa !64
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.et, label %middle.block46, label %vector.body42, !llvm.loop !1889

middle.block46:                                   ; preds = %vector.body42
  %cmp.n47 = icmp eq i64 %i.eo, %n.vec41
  br i1 %cmp.n47, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.i.i.preheader49:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block46
  %.07.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.eq, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader49 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i.i.i, align 4, !tbaa !64
  %i.eu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, %i.eh
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1890

_ZN7xgboost7RegTree4FVec4DropEv.exit.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block46, %.lr.ph.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i8 1, ptr %i.ev, align 8, !tbaa !462
  %i.ew = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ew, %i.s
  br i1 %exitcond.not.i.i, label %_ZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSF_15NullBlockPolicyENSF_21NullEncAccessorPolicyEEEEEEDaSC_ENKUlSC_E_clINS0_14SparsePageViewINS_12NoOpAccessorEEEEEDaSC_ENKUlSC_E_clINS_6common7Range1dEEEDaSC_.exit, label %.lr.ph.i.i, !llvm.loop !1218

_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i: ; preds = %.lr.ph.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i ], [ 0, %.lr.ph.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.eb
  br i1 %exitcond.not.i, label %bb.k, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i, !prof !179

bb.j:                                             ; preds = %.lr.ph.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.k:                                             ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEE5TreesEv.exit.i
  %i.ex = getelementptr inbounds nuw [200 x i8], ptr %.val12.i, i64 %indvars.iv.i ; 19 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 192
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !227
  %i.fa = icmp eq i8 %i.ez, 0
  br i1 %i.fa, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i
  br i1 %i.u, label %bb.m, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i, !prof !179

bb.m:                                             ; preds = %bb.l
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !825 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !826 ; 2 uses
  %i.ff = icmp eq i32 %i.fe, -1
  br i1 %i.ff, label %_ZSt5visitIZZZZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiENKUlOT_E_clINS1_12_GLOBAL__N_112LaunchConfigIJNSG_15NullBlockPolicyENSG_21NullEncAccessorPolicyEEEEEEDaSD_ENKUlSD_E_clINS1_14SparsePageViewINS0_12NoOpAccessorEEEEEDaSD_ENKUlSD_E_clINS0_6common7Range1dEEEDaSD_EUlSD_E_JRKSt7variantIJNS0_4tree14ScalarTreeViewENSW_19MultiTargetTreeViewEEEEENSt13invoke_resultISC_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS14_EEEEE4typeEE4typeEOS1D_EEEE4typeESD_DpOS14_.exit.i, label %.lr.ph.i.i.i.i.i.i.i16.preheader.i

.lr.ph.i.i.i.i.i.i.i16.preheader.i:               ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EE5frontEv.exit.i.i.i.i.i.i.i
  %i.fg = load ptr, ptr %.val.i, align 8, !tbaa !59
  %.sroa.23.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %.in.i.i27.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  br label %.lr.ph.i.i.i.i.i.i.i16.i

.lr.ph.i.i.i.i.i.i.i16.i:                         ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i16.preheader.i
  %i.fk = phi i32 [ %i.hs, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ]
  %i.fl = phi ptr [ %i.hq, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 2 uses
  %.012.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i16.preheader.i ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !850 ; 2 uses
  %i.fo = and i32 %i.fn, 2147483647
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !64 ; 6 uses
  %i.fs = fcmp uno float %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %i.ft = icmp slt i32 %i.fn, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.ft, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.in.v.i.i.i.i.i.i.i.i.i.i
  %i.fu = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !80
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i16.i
  %.sroa.02.0.copyload.i19.i = load i64, ptr %i.ex, align 8, !tbaa !47 ; 2 uses
  %.sroa.23.0.copyload.i21.i = load ptr, ptr %.sroa.23.0..sroa_idx.i20.i, align 8, !tbaa !58
  %i.fv = icmp eq i64 %.sroa.02.0.copyload.i19.i, 0
  br i1 %i.fv, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fw = zext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.fx = icmp ugt i64 %.sroa.02.0.copyload.i19.i, %i.fw
  br i1 %i.fx, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i, label %bb.q, !prof !63

bb.q:                                             ; preds = %bb.p
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i: ; preds = %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i21.i, i64 %i.fw
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !352
  %i.ga = icmp eq i8 %i.fz, 1
  br i1 %i.ga, label %bb.r, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i23.i

bb.r:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i22.i
  %i.gb = sext i32 %.012.i.i.i.i.i.i.i.i to i64   ; 2 uses
  %i.gc = load i64, ptr %i.fi, align 8, !tbaa !851
  %i.gd = icmp ugt i64 %i.gc, %i.gb
  br i1 %i.gd, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i, label %bb.s, !prof !63

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i: ; preds = %bb.r
  %i.ge = load ptr, ptr %i.fj, align 8, !tbaa !852
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gb ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !853 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !855 ; 3 uses
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %.split.i.i31.i, label %bb.t

.split.i.i31.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.gk = load i64, ptr %i.fh, align 8, !tbaa !771 ; 2 uses
  %.not8.i.i32.i = icmp ugt i64 %i.gg, %i.gk
  br i1 %.not8.i.i32.i, label %bb.u, label %bb.v, !prof !179

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i25.i
  %i.gl = add i64 %i.gi, %i.gg
  %i.gm = load i64, ptr %i.fh, align 8, !tbaa !771
  %.not.i.i26.i = icmp ugt i64 %i.gl, %i.gm
  br i1 %.not.i.i26.i, label %bb.u, label %bb.w, !prof !179

bb.u:                                             ; preds = %bb.t, %.split.i.i31.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.v:                                             ; preds = %.split.i.i31.i
  %i.gn = sub nuw i64 %i.gk, %i.gg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.go = phi i64 [ %i.gn, %bb.v ], [ %i.gi, %bb.t ] ; 2 uses
  %i.gp = load ptr, ptr %.in.i.i27.i, align 8, !tbaa !772 ; 2 uses
  %i.gq = icmp ne ptr %i.gp, null
  %i.gr = icmp eq i64 %i.go, 0
  %i.gs = or i1 %i.gr, %i.gq
  br i1 %i.gs, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i28.i, label %bb.x, !prof !63

bb.x:                                             ; preds = %bb.w
  call void @_ZSt9terminatev() #35
  unreachable
end_hunk_7
