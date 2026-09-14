Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/shap?download=true
inline.NumInlined: 4414
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 49
begin_hunk_0_@"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor14SparsePageViewINS_11CatAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  %i.dj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %i.cz, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep135, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.dk, align 4, !tbaa !97
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.dl, label %middle.block137, label %vector.body133, !llvm.loop !971

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.dg, %n.vec132
  br i1 %cmp.n138, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader140

.lr.ph.i.i.i.i.i.i.preheader140:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block137
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.di, %middle.block137 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader140, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader140 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !97
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, %i.da
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !972

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block137, %._crit_edge85
  store i8 1, ptr %i.cg, align 8, !tbaa !363
  ret void

bb.g:                                             ; preds = %.lr.ph84, %bb.t
  %i.dn = phi i64 [ %.pre90, %.lr.ph84 ], [ %i.jf, %bb.t ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  %i.do = phi i32 [ %i.cj, %.lr.ph84 ], [ %i.jh, %bb.t ]
  %i.dp = load ptr, ptr %i.ck, align 8, !tbaa !989, !nonnull !198, !align !199
  %i.dq = zext i32 %i.do to i64
  %i.dr = mul i64 %i.av, %i.dq
  %i.ds = add i64 %i.dr, %indvars.iv              ; 2 uses
  %i.dt = mul i64 %i.dn, %i.ds
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !94 ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.du, i64 %i.dt ; 7 uses
  %i.dw = load ptr, ptr %i.cm, align 8, !tbaa !990, !nonnull !198, !align !199 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !211
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %indvars.iv ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !146 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !146 ; 2 uses
  %.not7578 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not7578, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %bb.g
  %scevgep = getelementptr i8, ptr %i.du, i64 -4
  %i.ed = shl i64 %i.dn, 2
  %i.ee = mul i64 %i.ed, %i.ds
  %scevgep111 = getelementptr i8, ptr %scevgep, i64 %i.ee
  br label %.lr.ph81

._crit_edge82.loopexit:                           ; preds = %._crit_edge
  %.pre91 = load ptr, ptr %i.cm, align 8, !tbaa !990
  br label %._crit_edge82

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit, %bb.g
  %i.ef = phi i64 [ %i.gb, %._crit_edge82.loopexit ], [ %i.dn, %bb.g ] ; 2 uses
  %i.eg = phi ptr [ %.pre91, %._crit_edge82.loopexit ], [ %i.dw, %bb.g ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !94
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !97
  %i.el = getelementptr [4 x i8], ptr %i.dv, i64 %i.ef
  %i.em = getelementptr i8, ptr %i.el, i64 -4     ; 3 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !97
  %i.eo = fadd float %i.ek, %i.en                 ; 2 uses
  store float %i.eo, ptr %i.em, align 4, !tbaa !97
  %i.ep = load ptr, ptr %i.cx, align 8, !tbaa !991, !nonnull !198, !align !199 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !240
  %.not = icmp eq i64 %i.er, 0
  br i1 %.not, label %bb.s, label %bb.l

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %._crit_edge
  %i.es = phi i64 [ %i.gb, %._crit_edge ], [ %i.dn, %.lr.ph81.preheader ] ; 2 uses
  %.sroa.058.079 = phi ptr [ %i.gw, %._crit_edge ], [ %i.ea, %.lr.ph81.preheader ] ; 2 uses
  %i.et = load i64, ptr %.sroa.058.079, align 8, !tbaa !29
  %i.eu = load ptr, ptr %i.cm, align 8, !tbaa !990, !nonnull !198, !align !199 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %.val = load ptr, ptr %i.ev, align 8, !tbaa !228
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.et ; 3 uses
  %i.ex = load ptr, ptr %i.an, align 8, !tbaa !95 ; 5 uses
  %i.ey = load ptr, ptr %i.cn, align 8, !tbaa !95 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ex, %i.ey
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph81
  %i.ez = ptrtoaddr ptr %i.ey to i64
  %i.fa = ptrtoaddr ptr %i.ex to i64
  %i.fb = add i64 %i.ez, -4
  %i.fc = sub i64 %i.fb, %i.fa
  %i.fd = and i64 %i.fc, -4
  %i.fe = add i64 %i.fd, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ex, i8 0, i64 %i.fe, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph81
  %i.ff = load ptr, ptr %i.co, align 8, !tbaa !992, !nonnull !198, !align !369 ; 2 uses
  %i.fg = load i32, ptr %i.ew, align 4, !tbaa !371
  %i.fh = sext i32 %i.fg to i64
  %i.fi = load ptr, ptr %i.eu, align 8, !tbaa !217
  %i.fj = getelementptr inbounds nuw [200 x i8], ptr %i.fi, i64 %i.fh ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 192
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !224
  %i.fm = icmp eq i8 %i.fl, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 48 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  br i1 %i.fm, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.fj, ptr %7, align 8, !tbaa !234
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !372
  store i32 %i.fp, ptr %i.ct, align 8, !tbaa !377
  store ptr %i.c, ptr %i.cu, align 8, !tbaa !378
  store ptr %i.ff, ptr %i.cv, align 8, !tbaa !379
  store ptr %i.aq, ptr %i.cw, align 8, !tbaa !380
  store ptr %i.ex, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  store i64 %i.es, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !273
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !275
  %i.ft = icmp eq i32 %i.fs, -1
  br i1 %i.ft, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

bb.j:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.fj, ptr %4, align 8, !tbaa !382
  %i.fu = load i32, ptr %i.fo, align 4, !tbaa !372
  store i32 %i.fu, ptr %i.cp, align 8, !tbaa !384
  store ptr %i.c, ptr %i.cq, align 8, !tbaa !378
  store ptr %i.ff, ptr %i.cr, align 8, !tbaa !379
  store ptr %i.aq, ptr %i.cs, align 8, !tbaa !385
  store ptr %i.ex, ptr %.sroa.4.0..sroa_idx69, align 8, !tbaa !95
  store i64 %i.es, ptr %.sroa.5.0..sroa_idx71, align 8, !tbaa !29
  %i.fv = load ptr, ptr %i.fn, align 8, !tbaa !268
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !18
  %i.fx = icmp eq i32 %i.fw, -1
  br i1 %i.fx, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !386 ; 4 uses
  %i.ga = load ptr, ptr %i.cl, align 8, !tbaa !988, !nonnull !198, !align !199
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !29 ; 9 uses
  %i.gc = icmp ugt i64 %i.gb, 1
  br i1 %i.gc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.gd = load ptr, ptr %i.an, align 8, !tbaa !94 ; 6 uses
  %i.ge = add i64 %i.gb, -1                       ; 2 uses
  %min.iters.check116 = icmp ult i64 %i.gb, 9
  br i1 %min.iters.check116, label %scalar.ph115.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.gf = shl i64 %i.gb, 2                        ; 2 uses
  %scevgep112 = getelementptr i8, ptr %scevgep111, i64 %i.gf
  %scevgep113 = getelementptr i8, ptr %i.gd, i64 -4
  %scevgep114 = getelementptr i8, ptr %scevgep113, i64 %i.gf
  %bound0 = icmp ult ptr %i.dv, %scevgep114
  %bound1 = icmp ult ptr %i.gd, %scevgep112
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph115.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck
  %n.vec118 = and i64 %i.ge, -8                   ; 3 uses
  %i.gg = or disjoint i64 %n.vec118, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next124, %vector.body119 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index120 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %wide.load = load <4 x float>, ptr %i.gh, align 4, !tbaa !97, !alias.scope !993
  %wide.load121 = load <4 x float>, ptr %i.gi, align 4, !tbaa !97, !alias.scope !993
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index120 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %wide.load122 = load <4 x float>, ptr %i.gj, align 4, !tbaa !97, !alias.scope !994, !noalias !993
  %wide.load123 = load <4 x float>, ptr %i.gk, align 4, !tbaa !97, !alias.scope !994, !noalias !993
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load122)
  %i.gm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load121, <4 x float> %broadcast.splat, <4 x float> %wide.load123)
  store <4 x float> %i.gl, ptr %i.gj, align 4, !tbaa !97, !alias.scope !994, !noalias !993
  store <4 x float> %i.gm, ptr %i.gk, align 4, !tbaa !97, !alias.scope !994, !noalias !993
  %index.next124 = add nuw i64 %index120, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next124, %n.vec118
  br i1 %i.gn, label %middle.block125, label %vector.body119, !llvm.loop !976

middle.block125:                                  ; preds = %vector.body119
  %cmp.n126 = icmp eq i64 %i.ge, %n.vec118
  br i1 %cmp.n126, label %._crit_edge, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block125
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.gg, %middle.block125 ] ; 4 uses
  %.neg = add i64 %.ph, 1
  %i.go = and i64 %i.gb, 1
  %lcmp.mod.not.not = icmp eq i64 %i.go, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph115.prol, label %scalar.ph115.prol.loopexit

scalar.ph115.prol:                                ; preds = %scalar.ph115.preheader
  %.0387787.prol = add nsw i64 %.ph, -1           ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.0387787.prol
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !97
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.0387787.prol ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !97
  %i.gt = call float @llvm.fmuladd.f32(float %i.gq, float %i.fz, float %i.gs)
  store float %i.gt, ptr %i.gr, align 4, !tbaa !97
  %i.gu = add nuw i64 %.ph, 1
  br label %scalar.ph115.prol.loopexit

scalar.ph115.prol.loopexit:                       ; preds = %scalar.ph115.prol, %scalar.ph115.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph115.preheader ], [ %i.gu, %scalar.ph115.prol ]
  %i.gv = icmp eq i64 %i.gb, %.neg
  br i1 %i.gv, label %._crit_edge, label %scalar.ph115

._crit_edge:                                      ; preds = %scalar.ph115.prol.loopexit, %scalar.ph115, %middle.block125, %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.058.079, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.gw, %i.ec
  br i1 %.not75, label %._crit_edge82.loopexit, label %.lr.ph81

scalar.ph115:                                     ; preds = %scalar.ph115.prol.loopexit, %scalar.ph115
  %i.gx = phi i64 [ %i.hi, %scalar.ph115 ], [ %.unr, %scalar.ph115.prol.loopexit ] ; 4 uses
  %.0387787 = add i64 %i.gx, -1                   ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.0387787
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !97
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.0387787 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !97
  %i.hc = call float @llvm.fmuladd.f32(float %i.gz, float %i.fz, float %i.hb)
  store float %i.hc, ptr %i.ha, align 4, !tbaa !97
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gx
  %i.he = load float, ptr %i.hd, align 4, !tbaa !97
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.gx ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !97
  %i.hh = call float @llvm.fmuladd.f32(float %i.he, float %i.fz, float %i.hg)
  store float %i.hh, ptr %i.hf, align 4, !tbaa !97
  %i.hi = add nuw i64 %i.gx, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.hi, %i.gb
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph115, !llvm.loop !977

bb.l:                                             ; preds = %._crit_edge82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !29 ; 2 uses
  store i64 %i.hk, ptr %i.a, align 8, !tbaa !29
  %i.hl = load ptr, ptr %i.ch, align 8, !tbaa !987, !nonnull !198, !align !369 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !18, !noalias !995
  %i.hn = zext i32 %i.hm to i64
  %i.ho = icmp eq i64 %i.hk, %i.hn
  br i1 %i.ho, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.l
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.hl)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not76 = icmp eq ptr %.pr, null
  br i1 %.not76, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.hp = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hp, ptr noundef nonnull @.str, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.hq = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ht = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !26
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !27
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, ptr noundef %i.hu, i64 noundef %i.hw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hx, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.n

bb.n:                                             ; preds = %.noexc, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.hz, %bb.n ], [ %i.ia, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr73 = load ptr, ptr %8, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr73, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ib = load ptr, ptr %.pr73, align 8, !tbaa !26 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.pr73, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !28
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr73, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.ig = load ptr, ptr %i.cx, align 8, !tbaa !991, !nonnull !198, !align !199 ; 3 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !29
  %i.ii = mul i64 %i.ih, %i.av
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !29
  %i.il = mul i64 %i.ik, %indvars.iv
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !239
  %i.io = getelementptr [4 x i8], ptr %i.in, i64 %i.ii
  %i.ip = getelementptr [4 x i8], ptr %i.io, i64 %i.il
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !97
  %i.ir = load ptr, ptr %i.cl, align 8, !tbaa !988, !nonnull !198, !align !199
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !29 ; 2 uses
  %i.it = getelementptr [4 x i8], ptr %i.dv, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 -4     ; 2 uses
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !97
  %i.iw = fadd float %i.iq, %i.iv
  store float %i.iw, ptr %i.iu, align 4, !tbaa !97
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge82
  %i.ix = load ptr, ptr %i.cy, align 8, !tbaa !996, !nonnull !198, !align !199 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !29
  %i.iz = mul i64 %i.iy, %indvars.iv
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !388
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.iz
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !97
  %i.je = fadd float %i.eo, %i.jd
  store float %i.je, ptr %i.em, align 4, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.jf = phi i64 [ %i.ef, %bb.s ], [ %i.is, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jg = load ptr, ptr %i.ch, align 8, !tbaa !987, !nonnull !198, !align !369
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !18 ; 2 uses
  %i.ji = zext i32 %i.jh to i64
  %i.jj = icmp samesign ult i64 %indvars.iv.next, %i.ji
  br i1 %i.jj, label %bb.g, label %._crit_edge85.loopexit, !llvm.loop !980

bb.u:                                             ; preds = %bb.o
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #31
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef float @_ZNK7xgboost11CatAccessorclIfjEET_S2_T0_(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !284    ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp ugt i64 %i.a, %i.c
  br i1 %i.e, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i, label %bb.c, !prof !161

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !292  ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18   ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 7 uses
  %i.k = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.a
  br i1 %i.l, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i, label %bb.d, !prof !161

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit4.i: ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = sub nsw i32 %i.n, %i.i                   ; 3 uses
  %i.p = icmp eq i32 %i.o, -1                     ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  %i.ch = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %i.bx, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep131, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.ci, align 4, !tbaa !97
  %index.next132 = add nuw i64 %index130, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.cj, label %middle.block133, label %vector.body129, !llvm.loop !1024

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %i.ce, %n.vec128
  br i1 %cmp.n134, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader136

.lr.ph.i.i.i.i.i.i.preheader136:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block133
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block133 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader136, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader136 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !97
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1025

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block133, %._crit_edge85
  store i8 1, ptr %i.be, align 8, !tbaa !363
  ret void

bb.e:                                             ; preds = %.lr.ph84, %bb.r
  %i.cl = phi i64 [ %.pre88, %.lr.ph84 ], [ %i.id, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next, %bb.r ] ; 6 uses
  %i.cm = phi i32 [ %i.bh, %.lr.ph84 ], [ %i.if, %bb.r ]
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !1042, !nonnull !198, !align !199
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul i64 %i.au, %i.co
  %i.cq = add i64 %i.cp, %indvars.iv              ; 2 uses
  %i.cr = mul i64 %i.cl, %i.cq
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !94 ; 2 uses
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr ; 7 uses
  %i.cu = load ptr, ptr %i.bk, align 8, !tbaa !1043, !nonnull !198, !align !199 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !211
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !146 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !146 ; 2 uses
  %.not7477 = icmp eq ptr %i.cy, %i.da
  br i1 %.not7477, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %i.cs, i64 -4
  %i.db = shl i64 %i.cl, 2
  %i.dc = mul i64 %i.db, %i.cq
  %scevgep107 = getelementptr i8, ptr %scevgep, i64 %i.dc
  br label %.lr.ph80

._crit_edge81.loopexit:                           ; preds = %._crit_edge
  %.pre89 = load ptr, ptr %i.bk, align 8, !tbaa !1043
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.e
  %i.dd = phi i64 [ %i.ez, %._crit_edge81.loopexit ], [ %i.cl, %bb.e ] ; 2 uses
  %i.de = phi ptr [ %.pre89, %._crit_edge81.loopexit ], [ %i.cu, %bb.e ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !94
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.di = load float, ptr %i.dh, align 4, !tbaa !97
  %i.dj = getelementptr [4 x i8], ptr %i.ct, i64 %i.dd
  %i.dk = getelementptr i8, ptr %i.dj, i64 -4     ; 3 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !97
  %i.dm = fadd float %i.di, %i.dl                 ; 2 uses
  store float %i.dm, ptr %i.dk, align 4, !tbaa !97
  %i.dn = load ptr, ptr %i.bv, align 8, !tbaa !1044, !nonnull !198, !align !199 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !240
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.q, label %bb.j

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %._crit_edge
  %i.dq = phi i64 [ %i.ez, %._crit_edge ], [ %i.cl, %.lr.ph80.preheader ] ; 2 uses
  %.sroa.057.078 = phi ptr [ %i.fu, %._crit_edge ], [ %i.cy, %.lr.ph80.preheader ] ; 2 uses
  %i.dr = load i64, ptr %.sroa.057.078, align 8, !tbaa !29
  %i.ds = load ptr, ptr %i.bk, align 8, !tbaa !1043, !nonnull !198, !align !199 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.val = load ptr, ptr %i.dt, align 8, !tbaa !228
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.dr ; 3 uses
  %i.dv = load ptr, ptr %i.am, align 8, !tbaa !95 ; 5 uses
  %i.dw = load ptr, ptr %i.bl, align 8, !tbaa !95 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph80
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %i.dy = ptrtoaddr ptr %i.dv to i64
  %i.dz = add i64 %i.dx, -4
  %i.ea = sub i64 %i.dz, %i.dy
  %i.eb = and i64 %i.ea, -4
  %i.ec = add i64 %i.eb, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dv, i8 0, i64 %i.ec, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph80
  %i.ed = load ptr, ptr %i.bm, align 8, !tbaa !1045, !nonnull !198, !align !369 ; 2 uses
  %i.ee = load i32, ptr %i.du, align 4, !tbaa !371
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.ds, align 8, !tbaa !217
  %i.eh = getelementptr inbounds nuw [200 x i8], ptr %i.eg, i64 %i.ef ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 192
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !224
  %i.ek = icmp eq i8 %i.ej, 0
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 48 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  br i1 %i.ek, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.eh, ptr %7, align 8, !tbaa !234
  %i.en = load i32, ptr %i.em, align 4, !tbaa !372
  store i32 %i.en, ptr %i.br, align 8, !tbaa !377
  store ptr %i.c, ptr %i.bs, align 8, !tbaa !378
  store ptr %i.ed, ptr %i.bt, align 8, !tbaa !379
  store ptr %i.ap, ptr %i.bu, align 8, !tbaa !380
  store ptr %i.dv, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  store i64 %i.dq, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !273
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !275
  %i.er = icmp eq i32 %i.eq, -1
  br i1 %i.er, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

bb.h:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.eh, ptr %4, align 8, !tbaa !382
  %i.es = load i32, ptr %i.em, align 4, !tbaa !372
  store i32 %i.es, ptr %i.bn, align 8, !tbaa !384
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !378
  store ptr %i.ed, ptr %i.bp, align 8, !tbaa !379
  store ptr %i.ap, ptr %i.bq, align 8, !tbaa !385
  store ptr %i.dv, ptr %.sroa.4.0..sroa_idx68, align 8, !tbaa !95
  store i64 %i.dq, ptr %.sroa.5.0..sroa_idx70, align 8, !tbaa !29
  %i.et = load ptr, ptr %i.el, align 8, !tbaa !268
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !18
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.ew = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !386 ; 4 uses
  %i.ey = load ptr, ptr %i.bj, align 8, !tbaa !1041, !nonnull !198, !align !199
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !29 ; 9 uses
  %i.fa = icmp ugt i64 %i.ez, 1
  br i1 %i.fa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.fb = load ptr, ptr %i.am, align 8, !tbaa !94 ; 6 uses
  %i.fc = add i64 %i.ez, -1                       ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.ez, 9
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.fd = shl i64 %i.ez, 2                        ; 2 uses
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.fd
  %scevgep109 = getelementptr i8, ptr %i.fb, i64 -4
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.fd
  %bound0 = icmp ult ptr %i.ct, %scevgep110
  %bound1 = icmp ult ptr %i.fb, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck
  %n.vec114 = and i64 %i.fc, -8                   ; 3 uses
  %i.fe = or disjoint i64 %n.vec114, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ex, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body115 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index116 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <4 x float>, ptr %i.ff, align 4, !tbaa !97, !alias.scope !1046
  %wide.load117 = load <4 x float>, ptr %i.fg, align 4, !tbaa !97, !alias.scope !1046
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index116 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load118 = load <4 x float>, ptr %i.fh, align 4, !tbaa !97, !alias.scope !1047, !noalias !1046
  %wide.load119 = load <4 x float>, ptr %i.fi, align 4, !tbaa !97, !alias.scope !1047, !noalias !1046
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load118)
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load117, <4 x float> %broadcast.splat, <4 x float> %wide.load119)
  store <4 x float> %i.fj, ptr %i.fh, align 4, !tbaa !97, !alias.scope !1047, !noalias !1046
  store <4 x float> %i.fk, ptr %i.fi, align 4, !tbaa !97, !alias.scope !1047, !noalias !1046
  %index.next120 = add nuw i64 %index116, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.fl, label %middle.block121, label %vector.body115, !llvm.loop !1029

middle.block121:                                  ; preds = %vector.body115
  %cmp.n122 = icmp eq i64 %i.fc, %n.vec114
  br i1 %cmp.n122, label %._crit_edge, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block121
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.fe, %middle.block121 ] ; 4 uses
  %.neg = add i64 %.ph, 1
  %i.fm = and i64 %i.ez, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fm, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph111.prol, label %scalar.ph111.prol.loopexit

scalar.ph111.prol:                                ; preds = %scalar.ph111.preheader
  %.0387687.prol = add nsw i64 %.ph, -1           ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.0387687.prol
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !97
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.0387687.prol ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !97
  %i.fr = call float @llvm.fmuladd.f32(float %i.fo, float %i.ex, float %i.fq)
  store float %i.fr, ptr %i.fp, align 4, !tbaa !97
  %i.fs = add nuw i64 %.ph, 1
  br label %scalar.ph111.prol.loopexit

scalar.ph111.prol.loopexit:                       ; preds = %scalar.ph111.prol, %scalar.ph111.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph111.preheader ], [ %i.fs, %scalar.ph111.prol ]
  %i.ft = icmp eq i64 %i.ez, %.neg
  br i1 %i.ft, label %._crit_edge, label %scalar.ph111

._crit_edge:                                      ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111, %middle.block121, %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.fu, %i.da
  br i1 %.not74, label %._crit_edge81.loopexit, label %.lr.ph80

scalar.ph111:                                     ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111
  %i.fv = phi i64 [ %i.gg, %scalar.ph111 ], [ %.unr, %scalar.ph111.prol.loopexit ] ; 4 uses
  %.0387687 = add i64 %i.fv, -1                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.0387687
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !97
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.0387687 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !97
  %i.ga = call float @llvm.fmuladd.f32(float %i.fx, float %i.ex, float %i.fz)
  store float %i.ga, ptr %i.fy, align 4, !tbaa !97
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fv
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !97
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.fv ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !97
  %i.gf = call float @llvm.fmuladd.f32(float %i.gc, float %i.ex, float %i.ge)
  store float %i.gf, ptr %i.gd, align 4, !tbaa !97
  %i.gg = add nuw i64 %i.fv, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gg, %i.ez
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph111, !llvm.loop !1030

bb.j:                                             ; preds = %._crit_edge81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !29 ; 2 uses
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !29
  %i.gj = load ptr, ptr %i.bf, align 8, !tbaa !1040, !nonnull !198, !align !369 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !18, !noalias !1048
  %i.gl = zext i32 %i.gk to i64
  %i.gm = icmp eq i64 %i.gi, %i.gl
  br i1 %i.gm, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.j
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.gj)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not75 = icmp eq ptr %.pr, null
  br i1 %.not75, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.gn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gn, ptr noundef nonnull @.str, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.go = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gr = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !26
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !27
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef %i.gs, i64 noundef %i.gu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.gx, %bb.l ], [ %i.gy, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr72 = load ptr, ptr %8, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr72, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gz = load ptr, ptr %.pr72, align 8, !tbaa !26 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.pr72, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !28
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr72, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.he = load ptr, ptr %i.bv, align 8, !tbaa !1044, !nonnull !198, !align !199 ; 3 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !29
  %i.hg = mul i64 %i.hf, %i.au
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !29
  %i.hj = mul i64 %i.hi, %indvars.iv
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !239
  %i.hm = getelementptr [4 x i8], ptr %i.hl, i64 %i.hg
  %i.hn = getelementptr [4 x i8], ptr %i.hm, i64 %i.hj
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !97
  %i.hp = load ptr, ptr %i.bj, align 8, !tbaa !1041, !nonnull !198, !align !199
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !29 ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.ct, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -4     ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !97
  %i.hu = fadd float %i.ho, %i.ht
  store float %i.hu, ptr %i.hs, align 4, !tbaa !97
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge81
  %i.hv = load ptr, ptr %i.bw, align 8, !tbaa !1049, !nonnull !198, !align !199 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !29
  %i.hx = mul i64 %i.hw, %indvars.iv
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !388
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hx
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !97
  %i.ic = fadd float %i.dm, %i.ib
  store float %i.ic, ptr %i.dk, align 4, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.id = phi i64 [ %i.dd, %bb.q ], [ %i.hq, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ie = load ptr, ptr %i.bf, align 8, !tbaa !1040, !nonnull !198, !align !369
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !18 ; 2 uses
  %i.ig = zext i32 %i.if to i64
  %i.ih = icmp samesign ult i64 %indvars.iv.next, %i.ig
  br i1 %i.ih, label %bb.e, label %._crit_edge85.loopexit, !llvm.loop !1033

bb.s:                                             ; preds = %bb.m
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %class.anon.311, align 8            ; 8 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !29
  store ptr %2, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !196
  %i.g = add i64 %i.f, %1                         ; 5 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.h = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !198, !align !199
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.j = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, -1                         ; 3 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !18
  %i.m = load ptr, ptr %0, align 8, !tbaa !197, !nonnull !198, !align !199 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load i8, ptr %i.n, align 8, !tbaa !406, !range !132, !noundef !198
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not45 = icmp eq i32 %i.l, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor14SparsePageViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  %i.dz = shl i64 %index137, 2
  %next.gep138 = getelementptr i8, ptr %i.dp, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep138, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep138, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.ea, align 4, !tbaa !97
  %index.next139 = add nuw i64 %index137, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next139, %n.vec135
  br i1 %i.eb, label %middle.block140, label %vector.body136, !llvm.loop !1058

middle.block140:                                  ; preds = %vector.body136
  %cmp.n141 = icmp eq i64 %i.dw, %n.vec135
  br i1 %cmp.n141, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader143

.lr.ph.i.i.i.i.i.i.preheader143:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block140
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dy, %middle.block140 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader143, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader143 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !97
  %i.ec = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ec, %i.dq
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1059

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block140, %._crit_edge84
  store i8 1, ptr %i.cw, align 8, !tbaa !363
  ret void

bb.f:                                             ; preds = %.lr.ph83, %bb.s
  %i.ed = phi i64 [ %.pre87, %.lr.ph83 ], [ %i.jv, %bb.s ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.ee = phi i32 [ %i.cz, %.lr.ph83 ], [ %i.jx, %bb.s ]
  %i.ef = load ptr, ptr %i.da, align 8, !tbaa !1076, !nonnull !198, !align !199
  %i.eg = zext i32 %i.ee to i64
  %i.eh = mul i64 %i.av, %i.eg
  %i.ei = add i64 %i.eh, %indvars.iv              ; 2 uses
  %i.ej = mul i64 %i.ed, %i.ei
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !94 ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ej ; 7 uses
  %i.em = load ptr, ptr %i.dc, align 8, !tbaa !1077, !nonnull !198, !align !199 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !211
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %indvars.iv ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !146 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !146 ; 2 uses
  %.not7477 = icmp eq ptr %i.eq, %i.es
  br i1 %.not7477, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %bb.f
  %scevgep = getelementptr i8, ptr %i.ek, i64 -4
  %i.et = shl i64 %i.ed, 2
  %i.eu = mul i64 %i.et, %i.ei
  %scevgep114 = getelementptr i8, ptr %scevgep, i64 %i.eu
  br label %.lr.ph80

._crit_edge81.loopexit:                           ; preds = %._crit_edge
  %.pre88 = load ptr, ptr %i.dc, align 8, !tbaa !1077
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.f
  %i.ev = phi i64 [ %i.gr, %._crit_edge81.loopexit ], [ %i.ed, %bb.f ] ; 2 uses
  %i.ew = phi ptr [ %.pre88, %._crit_edge81.loopexit ], [ %i.em, %bb.f ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !94
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !97
  %i.fb = getelementptr [4 x i8], ptr %i.el, i64 %i.ev
  %i.fc = getelementptr i8, ptr %i.fb, i64 -4     ; 3 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !97
  %i.fe = fadd float %i.fa, %i.fd                 ; 2 uses
  store float %i.fe, ptr %i.fc, align 4, !tbaa !97
  %i.ff = load ptr, ptr %i.dn, align 8, !tbaa !1078, !nonnull !198, !align !199 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !240
  %.not = icmp eq i64 %i.fh, 0
  br i1 %.not, label %bb.r, label %bb.k

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %._crit_edge
  %i.fi = phi i64 [ %i.gr, %._crit_edge ], [ %i.ed, %.lr.ph80.preheader ] ; 2 uses
  %.sroa.057.078 = phi ptr [ %i.hm, %._crit_edge ], [ %i.eq, %.lr.ph80.preheader ] ; 2 uses
  %i.fj = load i64, ptr %.sroa.057.078, align 8, !tbaa !29
  %i.fk = load ptr, ptr %i.dc, align 8, !tbaa !1077, !nonnull !198, !align !199 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %.val = load ptr, ptr %i.fl, align 8, !tbaa !228
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.fj ; 3 uses
  %i.fn = load ptr, ptr %i.an, align 8, !tbaa !95 ; 5 uses
  %i.fo = load ptr, ptr %i.dd, align 8, !tbaa !95 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph80
  %i.fp = ptrtoaddr ptr %i.fo to i64
  %i.fq = ptrtoaddr ptr %i.fn to i64
  %i.fr = add i64 %i.fp, -4
  %i.fs = sub i64 %i.fr, %i.fq
  %i.ft = and i64 %i.fs, -4
  %i.fu = add i64 %i.ft, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fn, i8 0, i64 %i.fu, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph80
  %i.fv = load ptr, ptr %i.de, align 8, !tbaa !1079, !nonnull !198, !align !369 ; 2 uses
  %i.fw = load i32, ptr %i.fm, align 4, !tbaa !371
  %i.fx = sext i32 %i.fw to i64
  %i.fy = load ptr, ptr %i.fk, align 8, !tbaa !217
  %i.fz = getelementptr inbounds nuw [200 x i8], ptr %i.fy, i64 %i.fx ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 192
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !224
  %i.gc = icmp eq i8 %i.gb, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 48 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  br i1 %i.gc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.fz, ptr %7, align 8, !tbaa !234
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !372
  store i32 %i.gf, ptr %i.dj, align 8, !tbaa !377
  store ptr %i.c, ptr %i.dk, align 8, !tbaa !378
  store ptr %i.fv, ptr %i.dl, align 8, !tbaa !379
  store ptr %i.aq, ptr %i.dm, align 8, !tbaa !380
  store ptr %i.fn, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  store i64 %i.fi, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.gg = load ptr, ptr %i.gd, align 8, !tbaa !273
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !275
  %i.gj = icmp eq i32 %i.gi, -1
  br i1 %i.gj, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

bb.i:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.fz, ptr %4, align 8, !tbaa !382
  %i.gk = load i32, ptr %i.ge, align 4, !tbaa !372
  store i32 %i.gk, ptr %i.df, align 8, !tbaa !384
  store ptr %i.c, ptr %i.dg, align 8, !tbaa !378
  store ptr %i.fv, ptr %i.dh, align 8, !tbaa !379
  store ptr %i.aq, ptr %i.di, align 8, !tbaa !385
  store ptr %i.fn, ptr %.sroa.4.0..sroa_idx68, align 8, !tbaa !95
  store i64 %i.fi, ptr %.sroa.5.0..sroa_idx70, align 8, !tbaa !29
  %i.gl = load ptr, ptr %i.gd, align 8, !tbaa !268
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !18
  %i.gn = icmp eq i32 %i.gm, -1
  br i1 %i.gn, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.go = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.gp = load float, ptr %i.go, align 4, !tbaa !386 ; 4 uses
  %i.gq = load ptr, ptr %i.db, align 8, !tbaa !1075, !nonnull !198, !align !199
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !29 ; 9 uses
  %i.gs = icmp ugt i64 %i.gr, 1
  br i1 %i.gs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.gt = load ptr, ptr %i.an, align 8, !tbaa !94 ; 6 uses
  %i.gu = add i64 %i.gr, -1                       ; 2 uses
  %min.iters.check119 = icmp ult i64 %i.gr, 9
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.gv = shl i64 %i.gr, 2                        ; 2 uses
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.gv
  %scevgep116 = getelementptr i8, ptr %i.gt, i64 -4
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.gv
  %bound0 = icmp ult ptr %i.el, %scevgep117
  %bound1 = icmp ult ptr %i.gt, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck
  %n.vec121 = and i64 %i.gu, -8                   ; 3 uses
  %i.gw = or disjoint i64 %n.vec121, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %index123 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load = load <4 x float>, ptr %i.gx, align 4, !tbaa !97, !alias.scope !1080
  %wide.load124 = load <4 x float>, ptr %i.gy, align 4, !tbaa !97, !alias.scope !1080
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index123 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %wide.load125 = load <4 x float>, ptr %i.gz, align 4, !tbaa !97, !alias.scope !1081, !noalias !1080
  %wide.load126 = load <4 x float>, ptr %i.ha, align 4, !tbaa !97, !alias.scope !1081, !noalias !1080
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load125)
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load124, <4 x float> %broadcast.splat, <4 x float> %wide.load126)
  store <4 x float> %i.hb, ptr %i.gz, align 4, !tbaa !97, !alias.scope !1081, !noalias !1080
  store <4 x float> %i.hc, ptr %i.ha, align 4, !tbaa !97, !alias.scope !1081, !noalias !1080
  %index.next127 = add nuw i64 %index123, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.hd, label %middle.block128, label %vector.body122, !llvm.loop !1063

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.gu, %n.vec121
  br i1 %cmp.n129, label %._crit_edge, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block128
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.gw, %middle.block128 ] ; 4 uses
  %.neg = add i64 %.ph, 1
  %i.he = and i64 %i.gr, 1
  %lcmp.mod147.not.not = icmp eq i64 %i.he, 0
  br i1 %lcmp.mod147.not.not, label %scalar.ph118.prol, label %scalar.ph118.prol.loopexit

scalar.ph118.prol:                                ; preds = %scalar.ph118.preheader
  %.0387686.prol = add nsw i64 %.ph, -1           ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.0387686.prol
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !97
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0387686.prol ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !97
  %i.hj = call float @llvm.fmuladd.f32(float %i.hg, float %i.gp, float %i.hi)
  store float %i.hj, ptr %i.hh, align 4, !tbaa !97
  %i.hk = add nuw i64 %.ph, 1
  br label %scalar.ph118.prol.loopexit

scalar.ph118.prol.loopexit:                       ; preds = %scalar.ph118.prol, %scalar.ph118.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph118.preheader ], [ %i.hk, %scalar.ph118.prol ]
  %i.hl = icmp eq i64 %i.gr, %.neg
  br i1 %i.hl, label %._crit_edge, label %scalar.ph118

._crit_edge:                                      ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118, %middle.block128, %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.hm, %i.es
  br i1 %.not74, label %._crit_edge81.loopexit, label %.lr.ph80

scalar.ph118:                                     ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118
  %i.hn = phi i64 [ %i.hy, %scalar.ph118 ], [ %.unr, %scalar.ph118.prol.loopexit ] ; 4 uses
  %.0387686 = add i64 %i.hn, -1                   ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.0387686
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !97
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.0387686 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !97
  %i.hs = call float @llvm.fmuladd.f32(float %i.hp, float %i.gp, float %i.hr)
  store float %i.hs, ptr %i.hq, align 4, !tbaa !97
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hn
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !97
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.hn ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !97
  %i.hx = call float @llvm.fmuladd.f32(float %i.hu, float %i.gp, float %i.hw)
  store float %i.hx, ptr %i.hv, align 4, !tbaa !97
  %i.hy = add nuw i64 %i.hn, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.hy, %i.gr
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph118, !llvm.loop !1064

bb.k:                                             ; preds = %._crit_edge81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !29 ; 2 uses
  store i64 %i.ia, ptr %i.a, align 8, !tbaa !29
  %i.ib = load ptr, ptr %i.cx, align 8, !tbaa !1074, !nonnull !198, !align !369 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !18, !noalias !1082
  %i.id = zext i32 %i.ic to i64
  %i.ie = icmp eq i64 %i.ia, %i.id
  br i1 %i.ie, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.k
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.ib)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not75 = icmp eq ptr %.pr, null
  br i1 %.not75, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.if = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.if, ptr noundef nonnull @.str, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.m

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ig = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.n ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ij = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !26
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !27
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.ik, i64 noundef %i.im)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ip, %bb.m ], [ %i.iq, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr72 = load ptr, ptr %8, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr72, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ir = load ptr, ptr %.pr72, align 8, !tbaa !26 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.pr72, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !28
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr72, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.iw = load ptr, ptr %i.dn, align 8, !tbaa !1078, !nonnull !198, !align !199 ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !29
  %i.iy = mul i64 %i.ix, %i.av
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !29
  %i.jb = mul i64 %i.ja, %indvars.iv
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !239
  %i.je = getelementptr [4 x i8], ptr %i.jd, i64 %i.iy
  %i.jf = getelementptr [4 x i8], ptr %i.je, i64 %i.jb
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !97
  %i.jh = load ptr, ptr %i.db, align 8, !tbaa !1075, !nonnull !198, !align !199
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !29 ; 2 uses
  %i.jj = getelementptr [4 x i8], ptr %i.el, i64 %i.ji
  %i.jk = getelementptr i8, ptr %i.jj, i64 -4     ; 2 uses
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !97
  %i.jm = fadd float %i.jg, %i.jl
  store float %i.jm, ptr %i.jk, align 4, !tbaa !97
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge81
  %i.jn = load ptr, ptr %i.do, align 8, !tbaa !1083, !nonnull !198, !align !199 ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !29
  %i.jp = mul i64 %i.jo, %indvars.iv
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !388
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jp
  %i.jt = load float, ptr %i.js, align 4, !tbaa !97
  %i.ju = fadd float %i.fe, %i.jt
  store float %i.ju, ptr %i.fc, align 4, !tbaa !97
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.jv = phi i64 [ %i.ev, %bb.r ], [ %i.ji, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jw = load ptr, ptr %i.cx, align 8, !tbaa !1074, !nonnull !198, !align !369
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !18 ; 2 uses
  %i.jy = zext i32 %i.jx to i64
  %i.jz = icmp samesign ult i64 %indvars.iv.next, %i.jy
  br i1 %i.jz, label %bb.f, label %._crit_edge84.loopexit, !llvm.loop !1067

bb.t:                                             ; preds = %bb.n
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array", align 16      ; 5 uses
  %3 = alloca %"struct.std::array", align 4       ; 4 uses
  %4 = alloca %"struct.xgboost::interpretability::(anonymous namespace)::QuadratureTreeShapRunner.302", align 8 ; 10 uses
  %5 = alloca %"struct.std::array", align 16      ; 5 uses
  %6 = alloca %"struct.std::array", align 4       ; 4 uses
  %7 = alloca %"struct.xgboost::interpretability::(anonymous namespace)::QuadratureTreeShapRunner", align 8 ; 10 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1097, !nonnull !198, !align !199
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !94   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 2 uses
  %i.k = icmp eq ptr %i.e, %i.f
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1098, !nonnull !198, !align !199
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !74
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp samesign ult i64 %i.j, %i.r
  br i1 %i.s, label %bb.c, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = sub nuw nsw i64 %i.r, %i.j
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i64 noundef %i.t)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !95
end_hunk_2
begin_hunk_3_@"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  %i.ch = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %i.bx, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep131, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.ci, align 4, !tbaa !97
  %index.next132 = add nuw i64 %index130, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.cj, label %middle.block133, label %vector.body129, !llvm.loop !1086

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %i.ce, %n.vec128
  br i1 %cmp.n134, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader136

.lr.ph.i.i.i.i.i.i.preheader136:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block133
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block133 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader136, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader136 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !97
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1087

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block133, %._crit_edge85
  store i8 1, ptr %i.be, align 8, !tbaa !363
  ret void

bb.e:                                             ; preds = %.lr.ph84, %bb.r
  %i.cl = phi i64 [ %.pre88, %.lr.ph84 ], [ %i.id, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next, %bb.r ] ; 6 uses
  %i.cm = phi i32 [ %i.bh, %.lr.ph84 ], [ %i.if, %bb.r ]
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !1104, !nonnull !198, !align !199
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul i64 %i.au, %i.co
  %i.cq = add i64 %i.cp, %indvars.iv              ; 2 uses
  %i.cr = mul i64 %i.cl, %i.cq
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !94 ; 2 uses
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr ; 7 uses
  %i.cu = load ptr, ptr %i.bk, align 8, !tbaa !1105, !nonnull !198, !align !199 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !211
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !146 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !146 ; 2 uses
  %.not7477 = icmp eq ptr %i.cy, %i.da
  br i1 %.not7477, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %i.cs, i64 -4
  %i.db = shl i64 %i.cl, 2
  %i.dc = mul i64 %i.db, %i.cq
  %scevgep107 = getelementptr i8, ptr %scevgep, i64 %i.dc
  br label %.lr.ph80

._crit_edge81.loopexit:                           ; preds = %._crit_edge
  %.pre89 = load ptr, ptr %i.bk, align 8, !tbaa !1105
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.e
  %i.dd = phi i64 [ %i.ez, %._crit_edge81.loopexit ], [ %i.cl, %bb.e ] ; 2 uses
  %i.de = phi ptr [ %.pre89, %._crit_edge81.loopexit ], [ %i.cu, %bb.e ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !94
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.di = load float, ptr %i.dh, align 4, !tbaa !97
  %i.dj = getelementptr [4 x i8], ptr %i.ct, i64 %i.dd
  %i.dk = getelementptr i8, ptr %i.dj, i64 -4     ; 3 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !97
  %i.dm = fadd float %i.di, %i.dl                 ; 2 uses
  store float %i.dm, ptr %i.dk, align 4, !tbaa !97
  %i.dn = load ptr, ptr %i.bv, align 8, !tbaa !1106, !nonnull !198, !align !199 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !240
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %bb.q, label %bb.j

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %._crit_edge
  %i.dq = phi i64 [ %i.ez, %._crit_edge ], [ %i.cl, %.lr.ph80.preheader ] ; 2 uses
  %.sroa.057.078 = phi ptr [ %i.fu, %._crit_edge ], [ %i.cy, %.lr.ph80.preheader ] ; 2 uses
  %i.dr = load i64, ptr %.sroa.057.078, align 8, !tbaa !29
  %i.ds = load ptr, ptr %i.bk, align 8, !tbaa !1105, !nonnull !198, !align !199 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %.val = load ptr, ptr %i.dt, align 8, !tbaa !228
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.dr ; 3 uses
  %i.dv = load ptr, ptr %i.am, align 8, !tbaa !95 ; 5 uses
  %i.dw = load ptr, ptr %i.bl, align 8, !tbaa !95 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph80
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %i.dy = ptrtoaddr ptr %i.dv to i64
  %i.dz = add i64 %i.dx, -4
  %i.ea = sub i64 %i.dz, %i.dy
  %i.eb = and i64 %i.ea, -4
  %i.ec = add i64 %i.eb, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dv, i8 0, i64 %i.ec, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph80
  %i.ed = load ptr, ptr %i.bm, align 8, !tbaa !1107, !nonnull !198, !align !369 ; 2 uses
  %i.ee = load i32, ptr %i.du, align 4, !tbaa !371
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.ds, align 8, !tbaa !217
  %i.eh = getelementptr inbounds nuw [200 x i8], ptr %i.eg, i64 %i.ef ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 192
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !224
  %i.ek = icmp eq i8 %i.ej, 0
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 48 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  br i1 %i.ek, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.eh, ptr %7, align 8, !tbaa !234
  %i.en = load i32, ptr %i.em, align 4, !tbaa !372
  store i32 %i.en, ptr %i.br, align 8, !tbaa !377
  store ptr %i.c, ptr %i.bs, align 8, !tbaa !378
  store ptr %i.ed, ptr %i.bt, align 8, !tbaa !379
  store ptr %i.ap, ptr %i.bu, align 8, !tbaa !380
  store ptr %i.dv, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  store i64 %i.dq, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !273
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !275
  %i.er = icmp eq i32 %i.eq, -1
  br i1 %i.er, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

bb.h:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.eh, ptr %4, align 8, !tbaa !382
  %i.es = load i32, ptr %i.em, align 4, !tbaa !372
  store i32 %i.es, ptr %i.bn, align 8, !tbaa !384
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !378
  store ptr %i.ed, ptr %i.bp, align 8, !tbaa !379
  store ptr %i.ap, ptr %i.bq, align 8, !tbaa !385
  store ptr %i.dv, ptr %.sroa.4.0..sroa_idx68, align 8, !tbaa !95
  store i64 %i.dq, ptr %.sroa.5.0..sroa_idx70, align 8, !tbaa !29
  %i.et = load ptr, ptr %i.el, align 8, !tbaa !268
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !18
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.ew = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !386 ; 4 uses
  %i.ey = load ptr, ptr %i.bj, align 8, !tbaa !1103, !nonnull !198, !align !199
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !29 ; 9 uses
  %i.fa = icmp ugt i64 %i.ez, 1
  br i1 %i.fa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.fb = load ptr, ptr %i.am, align 8, !tbaa !94 ; 6 uses
  %i.fc = add i64 %i.ez, -1                       ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.ez, 9
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.fd = shl i64 %i.ez, 2                        ; 2 uses
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.fd
  %scevgep109 = getelementptr i8, ptr %i.fb, i64 -4
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.fd
  %bound0 = icmp ult ptr %i.ct, %scevgep110
  %bound1 = icmp ult ptr %i.fb, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck
  %n.vec114 = and i64 %i.fc, -8                   ; 3 uses
  %i.fe = or disjoint i64 %n.vec114, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ex, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body115 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index116 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <4 x float>, ptr %i.ff, align 4, !tbaa !97, !alias.scope !1108
  %wide.load117 = load <4 x float>, ptr %i.fg, align 4, !tbaa !97, !alias.scope !1108
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index116 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load118 = load <4 x float>, ptr %i.fh, align 4, !tbaa !97, !alias.scope !1109, !noalias !1108
  %wide.load119 = load <4 x float>, ptr %i.fi, align 4, !tbaa !97, !alias.scope !1109, !noalias !1108
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load118)
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load117, <4 x float> %broadcast.splat, <4 x float> %wide.load119)
  store <4 x float> %i.fj, ptr %i.fh, align 4, !tbaa !97, !alias.scope !1109, !noalias !1108
  store <4 x float> %i.fk, ptr %i.fi, align 4, !tbaa !97, !alias.scope !1109, !noalias !1108
  %index.next120 = add nuw i64 %index116, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.fl, label %middle.block121, label %vector.body115, !llvm.loop !1091

middle.block121:                                  ; preds = %vector.body115
  %cmp.n122 = icmp eq i64 %i.fc, %n.vec114
  br i1 %cmp.n122, label %._crit_edge, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block121
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.fe, %middle.block121 ] ; 4 uses
  %.neg = add i64 %.ph, 1
  %i.fm = and i64 %i.ez, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fm, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph111.prol, label %scalar.ph111.prol.loopexit

scalar.ph111.prol:                                ; preds = %scalar.ph111.preheader
  %.0387687.prol = add nsw i64 %.ph, -1           ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.0387687.prol
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !97
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.0387687.prol ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !97
  %i.fr = call float @llvm.fmuladd.f32(float %i.fo, float %i.ex, float %i.fq)
  store float %i.fr, ptr %i.fp, align 4, !tbaa !97
  %i.fs = add nuw i64 %.ph, 1
  br label %scalar.ph111.prol.loopexit

scalar.ph111.prol.loopexit:                       ; preds = %scalar.ph111.prol, %scalar.ph111.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph111.preheader ], [ %i.fs, %scalar.ph111.prol ]
  %i.ft = icmp eq i64 %i.ez, %.neg
  br i1 %i.ft, label %._crit_edge, label %scalar.ph111

._crit_edge:                                      ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111, %middle.block121, %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.fu, %i.da
  br i1 %.not74, label %._crit_edge81.loopexit, label %.lr.ph80

scalar.ph111:                                     ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111
  %i.fv = phi i64 [ %i.gg, %scalar.ph111 ], [ %.unr, %scalar.ph111.prol.loopexit ] ; 4 uses
  %.0387687 = add i64 %i.fv, -1                   ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.0387687
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !97
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.0387687 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !97
  %i.ga = call float @llvm.fmuladd.f32(float %i.fx, float %i.ex, float %i.fz)
  store float %i.ga, ptr %i.fy, align 4, !tbaa !97
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fv
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !97
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.fv ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !97
  %i.gf = call float @llvm.fmuladd.f32(float %i.gc, float %i.ex, float %i.ge)
  store float %i.gf, ptr %i.gd, align 4, !tbaa !97
  %i.gg = add nuw i64 %i.fv, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gg, %i.ez
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph111, !llvm.loop !1092

bb.j:                                             ; preds = %._crit_edge81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !29 ; 2 uses
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !29
  %i.gj = load ptr, ptr %i.bf, align 8, !tbaa !1102, !nonnull !198, !align !369 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !18, !noalias !1110
  %i.gl = zext i32 %i.gk to i64
  %i.gm = icmp eq i64 %i.gi, %i.gl
  br i1 %i.gm, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.j
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.gj)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not75 = icmp eq ptr %.pr, null
  br i1 %.not75, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.gn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gn, ptr noundef nonnull @.str, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.go = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gr = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !26
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !27
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef %i.gs, i64 noundef %i.gu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.gx, %bb.l ], [ %i.gy, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr72 = load ptr, ptr %8, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr72, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gz = load ptr, ptr %.pr72, align 8, !tbaa !26 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.pr72, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !28
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr72, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.he = load ptr, ptr %i.bv, align 8, !tbaa !1106, !nonnull !198, !align !199 ; 3 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !29
  %i.hg = mul i64 %i.hf, %i.au
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !29
  %i.hj = mul i64 %i.hi, %indvars.iv
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !239
  %i.hm = getelementptr [4 x i8], ptr %i.hl, i64 %i.hg
  %i.hn = getelementptr [4 x i8], ptr %i.hm, i64 %i.hj
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !97
  %i.hp = load ptr, ptr %i.bj, align 8, !tbaa !1103, !nonnull !198, !align !199
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !29 ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.ct, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -4     ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !97
  %i.hu = fadd float %i.ho, %i.ht
  store float %i.hu, ptr %i.hs, align 4, !tbaa !97
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge81
  %i.hv = load ptr, ptr %i.bw, align 8, !tbaa !1111, !nonnull !198, !align !199 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !29
  %i.hx = mul i64 %i.hw, %indvars.iv
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !388
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hx
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !97
  %i.ic = fadd float %i.dm, %i.ib
  store float %i.ic, ptr %i.dk, align 4, !tbaa !97
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.id = phi i64 [ %i.dd, %bb.q ], [ %i.hq, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ie = load ptr, ptr %i.bf, align 8, !tbaa !1102, !nonnull !198, !align !369
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !18 ; 2 uses
  %i.ig = zext i32 %i.if to i64
  %i.ih = icmp samesign ult i64 %indvars.iv.next, %i.ig
  br i1 %i.ih, label %bb.e, label %._crit_edge85.loopexit, !llvm.loop !1095

bb.s:                                             ; preds = %bb.m
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %class.anon.325, align 8            ; 8 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !29
  store ptr %2, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !207
  %i.g = add i64 %i.f, %1                         ; 5 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.h = load ptr, ptr %0, align 8, !tbaa !208, !nonnull !198, !align !199
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.j = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, -1                         ; 3 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !18
  %i.m = load ptr, ptr %0, align 8, !tbaa !208, !nonnull !198, !align !199 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load i8, ptr %i.n, align 8, !tbaa !406, !range !132, !noundef !198
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not45 = icmp eq i32 %i.l, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.trip.count = zext i32 %i.l to i64
end_hunk_3
