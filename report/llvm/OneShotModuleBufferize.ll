Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OneShotModuleBufferize?download=true
inline.NumInlined: 3756
inline.NumDeleted: 1928
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir13bufferization15analyzeModuleOpEPNS_9OperationERNS0_20OneShotAnalysisStateEPNS0_23BufferizationStatisticsE:bb.a
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aet, i64 40
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !28
  %i.afi = zext i32 %i.afh to i64
  %i.afj = getelementptr inbounds nuw [32 x i8], ptr %i.aff, i64 %i.afi ; 3 uses
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !46
  %i.afl = icmp eq ptr %i.afj, %i.afk
  br i1 %i.afl, label %_ZN4llvmeqENS_9StringRefES0_.exit39.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.afm = load i64, ptr %i.a, align 8, !tbaa !91
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !115
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 48
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !116
  %i.afr = and i64 %i.afm, 4294967295
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.afq, i64 %i.afr
  %.sroa.0.0.copyload.i.i.i68 = load ptr, ptr %i.afs, align 8 ; 2 uses
  %i.aft = call noundef zeroext i1 @_ZNK4mlir13bufferization13AnalysisState11isValueReadENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(544) %1, ptr %.sroa.0.0.copyload.i.i.i68) #16
  %i.afu = call noundef zeroext i1 @_ZNK4mlir13bufferization20OneShotAnalysisState14isValueWrittenENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(544) %1, ptr %.sroa.0.0.copyload.i.i.i68) #16
  br label %_ZN4llvmeqENS_9StringRefES0_.exit39.i

_ZN4llvmeqENS_9StringRefES0_.exit39.i:            ; preds = %bb.bw, %bb.bv, %_ZN4llvmeqENS_9StringRefES0_.exit35.i, %_ZN4llvmeqENS_9StringRefES0_.exit31.thread73.i, %_ZN4llvmeqENS_9StringRefES0_.exit31.thread.i, %bb.bu
  %.026.i = phi i1 [ %i.afu, %bb.bw ], [ false, %bb.bu ], [ %i.aes, %_ZN4llvmeqENS_9StringRefES0_.exit35.i ], [ true, %bb.bv ], [ %i.aei, %_ZN4llvmeqENS_9StringRefES0_.exit31.thread73.i ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit31.thread.i ] ; 3 uses
  %.0.i69 = phi i1 [ %i.aft, %bb.bw ], [ false, %bb.bu ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit35.i ], [ true, %bb.bv ], [ %i.aei, %_ZN4llvmeqENS_9StringRefES0_.exit31.thread73.i ], [ %i.ady, %_ZN4llvmeqENS_9StringRefES0_.exit31.thread.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.afv = load ptr, ptr %i.r, align 8, !tbaa !13, !nonnull !23, !align !24
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 297
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !189, !range !114, !noundef !23
  %i.afy = trunc nuw i8 %i.afx to i1
  br i1 %i.afy, label %bb.bx, label %bb.ce

bb.bx:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit39.i
  %.sroa.0.0.copyload.i = load ptr, ptr %10, align 8 ; 2 uses
  %i.afz = load i64, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aga = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24 ; 2 uses
  %i.agb = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aga) #16
  store ptr %i.agb, ptr %4, align 8, !tbaa !210
  %or.cond.i.i = and i1 %.026.i, %.0.i69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  br i1 %or.cond.i.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i8 1, ptr %i.at, align 1, !tbaa !100
  store ptr @.str.9, ptr %5, align 8, !tbaa !103
  store i8 3, ptr %i.as, align 8, !tbaa !104
  %i.agc = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(34) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN12_GLOBAL__N_121annotateFuncArgAccessEN4mlir4func6FuncOpElbb.exit.i

bb.bz:                                            ; preds = %bb.bx
  br i1 %.0.i69, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i8 1, ptr %i.ar, align 1, !tbaa !100
  store ptr @.str.8, ptr %6, align 8, !tbaa !103
  store i8 3, ptr %i.aq, align 8, !tbaa !104
  %i.agd = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(34) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %_ZN12_GLOBAL__N_121annotateFuncArgAccessEN4mlir4func6FuncOpElbb.exit.i

bb.cb:                                            ; preds = %bb.bz
  br i1 %.026.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i8 1, ptr %i.ap, align 1, !tbaa !100
  store ptr @.str.10, ptr %7, align 8, !tbaa !103
  store i8 3, ptr %i.ao, align 8, !tbaa !104
  %i.age = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(34) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZN12_GLOBAL__N_121annotateFuncArgAccessEN4mlir4func6FuncOpElbb.exit.i

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i8 1, ptr %i.an, align 1, !tbaa !100
  store ptr @.str.14, ptr %8, align 8, !tbaa !103
  store i8 3, ptr %i.am, align 8, !tbaa !104
  %i.agf = call ptr @_ZN4mlir7Builder13getStringAttrERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(34) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN12_GLOBAL__N_121annotateFuncArgAccessEN4mlir4func6FuncOpElbb.exit.i

_ZN12_GLOBAL__N_121annotateFuncArgAccessEN4mlir4func6FuncOpElbb.exit.i: ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.by
  %.sroa.0.0.i.i = phi ptr [ %i.agc, %bb.by ], [ %i.agd, %bb.ca ], [ %i.age, %bb.cc ], [ %i.agf, %bb.cd ]
  %i.agg = trunc i64 %i.afz to i32
  %i.agh = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aga) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i8 5, ptr %i.au, align 8, !tbaa !104
  store i8 1, ptr %i.av, align 1, !tbaa !100
  store ptr @.str.12, ptr %3, align 8, !tbaa !103
  store i64 20, ptr %i.aw, align 8, !tbaa !103
  %i.agi = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.agh, ptr noundef nonnull align 8 dereferenceable(34) %3) #16
  call void @_ZN4mlir23function_interface_impl10setArgAttrINS_4func6FuncOpEEEvT_jNS_10StringAttrENS_9AttributeE(ptr nonnull %.sroa.0.0.copyload.i, i32 noundef %i.agg, ptr %i.agi, ptr %.sroa.0.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN12_GLOBAL__N_121annotateFuncArgAccessEN4mlir4func6FuncOpElbb.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit39.i
  br i1 %.0.i69, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.agj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.agj, 0
  %i.agk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.agl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E24lookupOrInsertIntoBucketIRKlJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.agk, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !213 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  br i1 %.026.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.agm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.fca.0.extract.i40.i = extractvalue { ptr, i8 } %i.agm, 0
  %i.agn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i40.i, i64 8
  %i.ago = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E24lookupOrInsertIntoBucketIRKlJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.agn, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !220 ; 0 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit.i64, %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit.thread.i62
  %i.agp = load i64, ptr %i.a, align 8, !tbaa !91
  %i.agq = add nsw i64 %i.agp, 1                  ; 2 uses
  store i64 %i.agq, ptr %i.a, align 8, !tbaa !91
  %i.agr = icmp slt i64 %i.agq, %i.acg
  br i1 %i.agr, label %.lr.ph.i44, label %.loopexit93, !llvm.loop !227

.loopexit93:                                      ; preds = %bb.ci, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ags = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %24)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ags, 0
  %i.agt = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i32 2, ptr %i.agt, align 4, !tbaa !228
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit93, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  %i.agu = getelementptr inbounds nuw i8, ptr %.040107, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.agu, %i.q
  br i1 %.not, label %.thread78, label %bb.d

.thread78:                                        ; preds = %bb.cj, %bb.c
  %i.agv = load ptr, ptr %22, align 8, !tbaa !8   ; 2 uses
  %i.agw = load i32, ptr %i.i, align 8, !tbaa !11 ; 2 uses
  %i.agx = zext i32 %i.agw to i64
  %.idx113 = shl nuw nsw i64 %i.agx, 3
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 %.idx113
  %.not41108 = icmp eq i32 %i.agw, 0
  br i1 %.not41108, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %.thread78
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph110, %bb.cm
  %.0109 = phi ptr [ %i.agv, %.lr.ph110 ], [ %i.ahg, %bb.cm ] ; 2 uses
  %i.aha = load i64, ptr %.0109, align 8
  %i.ahb = inttoptr i64 %i.aha to ptr             ; 2 uses
  %i.ahc = load ptr, ptr %i.agz, align 8, !tbaa !13, !nonnull !23, !align !24
  %i.ahd = call noundef zeroext i1 @_ZNK4mlir13bufferization20BufferizationOptions11isOpAllowedEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(352) %i.ahc, ptr noundef %i.ahb) #16
  br i1 %i.ahd, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ahe = call i8 @_ZN4mlir13bufferization9analyzeOpEPNS_9OperationERNS0_20OneShotAnalysisStateEPNS0_23BufferizationStatisticsE(ptr noundef %i.ahb, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef %2) #16
  %i.ahf = trunc nuw i8 %i.ahe to i1
  br i1 %i.ahf, label %bb.cm, label %.loopexit

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0109, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.ahg, %i.agy
  br i1 %.not41, label %.loopexit, label %bb.ck

.loopexit.sink.split:                             ; preds = %_ZN12_GLOBAL__N_128aliasingFuncOpBBArgsAnalysisEN4mlir4func6FuncOpERNS0_13bufferization20OneShotAnalysisStateERNS3_8func_ext17FuncAnalysisStateE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cl, %bb.cm, %.loopexit.sink.split, %.thread78, %_ZL28getOrCreateFuncAnalysisStateRN4mlir13bufferization20OneShotAnalysisStateE.exit
  %.sroa.038.6 = phi i8 [ 1, %.thread78 ], [ 0, %_ZL28getOrCreateFuncAnalysisStateRN4mlir13bufferization20OneShotAnalysisStateE.exit ], [ 0, %.loopexit.sink.split ], [ 0, %bb.cl ], [ 1, %bb.cm ]
  %i.ahh = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 2 uses
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !230 ; 2 uses
  %i.ahj = icmp eq i32 %i.ahi, 0
  br i1 %i.ahj, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %.loopexit
  %i.ahk = load ptr, ptr %23, align 8, !tbaa !233
  %i.ahl = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !234
  %i.ahn = zext i32 %i.ahi to i64
  %i.aho = add nuw nsw i64 %i.ahn, 31
  %i.ahp = lshr i64 %i.aho, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv.i.i
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !69 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ahr, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ahs = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.cn

bb.cn:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i71
  %.0.i3.i.i = phi i32 [ %i.ahr, %.lr.ph.i.i71 ], [ %i.aij, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.aht = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ahu = or disjoint i32 %i.aht, %i.ahs
  %i.ahv = zext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw [32 x i8], ptr %i.ahk, i64 %i.ahv ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 28
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !235 ; 2 uses
  %i.ahz = icmp eq i32 %i.ahy, 0
  br i1 %i.ahz, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !238
  %i.aic = zext i32 %i.ahy to i64                 ; 2 uses
  %i.aid = shl nuw nsw i64 %i.aic, 3
  %i.aie = add nuw nsw i64 %i.aic, 31
  %i.aif = lshr i64 %i.aie, 3
  %i.aig = and i64 %i.aif, 1073741820
  %i.aih = add nuw nsw i64 %i.aig, %i.aid
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aib, i64 noundef %i.aih, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.co, %bb.cn
  %i.aii = add i32 %.0.i3.i.i, -1
  %i.aij = and i32 %i.aii, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.aij, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.cn, !llvm.loop !239

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i72 = icmp eq i64 %indvars.iv.next.i.i, %i.ahp
  br i1 %.not.i.i.i72, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !240

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.ahh, align 4, !tbaa !230 ; 2 uses
  %i.aik = icmp eq i32 %.pr.i, 0
  br i1 %i.aik, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i
  %i.ail = load ptr, ptr %23, align 8, !tbaa !233
  %i.aim = zext i32 %.pr.i to i64                 ; 2 uses
  %i.ain = shl nuw nsw i64 %i.aim, 5
  %i.aio = add nuw nsw i64 %i.aim, 31
  %i.aip = lshr i64 %i.aio, 3
  %i.aiq = and i64 %i.aip, 1073741820
  %i.air = add nuw nsw i64 %i.aiq, %i.ain
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ail, i64 noundef %i.air, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.ais = load ptr, ptr %22, align 8, !tbaa !8   ; 2 uses
  %i.ait = icmp eq ptr %i.ais, %i.h
  br i1 %i.ait, label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  call void @free(ptr noundef %i.ais) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  %i.aiu = load ptr, ptr %21, align 8, !tbaa !8   ; 2 uses
  %i.aiv = icmp eq ptr %i.aiu, %i.e
  br i1 %i.aiv, label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit73, label %bb.cr

bb.cr:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit
  call void @free(ptr noundef %i.aiu) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit73

_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit73: ; preds = %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  ret i8 %.sroa.038.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i8 0, 2) i8 @_ZL24getFuncOpsOrderedByCallsPN4mlir9OperationERN4llvm15SmallVectorImplINS_4func6FuncOpEEES7_RNS2_8DenseMapIS5_NS2_8DenseSetIS1_NS2_12DenseMapInfoIS1_vEEEENSA_IS5_vEENS2_6detail12DenseMapPairIS5_SC_EEEERNS_21SymbolTableCollectionE(ptr nofree noundef readonly captures(address) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %class.anon.205, align 8            ; 4 uses
  %6 = alloca %"class.llvm::DenseMap.168", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MapVector", align 8   ; 21 uses
  %8 = alloca %"class.mlir::func::FuncOp", align 8 ; 7 uses
  %9 = alloca %class.anon.177, align 8            ; 8 uses
  %10 = alloca %"class.llvm::SmallVector.33", align 8 ; 17 uses
  %11 = alloca %"class.mlir::func::FuncOp", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 13 uses
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = and i32 %i.f, 8388607                    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread149.thread, label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = lshr i32 %i.f, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = lshr i32 %i.f, 21
  %i.n = and i32 %i.m, 2040
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.s ; 2 uses
  %i.u = shl nuw nsw i32 %i.g, 5
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ae = ptrtoint ptr %5 to i64
  br label %.thread140.preheader

.thread140.preheader:                             ; preds = %_ZN4mlir9Operation10getRegionsEv.exit, %.thread140._crit_edge
  %.057175 = phi ptr [ %i.t, %_ZN4mlir9Operation10getRegionsEv.exit ], [ %i.fo, %.thread140._crit_edge ] ; 4 uses
  %.sroa.0125.0.in169 = getelementptr inbounds nuw i8, ptr %.057175, i64 8
  %.sroa.0125.0170 = load ptr, ptr %.sroa.0125.0.in169, align 8, !tbaa !115 ; 2 uses
  %.not156171 = icmp eq ptr %.sroa.0125.0170, %.057175
  br i1 %.not156171, label %.thread140._crit_edge, label %.lr.ph173

.thread140.loopexit:                              ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4func6FuncOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit, %_ZN4mlir5Block6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit
  %.sroa.0125.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0125.0172, i64 8
  %.sroa.0125.0 = load ptr, ptr %.sroa.0125.0.in, align 8, !tbaa !115 ; 2 uses
  %.not156 = icmp eq ptr %.sroa.0125.0, %.057175
  br i1 %.not156, label %.thread140._crit_edge, label %.lr.ph173

.lr.ph173:                                        ; preds = %.thread140.preheader, %.thread140.loopexit
  %.sroa.0125.0172 = phi ptr [ %.sroa.0125.0, %.thread140.loopexit ], [ %.sroa.0125.0170, %.thread140.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0125.0172, i64 32 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0125.0172, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !115, !noalias !241 ; 3 uses
  %.not1.i.i.i.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not1.i.i.i.i.i, label %_ZN4mlir5Block6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph173, %bb.b
  %.sroa.010.0.i = phi ptr [ %i.ao, %bb.b ], [ %i.ah, %.lr.ph173 ] ; 3 uses
  %i.ai = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.010.0.i) #16, !noalias !241
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !244, !noalias !241
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56, !noalias !241
  %i.am = icmp eq ptr %i.al, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  br i1 %i.am, label %_ZN4mlir5Block6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !115, !noalias !241 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.af
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir5Block6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !245

_ZN4mlir5Block6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.b, %.lr.ph173
  %.sroa.010.1.i = phi ptr [ %i.ah, %.lr.ph173 ], [ %.sroa.010.0.i, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.b ] ; 2 uses
  %.not157167 = icmp eq ptr %.sroa.010.1.i, %i.af
  br i1 %.not157167, label %.thread140.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir5Block6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4func6FuncOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit
  %.sroa.0116.0168 = phi ptr [ %.sroa.0116.2, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4func6FuncOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit ], [ %.sroa.010.1.i, %_ZN4mlir5Block6getOpsINS_4func6FuncOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0116.0168) #16 ; 4 uses
  store ptr %i.ap, ptr %8, align 8
  %i.aq = load ptr, ptr %7, align 8, !tbaa !246, !noalias !249 ; 3 uses
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !258, !noalias !249 ; 3 uses
  %i.as = load i32, ptr %i.y, align 4, !tbaa !259, !noalias !249 ; 4 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.au = add i32 %i.as, -1                       ; 2 uses
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = xor i64 %i.av, -49064778989728563       ; 2 uses
  %i.ax = lshr i64 %i.aw, 30
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = mul i64 %i.ay, -4658895280553007687     ; 2 uses
  %i.ba = lshr i64 %i.az, 27
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = mul i64 %i.bb, -7723592293110705685     ; 2 uses
  %i.bd = lshr i64 %i.bc, 31
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = trunc i64 %i.be to i32
end_hunk_0
begin_hunk_1_@_ZN4mlir13bufferization17bufferizeModuleOpEPNS_9OperationERKNS0_27OneShotBufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsE:bb.a
_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE7setTypeENS_4TypeE.exit.i: ; preds = %bb.ab, %._crit_edge49.i
  %i.if = phi ptr [ %i.ie, %bb.ab ], [ null, %._crit_edge49.i ]
  call void @_ZN4mlir23function_interface_impl15setFunctionTypeENS_19FunctionOpInterfaceENS_4TypeE(ptr %.sroa.01.0.copyload.i34.i, ptr %i.if, ptr %i.id) #16
  %i.ig = load ptr, ptr %9, align 8, !tbaa !8     ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.al
  br i1 %i.ih, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE7setTypeENS_4TypeE.exit.i
  call void @free(ptr noundef %i.ig) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i: ; preds = %bb.ac, %_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE7setTypeENS_4TypeE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.ii = load ptr, ptr %8, align 8, !tbaa !8     ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.aq
  br i1 %i.ij, label %_ZN4llvm11SmallVectorIN4mlir4func8ReturnOpELj6EED2Ev.exit36.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @free(ptr noundef %i.ii) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4func8ReturnOpELj6EED2Ev.exit36.i

_ZN4llvm11SmallVectorIN4mlir4func8ReturnOpELj6EED2Ev.exit36.i: ; preds = %bb.ad, %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZL15foldMemRefCastsN4mlir4func6FuncOpE.exit

.lr.ph48.i:                                       ; preds = %bb.af, %.lr.ph48.preheader.i
  %i.ik = phi i32 [ %i.fs, %.lr.ph48.preheader.i ], [ %i.iu, %bb.af ]
  %i.il = phi ptr [ %.pre55.i, %.lr.ph48.preheader.i ], [ %i.iv, %bb.af ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph48.preheader.i ], [ %indvars.iv.next.i, %bb.af ] ; 4 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.i
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !324
  %.not41.i = icmp eq ptr %i.in, null
  br i1 %.not41.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph48.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.io = call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  store ptr %i.io, ptr %11, align 8
  %i.ip = call { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #16
  %i.iq = extractvalue { ptr, i64 } %i.ip, 0
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i37.i = load ptr, ptr %i.ir, align 8, !tbaa !47
  %i.is = load ptr, ptr %9, align 8, !tbaa !8     ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.i
  store ptr %.sroa.0.0.copyload.i37.i, ptr %i.it, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %.pre56.i = load i32, ptr %i.am, align 8, !tbaa !11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph48.i
  %i.iu = phi i32 [ %i.ik, %.lr.ph48.i ], [ %.pre56.i, %bb.ae ] ; 2 uses
  %i.iv = phi ptr [ %i.il, %.lr.ph48.i ], [ %i.is, %bb.ae ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.iw = sext i32 %i.iu to i64
  %i.ix = icmp slt i64 %indvars.iv.next.i, %i.iw
  br i1 %i.ix, label %.lr.ph48.i, label %._crit_edge49.i, !llvm.loop !333

_ZL15foldMemRefCastsN4mlir4func6FuncOpE.exit:     ; preds = %bb.g, %_ZN4llvm11SmallVectorIN4mlir4func8ReturnOpELj6EED2Ev.exit36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.f, %_ZL15foldMemRefCastsN4mlir4func6FuncOpE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.iy = getelementptr inbounds nuw i8, ptr %.059116, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.iy, %i.z
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit114:                                     ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %.loopexit113

._crit_edge:                                      ; preds = %bb.ag, %bb.b
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ja = load i32, ptr %i.iz, align 4            ; 3 uses
  %i.jb = and i32 %i.ja, 8388607                  ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %.thread106, label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %._crit_edge
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.je = lshr i32 %i.ja, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.je, 1
  %i.jf = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %i.jf
  %i.jh = lshr i32 %i.ja, 21
  %i.ji = and i32 %i.jh, 2040
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !28
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %i.jn ; 2 uses
  %i.jp = shl nuw nsw i32 %i.jb, 5
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jq
  br label %.preheader

.preheader:                                       ; preds = %_ZN4mlir9Operation10getRegionsEv.exit, %._crit_edge126
  %.0128 = phi ptr [ %i.kn, %._crit_edge126 ], [ %i.jo, %_ZN4mlir9Operation10getRegionsEv.exit ] ; 4 uses
  %.sroa.074.0.in121 = getelementptr inbounds nuw i8, ptr %.0128, i64 8
  %.sroa.074.0122 = load ptr, ptr %.sroa.074.0.in121, align 8, !tbaa !115 ; 2 uses
  %.not111123 = icmp eq ptr %.sroa.074.0122, %.0128
  br i1 %.not111123, label %._crit_edge126, label %.lr.ph125

.loopexit:                                        ; preds = %bb.al, %.lr.ph125
  %.sroa.074.0.in = getelementptr inbounds nuw i8, ptr %.sroa.074.0124, i64 8
  %.sroa.074.0 = load ptr, ptr %.sroa.074.0.in, align 8, !tbaa !115 ; 2 uses
  %.not111 = icmp eq ptr %.sroa.074.0, %.0128
  br i1 %.not111, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %.preheader, %.loopexit
  %.sroa.074.0124 = phi ptr [ %.sroa.074.0, %.loopexit ], [ %.sroa.074.0122, %.preheader ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.074.0124, i64 32 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.074.0124, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !115 ; 2 uses
  %.not112117 = icmp eq ptr %i.ju, %i.js
  br i1 %.not112117, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph125, %bb.al
  %.sroa.071.0118 = phi ptr [ %i.jw, %bb.al ], [ %i.ju, %.lr.ph125 ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.071.0118, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !115 ; 2 uses
  %i.jx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.071.0118) #16 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i63 = load ptr, ptr %i.jy, align 8, !tbaa !244
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i63, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !56
  %i.kb = icmp eq ptr %i.ka, @_ZN4mlir6detail14TypeIDResolverINS_4func6FuncOpEvE2idE
  br i1 %i.kb, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph120
  %i.kc = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.kd = icmp eq i8 %i.kc, 0
  br i1 %i.kd, label %bb.ai, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, !prof !52

bb.ai:                                            ; preds = %bb.ah
  %i.ke = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #16
  %.not.i.i.i.i.i64 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i.i.i64, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.kf = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.21, i64 49), i64 33) #16
  store ptr %i.kf, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #16
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !53
  %i.kg = load ptr, ptr %i.jy, align 8, !tbaa !334 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !138
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = call noundef zeroext i1 %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr %.sroa.01.0.copyload.i.i.i.i.i) #16, !inline_history !335
  br i1 %i.kk, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit
  %i.kl = call i8 @_ZN4mlir13bufferization11bufferizeOpEPNS_9OperationERKNS0_20BufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsE(ptr noundef nonnull %i.jx, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #16
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.al, label %.loopexit113

bb.al:                                            ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, %bb.ak, %.lr.ph120
  %.not112 = icmp eq ptr %i.jw, %i.js
  br i1 %.not112, label %.loopexit, label %.lr.ph120

._crit_edge126:                                   ; preds = %.loopexit, %.preheader
  %i.kn = getelementptr inbounds nuw i8, ptr %.0128, i64 32 ; 2 uses
  %.not60 = icmp eq ptr %i.kn, %i.jr
  br i1 %.not60, label %.thread106, label %.preheader

.thread106:                                       ; preds = %._crit_edge126, %._crit_edge
  call void @_ZN4mlir13bufferization37removeBufferizationAttributesInModuleEPNS_9OperationE(ptr noundef nonnull %0)
  br label %.loopexit113

.loopexit113:                                     ; preds = %bb.ak, %.loopexit114, %bb.a, %.thread106
  %.sroa.057.12 = phi i8 [ 0, %.loopexit114 ], [ 1, %.thread106 ], [ 0, %bb.a ], [ 0, %bb.ak ]
  %i.ko = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !230 ; 2 uses
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %.loopexit113
  %i.kr = load ptr, ptr %18, align 8, !tbaa !233
  %i.ks = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !234
  %i.ku = zext i32 %i.kp to i64
  %i.kv = add nuw nsw i64 %i.ku, 31
  %i.kw = lshr i64 %i.kv, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i67, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i65 = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i68, %._crit_edge.i.i67 ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv.i.i65
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !69 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.ky, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i67, label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i65 to i32
  %i.kz = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.am

bb.am:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i66
  %.0.i3.i.i = phi i32 [ %i.ky, %.lr.ph.i.i66 ], [ %i.lq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.la = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.lb = or disjoint i32 %i.la, %i.kz
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [32 x i8], ptr %i.kr, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !235 ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !238
  %i.lj = zext i32 %i.lf to i64                   ; 2 uses
  %i.lk = shl nuw nsw i64 %i.lj, 3
  %i.ll = add nuw nsw i64 %i.lj, 31
  %i.lm = lshr i64 %i.ll, 3
  %i.ln = and i64 %i.lm, 1073741820
  %i.lo = add nuw nsw i64 %i.ln, %i.lk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.li, i64 noundef %i.lo, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.an, %bb.am
  %i.lp = add i32 %.0.i3.i.i, -1
  %i.lq = and i32 %i.lp, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.lq, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i67, label %bb.am, !llvm.loop !239

._crit_edge.i.i67:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i68 = add nuw nsw i64 %indvars.iv.i.i65, 1 ; 2 uses
  %.not.i.i.i69 = icmp eq i64 %indvars.iv.next.i.i68, %i.kw
  br i1 %.not.i.i.i69, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !240

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i67
  %.pr.i = load i32, ptr %i.ko, align 4, !tbaa !230 ; 2 uses
  %i.lr = icmp eq i32 %.pr.i, 0
  br i1 %i.lr, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i
  %i.ls = load ptr, ptr %18, align 8, !tbaa !233
  %i.lt = zext i32 %.pr.i to i64                  ; 2 uses
  %i.lu = shl nuw nsw i64 %i.lt, 5
  %i.lv = add nuw nsw i64 %i.lt, 31
  %i.lw = lshr i64 %i.lv, 3
  %i.lx = and i64 %i.lw, 1073741820
  %i.ly = add nuw nsw i64 %i.lx, %i.lu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ls, i64 noundef %i.ly, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %.loopexit113, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.lz = load ptr, ptr %17, align 8, !tbaa !8    ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.h
  br i1 %i.ma, label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit
  call void @free(ptr noundef %i.lz) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.mb = load ptr, ptr %16, align 8, !tbaa !8    ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.e
  br i1 %i.mc, label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit70, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit
  call void @free(ptr noundef %i.mb) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit70

_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit70: ; preds = %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj6EED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  ret i8 %.sroa.057.12
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN4mlir13bufferization18BufferizationState15getSymbolTablesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN4mlir4func6FuncOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir13bufferization11bufferizeOpEPNS_9OperationERKNS0_20BufferizationOptionsERNS0_18BufferizationStateEPNS0_23BufferizationStatisticsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(352), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13bufferization20BufferizationOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !336  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3) #16, !inline_history !337 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !338

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i, %bb.a
  %i.k = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.i
  tail call void @free(ptr noundef %i.k) #16
  br label %_ZN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELb0EE13destroy_rangeEPS7_S9_.exit.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !336  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.q = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef 3) #16, !inline_history !339 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm11SmallVectorISt8functionIFvRN4mlir13bufferization13AnalysisStateEEELj1EED2Ev.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !336  ; 2 uses
  %.not.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.u = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3) #16, !inline_history !339 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !336  ; 2 uses
  %.not.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.y = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3) #16, !inline_history !339 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit4

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit2, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !336 ; 2 uses
  %.not.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ac = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef 3) #16, !inline_history !339 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit6

_ZNSt14_Function_baseD2Ev.exit6:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit4, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !336 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ae, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = tail call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 noundef 3) #16, !inline_history !339 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit8

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit6, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ai, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 3) #16, !inline_history !339 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit10

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit8, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !336 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4mlir13bufferization20OneShotAnalysisState12getExtensionINS0_8func_ext17FuncAnalysisStateEEEPT_v:bb.a
  %i.ac = add nuw i32 %.01419.i.i.i.i, 1
  %i.ad = and i32 %i.ac, %i.l                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !69, !noalias !364
  %i.ai = and i32 %i.ad, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !72

.loopexit.i.i:                                    ; preds = %bb.e, %bb.d, %_ZN4mlir6TypeID3getINS_13bufferization8func_ext17FuncAnalysisStateEEES0_v.exit
  %i.al = zext i32 %i.j to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.al
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.j to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit.loopexit ], [ %i.al, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.aa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit.loopexit ], [ %i.am, %.loopexit.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pre-phi
  %i.ao = icmp eq ptr %.lcssa.sink.i.i, %i.an
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit, %bb.f
  %.0 = phi ptr [ %i.aq, %bb.f ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4findERKS3_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(168) ptr @_ZN4mlir13bufferization20OneShotAnalysisState12addExtensionINS0_8func_ext17FuncAnalysisStateEJEEERT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(544) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.106", align 8 ; 5 uses
  %2 = alloca %"class.mlir::TypeID", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #17, !noalias !367 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !122, !noalias !367
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir13bufferization8func_ext17FuncAnalysisStateE, i64 16), ptr %i.a, align 8, !tbaa !138, !noalias !367
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.c, i8 0, i64 120, i1 false), !noalias !367
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4mlir21SymbolTableCollectionE, i64 16), ptr %i.d, align 8, !tbaa !138, !noalias !367
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !noalias !367
  store ptr %i.a, ptr %1, align 8, !tbaa !370, !alias.scope !367
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization8func_ext17FuncAnalysisStateEvE13resolveTypeIDEvE2id acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZN4mlir6TypeID3getINS_13bufferization8func_ext17FuncAnalysisStateEEES0_v.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization8func_ext17FuncAnalysisStateEvE13resolveTypeIDEvE2id) #16
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN4mlir6TypeID3getINS_13bufferization8func_ext17FuncAnalysisStateEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 49), i64 48) #16
  store ptr %i.j, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization8func_ext17FuncAnalysisStateEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization8func_ext17FuncAnalysisStateEvE13resolveTypeIDEvE2id) #16
  br label %_ZN4mlir6TypeID3getINS_13bufferization8func_ext17FuncAnalysisStateEEES0_v.exit

_ZN4mlir6TypeID3getINS_13bufferization8func_ext17FuncAnalysisStateEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization8func_ext17FuncAnalysisStateEvE13resolveTypeIDEvE2id, align 8, !tbaa !53
  store ptr %.sroa.01.0.copyload.i.i, ptr %2, align 8
  %i.k = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIS3_JS4_INS5_8func_ext17FuncAnalysisStateES8_ISK_EEEEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !372
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.l = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !365
  %i.n = load ptr, ptr %1, align 8, !tbaa !370    ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir13bufferization8func_ext17FuncAnalysisStateESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13bufferization8func_ext17FuncAnalysisStateEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4mlir13bufferization8func_ext17FuncAnalysisStateEEclEPS3_.exit.i: ; preds = %_ZN4mlir6TypeID3getINS_13bufferization8func_ext17FuncAnalysisStateEEES0_v.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(168) %i.n) #16, !inline_history !377
  br label %_ZNSt10unique_ptrIN4mlir13bufferization8func_ext17FuncAnalysisStateESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir13bufferization8func_ext17FuncAnalysisStateESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN4mlir6TypeID3getINS_13bufferization8func_ext17FuncAnalysisStateEEES0_v.exit, %_ZNKSt14default_deleteIN4mlir13bufferization8func_ext17FuncAnalysisStateEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret ptr %i.m
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13bufferization8func_ext17FuncAnalysisStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir13bufferization8func_ext17FuncAnalysisStateE, i64 16), ptr %0, align 8, !tbaa !138
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4mlir21SymbolTableCollectionE, i64 16), ptr %i.a, align 8, !tbaa !138
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.d = load i32, ptr %i.c, align 4, !tbaa !378  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !381
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 4
  %i.j = add nuw nsw i64 %i.h, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 1073741820
  %i.m = add nuw nsw i64 %i.l, %i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !68   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.u = zext i32 %i.r to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 5
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aa) #16
  tail call void @_ZN4mlir13bufferization20OneShotAnalysisState9ExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13bufferization8func_ext17FuncAnalysisStateD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir13bufferization8func_ext17FuncAnalysisStateD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #18
  ret void
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !382  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !385
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !386
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !156  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !387

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !388

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !382  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !385
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !389  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !392
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !393
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !394  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !397
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !398

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !399

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !389  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !392
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4mlir13bufferization20OneShotAnalysisState9ExtensionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !400  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !403
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !404
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !405  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !407  ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNKSt14default_deleteIN4mlir11SymbolTableEEclEPS1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !410
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = add nuw nsw i64 %i.x, 31
  %i.aa = lshr i64 %i.z, 3
  %i.ab = and i64 %i.aa, 1073741820
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.ac, i64 noundef 8) #16
  br label %_ZNKSt14default_deleteIN4mlir11SymbolTableEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir11SymbolTableEEclEPS1_.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 40) #18
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteIN4mlir11SymbolTableEEclEPS1_.exit.i.i.i, %bb.b
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !411

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !412

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !400  ; 2 uses
  %i.af = icmp eq i32 %.pr, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !403
  %i.ah = zext i32 %.pr to i64                    ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPN4mlir9OperationESt10unique_ptrINS1_11SymbolTableESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationESt10unique_ptrINS2_11SymbolTableESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !68   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !89   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !88
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.ac = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i ], [ %i.am, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.ai) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.al = add i32 %.0.i3.i.i.i, -1
  %i.am = and i32 %i.al, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !413

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !414

_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.r, align 4, !tbaa !89 ; 2 uses
  %i.an = icmp eq i32 %.pr.i.i, 0
  br i1 %i.an, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEv.exit.i.i
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !80
  %i.ap = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 72
  %i.ar = add nuw nsw i64 %i.ap, 31
  %i.as = lshr i64 %i.ar, 3
  %i.at = and i64 %i.as, 1073741820
  %i.au = add nuw nsw i64 %i.at, %i.aq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ao, i64 noundef %i.au, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit: ; preds = %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEv.exit.i.i, %bb.e
  %i.av = add i32 %.0.i3, -1
  %i.aw = and i32 %i.av, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !415

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !416

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E24lookupOrInsertIntoBucketIS3_JS4_INS5_8func_ext17FuncAnalysisStateES8_ISK_EEEEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !350, !noalias !417 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !362, !noalias !417 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !363, !noalias !417 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !53 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !69
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.x = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.x, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nuw i32 %.01926.i, 1
  %i.z = and i32 %i.y, %i.h                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !422

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !423
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !424
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.an = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %i.ao = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !423
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !362
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !350
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ap = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ar = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !69
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !69
  %i.bd = load i32, ptr %i.ai, align 8, !tbaa !424
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %1, align 8, !tbaa !53
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bh = load ptr, ptr %2, align 8, !tbaa !370
  store ptr null, ptr %2, align 8, !tbaa !370
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !425
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E22findBucketForInsertionIS3_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E15LookupBucketForIS3_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !350, !noalias !427 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !362, !noalias !427 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !363, !noalias !427 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !53 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !69
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.w = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.w, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.x = add nuw i32 %.01926, 1
  %i.y = and i32 %i.x, %i.g                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !69
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !422

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.w, %bb.c ], [ %i.w, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !423
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.21", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !363
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !350
  store ptr %i.y, ptr %i.q, align 8, !tbaa !362
  store i32 0, ptr %i.p, align 16, !tbaa !424
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !423    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !432 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store ptr %i.z, ptr %2, align 16, !tbaa !423
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !280
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !432
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !69
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !69
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !365 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4mlir13bufferization20OneShotAnalysisState9ExtensionEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir13bufferization20OneShotAnalysisState9ExtensionEEclEPS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !138
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #16, !inline_history !433
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir13bufferization20OneShotAnalysisState9ExtensionEEclEPS3_.exit.i.i.i.i, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !434

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !435

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !363 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !350
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !350    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !362
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !363  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !362  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !350
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !363
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, !llvm.loop !436

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !365
  store i64 %i.av, ptr %i.at, align 8, !tbaa !365
  store ptr null, ptr %i.au, align 8, !tbaa !365
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !69
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !437

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !438

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !363
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !424
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !424
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS5_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteISA_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !439  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !442
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !443
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.s) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !444  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !447
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i.i
  %i.af = add i32 %.0.i3.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !448

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !449

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !439  ; 2 uses
  %i.ah = icmp eq i32 %.pr, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEv.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !442
  %i.aj = zext i32 %.pr to i64                    ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 48
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !246, !noalias !450 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258, !noalias !450 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !259, !noalias !450 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = xor i64 %i.i, -49064778989728563         ; 2 uses
  %i.k = lshr i64 %i.j, 30
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7723592293110705685       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.h, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !69
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.ah, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.af, %bb.c ], [ %i.t, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8
  %i.ad = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !261

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !455
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !262
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !455
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !258
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !246
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !69
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !262
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 0, ptr %i.bm, align 8, !tbaa !69
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !246, !noalias !456 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !258, !noalias !456 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !259, !noalias !456 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.g, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !261

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !455
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.170", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !259
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !246
  store ptr %i.y, ptr %i.q, align 8, !tbaa !258
  store i32 0, ptr %i.p, align 16, !tbaa !262
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !280
  %i.aa = load ptr, ptr %0, align 8, !tbaa !455
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !280
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !280
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !69
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !69
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !246
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !258
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !259  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !258  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !246
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !259
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = xor i64 %i.v, -49064778989728563         ; 2 uses
  %i.x = lshr i64 %i.w, 30
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7723592293110705685     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !461

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !69
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !69
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !69
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !69
  %i.bf = add i32 %.0.i17, -1
  %i.bg = and i32 %i.bf, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !462

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !463

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !259
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !262
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !262
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !246
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir4func6FuncOpEjELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESB_IJEEEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !120
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %.not.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir4func6FuncOpEjELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.d, i32 0)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir4func6FuncOpEjELb1EE9push_backES5_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 2 uses
  store ptr %i.d, ptr %i.k, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.l = load i32, ptr %i.e, align 8, !tbaa !11
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir4func6FuncOpEjELb1EE9push_backES5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir4func6FuncOpEjELb1EE9push_backES5_.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.m, %bb.c ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !8
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  ret ptr %i.r
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN4mlir4func6FuncOpEjELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #16, !inline_history !464
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #16 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !115 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !115 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSE_bEOT_DpOT0_:bb.a

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !515

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !516
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !517
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E22findBucketForInsertionIS4_EEPSE_RKT_SI_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !516
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !234
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !233
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E22findBucketForInsertionIS4_EEPSE_RKT_SI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E22findBucketForInsertionIS4_EEPSE_RKT_SI_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !69
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !517
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E22findBucketForInsertionIS4_EEPSE_RKT_SI_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E22findBucketForInsertionIS4_EEPSE_RKT_SI_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E22findBucketForInsertionIS4_EEPSE_RKT_SI_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E15LookupBucketForIS4_EEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233, !noalias !518 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !234, !noalias !518 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !230, !noalias !518 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.g, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !515

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !516
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.38", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !230
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !233
  store ptr %i.y, ptr %i.q, align 8, !tbaa !234
  store i32 0, ptr %i.p, align 16, !tbaa !517
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !516    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !432 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store ptr %i.z, ptr %2, align 16, !tbaa !516
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !280
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !432
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !69
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !69
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !235 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !238
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !239

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !240

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !230 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !233
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !230  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !234  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !233
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !230
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = xor i64 %i.v, -49064778989728563         ; 2 uses
  %i.x = lshr i64 %i.w, 30
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7723592293110705685     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !523

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !280
  store <2 x ptr> %i.bb, ptr %i.ay, align 8, !tbaa !280
  store ptr null, ptr %i.az, align 8, !tbaa !524
  store ptr null, ptr %i.ba, align 8, !tbaa !432
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !69
  store i32 0, ptr %i.bd, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !69
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !69
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !69
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !69
  %i.bj = shl nuw i32 1, %.lcssa.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !69
  %i.bm = or i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !69
  %i.bn = load i32, ptr %i.bg, align 4, !tbaa !235 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bp = zext i32 %i.bn to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.bu, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bv = add i32 %.0.i19, -1
  %i.bw = and i32 %i.bv, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !525

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS2_9OperationENS_12DenseMapInfoIS7_vEEEENS8_IS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !526

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !230
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bx = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !517
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !517
  %i.cb = icmp eq i32 %i.bx, 0
  br i1 %i.cb, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.cc = load ptr, ptr %1, align 8, !tbaa !233
  %i.cd = zext i32 %i.bx to i64                   ; 2 uses
  %i.ce = shl nuw nsw i64 %i.cd, 5
  %i.cf = add nuw nsw i64 %i.cd, 31
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = and i64 %i.cg, 1073741820
  %i.ci = add nuw nsw i64 %i.ch, %i.ce
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cc, i64 noundef %i.ci, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !230
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS1_9OperationENS_12DenseMapInfoIS6_vEEEENS7_IS3_vEENS_6detail12DenseMapPairIS3_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIPNS5_9OperationENS_12DenseMapInfoISA_vEEEENSB_IS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !238, !noalias !527 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !532, !noalias !527 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !235, !noalias !527 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !468    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !69
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !468
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !69
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !533

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !524
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !534
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !524
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !532
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !238
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !69
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !69
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !534
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !468
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !468
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !238, !noalias !535 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !532, !noalias !535 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !235, !noalias !535 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !468    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !69
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !468
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !533

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !524
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.234", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !235
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !238
  store ptr %i.y, ptr %i.q, align 8, !tbaa !532
  store i32 0, ptr %i.p, align 16, !tbaa !534
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !280
  %i.aa = load ptr, ptr %0, align 8, !tbaa !524
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !280
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !280
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !69
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !69
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !238    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !532
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !235  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !532  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !238
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !235
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !468  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !69 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !540

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !468
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !69
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !541

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !542

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !235
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !534
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !534
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !447, !noalias !543 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !548, !noalias !543 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !444, !noalias !543 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = xor i64 %i.i, -49064778989728563         ; 2 uses
  %i.k = lshr i64 %i.j, 30
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7723592293110705685       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.h, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !69
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.ah, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.af, %bb.c ], [ %i.t, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8
  %i.ad = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !549

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !550
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !551
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !550
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !548
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !447
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !69
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !551
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !447, !noalias !552 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !548, !noalias !552 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !444, !noalias !552 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.g, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !549

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !550
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.183", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !444
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !447
  store ptr %i.y, ptr %i.q, align 8, !tbaa !548
  store i32 0, ptr %i.p, align 16, !tbaa !551
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !280
  %i.aa = load ptr, ptr %0, align 8, !tbaa !550
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !280
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !280
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !69
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !69
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !447
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !548
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !444  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !548  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !447
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !444
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = xor i64 %i.v, -49064778989728563         ; 2 uses
  %i.x = lshr i64 %i.w, 30
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7723592293110705685     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !557

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa12.i
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = shl nuw i32 1, %.lcssa.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !69
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !69
  %i.bc = add i32 %.0.i16, -1
  %i.bd = and i32 %i.bc, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !558

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !559

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !444
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.be = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !551
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !551
  %i.bi = icmp eq i32 %i.be, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bj = load ptr, ptr %1, align 8, !tbaa !447
  %i.bk = zext i32 %i.be to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4func6FuncOpELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSF_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !442, !noalias !560 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !443, !noalias !560 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !439, !noalias !560 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = xor i64 %i.i, -49064778989728563         ; 2 uses
  %i.k = lshr i64 %i.j, 30
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7723592293110705685       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.h, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !69
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.ah, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.af, %bb.c ], [ %i.t, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8
  %i.ad = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !565

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !566
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !567
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !566
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !443
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !442
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 8 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 48                ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !69
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !567
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i32 0, ptr %i.bp, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  store i32 0, ptr %i.bq, align 4, !tbaa !12
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E15LookupBucketForIS4_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E22findBucketForInsertionIS4_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E15LookupBucketForIS4_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !442, !noalias !568 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !443, !noalias !568 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !439, !noalias !568 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.g, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !565

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !566
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.168", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !439
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 48                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !442
  store ptr %i.y, ptr %i.q, align 8, !tbaa !443
  store i32 0, ptr %i.p, align 16, !tbaa !567
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !280
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !280
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !280
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !69
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !69
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !69
  call void @_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !442
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !443
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !439  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !443  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !442
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !439
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i19 = icmp eq i32 %i.p, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.p, %.lr.ph ], [ %i.cr, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.t ; 12 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = xor i64 %i.v, -49064778989728563         ; 2 uses
  %i.x = lshr i64 %i.w, 30
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7723592293110705685     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !573

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.lcssa12.i ; 9 uses
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !280
  store <2 x ptr> %i.bb, ptr %i.ay, align 8, !tbaa !280
  store ptr null, ptr %i.az, align 8, !tbaa !550
  store ptr null, ptr %i.ba, align 8, !tbaa !432
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !69
  store i32 0, ptr %i.bd, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !69
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !69
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !69
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 3 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 44 ; 2 uses
  store i32 0, ptr %i.bm, align 4, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !11 ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.bq = icmp eq ptr %i.ax, %i.u
  br i1 %i.bq, label %_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !8  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt4moveIPN4mlir4func6FuncOpES3_ET0_T_S5_S4_.exit34.i, label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE12assignRemoteEOS4_.exit.i: ; preds = %bb.d
  store ptr %i.br, ptr %i.bj, align 8, !tbaa !8
  store i32 %i.bo, ptr %i.bl, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12
  store i32 %i.bv, ptr %i.bm, align 4, !tbaa !12
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !8
  store i32 0, ptr %i.bu, align 4, !tbaa !12
  br label %_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i.sink.split

_ZSt4moveIPN4mlir4func6FuncOpES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.d
  %i.bw = zext i32 %i.bo to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull %i.bk, i64 noundef %i.bw, i64 noundef 8) #16
  %.pre = load i32, ptr %i.bn, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4func6FuncOpELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt4moveIPN4mlir4func6FuncOpES3_ET0_T_S5_S4_.exit34.i
  %.pre29 = zext i32 %.pre to i64
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !8
  %gepdiff.i = shl nuw nsw i64 %.pre29, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 8 %i.bx, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4func6FuncOpELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4func6FuncOpELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %bb.e, %_ZSt4moveIPN4mlir4func6FuncOpES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.bo, ptr %i.bl, align 8, !tbaa !11
  br label %_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i.sink.split

_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE12assignRemoteEOS4_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4func6FuncOpELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i
  store i32 0, ptr %i.bn, align 8, !tbaa !11
  br label %_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i

_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i: ; preds = %_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bz = shl nuw i32 1, %.lcssa.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !69
  %i.cc = or i32 %i.cb, %i.bz
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i
  tail call void @free(ptr noundef %i.ce) #16
  br label %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i: ; preds = %bb.f, %_ZN4llvm9SetVectorIN4mlir4func6FuncOpENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEC2EOSA_.exit.i
  %i.ch = load i32, ptr %i.bg, align 4, !tbaa !444 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E8moveFromERSG_ENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i
  %i.cj = load ptr, ptr %i.az, align 8, !tbaa !447
  %i.ck = zext i32 %i.ch to i64                   ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.ck, 31
  %i.cn = lshr i64 %i.cm, 3
  %i.co = and i64 %i.cn, 1073741820
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cj, i64 noundef %i.cp, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E8moveFromERSG_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4func6FuncOpELj0EED2Ev.exit.i.i, %bb.g
  %i.cq = add i32 %.0.i20, -1
  %i.cr = and i32 %i.cq, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cr, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !574

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS4_NS_11SmallVectorIS4_Lj0EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj0EEESA_NS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SA_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !575

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre28 = load i32, ptr %i.d, align 4, !tbaa !439
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cs = phi i32 [ %.pre28, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !567
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !567
  %i.cw = icmp eq i32 %i.cs, 0
  br i1 %i.cw, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.cx = load ptr, ptr %1, align 8, !tbaa !442
  %i.cy = zext i32 %i.cs to i64                   ; 2 uses
  %i.cz = mul nuw nsw i64 %i.cy, 48
  %i.da = add nuw nsw i64 %i.cy, 31
  %i.db = lshr i64 %i.da, 3
  %i.dc = and i64 %i.db, 1073741820
  %i.dd = add nuw nsw i64 %i.dc, %i.cz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cx, i64 noundef %i.dd, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS3_NS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEES9_NS_6detail12DenseMapPairIS3_SB_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_9SetVectorIS7_NS_11SmallVectorIS7_Lj0EEENS_8DenseSetIS7_NS_12DenseMapInfoIS7_vEEEELj0EEESD_NS_6detail12DenseMapPairIS7_SF_EEEES7_SF_SD_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

end_hunk_3
begin_hunk_4_@"_ZZN12_GLOBAL__N_128aliasingFuncOpBBArgsAnalysisEN4mlir4func6FuncOpERNS0_13bufferization20OneShotAnalysisStateERNS3_8func_ext17FuncAnalysisStateEENK3$_0clERNS0_9OpOperandE":bb.a
  %.not.i12.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i12.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit.i, label %bb.v, !prof !124

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.co, i64 68
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !125
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit.i

_ZN4mlir9Operation14getNumOperandsEv.exit.i:      ; preds = %bb.v, %bb.u
  %i.ey = phi i32 [ %i.ex, %bb.v ], [ 0, %bb.u ]  ; 3 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = load i32, ptr %i.cq, align 8, !tbaa !11 ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = add nuw nsw i64 %i.fb, %i.ez            ; 2 uses
  %i.fd = load i32, ptr %i.cr, align 4, !tbaa !12
  %i.fe = zext i32 %i.fd to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.fc, %i.fe
  br i1 %.not.i.i.i.i, label %bb.w, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i, !prof !124

bb.w:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.cp, i64 noundef %i.fc, i64 noundef 8) #16
  %.pre.i.i = load i32, ptr %i.cq, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i: ; preds = %bb.w, %_ZN4mlir9Operation14getNumOperandsEv.exit.i
  %i.ff = phi i32 [ %i.fa, %_ZN4mlir9Operation14getNumOperandsEv.exit.i ], [ %.pre.i.i, %bb.w ] ; 2 uses
  %i.fg = icmp eq i32 %i.ey, 0
  br i1 %i.fg, label %_ZN4llvm15SmallVectorImplIlE6appendEml.exit.i, label %_ZN4llvm15SmallVectorImplIlE6appendEml.exit.loopexit.i

_ZN4llvm15SmallVectorImplIlE6appendEml.exit.loopexit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i
  %i.fh = zext i32 %i.ff to i64
  %i.fi = load ptr, ptr %4, align 8, !tbaa !8
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ez, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fj, i8 -1, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !91
  br label %_ZN4llvm15SmallVectorImplIlE6appendEml.exit.i

_ZN4llvm15SmallVectorImplIlE6appendEml.exit.i:    ; preds = %_ZN4llvm15SmallVectorImplIlE6appendEml.exit.loopexit.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE28reserveForParamAndGetAddressERlm.exit.i.i
  %i.fk = add i32 %i.ff, %i.ey
  store i32 %i.fk, ptr %i.cq, align 8, !tbaa !11
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm15SmallVectorImplIlE6appendEml.exit.i, %_ZN4llvm11SmallVectorIlLj4EED2Ev.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !128
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %i.fp = zext i32 %i.fo to i64
  %i.fq = load ptr, ptr %4, align 8, !tbaa !8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp
  store i64 %i.fn, ptr %i.fr, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.ft = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs) #16
  store ptr %i.ft, ptr %7, align 8, !tbaa !210
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i8 0, i64 24, i1 false)
  %i.fv = load ptr, ptr %4, align 8, !tbaa !8
  %i.fw = load i32, ptr %i.cq, align 8, !tbaa !11
  %i.fx = zext i32 %i.fw to i64
  %i.fy = call ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr %i.fv, i64 %i.fx) #16
  %i.fz = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 5, ptr %i.ga, align 8, !tbaa !104
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.gb, align 1, !tbaa !100
  store ptr @.str.7, ptr %2, align 8, !tbaa !103
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 24, ptr %i.gc, align 8, !tbaa !103
  %i.gd = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.fz, ptr noundef nonnull align 8 dereferenceable(34) %2) #16
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr %i.gd, ptr %i.fy)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ge = load ptr, ptr %4, align 8, !tbaa !8     ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.cp
  br i1 %i.gf, label %_ZN12_GLOBAL__N_129annotateEquivalentReturnBbArgERN4mlir9OpOperandENS0_13BlockArgumentE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ge) #16
  br label %_ZN12_GLOBAL__N_129annotateEquivalentReturnBbArgERN4mlir9OpOperandENS0_13BlockArgumentE.exit

_ZN12_GLOBAL__N_129annotateEquivalentReturnBbArgERN4mlir9OpOperandENS0_13BlockArgumentE.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.critedge

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_129annotateEquivalentReturnBbArgERN4mlir9OpOperandENS0_13BlockArgumentE.exit, %bb.k
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !128
  %i.gi = and i64 %i.gh, 4294967295
  br label %.critedge15

_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit36.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i31, %bb.i, %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit36, %bb.j
  %i.gj = getelementptr inbounds nuw i8, ptr %.01348, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gj, %i.az
  br i1 %.not, label %.critedge15, label %bb.f

.critedge15:                                      ; preds = %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit36.thread, %bb.e, %_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE12getArgumentsEv.exit, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.d, %.critedge, %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit
  %.sroa.043.1 = phi i64 [ undef, %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit ], [ %i.gi, %.critedge ], [ undef, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ], [ undef, %bb.d ], [ undef, %_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE12getArgumentsEv.exit ], [ undef, %bb.e ], [ undef, %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit36.thread ]
  %.sroa.2.0 = phi i8 [ 0, %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit ], [ 1, %.critedge ], [ 0, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i ], [ 0, %bb.d ], [ 0, %_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE12getArgumentsEv.exit ], [ 0, %bb.e ], [ 0, %_ZN4llvm3isaIJN4mlir13bufferization14TensorLikeTypeEENS1_4TypeEEEbRKT0_.exit36.thread ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.043.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.25", align 16 ; 11 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !59
  store ptr %i.y, ptr %i.q, align 8, !tbaa !67
  store i32 0, ptr %i.p, align 16, !tbaa !74
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !280
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !280
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !280
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !69
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !69
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !69
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !68  ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !59
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEENS7_IS4_vEENSA_IS4_SC_EEEES4_SC_SD_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !68   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !68
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.i
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bo, %._crit_edge.i ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = xor i64 %i.v, -49064778989728563         ; 2 uses
  %i.x = lshr i64 %i.w, 30
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7723592293110705685     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !609

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !280
  store <2 x ptr> %i.bb, ptr %i.ay, align 8, !tbaa !280
  store ptr null, ptr %i.az, align 8, !tbaa !610
  store ptr null, ptr %i.ba, align 8, !tbaa !432
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !69
  store i32 0, ptr %i.bd, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !69
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !69
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !69
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !69
  %i.bj = shl nuw i32 1, %.lcssa.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !69
  %i.bm = or i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !69
  %i.bn = add i32 %.0.i19, -1
  %i.bo = and i32 %i.bn, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !611

._crit_edge:                                      ; preds = %._crit_edge.i, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !612

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !68
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !74
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !74
  %i.bt = icmp eq i32 %i.bp, 0
  br i1 %i.bt, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !59
  %i.bv = zext i32 %i.bp to i64                   ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 5
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS5_EEEENS6_IS3_vEENS9_IS3_SB_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS9_EEEENSA_IS7_vEENSD_IS7_SF_EEEES7_SF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.142", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 72                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !80
  store ptr %i.y, ptr %i.q, align 8, !tbaa !88
  store i32 0, ptr %i.p, align 16, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !610    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !432 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store ptr %i.z, ptr %2, align 16, !tbaa !610
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !280
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !432
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !69
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !69
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !8  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !413

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !414

_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !89 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !80
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 72
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit

_ZN4llvm8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !89   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !91   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = mul i32 %i.w, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.x, %bb.b ], [ %i.af, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.y = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69
  %i.ac = and i32 %.0.i7, 31                      ; 2 uses
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  %i.af = add i32 %.0.i7, 1
  br i1 %i.ae, label %bb.c, label %bb.d, !llvm.loop !613

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z ; 2 uses
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.y ; 6 uses
  store i64 %i.v, ptr %i.ah, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 2 uses
  store i32 6, ptr %i.al, align 4, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !11 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ap = icmp eq ptr %i.ah, %i.u
  br i1 %i.ap, label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !8  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit.i

_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit.i: ; preds = %bb.f
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !8
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  store i32 %i.au, ptr %i.al, align 4, !tbaa !12
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !8
  store i32 0, ptr %i.at, align 4, !tbaa !12
  br label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.sink.split

bb.g:                                             ; preds = %bb.f
  %i.av = zext i32 %i.an to i64                   ; 2 uses
  %i.aw = icmp ugt i32 %i.an, 6
  br i1 %i.aw, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i.thread

_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i:             ; preds = %bb.g
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull %i.aj, i64 noundef %i.av, i64 noundef 8) #16
  %.pre = load i32, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %.pre27 = zext i32 %.pre to i64
  %.not.i.i.i10 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit.i, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i.thread

_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i.thread:      ; preds = %bb.g, %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i
  %.pre-phi38 = phi i64 [ %.pre27, %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i ], [ %i.av, %bb.g ]
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !8
  %gepdiff.i = shl nuw nsw i64 %.pre-phi38, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 8 %i.ax, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit.i: ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i.thread, %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34.i
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !11
  br label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.sink.split

_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit.i
  store i32 0, ptr %i.am, align 8, !tbaa !11
  br label %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i:       ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.sink.split, %bb.e, %bb.d
  %i.az = shl nuw i32 1, %i.ac
  %i.ba = load i32, ptr %i.ag, align 4, !tbaa !69
  %i.bb = or i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.ag, align 4, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i
  tail call void @free(ptr noundef %i.bd) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i, %bb.h
  %i.bg = add i32 %.0.i18, -1
  %i.bh = and i32 %i.bg, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !614

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS3_EEEElS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !615

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !89
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bi = phi i32 [ %.pre26, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !93
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %_ZN4llvm8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEE4killEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bn = load ptr, ptr %1, align 8, !tbaa !80
  %i.bo = zext i32 %i.bi to i64                   ; 2 uses
  %i.bp = mul nuw nsw i64 %i.bo, 72
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEE4killEv.exit

_ZN4llvm8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_11SmallVectorIlLj6EEENS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIlS6_EEEElS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #16
  %.pre = load ptr, ptr %1, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !69
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !69
  store ptr %i.c, ptr %1, align 8, !tbaa !8
  store i32 0, ptr %i.k, align 4, !tbaa !12
  store i32 0, ptr %i.j, align 8, !tbaa !11
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !11   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !11   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !616

end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E24lookupOrInsertIntoBucketIRKlJEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !639
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !159
  %i.ah = shl i32 %i.ag, 2
  %i.ai = add i32 %i.ah, 4
  %i.aj = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E22findBucketForInsertionIlEEPS7_RKT_SB_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.ak = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ak)
  %i.al = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E15LookupBucketForIlEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !639
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !155
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !141
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E22findBucketForInsertionIlEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E22findBucketForInsertionIlEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.am = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.an = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ao = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = lshr i64 %i.as, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !69
  %i.az = or i32 %i.av, %i.ay
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !69
  %i.ba = load i32, ptr %i.af, align 8, !tbaa !159
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.af, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = load i64, ptr %1, align 8, !tbaa !91
  store i64 %i.bc, ptr %i.ao, align 8, !tbaa !91
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E15LookupBucketForIlEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E15LookupBucketForIlEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E22findBucketForInsertionIlEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E22findBucketForInsertionIlEEPS7_RKT_SB_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E22findBucketForInsertionIlEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E15LookupBucketForIlEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141, !noalias !640 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155, !noalias !640 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !156, !noalias !640 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = mul i32 %i.i, 37
  %.024 = and i32 %i.j, %i.g                      ; 3 uses
  %i.k = zext i32 %.024 to i64                    ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !69
  %i.p = and i32 %.024, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph, label %.thread, !prof !70

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw i32 %.025, 1
  %.0 = and i32 %i.s, %i.g                        ; 3 uses
  %i.t = zext i32 %.0 to i64                      ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %.0, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !158

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !91
  %i.ad = icmp eq i64 %i.h, %i.ac                 ; 3 uses
  br i1 %i.ad, label %.thread, label %bb.c, !prof !71

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ad, %bb.c ], [ %i.ad, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !639
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.136", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !156
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !141
  store ptr %i.y, ptr %i.q, align 8, !tbaa !155
  store i32 0, ptr %i.p, align 16, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !280
  %i.aa = load ptr, ptr %0, align 8, !tbaa !639
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !280
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !280
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !69
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !69
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS1_12DenseSetPairIlEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS1_12DenseSetPairIlEEED2Ev.exit

_ZN4llvm8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS1_12DenseSetPairIlEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !141    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !156  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !156
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !91   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = mul i32 %i.w, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.x, %bb.b ], [ %i.af, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.y = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69 ; 2 uses
  %i.ac = and i32 %.0.i7, 31                      ; 2 uses
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  %i.af = add i32 %.0.i7, 1
  br i1 %i.ae, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !645

_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.y
  store i64 %i.v, ptr %i.ah, align 8, !tbaa !91
  %i.ai = shl nuw i32 1, %i.ac
  %i.aj = or i32 %i.ai, %i.ab
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !69
  %i.ak = add i32 %.0.i17, -1
  %i.al = and i32 %i.ak, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !646

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !647

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !156
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !159
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !159
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS1_12DenseSetPairIlEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.aw, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS1_12DenseSetPairIlEEE4killEv.exit

_ZN4llvm8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS1_12DenseSetPairIlEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS5_12DenseSetPairIlEEEElS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare ptr @_ZN4mlir7Builder15getI64ArrayAttrEN4llvm8ArrayRefIlEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %4 = alloca %"class.mlir::NamedAttrList", align 8 ; 7 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp ult i32 %i.b, 16777216
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #16 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.d, i64 %i.e) #16
  %i.g = extractvalue { ptr, i8 } %i.f, 1
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.06.0.copyload = load ptr, ptr %3, align 8
  call void @_ZN4mlir9Operation15setInherentAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.sroa.06.0.copyload, ptr %2) #16
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.i, align 8
  call void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.04.0.copyload) #16
  %.sroa.03.0.copyload = load ptr, ptr %3, align 8
  %i.j = call ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr %.sroa.03.0.copyload, ptr %2) #16
  %.not10 = icmp eq ptr %i.j, %2
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #16
  %i.m = call ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %i.l) #16
  store ptr %i.m, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %4, align 8, !tbaa !8      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4mlir13NamedAttrListD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.n) #16
  br label %_ZN4mlir13NamedAttrListD2Ev.exit

_ZN4mlir13NamedAttrListD2Ev.exit:                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.h

bb.h:                                             ; preds = %_ZN4mlir13NamedAttrListD2Ev.exit, %bb.c
  ret void
}

declare ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare void @_ZN4mlir9Operation15setInherentAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64), ptr, ptr) local_unnamed_addr #2

declare void @_ZN4mlir13NamedAttrListC1ENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(88), ptr) unnamed_addr #2

declare ptr @_ZN4mlir13NamedAttrList3setENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(88), ptr, ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !392, !noalias !648 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !393, !noalias !648 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !389, !noalias !648 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = xor i64 %i.i, -49064778989728563         ; 2 uses
  %i.k = lshr i64 %i.j, 30
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7723592293110705685       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.h, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !69
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.ah, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.af, %bb.c ], [ %i.t, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8
  %i.ad = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !653

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !654
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !655
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !654
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !393
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !392
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !69
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !655
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !392, !noalias !656 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !393, !noalias !656 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !389, !noalias !656 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.g, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !653

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !654
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.23", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !389
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !392
  store ptr %i.y, ptr %i.q, align 8, !tbaa !393
  store i32 0, ptr %i.p, align 16, !tbaa !655
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !654    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !432 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store ptr %i.z, ptr %2, align 16, !tbaa !654
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !280
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !432
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !69
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !69
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !394 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !397
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !398

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !399

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !389 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !392
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !392
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !393
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !389  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !393  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !392
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !389
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = xor i64 %i.v, -49064778989728563         ; 2 uses
  %i.x = lshr i64 %i.w, 30
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7723592293110705685     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !661

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !280
  store <2 x ptr> %i.bb, ptr %i.ay, align 8, !tbaa !280
  store ptr null, ptr %i.az, align 8, !tbaa !662
  store ptr null, ptr %i.ba, align 8, !tbaa !432
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !69
  store i32 0, ptr %i.bd, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !69
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !69
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !69
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !69
  %i.bj = shl nuw i32 1, %.lcssa.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !69
  %i.bm = or i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !69
  %i.bn = load i32, ptr %i.bg, align 4, !tbaa !394 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bp = zext i32 %i.bn to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.bu, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bv = add i32 %.0.i19, -1
  %i.bw = and i32 %i.bv, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !663

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS1_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS5_IS4_vEENS8_IS4_SA_EEEES4_SA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !664

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !389
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bx = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !655
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !655
  %i.cb = icmp eq i32 %i.bx, 0
  br i1 %i.cb, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.cc = load ptr, ptr %1, align 8, !tbaa !392
  %i.cd = zext i32 %i.bx to i64                   ; 2 uses
  %i.ce = shl nuw nsw i64 %i.cd, 5
  %i.cf = add nuw nsw i64 %i.cd, 31
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = and i64 %i.cg, 1073741820
  %i.ci = add nuw nsw i64 %i.ch, %i.ce
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cc, i64 noundef %i.ci, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !389
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS0_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS4_IS3_vEENS7_IS3_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS4_IllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEENS8_IS7_vEENSB_IS7_SD_EEEES7_SD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E24lookupOrInsertIntoBucketIRKlJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !397, !noalias !665 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !670, !noalias !665 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !394, !noalias !665 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = mul i32 %i.j, 37
  %.024.i = and i32 %i.k, %i.h                    ; 3 uses
  %i.l = zext i32 %.024.i to i64                  ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = lshr i64 %i.l, 5
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69
  %i.q = and i32 %.024.i, 31
  %i.r = lshr i32 %i.p, %i.q
  %i.s = trunc i32 %i.r to i1
  br i1 %i.s, label %.lr.ph.i, label %.loopexit, !prof !70

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.t, %i.h                      ; 3 uses
  %i.u = zext i32 %.0.i to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !69
  %i.z = and i32 %.0.i, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !671

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.v, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !91
  %i.ae = icmp eq i64 %i.i, %i.ad
  br i1 %i.ae, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E15LookupBucketForIlEEbRKT_RPS6_.exit, label %bb.c, !prof !71

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !662
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !672
  %i.ah = shl i32 %i.ag, 2
  %i.ai = add i32 %i.ah, 4
  %i.aj = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E22findBucketForInsertionIlEEPS6_RKT_SA_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.ak = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ak)
  %i.al = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E15LookupBucketForIlEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !662
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !670
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !397
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E22findBucketForInsertionIlEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E22findBucketForInsertionIlEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.am = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.an = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ao = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 4                 ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 31
  %i.av = shl nuw i32 1, %i.au
  %i.aw = lshr i64 %i.as, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !69
  %i.az = or i32 %i.av, %i.ay
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !69
  %i.ba = load i32, ptr %i.af, align 8, !tbaa !672
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.af, align 8, !tbaa !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = load i64, ptr %1, align 8, !tbaa !91
  store i64 %i.bc, ptr %i.ao, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !91
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E15LookupBucketForIlEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E15LookupBucketForIlEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E22findBucketForInsertionIlEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.ao, %_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E22findBucketForInsertionIlEEPS6_RKT_SA_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E22findBucketForInsertionIlEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E15LookupBucketForIlEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !397, !noalias !673 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !670, !noalias !673 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394, !noalias !673 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !91     ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = mul i32 %i.i, 37
  %.024 = and i32 %i.j, %i.g                      ; 3 uses
  %i.k = zext i32 %.024 to i64                    ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !69
  %i.p = and i32 %.024, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph, label %.thread, !prof !70

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw i32 %.025, 1
  %.0 = and i32 %i.s, %i.g                        ; 3 uses
  %i.t = zext i32 %.0 to i64                      ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %.0, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !91
  %i.ad = icmp eq i64 %i.h, %i.ac                 ; 3 uses
  br i1 %i.ad, label %.thread, label %bb.c, !prof !71

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ad, %bb.c ], [ %i.ad, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !662
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.157", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !394
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !397
  store ptr %i.y, ptr %i.q, align 8, !tbaa !670
  store i32 0, ptr %i.p, align 16, !tbaa !672
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !280
  %i.aa = load ptr, ptr %0, align 8, !tbaa !662
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !280
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !280
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !69
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !69
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit

_ZN4llvm8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !397    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !670
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !670  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !397
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !394
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !91   ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = mul i32 %i.w, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.x, %bb.b ], [ %i.af, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.y = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69 ; 2 uses
  %i.ac = and i32 %.0.i7, 31                      ; 2 uses
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  %i.af = add i32 %.0.i7, 1
  br i1 %i.ae, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !678

_ZZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.z
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.y ; 2 uses
  store i64 %i.v, ptr %i.ah, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !91
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !91
  %i.al = shl nuw i32 1, %i.ac
  %i.am = or i32 %i.al, %i.ab
  store i32 %i.am, ptr %i.ag, align 4, !tbaa !69
  %i.an = add i32 %.0.i17, -1
  %i.ao = and i32 %i.an, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !679

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !680

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !394
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !672
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !672
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !394
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEE4killEv.exit

_ZN4llvm8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIllNS_12DenseMapInfoIlvEENS_6detail12DenseMapPairIllEEEEllS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare noundef i32 @_ZNK4mlir12FunctionType12getNumInputsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir13bufferization13AnalysisState11isValueReadENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir13bufferization20OneShotAnalysisState14isValueWrittenENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(544), ptr) local_unnamed_addr #2

declare ptr @_ZN4mlir23function_interface_impl14getArgAttrDictENS_19FunctionOpInterfaceEj(ptr, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !244 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %_ZNK4mlir13OperationName10getDialectEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 32
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #16
  %.not.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 25) #16
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #16
  br label %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i

_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !53 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i, 1            ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, !llvm.loop !54

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i
  %.pre-phi.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_19FunctionOpInterfaceEPNS_9OperationENS0_34FunctionOpInterfaceInterfaceTraitsENS_2OpIS2_JEEENS_7OpTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i ], [ %.112.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i
  %.not.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i, align 8, !tbaa !56
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread

_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !494  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !244
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !52

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #16
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 25) #16
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #16
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_19FunctionOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !53
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !138
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #16, !inline_history !681
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_19FunctionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !52

bb.i:                                             ; preds = %bb.h
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !72, !llvm.loop !687

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !688
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !689
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit, label %bb.d, !prof !71

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !688
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !386
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !385
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !69
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !689
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !385, !noalias !690 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386, !noalias !690 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !382, !noalias !690 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.g, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !687

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !688
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.27", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !382
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !385
  store ptr %i.y, ptr %i.q, align 8, !tbaa !386
  store i32 0, ptr %i.p, align 16, !tbaa !689
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !688    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !432 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store ptr %i.z, ptr %2, align 16, !tbaa !688
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !280
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !432
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !69
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !69
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !156 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !141
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !387

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !388

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !382 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !385
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !385
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !382  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !386  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !385
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !382
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.bw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = xor i64 %i.v, -49064778989728563         ; 2 uses
  %i.x = lshr i64 %i.w, 30
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7723592293110705685     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !695

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !280
  store <2 x ptr> %i.bb, ptr %i.ay, align 8, !tbaa !280
  store ptr null, ptr %i.az, align 8, !tbaa !639
  store ptr null, ptr %i.ba, align 8, !tbaa !432
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !69
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !69
  store i32 0, ptr %i.bd, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 28 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !69
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !69
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !69
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !69
  %i.bj = shl nuw i32 1, %.lcssa.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !69
  %i.bm = or i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !69
  %i.bn = load i32, ptr %i.bg, align 4, !tbaa !156 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bp = zext i32 %i.bn to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bp, 31
  %i.bs = lshr i64 %i.br, 3
  %i.bt = and i64 %i.bs, 1073741820
  %i.bu = add nuw nsw i64 %i.bt, %i.bq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.bu, i64 noundef 8) #16
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bv = add i32 %.0.i19, -1
  %i.bw = and i32 %i.bv, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !696

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS6_IS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !697

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !382
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bx = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !689
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !689
  %i.cb = icmp eq i32 %i.bx, 0
  br i1 %i.cb, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.cc = load ptr, ptr %1, align 8, !tbaa !385
  %i.cd = zext i32 %i.bx to i64                   ; 2 uses
  %i.ce = shl nuw nsw i64 %i.cd, 5
  %i.cf = add nuw nsw i64 %i.cd, 31
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = and i64 %i.cg, 1073741820
  %i.ci = add nuw nsw i64 %i.ch, %i.ce
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cc, i64 noundef %i.ci, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !382
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS5_IS3_vEENS_6detail12DenseMapPairIS3_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS_8DenseSetIlNS_12DenseMapInfoIlvEEEENS9_IS7_vEENS_6detail12DenseMapPairIS7_SB_EEEES7_SB_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare ptr @_ZN4mlir13NamedAttrList5eraseENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(88), ptr) local_unnamed_addr #2

declare void @_ZN4mlir12RewriterBase9replaceOpEPNS_9OperationENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64, i64) unnamed_addr #2

declare void @_ZN4mlir12RewriterBase9replaceOpEPNS_9OperationES2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN4mlir12RewriterBase7eraseOpEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

declare void @_ZN4mlir12RewriterBase10eraseBlockEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

declare void @_ZN4mlir12RewriterBase17inlineBlockBeforeEPNS_5BlockES2_N4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr, i64, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase19startOpModificationEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN4mlir12RewriterBase22finalizeOpModificationEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase20cancelOpModificationEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir12RewriterBase18replaceAllUsesWithENS_5ValueES1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !332    ; 2 uses
  %.not15 = icmp eq ptr %i.a, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit
  %.sroa.09.016 = phi ptr [ %i.b, %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit ], [ %i.a, %bb.a ] ; 8 uses
  %i.b = load ptr, ptr %.sroa.09.016, align 8, !tbaa !330 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !594  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.d) #16, !inline_history !698
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !326  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %.sroa.09.016, align 8, !tbaa !330 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !331
  %.not2.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not2.i.i.i.i, label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !326
  br label %_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i

_ZN4mlir6detail13IROperandBase17removeFromCurrentEv.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 24
  store ptr %2, ptr %i.l, align 8, !tbaa !136
  store ptr %2, ptr %i.h, align 8, !tbaa !326
  %i.m = load ptr, ptr %2, align 8, !tbaa !332    ; 3 uses
  store ptr %i.m, ptr %.sroa.09.016, align 8, !tbaa !330
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir12RewriterBase15modifyOpInPlaceIZNS0_18replaceAllUsesWithENS_5ValueES2_EUlvE_EEvPNS_9OperationEOT_.exit, label %bb.d

end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !733
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !731
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !381
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !69
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !734
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 0, ptr %i.bm, align 8, !tbaa !228
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !381, !noalias !735 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !731, !noalias !735 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !378, !noalias !735 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.g, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !70

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !71

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !72, !llvm.loop !732

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !733
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.29", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !378
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !381
  store ptr %i.y, ptr %i.q, align 8, !tbaa !731
  store i32 0, ptr %i.p, align 16, !tbaa !734
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !280
  %i.aa = load ptr, ptr %0, align 8, !tbaa !733
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !280
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !280
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !280
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !69
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !69
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !69
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !69
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !381
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !731
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !378  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !731  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !381
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !378
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = xor i64 %i.v, -49064778989728563         ; 2 uses
  %i.x = lshr i64 %i.w, 30
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 27
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7723592293110705685     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.k, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 5                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !69
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.014.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !69
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !740

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !228
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !228
  %i.bb = shl nuw i32 1, %.lcssa.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !69
  %i.be = or i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !69
  %i.bf = add i32 %.0.i17, -1
  %i.bg = and i32 %i.bf, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !741

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS2_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !742

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !378
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !734
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !734
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !381
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #16
  store i32 0, ptr %i.d, align 4, !tbaa !378
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir4func6FuncOpENS1_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir4func6FuncOpENS5_13bufferization8func_ext19FuncOpAnalysisStateENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE6insertIPS3_vEES6_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 8 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 8) #16
  %.pre8.pre.i = load i32, ptr %i.e, align 8, !tbaa !11
  %.pre61.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre61 = phi ptr [ %i.a, %bb.b ], [ %.pre61.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i32 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE6appendIPS3_vEEvT_S7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i
  %i.t = zext i32 %.pre8.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre61, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !11
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE6appendIPS3_vEEvT_S7_.exit

_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE6appendIPS3_vEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i, %bb.d
  %i.v = phi ptr [ %.pre61, %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i ], [ %.pre60, %bb.d ]
  %i.w = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.x = trunc i64 %i.m to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPN4mlir4func6FuncOpES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.a
  %.idx52 = sub i64 0, %i.l
  %i.aa = ashr exact i64 %i.l, 3                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.g                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 8) #16
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  %.pre59 = load i32, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.pre63 = zext i32 %.pre59 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.g, %bb.e ], [ %.pre63, %bb.f ] ; 3 uses
  %i.ah = phi i32 [ %i.f, %bb.e ], [ %.pre59, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 4 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d ; 14 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 5 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.am = ashr exact i64 %gepdiff, 3              ; 8 uses
  %.not = icmp ult i64 %i.am, %i.aa
  br i1 %.not, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %.idx52 ; 4 uses
  %i.ao = add nsw i64 %i.aa, %.pre-phi            ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i46

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef %i.ao, i64 noundef 8) #16
  %.pre.i47 = load i32, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %.pre12.i = zext i32 %.pre.i47 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4func6FuncOpEE7reserveEm.exit.i46

end_hunk_7
