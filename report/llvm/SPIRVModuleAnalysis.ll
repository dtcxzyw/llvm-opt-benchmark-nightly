Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVModuleAnalysis?download=true
inline.NumInlined: 5164
inline.NumDeleted: 2318
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm19SPIRVModuleAnalysis11setBaseInfoERKNS_6ModuleE:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ms, ptr align 1 %i.mi, i64 %i.mj, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i

_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i: ; preds = %bb.ay, %bb.ax
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mj
  store i8 0, ptr %i.mt, align 1, !tbaa !167
  store i64 %i.mj, ptr %i.mr, align 8, !tbaa !315
  store ptr %i.mr, ptr %i.mo, align 8, !tbaa !313
  %i.mu = load i32, ptr %i.lj, align 4, !tbaa !316
  %i.mv = add i32 %i.mu, 1
  store i32 %i.mv, ptr %i.lj, align 4, !tbaa !316
  %i.mw = tail call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.li, i32 noundef %i.ml) #23 ; 0 uses
  br label %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit

_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit, %_ZN4llvm14StringMapEntryINS_17EmptyStringSetTagEE6createINS_15MallocAllocatorEJEEEPS2_NS_9StringRefERT_DpOT0_.exit.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not60 = icmp eq i64 %indvars.iv.next, %i.lx
  br i1 %.not60, label %.loopexit, label %bb.au, !llvm.loop !668

.loopexit:                                        ; preds = %_ZN4llvm9StringSetINS_15MallocAllocatorEE6insertENS_9StringRefE.exit, %_ZNK4llvm6MDNode14getNumOperandsEv.exit141, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread, %bb.as, %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.mx = add nuw i32 %.049191, 1                 ; 2 uses
  %.not58 = icmp eq i32 %i.mx, %i.lh
  br i1 %.not58, label %.loopexit186, label %bb.as, !llvm.loop !669

.loopexit186:                                     ; preds = %.loopexit, %bb.ar, %bb.aq
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !671
  %i.na = load ptr, ptr %i.cv, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call fastcc void @_ZL30getSymbolicOperandRequirementsN4llvm5SPIRV15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetERNS0_18RequirementHandlerE(ptr dead_on_unwind noalias writable align 8 %5, i32 noundef 26, i32 noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(519560) %i.na, ptr noundef nonnull align 8 dereferenceable(280) %i.t)
  call void @_ZN4llvm5SPIRV18RequirementHandler15addRequirementsERKNS0_12RequirementsE(ptr noundef nonnull align 8 dereferenceable(280) %i.t, ptr noundef nonnull align 8 dereferenceable(96) %5)
  %i.nb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !46 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit186
  call void @free(ptr noundef %i.nc) #23
  br label %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit

_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit: ; preds = %.loopexit186, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.nf = load i32, ptr %i.l, align 8, !tbaa !673
  %i.ng = load ptr, ptr %i.cv, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call fastcc void @_ZL30getSymbolicOperandRequirementsN4llvm5SPIRV15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetERNS0_18RequirementHandlerE(ptr dead_on_unwind noalias writable align 8 %4, i32 noundef 35, i32 noundef %i.nf, ptr noundef nonnull align 8 dereferenceable(519560) %i.ng, ptr noundef nonnull align 8 dereferenceable(280) %i.t)
  call void @_ZN4llvm5SPIRV18RequirementHandler15addRequirementsERKNS0_12RequirementsE(ptr noundef nonnull align 8 dereferenceable(280) %i.t, ptr noundef nonnull align 8 dereferenceable(96) %4)
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !46 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit144, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit
  call void @free(ptr noundef %i.ni) #23
  br label %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit144

_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit144: ; preds = %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !670
  %i.nn = load ptr, ptr %i.cv, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call fastcc void @_ZL30getSymbolicOperandRequirementsN4llvm5SPIRV15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetERNS0_18RequirementHandlerE(ptr dead_on_unwind noalias writable align 8 %3, i32 noundef 1, i32 noundef %i.nm, ptr noundef nonnull align 8 dereferenceable(519560) %i.nn, ptr noundef nonnull align 8 dereferenceable(280) %i.t)
  call void @_ZN4llvm5SPIRV18RequirementHandler15addRequirementsERKNS0_12RequirementsE(ptr noundef nonnull align 8 dereferenceable(280) %i.t, ptr noundef nonnull align 8 dereferenceable(96) %3)
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !46 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit145, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit144
  call void @free(ptr noundef %i.np) #23
  br label %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit145

_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit145: ; preds = %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit144, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ns = load i32, ptr %i.my, align 8, !tbaa !671
  %i.nt = icmp eq i32 %i.ns, 3
  br i1 %i.nt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 34, ptr %i.a, align 4, !tbaa !319
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @_ZN4llvm8SmallSetINS_5SPIRV9Extension9ExtensionELj4ESt4lessIS3_EE10insertImplIRKS3_EESt4pairINS_16SmallSetIteratorIS3_Lj4ES5_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.847") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %i.nu, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE.exit145
  %i.nv = load ptr, ptr %i.cv, align 8, !tbaa !153
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 519512
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !310
  %i.ny = icmp eq i32 %i.nx, 1
  br i1 %i.ny, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nz = load i32, ptr %i.c, align 8, !tbaa !320 ; 2 uses
  %i.oa = add i32 %i.nz, 1
  store i32 %i.oa, ptr %i.c, align 8, !tbaa !320
  %i.ob = or i32 %i.nz, -2147483648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !321
  %i.oc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_10MCRegisterENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.oc, 0
  %i.od = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 4
  store i32 %i.ob, ptr %i.od, align 4, !tbaa !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm5SPIRV18RequirementHandler25initAvailableCapabilitiesERKNS_14SPIRVSubtargetE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(519560) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.34", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.34", align 8 ; 8 uses
  %4 = alloca %"class.llvm::SmallVector.34", align 8 ; 8 uses
  %5 = alloca %"class.llvm::SmallVector.34", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 39, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 22, ptr %.sroa.630.0..sroa_idx, align 4
  store <4 x i32> <i32 4, i32 8, i32 1, i32 5>, ptr %i.b, align 8
  call void @_ZN4llvm5SPIRV18RequirementHandler16addAvailableCapsERKNS_11SmallVectorINS0_10Capability10CapabilityELj8EEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.c = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.c) #23
  br label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.e = call noundef zeroext i1 @_ZNK4llvm14SPIRVSubtarget17isAtLeastSPIRVVerENS_12VersionTupleE(ptr noundef nonnull align 8 dereferenceable(519560) %1, i64 -9223372023969873919, i64 0) #23
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.h, align 4, !tbaa !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 4 dereferenceable(32) @constinit, i64 32, i1 false)
  store i32 8, ptr %i.g, align 8, !tbaa !136
  call void @_ZN4llvm5SPIRV18RequirementHandler16addAvailableCapsERKNS_11SmallVectorINS0_10Capability10CapabilityELj8EEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.i = load ptr, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.i) #23
  br label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit15

_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit15: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit15, %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit
  %i.k = call noundef zeroext i1 @_ZNK4llvm14SPIRVSubtarget17isAtLeastSPIRVVerENS_12VersionTupleE(ptr noundef nonnull align 8 dereferenceable(519560) %1, i64 -9223372011084972031, i64 0) #23
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.l, ptr %4, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.n, align 4, !tbaa !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, ptr noundef nonnull align 4 dereferenceable(20) @constinit.16, i64 20, i1 false)
  store i32 5, ptr %i.m, align 8, !tbaa !136
  call void @_ZN4llvm5SPIRV18RequirementHandler16addAvailableCapsERKNS_11SmallVectorINS0_10Capability10CapabilityELj8EEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(48) %4)
  %i.o = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit17, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.o) #23
  br label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit17

_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit17: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit17, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.s = load i64, ptr %i.r, align 8, !tbaa !140, !noalias !679
  %.fr33 = freeze i64 %i.s
  %i.t = icmp eq i64 %.fr33, 0                    ; 3 uses
  %spec.select.idx.i = select i1 %i.t, i64 0, i64 56
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.idx.i
  %.sink1.i = load ptr, ptr %spec.select.i, align 8, !tbaa !57, !noalias !679 ; 3 uses
  %i.u = load ptr, ptr %i.q, align 8, !noalias !680
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.w = load i32, ptr %i.v, align 8, !noalias !680
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.sink1.i18 = select i1 %i.t, ptr %i.y, ptr %i.z ; 3 uses
  %.not31 = icmp eq ptr %.sink1.i, %.sink1.i18
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %i.t, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19.us
  %.sroa.020.032.us = phi ptr [ %i.ae, %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19.us ], [ %.sink1.i, %.lr.ph ] ; 2 uses
  %i.ab = load i32, ptr %.sroa.020.032.us, align 4, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN4llvm33getCapabilitiesEnabledByExtensionENS_5SPIRV9Extension9ExtensionE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.34") align 8 %5, i32 noundef %i.ab) #23
  call void @_ZN4llvm5SPIRV18RequirementHandler16addAvailableCapsERKNS_11SmallVectorINS0_10Capability10CapabilityELj8EEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.ac = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  call void @free(ptr noundef %i.ac) #23
  br label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19.us

_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19.us: ; preds = %bb.i, %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.020.032.us, i64 4 ; 2 uses
  %.not.us = icmp eq ptr %i.ae, %.sink1.i18
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19, %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19.us, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 519512
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !310
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.l, label %bb.k

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19
  %.sroa.020.032 = phi ptr [ %i.am, %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19 ], [ %.sink1.i, %.lr.ph ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.020.032, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN4llvm33getCapabilitiesEnabledByExtensionENS_5SPIRV9Extension9ExtensionE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.34") align 8 %5, i32 noundef %i.aj) #23
  call void @_ZN4llvm5SPIRV18RequirementHandler16addAvailableCapsERKNS_11SmallVectorINS0_10Capability10CapabilityELj8EEE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.ak = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.aa
  br i1 %i.al, label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  call void @free(ptr noundef %i.ak) #23
  br label %_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19

_ZN4llvm11SmallVectorINS_5SPIRV10Capability10CapabilityELj8EED2Ev.exit19: ; preds = %.lr.ph.split, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.am = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.020.032) #27 ; 2 uses
  %.not = icmp eq ptr %i.am, %.sink1.i18
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm5SPIRV18RequirementHandler34initAvailableCapabilitiesForOpenCLERKNS_14SPIRVSubtargetE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(519560) %1)
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  call void @_ZN4llvm5SPIRV18RequirementHandler34initAvailableCapabilitiesForVulkanERKNS_14SPIRVSubtargetE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(519560) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

declare noundef ptr @_ZNK4llvm6Module16getNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm11NamedMDNode10getOperandEj(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef i32 @_ZNK4llvm11NamedMDNode14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm5SPIRV18RequirementHandler21getAndAddRequirementsENS0_15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(519560) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::SPIRV::Requirements", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call fastcc void @_ZL30getSymbolicOperandRequirementsN4llvm5SPIRV15OperandCategory15OperandCategoryEjRKNS_14SPIRVSubtargetERNS0_18RequirementHandlerE(ptr dead_on_unwind noalias writable align 8 %4, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(519560) %3, ptr noundef nonnull align 8 dereferenceable(280) %0)
  call void @_ZN4llvm5SPIRV18RequirementHandler15addRequirementsERKNS0_12RequirementsE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(96) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm5SPIRV12RequirementsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.b) #23
  br label %_ZN4llvm5SPIRV12RequirementsD2Ev.exit

_ZN4llvm5SPIRV12RequirementsD2Ev.exit:            ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm19SPIRVModuleAnalysis13isDeclSectionERKNS_19MachineRegisterInfoERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1184) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !338  ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 807, label %.critedge51
    i32 841, label %bb.b
    i32 532, label %bb.c
    i32 535, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !167
  %i.i = and i64 %i.h, 4294967295
  %i.j = icmp ne i64 %i.i, 7
  br label %.critedge51

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %.critedge51

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !340  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.n = load i32, ptr %i.m, align 8, !tbaa !693
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp eq i32 %i.d, 838
  %or.cond = and i1 %i.p, %i.o
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !167  ; 6 uses
  %i.u = tail call noundef ptr @_ZN4llvm19SPIRVGlobalRegistry26getFunctionDefinitionByUseEPKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(1416) %i.l, ptr noundef nonnull %i.r)
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %..critedge_crit_edge, label %bb.f

..critedge_crit_edge:                             ; preds = %bb.e
  %.pre106 = and i32 %i.t, 2147483647
  %.pre107 = zext nneg i32 %.pre106 to i64
  %.pre109 = zext nneg i32 %i.t to i64
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.v = icmp slt i32 %i.t, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = and i32 %i.t, 2147483647
  %i.y = zext nneg i32 %i.x to i64                ; 4 uses
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ad = zext nneg i32 %i.t to i64               ; 4 uses
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %.0.in.i.i.i = select i1 %i.v, ptr %i.ab, ptr %i.af
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !343 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr %.0.i.i.i, align 8
  %i.ah = and i32 %i.ag, 16777216
  %.not4.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not4.i.i.i, label %.lr.ph, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.h ], [ %.0.i.i.i, %bb.g ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !167 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i.i
  %i.ai = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.aj = and i32 %i.ai, 16777216
  %.not1.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not1.i.i.i.i, label %.lr.ph, label %.preheader.i.i.i, !llvm.loop !1

.lr.ph:                                           ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %storemerge.i.i.i.i, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit: ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i, %.lr.ph
  %.sroa.082.096 = phi ptr [ %.sroa.0.0.i.i, %.lr.ph ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.082.096, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !346 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !338 ; 2 uses
  switch i32 %i.ao, label %bb.j [
    i32 485, label %bb.i
    i32 436, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !tbaa !347
  %i.ap = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !694 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i32 %i.ao, label %._crit_edge [
    i32 485, label %.critedge51
    i32 436, label %.critedge51
  ]

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !346
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit
  %i.aq = phi ptr [ %.pre, %._crit_edge ], [ %i.am, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EEppEv.exit ]
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %bb.j
  %.pn.i.i = phi ptr [ %.sroa.082.096, %bb.j ], [ %storemerge.i.i, %.backedge ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !167 ; 5 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i32, ptr %storemerge.i.i, align 8
  %i.as = and i32 %i.ar, 16777216
  %.not1.i.i = icmp eq i32 %i.as, 0
  br i1 %.not1.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i, label %.backedge

end_hunk_0
