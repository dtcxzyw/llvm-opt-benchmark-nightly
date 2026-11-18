Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TransformOps?download=true
inline.NumInlined: 26617
inline.NumDeleted: 8590
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4mlir9transform16TransformResults3setIRN4llvm11SmallVectorIPNS_9OperationELj6EEEEEvNS_8OpResultEOT_:bb.a
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !432
  %i.ba = getelementptr inbounds [8 x i8], ptr %.03335.i, i64 %i.az ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.aa
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.036.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !111
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !432
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bh
  %.0.i.1 = add nuw nsw i64 %.036.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.0.i.1, %i.ag
  br i1 %exitcond.not.i.1, label %_ZN4mlir11RaggedArrayIPNS_9OperationEE7replaceIRN4llvm11SmallVectorIS2_Lj6EEEEEvmOT_.exit, label %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i, !llvm.loop !1338

_ZN4mlir11RaggedArrayIPNS_9OperationEE7replaceIRN4llvm11SmallVectorIS2_Lj6EEEEEvmOT_.exit: ; preds = %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i, %..loopexit_crit_edge.i, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i
  %i.bj = phi ptr [ %.pre38.i, %..loopexit_crit_edge.i ], [ %i.x, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i ], [ %i.x, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i ], [ %i.x, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit ]
  %i.bk = phi i32 [ %.pre.i, %..loopexit_crit_edge.i ], [ %i.ad, %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE5eraseEPKS3_S6_.exit.i ], [ %i.ad, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i ], [ %i.ad, %_ZSt9__advanceIPPN4mlir9OperationElEvRT_T0_St26random_access_iterator_tag.exit22.i.prol.loopexit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = zext i32 %i.bk to i64                   ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load ptr, ptr %2, align 8, !tbaa !116   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !113
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = tail call noundef ptr @_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE6insertIPS3_vEES6_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.bt) ; 0 uses
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !113
  %i.bw = zext i32 %i.bv to i64
  %i.bx = sub nsw i64 %i.bw, %i.bn
  %i.by = load ptr, ptr %0, align 8, !tbaa !116
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %.1.i.i ; 2 uses
  store i64 %i.bn, ptr %i.bz, align 8, !tbaa !432
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.bx, ptr %i.ca, align 8, !tbaa !433
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4mlir11PassManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6CastOp10applyToOneERNS0_17TransformRewriterEPNS_9OperationERNS0_21ApplyToEachResultListERNS0_14TransformStateE(ptr dead_on_unwind noalias writable sret(%"class.mlir::DiagnosedSilenceableFailure") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(328) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !114
  %.not.i.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !115

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.a)
  br label %_ZN4mlir9transform21ApplyToEachResultList9push_backEPNS_9OperationE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = load ptr, ptr %4, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  store i64 %i.a, ptr %i.h, align 1
  %i.i = load i32, ptr %i.b, align 8, !tbaa !113
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !113
  br label %_ZN4mlir9transform21ApplyToEachResultList9push_backEPNS_9OperationE.exit

_ZN4mlir9transform21ApplyToEachResultList9push_backEPNS_9OperationE.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %0, align 8, !tbaa !116, !alias.scope !1341
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !113, !alias.scope !1341
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !114, !alias.scope !1341
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.n, align 8, !tbaa !300, !alias.scope !1341
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform6CastOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir9transform16onlyReadsPayloadERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86
  tail call void @_ZN4mlir9transform15onlyReadsHandleEN4llvm15MutableArrayRefINS_9OpOperandEEERNS1_15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr %i.c, i64 1, ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.d = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !91   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.i = zext i32 %i.f to i64
  %.sroa.0.0.i.i = select i1 %i.g, ptr null, ptr %i.h
  tail call void @_ZN4mlir9transform14producesHandleENS_11ResultRangeERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr %.sroa.0.0.i.i, i64 %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  ret void
}

declare void @_ZN4mlir9transform16onlyReadsPayloadERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir9transform6CastOp17areCastCompatibleENS_9TypeRangeES2_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [2 x %"class.mlir::Type"], align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %0, i64 noundef 0) #26
  store ptr %i.a, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef 0) #26
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = call noundef ptr @_ZSt9__find_ifIPKN4mlir4TypeEN9__gnu_cxx5__ops12_Iter_negateIN4llvm6detail17IsaCheckPredicateIJNS0_9transform28TransformHandleTypeInterfaceEEEEEEET_SE_SE_T0_St26random_access_iterator_tag(ptr noundef nonnull %4, ptr noundef nonnull %i.d)
  %i.f = icmp eq ptr %i.d, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform17CollectMatchingOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE(ptr dead_on_unwind noalias writable sret(%"class.mlir::DiagnosedSilenceableFailure") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull align 8 dereferenceable(328) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::FunctionOpInterface", align 8 ; 5 uses
  %8 = alloca %"class.mlir::DiagnosedDefiniteFailure", align 8 ; 16 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SmallVector.1642", align 8 ; 12 uses
  %11 = alloca %"class.std::optional.1647", align 8 ; 11 uses
  %12 = alloca %class.anon.1657, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.h = tail call noundef ptr @_ZN4mlir11SymbolTable23lookupNearestSymbolFromEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef %i.a, ptr %.sroa.0.0.copyload.i.i.i) #26 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_19FunctionOpInterfaceEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.h)
  %.not.i.i.i.i20 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i20, label %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_19FunctionOpInterfaceEEET_PNS_9OperationENS_13SymbolRefAttrE.exit, label %_ZN4llvm20ValueFromPointerCastIN4mlir19FunctionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir19FunctionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.h)
  %.fca.0.insert.i.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i.i, ptr %i.j, 1
  br label %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_19FunctionOpInterfaceEEET_PNS_9OperationENS_13SymbolRefAttrE.exit

_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_19FunctionOpInterfaceEEET_PNS_9OperationENS_13SymbolRefAttrE.exit: ; preds = %bb.a, %bb.b, %_ZN4llvm20ValueFromPointerCastIN4mlir19FunctionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir19FunctionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i.i ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.k = extractvalue { ptr, ptr } %.pn.i.i.i, 0  ; 4 uses
  store ptr %i.k, ptr %7, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607
  %i.q = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.s = lshr i32 %i.o, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.s, 1
  %i.t = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t
  %i.v = lshr i32 %i.o, 21
  %i.w = and i32 %i.v, 2040
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !82
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !150
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.m

bb.c:                                             ; preds = %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_19FunctionOpInterfaceEEET_PNS_9OperationENS_13SymbolRefAttrE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %i.af, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ag, align 1, !tbaa !130
  %i.ah = load ptr, ptr %1, align 8, !tbaa !90, !noalias !1364
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.0.0.copyload.i.i.i21 = load ptr, ptr %i.ai, align 8, !noalias !1365
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 dereferenceable(208) %8, ptr %.sroa.0.0.copyload.i.i.i21, ptr noundef nonnull align 8 dereferenceable(34) %9) #26
  %i.aj = load ptr, ptr %8, align 8, !tbaa !104
  %.not.i.i.i.i22 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i22, label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit.thread, label %bb.d

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit.thread: ; preds = %bb.c
  %13 = load ptr, ptr %1, align 8, !tbaa !90
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 44
  %15 = load i32, ptr %14, align 4
  %.not.i.i.i.i2390 = icmp ugt i32 %15, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i2390)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 3, ptr %6, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.273, ptr %i.al, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 27, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !113 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !114
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.an, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e, !prof !115

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = zext i32 %i.an to i64
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !116
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.at = load i32, ptr %i.am, align 8, !tbaa !113
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.am, align 8, !tbaa !113
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pre73 = load ptr, ptr %8, align 8, !tbaa !104
  %i.av = icmp eq ptr %.pre73, null
  %i.aw = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %.not.i.i.i.i23 = icmp ugt i32 %i.ay, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i23)
  br i1 %i.av, label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ba = lshr i32 %i.ay, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i24 = and i32 %i.ba, 1
  %i.bb = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i24 to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bb
  %.sroa.0.0.copyload.i.i.i25 = load ptr, ptr %i.bc, align 8, !tbaa !160
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %.sroa.0.0.copyload.i.i.i25) #26
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !113 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !114
  %.not.i.i.i.i.i.i.i27 = icmp ult i32 %i.bf, %i.bh
  br i1 %.not.i.i.i.i.i.i.i27, label %bb.i, label %bb.h, !prof !115

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bi = zext i32 %i.bf to i64
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !116
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.bl = load i32, ptr %i.be, align 8, !tbaa !113
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.be, align 8, !tbaa !113
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i.i.i

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit.thread, %_ZNO4mlir24DiagnosedDefiniteFailurelsIRA28_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #26, !noalias !1366
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %0, align 8, !tbaa !116, !alias.scope !1367
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bo, align 8, !tbaa !113, !alias.scope !1367
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.bp, align 4, !tbaa !114, !alias.scope !1367
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.bq, align 8, !tbaa !300, !alias.scope !1367
  %i.br = load ptr, ptr %8, align 8, !tbaa !104
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir24DiagnosedDefiniteFailurelsINS_13SymbolRefAttrEEEOS0_OT_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !117, !range !118, !noundef !119
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.l, label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %i.bs, align 8, !tbaa !117
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bv) #26
  br label %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit

_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit:      ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.z

bb.m:                                             ; preds = %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_19FunctionOpInterfaceEEET_PNS_9OperationENS_13SymbolRefAttrE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.bw, ptr %10, align 8, !tbaa !116
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.bx, align 8, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 2, ptr %i.by, align 4, !tbaa !114
  %i.bz = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 36
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !91 ; 5 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = icmp eq i32 %i.cb, 0
  br i1 %i.cd, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE6resizeEm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = icmp ugt i32 %i.cb, 2
  br i1 %i.ce, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i, label %.lr.ph.preheader.i.i

_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i: ; preds = %bb.n
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %i.cc)
  %.pre.i.i = load i32, ptr %i.bx, align 8, !tbaa !113 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.cb, %.pre.i.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge

_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge: ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i
  %.pre13.i.i = zext i32 %.pre.i.i to i64
  %.pre = load ptr, ptr %10, align 8, !tbaa !116
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge, %bb.n
  %i.cf = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ %i.bw, %bb.n ] ; 2 uses
  %.pre-phi.i.i64 = phi i64 [ %.pre13.i.i, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge ], [ 0, %bb.n ]
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %i.cc
  %i.ch = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %.pre-phi.i.i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.012.i.i = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %i.ch, %.lr.ph.preheader.i.i ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16
  store ptr %i.ci, ptr %.012.i.i, align 8, !tbaa !116
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  store i32 0, ptr %i.cj, align 8, !tbaa !113
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 12
  store i32 6, ptr %i.ck, align 4, !tbaa !114
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.cl, %i.cg
  br i1 %.not.i.i28, label %.sink.split.i.i, label %.lr.ph.i.i, !llvm.loop !38

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE7reserveEm.exit.i.i
  store i32 %i.cb, ptr %i.bx, align 8, !tbaa !113
  %.pre72 = load ptr, ptr %1, align 8, !tbaa !90
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE6resizeEm.exit

_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE6resizeEm.exit: ; preds = %bb.m, %.sink.split.i.i
  %i.cm = phi ptr [ %i.bz, %bb.m ], [ %.pre72, %.sink.split.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 216 ; 3 uses
  store i8 0, ptr %i.cn, align 8, !tbaa !435
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !86
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !134
  %i.cr = call { ptr, i64 } @_ZNK4mlir9transform14TransformState17getPayloadOpsViewENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(328) %4, ptr %.sroa.0.0.copyload.i.i.i.i) #26, !noalias !1368 ; 2 uses
  %i.cs = extractvalue { ptr, i64 } %i.cr, 0      ; 3 uses
  %i.ct = extractvalue { ptr, i64 } %i.cr, 1      ; 2 uses
  %.idx.i.i = shl i64 %i.ct, 3
  %i.cu = getelementptr i8, ptr %i.cs, i64 %.idx.i.i ; 5 uses
  %.not2.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not2.i.i.i.i.i, label %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE6resizeEm.exit, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.cw, %bb.o ], [ %i.cs, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE6resizeEm.exit ] ; 3 uses
  %i.cv = load ptr, ptr %.sroa.010.0.i.i, align 8, !tbaa !332, !noalias !1369
  %.not1.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not1.i.i.i.i.i, label %bb.o, label %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.cw, %i.cu
  br i1 %.not.i.i.i.i.i30, label %.critedge, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE6resizeEm.exit
  %.sroa.010.1.i.i = phi ptr [ %i.cs, %_ZN4llvm15SmallVectorImplINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEEE6resizeEm.exit ], [ %.sroa.010.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not69 = icmp eq ptr %.sroa.010.1.i.i, %i.cu
  br i1 %.not69, label %.critedge, label %.lr.ph71

.lr.ph71:                                         ; preds = %_ZNK4mlir9transform14TransformState13getPayloadOpsENS_5ValueE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.db = ptrtoint ptr %12 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph71, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit
  %.sroa.054.070 = phi ptr [ %.sroa.010.1.i.i, %.lr.ph71 ], [ %.sroa.054.2, %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit ] ; 2 uses
  %i.dc = load ptr, ptr %.sroa.054.070, align 8, !tbaa !332
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %7, ptr %12, align 8, !tbaa !1370
  store ptr %4, ptr %i.cx, align 8, !tbaa !416
  store ptr %11, ptr %i.cy, align 8, !tbaa !1371
  store ptr %1, ptr %i.cz, align 8, !tbaa !441
  store ptr %10, ptr %i.da, align 8, !tbaa !1372
  %i.dd = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.dc, ptr nonnull @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_9transform17CollectMatchingOp5applyERNS8_17TransformRewriterERNS8_16TransformResultsERNS8_14TransformStateEE3$_0EES2_lS4_", i64 %i.db, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.df, ptr %0, align 8, !tbaa !116
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.dg, align 8, !tbaa !113
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.dh, align 4, !tbaa !114
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !113
  %.not.i.i.i31 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i31, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir10DiagnosticEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(209) %11) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !300
  store i8 %i.dn, ptr %i.dl, align 8, !tbaa !300
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.do = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !91 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.do, i64 -16
  %i.ds = zext i32 %i.dq to i64
  %.not6566 = icmp eq i32 %i.dq, 0
  br i1 %.not6566, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.dt = load ptr, ptr %10, align 8, !tbaa !116, !noalias !1373
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.041.068 = phi ptr [ %i.ea, %.lr.ph ], [ %i.dt, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.067 = phi i64 [ %i.dz, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.du = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 noundef %.sroa.8.067) #26, !noalias !1374
  %i.dv = load ptr, ptr %.sroa.041.068, align 8, !tbaa !116
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.041.068, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !113
  %i.dy = zext i32 %i.dx to i64
  call void @_ZN4mlir9transform16TransformResults15setMappedValuesENS_8OpResultEN4llvm8ArrayRefINS3_12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEEE(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr %i.du, ptr %i.dv, i64 %i.dy) #26
  %i.dz = add nuw nsw i64 %.sroa.8.067, 1         ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.041.068, i64 64
  %.not65 = icmp eq i64 %i.dz, %i.ds
  br i1 %.not65, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.054.070, i64 8 ; 3 uses
  %.not2.i.i = icmp eq ptr %i.eb, %i.cu
  br i1 %.not2.i.i, label %_ZN4llvm20filter_iterator_baseIPKPN4mlir9OperationEZNKS1_9transform14TransformState13getPayloadOpsENS1_5ValueEEUlS3_E_St26bidirectional_iterator_tagEppEv.exit, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %._crit_edge, %bb.t
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform17CollectMatchingOp5applyERNS0_17TransformRewriterERNS0_16TransformResultsERNS0_14TransformStateE:bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ef, align 8, !tbaa !113, !alias.scope !1375
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.eg, align 4, !tbaa !114, !alias.scope !1375
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.eh, align 8, !tbaa !300, !alias.scope !1375
  br label %bb.u

bb.u:                                             ; preds = %.thread, %.critedge
  %i.ei = load i8, ptr %i.cn, align 8, !tbaa !435, !range !118, !noundef !119
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.v, label %_ZNSt14_Optional_baseIN4mlir27DiagnosedSilenceableFailureELb0ELb0EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.cn, align 8, !tbaa !435
  %i.ek = load ptr, ptr %11, align 8, !tbaa !116  ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.em, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.v
  %i.en = zext i32 %i.em to i64
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.en, 192
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i ], [ %i.eo, %.lr.ph.i.preheader.i.i.i.i.i.i ]
  %i.ep = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -192 ; 3 uses
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.ep) #26
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ek, %i.ep
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !28

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !116
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i, %bb.v
  %i.eq = phi ptr [ %.pre.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i.i.i.i.i ], [ %i.ek, %bb.v ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt14_Optional_baseIN4mlir27DiagnosedSilenceableFailureELb0ELb0EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i
  call void @free(ptr noundef %i.eq) #26
  br label %_ZNSt14_Optional_baseIN4mlir27DiagnosedSilenceableFailureELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir27DiagnosedSilenceableFailureELb0ELb0EED2Ev.exit: ; preds = %bb.u, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i.i.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.et = load ptr, ptr %10, align 8, !tbaa !116  ; 3 uses
  %i.eu = load i32, ptr %i.bx, align 8, !tbaa !113 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt14_Optional_baseIN4mlir27DiagnosedSilenceableFailureELb0ELb0EED2Ev.exit
  %i.ev = zext i32 %i.eu to i64
  %.idx.i = shl nuw nsw i64 %i.ev, 6
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 %.idx.i
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ex, %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i.i ], [ %i.ew, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !116 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.05.i.i, i64 -48
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i36
  call void @free(ptr noundef %i.ey) #26
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i.i: ; preds = %bb.x, %.lr.ph.i.i36
  %.not.i.i37 = icmp eq ptr %i.et, %i.ex
  br i1 %.not.i.i37, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i, label %.lr.ph.i.i36, !llvm.loop !39

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i: ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !116
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i, %_ZNSt14_Optional_baseIN4mlir27DiagnosedSilenceableFailureELb0ELb0EED2Ev.exit
  %i.fb = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.loopexit.i ], [ %i.et, %_ZNSt14_Optional_baseIN4mlir27DiagnosedSilenceableFailureELb0ELb0EED2Ev.exit ] ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.bw
  br i1 %i.fc, label %_ZN4llvm11SmallVectorINS0_INS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EEELj2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.i
  call void @free(ptr noundef %i.fb) #26
  br label %_ZN4llvm11SmallVectorINS0_INS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EEELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS0_INS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS3_9AttributeENS3_5ValueEEEELj6EEELb0EE13destroy_rangeEPS9_SB_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11SmallVectorINS0_INS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EEELj2EED2Ev.exit, %_ZN4mlir24DiagnosedDefiniteFailureD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void
}

declare void @_ZN4mlir9transform16TransformResults15setMappedValuesENS_8OpResultEN4llvm8ArrayRefINS3_12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEEE(ptr noundef nonnull align 8 dereferenceable(384), ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform17CollectMatchingOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86
  tail call void @_ZN4mlir9transform15onlyReadsHandleEN4llvm15MutableArrayRefINS_9OpOperandEEERNS1_15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr %i.c, i64 1, ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  %i.d = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !91   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.i = zext i32 %i.f to i64
  %.sroa.0.0.i.i = select i1 %i.g, ptr null, ptr %i.h
  tail call void @_ZN4mlir9transform14producesHandleENS_11ResultRangeERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr %.sroa.0.0.i.i, i64 %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  tail call void @_ZN4mlir9transform16onlyReadsPayloadERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform17CollectMatchingOp16verifySymbolUsesERNS_21SymbolTableCollectionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DictionaryAttr", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::FunctionOpInterface", align 8 ; 7 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 16 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %17 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %19 = alloca %"class.mlir::ValueTypeRange", align 8 ; 5 uses
  %20 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.c = load ptr, ptr %0, align 8, !tbaa !90     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.e, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = lshr i32 %i.e, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !160
  %i.j = load ptr, ptr %1, align 8, !tbaa !143
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.c, ptr %.sroa.0.0.copyload.i.i.i) #26 ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN4llvm16dyn_cast_or_nullIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDaPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.m)
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4llvm16dyn_cast_or_nullIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDaPT0_.exit, label %_ZN4llvm20ValueFromPointerCastIN4mlir19FunctionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir19FunctionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i: ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.m)
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.m, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %i.o, 1
  br label %_ZN4llvm16dyn_cast_or_nullIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDaPT0_.exit: ; preds = %bb.a, %bb.b, %_ZN4llvm20ValueFromPointerCastIN4mlir19FunctionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i
  %.pn.i.i = phi { ptr, ptr } [ zeroinitializer, %bb.a ], [ %.fca.1.insert.i.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir19FunctionOpInterfaceENS1_9OperationENS_8CastInfoIS2_PS3_vEEE6doCastES5_.exit.i.i.i ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.p = extractvalue { ptr, ptr } %.pn.i.i, 0    ; 3 uses
  store ptr %i.p, ptr %10, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %.pn.i.i, 1
  store ptr %i.r, ptr %i.q, align 8
  %.not71 = icmp eq ptr %i.p, null
  br i1 %.not71, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDaPT0_.exit
  %i.s = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_9transform20TransformOpInterfaceENS1_6detail35TransformOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.p)
  %.not72 = icmp eq ptr %i.s, null
  br i1 %.not72, label %.critedge, label %bb.m

.critedge:                                        ; preds = %_ZN4llvm16dyn_cast_or_nullIN4mlir19FunctionOpInterfaceENS1_9OperationEEEDaPT0_.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.t, align 8, !tbaa !132
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !130
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #26
  %i.v = load ptr, ptr %11, align 8, !tbaa !104
  %.not.i.i16 = icmp eq ptr %i.v, null
  br i1 %.not.i.i16, label %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit.thread, label %bb.d

_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit.thread: ; preds = %.critedge
  %22 = load ptr, ptr %0, align 8, !tbaa !90
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 44
  %24 = load i32, ptr %23, align 4
  %.not.i.i.i.i1792 = icmp ugt i32 %24, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i1792)
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 3, ptr %9, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.274, ptr %i.x, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 26, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !113  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !114
  %.not.i.i.i.i.i = icmp ult i32 %i.z, %i.ab
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !115

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = zext i32 %i.z to i64
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !116
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.af = load i32, ptr %i.y, align 8, !tbaa !113
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !113
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %.pre = load ptr, ptr %11, align 8, !tbaa !104
  %i.ah = icmp eq ptr %.pre, null
  %i.ai = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %.not.i.i.i.i17 = icmp ugt i32 %i.ak, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i17)
  br i1 %i.ah, label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.am = lshr i32 %i.ak, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i18 = and i32 %i.am, 1
  %i.an = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i18 to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.an
  %.sroa.0.0.copyload.i.i.i19 = load ptr, ptr %i.ao, align 8, !tbaa !160
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %.sroa.0.0.copyload.i.i.i19) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !113 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !114
  %.not.i.i.i.i.i21 = icmp ult i32 %i.ar, %i.at
  br i1 %.not.i.i.i.i.i21, label %bb.i, label %bb.h, !prof !115

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.au = zext i32 %i.ar to i64
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !116
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !113
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aq, align 8, !tbaa !113
  br label %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIRA27_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendINS_13SymbolRefAttrEEERS0_OT_.exit.i.i
  %i.az = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #26
  %i.ba = load ptr, ptr %11, align 8, !tbaa !104
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsINS_13SymbolRefAttrEEEOS0_OT_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !117, !range !118, !noundef !119
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.bb, align 8, !tbaa !117
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.be) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.loopexit

bb.m:                                             ; preds = %bb.c
  %i.bf = call { ptr, i64 } @_ZN4mlir19FunctionOpInterface16getArgumentTypesEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #26 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1
  %.not = icmp eq i64 %i.bg, 1
  br i1 %.not, label %bb.n, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bh = extractvalue { ptr, i64 } %i.bf, 0
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bh, align 8, !tbaa !121
  %i.bi = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !137 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, !prof !138

bb.o:                                             ; preds = %bb.n
  %i.bm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.369, i64 49), i64 45) #26
  store ptr %i.bn, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !96 ; 2 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !116 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.br, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bs = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i, i64 %i.bs ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !96
  %i.bu = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bw = xor i64 %i.bs, -1
  %i.bx = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i, %i.bw
  %.112.i.i.i.i.i.i.i.i.i.i = select i1 %i.bu, ptr %i.bv, ptr %.01116.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i = select i1 %i.bu, i64 %i.bx, i64 %i.bs ; 2 uses
  %i.by = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.br, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bo, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.pre-phi.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, %i.bz
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i
  %i.ca = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !124
  %i.cb = icmp eq ptr %i.ca, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i
  br i1 %i.cb, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !140
  %.not73 = icmp eq ptr %i.cd, null
  br i1 %.not73, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.x

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i, %bb.q, %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 1, ptr %i.ce, align 8, !tbaa !132
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.cf, align 1, !tbaa !130
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %14) #26
  %i.cg = load ptr, ptr %13, align 8, !tbaa !104
  %.not.i.i22 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i22, label %_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 3, ptr %7, align 8, !tbaa !107
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.275, ptr %i.ci, align 8, !tbaa !109
  %.sroa.2.0..sroa_idx.i.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 58, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i23, align 8, !tbaa !111
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !113 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !114
  %.not.i.i.i.i.i24 = icmp ult i32 %i.ck, %i.cm
  br i1 %.not.i.i.i.i.i24, label %bb.t, label %bb.s, !prof !115

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.cn = zext i32 %i.ck to i64
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !116
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.cq = load i32, ptr %i.cj, align 8, !tbaa !113
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cj, align 8, !tbaa !113
  br label %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit: ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread, %_ZN4mlir10Diagnostic6appendIRA59_KcEERS0_OT_.exit.i.i
  %i.cs = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #26
  %i.ct = load ptr, ptr %13, align 8, !tbaa !104
  %.not.i25 = icmp eq ptr %i.ct, null
  br i1 %.not.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNO4mlir18InFlightDiagnosticlsIRA59_KcEEOS0_OT_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 200 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !117, !range !118, !noundef !119
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.w, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit26

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.cu, align 8, !tbaa !117
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cx) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit26

_ZN4mlir18InFlightDiagnosticD2Ev.exit26:          ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.loopexit

bb.x:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.sroa.0.0.copyload.i.i = load ptr, ptr %10, align 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %i.q, align 8
  %i.cy = call ptr @_ZN4mlir23function_interface_impl14getArgAttrDictENS_19FunctionOpInterfaceEj(ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i32 noundef 0) #26 ; 2 uses
  store ptr %i.cy, ptr %6, align 8
  %.not.i27 = icmp eq ptr %i.cy, null
  br i1 %.not.i27, label %_ZN4mlir19FunctionOpInterface10getArgAttrEjN4llvm9StringRefE.exit.thread, label %_ZN4mlir19FunctionOpInterface10getArgAttrEjN4llvm9StringRefE.exit

_ZN4mlir19FunctionOpInterface10getArgAttrEjN4llvm9StringRefE.exit.thread: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.y

_ZN4mlir19FunctionOpInterface10getArgAttrEjN4llvm9StringRefE.exit: ; preds = %bb.x
  %i.cz = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nonnull @.str.461, i64 18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN4mlir19FunctionOpInterface10getArgAttrEjN4llvm9StringRefE.exit.thread, %_ZN4mlir19FunctionOpInterface10getArgAttrEjN4llvm9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.db = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 1, ptr %i.db, align 8, !tbaa !132
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.dc, align 1, !tbaa !130
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %16) #26
  %i.dd = load ptr, ptr %15, align 8, !tbaa !104
  %.not.i.i28 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i28, label %_ZNO4mlir18InFlightDiagnosticlsIRA52_KcEEOS0_OT_.exit, label %bb.z

end_hunk_1
