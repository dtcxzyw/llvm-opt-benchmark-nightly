Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineLoopInvariantCodeMotion?download=true
inline.NumInlined: 891
inline.NumDeleted: 648
begin_hunk_0_@_ZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %2, ptr %1, align 8, !tbaa !25
  %i.d = ptrtoint ptr %1 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3$_0NS1_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_", i64 %i.d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.not.i.i = icmp eq i64 %i.d, %.sroa.4.0.copyload
  %or.cond = select i1 %i.f, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i = call i32 @bcmp(ptr %i.c, ptr %.sroa.0.0.copyload, i64 %i.d)
  %i.h = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit

_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ true, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nonnull %.sroa.0.0.copyload.i) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir6affine4impl33AffineLoopInvariantCodeMotionBaseIN12_GLOBAL__N_123LoopInvariantCodeMotionEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.26") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_123LoopInvariantCodeMotionESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #13, !noalias !99, !inline_history !98 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !11, !noalias !99
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !tbaa !11, !noalias !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %i.f, align 8, !tbaa !20, !noalias !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false), !noalias !99
  store ptr %i.i, ptr %i.h, align 8, !tbaa !13, !noalias !99
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.j, align 8, !tbaa !30, !noalias !99
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.k, align 4, !tbaa !14, !noalias !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.m, ptr %i.l, align 8, !tbaa !13, !noalias !99
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 0, ptr %i.n, align 8, !tbaa !30, !noalias !99
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.o, align 4, !tbaa !14, !noalias !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !noalias !99
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_123LoopInvariantCodeMotionE, i64 16), ptr %i.a, align 8, !tbaa !16, !noalias !99
  store ptr %i.a, ptr %0, align 8, !tbaa !102
  ret void
}

declare void @_ZN4mlir4Pass6anchorEv(ptr noundef nonnull align 8 dereferenceable(336)) unnamed_addr #3

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #15, !inline_history !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #15 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !33 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !33 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #15
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #15, !inline_history !103
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3$_0NS1_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::affine::AffineForOp", align 8 ; 7 uses
  %3 = alloca %"class.llvm::SmallPtrSet.110", align 8 ; 9 uses
  %4 = alloca %"class.llvm::SmallVector.113", align 8 ; 10 uses
  %5 = alloca %"class.llvm::SmallPtrSet.110", align 8 ; 11 uses
  %6 = alloca %"class.std::optional.118", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.d
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3$_0NS_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %1, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #15 ; 0 uses
  %i.g = tail call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.h, ptr %3, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 8, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 8, ptr %i.n, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.o, ptr %5, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 8, ptr %i.p, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 0, ptr %i.q, align 4, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i8 1, ptr %i.r, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN4mlir6affine11AffineForOp18getStaticTripCountEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.118") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !107, !range !21, !noundef !22
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !109
  %i.x = icmp ult i32 %i.w, 65
  %i.y = load ptr, ptr %6, align 8
  %spec.select.i.i.i.i = select i1 %i.x, ptr %6, ptr %i.y
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !110
  %i.z = icmp ne i64 %.0.i.i.i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi i1 [ false, %bb.b ], [ %i.z, %bb.c ]
  %i.ab = load ptr, ptr %2, align 8, !tbaa !112   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = and i32 %i.ad, 8388607
  %i.af = icmp ne i32 %i.ae, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = lshr i32 %i.ad, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ag, 1
  %i.ah = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ah
  %i.aj = lshr i32 %i.ad, 21
  %i.ak = and i32 %i.aj, 2040
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !51
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %.sroa.02.010.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !33 ; 2 uses
  %.not811.i.i.i = icmp eq ptr %.sroa.02.010.i.i.i, %i.au
  br i1 %.not811.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.a

._crit_edge.i.i.i:                                ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i, %bb.d
  %i.av = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.aw = load i32, ptr %i.m, align 8, !tbaa !30  ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not13.i.i.i, label %._crit_edge17.i.i.i, label %.lr.ph16.i.i.i

.lr.ph.i.i.i.a:                                   ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i
  %.sroa.02.012.i.i.i = phi ptr [ %.sroa.02.0.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i ], [ %.sroa.02.010.i.i.i, %bb.d ] ; 2 uses
  %i.az = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.02.012.i.i.i) #15 ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !113 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -16
  %i.be = zext i32 %i.bb to i64                   ; 2 uses
  %.sroa.0.0.i.i.i.i.i = select i1 %i.bc, ptr null, ptr %i.bd ; 2 uses
  %i.bf = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEN9__gnu_cxx5__ops12_Iter_negateIZNKS4_9use_emptyEvEUlS8_E_EEET_SG_SG_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i.i.i, i64 %i.be)
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, %i.be
  br i1 %i.bh, label %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.a
  %i.bi = load i8, ptr %i.r, align 8, !tbaa !36, !range !21, !noalias !114, !noundef !22
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.f, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %5, align 8, !tbaa !24, !noalias !114 ; 2 uses
  %i.bl = load i32, ptr %i.q, align 4, !tbaa !35, !noalias !114 ; 4 uses
  %i.bm = zext i32 %i.bl to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not22.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.critedge.i.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %i.bp, %.critedge.i.i.i.i.i ], [ %i.bk, %bb.f ] ; 2 uses
  %i.bo = load ptr, ptr %.023.i.i.i.i.i, align 8, !tbaa !25, !noalias !114
  %.not15.i.i.i.i.i = icmp eq ptr %i.bo, %i.az
  br i1 %.not15.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, %i.bn
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i, %bb.f
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !34, !noalias !114
  %i.br = icmp ult i32 %i.bl, %i.bq
  br i1 %i.br, label %bb.g, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bs = add nuw i32 %i.bl, 1
  store i32 %i.bs, ptr %i.q, align 4, !tbaa !35, !noalias !114
  store ptr %i.az, ptr %i.bn, align 8, !tbaa !25, !noalias !114
  br label %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.e
  %i.bt = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull %i.az) #15, !noalias !114 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit.i.i.i

_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i, %bb.g, %.lr.ph.i.i.i.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29
  %i.bx = icmp eq ptr %i.bw, @_ZN4mlir6detail14TypeIDResolverINS_6affine13AffineYieldOpEvE2idE
  br i1 %i.bx, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit.i.i.i
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = call noundef zeroext i1 @_ZN4mlir6isPureEPNS_9OperationE(ptr noundef nonnull %i.az) #15
  br i1 %i.by, label %bb.j, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %2, align 8
  %i.bz = call fastcc noundef zeroext i1 @_ZL17isOpLoopInvariantRN4mlir9OperationENS_6affine11AffineForOpERN4llvm15SmallPtrSetImplIPS0_EES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %5, ptr noundef nonnull align 8 dereferenceable(17) %3)
  br i1 %i.bz, label %bb.k, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ca = load i32, ptr %i.m, align 8, !tbaa !30  ; 2 uses
  %i.cb = load i32, ptr %i.n, align 4, !tbaa !14
  %.not.i.i.i.i = icmp ult i32 %i.ca, %i.cb
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l, !prof !115

bb.l:                                             ; preds = %bb.k
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.az)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cc = zext i32 %i.ca to i64
  %i.cd = load ptr, ptr %4, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  store ptr %i.az, ptr %i.ce, align 1
  %i.cf = load i32, ptr %i.m, align 8, !tbaa !30
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.m, align 8, !tbaa !30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.02.012.i.i.i, i64 8
  %.sroa.02.0.i.i.i = load ptr, ptr %i.ch, align 8, !tbaa !33 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i, %i.au
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.a

._crit_edge17.i.i.i:                              ; preds = %.lr.ph16.i.i.i, %._crit_edge.i.i.i
  %i.ci = load i8, ptr %i.s, align 8, !tbaa !107, !range !21, !noundef !22
  %i.cj = trunc nuw i8 %i.ci to i1
  store i8 0, ptr %i.s, align 8, !tbaa !107
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = icmp ugt i32 %i.cl, 64
  %or.cond.i.i.i.i.i.i = select i1 %i.cj, i1 %i.cm, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.n, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit.i.i.i

bb.n:                                             ; preds = %._crit_edge17.i.i.i
  %i.cn = load ptr, ptr %6, align 8, !tbaa !110   ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.cn) #14
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.o, %bb.n, %._crit_edge17.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.cp = load i8, ptr %i.r, align 8, !tbaa !36, !range !21, !noundef !22
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit.i.i.i
  %i.cr = load ptr, ptr %5, align 8, !tbaa !24
  call void @free(ptr noundef %i.cr) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i:     ; preds = %bb.p, %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.cs = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.l
  br i1 %i.ct, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj8EED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  call void @free(ptr noundef %i.cs) #15
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj8EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPN4mlir9OperationELj8EED2Ev.exit.i.i.i: ; preds = %bb.q, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.cu = load i8, ptr %i.k, align 8, !tbaa !36, !range !21, !noundef !22
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %"_ZZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i", label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj8EED2Ev.exit.i.i.i
  %i.cw = load ptr, ptr %3, align 8, !tbaa !24
  call void @free(ptr noundef %i.cw) #15
  br label %"_ZZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i"

.lr.ph16.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph16.i.i.i
  %.014.i.i.i = phi ptr [ %i.cz, %.lr.ph16.i.i.i ], [ %i.av, %._crit_edge.i.i.i ] ; 2 uses
  %i.cx = load ptr, ptr %.014.i.i.i, align 8, !tbaa !52
  %i.cy = load ptr, ptr %2, align 8, !tbaa !112
  call void @_ZN4mlir9Operation10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noundef %i.cy) #15
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cz, %i.ay
  br i1 %.not.i.i.i, label %._crit_edge17.i.i.i, label %.lr.ph16.i.i.i

"_ZZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i": ; preds = %bb.r, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj8EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3$_0NS_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvE3$_0NS_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit": ; preds = %bb.a, %"_ZZN12_GLOBAL__N_123LoopInvariantCodeMotion14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i"
  ret void
}

declare void @_ZN4mlir6affine11AffineForOp18getStaticTripCountEv(ptr dead_on_unwind writable sret(%"class.std::optional.118") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4mlir6isPureEPNS_9OperationE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL17isOpLoopInvariantRN4mlir9OperationENS_6affine11AffineForOpERN4llvm15SmallPtrSetImplIPS0_EES8_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree readonly captures(address) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(17) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.209", align 8 ; 9 uses
  %5 = alloca %"class.mlir::affine::AffineReadOpInterface", align 8 ; 5 uses
  %6 = alloca %"class.mlir::affine::AffineWriteOpInterface", align 8 ; 5 uses
  %7 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %9 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 8388607
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.f
  %i.h = lshr i32 %i.b, 21
  %i.i = and i32 %i.h, 2040
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 3 uses
  %i.w = icmp eq ptr %i.v, @_ZN4mlir6detail14TypeIDResolverINS_6affine10AffineIfOpEvE2idE ; 2 uses
  %spec.select.i.i = select i1 %i.w, ptr %0, ptr null
  br i1 %i.w, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = and i32 %i.y, 8388607
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = lshr i32 %i.y, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i146 = and i32 %i.ac, 1
  %i.ad = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i146 to i64 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ad
  %i.af = lshr i32 %i.y, 21
  %i.ag = and i32 %i.af, 2040
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !51
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  %.sroa.0186.0.in248 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0186.0249 = load ptr, ptr %.sroa.0186.0.in248, align 8, !tbaa !33 ; 2 uses
  %.not214250 = icmp eq ptr %.sroa.0186.0249, %i.am
  br i1 %.not214250, label %._crit_edge254, label %.lr.ph253

.loopexit:                                        ; preds = %bb.c, %.lr.ph253
  %.sroa.0186.0.in = getelementptr inbounds nuw i8, ptr %.sroa.0186.0251, i64 8
  %.sroa.0186.0 = load ptr, ptr %.sroa.0186.0.in, align 8, !tbaa !33 ; 2 uses
  %.not214.a = icmp eq ptr %.sroa.0186.0, %i.am
  br i1 %.not214.a, label %._crit_edge254.loopexit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.b, %.loopexit
  %.sroa.0186.0251 = phi ptr [ %.sroa.0186.0, %.loopexit ], [ %.sroa.0186.0249, %bb.b ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0186.0251, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0186.0251, i64 32 ; 2 uses
  %.sroa.0182.0243 = load ptr, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  %.not220244 = icmp eq ptr %.sroa.0182.0243, %i.ao
  br i1 %.not220244, label %.loopexit, label %.lr.ph247

bb.c:                                             ; preds = %.lr.ph247
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0182.0245, i64 8
  %.sroa.0182.0 = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 2 uses
  %.not220.a = icmp eq ptr %.sroa.0182.0, %i.ao
  br i1 %.not220.a, label %.loopexit, label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph253, %bb.c
  %.sroa.0182.0245 = phi ptr [ %.sroa.0182.0, %bb.c ], [ %.sroa.0182.0243, %.lr.ph253 ] ; 2 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0182.0245) #15, !inline_history !116
  %i.ar = tail call fastcc noundef zeroext i1 @_ZL17isOpLoopInvariantRN4mlir9OperationENS_6affine11AffineForOpERN4llvm15SmallPtrSetImplIPS0_EES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(17) %3), !inline_history !116
  br i1 %i.ar, label %bb.c, label %_ZL28checkInvarianceOfNestedIfOpsN4mlir6affine10AffineIfOpENS0_11AffineForOpERN4llvm15SmallPtrSetImplIPNS_9OperationEEES8_.exit

._crit_edge254.loopexit:                          ; preds = %.loopexit
  %.pre279 = load i32, ptr %i.x, align 4          ; 2 uses
  %.pre280 = load i32, ptr %i.aj, align 8, !tbaa !51
  %.pre283 = lshr i32 %.pre279, 23
  %.pre285 = and i32 %.pre283, 1
  %.pre286 = zext nneg i32 %.pre285 to i64
  %.pre288 = lshr i32 %.pre279, 21
  %.pre290 = and i32 %.pre288, 2040
  %.pre292 = zext nneg i32 %.pre290 to i64
  %.pre294 = zext i32 %.pre280 to i64
  br label %._crit_edge254

._crit_edge254:                                   ; preds = %._crit_edge254.loopexit, %bb.b
  %.pre-phi295.a = phi i64 [ %.pre294, %._crit_edge254.loopexit ], [ %i.al, %bb.b ]
  %.pre-phi293 = phi i64 [ %.pre292, %._crit_edge254.loopexit ], [ %i.ah, %bb.b ]
  %.pre-phi287 = phi i64 [ %.pre286, %._crit_edge254.loopexit ], [ %i.ad, %bb.b ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i.i, i64 %.pre-phi287
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pre-phi293
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %.pre-phi295.a ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %.sroa.0178.0261 = load ptr, ptr %i.aw, align 8, !tbaa !33 ; 2 uses
  %.not215262 = icmp eq ptr %.sroa.0178.0261, %i.av
  br i1 %.not215262, label %.critedge79, label %.lr.ph265

.lr.ph265:                                        ; preds = %._crit_edge254, %._crit_edge260
  %.sroa.0178.0263 = phi ptr [ %.sroa.0178.0, %._crit_edge260 ], [ %.sroa.0178.0261, %._crit_edge254 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0178.0263, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0178.0263, i64 32 ; 2 uses
  %.sroa.0174.0255 = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %.not219256 = icmp eq ptr %.sroa.0174.0255, %i.ay
  br i1 %.not219256, label %._crit_edge260, label %.lr.ph259

bb.d:                                             ; preds = %.lr.ph259
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0174.0257, i64 8
  %.sroa.0174.0 = load ptr, ptr %i.az, align 8, !tbaa !33 ; 2 uses
  %.not219.a = icmp eq ptr %.sroa.0174.0, %i.ay
  br i1 %.not219.a, label %._crit_edge260, label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph265, %bb.d
  %.sroa.0174.0257 = phi ptr [ %.sroa.0174.0, %bb.d ], [ %.sroa.0174.0255, %.lr.ph265 ] ; 2 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0174.0257) #15, !inline_history !116
  %i.bb = tail call fastcc noundef zeroext i1 @_ZL17isOpLoopInvariantRN4mlir9OperationENS_6affine11AffineForOpERN4llvm15SmallPtrSetImplIPS0_EES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(17) %3), !inline_history !116
  br i1 %i.bb, label %bb.d, label %_ZL28checkInvarianceOfNestedIfOpsN4mlir6affine10AffineIfOpENS0_11AffineForOpERN4llvm15SmallPtrSetImplIPNS_9OperationEEES8_.exit

._crit_edge260:                                   ; preds = %bb.d, %.lr.ph265
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0178.0263, i64 8
  %.sroa.0178.0 = load ptr, ptr %i.bc, align 8, !tbaa !33 ; 2 uses
  %.not215.a = icmp eq ptr %.sroa.0178.0, %i.av
  br i1 %.not215.a, label %.critedge79, label %.lr.ph265

bb.e:                                             ; preds = %bb.a
  %i.bd = icmp eq ptr %i.v, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  br i1 %i.bd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bf = load i32, ptr %i.be, align 4            ; 3 uses
  %i.bg = and i32 %i.bf, 8388607
  %i.bh = icmp ne i32 %i.bg, 0
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = lshr i32 %i.bf, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.bj, 1
  %i.bk = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = lshr i32 %i.bf, 21
  %i.bn = and i32 %i.bm, 2040
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !51
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bs ; 3 uses
  %.sroa.023.0.in34.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.023.035.i = load ptr, ptr %.sroa.023.0.in34.i, align 8, !tbaa !33 ; 2 uses
  %.not36.i = icmp eq ptr %.sroa.023.035.i, %i.bt
  br i1 %.not36.i, label %.critedge79, label %.lr.ph39.i

.loopexit.i:                                      ; preds = %bb.g, %.lr.ph39.i
  %.sroa.023.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.023.037.i, i64 8
  %.sroa.023.0.i = load ptr, ptr %.sroa.023.0.in.i, align 8, !tbaa !33 ; 2 uses
  %.not.i330 = icmp eq ptr %.sroa.023.0.i, %i.bt
  br i1 %.not.i330, label %.critedge79, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %bb.f, %.loopexit.i
  %.sroa.023.037.i = phi ptr [ %.sroa.023.0.i, %.loopexit.i ], [ %.sroa.023.035.i, %bb.f ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.023.037.i, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.023.037.i, i64 32 ; 2 uses
  %.sroa.019.031.i = load ptr, ptr %i.bu, align 8, !tbaa !33 ; 2 uses
  %.not2732.i = icmp eq ptr %.sroa.019.031.i, %i.bv
  br i1 %.not2732.i, label %.loopexit.i, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i, i64 8
  %.sroa.019.0.i = load ptr, ptr %i.bw, align 8, !tbaa !33 ; 2 uses
  %.not27.i = icmp eq ptr %.sroa.019.0.i, %i.bv
  br i1 %.not27.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph39.i, %bb.g
  %.sroa.019.033.i = phi ptr [ %.sroa.019.0.i, %bb.g ], [ %.sroa.019.031.i, %.lr.ph39.i ] ; 2 uses
  %i.bx = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.033.i) #15, !inline_history !117
  %i.by = tail call fastcc noundef zeroext i1 @_ZL17isOpLoopInvariantRN4mlir9OperationENS_6affine11AffineForOpERN4llvm15SmallPtrSetImplIPS0_EES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr nonnull readonly %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(17) %3), !inline_history !117
  br i1 %i.by, label %bb.g, label %_ZL28checkInvarianceOfNestedIfOpsN4mlir6affine10AffineIfOpENS0_11AffineForOpERN4llvm15SmallPtrSetImplIPNS_9OperationEEES8_.exit

bb.h:                                             ; preds = %bb.e
  %i.bz = icmp eq ptr %i.v, @_ZN4mlir6detail14TypeIDResolverINS_6affine16AffineParallelOpEvE2idE
  br i1 %i.bz, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cb = load i32, ptr %i.ca, align 4            ; 3 uses
  %i.cc = and i32 %i.cb, 8388607
  %i.cd = icmp ne i32 %i.cc, 0
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = lshr i32 %i.cb, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i88 = and i32 %i.cf, 1
  %i.cg = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i88 to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = lshr i32 %i.cb, 21
  %i.cj = and i32 %i.ci, 2040
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !51
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.co ; 3 uses
  %.sroa.023.0.in34.i331 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.023.035.i332 = load ptr, ptr %.sroa.023.0.in34.i331, align 8, !tbaa !33 ; 2 uses
  %.not36.i333 = icmp eq ptr %.sroa.023.035.i332, %i.cp
  br i1 %.not36.i333, label %.critedge79, label %.lr.ph39.i334

.loopexit.i343:                                   ; preds = %bb.j, %.lr.ph39.i334
  %.sroa.023.0.in.i344 = getelementptr inbounds nuw i8, ptr %.sroa.023.037.i335, i64 8
  %.sroa.023.0.i345 = load ptr, ptr %.sroa.023.0.in.i344, align 8, !tbaa !33 ; 2 uses
  %.not.i346 = icmp eq ptr %.sroa.023.0.i345, %i.cp
  br i1 %.not.i346, label %.critedge79, label %.lr.ph39.i334

.lr.ph39.i334:                                    ; preds = %bb.i, %.loopexit.i343
  %.sroa.023.037.i335 = phi ptr [ %.sroa.023.0.i345, %.loopexit.i343 ], [ %.sroa.023.035.i332, %bb.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.023.037.i335, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.023.037.i335, i64 32 ; 2 uses
  %.sroa.019.031.i336 = load ptr, ptr %i.cq, align 8, !tbaa !33 ; 2 uses
  %.not2732.i337 = icmp eq ptr %.sroa.019.031.i336, %i.cr
  br i1 %.not2732.i337, label %.loopexit.i343, label %.lr.ph.i338

bb.j:                                             ; preds = %.lr.ph.i338
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.019.033.i339, i64 8
  %.sroa.019.0.i341 = load ptr, ptr %i.cs, align 8, !tbaa !33 ; 2 uses
  %.not27.i342 = icmp eq ptr %.sroa.019.0.i341, %i.cr
  br i1 %.not27.i342, label %.loopexit.i343, label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %.lr.ph39.i334, %bb.j
  %.sroa.019.033.i339 = phi ptr [ %.sroa.019.0.i341, %bb.j ], [ %.sroa.019.031.i336, %.lr.ph39.i334 ] ; 2 uses
  %i.ct = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.033.i339) #15, !inline_history !117
  %i.cu = tail call fastcc noundef zeroext i1 @_ZL17isOpLoopInvariantRN4mlir9OperationENS_6affine11AffineForOpERN4llvm15SmallPtrSetImplIPS0_EES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr nonnull readonly %1, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(17) %3), !inline_history !117
  br i1 %i.cu, label %bb.j, label %_ZL28checkInvarianceOfNestedIfOpsN4mlir6affine10AffineIfOpENS0_11AffineForOpERN4llvm15SmallPtrSetImplIPNS_9OperationEEES8_.exit

bb.k:                                             ; preds = %bb.h
  %i.cv = tail call noundef zeroext i1 @_ZN4mlir18isMemoryEffectFreeEPNS_9OperationE(ptr noundef nonnull %0) #15
  br i1 %i.cv, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6affine21AffineReadOpInterfaceENS1_6detail36AffineReadOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %0)
  %.not.i = icmp eq ptr %i.cw, null
  br i1 %.not.i, label %_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit, label %.critedge

_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit: ; preds = %bb.l
  %i.cx = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6affine22AffineWriteOpInterfaceENS1_6detail37AffineWriteOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %0)
  %.not208 = icmp eq ptr %i.cx, null
  br i1 %.not208, label %_ZL28checkInvarianceOfNestedIfOpsN4mlir6affine10AffineIfOpENS0_11AffineForOpERN4llvm15SmallPtrSetImplIPNS_9OperationEEES8_.exit, label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEEPNS1_9OperationEEEbRKT0_.exit
  %i.cy = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6affine21AffineReadOpInterfaceENS1_6detail36AffineReadOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.not.i89 = icmp eq ptr %i.cy, null
  br i1 %.not.i89, label %_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEENS1_9OperationEEEbRKT0_.exit, label %_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEENS1_9OperationEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEENS1_9OperationEEEbRKT0_.exit: ; preds = %.critedge
  %i.cz = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_6affine22AffineWriteOpInterfaceENS1_6detail37AffineWriteOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.not209 = icmp eq ptr %i.cz, null
  br i1 %.not209, label %.critedge79, label %_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEENS1_9OperationEEEbRKT0_.exit.thread

_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEENS1_9OperationEEEbRKT0_.exit.thread: ; preds = %.critedge, %_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEENS1_9OperationEEEbRKT0_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = load i8, ptr %i.da, align 8, !tbaa !36, !range !21, !noalias !127, !noundef !22
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.m, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.m:                                             ; preds = %_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEENS1_9OperationEEEbRKT0_.exit.thread
  %i.dd = load ptr, ptr %2, align 8, !tbaa !24, !noalias !127 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !35, !noalias !127 ; 4 uses
  %i.dg = zext i32 %i.df to i64
  %.idx.i.i = shl nuw nsw i64 %i.dg, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.df, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.dj, %.critedge.i.i ], [ %i.dd, %bb.m ] ; 2 uses
  %i.di = load ptr, ptr %.023.i.i, align 8, !tbaa !25, !noalias !127
  %.not15.i.i = icmp eq ptr %i.di, %0
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dj, %i.dh
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !34, !noalias !127
  %i.dm = icmp ult i32 %i.df, %i.dl
  br i1 %i.dm, label %bb.n, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dn = add nuw i32 %i.df, 1
  store i32 %i.dn, ptr %i.de, align 4, !tbaa !35, !noalias !127
  store ptr %0, ptr %i.dh, align 8, !tbaa !25, !noalias !127
  br label %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %_ZN4llvm3isaIJN4mlir6affine21AffineReadOpInterfaceENS2_22AffineWriteOpInterfaceEENS1_9OperationEEEbRKT0_.exit.thread
  %i.do = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull %0) #15, !noalias !127 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit

_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.dp, ptr %4, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.dq, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.dr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ds = call noundef ptr @_ZN4mlir11OpInterfaceINS_6affine21AffineReadOpInterfaceENS1_6detail36AffineReadOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.not.i.i90 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i90, label %_ZN4llvm8dyn_castIN4mlir6affine21AffineReadOpInterfaceENS1_9OperationEEEDcRT0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit
  %i.dt = call noundef ptr @_ZN4mlir11OpInterfaceINS_6affine21AffineReadOpInterfaceENS1_6detail36AffineReadOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %0, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.dt, 1
  br label %_ZN4llvm8dyn_castIN4mlir6affine21AffineReadOpInterfaceENS1_9OperationEEEDcRT0_.exit

_ZN4llvm8dyn_castIN4mlir6affine21AffineReadOpInterfaceENS1_9OperationEEEDcRT0_.exit: ; preds = %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit, %bb.o
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %bb.o ], [ zeroinitializer, %_ZN4llvm15SmallPtrSetImplIPN4mlir9OperationEE6insertES3_.exit ] ; 2 uses
  %i.du = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 2 uses
  store ptr %i.du, ptr %5, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dw = extractvalue { ptr, ptr } %.pn.i.i, 1
  store ptr %i.dw, ptr %i.dv, align 8
  %.not210 = icmp eq ptr %i.du, null
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  br i1 %.not210, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir6affine21AffineReadOpInterfaceENS1_9OperationEEEDcRT0_.exit
  %i.dx = call ptr @_ZN4mlir6affine21AffineReadOpInterface9getMemRefEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  br label %bb.r

bb.q:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir6affine21AffineReadOpInterfaceENS1_9OperationEEEDcRT0_.exit
  %i.dy = call noundef ptr @_ZN4mlir11OpInterfaceINS_6affine22AffineWriteOpInterfaceENS1_6detail37AffineWriteOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  store ptr %0, ptr %6, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dy, ptr %i.dz, align 8
  %i.ea = call ptr @_ZN4mlir6affine22AffineWriteOpInterface9getMemRefEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge = phi ptr [ %i.ea, %bb.q ], [ %i.dx, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.sroa.0152.0238 = load ptr, ptr %storemerge, align 8, !tbaa !128 ; 2 uses
  %.not211239 = icmp eq ptr %.sroa.0152.0238, null
  br i1 %.not211239, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir6affine11AffineForOpELj8EEES4_EEbOT_RKT0_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir6affine11AffineForOpELj8EEES4_EEbOT_RKT0_.exit.thread
  %.sroa.0152.0240 = phi ptr [ %.sroa.0152.0, %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir6affine11AffineForOpELj8EEES4_EEbOT_RKT0_.exit.thread ], [ %.sroa.0152.0238, %bb.r ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0152.0240, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !131 ; 4 uses
  %i.ed = icmp eq ptr %0, %i.ec
  br i1 %i.ed, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir6affine11AffineForOpELj8EEES4_EEbOT_RKT0_.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.ee = call noundef zeroext i1 @_ZN4mlir9hasEffectIJNS_13MemoryEffects5WriteEEEEbPNS_9OperationENS_5ValueE(ptr noundef %i.ec, ptr nonnull %storemerge) #15
  br i1 %i.ee, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = call noundef zeroext i1 @_ZN4mlir9hasEffectIJNS_13MemoryEffects4ReadEEEEbPNS_9OperationENS_5ValueE(ptr noundef %i.ec, ptr nonnull %storemerge) #15
  br i1 %i.ef, label %bb.u, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir6affine11AffineForOpELj8EEES4_EEbOT_RKT0_.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.eg = call noundef ptr @_ZN4mlir11OpInterfaceINS_6affine22AffineWriteOpInterfaceENS1_6detail37AffineWriteOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.not212 = icmp eq ptr %i.eg, null
  br i1 %.not212, label %_ZN4llvm12is_containedIRNS_11SmallVectorIN4mlir6affine11AffineForOpELj8EEES4_EEbOT_RKT0_.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  store i32 0, ptr %i.dq, align 8, !tbaa !30
  call void @_ZN4mlir6affine15getAffineForIVsERNS_9OperationEPN4llvm15SmallVectorImplINS0_11AffineForOpEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, ptr noundef nonnull %4) #15
  %i.eh = load ptr, ptr %4, align 8, !tbaa !13    ; 4 uses
  %i.ei = load i32, ptr %i.dq, align 8, !tbaa !30 ; 3 uses
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %.idx4.i = shl nuw nsw i64 %i.ej, 3             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx4.i
  %i.el = lshr i64 %i.ej, 2                       ; 2 uses
  %.not.i92 = icmp eq i64 %i.el, 0
  br i1 %.not.i92, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v
end_hunk_0
