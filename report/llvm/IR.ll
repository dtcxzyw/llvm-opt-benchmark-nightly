Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IR?download=true
inline.NumInlined: 3217
inline.NumDeleted: 1686
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4mlir12ParserConfigD2Ev:bb.a

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4mlir20BytecodeReaderConfigD2Ev.exit
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !318
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !319
  %i.aj = zext i32 %i.ae to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !145 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !321 ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i1, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4mlir17AsmResourceParserEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir17AsmResourceParserEEclEPS1_.exit.i.i.i.i: ; preds = %bb.d
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #27, !inline_history !310
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir17AsmResourceParserEEclEPS1_.exit.i.i.i.i, %bb.d
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !311

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i2 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i2, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !312

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.ad, align 4, !tbaa !317 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !318
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = mul nuw nsw i64 %i.bc, 24
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS4_EENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit: ; preds = %_ZN4mlir20BytecodeReaderConfigD2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrIN4mlir17AsmResourceParserESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @mlirModuleCreateParseFromFile(ptr %0, ptr %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.mlir::LocationAttr", align 8 ; 5 uses
  %4 = alloca %"class.mlir::Block", align 8       ; 10 uses
  %5 = alloca %"class.mlir::OwningOpRef", align 8 ; 5 uses
  %6 = alloca %"class.mlir::ParserConfig", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %0, ptr %6, align 8, !tbaa !120
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 6, ptr %i.f, align 4, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 128
  store ptr %i.h, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i32 6, ptr %i.j, align 4, !tbaa !62
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !328
  store ptr null, ptr %3, align 8, !tbaa !122, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !328
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 32, i1 false), !noalias !328
  store i32 -1, ptr %i.k, align 8, !tbaa !139, !noalias !328
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store ptr %i.l, ptr %i.l, align 8, !tbaa !140, !noalias !328
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.l, ptr %i.m, align 8, !tbaa !141, !noalias !328
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !328
  %i.o = call i8 @_ZN4mlir15parseSourceFileEN4llvm9StringRefEPNS_5BlockERKNS_12ParserConfigEPNS_12LocationAttrE(ptr %1, i64 %2, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(176) %6, ptr noundef nonnull %3) #27, !noalias !328
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %5, align 8, !tbaa !144, !alias.scope !328
  br label %_ZN4mlir15parseSourceFileINS_8ModuleOpEEENS_11OwningOpRefIT_EEN4llvm9StringRefERKNS_12ParserConfigE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %6, align 8, !tbaa !120, !noalias !328
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8, !noalias !328
  call void @_ZN4mlir6detail40constructContainerOpForParserIfNecessaryINS_8ModuleOpEEENS_11OwningOpRefIT_EEPNS_5BlockEPNS_11MLIRContextENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::OwningOpRef") align 8 %5, ptr noundef nonnull %4, ptr noundef %i.q, ptr %.sroa.0.0.copyload.i.i)
  br label %_ZN4mlir15parseSourceFileINS_8ModuleOpEEENS_11OwningOpRefIT_EEN4llvm9StringRefERKNS_12ParserConfigE.exit

_ZN4mlir15parseSourceFileINS_8ModuleOpEEENS_11OwningOpRefIT_EEN4llvm9StringRefERKNS_12ParserConfigE.exit: ; preds = %bb.b, %bb.c
  call void @_ZN4mlir5BlockD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !328
  call void @_ZN4mlir12ParserConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.r = load ptr, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @mlirModuleGetContext(ptr %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define dso_local nonnull ptr @mlirModuleGetBody(ptr nofree readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 8388607
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f
  %i.h = lshr i32 %i.b, 21
  %i.i = and i32 %i.h, 2040
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !146
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !141
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @mlirModuleDestroy(ptr %0) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #27
  br label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit

_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit:    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @mlirModuleGetOperation(ptr nofree readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @mlirModuleFromOperation(ptr nofree readonly captures(ret: address, provenance) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.d = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i = select i1 %i.d, ptr %0, ptr null
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @mlirModuleEqual(ptr nofree readnone captures(address) %0, ptr nofree readnone captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @mlirModuleHashValue(ptr %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon, align 1                ; 3 uses
  %2 = alloca %class.anon.145, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = ptrtoint ptr %2 to i64
  %i.c = call i64 @_ZN4mlir20OperationEquivalence11computeHashEPNS_9OperationEN4llvm12function_refIFNS3_9hash_codeENS_5ValueEEEES8_NS0_5FlagsE(ptr noundef %0, ptr nonnull @_ZN4llvm12function_refIFNS_9hash_codeEN4mlir5ValueEEE11callback_fnIZNS2_20OperationEquivalence11computeHashEPNS2_9OperationES5_S5_NS7_5FlagsEEd1_UlS3_E_EES1_lS3_, i64 %i.a, ptr nonnull @_ZN4llvm12function_refIFNS_9hash_codeEN4mlir5ValueEEE11callback_fnIZNS2_20OperationEquivalence11computeHashEPNS2_9OperationES5_S5_NS7_5FlagsEEd0_UlS3_E_EES1_lS3_, i64 %i.b, i32 noundef 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i64 %i.c
}

declare i64 @_ZN4mlir20OperationEquivalence11computeHashEPNS_9OperationEN4llvm12function_refIFNS3_9hash_codeENS_5ValueEEEES8_NS0_5FlagsE(ptr noundef, ptr, i64, ptr, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @mlirOperationStateGet(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.MlirOperationState) align 8 captures(none) initializes((0, 105)) %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #11 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %i.b, i8 0, i64 81, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @mlirOperationStateAddResults(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !158
  %i.e = add nsw i64 %i.d, %1
  %i.f = shl i64 %i.e, 3
  %i.g = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.f) #29 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !157
  %i.h = load i64, ptr %i.c, align 8, !tbaa !158  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = shl i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %2, i64 %i.j, i1 false)
  %i.k = add nsw i64 %i.h, %1
  store i64 %i.k, ptr %i.c, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @mlirOperationStateAddOperands(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !160
  %i.e = add nsw i64 %i.d, %1
  %i.f = shl i64 %i.e, 3
  %i.g = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.f) #29 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !159
  %i.h = load i64, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = shl i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %2, i64 %i.j, i1 false)
  %i.k = add nsw i64 %i.h, %1
  store i64 %i.k, ptr %i.c, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @mlirOperationStateAddOwnedRegions(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !162
  %i.e = add nsw i64 %i.d, %1
  %i.f = shl i64 %i.e, 3
  %i.g = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.f) #29 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !161
  %i.h = load i64, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = shl i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %2, i64 %i.j, i1 false)
  %i.k = add nsw i64 %i.h, %1
  store i64 %i.k, ptr %i.c, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @mlirOperationStateAddSuccessors(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !164
  %i.e = add nsw i64 %i.d, %1
  %i.f = shl i64 %i.e, 3
  %i.g = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.f) #29 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !163
  %i.h = load i64, ptr %i.c, align 8, !tbaa !164  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = shl i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %2, i64 %i.j, i1 false)
  %i.k = add nsw i64 %i.h, %1
  store i64 %i.k, ptr %i.c, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @mlirOperationStateAddAttributes(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !166
  %i.e = add nsw i64 %i.d, %1
  %i.f = shl i64 %i.e, 4
  %i.g = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %i.f) #29 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !165
  %i.h = load i64, ptr %i.c, align 8, !tbaa !166  ; 2 uses
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.h
  %i.j = shl i64 %1, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %2, i64 %i.j, i1 false)
  %i.k = add nsw i64 %i.h, %1
  store i64 %i.k, ptr %i.c, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @mlirOperationStateEnableResultTypeInference(ptr nofree noundef writeonly captures(none) initializes((104, 105)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.a, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @mlirOperationCreate(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvm::function_ref.353", align 8 ; 5 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %8 = alloca %"class.mlir::DictionaryAttr", align 8 ; 8 uses
  %9 = alloca %class.anon.352, align 8            ; 5 uses
  %10 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %11 = alloca %"class.mlir::PropertyRef", align 8 ; 6 uses
  %12 = alloca %"class.mlir::RegionRange", align 8 ; 5 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 6 uses
  %14 = alloca %"class.mlir::PropertyRef", align 16 ; 5 uses
  %15 = alloca %"class.mlir::RegionRange", align 8 ; 5 uses
  %16 = alloca %"class.mlir::NamedAttribute", align 8 ; 5 uses
  %17 = alloca %"struct.mlir::OperationState", align 8 ; 32 uses
  %18 = alloca %"class.llvm::SmallVector.152", align 8 ; 11 uses
  %19 = alloca %"class.llvm::SmallVector.176", align 8 ; 11 uses
  %20 = alloca %"class.llvm::SmallVector.178", align 8 ; 11 uses
  %21 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %22 = alloca %"class.mlir::BlockRange", align 8 ; 3 uses
  %23 = alloca %"class.std::unique_ptr.193", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.021.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !85
  %.sroa.017.0.copyload = load ptr, ptr %0, align 8, !tbaa !24
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.218.0.copyload = load i64, ptr %.sroa.218.0..sroa_idx, align 8, !tbaa !25
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %17, ptr %.sroa.021.0.copyload, ptr %.sroa.017.0.copyload, i64 %.sroa.218.0.copyload) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.b = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.b, ptr %18, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  store i32 4, ptr %i.d, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.e = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.e, ptr %19, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 3 uses
  store i32 8, ptr %i.g, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E8moveFromERSA_:bb.a
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !230
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN4mlir9OperationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationES7_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S7_EEEES7_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !241  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !238  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !238  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !241
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !242
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !239
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #27
  store i32 0, ptr %i.r, align 4, !tbaa !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !238
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit
  %i.ab = shl nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 4
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 8) #27 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !238 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !239
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !242
  store i32 0, ptr %i.a, align 8, !tbaa !241
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIN4mlir5ValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir8LocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load i32, ptr %i.a, align 8, !tbaa !28
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !28
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFv13MlirStringRefPvEPS2_E9_M_invokeERKSt9_Any_dataOS0_OS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !85
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !25
  %i.b = load ptr, ptr %2, align 8, !tbaa !85
  tail call void %i.a(ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i, ptr noundef %i.b) #27, !inline_history !576
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFv13MlirStringRefPvEPS2_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFv13MlirStringRefPvEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIPFv13MlirStringRefPvEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !85
  br label %_ZNSt14_Function_base13_Base_managerIPFv13MlirStringRefPvEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFv13MlirStringRefPvEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFv13MlirStringRefPvEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split: ; preds = %bb.b, %bb.a, %.sink.split.i
  %.sink.i.sink = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ], [ null, %.sink.split.i ]
  store ptr %.sink.i.sink, ptr %0, align 8, !tbaa !85
  br label %_ZNSt14_Function_base13_Base_managerIPFv13MlirStringRefPvEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFv13MlirStringRefPvEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFv13MlirStringRefPvEE10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare i8 @_ZN4mlir17parseSourceStringEN4llvm9StringRefEPNS_5BlockERKNS_12ParserConfigES1_PNS_12LocationAttrE(ptr, i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail40constructContainerOpForParserIfNecessaryINS_8ModuleOpEEENS_11OwningOpRefIT_EEPNS_5BlockEPNS_11MLIRContextENS_8LocationE(ptr dead_on_unwind noalias writable sret(%"class.mlir::OwningOpRef") align 8 %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #8 comdat {
bb.a:
  %4 = alloca %"class.mlir::OpBuilder", align 8   ; 5 uses
  %5 = alloca %"class.mlir::ModuleOp", align 8    ; 4 uses
  %6 = alloca %"class.std::optional.125", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread

bb.b:                                             ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef nonnull %i.b) #27 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !147
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.k = icmp eq ptr %i.j, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  br i1 %i.k, label %bb.c, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4mlir9Operation6removeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #27
  store ptr %i.g, ptr %0, align 8
  br label %bb.h

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread: ; preds = %bb.b, %bb.a, %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %2, ptr %4, align 8, !tbaa !578
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !104
  %i.n = call ptr @_ZN4mlir8ModuleOp6createERNS_9OpBuilderENS_8LocationESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %3, ptr noundef nonnull byval(%"class.std::optional.125") align 8 %6) #27 ; 6 uses
  store ptr %i.n, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = and i32 %i.p, 8388607
  %i.r = icmp ne i32 %i.q, 0
  call void @llvm.assume(i1 %i.r)
  %i.s = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.s, 1
  %i.t = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.t
  %i.v = lshr i32 %i.p, 21
  %i.w = and i32 %i.v, 2040
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !146
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !141 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !141 ; 4 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !140
  %i.aj = icmp eq ptr %i.c, %i.ai
  br i1 %i.aj, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !141 ; 5 uses
  %i.al = icmp eq ptr %i.ah, %i.c
  br i1 %i.al, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm12ilist_traitsIN4mlir9OperationEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr %i.ak, ptr nonnull align 8 dereferenceable(16) %i.c) #27
  %i.am = icmp eq ptr %i.ak, %i.c
  br i1 %i.am, label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !140 ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !140 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.c, ptr %i.ap, align 8, !tbaa !141
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !140
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !140 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ah, ptr %i.ar, align 8, !tbaa !141
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !140
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ak, ptr %i.as, align 8, !tbaa !141
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !140
  br label %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit

_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit: ; preds = %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread, %bb.d, %bb.e, %bb.f
  %i.at = call i8 @_ZN4mlir8ModuleOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.n) #27
  br label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit

_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit:    ; preds = %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit, %bb.g
  %.sink = phi ptr [ null, %bb.g ], [ %i.n, %_ZN4llvm11iplist_implINS_12simple_ilistIN4mlir9OperationEJEEENS_12ilist_traitsIS3_EEE6spliceENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvLb0EvEELb0ELb0EEERS7_.exit ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit
  ret void
}

declare ptr @_ZN4mlir8ModuleOp6createERNS_9OpBuilderENS_8LocationESt8optionalIN4llvm9StringRefEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr noundef byval(%"class.std::optional.125") align 8) local_unnamed_addr #3

declare i8 @_ZN4mlir8ModuleOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsIN4mlir9OperationEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #3

declare i8 @_ZN4mlir15parseSourceFileEN4llvm9StringRefEPNS_5BlockERKNS_12ParserConfigEPNS_12LocationAttrE(ptr, i64, ptr noundef, ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm12function_refIFNS_9hash_codeEN4mlir5ValueEEE11callback_fnIZNS2_20OperationEquivalence11computeHashEPNS2_9OperationES5_S5_NS7_5FlagsEEd1_UlS3_E_EES1_lS3_(i64 noundef %0, ptr %1) #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = xor i64 %i.a, -49064778989728563         ; 2 uses
  %i.c = lshr i64 %i.b, 30
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -4658895280553007687       ; 2 uses
  %i.f = lshr i64 %i.e, 27
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -7723592293110705685       ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm12function_refIFNS_9hash_codeEN4mlir5ValueEEE11callback_fnIZNS2_20OperationEquivalence11computeHashEPNS2_9OperationES5_S5_NS7_5FlagsEEd0_UlS3_E_EES1_lS3_(i64 noundef %0, ptr %1) #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = xor i64 %i.a, -49064778989728563         ; 2 uses
  %i.c = lshr i64 %i.b, 30
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -4658895280553007687       ; 2 uses
  %i.f = lshr i64 %i.e, 27
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -7723592293110705685       ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  ret i64 %i.j
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load i32, ptr %i.a, align 8, !tbaa !28
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !28
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load i32, ptr %i.a, align 8, !tbaa !28
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !28
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = load i32, ptr %i.a, align 8, !tbaa !28
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !28
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir6detail40constructContainerOpForParserIfNecessaryIPNS_9OperationEEENS_11OwningOpRefIT_EEPNS_5BlockEPNS_11MLIRContextENS_8LocationE(ptr dead_on_unwind noalias writable sret(%"class.mlir::OwningOpRef.201") align 8 %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #8 comdat {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit: ; preds = %bb.a
end_hunk_1
