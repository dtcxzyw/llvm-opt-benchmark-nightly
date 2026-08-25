Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopUnrollAndJamPass?download=true
begin_hunk_0_@_ZN4llvm20LoopUnrollAndJamPass3runERNS_8LoopNestERNS_15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEEES6_RNS_10LPMUpdaterE:bb.a
bb.aj:                                            ; preds = %_ZL28unrollAndJamCountPragmaValuePKN4llvm4LoopE.exit.i.i
  store i32 %i.hh, ptr %i.ba, align 4, !tbaa !134
  store i8 1, ptr %i.bd, align 1, !tbaa !150
  store i8 1, ptr %i.bb, align 4, !tbaa !135
  %i.hi = load i8, ptr %i.bc, align 2, !tbaa !136, !range !18, !noundef !19
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hk = urem i32 %i.fo, %i.hh
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.val111.i.i = load i32, ptr %i.av, align 4, !tbaa !125 ; 3 uses
  %i.hm = sub i32 %i.fs, %.val111.i.i
  %i.hn = zext i32 %i.hm to i64
  %i.ho = and i64 %.0.i.i.i.i.i, 4294967295       ; 2 uses
  %i.hp = mul nuw i64 %i.ho, %i.hn
  %i.hq = zext i32 %.val111.i.i to i64            ; 2 uses
  %i.hr = add nuw i64 %i.hp, %i.hq
  %i.hs = load i32, ptr %6, align 4, !tbaa !137
  %i.ht = zext i32 %i.hs to i64
  %i.hu = icmp ult i64 %i.hr, %i.ht
  br i1 %i.hu, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.hv = sub i32 %i.ew, %.val111.i.i
  %i.hw = zext i32 %i.hv to i64
  %i.hx = mul nuw i64 %i.ho, %i.hw
  %i.hy = add nuw i64 %i.hx, %i.hq
  %i.hz = load i32, ptr %i.aq, align 4, !tbaa !119
  %i.ia = zext i32 %i.hz to i64
  %i.ib = icmp ult i64 %i.hy, %i.ia
  br i1 %i.ib, label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i, label %.thread

_ZL28unrollAndJamCountPragmaValuePKN4llvm4LoopE.exit.thread.i.i: ; preds = %_ZL28unrollAndJamCountPragmaValuePKN4llvm4LoopE.exit.i.i, %bb.af
  %i.ic = call noundef ptr @_ZN4llvm24getUnrollMetadataForLoopEPKNS_4LoopENS_9StringRefE(ptr noundef nonnull %i.bn, ptr nonnull @.str.25, i64 31) #13
  %i.id = icmp ne ptr %i.ic, null
  %i.ie = or i1 %i.fu, %i.id                      ; 2 uses
  br i1 %i.ie, label %bb.an, label %.thread.i

bb.an:                                            ; preds = %_ZL28unrollAndJamCountPragmaValuePKN4llvm4LoopE.exit.thread.i.i
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PragmaUnrollAndJamThreshold, i64 120), align 8, !tbaa !114 ; 2 uses
  store i32 %i.if, ptr %i.aq, align 4, !tbaa !119
  %i.ig = load i8, ptr %i.bc, align 2, !tbaa !136, !range !18, !noundef !19
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.aq, label %bb.ao

.thread:                                          ; preds = %bb.ak, %bb.al, %bb.am
  %i.ii = call noundef ptr @_ZN4llvm24getUnrollMetadataForLoopEPKNS_4LoopENS_9StringRefE(ptr noundef nonnull %i.bn, ptr nonnull @.str.25, i64 31) #13 ; 0 uses
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL27PragmaUnrollAndJamThreshold, i64 120), align 8, !tbaa !114 ; 2 uses
  store i32 %i.ij, ptr %i.aq, align 4, !tbaa !119
  %i.ik = load i8, ptr %i.bc, align 2, !tbaa !136, !range !18, !noundef !19
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %.thread17, label %bb.ao

.thread17:                                        ; preds = %.thread
  %.pre34.i18 = load i32, ptr %i.ba, align 4, !tbaa !134
  br label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i

.thread.i:                                        ; preds = %_ZL28unrollAndJamCountPragmaValuePKN4llvm4LoopE.exit.thread.i.i
  %i.im = load i8, ptr %i.bc, align 2, !tbaa !136, !range !18, !noundef !19
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %.thread51.i, label %.thread50

.thread51.i:                                      ; preds = %.thread.i
  %.pre3452.i = load i32, ptr %i.ba, align 4, !tbaa !134
  br label %.preheader133.i.i

bb.ao:                                            ; preds = %.thread, %bb.an
  %i.io = phi i32 [ %i.ij, %.thread ], [ %i.if, %bb.an ]
  %.val106.i.i = load i32, ptr %i.ba, align 4, !tbaa !134 ; 2 uses
  %.val107.i.i = load i32, ptr %i.av, align 4, !tbaa !125 ; 2 uses
  %i.ip = sub i32 %i.ew, %.val107.i.i
  %i.iq = zext i32 %i.ip to i64
  %i.ir = zext i32 %.val106.i.i to i64
  %i.is = mul nuw i64 %i.iq, %i.ir
  %i.it = zext i32 %.val107.i.i to i64
  %i.iu = add nuw i64 %i.is, %i.it
  %i.iv = zext i32 %i.io to i64
  %.not.i25.i = icmp ult i64 %i.iu, %i.iv
  br i1 %.not.i25.i, label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i, label %bb.ap

.thread50:                                        ; preds = %.thread.i
  %.pre = load i32, ptr %i.aq, align 4, !tbaa !119
  %.val106.i.i51 = load i32, ptr %i.ba, align 4, !tbaa !134
  %.val107.i.i52 = load i32, ptr %i.av, align 4, !tbaa !125 ; 2 uses
  %i.iw = sub i32 %i.ew, %.val107.i.i52
  %i.ix = zext i32 %i.iw to i64
  %i.iy = zext i32 %.val106.i.i51 to i64
  %i.iz = mul nuw i64 %i.ix, %i.iy
  %i.ja = zext i32 %.val107.i.i52 to i64
  %i.jb = add nuw i64 %i.iz, %i.ja
  %i.jc = zext i32 %.pre to i64
  %.not.i25.i53 = icmp ult i64 %i.jb, %i.jc
  br i1 %.not.i25.i53, label %.thread.i.i.thread, label %bb.ap

bb.ap:                                            ; preds = %.thread50, %bb.ao
  store i32 0, ptr %i.ba, align 4, !tbaa !134
  br label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i

bb.aq:                                            ; preds = %bb.an
  %.pre34.i = load i32, ptr %i.ba, align 4, !tbaa !134 ; 2 uses
  br i1 %i.fu, label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i, label %.preheader133.i.i

.preheader133.i.i:                                ; preds = %bb.aq, %.thread51.i
  %.pre3453.i = phi i32 [ %.pre3452.i, %.thread51.i ], [ %.pre34.i, %bb.aq ] ; 3 uses
  %.not99134.i.i = icmp eq i32 %.pre3453.i, 0
  br i1 %.not99134.i.i, label %.critedge.i28.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader133.i.i
  %.val105.i.i = load i32, ptr %i.av, align 4, !tbaa !125 ; 2 uses
  %i.jd = sub i32 %i.ew, %.val105.i.i
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = zext i32 %.val105.i.i to i64            ; 2 uses
  %i.jg = load i32, ptr %i.aq, align 4, !tbaa !119
  %i.jh = zext i32 %i.jg to i64                   ; 2 uses
  %i.ji = zext i32 %.pre3453.i to i64             ; 2 uses
  %i.jj = mul nuw i64 %i.ji, %i.je
  %i.jk = add nuw i64 %i.jj, %i.jf
  %.not100.i.i22 = icmp ult i64 %i.jk, %i.jh
  br i1 %.not100.i.i22, label %.critedge.i28.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i
  %indvars.iv.next.i68 = add nsw i64 %i.ji, -1    ; 2 uses
  %indvars.i69 = trunc i64 %indvars.iv.next.i68 to i32 ; 2 uses
  %.not99.i27.i70 = icmp eq i32 %indvars.i69, 0
  br i1 %.not99.i27.i70, label %..critedge.i28.i.loopexit_crit_edge24, label %.lr.ph73, !llvm.loop !151

.lr.ph73:                                         ; preds = %.lr.ph.preheader
  br label %bb.ar, !llvm.loop !151

bb.ar:                                            ; preds = %.lr.ph73, %.lr.ph
  %indvars.i72 = phi i32 [ %indvars.i69, %.lr.ph73 ], [ %indvars.i, %.lr.ph ]
  %indvars.iv.next.i71 = phi i64 [ %indvars.iv.next.i68, %.lr.ph73 ], [ %indvars.iv.next.i, %.lr.ph ] ; 2 uses
  %i.jl = mul nuw i64 %indvars.iv.next.i71, %i.je
  %i.jm = add nuw i64 %i.jl, %i.jf
  %.not100.i.i = icmp ult i64 %i.jm, %i.jh
  br i1 %.not100.i.i, label %.critedge.i28.i.sink.split, label %.lr.ph, !llvm.loop !151

.lr.ph:                                           ; preds = %bb.ar
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i71, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %.not99.i27.i = icmp eq i32 %indvars.i, 0
  br i1 %.not99.i27.i, label %.lr.ph...critedge.i28.i.loopexit_crit_edge24_crit_edge, label %bb.ar, !llvm.loop !151

.lr.ph...critedge.i28.i.loopexit_crit_edge24_crit_edge: ; preds = %.lr.ph
  br label %..critedge.i28.i.loopexit_crit_edge24, !llvm.loop !151

..critedge.i28.i.loopexit_crit_edge24:            ; preds = %.lr.ph...critedge.i28.i.loopexit_crit_edge24_crit_edge, %.lr.ph.preheader
  br label %.critedge.i28.i.sink.split, !llvm.loop !151

.critedge.i28.i.sink.split:                       ; preds = %bb.ar, %..critedge.i28.i.loopexit_crit_edge24
  %indvars.i.lcssa58.sink = phi i32 [ 0, %..critedge.i28.i.loopexit_crit_edge24 ], [ %indvars.i72, %bb.ar ] ; 2 uses
  store i32 %indvars.i.lcssa58.sink, ptr %i.ba, align 4, !tbaa !134
  br label %.critedge.i28.i

.critedge.i28.i:                                  ; preds = %.critedge.i28.i.sink.split, %.lr.ph.i.i, %.preheader133.i.i
  %i.jn = phi i32 [ 0, %.preheader133.i.i ], [ %.pre3453.i, %.lr.ph.i.i ], [ %indvars.i.lcssa58.sink, %.critedge.i28.i.sink.split ]
  br i1 %i.ie, label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i, label %.thread.i.i.thread

.thread.i.i.thread:                               ; preds = %.thread50, %.critedge.i28.i
  %.not101.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not101.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.thread.i.i.thread
  %i.jo = mul i32 %i.fp, %i.ew
  %i.jp = load i32, ptr %6, align 4, !tbaa !137
  %i.jq = icmp ult i32 %i.jo, %i.jp
  br i1 %i.jq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.ba, align 4, !tbaa !134
  br label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i

bb.au:                                            ; preds = %bb.as, %.thread.i.i.thread
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !25 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !152 ; 2 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %.not102.i.i = icmp eq i64 %i.jx, 8
  br i1 %.not102.i.i, label %.preheader.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ba, align 4, !tbaa !134
  br label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i

bb.aw:                                            ; preds = %._crit_edge.i26.i
  %i.jy = icmp eq i32 %.193.lcssa.i.i, 0
  br i1 %i.jy, label %bb.az, label %._ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit_crit_edge.i

._ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit_crit_edge.i: ; preds = %bb.aw
  %.pre33.i = load i32, ptr %i.ba, align 4, !tbaa !134
  br label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i

.preheader.i.i:                                   ; preds = %bb.au, %._crit_edge.i26.i
  %.092142.i.i = phi i32 [ %.193.lcssa.i.i, %._crit_edge.i26.i ], [ 0, %bb.au ] ; 2 uses
  %.096141.i.i = phi ptr [ %i.kc, %._crit_edge.i26.i ], [ %i.js, %bb.au ] ; 2 uses
  %i.jz = load ptr, ptr %.096141.i.i, align 8, !tbaa !28 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 2 uses
  %.sroa.0121.0136.i.i = load ptr, ptr %i.ka, align 8, !tbaa !153 ; 2 uses
  %.not131137.i.i = icmp eq ptr %.sroa.0121.0136.i.i, %i.kb
  br i1 %.not131137.i.i, label %._crit_edge.i26.i, label %.lr.ph140.i.i

._crit_edge.i26.i:                                ; preds = %bb.ay, %.preheader.i.i
  %.193.lcssa.i.i = phi i32 [ %.092142.i.i, %.preheader.i.i ], [ %.395.i.i, %bb.ay ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.096141.i.i, i64 8 ; 2 uses
  %.not103.i.i = icmp eq ptr %i.kc, %i.ju
  br i1 %.not103.i.i, label %bb.aw, label %.preheader.i.i

.lr.ph140.i.i:                                    ; preds = %.preheader.i.i, %bb.ay
  %.sroa.0121.0139.i.i = phi ptr [ %.sroa.0121.0.i.i, %bb.ay ], [ %.sroa.0121.0136.i.i, %.preheader.i.i ] ; 3 uses
  %.193138.i.i = phi i32 [ %.395.i.i, %bb.ay ], [ %.092142.i.i, %.preheader.i.i ] ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %.sroa.0121.0139.i.i, i64 -24
  %i.ke = load i8, ptr %i.kd, align 8, !tbaa !154
  %.not132.i.i = icmp eq i8 %i.ke, 63
  br i1 %.not132.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph140.i.i
  %i.kf = getelementptr inbounds i8, ptr %.sroa.0121.0139.i.i, i64 -56
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !155
  %i.kh = call noundef ptr @_ZN4llvm15ScalarEvolution14getSCEVAtScopeEPNS_5ValueEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.u, ptr noundef %i.kg, ptr noundef nonnull %i.bn) #13
  %i.ki = call noundef zeroext i1 @_ZN4llvm15ScalarEvolution15isLoopInvariantEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.u, ptr noundef %i.kh, ptr noundef nonnull %i.bn) #13
  %i.kj = zext i1 %i.ki to i32
  %spec.select.i.i = add i32 %.193138.i.i, %i.kj
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph140.i.i
  %.395.i.i = phi i32 [ %spec.select.i.i, %bb.ax ], [ %.193138.i.i, %.lr.ph140.i.i ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139.i.i, i64 8
  %.sroa.0121.0.i.i = load ptr, ptr %i.kk, align 8, !tbaa !153 ; 2 uses
  %.not131.i.i = icmp eq ptr %.sroa.0121.0.i.i, %i.kb
  br i1 %.not131.i.i, label %._crit_edge.i26.i, label %.lr.ph140.i.i

bb.az:                                            ; preds = %bb.aw
  store i32 0, ptr %i.ba, align 4, !tbaa !134
  br label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i

_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i: ; preds = %bb.ao, %.thread17, %._ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit_crit_edge.i, %.critedge.i28.i, %bb.aq, %bb.am, %bb.ae
  %i.kl = phi i32 [ %i.fv, %bb.ae ], [ %i.hh, %bb.am ], [ %.pre33.i, %._ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit_crit_edge.i ], [ %.pre34.i, %bb.aq ], [ %.pre34.i18, %.thread17 ], [ %i.jn, %.critedge.i28.i ], [ %.val106.i.i, %bb.ao ] ; 3 uses
  %.3.i.i = phi i1 [ true, %bb.ae ], [ true, %bb.am ], [ false, %._ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit_crit_edge.i ], [ true, %bb.aq ], [ true, %.thread17 ], [ true, %.critedge.i28.i ], [ true, %bb.ao ]
  %i.km = icmp ult i32 %i.kl, 2
  br i1 %i.km, label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i
  %.not.i22.i = icmp ne i32 %i.fn, 0
  %i.kn = icmp ugt i32 %i.kl, %i.fn
  %or.cond.i.i = and i1 %.not.i22.i, %i.kn
  br i1 %or.cond.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.fn, ptr %i.ba, align 4, !tbaa !134
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ko = phi i32 [ %i.fn, %bb.bb ], [ %i.kl, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !23
  %i.kp = load i8, ptr %i.be, align 2, !tbaa !159, !range !18, !noundef !19
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = call noundef i32 @_ZN4llvm16UnrollAndJamLoopEPNS_4LoopEjjjbPNS_8LoopInfoEPNS_15ScalarEvolutionEPNS_13DominatorTreeEPNS_15AssumptionCacheEPKNS_19TargetTransformInfoEPNS_25OptimizationRemarkEmitterEPS1_(ptr noundef nonnull %i.bn, i32 noundef %i.ko, i32 noundef %i.fn, i32 noundef %i.fo, i1 noundef zeroext %i.kq, ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(1152) %i.u, ptr noundef nonnull align 8 dereferenceable(204) %i.s, ptr noundef nonnull align 8 dereferenceable(153) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.ks = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not99.i.i = icmp eq ptr %i.ks, null
  br i1 %.not99.i.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) @constinit.19, i64 32, i1 false), !tbaa.struct !133
  %i.kt = call { ptr, i8 } @_ZN4llvm18makeFollowupLoopIDEPNS_6MDNodeENS_8ArrayRefINS_9StringRefEEEPKcb(ptr noundef %i.ff, ptr nonnull %12, i64 2, ptr noundef nonnull @.str.17, i1 noundef zeroext false) #13 ; 2 uses
  %i.ku = extractvalue { ptr, i8 } %i.kt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kw = extractvalue { ptr, i8 } %i.kt, 0
  %i.kx = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @_ZNK4llvm4Loop9setLoopIDEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(144) %i.kx, ptr noundef %i.kw) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) @constinit.21, i64 32, i1 false), !tbaa.struct !133
  %i.ky = call { ptr, i8 } @_ZN4llvm18makeFollowupLoopIDEPNS_6MDNodeENS_8ArrayRefINS_9StringRefEEEPKcb(ptr noundef %i.ff, ptr nonnull %13, i64 2, ptr noundef nonnull @.str.17, i1 noundef zeroext false) #13 ; 2 uses
  %i.kz = extractvalue { ptr, i8 } %i.ky, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = extractvalue { ptr, i8 } %i.ky, 0
  %.sink.i.i = select i1 %i.la, ptr %i.lb, ptr %i.fg
  call void @_ZNK4llvm4Loop9setLoopIDEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ep, ptr noundef %.sink.i.i) #13
  %i.lc = icmp eq i32 %i.kr, 1
  br i1 %i.lc, label %bb.bg, label %.critedge.i.i

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) @constinit.23, i64 32, i1 false), !tbaa.struct !133
  %i.ld = call { ptr, i8 } @_ZN4llvm18makeFollowupLoopIDEPNS_6MDNodeENS_8ArrayRefINS_9StringRefEEEPKcb(ptr noundef %i.ff, ptr nonnull %14, i64 2, ptr noundef nonnull @.str.17, i1 noundef zeroext false) #13 ; 2 uses
  %i.le = extractvalue { ptr, i8 } %i.ld, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.bh, label %.critedge.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.lg = extractvalue { ptr, i8 } %i.ld, 0
  call void @_ZNK4llvm4Loop9setLoopIDEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(144) %i.bn, ptr noundef %i.lg) #13
  br label %bb.bj

.critedge.i.i:                                    ; preds = %bb.bg, %bb.bf
  %i.lh = icmp ne i32 %i.kr, 2
  %or.cond10.i.i = and i1 %.3.i.i, %i.lh
  br i1 %or.cond10.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.critedge.i.i
  call void @_ZN4llvm4Loop22setLoopAlreadyUnrolledEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bn) #13
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.critedge.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i

_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i: ; preds = %bb.bj, %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i, %bb.az, %bb.av, %bb.at, %bb.ap, %bb.y, %bb.x, %bb.w, %bb.v
  %.4.i.i = phi i32 [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.y ], [ 0, %bb.x ], [ %i.kr, %bb.bj ], [ 0, %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.i ], [ 0, %bb.ap ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.li = load i8, ptr %i.au, align 8, !tbaa !14, !range !18, !noundef !19
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i
  %i.lk = load ptr, ptr %8, align 8, !tbaa !20
  call void @free(ptr noundef %i.lk) #13
  br label %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.i

_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.thread.i: ; preds = %bb.u, %bb.t, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.thread22.i

_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.i: ; preds = %bb.bk, %_ZL24computeUnrollAndJamCountPN4llvm4LoopES1_RKNS_19TargetTransformInfoERNS_13DominatorTreeEPNS_8LoopInfoEPNS_15AssumptionCacheERNS_15ScalarEvolutionERKNS_15SmallPtrSetImplIPKNS_5ValueEEEPNS_25OptimizationRemarkEmitterEjjRKNS_19UnrollCostEstimatorEjjRNS2_20UnrollingPreferencesERNS2_18PeelingPreferencesE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  switch i32 %.4.i.i, label %.thread22.fold.split.i [
    i32 0, label %.thread22.i
    i32 2, label %bb.bl
  ]

bb.bl:                                            ; preds = %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.i
  %i.ll = icmp eq ptr %i.bn, %i.ad
  br i1 %i.ll, label %bb.bm, label %.thread22.i

bb.bm:                                            ; preds = %bb.bl
  %i.lm = load ptr, ptr %18, align 8, !tbaa !92
  %i.ln = load i64, ptr %i.ao, align 8, !tbaa !95
  %i.lo = load ptr, ptr %i.bf, align 8, !tbaa !160, !nonnull !19, !align !67
  call void @_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEE5clearERS1_NS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.lo, ptr noundef nonnull align 8 dereferenceable(144) %i.bn, ptr %i.lm, i64 %i.ln) #13
  %i.lp = load ptr, ptr %i.bg, align 8, !tbaa !164
  %i.lq = icmp eq ptr %i.ad, %i.lp
  br i1 %i.lq, label %bb.bn, label %.thread22.i

bb.bn:                                            ; preds = %bb.bm
  store i8 1, ptr %i.bh, align 8, !tbaa !165
  br label %.thread22.i

.thread22.fold.split.i:                           ; preds = %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.i
  br label %.thread22.i

.thread22.i:                                      ; preds = %bb.bl, %bb.bm, %bb.bn, %.thread22.fold.split.i, %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.i, %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.thread.i
  %.1 = phi i1 [ %.0, %.thread22.fold.split.i ], [ %.0, %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.i ], [ %.0, %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.thread.i ], [ true, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bl ] ; 2 uses
  %i.lr = phi i1 [ true, %.thread22.fold.split.i ], [ %.028.i, %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.i ], [ %.028.i, %_ZL21tryToUnrollAndJamLoopPN4llvm4LoopERNS_13DominatorTreeEPNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEi.exit.thread.i ], [ true, %bb.bn ], [ true, %bb.bm ], [ true, %bb.bl ] ; 2 uses
  %i.ls = load ptr, ptr %18, align 8, !tbaa !92   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.an
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.thread22.i
  %i.lu = load i64, ptr %i.an, align 8, !tbaa !94
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.thread22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.lw = load i32, ptr %i.ah, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.lw, 0
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !166

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %.0.lcssa.i = phi i1 [ false, %bb.a ], [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.lx = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.ag
  br i1 %i.ly, label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EED2Ev.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.lx) #13
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_4LoopELj4EED2Ev.exit.i.i: ; preds = %bb.bo, %._crit_edge.i
  %i.lz = load i32, ptr %17, align 8
  %i.ma = and i32 %i.lz, 1
  %.not.i.i.i23.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i23.i, label %bb.bp, label %_ZL21tryToUnrollAndJamLoopRN4llvm8LoopNestERNS_13DominatorTreeERNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEiRNS_10LPMUpdaterERb.exit

bb.bp:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_4LoopELj4EED2Ev.exit.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !94 ; 2 uses
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %_ZL21tryToUnrollAndJamLoopRN4llvm8LoopNestERNS_13DominatorTreeERNS_8LoopInfoERNS_15ScalarEvolutionERKNS_19TargetTransformInfoERNS_15AssumptionCacheERNS_14DependenceInfoERNS_25OptimizationRemarkEmitterEiRNS_10LPMUpdaterERb.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.me = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !94
  %i.mg = zext i32 %i.mc to i64                   ; 2 uses
end_hunk_0
