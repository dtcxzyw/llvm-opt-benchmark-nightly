Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopUnrollPass?download=true
inline.NumInlined: 3625
inline.NumDeleted: 2020
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsE:bb.a
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !152 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -64 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !155
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #20
  br label %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i

_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bw
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !156

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm30DiagnosticInfoOptimizationBase8ArgumentD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i, %"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_0clEv.exit.i"
  %i.ci = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i ], [ %i.bs, %"_ZZL15tryToUnrollLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_25OptimizationRemarkEmitterEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESK_SJ_IbESL_SL_SL_SL_SK_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEENK3$_0clEv.exit.i" ] ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.al
  br i1 %i.cj, label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @free(ptr noundef %i.ci) #19
  br label %_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i

_ZN4llvm30DiagnosticInfoOptimizationBaseD2Ev.exit.i: ; preds = %bb.l, %_ZN4llvm23SmallVectorTemplateBaseINS_30DiagnosticInfoOptimizationBase8ArgumentELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_0EEvT_PDTclfL0p_EE.exit"

bb.m:                                             ; preds = %bb.g
  %i.ck = and i32 %i.f, 1
  %.not163 = icmp eq i32 %i.ck, 0
  %or.cond = and i1 %12, %.not163
  br i1 %or.cond, label %"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_0EEvT_PDTclfL0p_EE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !55 ; 2 uses
  %i.cq = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.cp, i32 noundef 51) #19
  br i1 %i.cq, label %_ZNK4llvm8Function10hasOptSizeEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.cp, i32 noundef 19) #19
  br label %_ZNK4llvm8Function10hasOptSizeEv.exit

_ZNK4llvm8Function10hasOptSizeEv.exit:            ; preds = %bb.n, %bb.o
  %i.cs = phi i1 [ true, %bb.n ], [ %i.cr, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @_ZN4llvm26gatherUnrollingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoEPNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoERNS_25OptimizationRemarkEmitterEiSt8optionalIjESE_SD_IbESF_SF_SE_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::TargetTransformInfo::UnrollingPreferences") align 4 %28, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %10, i64 %15, i64 %14, i16 %16, i16 %17, i16 %18, i64 %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.ct = call i64 @_ZN4llvm24gatherPeelingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoESt8optionalIbES8_b(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i16 %19, i16 %20, i1 noundef zeroext true) #19
  store i64 %i.ct, ptr %29, align 8
  %i.cu = load i32, ptr %28, align 4, !tbaa !25
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %28, i64 44
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !42, !range !18, !noundef !19
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %28, i64 12
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = icmp ne i32 %i.da, 0
  %or.cond.not165 = select i1 %i.cy, i1 %i.db, i1 false
  %or.cond4 = or i1 %i.cs, %or.cond.not165
  br i1 %or.cond4, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = and i32 %i.f, 5
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %bb.bl, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_1EEvT_PDTclfL0p_EE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.b)
  br label %bb.bl

bb.s:                                             ; preds = %bb.p, %_ZNK4llvm8Function10hasOptSizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.dd = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.dd, ptr %30, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i32 32, ptr %i.de, align 8, !tbaa !464
  %i.df = getelementptr inbounds nuw i8, ptr %30, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !278
  %i.dg = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store i8 1, ptr %i.dg, align 8, !tbaa !14
  call void @_ZN4llvm11CodeMetrics22collectEphemeralValuesEPKNS_4LoopEPNS_15AssumptionCacheERNS_15SmallPtrSetImplIPKNS_5ValueEEE(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(17) %30) #19
  %i.dh = call noundef ptr @_ZN4llvm15ScalarEvolution21getBackedgeTakenCountEPKNS_4LoopENS0_13ExitCountKindE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0, i32 noundef 0) #19
  %.not166 = icmp eq ptr %22, null
  br i1 %.not166, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = call fastcc noundef zeroext i1 @_ZL13isSCEVUniformPKN4llvm4SCEVERNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEE(ptr noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %22)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dj = phi i1 [ false, %bb.s ], [ %i.di, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.dk = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !41
  call void @_ZN4llvm19UnrollCostEstimatorC1EPKNS_4LoopERKNS_19TargetTransformInfoERKNS_15SmallPtrSetImplIPKNS_5ValueEEEjb(ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(17) %30, i32 noundef %i.dl, i1 noundef zeroext %i.dj) #19
  %i.dm = and i32 %i.f, 5
  %.not167 = icmp eq i32 %i.dm, 0                 ; 3 uses
  %i.dn = select i1 %.not167, ptr null, ptr %6    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !118
  %i.do = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !105
  %i.dq = icmp eq i32 %i.dp, 2
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %i.dn, ptr nonnull %i.a, ptr nonnull @.str.59, i64 30)
  br label %_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !99
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %i.dn, ptr nonnull %i.a, ptr nonnull @.str.60, i64 31)
  br label %_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !104, !range !18, !noundef !19
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call fastcc void @"_ZZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopEENK3$_0clENS_9StringRefE"(ptr %i.dn, ptr nonnull %i.a, ptr nonnull @.str.61, i64 38)
  br label %_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE.exit.thread

_ZNK4llvm19UnrollCostEstimator9canUnrollEPNS_25OptimizationRemarkEmitterEPKNS_4LoopE.exit.thread: ; preds = %bb.v, %bb.z, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.bj

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.cs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = load i64, ptr %31, align 8, !tbaa !96
  %i.dy = sdiv i64 %i.dx, 4
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add i32 %i.dz, 1
  %i.eb = load i32, ptr %28, align 4, !tbaa !193
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.eb, i32 %i.ea)
  store i32 %.sroa.speculated, ptr %28, align 4, !tbaa !25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !101
  %.not168 = icmp eq i32 %i.ed, 0
  br i1 %.not168, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not167, label %bb.bj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_2EEvT_PDTclfL0p_EE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.b)
  br label %bb.bj

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.ee = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  store ptr %i.ee, ptr %32, align 8, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  store i32 0, ptr %i.ef, align 8, !tbaa !133
  %i.eg = getelementptr inbounds nuw i8, ptr %32, i64 12
  store i32 8, ptr %i.eg, align 4, !tbaa !134
  call void @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE16getExitingBlocksERNS_15SmallVectorImplIPS1_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %32) #19
  %i.eh = load ptr, ptr %32, align 8, !tbaa !21   ; 2 uses
  %i.ei = load i32, ptr %i.ef, align 8, !tbaa !133 ; 2 uses
  %i.ej = zext i32 %i.ei to i64
  %.idx = shl nuw nsw i64 %i.ej, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx
  %.not169204 = icmp eq i32 %i.ei, 0
  br i1 %.not169204, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.not174 = icmp eq i32 %.1141, 0
  br i1 %.not174, label %._crit_edge.thread, label %.split

.lr.ph:                                           ; preds = %bb.af, %.lr.ph
  %.0140207 = phi i32 [ %.1141, %.lr.ph ], [ 0, %bb.af ] ; 2 uses
  %.0145206 = phi ptr [ %i.ep, %.lr.ph ], [ %i.eh, %bb.af ] ; 2 uses
  %.0146205 = phi i32 [ %.1143, %.lr.ph ], [ 1, %bb.af ]
  %i.el = load ptr, ptr %.0145206, align 8, !tbaa !53
  %i.em = call noundef i32 @_ZN4llvm15ScalarEvolution25getSmallConstantTripCountEPKNS_4LoopEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0, ptr noundef %i.el) #19 ; 3 uses
  %i.en = add i32 %.0140207, -1
  %i.eo = add i32 %i.em, -1
  %.not229 = icmp ult i32 %i.eo, %i.en            ; 2 uses
  %.1143 = select i1 %.not229, i32 %i.em, i32 %.0146205 ; 4 uses
  %.1141 = select i1 %.not229, i32 %i.em, i32 %.0140207 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0145206, i64 8 ; 2 uses
  %.not169 = icmp eq ptr %i.ep, %i.ek
  br i1 %.not169, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.af, %._crit_edge
  %.0142.lcssa233 = phi i32 [ %.1143, %._crit_edge ], [ 1, %bb.af ]
  %i.eq = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19 ; 3 uses
  %.not170 = icmp eq ptr %i.eq, null
  br i1 %.not170, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.thread
  %i.er = call noundef zeroext i1 @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE13isLoopExitingEPKS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.eq)
  br i1 %i.er, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.thread, %bb.ag
  %i.es = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE15getExitingBlockEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19 ; 2 uses
  %.not171 = icmp eq ptr %i.es, null
  br i1 %.not171, label %.split151, label %.thread

.thread:                                          ; preds = %bb.ag, %bb.ah
  %.0147196 = phi ptr [ %i.es, %bb.ah ], [ %i.eq, %bb.ag ]
  %i.et = call noundef i32 @_ZN4llvm15ScalarEvolution28getSmallConstantTripMultipleEPKNS_4LoopEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0, ptr noundef nonnull %.0147196) #19
  br label %.split151

.split:                                           ; preds = %._crit_edge
  %i.eu = getelementptr inbounds nuw i8, ptr %31, i64 28 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !117, !range !18, !noundef !19
  %i.ew = getelementptr inbounds nuw i8, ptr %28, i64 46 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 2, !tbaa !44, !range !18, !noundef !19
  %i.ey = and i8 %i.ex, %i.ev
  store i8 %i.ey, ptr %i.ew, align 2, !tbaa !44
  call void @_ZN4llvm18computeUnrollCountEPNS_4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjbjRKNS_19UnrollCostEstimatorERNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr nonnull poison, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull align 8 dereferenceable(17) %30, ptr noundef nonnull %6, i32 noundef %.1141, i32 noundef 0, i1 noundef zeroext false, i32 noundef %.1143, ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef nonnull align 4 dereferenceable(70) %28, ptr noundef nonnull align 4 dereferenceable(8) %29)
  br label %bb.ai

.split151:                                        ; preds = %bb.ah, %.thread
  %.3145.ph = phi i32 [ %.0142.lcssa233, %bb.ah ], [ %i.et, %.thread ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %31, i64 28 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 4, !tbaa !117, !range !18, !noundef !19
  %i.fb = getelementptr inbounds nuw i8, ptr %28, i64 46 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !44, !range !18, !noundef !19
  %i.fd = and i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.fb, align 2, !tbaa !44
  %i.fe = call noundef i32 @_ZN4llvm15ScalarEvolution28getSmallConstantMaxTripCountEPKNS_4LoopEPNS_15SmallVectorImplIPKNS_13SCEVPredicateEEE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0, ptr noundef null) #19 ; 2 uses
  %i.ff = call noundef zeroext i1 @_ZN4llvm15ScalarEvolution29isBackedgeTakenCountMaxOrZeroEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull %0) #19
  call void @_ZN4llvm18computeUnrollCountEPNS_4LoopERKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjbjRKNS_19UnrollCostEstimatorERNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr nonnull poison, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(1152) %3, ptr noundef nonnull align 8 dereferenceable(17) %30, ptr noundef nonnull %6, i32 noundef 0, i32 noundef %i.fe, i1 noundef zeroext %i.ff, i32 noundef %.3145.ph, ptr noundef nonnull align 8 dereferenceable(29) %31, ptr noundef nonnull align 4 dereferenceable(70) %28, ptr noundef nonnull align 4 dereferenceable(8) %29)
  br label %bb.ai

bb.ai:                                            ; preds = %.split, %.split151
  %.not174236 = phi i1 [ false, %.split ], [ true, %.split151 ]
  %.0140.lcssa234 = phi i32 [ %.1141, %.split ], [ 0, %.split151 ] ; 3 uses
  %i.fg = phi ptr [ %i.eu, %.split ], [ %i.ez, %.split151 ]
  %.3145199 = phi i32 [ %.1143, %.split ], [ %.3145.ph, %.split151 ]
  %.0148 = phi i32 [ 0, %.split ], [ %i.fe, %.split151 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %28, i64 20 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !36 ; 4 uses
  %.not172 = icmp eq i32 %i.fi, 0
  br i1 %.not172, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not167, label %bb.bh, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_3EEvT_PDTclfL0p_EE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.b)
  br label %bb.bh

bb.al:                                            ; preds = %bb.ai
  %i.fj = load i8, ptr %i.fg, align 4, !tbaa !117, !range !18, !noundef !19
  %i.fk = getelementptr inbounds nuw i8, ptr %28, i64 45 ; 4 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !43, !range !18, !noundef !19
  %i.fm = and i8 %i.fl, %i.fj                     ; 2 uses
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !43
  %i.fn = load i32, ptr %29, align 8, !tbaa !177
  %.not173 = icmp eq i32 %i.fn, 0
  br i1 %.not173, label %bb.ao, label %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit

_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit: ; preds = %bb.al
  call fastcc void @"_ZN4llvm25OptimizationRemarkEmitter4emitIZL15tryToUnrollLoopPNS_4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERS0_PNS_18BlockFrequencyInfoEPNS_18ProfileSummaryInfoEbibbbSt8optionalIjESL_SK_IbESM_SM_SM_SM_SL_PNS_21GenericUniformityInfoINS_17GenericSSAContextINS_8FunctionEEEEEPNS_9AAResultsEE3$_4EEvT_PDTclfL0p_EE"(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.b, ptr %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.fo = getelementptr inbounds nuw i8, ptr %33, i64 20
  store i32 128, ptr %i.fo, align 4, !tbaa !521
  %i.fp = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.fr = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 8208, i64 noundef 8) #19 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8192 ; 2 uses
  store ptr %i.fr, ptr %33, align 8, !tbaa !524
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !525
  store i32 0, ptr %i.fp, align 8, !tbaa !526
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fs, i8 0, i64 16, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %33, i64 48
  store i8 0, ptr %i.ft, align 8, !tbaa !527
  %i.fu = getelementptr inbounds nuw i8, ptr %33, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %33, i64 168
  store i32 1, ptr %i.fu, align 8
  store i32 0, ptr %i.fv, align 8
  %i.fw = load i32, ptr %29, align 8, !tbaa !177
  %i.fx = getelementptr inbounds nuw i8, ptr %29, i64 7
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !529, !range !18, !noundef !19
  %i.fz = trunc nuw i8 %i.fy to i1
  call void @_ZN4llvm8peelLoopEPNS_4LoopEjbPNS_8LoopInfoEPNS_15ScalarEvolutionERNS_13DominatorTreeEPNS_15AssumptionCacheEbRNS_8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigISD_NS_3sys10SmartMutexILb0EEEEEEE(ptr noundef nonnull %0, i32 noundef %i.fw, i1 noundef zeroext %i.fz, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(204) %1, ptr noundef nonnull %5, i1 noundef zeroext %9, ptr noundef nonnull align 8 dereferenceable(176) %33) #19
  %i.ga = load ptr, ptr %i.cl, align 8, !tbaa !50 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !100
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3
  store ptr %i.ga, ptr %34, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.gg, ptr %i.gh, align 8
  call void @_ZN4llvm23simplifyLoopAfterUnrollEPNS_4LoopEbPNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_13DominatorTreeEPNS_15AssumptionCacheEPKNS_19TargetTransformInfoENS_8ArrayRefIPNS_10BasicBlockEEEPNS_9AAResultsE(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.593") align 8 %34, ptr noundef null) #19
  %i.gi = getelementptr inbounds nuw i8, ptr %29, i64 6
  %i.gj = load i8, ptr %i.gi, align 2, !tbaa !530, !range !18, !noundef !19
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit
  call void @_ZN4llvm4Loop22setLoopAlreadyUnrolledEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEEC2Ej.exit
  call void @_ZN4llvm8ValueMapIPKNS_5ValueENS_14WeakTrackingVHENS_14ValueMapConfigIS3_NS_3sys10SmartMutexILb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %bb.bh

bb.ao:                                            ; preds = %bb.al
  br i1 %11, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gl = or i32 %.0148, %.0140.lcssa234
  %or.cond6.not = icmp eq i32 %i.gl, 0
  br i1 %or.cond6.not, label %bb.bh, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gm = icmp ult i32 %i.fi, %.0140.lcssa234
  %i.gn = icmp ult i32 %i.fi, %.0148
  %or.cond182 = or i1 %i.gm, %i.gn
  br i1 %or.cond182, label %bb.bh, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  br i1 %.not174236, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.go = urem i32 %.3145199, %i.fi
  %.not202 = icmp eq i32 %i.go, 0
  %i.gp = select i1 %.not202, i8 0, i8 %i.fm
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gq = phi i8 [ 0, %bb.ar ], [ %i.gp, %bb.as ]
  store i8 %i.gq, ptr %i.fk, align 1, !tbaa !43
  %i.gr = call noundef ptr @_ZNK4llvm4Loop9getLoopIDEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @_ZN4llvm16UnrollPragmaInfoC1EPKNS_4LoopE(ptr noundef nonnull align 4 dereferenceable(11) %35, ptr noundef nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.gs = call ptr @_ZNK4llvm4Loop11getStartLocEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #19
  store ptr %i.gs, ptr %36, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.gt = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !53
  store ptr %i.gu, ptr %i.c, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store ptr null, ptr %i.d, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.gv = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %37, i64 28
  %i.gx = getelementptr inbounds nuw i8, ptr %37, i64 29
  %i.gy = load i32, ptr %i.fh, align 4, !tbaa !36 ; 3 uses
  store i32 %i.gy, ptr %37, align 8, !tbaa !531
  %i.gz = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !192, !range !18, !noundef !19
  %i.hb = getelementptr inbounds nuw i8, ptr %37, i64 4
  store i8 %i.ha, ptr %i.hb, align 4, !tbaa !533
  %i.hc = getelementptr inbounds nuw i8, ptr %28, i64 47
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !179, !range !18, !noundef !19
  %i.he = getelementptr inbounds nuw i8, ptr %37, i64 6
  store i8 %i.hd, ptr %i.he, align 2, !tbaa !534
  %i.hf = getelementptr inbounds nuw i8, ptr %28, i64 50
  %i.hg = load i8, ptr %i.hf, align 2, !tbaa !95, !range !18, !noundef !19
  %i.hh = getelementptr inbounds nuw i8, ptr %37, i64 7
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !535
  %i.hi = load i8, ptr %i.fk, align 1, !tbaa !43, !range !18, !noundef !19
  %i.hj = getelementptr inbounds nuw i8, ptr %37, i64 5
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !536
  %i.hk = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 %i.e, ptr %i.hk, align 8, !tbaa !537
  %i.hl = call noundef ptr @_ZN4llvm23getLoopConvergenceHeartEPKNS_4LoopE(ptr noundef nonnull %0) #19
  store ptr %i.hl, ptr %i.gv, align 8, !tbaa !538
  %i.hm = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !47
  %i.ho = getelementptr inbounds nuw i8, ptr %37, i64 24
  store i32 %i.hn, ptr %i.ho, align 8, !tbaa !539
  %i.hp = getelementptr inbounds nuw i8, ptr %28, i64 68
  %i.hq = load i8, ptr %i.hp, align 4, !tbaa !48, !range !18, !noundef !19
  store i8 %i.hq, ptr %i.gw, align 4, !tbaa !540
  %i.hr = getelementptr inbounds nuw i8, ptr %28, i64 69
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !49, !range !18, !noundef !19
  store i8 %i.hs, ptr %i.gx, align 1, !tbaa !541
  %i.ht = call noundef i32 @_ZN4llvm10UnrollLoopEPNS_4LoopENS_17UnrollLoopOptionsEPNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_13DominatorTreeEPNS_15AssumptionCacheEPKNS_19TargetTransformInfoEPNS_25OptimizationRemarkEmitterEbPS1_PNS_9AAResultsE(ptr noundef nonnull %0, ptr noundef nonnull byval(%"struct.llvm::UnrollLoopOptions") align 8 %37, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, i1 noundef zeroext %9, ptr noundef nonnull %i.d, ptr noundef %23) #19 ; 3 uses
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.au, label %bb.aw

end_hunk_0
