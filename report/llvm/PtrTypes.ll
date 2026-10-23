Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PtrTypes?download=true
inline.NumInlined: 413
inline.NumDeleted: 282
begin_hunk_0_@_ZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS_24DataLayoutEntryInterfaceEEES5_NS_23DataLayoutSpecInterfaceERKNS2_9MapVectorINS_10StringAttrES4_NS2_8DenseMapIS8_jNS2_12DenseMapInfoIS8_vEENS2_6detail12DenseMapPairIS8_jEEEENS2_11SmallVectorISt4pairIS8_S4_ELj0EEELj0EEE:bb.a
  %i.ai = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #8
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0
  %i.ak = icmp eq ptr %i.ah, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  br i1 %i.ak, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit50.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit50.thread.i.i.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %.02988.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  %i.am = load <2 x ptr>, ptr %i.al, align 8
  store <2 x ptr> %i.am, ptr %29, align 16
  %i.an = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %29) #8 ; 2 uses
  %i.ao = and i64 %i.an, 4
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = and i64 %i.an, -5                       ; 2 uses
  %.not6.i.i51.i.i.i.i = icmp ne i64 %i.aq, 0
  %.not.not.i.i52.i.i.i.i = and i1 %i.ap, %.not6.i.i51.i.i.i.i
  br i1 %.not.not.i.i52.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit54.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit54.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit54.thread.i.i.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br label %bb.f

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit54.i.i.i.i": ; preds = %bb.e
  %i.ar = inttoptr i64 %i.aq to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #8
  store ptr %i.ar, ptr %30, align 8
  %i.as = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #8
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %i.au = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #8
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = icmp eq ptr %i.at, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br i1 %i.aw, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit140", label %bb.f

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit54.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit54.thread.i.i.i.i"
  %i.ax = getelementptr inbounds nuw i8, ptr %.02988.i.i.i.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8
  store <2 x ptr> %i.ay, ptr %27, align 16
  %i.az = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #8 ; 2 uses
  %i.ba = and i64 %i.az, 4
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = and i64 %i.az, -5                       ; 2 uses
  %.not6.i.i55.i.i.i.i = icmp ne i64 %i.bc, 0
  %.not.not.i.i56.i.i.i.i = and i1 %i.bb, %.not6.i.i55.i.i.i.i
  br i1 %.not.not.i.i56.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit58.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit58.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit58.thread.i.i.i.i": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br label %bb.g

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit58.i.i.i.i": ; preds = %bb.f
  %i.bd = inttoptr i64 %i.bc to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #8
  store ptr %i.bd, ptr %28, align 8
  %i.be = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #8
  %i.bf = extractvalue { ptr, ptr } %i.be, 0
  %i.bg = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #8
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0
  %i.bi = icmp eq ptr %i.bf, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br i1 %i.bi, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit142", label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit58.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit58.thread.i.i.i.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %.02988.i.i.i.i, i64 64 ; 3 uses
  %i.bk = add nsw i64 %.089.i.i.i.i, -1
  %i.bl = icmp sgt i64 %.089.i.i.i.i, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !45

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre.i.i.i.i = ptrtoint ptr %i.bj to i64
  %.pre94.i.i.i.i = sub i64 %i.c, %.pre.i.i.i.i
  %i.bm = ashr exact i64 %.pre94.i.i.i.i, 4
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi95.i.i.i.i = phi i64 [ %i.bm, %._crit_edge.loopexit.i.i.i.i ], [ %2, %bb.c ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.bj, %._crit_edge.loopexit.i.i.i.i ], [ %1, %bb.c ] ; 5 uses
  switch i64 %.pre-phi95.i.i.i.i, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.thread" [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  %i.bn = load <2 x ptr>, ptr %.029.lcssa.i.i.i.i, align 8
  store <2 x ptr> %i.bn, ptr %25, align 16
  %i.bo = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #8 ; 2 uses
  %i.bp = and i64 %i.bo, 4
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = and i64 %i.bo, -5                       ; 2 uses
  %.not6.i.i59.i.i.i.i = icmp ne i64 %i.br, 0
  %.not.not.i.i60.i.i.i.i = and i1 %i.bq, %.not6.i.i59.i.i.i.i
  br i1 %.not.not.i.i60.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit62.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit62.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit62.thread.i.i.i.i": ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %bb.i

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit62.i.i.i.i": ; preds = %bb.h
  %i.bs = inttoptr i64 %i.br to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #8
  store ptr %i.bs, ptr %26, align 8
  %i.bt = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #8
  %i.bu = extractvalue { ptr, ptr } %i.bt, 0
  %i.bv = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #8
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0
  %i.bx = icmp eq ptr %i.bu, %i.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br i1 %i.bx, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit62.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit62.thread.i.i.i.i"
  %i.by = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.by, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bz = load <2 x ptr>, ptr %.1.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store <2 x ptr> %i.bz, ptr %23, align 16
  %i.ca = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #8 ; 2 uses
  %i.cb = and i64 %i.ca, 4
  %i.cc = icmp eq i64 %i.cb, 0
  %i.cd = and i64 %i.ca, -5                       ; 2 uses
  %.not6.i.i63.i.i.i.i = icmp ne i64 %i.cd, 0
  %.not.not.i.i64.i.i.i.i = and i1 %i.cc, %.not6.i.i63.i.i.i.i
  br i1 %.not.not.i.i64.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit66.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit66.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit66.thread.i.i.i.i": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.k

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit66.i.i.i.i": ; preds = %bb.j
  %i.ce = inttoptr i64 %i.cd to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #8
  store ptr %i.ce, ptr %24, align 8
  %i.cf = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #8
  %i.cg = extractvalue { ptr, ptr } %i.cf, 0
  %i.ch = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #8
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0
  %i.cj = icmp eq ptr %i.cg, %i.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br i1 %i.cj, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit66.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit66.thread.i.i.i.i"
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.ck, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cl = load <2 x ptr>, ptr %.2.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store <2 x ptr> %i.cl, ptr %21, align 16
  %i.cm = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #8 ; 2 uses
  %i.cn = and i64 %i.cm, 4
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = and i64 %i.cm, -5                       ; 2 uses
  %.not6.i.i67.i.i.i.i = icmp ne i64 %i.cp, 0
  %.not.not.i.i68.i.i.i.i = and i1 %i.co, %.not6.i.i67.i.i.i.i
  br i1 %.not.not.i.i68.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit70.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit70.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit70.thread.i.i.i.i": ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit70.i.i.i.i": ; preds = %bb.l
  %i.cq = inttoptr i64 %i.cp to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  store ptr %i.cq, ptr %22, align 8
  %i.cr = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #8
  %i.cs = extractvalue { ptr, ptr } %i.cr, 0
  %i.ct = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %36) #8
  %i.cu = extractvalue { ptr, ptr } %i.ct, 0
  %i.cv = icmp eq ptr %i.cs, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br i1 %i.cv, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit", label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.thread"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit50.i.i.i.i"
  %i.cw = getelementptr inbounds nuw i8, ptr %.02988.i.i.i.i, i64 16
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit140": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit54.i.i.i.i"
  %i.cx = getelementptr inbounds nuw i8, ptr %.02988.i.i.i.i, i64 32
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit142": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit58.i.i.i.i"
  %i.cy = getelementptr inbounds nuw i8, ptr %.02988.i.i.i.i, i64 48
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit.i.i.i.i", %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit140", %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit142", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit62.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit66.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit70.i.i.i.i"
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit66.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit62.i.i.i.i" ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit70.i.i.i.i" ], [ %i.cy, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit142" ], [ %i.cx, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit140" ], [ %i.cw, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02988.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit.i.i.i.i" ] ; 2 uses
  %i.cz = icmp eq ptr %.028.i.i.i.i, %i.b
  br i1 %i.cz, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.thread", label %bb.y

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit70.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_0EclIPKS7_EEbT_.exit70.thread.i.i.i.i", %._crit_edge.i.i.i.i, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit"
  %i.da = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  %i.db = call ptr @_ZNK4mlir23DataLayoutSpecInterface31getDefaultMemorySpaceIdentifierEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.da) #8 ; 2 uses
  %i.dc = load ptr, ptr %6, align 8, !tbaa !58, !noalias !59 ; 3 uses
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !60, !noalias !59 ; 2 uses
  %i.de = load i32, ptr %i.f, align 4, !tbaa !61, !noalias !59 ; 4 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.loopexit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.thread"
  %i.dg = add i32 %i.de, -1                       ; 2 uses
  %i.dh = ptrtoint ptr %i.db to i64
  %i.di = mul i64 %i.dh, -4658895280553007687     ; 2 uses
  %i.dj = lshr i64 %i.di, 31
  %i.dk = xor i64 %i.dj, %i.di
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = and i32 %i.dg, %i.dl                    ; 3 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = lshr i64 %i.dn, 5
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !62, !noalias !63
  %i.dr = and i32 %i.dm, 31
  %i.ds = lshr i32 %i.dq, %i.dr
  %i.dt = trunc i32 %i.ds to i1
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !64

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %bb.n
  %i.du = phi i64 [ %i.dz, %bb.n ], [ %i.dn, %bb.m ]
  %.01419.i.i.i.i.i = phi i32 [ %i.dy, %bb.n ], [ %i.dm, %bb.m ]
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.du ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !tbaa !66, !noalias !63
  %i.dw = icmp eq ptr %i.db, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.dw, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.loopexit.i.i, label %bb.n, !prof !11

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dx = add nuw i32 %.01419.i.i.i.i.i, 1
  %i.dy = and i32 %i.dx, %i.dg                    ; 3 uses
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = lshr i64 %i.dz, 5
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !62, !noalias !63
  %i.ed = and i32 %i.dy, 31
  %i.ee = lshr i32 %i.ec, %i.ed
  %i.ef = trunc i32 %i.ee to i1
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !67

.loopexit.i.i.i.i:                                ; preds = %bb.n, %bb.m, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit.thread"
  %i.eg = zext i32 %i.de to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.eg
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i = zext i32 %i.de to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.loopexit.i.i ], [ %i.eg, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.dv, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.loopexit.i.i ], [ %i.eh, %.loopexit.i.i.i.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.pre-phi.i.i
  %i.ej = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %.sink9.in.i.i = select i1 %i.ej, ptr %i.g, ptr %i.ek
  %.sink9.i.i = load i32, ptr %.sink9.in.i.i, align 8, !tbaa !62 ; 2 uses
  %i.el = load i32, ptr %i.g, align 8, !tbaa !13
  %i.em = icmp eq i32 %.sink9.i.i, %i.el
  br i1 %i.em, label %_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.i.i
  %i.en = zext i32 %.sink9.i.i to i64
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.0.0.copyload.i39 = load ptr, ptr %i.eq, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit

_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.i.i, %bb.o
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i39, %bb.o ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.i.i ]
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.o ], [ null, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findERKS3_.exit.i.i ]
  %i.er = call ptr @_ZN4mlir6detail21getDefaultMemorySpaceENS_24DataLayoutEntryInterfaceE(ptr %.sroa.0.0.i, ptr %.sroa.4.0.i) #8 ; 7 uses
  br i1 %.not.i, label %._crit_edge.i.i.i.i54, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit, %bb.s
  %.095.i.i.i.i = phi i64 [ %i.gg, %bb.s ], [ %i.d, %_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit ] ; 2 uses
  %.02994.i.i.i.i = phi ptr [ %i.gf, %bb.s ], [ %1, %_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.es = load <2 x ptr>, ptr %.02994.i.i.i.i, align 8
  store <2 x ptr> %i.es, ptr %19, align 16
  %i.et = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %19) #8 ; 2 uses
  %i.eu = and i64 %i.et, 4
  %i.ev = icmp eq i64 %i.eu, 0
  %i.ew = and i64 %i.et, -5                       ; 2 uses
  %.not5.i.i.i.i.i.i = icmp ne i64 %i.ew, 0
  %.not.not.i.i.i.i.i.i44 = and i1 %i.ev, %.not5.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i44, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit.thread.i.i.i.i": ; preds = %.lr.ph.i.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %bb.p

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i41
  %i.ex = inttoptr i64 %i.ew to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  store ptr %i.ex, ptr %20, align 8
  %i.ey = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #8
  %i.ez = extractvalue { ptr, ptr } %i.ey, 0
  %i.fa = icmp eq ptr %i.ez, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br i1 %i.fa, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit", label %bb.p

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit.thread.i.i.i.i"
  %i.fb = getelementptr inbounds nuw i8, ptr %.02994.i.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.fc = load <2 x ptr>, ptr %i.fb, align 8
  store <2 x ptr> %i.fc, ptr %17, align 16
  %i.fd = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %17) #8 ; 2 uses
  %i.fe = and i64 %i.fd, 4
  %i.ff = icmp eq i64 %i.fe, 0
  %i.fg = and i64 %i.fd, -5                       ; 2 uses
  %.not5.i.i47.i.i.i.i = icmp ne i64 %i.fg, 0
  %.not.not.i.i48.i.i.i.i47 = and i1 %i.ff, %.not5.i.i47.i.i.i.i
  br i1 %.not.not.i.i48.i.i.i.i47, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit51.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit51.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit51.thread.i.i.i.i": ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.q

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit51.i.i.i.i": ; preds = %bb.p
  %i.fh = inttoptr i64 %i.fg to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  store ptr %i.fh, ptr %18, align 8
  %i.fi = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #8
  %i.fj = extractvalue { ptr, ptr } %i.fi, 0
  %i.fk = icmp eq ptr %i.fj, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br i1 %i.fk, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit150", label %bb.q

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit51.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit51.thread.i.i.i.i"
  %i.fl = getelementptr inbounds nuw i8, ptr %.02994.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.fm = load <2 x ptr>, ptr %i.fl, align 8
  store <2 x ptr> %i.fm, ptr %15, align 16
  %i.fn = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #8 ; 2 uses
  %i.fo = and i64 %i.fn, 4
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = and i64 %i.fn, -5                       ; 2 uses
  %.not5.i.i52.i.i.i.i = icmp ne i64 %i.fq, 0
  %.not.not.i.i53.i.i.i.i = and i1 %i.fp, %.not5.i.i52.i.i.i.i
  br i1 %.not.not.i.i53.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit56.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit56.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit56.thread.i.i.i.i": ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.r

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit56.i.i.i.i": ; preds = %bb.q
  %i.fr = inttoptr i64 %i.fq to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  store ptr %i.fr, ptr %16, align 8
  %i.fs = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #8
  %i.ft = extractvalue { ptr, ptr } %i.fs, 0
  %i.fu = icmp eq ptr %i.ft, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br i1 %i.fu, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit148", label %bb.r

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit56.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit56.thread.i.i.i.i"
  %i.fv = getelementptr inbounds nuw i8, ptr %.02994.i.i.i.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.fw = load <2 x ptr>, ptr %i.fv, align 8
  store <2 x ptr> %i.fw, ptr %13, align 16
  %i.fx = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #8 ; 2 uses
  %i.fy = and i64 %i.fx, 4
  %i.fz = icmp eq i64 %i.fy, 0
  %i.ga = and i64 %i.fx, -5                       ; 2 uses
  %.not5.i.i57.i.i.i.i = icmp ne i64 %i.ga, 0
  %.not.not.i.i58.i.i.i.i = and i1 %i.fz, %.not5.i.i57.i.i.i.i
  br i1 %.not.not.i.i58.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit61.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit61.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit61.thread.i.i.i.i": ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.s

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit61.i.i.i.i": ; preds = %bb.r
  %i.gb = inttoptr i64 %i.ga to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  store ptr %i.gb, ptr %14, align 8
  %i.gc = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #8
  %i.gd = extractvalue { ptr, ptr } %i.gc, 0
  %i.ge = icmp eq ptr %i.gd, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br i1 %i.ge, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit", label %bb.s

bb.s:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit61.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit61.thread.i.i.i.i"
  %i.gf = getelementptr inbounds nuw i8, ptr %.02994.i.i.i.i, i64 64 ; 3 uses
  %i.gg = add nsw i64 %.095.i.i.i.i, -1
  %i.gh = icmp sgt i64 %.095.i.i.i.i, 1
  br i1 %i.gh, label %.lr.ph.i.i.i.i41, label %._crit_edge.loopexit.i.i.i.i52, !llvm.loop !54

._crit_edge.loopexit.i.i.i.i52:                   ; preds = %bb.s
  %.pre.i.i.i.i53 = ptrtoint ptr %i.gf to i64
  %.pre100.i.i.i.i = sub i64 %i.c, %.pre.i.i.i.i53
  %i.gi = ashr exact i64 %.pre100.i.i.i.i, 4
  br label %._crit_edge.i.i.i.i54

._crit_edge.i.i.i.i54:                            ; preds = %._crit_edge.loopexit.i.i.i.i52, %_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit
  %.pre-phi101.i.i.i.i = phi i64 [ %i.gi, %._crit_edge.loopexit.i.i.i.i52 ], [ %2, %_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit ]
  %.029.lcssa.i.i.i.i55 = phi ptr [ %i.gf, %._crit_edge.loopexit.i.i.i.i52 ], [ %1, %_ZNK4llvm9MapVectorIN4mlir10StringAttrENS1_24DataLayoutEntryInterfaceENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S3_ELj0EEELj0EE6lookupERKS2_.exit ] ; 5 uses
  switch i64 %.pre-phi101.i.i.i.i, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.thread" [
    i64 3, label %bb.t
    i64 2, label %bb.v
    i64 1, label %bb.x
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i54
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.gj = load <2 x ptr>, ptr %.029.lcssa.i.i.i.i55, align 8
  store <2 x ptr> %i.gj, ptr %11, align 16
  %i.gk = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #8 ; 2 uses
  %i.gl = and i64 %i.gk, 4
  %i.gm = icmp eq i64 %i.gl, 0
  %i.gn = and i64 %i.gk, -5                       ; 2 uses
  %.not5.i.i62.i.i.i.i = icmp ne i64 %i.gn, 0
  %.not.not.i.i63.i.i.i.i = and i1 %i.gm, %.not5.i.i62.i.i.i.i
  br i1 %.not.not.i.i63.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit66.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit66.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit66.thread.i.i.i.i": ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.u

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit66.i.i.i.i": ; preds = %bb.t
  %i.go = inttoptr i64 %i.gn to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  store ptr %i.go, ptr %12, align 8
  %i.gp = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #8
  %i.gq = extractvalue { ptr, ptr } %i.gp, 0
  %i.gr = icmp eq ptr %i.gq, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br i1 %i.gr, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit", label %bb.u

bb.u:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit66.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit66.thread.i.i.i.i"
  %i.gs = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i55, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i.i.i.i54
  %.1.i.i.i.i60 = phi ptr [ %i.gs, %bb.u ], [ %.029.lcssa.i.i.i.i55, %._crit_edge.i.i.i.i54 ] ; 3 uses
  %i.gt = load <2 x ptr>, ptr %.1.i.i.i.i60, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store <2 x ptr> %i.gt, ptr %9, align 16
  %i.gu = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #8 ; 2 uses
  %i.gv = and i64 %i.gu, 4
  %i.gw = icmp eq i64 %i.gv, 0
  %i.gx = and i64 %i.gu, -5                       ; 2 uses
  %.not5.i.i67.i.i.i.i = icmp ne i64 %i.gx, 0
  %.not.not.i.i68.i.i.i.i63 = and i1 %i.gw, %.not5.i.i67.i.i.i.i
  br i1 %.not.not.i.i68.i.i.i.i63, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit71.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit71.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit71.thread.i.i.i.i": ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.w

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit71.i.i.i.i": ; preds = %bb.v
  %i.gy = inttoptr i64 %i.gx to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  store ptr %i.gy, ptr %10, align 8
  %i.gz = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  %i.ha = extractvalue { ptr, ptr } %i.gz, 0
  %i.hb = icmp eq ptr %i.ha, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %i.hb, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit", label %bb.w

bb.w:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit71.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit71.thread.i.i.i.i"
  %i.hc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i60, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i54
  %.2.i.i.i.i56 = phi ptr [ %i.hc, %bb.w ], [ %.029.lcssa.i.i.i.i55, %._crit_edge.i.i.i.i54 ] ; 2 uses
  %i.hd = load <2 x ptr>, ptr %.2.i.i.i.i56, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x ptr> %i.hd, ptr %7, align 16
  %i.he = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #8 ; 2 uses
  %i.hf = and i64 %i.he, 4
  %i.hg = icmp eq i64 %i.hf, 0
  %i.hh = and i64 %i.he, -5                       ; 2 uses
  %.not5.i.i72.i.i.i.i = icmp ne i64 %i.hh, 0
  %.not.not.i.i73.i.i.i.i = and i1 %i.hg, %.not5.i.i72.i.i.i.i
  br i1 %.not.not.i.i73.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.thread.i.i.i.i": ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.i.i.i.i": ; preds = %bb.x
  %i.hi = inttoptr i64 %i.hh to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store ptr %i.hi, ptr %8, align 8
  %i.hj = call { ptr, ptr } @_ZNK4mlir3ptr7PtrType14getMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #8
  %i.hk = extractvalue { ptr, ptr } %i.hj, 0
  %i.hl = icmp eq ptr %i.hk, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.hl, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit", label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.thread"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit61.i.i.i.i"
  %i.hm = getelementptr inbounds nuw i8, ptr %.02994.i.i.i.i, i64 48
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit148": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit56.i.i.i.i"
  %i.hn = getelementptr inbounds nuw i8, ptr %.02994.i.i.i.i, i64 32
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit150": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit51.i.i.i.i"
  %i.ho = getelementptr inbounds nuw i8, ptr %.02994.i.i.i.i, i64 16
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit.i.i.i.i", %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit148", %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit150", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit71.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit66.i.i.i.i"
  %.023 = phi ptr [ %.2.i.i.i.i56, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.i.i.i.i" ], [ %.1.i.i.i.i60, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit71.i.i.i.i" ], [ %.029.lcssa.i.i.i.i55, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit66.i.i.i.i" ], [ %i.ho, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit150" ], [ %i.hm, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.hn, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.loopexit.split.loop.exit148" ], [ %.02994.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit.i.i.i.i" ] ; 2 uses
  %.not31 = icmp eq ptr %.023, %i.b
  br i1 %.not31, label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.thread", label %bb.y

bb.y:                                             ; preds = %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit", %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit"
  %.02385 = phi ptr [ %.023, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit" ], [ %.028.i.i.i.i, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_0EEDaOT_T0_.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #8
  %.sroa.0.0.copyload.i66 = load ptr, ptr %.02385, align 8, !tbaa !66
  store ptr %.sroa.0.0.copyload.i66, ptr %37, align 8
  %i.hp = call noundef i32 @_ZNK4mlir3ptr8SpecAttr7getSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #8
  %i.hq = call noundef i32 @_ZNK4mlir3ptr8SpecAttr6getAbiEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #8
  br label %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.thread"

"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.thread.i.i.i.i", %._crit_edge.i.i.i.i54, %bb.y, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit"
  %.025 = phi i32 [ %i.hp, %bb.y ], [ 64, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit" ], [ 64, %._crit_edge.i.i.i.i54 ], [ 64, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.thread.i.i.i.i" ], [ 64, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.i.i.i.i" ]
  %.024 = phi i32 [ %i.hq, %bb.y ], [ 8, %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit" ], [ 8, %._crit_edge.i.i.i.i54 ], [ 8, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.thread.i.i.i.i" ], [ 8, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir3ptr7PtrType13areCompatibleEN4llvm8ArrayRefINS2_24DataLayoutEntryInterfaceEEES8_NS2_23DataLayoutSpecInterfaceERKNS5_9MapVectorINS2_10StringAttrES7_NS5_8DenseMapISB_jNS5_12DenseMapInfoISB_vEENS5_6detail12DenseMapPairISB_jEEEENS5_11SmallVectorISt4pairISB_S7_ELj0EEELj0EEEE3$_1EclIPKS7_EEbT_.exit76.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #8
  %i.hr = call ptr @_ZNK4mlir24DataLayoutEntryInterface8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #8
  store ptr %i.hr, ptr %38, align 8
  %i.hs = call noundef i32 @_ZNK4mlir3ptr8SpecAttr7getSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #8
  %i.ht = call noundef i32 @_ZNK4mlir3ptr8SpecAttr6getAbiEv(ptr noundef nonnull align 8 dereferenceable(8) %38) #8 ; 2 uses
  %.not32 = icmp ne i32 %.025, %i.hs
  %i.hu = icmp ult i32 %.024, %i.ht
  %or.cond = or i1 %.not32, %i.hu
  br i1 %or.cond, label %.thread83, label %bb.z

bb.z:                                             ; preds = %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.thread"
  %i.hv = urem i32 %.024, %i.ht
  %.not33 = icmp eq i32 %i.hv, 0
  br i1 %.not33, label %bb.aa, label %.thread83

.thread83:                                        ; preds = %"_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEEZNKS2_3ptr7PtrType13areCompatibleES4_S4_NS2_23DataLayoutSpecInterfaceERKNS_9MapVectorINS2_10StringAttrES3_NS_8DenseMapISA_jNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEENS_11SmallVectorISt4pairISA_S3_ELj0EEELj0EEEE3$_1EEDaOT_T0_.exit.thread", %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8
  br label %.loopexit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #8
  %i.hw = getelementptr inbounds nuw i8, ptr %.022107, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.hw, %i.a
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.thread, %bb.a, %.thread83
  %.not89 = phi i1 [ false, %.thread83 ], [ true, %bb.a ], [ true, %.thread ]
  ret i1 %.not89
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_ZN4mlir6detail21getDefaultMemorySpaceENS_24DataLayoutEntryInterfaceE(ptr, ptr) local_unnamed_addr #2

declare ptr @_ZNK4mlir23DataLayoutSpecInterface31getDefaultMemorySpaceIdentifierEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZNK4mlir3ptr8SpecAttr7getSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZNK4mlir3ptr8SpecAttr6getAbiEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZNK4mlir24DataLayoutEntryInterface8getValueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK4mlir3ptr7PtrType15getABIAlignmentERKNS_10DataLayoutEN4llvm8ArrayRefINS_24DataLayoutEntryInterfaceEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nofree readonly captures(address) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::ptr::SpecAttr", align 8 ; 5 uses
  %i.a = tail call ptr @_ZNK4mlir10DataLayout21getDefaultMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #8 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4llvm15cast_if_presentIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDaRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_3ptr24MemorySpaceAttrInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_3ptr24MemorySpaceAttrInterfaceENS_9AttributeENS2_6detail39MemorySpaceAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3ptr24MemorySpaceAttrInterfaceEvE13resolveTypeIDEvE2id) #8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_3ptr24MemorySpaceAttrInterfaceENS_9AttributeENS2_6detail39MemorySpaceAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.3, i64 49), i64 35) #8
  store ptr %i.g, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3ptr24MemorySpaceAttrInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_3ptr24MemorySpaceAttrInterfaceEvE13resolveTypeIDEvE2id) #8
  br label %_ZN4mlir6detail9InterfaceINS_3ptr24MemorySpaceAttrInterfaceENS_9AttributeENS2_6detail39MemorySpaceAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_3ptr24MemorySpaceAttrInterfaceENS_9AttributeENS2_6detail39MemorySpaceAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_3ptr24MemorySpaceAttrInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !20 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_3ptr24MemorySpaceAttrInterfaceENS_9AttributeENS2_6detail39MemorySpaceAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.l = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.l ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.n = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = xor i64 %i.l, -1
  %i.q = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.p
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.n, ptr %i.o, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.n, i64 %i.q, i64 %i.l ; 2 uses
  %i.r = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_3ptr24MemorySpaceAttrInterfaceENS_9AttributeENS2_6detail39MemorySpaceAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_3ptr24MemorySpaceAttrInterfaceENS_9AttributeENS2_6detail39MemorySpaceAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %_ZN4mlir6detail9InterfaceINS_3ptr24MemorySpaceAttrInterfaceENS_9AttributeENS2_6detail39MemorySpaceAttrInterfaceInterfaceTraitsES4_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDcRKT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !22
  %i.u = icmp eq ptr %i.t, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_ZN4llvm4castIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDcRKT0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  br label %_ZN4llvm4castIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDcRKT0_.exit.i

_ZN4llvm4castIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDcRKT0_.exit.i: ; preds = %bb.f, %bb.e, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.x = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.f ], [ null, %bb.e ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.x, 1
  br label %_ZN4llvm15cast_if_presentIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDaRKT0_.exit

_ZN4llvm15cast_if_presentIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDaRKT0_.exit: ; preds = %bb.a, %_ZN4llvm4castIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDcRKT0_.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4llvm4castIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDcRKT0_.exit.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.y = extractvalue { ptr, ptr } %.pn.i, 0      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %.sroa.05.0.copyload = load ptr, ptr %0, align 8
  %i.z = tail call fastcc ptr @_ZL14getPointerSpecN4llvm8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEENS1_3ptr7PtrTypeENS4_24MemorySpaceAttrInterfaceE(ptr %2, i64 %3, ptr %.sroa.05.0.copyload, ptr %i.y) ; 2 uses
  store ptr %i.z, ptr %4, align 8
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZN4llvm15cast_if_presentIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDaRKT0_.exit
  %i.aa = call noundef i32 @_ZNK4mlir3ptr8SpecAttr6getAbiEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = zext nneg i32 %i.ab to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.h

bb.g:                                             ; preds = %_ZN4llvm15cast_if_presentIN4mlir3ptr24MemorySpaceAttrInterfaceENS1_9AttributeEEEDaRKT0_.exit
  %i.ad = extractvalue { ptr, ptr } %.pn.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.ae = tail call ptr @_ZN4mlir3ptr7PtrType3getENS0_24MemorySpaceAttrInterfaceE(ptr %i.y, ptr %i.ad) #8
  %i.af = tail call noundef i64 @_ZNK4mlir10DataLayout19getTypeABIAlignmentENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %i.ae) #8
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.1 = phi i64 [ %i.af, %bb.g ], [ %i.ac, %.thread ]
  ret i64 %.1
}

declare ptr @_ZNK4mlir10DataLayout21getDefaultMemorySpaceEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZL14getPointerSpecN4llvm8ArrayRefIN4mlir24DataLayoutEntryInterfaceEEENS1_3ptr7PtrTypeENS4_24MemorySpaceAttrInterfaceE(ptr nofree readonly captures(address) %0, i64 %1, ptr %2, ptr nofree readnone captures(address) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.mlir::ptr::PtrType", align 8 ; 4 uses
  %5 = alloca %"class.mlir::DataLayoutEntryInterface", align 8 ; 7 uses
  %6 = alloca %"class.mlir::ptr::PtrType", align 8 ; 4 uses
  store ptr %2, ptr %4, align 8
  %.idx = shl nuw nsw i64 %1, 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not28 = icmp eq i64 %1, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.029 = phi ptr [ %i.q, %bb.d ], [ %0, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.029, i64 16, i1 false)
  %i.b = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  %i.c = and i64 %i.b, 4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.e = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
end_hunk_0
