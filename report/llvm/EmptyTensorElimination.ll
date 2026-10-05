Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmptyTensorElimination?download=true
inline.NumInlined: 1257
inline.NumDeleted: 914
begin_hunk_0_@_ZN4mlir13bufferization21buildSubsetExtractionERNS_12RewriterBaseENS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpEPNS_9OperationE:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph49.i, %.critedge.i.i
  %.0197.i.i = phi ptr [ %i.bm, %.critedge.i.i ], [ %.val.i, %.lr.ph49.i ] ; 2 uses
  %i.bc = load i64, ptr %.0197.i.i, align 8, !tbaa !31 ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.be, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.bg = icmp ne i64 %i.bf, 7
  %.not45.i.i = icmp eq i64 %i.bc, 0
  %.not4.i.i = or i1 %.not45.i.i, %i.bg
  br i1 %.not4.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = call noundef ptr @_ZN4mlir5Block21findAncestorOpInBlockERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.az) #17
  %.not24.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not24.not.i.i, label %.loopexit.i, label %.critedge.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bk = call noundef ptr @_ZNK4mlir6detail12OpResultImpl8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #17
  %i.bl = call noundef zeroext i1 @_ZNK4mlir13DominanceInfo17properlyDominatesEPNS_9OperationES2_b(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.bk, ptr noundef %i.az, i1 noundef zeroext true) #17
  br i1 %i.bl, label %.critedge.i.i, label %.loopexit.i

.critedge.i.i:                                    ; preds = %bb.j, %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0197.i.i, i64 8 ; 2 uses
  %.not.i33.i = icmp eq ptr %i.bm, %i.bb
  br i1 %.not.i33.i, label %.loopexit43.i, label %.lr.ph.i.i

.loopexit43.i:                                    ; preds = %.critedge.i.i, %.lr.ph49.i
  %i.bn = icmp eq ptr %i.az, %4
  br i1 %i.bn, label %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.loopexit.i, label %_ZNK4mlir13DominanceInfo9dominatesEPNS_9OperationES2_.exit.i

_ZNK4mlir13DominanceInfo9dominatesEPNS_9OperationES2_.exit.i: ; preds = %.loopexit43.i
  %i.bo = call noundef zeroext i1 @_ZNK4mlir13DominanceInfo17properlyDominatesEPNS_9OperationES2_b(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.az, ptr noundef %4, i1 noundef zeroext true) #17
  br i1 %i.bo, label %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.loopexit.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.j, %bb.i, %_ZNK4mlir13DominanceInfo9dominatesEPNS_9OperationES2_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.02347.i, i64 8 ; 2 uses
  %.not27.i = icmp eq ptr %i.bp, %i.r
  br i1 %.not27.i, label %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.loopexit.i, label %.lr.ph49.i

_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.loopexit.i: ; preds = %.loopexit.i, %_ZNK4mlir13DominanceInfo9dominatesEPNS_9OperationES2_.exit.i, %.loopexit43.i
  %spec.select.ph.i = phi ptr [ null, %.loopexit.i ], [ %i.az, %_ZNK4mlir13DominanceInfo9dominatesEPNS_9OperationES2_.exit.i ], [ %i.az, %.loopexit43.i ]
  %.pre55.i = load ptr, ptr %6, align 8, !tbaa !14
  br label %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.i

_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.i: ; preds = %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.loopexit.i, %._crit_edge.i
  %i.bq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.pre55.i, %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.loopexit.i ] ; 2 uses
  %spec.select.i = phi ptr [ null, %._crit_edge.i ], [ %spec.select.ph.i, %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.loopexit.i ] ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.g
  br i1 %i.br, label %_ZL23findValidInsertionPointPN4mlir9OperationES1_RKN4llvm11SmallVectorINS_5ValueELj6EEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.i
  call void @free(ptr noundef %i.bq) #17
  br label %_ZL23findValidInsertionPointPN4mlir9OperationES1_RKN4llvm11SmallVectorINS_5ValueELj6EEE.exit

_ZL23findValidInsertionPointPN4mlir9OperationES1_RKN4llvm11SmallVectorINS_5ValueELj6EEE.exit: ; preds = %_ZL34neededValuesDominateInsertionPointRKN4mlir13DominanceInfoEPNS_9OperationERKN4llvm11SmallVectorINS_5ValueELj6EEE.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN4mlir6detail17DominanceInfoBaseILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not = icmp eq ptr %spec.select.i, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZL23findValidInsertionPointPN4mlir9OperationES1_RKN4llvm11SmallVectorINS_5ValueELj6EEE.exit
  %i.bs = load ptr, ptr %9, align 8, !tbaa !14
  %i.bt = load i32, ptr %i.k, align 8, !tbaa !29
  %i.bu = zext i32 %i.bt to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.bs, i64 %i.bu) #17
  %i.bv = load i64, ptr %10, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = call i8 @_ZN4mlir20moveValueDefinitionsERNS_12RewriterBaseENS_10ValueRangeEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %i.bv, i64 %i.bx, ptr noundef %4) #17
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZL23findValidInsertionPointPN4mlir9OperationES1_RKN4llvm11SmallVectorINS_5ValueELj6EEE.exit
  %.0 = phi ptr [ %spec.select.i, %_ZL23findValidInsertionPointPN4mlir9OperationES1_RKN4llvm11SmallVectorINS_5ValueELj6EEE.exit ], [ %4, %bb.l ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cc = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %.0) #17
  store ptr %i.cb, ptr %i.c, align 8, !tbaa !28
  store ptr %i.cc, ptr %i.d, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cd, align 8
  %i.ce = call ptr @_ZN4mlir26SubsetInsertionOpInterface21buildSubsetExtractionERNS_9OpBuilderENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr %.sroa.0.0.copyload.i) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.015.0 = phi ptr [ %i.ce, %bb.m ], [ null, %bb.l ]
  %i.cf = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.cf) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store <2 x ptr> %i.e, ptr %i.c, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.q, %bb.r
  ret ptr %.sroa.015.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4mlir26SubsetInsertionOpInterface38getValuesNeededToBuildSubsetExtractionEv(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir20moveValueDefinitionsERNS_12RewriterBaseENS_10ValueRangeEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40), i64, i64, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir26SubsetInsertionOpInterface21buildSubsetExtractionERNS_9OpBuilderENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(544) %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %class.anon.266, align 8            ; 4 uses
  %5 = alloca %"class.llvm::DenseSet", align 8    ; 6 uses
  %6 = alloca %class.anon, align 8                ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %5, ptr %6, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.f, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %6, ptr %4, align 8, !tbaa !68
  %i.g = ptrtoint ptr %4 to i64
  %i.h = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization21eliminateEmptyTensorsERNS1_12RewriterBaseES4_RNSC_20OneShotAnalysisStateESt8functionIFNS1_5ValueESE_NS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpES4_EEE3$_0SJ_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESV_E4typeES4_OT1_EUlS4_E_EES2_lS4_", i64 %i.g, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !72   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %5, align 8, !tbaa !73
  %i.m = zext i32 %i.j to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store <2 x ptr> %i.b, ptr %i.a, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.d, %bb.e
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %class.anon.266, align 8            ; 4 uses
  %3 = alloca %"class.llvm::DenseSet", align 8    ; 6 uses
  %4 = alloca %class.anon, align 8                ; 7 uses
  %5 = alloca %"struct.mlir::bufferization::OneShotBufferizationOptions", align 8 ; 10 uses
  %6 = alloca %"class.mlir::bufferization::OneShotAnalysisState", align 8 ; 9 uses
  %7 = alloca %"class.std::function", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %8 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i.i.not = or i1 %8, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN4mlir13bufferization20BufferizationOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(380) %5) #17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 353
  store i8 0, ptr %i.f, align 1, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.e, align 8, !tbaa !142
  %.not9 = icmp eq ptr %1, null
  %.not = or i1 %.not9, %spec.select.i.i.i.i.not
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 1, ptr %i.h, align 1, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN4mlir13bufferization20OneShotAnalysisStateC1EPNS_9OperationERKNS0_27OneShotBufferizationOptionsE(ptr noundef nonnull align 8 dereferenceable(544) %6, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(380) %5) #17
  %i.i = call i8 @_ZN4mlir13bufferization15analyzeModuleOpEPNS_9OperationERNS0_20OneShotAnalysisStateEPNS0_23BufferizationStatisticsE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(544) %6, ptr noundef null) #17
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZNSt14_Function_baseD2Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN4mlir13bufferization20OneShotAnalysisStateC1EPNS_9OperationERKNS0_27OneShotBufferizationOptionsE(ptr noundef nonnull align 8 dereferenceable(544) %6, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(380) %5) #17
  %i.k = call i8 @_ZN4mlir13bufferization9analyzeOpEPNS_9OperationERNS0_20OneShotAnalysisStateEPNS0_23BufferizationStatisticsE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(544) %6, ptr noundef null) #17
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %_ZNSt14_Function_baseD2Ev.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.o, align 8
  store ptr @_ZN4mlir13bufferization21buildSubsetExtractionERNS_12RewriterBaseENS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpEPNS_9OperationE, ptr %7, align 8, !tbaa !68
  store ptr @_ZNSt17_Function_handlerIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEPS9_E9_M_invokeERKSt9_Any_dataS3_OS4_OS6_OS8_, ptr %i.n, align 8, !tbaa !79
  store ptr @_ZNSt17_Function_handlerIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEPS9_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.m, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %3, ptr %4, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %6, ptr %i.s, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %7, ptr %i.t, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.u, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %4, ptr %2, align 8, !tbaa !68
  %i.v = ptrtoint ptr %2 to i64
  %i.w = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization21eliminateEmptyTensorsERNS1_12RewriterBaseES4_RNSC_20OneShotAnalysisStateESt8functionIFNS1_5ValueESE_NS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpES4_EEE3$_0SJ_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESV_E4typeES4_OT1_EUlS4_E_EES2_lS4_", i64 %i.v, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %3, align 8, !tbaa !73
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <2 x ptr> %i.q, ptr %i.p, align 8
  br label %_ZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EE.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %_ZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EE.exit

_ZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EE.exit: ; preds = %bb.g, %bb.h
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !80  ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EE.exit
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #17, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %_ZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EE.exit, %bb.c, %bb.b
  %.sroa.06.0 = phi i8 [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %_ZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EE.exit ], [ 1, %bb.i ]
  call void @_ZN4mlir13bufferization20OneShotAnalysisStateD2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN4mlir13bufferization20BufferizationOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i8 %.sroa.06.0
}

declare void @_ZN4mlir13bufferization20OneShotAnalysisStateC1EPNS_9OperationERKNS0_27OneShotBufferizationOptionsE(ptr noundef nonnull align 8 dereferenceable(544), ptr noundef, ptr noundef nonnull align 8 dereferenceable(380)) unnamed_addr #2

declare i8 @_ZN4mlir13bufferization15analyzeModuleOpEPNS_9OperationERNS0_20OneShotAnalysisStateEPNS0_23BufferizationStatisticsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(544), ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir13bufferization9analyzeOpEPNS_9OperationERNS0_20OneShotAnalysisStateEPNS0_23BufferizationStatisticsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(544), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13bufferization20OneShotAnalysisStateD2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4mlir13bufferization20OneShotAnalysisStateE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.h = zext i32 %i.c to i64
  %i.i = add nuw nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !81   ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.m = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.x, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !153  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4mlir13bufferization20OneShotAnalysisState9ExtensionEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir13bufferization20OneShotAnalysisState9ExtensionEEclEPS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17, !inline_history !144
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir13bufferization20OneShotAnalysisState9ExtensionEEclEPS3_.exit.i.i.i.i, %bb.b
  %i.w = add i32 %.0.i3.i.i, -1
  %i.x = and i32 %i.w, %.0.i3.i.i                 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !145

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !146

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !149 ; 2 uses
  %i.y = icmp eq i32 %.pr.i, 0
  br i1 %i.y, label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.aa = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.aa, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.af, i64 noundef 8) #17
  br label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !72 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #17
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_13bufferization20OneShotAnalysisState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.as) #17
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aw = icmp eq ptr %i.au, %i.av
end_hunk_0
begin_hunk_1_@_ZN4mlir10IRRewriterD0Ev:bb.a
  tail call void @_ZN4mlir12RewriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(i64 noundef %2, ptr noundef %0) #17, !inline_history !216
  switch i32 %i.b, label %bb.c [
    i32 2, label %.thread
    i32 0, label %.thread.fold.split
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #17 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not75 = icmp eq i64 %i.e, 0
  br i1 %.not75, label %._crit_edge77, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.03176 = phi ptr [ %i.o, %._crit_edge ], [ %i.d, %bb.c ] ; 4 uses
  %.sroa.037.0.in71 = getelementptr inbounds nuw i8, ptr %.03176, i64 8
  %.sroa.037.072 = load ptr, ptr %.sroa.037.0.in71, align 8, !tbaa !46 ; 2 uses
  %.not6973 = icmp eq ptr %.sroa.037.072, %.03176
  br i1 %.not6973, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.d
  %.sroa.037.0.in = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 8
  %.sroa.037.0 = load ptr, ptr %.sroa.037.0.in, align 8, !tbaa !46 ; 2 uses
  %.not69 = icmp eq ptr %.sroa.037.0, %.03176
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.loopexit
  %.sroa.037.074 = phi ptr [ %.sroa.037.0, %.loopexit ], [ %.sroa.037.072, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.037.074, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.034.0 = phi ptr [ %i.h, %.lr.ph ], [ %i.k, %bb.e ] ; 3 uses
  %.not70 = icmp eq ptr %.sroa.034.0, %i.i
  br i1 %.not70, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.034.0) #17
  %i.m = tail call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull %i.l, ptr %1, i64 %2, i32 noundef %3)
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.03176, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.f
  br i1 %.not, label %._crit_edge77, label %.preheader

._crit_edge77:                                    ; preds = %._crit_edge, %bb.c
  %i.p = icmp eq i32 %3, 1
  br i1 %i.p, label %bb.f, label %.thread

bb.f:                                             ; preds = %._crit_edge77
  %i.q = tail call i32 %1(i64 noundef %2, ptr noundef nonnull %0) #17, !inline_history !216
  br label %.thread

.thread.fold.split:                               ; preds = %bb.b
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %.thread.fold.split, %._crit_edge77, %bb.f
  %.sroa.030.9 = phi i32 [ %i.q, %bb.f ], [ 0, %.thread.fold.split ], [ 1, %._crit_edge77 ], [ 1, %bb.b ], [ 0, %bb.e ]
  ret i32 %.sroa.030.9
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 1, 3) i32 @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization21eliminateEmptyTensorsERNS1_12RewriterBaseES4_RNSC_20OneShotAnalysisStateESt8functionIFNS1_5ValueESE_NS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpES4_EEE3$_0SJ_S2_EENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESV_E4typeES4_OT1_EUlS4_E_EES2_lS4_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %3 = alloca %"class.mlir::SubsetInsertionOpInterface", align 16 ; 4 uses
  %4 = alloca %"class.mlir::tensor::EmptyOp", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 6 uses
  %6 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %7 = alloca %"class.llvm::iterator_range.319", align 8 ; 6 uses
  %8 = alloca %"class.mlir::SubsetInsertionOpInterface", align 16 ; 6 uses
  %9 = alloca %"class.llvm::SetVector", align 8   ; 8 uses
  %10 = alloca %class.anon.286, align 1           ; 3 uses
  %11 = alloca %"class.mlir::Value", align 8      ; 8 uses
  %12 = alloca %"class.mlir::Value", align 8      ; 9 uses
  %13 = alloca %"class.mlir::ShapedType", align 8 ; 5 uses
  %14 = alloca %"class.mlir::ShapedType", align 8 ; 5 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_26SubsetInsertionOpInterfaceENS_6detail41SubsetInsertionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_26SubsetInsertionOpInterfaceENS_6detail41SubsetInsertionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %1, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %i.e, 1
  br label %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i

_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i: ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i, %bb.a
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.f = extractvalue { ptr, ptr } %.pn.i.i.i, 0  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS4_20OneShotAnalysisStateESt8functionIFNS_5ValueES6_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES8_EEE3$_0SD_NS_10WalkResultEEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S8_PNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_SJ_EE5valueESQ_E4typeES8_OT1_ENKUlS8_E_clES8_.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir26SubsetInsertionOpInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %i.g = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !244, !nonnull !90, !align !245 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.f, ptr %8, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.g, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !247, !nonnull !90, !align !245 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !106  ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl i32 %i.l, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !72   ; 3 uses
  %i.q = icmp ult i32 %i.n, %i.p
  %i.r = icmp ugt i32 %i.p, 64
  %or.cond.i.i.i.i = and i1 %i.q, %i.r
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.u = zext i32 %i.p to i64
  %i.v = add nuw nsw i64 %i.u, 31
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.w, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.t, i8 0, i64 %i.x, i1 false)
  store i32 0, ptr %i.k, align 8, !tbaa !106
  br label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit.i.i

_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.y = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4mlir26SubsetInsertionOpInterface16getSourceOperandEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #17 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !248, !nonnull !90, !align !245 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(544) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #17, !inline_history !217
  br i1 %i.ad, label %bb.h, label %.thread.sink.split.i

bb.h:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5clearEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !248, !nonnull !90, !align !245
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.af = ptrtoint ptr %10 to i64
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !247, !nonnull !90, !align !245
  call void @_ZNK4mlir13bufferization13AnalysisState29findValueInReverseUseDefChainEPNS_9OpOperandEN4llvm12function_refIFbNS_5ValueEEEENS0_15TraversalConfigEPNS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_vEEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SetVector") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull %i.y, ptr nonnull @"_ZN4llvm12function_refIFbN4mlir5ValueEEE11callback_fnIZZNS1_13bufferization21eliminateEmptyTensorsERNS1_12RewriterBaseEPNS1_9OperationERNS6_20OneShotAnalysisStateESt8functionIFS2_S8_NS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpESA_EEENK3$_0clESE_EUlS2_E_EEblS2_", i64 %i.af, i48 4295032832, ptr noundef nonnull %i.ag) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %.idx.i.i = shl nuw nsw i64 %i.al, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i
  %.not77.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not77.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %15 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.k

._crit_edge.loopexit.i.i:                         ; preds = %bb.al
  %.pre.i.i = load ptr, ptr %i.ah, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.h
  %i.at = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @free(ptr noundef %i.at) #17
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i.i.i: ; preds = %bb.i, %._crit_edge.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !85 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.am, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj0EED2Ev.exit.i.i.i
  %i.az = load ptr, ptr %9, align 8, !tbaa !86
  %i.ba = zext i32 %i.ax to i64                   ; 2 uses
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.ba, 31
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741820
  %i.bf = add nuw nsw i64 %i.be, %i.bb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.az, i64 noundef %i.bf, i64 noundef 8) #17
  br label %bb.am

bb.k:                                             ; preds = %bb.al, %.lr.ph.i.i
  %.02178.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ij, %bb.al ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.bg = load i64, ptr %.02178.i.i, align 8, !tbaa !31
  store i64 %i.bg, ptr %11, align 8, !tbaa !31
  %i.bh = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #17 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4mlir5Value13getDefiningOpINS_6tensor7EmptyOpEEET_v.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !76
  %i.bl = icmp eq ptr %i.bk, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i.i.i = and i1 %15, %i.bl
  %spec.select.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i, ptr %i.bh, ptr null
  br label %_ZNK4mlir5Value13getDefiningOpINS_6tensor7EmptyOpEEET_v.exit.i.i

_ZNK4mlir5Value13getDefiningOpINS_6tensor7EmptyOpEEET_v.exit.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %bb.l ], [ null, %bb.k ] ; 4 uses
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !247, !nonnull !90, !align !245 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !73, !noalias !249 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !107, !noalias !249 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !72, !noalias !249 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !106, !noalias !249
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = zext i32 %i.br to i64                   ; 3 uses
  %.idx22.i.i.i = shl nuw nsw i64 %i.bv, 3        ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx22.i.i.i ; 6 uses
  %.not.i.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.br, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.bu, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i", label %bb.m

bb.m:                                             ; preds = %_ZNK4mlir5Value13getDefiningOpINS_6tensor7EmptyOpEEET_v.exit.i.i
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 5                       ; 4 uses
  %i.bz = load i32, ptr %i.bp, align 4, !tbaa !81, !noalias !250 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN4llvm9adl_beginIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS9_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.m
  %i.cb = icmp eq i64 %i.by, 1
  br i1 %i.cb, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i", label %.lr.ph

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph
  %i.cc = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %i.by
  br i1 %i.cd, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i", label %.lr.ph, !llvm.loop !230

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ce = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !81, !noalias !250 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !230

._crit_edge.i.loopexit.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph
  %i.ci = shl i64 %i.ce, 8
  br label %_ZN4llvm9adl_beginIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS9_.exit.i.i.i

_ZN4llvm9adl_beginIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS9_.exit.i.i.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i, %bb.m
  %.012.lcssa.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.ci, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.m ], [ %i.cg, %._crit_edge.i.loopexit.i.i.i.i.i.i.i.i ]
  %i.cj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ck = shl nuw nsw i32 %i.cj, 3
  %.idx.i.i.i = zext nneg i32 %i.ck to i64
  %i.cl = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i.i, %.idx.i.i.i ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bn, i64 %i.cl  ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq i64 %i.cl, %.idx22.i.i.i
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm9adl_beginIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS9_.exit.i.i.i
  %i.cn = ptrtoint ptr %i.bn to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 36
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -16
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cq = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %i.dx, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i ] ; 3 uses
  %.val1.val.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !252, !noalias !253
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !253
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !254
  %i.cr = load i32, ptr %i.co, align 4, !tbaa !255, !noalias !254 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = zext i32 %i.cr to i64
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.cs, ptr null, ptr %i.cp
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %6, align 8, !noalias !254
  store i64 %i.ct, ptr %i.an, align 8, !noalias !254
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.319") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6) #17, !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 40, i1 false), !noalias !253
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !253 ; 2 uses
  %i.cu = load ptr, ptr %i.ao, align 8, !tbaa !257, !noalias !253 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4mlir13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS3_20OneShotAnalysisStateESt8functionIFNS2_5ValueES5_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpES7_EEENK3$_0clESC_EUlPNS2_9OpOperandEE_EclIN4llvm6detail12DenseSetImplISJ_NSN_8DenseMapISJ_NSO_13DenseSetEmptyENSN_12DenseMapInfoISJ_vEENSO_12DenseSetPairISJ_EEEEE16DenseSetIteratorILb0EEEEEbT_.exit.thread.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4mlir13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS3_20OneShotAnalysisStateESt8functionIFNS2_5ValueES5_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpES7_EEENK3$_0clESC_EUlPNS2_9OpOperandEE_EclIN4llvm6detail12DenseSetImplISJ_NSN_8DenseMapISJ_NSO_13DenseSetEmptyENSN_12DenseMapInfoISJ_vEENSO_12DenseSetPairISJ_EEEEE16DenseSetIteratorILb0EEEEEbT_.exit.thread.i.i.i.i.i.i": ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !253
  br label %bb.o

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cu, %bb.n ]
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.n ]
  %i.cw = icmp eq ptr %i.cv, %.val1.val.i.i.i.i.i.i
  %i.cx = zext i1 %i.cw to i64
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, %i.cx ; 2 uses
  %i.cy = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #17, !noalias !253 ; 0 uses
  %i.cz = load ptr, ptr %i.ao, align 8, !tbaa !257, !noalias !253 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4mlir13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS3_20OneShotAnalysisStateESt8functionIFNS2_5ValueES5_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpES7_EEENK3$_0clESC_EUlPNS2_9OpOperandEE_EclIN4llvm6detail12DenseSetImplISJ_NSN_8DenseMapISJ_NSO_13DenseSetEmptyENSN_12DenseMapInfoISJ_vEENSO_12DenseSetPairISJ_EEEEE16DenseSetIteratorILb0EEEEEbT_.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !239

"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4mlir13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS3_20OneShotAnalysisStateESt8functionIFNS2_5ValueES5_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpES7_EEENK3$_0clESC_EUlPNS2_9OpOperandEE_EclIN4llvm6detail12DenseSetImplISJ_NSN_8DenseMapISJ_NSO_13DenseSetEmptyENSN_12DenseMapInfoISJ_vEENSO_12DenseSetPairISJ_EEEEE16DenseSetIteratorILb0EEEEEbT_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.not3.i.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !253
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !253
  br i1 %.not3.i.i.i.i.i.i, label %bb.o, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i"

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4mlir13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS3_20OneShotAnalysisStateESt8functionIFNS2_5ValueES5_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpES7_EEENK3$_0clESC_EUlPNS2_9OpOperandEE_EclIN4llvm6detail12DenseSetImplISJ_NSN_8DenseMapISJ_NSO_13DenseSetEmptyENSN_12DenseMapInfoISJ_vEENSO_12DenseSetPairISJ_EEEEE16DenseSetIteratorILb0EEEEEbT_.exit.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4mlir13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS3_20OneShotAnalysisStateESt8functionIFNS2_5ValueES5_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpES7_EEENK3$_0clESC_EUlPNS2_9OpOperandEE_EclIN4llvm6detail12DenseSetImplISJ_NSN_8DenseMapISJ_NSO_13DenseSetEmptyENSN_12DenseMapInfoISJ_vEENSO_12DenseSetPairISJ_EEEEE16DenseSetIteratorILb0EEEEEbT_.exit.thread.i.i.i.i.i.i"
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  %i.dd = ashr exact i64 %i.dc, 3                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.dd, %i.bv
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.p, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i"

bb.p:                                             ; preds = %bb.o
  %i.de = lshr i64 %i.dd, 5                       ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !81, !noalias !253
  %i.dh = trunc nuw i64 %i.dd to i32
  %i.di = and i32 %i.dh, 31
  %i.dj = shl nsw i32 -1, %i.di
  %i.dk = and i32 %i.dg, %i.dj                    ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i7.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i7.i.i.i.preheader:              ; preds = %bb.p
  %i.dm = add nuw nsw i64 %i.de, 1                ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %i.by
  br i1 %i.dn, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i", label %.lr.ph45

.lr.ph.i.i.i.i.i.i7.i.i.i:                        ; preds = %.lr.ph45
  %i.do = add i64 %i.dq, 1                        ; 2 uses
  %i.dp = icmp eq i64 %i.do, %i.by
  br i1 %i.dp, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i", label %.lr.ph45, !llvm.loop !230

.lr.ph45:                                         ; preds = %.lr.ph.i.i.i.i.i.i7.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i7.i.i.i
  %i.dq = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i7.i.i.i ], [ %i.dm, %.lr.ph.i.i.i.i.i.i7.i.i.i.preheader ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !81, !noalias !253 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i7.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i, !llvm.loop !230

_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph45, %bb.p
  %.012.lcssa.i.i.i.i.i.i5.i.i.i = phi i64 [ %i.de, %bb.p ], [ %i.dq, %.lr.ph45 ]
  %.0.lcssa.i.i.i.i.i.i6.i.i.i = phi i32 [ %i.dk, %bb.p ], [ %i.ds, %.lr.ph45 ]
  %i.du = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i6.i.i.i, i1 true)
  %.idx.i.i.i.i.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i.i5.i.i.i, 8
  %i.dv = shl nuw nsw i32 %i.du, 3
  %.idx23.i.i.i = zext nneg i32 %i.dv to i64
  %i.dw = or disjoint i64 %.idx.i.i.i.i.i.i.i.i.i, %.idx23.i.i.i ; 2 uses
  %i.dx = getelementptr i8, ptr %i.bn, i64 %i.dw  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dw, %.idx22.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i", label %bb.n, !llvm.loop !240

"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i, %bb.o, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4mlir13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS3_20OneShotAnalysisStateESt8functionIFNS2_5ValueES5_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpES7_EEENK3$_0clESC_EUlPNS2_9OpOperandEE_EclIN4llvm6detail12DenseSetImplISJ_NSN_8DenseMapISJ_NSO_13DenseSetEmptyENSN_12DenseMapInfoISJ_vEENSO_12DenseSetPairISJ_EEEEE16DenseSetIteratorILb0EEEEEbT_.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i7.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i7.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %_ZN4llvm9adl_beginIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS9_.exit.i.i.i, %_ZNK4mlir5Value13getDefiningOpINS_6tensor7EmptyOpEEET_v.exit.i.i
  %.lcssa.i.i.i.i.i.i = phi ptr [ %i.cm, %_ZN4llvm9adl_beginIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEEEDTclsr10adl_detailE10begin_implclsr3stdE7forwardIT_Efp_EEEOS9_.exit.i.i.i ], [ %i.bw, %.lr.ph.i.i.i.i.i.i7.i.i.i ], [ %i.bw, %_ZNK4mlir5Value13getDefiningOpINS_6tensor7EmptyOpEEET_v.exit.i.i ], [ %i.dx, %_ZN4llvm6detail12DenseSetImplIPN4mlir9OpOperandENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit.i.i.i.i.i.i ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cq, %"_ZN9__gnu_cxx5__ops10_Iter_predIZZN4mlir13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS3_20OneShotAnalysisStateESt8functionIFNS2_5ValueES5_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpES7_EEENK3$_0clESC_EUlPNS2_9OpOperandEE_EclIN4llvm6detail12DenseSetImplISJ_NSN_8DenseMapISJ_NSO_13DenseSetEmptyENSN_12DenseMapInfoISJ_vEENSO_12DenseSetPairISJ_EEEEE16DenseSetIteratorILb0EEEEEbT_.exit.i.i.i.i.i.i" ], [ %i.bw, %bb.o ], [ %i.bw, %.lr.ph.i.i.i.i.i.i7.i.i.i.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.dy = load ptr, ptr %.lcssa.i.i.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !103 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.eb = load ptr, ptr %i.ap, align 8, !tbaa !258, !nonnull !90, !align !245 ; 3 uses
  %i.ec = load ptr, ptr %i.aq, align 8, !tbaa !259, !nonnull !90, !align !245
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ed = load <2 x ptr>, ptr %8, align 16
  store <2 x ptr> %i.ed, ptr %3, align 16
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %4, align 8
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !59
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !80
  %.not.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZNKSt8functionIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEEclES3_S4_S6_S8_.exit.i.i

bb.q:                                             ; preds = %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i"
  call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEEclES3_S4_S6_S8_.exit.i.i: ; preds = %"_ZN4llvm7find_ifIRNS_8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS4_vEEEEZZNS2_13bufferization21eliminateEmptyTensorsERNS2_12RewriterBaseEPNS2_9OperationERNS9_20OneShotAnalysisStateESt8functionIFNS2_5ValueESB_NS2_26SubsetInsertionOpInterfaceENS2_6tensor7EmptyOpESD_EEENK3$_0clESI_EUlS4_E_EEDaOT_T0_.exit.i.i"
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !79
  %i.ei = call ptr %i.eh(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(40) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #17, !inline_history !241 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.ei, ptr %12, align 8
  %.not68.i.i = icmp eq ptr %i.ei, null
  br i1 %.not68.i.i, label %bb.al, label %bb.r

bb.r:                                             ; preds = %_ZNKSt8functionIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEEclES3_S4_S6_S8_.exit.i.i
  %i.ej = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  %i.ek = icmp eq ptr %.sroa.0.0.i.i.i.i.i, %i.ej
  br i1 %i.ek, label %bb.al, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.el = load ptr, ptr %12, align 8, !tbaa !261
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.em, align 8
  %i.en = load ptr, ptr %11, align 8, !tbaa !261
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
end_hunk_1
begin_hunk_2_@_ZN4mlir11OpInterfaceINS_26SubsetInsertionOpInterfaceENS_6detail41SubsetInsertionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK4mlir13OperationName12getInterfaceINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptEv.exit.thread, label %.thread

_ZNK4mlir13OperationName12getInterfaceINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptEv.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i, %bb.e, %_ZNK4mlir13OperationName12getInterfaceINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !280  ; 2 uses
  %.sroa.0.0.copyload.i16 = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.aa = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, !prof !108

bb.f:                                             ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptEv.exit.thread
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i17 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i17, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 32) #17
  store ptr %i.ad, ptr @_ZZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit: ; preds = %_ZNK4mlir13OperationName12getInterfaceINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptEv.exit.thread, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !12
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr %.sroa.01.0.copyload.i.i.i.i, ptr %.sroa.0.0.copyload.i16) #17, !inline_history !267
  br label %.thread

_ZNK4mlir13OperationName10getDialectEv.exit:      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ai, align 8
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.aj = call noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.not15 = icmp eq ptr %i.aj, null
  br i1 %.not15, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4mlir13OperationName10getDialectEv.exit
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, !prof !108

bb.i:                                             ; preds = %bb.h
  %i.am = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.11, i64 49), i64 32) #17
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21

_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_26SubsetInsertionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !12
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.aj, ptr %.sroa.01.0.copyload.i.i.i.i19, ptr nonnull %.sroa.0.0.copyload.i) #17, !inline_history !267
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21, %_ZNK4mlir13OperationName10getDialectEv.exit, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit, %_ZNK4mlir13OperationName12getInterfaceINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptEv.exit
  %.3 = phi ptr [ %i.ah, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit ], [ %i.x, %_ZNK4mlir13OperationName12getInterfaceINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptEv.exit ], [ %i.ar, %_ZN4mlir7Dialect27getRegisteredInterfaceForOpINS_26SubsetInsertionOpInterfaceEEEPNT_7ConceptENS_13OperationNameE.exit21 ], [ null, %_ZNK4mlir13OperationName10getDialectEv.exit ]
  ret ptr %.3
}

declare noundef ptr @_ZNK4mlir10StringAttr20getReferencedDialectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN4mlir26SubsetInsertionOpInterface16getSourceOperandEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4mlir13bufferization13AnalysisState29findValueInReverseUseDefChainEPNS_9OpOperandEN4llvm12function_refIFbNS_5ValueEEEENS0_15TraversalConfigEPNS4_8DenseSetIS3_NS4_12DenseMapInfoIS3_vEEEE(ptr dead_on_unwind writable sret(%"class.llvm::SetVector") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr, i64, i48, ptr noundef) local_unnamed_addr #2

declare ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZN4mlir6tensor6CastOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir5Value6getLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !72   ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !72   ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !73
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #17
  store i32 0, ptr %i.r, align 4, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !72
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 3
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #17 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !72 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !107
  store i32 0, ptr %i.a, align 8, !tbaa !106
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZN4llvm12function_refIFbN4mlir5ValueEEE11callback_fnIZZNS1_13bufferization21eliminateEmptyTensorsERNS1_12RewriterBaseEPNS1_9OperationERNS6_20OneShotAnalysisStateESt8functionIFS2_S8_NS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpESA_EEENK3$_0clESE_EUlS2_E_EEblS2_"(i64 %0, ptr %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  %i.a = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %"_ZZZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EEENK3$_0clES9_ENKUlS8_E_clES8_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %3 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor7EmptyOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %3, %i.e
  br label %"_ZZZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EEENK3$_0clES9_ENKUlS8_E_clES8_.exit"

"_ZZZN4mlir13bufferization21eliminateEmptyTensorsERNS_12RewriterBaseEPNS_9OperationERNS0_20OneShotAnalysisStateESt8functionIFNS_5ValueES2_NS_26SubsetInsertionOpInterfaceENS_6tensor7EmptyOpES4_EEENK3$_0clES9_ENKUlS8_E_clES8_.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i.i = phi i1 [ %spec.select.i.i.i.i.i.i.i, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i1 %.sroa.0.0.i.i.i.i
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.319") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

declare noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt17_Function_handlerIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEPS9_E9_M_invokeERKSt9_Any_dataS3_OS4_OS6_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68
  %.sroa.01.0.copyload.i.i = load ptr, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8
  %i.b = load ptr, ptr %4, align 8, !tbaa !59
  %i.c = tail call ptr %i.a(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, ptr noundef %i.b) #17, !inline_history !281
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEPS9_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFN4mlir5ValueERNS1_12RewriterBaseENS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpEPNS1_9OperationEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIPFN4mlir5ValueERNS1_12RewriterBaseENS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpEPNS1_9OperationEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !68
  br label %_ZNSt14_Function_base13_Base_managerIPFN4mlir5ValueERNS1_12RewriterBaseENS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpEPNS1_9OperationEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFN4mlir5ValueERNS1_12RewriterBaseENS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpEPNS1_9OperationEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFN4mlir5ValueERNS1_12RewriterBaseENS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpEPNS1_9OperationEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split: ; preds = %bb.b, %bb.a, %.sink.split.i
  %.sink.i.sink = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ], [ null, %.sink.split.i ]
  store ptr %.sink.i.sink, ptr %0, align 8, !tbaa !68
  br label %_ZNSt14_Function_base13_Base_managerIPFN4mlir5ValueERNS1_12RewriterBaseENS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpEPNS1_9OperationEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFN4mlir5ValueERNS1_12RewriterBaseENS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpEPNS1_9OperationEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFN4mlir5ValueERNS1_12RewriterBaseENS1_26SubsetInsertionOpInterfaceENS1_6tensor7EmptyOpEPNS1_9OperationEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !82}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !10, i64 0, !7, i64 8, !7, i64 12}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !7, i64 12}
!16 = !{!"vtable pointer", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTSN4mlir4PassE", !10, i64 0}
!19 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir4PassELb0EE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"p1 _ZTSN4mlir11MLIRContextE", !10, i64 0}
!22 = !{!"_ZTSN4mlir7BuilderE", !21, i64 0}
!23 = !{!"p1 _ZTSN4mlir9OpBuilder8ListenerE", !10, i64 0}
!24 = !{!"p1 _ZTSN4mlir5BlockE", !10, i64 0}
!25 = !{!"p1 _ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !10, i64 0}
!26 = !{!"_ZTSN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEELb0ELb0EEE", !25, i64 0}
!27 = !{!"_ZTSN4mlir9OpBuilderE", !22, i64 0, !23, i64 8, !24, i64 16, !26, i64 24}
!28 = !{!27, !24, i64 16}
!29 = !{!13, !7, i64 8}
!30 = !{!"p1 _ZTSN4mlir6detail9ValueImplE", !10, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTSN4mlir6detail13IROperandBaseE", !10, i64 0}
!33 = !{!"_ZTSN4mlir19IRObjectWithUseListINS_9OpOperandEEE", !32, i64 0}
!34 = !{!"_ZTSN4llvm6detail13PunnedPointerIN4mlir4TypeEEE", !6, i64 0}
!35 = !{!"_ZTSN4llvm14PointerIntPairIN4mlir4TypeELj3ENS1_6detail9ValueImpl4KindENS_21PointerLikeTypeTraitsIS2_EENS_18PointerIntPairInfoIS2_Lj3ES7_EEEE", !34, i64 0}
!36 = !{!"_ZTSN4mlir6detail9ValueImplE", !33, i64 0, !35, i64 8}
!37 = !{!"long", !6, i64 0}
!38 = !{!"p1 _ZTSN4mlir16AttributeStorageE", !10, i64 0}
!39 = !{!"_ZTSN4mlir9AttributeE", !38, i64 0}
!40 = !{!"_ZTSN4mlir12LocationAttrE", !39, i64 0}
!41 = !{!"_ZTSN4mlir8LocationE", !40, i64 0}
!42 = !{!"_ZTSN4mlir6detail17BlockArgumentImplE", !36, i64 0, !24, i64 16, !37, i64 24, !41, i64 32}
!43 = !{!42, !24, i64 16}
!44 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !10, i64 0}
!45 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !44, i64 0, !44, i64 8}
!46 = !{!45, !44, i64 8}
!47 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !45, i64 0}
!48 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEEE", !47, i64 0}
!49 = !{!"_ZTSN4llvm10ilist_nodeIN4mlir9OperationEJEEE", !48, i64 0}
!50 = !{!"_ZTSN4llvm22ilist_node_with_parentIN4mlir9OperationENS1_5BlockEJEEE", !49, i64 0}
!51 = !{!"bool", !6, i64 0}
!52 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !10, i64 0}
!53 = !{!"_ZTSN4mlir13OperationNameE", !52, i64 0}
!54 = !{!"_ZTSN4mlir6detail15StorageUserBaseINS_14DictionaryAttrENS_9AttributeENS0_21DictionaryAttrStorageENS0_16AttributeUniquerEJEEE", !39, i64 0}
!55 = !{!"_ZTSN4mlir14DictionaryAttrE", !54, i64 0}
!56 = !{!"_ZTSN4mlir9OperationE", !50, i64 0, !24, i64 16, !41, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !51, i64 46, !6, i64 47, !53, i64 48, !55, i64 56}
!57 = !{!56, !24, i64 16}
!58 = !{!"p1 _ZTSN4mlir9OperationE", !10, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"p1 _ZTSN4llvm8DenseSetIPN4mlir9OpOperandENS_12DenseMapInfoIS3_vEEEE", !10, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"p1 _ZTSN4mlir13bufferization20OneShotAnalysisStateE", !10, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"p1 _ZTSSt8functionIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEE", !10, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"p1 _ZTSN4mlir12RewriterBaseE", !10, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!10, !10, i64 0}
!69 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPN4mlir9OpOperandEEE", !10, i64 0}
!70 = !{!"p1 int", !10, i64 0}
!71 = !{!"_ZTSN4llvm8DenseMapIPN4mlir9OpOperandENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEE", !69, i64 0, !70, i64 8, !7, i64 16, !7, i64 20}
!72 = !{!71, !7, i64 20}
!73 = !{!71, !69, i64 0}
!74 = !{!52, !52, i64 0}
!75 = !{!"_ZTSN4mlir6TypeIDE", !11, i64 0}
!76 = !{!75, !11, i64 0}
!77 = !{!"_ZTSSt14_Function_base", !6, i64 0, !10, i64 16}
!78 = !{!"_ZTSSt8functionIFN4mlir5ValueERNS0_12RewriterBaseENS0_26SubsetInsertionOpInterfaceENS0_6tensor7EmptyOpEPNS0_9OperationEEE", !77, i64 0, !10, i64 24}
!79 = !{!78, !10, i64 24}
!80 = !{!77, !10, i64 16}
!81 = !{!7, !7, i64 0}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIN4mlir5ValueEEE", !10, i64 0}
!84 = !{!"_ZTSN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !83, i64 0, !70, i64 8, !7, i64 16, !7, i64 20}
!85 = !{!84, !7, i64 20}
!86 = !{!84, !83, i64 0}
!87 = !{!"any p2 pointer", !10, i64 0}
!88 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir6detail18PassExecutionStateEE", !6, i64 0, !51, i64 72}
!89 = !{!88, !51, i64 72}
!90 = !{}
!91 = !{!21, !21, i64 0}
!92 = !{!"_ZTSZN4mlir11MLIRContext16getOrLoadDialectINS_13bufferization20BufferizationDialectEEEPT_vEUlvE_", !21, i64 0}
!93 = !{!92, !21, i64 0}
!94 = !{!"p1 _ZTSN4mlir7DialectE", !10, i64 0}
!95 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir7DialectELb0EE", !94, i64 0}
!96 = !{!95, !94, i64 0}
!97 = !{!"_ZTSZN4mlir11MLIRContext16getOrLoadDialectINS_6tensor13TensorDialectEEEPT_vEUlvE_", !21, i64 0}
!98 = !{!97, !21, i64 0}
!99 = !{!33, !32, i64 0}
!100 = !{!"p2 _ZTSN4mlir6detail13IROperandBaseE", !87, i64 0}
!101 = !{!"_ZTSN4mlir6detail13IROperandBaseE", !32, i64 0, !100, i64 8, !58, i64 16}
!102 = !{!101, !32, i64 0}
!103 = !{!101, !58, i64 16}
!104 = !{!101, !100, i64 8}
!105 = !{!32, !32, i64 0}
!106 = !{!71, !7, i64 16}
!107 = !{!71, !70, i64 8}
!108 = !{!"branch_weights", i32 1, i32 1048575}
!109 = !{!"_ZTSSt4pairIN4mlir6TypeIDEPvE", !75, i64 0, !10, i64 8}
!110 = !{!109, !10, i64 8}
!111 = distinct !{!111, i1 false, !"_ZN4mlir13bufferization4impl32createEmptyTensorEliminationPassEv"}
!112 = distinct !{!112, !111, !"_ZN4mlir13bufferization4impl32createEmptyTensorEliminationPassEv: argument 0"}
!113 = distinct !{!113, i1 false, !"_ZSt11make_uniqueIN12_GLOBAL__N_122EmptyTensorEliminationEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!114 = distinct !{!114, !113, !"_ZSt11make_uniqueIN12_GLOBAL__N_122EmptyTensorEliminationEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
end_hunk_2
