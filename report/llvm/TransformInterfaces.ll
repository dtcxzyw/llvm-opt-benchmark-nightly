Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TransformInterfaces?download=true
inline.NumInlined: 8792
inline.NumDeleted: 4133
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNK4mlir9transform14TransformState36checkAndRecordHandleInvalidationImplENS0_20TransformOpInterfaceERN4llvm8DenseMapINS_5ValueESt8functionIFvNS_8LocationEEENS3_12DenseMapInfoIS5_vEENS3_6detail12DenseMapPairIS5_S9_EEEE:bb.a

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i75: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i75, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i74
  %.017.i.i.i.i.i.i.i.i.i.i76 = phi i64 [ %i.lo, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i74 ], [ %.1.i.i.i.i.i.i.i.i.i.i82, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i75 ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i77 = phi ptr [ %i.ll, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i74 ], [ %.112.i.i.i.i.i.i.i.i.i.i81, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i75 ] ; 2 uses
  %i.lp = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i76, 1 ; 3 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i77, i64 %i.lp ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i80 = load ptr, ptr %i.lq, align 8, !tbaa !232
  %i.lr = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i80, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i72 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lt = xor i64 %i.lp, -1
  %i.lu = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i76, %i.lt
  %.112.i.i.i.i.i.i.i.i.i.i81 = select i1 %i.lr, ptr %i.ls, ptr %.01116.i.i.i.i.i.i.i.i.i.i77 ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i82 = select i1 %i.lr, i64 %i.lu, i64 %i.lp ; 2 uses
  %i.lv = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i82, 0
  br i1 %i.lv, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i75, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i83, !llvm.loop !280

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i83: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i75, %_ZN4mlir6detail9InterfaceINS_9transform33TransformValueHandleTypeInterfaceENS_4TypeENS2_6detail48TransformValueHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i84 = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform33TransformValueHandleTypeInterfaceENS_4TypeENS2_6detail48TransformValueHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %i.lo, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i75 ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i85 = phi ptr [ %i.ll, %_ZN4mlir6detail9InterfaceINS_9transform33TransformValueHandleTypeInterfaceENS_4TypeENS2_6detail48TransformValueHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i81, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i75 ] ; 3 uses
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %.pre-phi.i.i.i.i.i.i.i84
  %.not.i.i.i.i.i.i.i86 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i85, %i.lw
  br i1 %.not.i.i.i.i.i.i.i86, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEELj1EEEZNKS2_9transform14TransformState36checkAndRecordHandleInvalidationImplENSA_20TransformOpInterfaceERNS_8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEEE3$_0EEbOT_T0_.exit.thread", label %bb.bt

bb.bt:                                            ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i83
  %i.lx = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i85, align 8, !tbaa !281
  %i.ly = icmp eq ptr %i.lx, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i72
  br i1 %i.ly, label %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEELj1EEEZNKS2_9transform14TransformState36checkAndRecordHandleInvalidationImplENSA_20TransformOpInterfaceERNS_8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEEE3$_0EEbOT_T0_.exit.thread"

_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.bt
  %i.lz = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i85, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !283
  %.not134 = icmp eq ptr %i.ma, null
  br i1 %.not134, label %"_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEELj1EEEZNKS2_9transform14TransformState36checkAndRecordHandleInvalidationImplENSA_20TransformOpInterfaceERNS_8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEEE3$_0EEbOT_T0_.exit.thread", label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit
  call void @_ZNK4mlir9transform14TransformState29recordValueHandleInvalidationERNS_9OpOperandERN4llvm8DenseMapINS_5ValueESt8functionIFvNS_8LocationEEENS4_12DenseMapInfoIS6_vEENS4_6detail12DenseMapPairIS6_SA_EEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(32) %.047155, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %"_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEELj1EEEZNKS2_9transform14TransformState36checkAndRecordHandleInvalidationImplENSA_20TransformOpInterfaceERNS_8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEELj1EEEZNKS2_9transform14TransformState36checkAndRecordHandleInvalidationImplENSA_20TransformOpInterfaceERNS_8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEEE3$_0EEbOT_T0_.exit.thread": ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i83, %bb.bt, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4mlir9transform14TransformState36checkAndRecordHandleInvalidationImplENS3_20TransformOpInterfaceERN4llvm8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS6_12DenseMapInfoIS8_vEENS6_6detail12DenseMapPairIS8_SC_EEEEE3$_0EclIPNS2_11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEEEEbT_.exit95.i.i.i.i.i.i", %_ZN4llvm3isaIJN4mlir13MemoryEffects4FreeEEPNS2_6EffectEEEbRKT0_.exit.i.i86.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEELj1EEEZNKS2_9transform14TransformState36checkAndRecordHandleInvalidationImplENSA_20TransformOpInterfaceERNS_8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEEE3$_0EEbOT_T0_.exit", %_ZN4llvm3isaIJN4mlir9transform33TransformValueHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit, %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit, %bb.bu
  %i.mb = getelementptr inbounds nuw i8, ptr %.047155, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.mb, %i.ae
  br i1 %.not, label %.thread128, label %bb.e

.thread128:                                       ; preds = %"_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEELj1EEEZNKS2_9transform14TransformState36checkAndRecordHandleInvalidationImplENSA_20TransformOpInterfaceERNS_8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEEE3$_0EEbOT_T0_.exit.thread", %_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit, %_ZN4mlir9Operation13getOpOperandsEv.exit, %_ZNKSt8functionIFvN4mlir8LocationEEEclES1_.exit60, %_ZNKSt8functionIFvN4mlir8LocationEEEclES1_.exit
  %.sroa.039.3 = phi i8 [ 0, %_ZNKSt8functionIFvN4mlir8LocationEEEclES1_.exit60 ], [ 0, %_ZNKSt8functionIFvN4mlir8LocationEEEclES1_.exit ], [ 1, %_ZN4mlir9Operation13getOpOperandsEv.exit ], [ 1, %_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit ], [ 1, %"_ZN4llvm6any_ofIRNS_11SmallVectorIN4mlir11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEELj1EEEZNKS2_9transform14TransformState36checkAndRecordHandleInvalidationImplENSA_20TransformOpInterfaceERNS_8DenseMapINS2_5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoISE_vEENS_6detail12DenseMapPairISE_SI_EEEEE3$_0EEbOT_T0_.exit.thread" ]
  %i.mc = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.e
  br i1 %i.md, label %_ZN4llvm11SmallVectorIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEELj1EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %.thread128
  call void @free(ptr noundef %i.mc) #24
  br label %_ZN4llvm11SmallVectorIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEELj1EED2Ev.exit: ; preds = %.thread128, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i8 %.sroa.039.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir9transform20TransformOpInterface28allowsRepeatedHandleOperandsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !833  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !803
  %i.e = load ptr, ptr %0, align 8, !tbaa !834
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef %i.b, ptr noundef %i.e) #24
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir9transform14TransformState32checkAndRecordHandleInvalidationENS0_20TransformOpInterfaceE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr %1, ptr %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::DenseMap.14", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = call i8 @_ZNK4mlir9transform14TransformState36checkAndRecordHandleInvalidationImplENS0_20TransformOpInterfaceERN4llvm8DenseMapINS_5ValueESt8functionIFvNS_8LocationEEENS3_12DenseMapInfoIS5_vEENS3_6detail12DenseMapPairIS5_S9_EEEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %3, align 8, !tbaa !679, !noalias !835
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !685, !noalias !835 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !686, !noalias !835 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !763, !noalias !835
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i32 %i.g to i64                     ; 3 uses
  %.idx27 = mul nuw nsw i64 %i.k, 40              ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.g, 0
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.k, 31
  %i.m = lshr i64 %i.l, 5                         ; 4 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !124, !noalias !838 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit, label %.lr.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit, label %.lr.ph, !llvm.loop !841

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !124, !noalias !838 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !841

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph
  %i.w = mul i64 %i.s, 1280
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i ]
  %i.x = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.x, 40
  %.idx = zext nneg i32 %narrow to i64
  %i.y = add i64 %.012.lcssa.i.i.i, %.idx         ; 2 uses
  %.not4.i = icmp eq i64 %i.y, %.idx27
  br i1 %.not4.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit, %_ZNSt13move_iteratorIN4llvm16DenseMapIteratorIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S7_EELb0EEEEppEv.exit.i
  %.pn = phi i64 [ %i.au, %_ZNSt13move_iteratorIN4llvm16DenseMapIteratorIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S7_EELb0EEEEppEv.exit.i ], [ %i.y, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit ] ; 2 uses
  %storemerge16.i.i.i35.i = getelementptr i8, ptr %i.c, i64 %.pn ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i35.i, i64 8
  %i.aa = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIS3_JS7_EEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %storemerge16.i.i.i35.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z), !noalias !842 ; 0 uses
  %i.ab = add i64 %.pn, 40
  %i.ac = sdiv exact i64 %i.ab, 40                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.ac, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = lshr i64 %i.ac, 5                       ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = trunc nuw i64 %i.ac to i32
  %i.ah = and i32 %i.ag, 31
  %i.ai = shl nsw i32 -1, %i.ah
  %i.aj = and i32 %i.af, %i.ai                    ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.preheader, label %_ZNSt13move_iteratorIN4llvm16DenseMapIteratorIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S7_EELb0EEEEppEv.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.al = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.m
  br i1 %i.am, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit, label %.lr.ph66

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph66
  %i.an = add i64 %i.ap, 1                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.m
  br i1 %i.ao, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit, label %.lr.ph66, !llvm.loop !841

.lr.ph66:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.ap = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !124 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %_ZNSt13move_iteratorIN4llvm16DenseMapIteratorIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S7_EELb0EEEEppEv.exit.i, !llvm.loop !841

_ZNSt13move_iteratorIN4llvm16DenseMapIteratorIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S7_EELb0EEEEppEv.exit.i: ; preds = %.lr.ph66, %bb.c
  %.012.lcssa.i.i.i.i = phi i64 [ %i.ad, %bb.c ], [ %i.ap, %.lr.ph66 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.aj, %bb.c ], [ %i.ar, %.lr.ph66 ]
  %i.at = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i, 1280
  %narrow29 = mul nuw nsw i32 %i.at, 40
  %.idx28 = zext nneg i32 %narrow29 to i64
  %i.au = add i64 %.idx.i.i.i.i, %.idx28          ; 2 uses
  %.not.i = icmp eq i64 %i.au, %.idx27
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit, label %.lr.ph.i, !llvm.loop !847

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i, %_ZNSt13move_iteratorIN4llvm16DenseMapIteratorIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS0_12DenseMapInfoIS3_vEENS0_6detail12DenseMapPairIS3_S7_EELb0EEEEppEv.exit.i, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader, %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit
  %i.av = load i32, ptr %i.f, align 4, !tbaa !686 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit
  %i.ax = load ptr, ptr %3, align 8, !tbaa !679
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !685
  %i.az = zext i32 %i.av to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.be = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.bd, %.lr.ph.i.i ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.bg = or disjoint i32 %i.bf, %i.be
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i4, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bm = call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i32 noundef 3) #24, !inline_history !848 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.e, %bb.d
  %i.bn = add i32 %.0.i3.i.i, -1
  %i.bo = and i32 %i.bn, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !849

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bb
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !850

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.f, align 4, !tbaa !686 ; 2 uses
  %i.bp = icmp eq i32 %.pr.i, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  %i.bq = load ptr, ptr %3, align 8, !tbaa !679
  %i.br = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 40
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6insertISt13move_iteratorINS_16DenseMapIteratorIS3_S7_S9_SC_Lb0EEEEEEvT_SK_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform14TransformState16compactOpHandlesEv(ptr noundef nonnull align 8 dereferenceable(328) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %2 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !851, !noalias !852
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !857, !noalias !852 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !858, !noalias !852 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !859, !noalias !852 ; 5 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx71 = shl nuw nsw i64 %i.j, 3               ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i64 %i.j, 31
  %i.l = lshr i64 %i.k, 5                         ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !124, !noalias !860 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %._crit_edge, label %.lr.ph86

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph86
  %i.p = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.l
  br i1 %i.q, label %._crit_edge, label %.lr.ph86, !llvm.loop !863

.lr.ph86:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.r = phi i64 [ %i.p, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !124, !noalias !860 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !863

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph86
  %i.v = shl i64 %i.r, 8
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit

_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %._crit_edge.i.loopexit.i.i.i ]
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.x = shl nuw nsw i32 %i.w, 3
  %.idx = zext nneg i32 %i.x to i64
  %i.y = or disjoint i64 %.012.lcssa.i.i.i.i, %.idx ; 2 uses
  %.not25 = icmp eq i64 %i.y, %.idx71
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = add nuw nsw i64 %i.j, 31
  %i.ae = lshr i64 %i.ad, 5                       ; 2 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZN4llvm5eraseINS_11SmallVectorIPN4mlir9OperationELj2EEEDnEEvRT_T0_.exit, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit, %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.pre = load i32, ptr %i.g, align 8, !tbaa !859
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.a, %._crit_edge.loopexit, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit
  %i.af = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.h, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv.exit ], [ %i.h, %bb.a ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ah = shl i32 %i.af, 2
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !858 ; 3 uses
  %i.aj = icmp ult i32 %i.ah, %i.ai
  %i.ak = icmp ugt i32 %i.ai, 64
  %or.cond.i.i = and i1 %i.aj, %i.ak
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5clearEv.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !857
  %i.am = zext i32 %i.ai to i64
  %i.an = add nuw nsw i64 %i.am, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.al, i8 0, i64 %i.ap, i1 false)
  store i32 0, ptr %i.g, align 8, !tbaa !859
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5clearEv.exit

_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5clearEv.exit: ; preds = %._crit_edge, %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit
  %.pn = phi i64 [ %i.y, %.lr.ph ], [ %i.et, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.sroa.07.026 = getelementptr i8, ptr %i.b, i64 %.pn
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.aq = load i64, ptr %.sroa.07.026, align 8, !tbaa !143 ; 2 uses
  store i64 %i.aq, ptr %2, align 8, !tbaa !143
  %.sroa.0.0.copyload.cast = inttoptr i64 %i.aq to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.sroa.0.0.copyload.cast, ptr %1, align 8
  %i.ar = call noundef ptr @_ZN4mlir5Value15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #24 ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !112, !noalias !864 ; 3 uses
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !122, !noalias !864 ; 2 uses
  %i.au = load i32, ptr %i.aa, align 4, !tbaa !123, !noalias !864 ; 4 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.loopexit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = add i32 %i.au, -1                       ; 2 uses
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = mul i64 %i.ax, -4658895280553007687     ; 2 uses
  %i.az = lshr i64 %i.ay, 31
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.aw, %i.bb                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !124, !noalias !873
  %i.bh = and i32 %i.bc, 31
  %i.bi = lshr i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !126

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %bb.h
  %i.bk = phi i64 [ %i.bq, %bb.h ], [ %i.bd, %bb.g ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.h ], [ %i.bc, %bb.g ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bk ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !111, !noalias !873
  %i.bn = icmp eq ptr %i.ar, %i.bm
  br i1 %i.bn, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i.i, label %bb.h, !prof !64

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bo = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.bp = and i32 %i.bo, %i.aw                    ; 3 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 5
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !124, !noalias !873
  %i.bu = and i32 %i.bp, 31
  %i.bv = lshr i32 %i.bt, %i.bu
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform15applyTransformsEPNS_9OperationENS0_20TransformOpInterfaceERKNS_11RaggedArrayIN4llvm12PointerUnionIJS2_NS_9AttributeENS_5ValueEEEEEERKNS0_16TransformOptionsEbNS5_12function_refIFvRNS0_14TransformStateEEEENSG_IFNS5_13LogicalResultESI_EEE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i32 3, ptr %8, align 8, !tbaa !318
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.82, ptr %i.t, align 8, !tbaa !321
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 57, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !323
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !57   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !58
  %.not.i.i.i.i.i5 = icmp ult i32 %i.v, %i.x
  br i1 %.not.i.i.i.i.i5, label %bb.i, label %bb.h, !prof !64

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN4mlir10Diagnostic6appendIRA58_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !57
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !57
  br label %_ZN4mlir10Diagnostic6appendIRA58_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA58_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit: ; preds = %bb.f, %_ZN4mlir10Diagnostic6appendIRA58_KcEERS0_OT_.exit.i.i
  %i.ad = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  %i.ae = load ptr, ptr %9, align 8, !tbaa !360
  %.not.i6 = icmp eq ptr %i.ae, null
  br i1 %.not.i6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA58_KcEEOS0_OT_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !368, !range !369, !noundef !370
  %i.ah = trunc nuw i8 %i.ag to i1
  store i8 0, ptr %i.af, align 8, !tbaa !368
  br i1 %i.ah, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ai) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.m:                                             ; preds = %bb.a
  %i.aj = tail call i8 @_ZN4mlir9transform6detail38verifyPossibleTopLevelTransformOpTraitEPNS_9OperationE(ptr noundef %1)
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN4mlir9Operation14getNumOperandsEv.exit.thread, label %bb.u

_ZN4mlir9Operation14getNumOperandsEv.exit.thread: ; preds = %bb.e, %bb.m, %_ZN4mlir9Operation14getNumOperandsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1349 ; 2 uses
  %.not.i7 = icmp eq ptr %i.am, null
  br i1 %.not.i7, label %_ZN4mlir9Operation15getParentRegionEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.thread
  %i.an = tail call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.am) #24
  br label %_ZN4mlir9Operation15getParentRegionEv.exit

_ZN4mlir9Operation15getParentRegionEv.exit:       ; preds = %_ZN4mlir9Operation14getNumOperandsEv.exit.thread, %bb.n
  %i.ao = phi ptr [ %i.an, %bb.n ], [ null, %_ZN4mlir9Operation14getNumOperandsEv.exit.thread ]
  call void @_ZN4mlir9transform14TransformStateC1EPNS_6RegionEPNS_9OperationERKNS_11RaggedArrayIN4llvm12PointerUnionIJS5_NS_9AttributeENS_5ValueEEEEEERKNS0_16TransformOptionsE(ptr noundef nonnull align 8 dereferenceable(328) %11, ptr noundef %i.ao, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) #24
  %i.ap = load ptr, ptr %6, align 8, !tbaa !1432  ; 2 uses
  %.not14 = icmp eq ptr %i.ap, null
  br i1 %.not14, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4mlir9Operation15getParentRegionEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1434
  call void %i.ap(i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(328) %11) #24, !inline_history !1435
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN4mlir9Operation15getParentRegionEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @_ZN4mlir9transform14TransformState14applyTransformENS0_20TransformOpInterfaceE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::DiagnosedSilenceableFailure") align 8 %12, ptr noundef nonnull align 8 dereferenceable(328) %11, ptr nonnull %1, ptr %2)
  %i.as = call i8 @_ZN4mlir27DiagnosedSilenceableFailure14checkAndReportEv(ptr noundef nonnull align 8 dereferenceable(209) %12) #24
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load ptr, ptr %12, align 8, !tbaa !10   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.p
  %i.ax = zext i32 %i.aw to i64
  %.idx.i.i = mul nuw nsw i64 %i.ax, 192
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ay, %.lr.ph.i.preheader.i.i ]
  %i.az = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -192 ; 3 uses
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.az) #24
  %.not.i.i.i = icmp eq ptr %i.au, %i.az
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !275

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %12, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i, %bb.p
  %i.ba = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i ], [ %i.au, %bb.p ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i
  call void @free(ptr noundef %i.ba) #24
  br label %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit

_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit:   ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %i.at, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit
  %i.bd = load ptr, ptr %7, align 8, !tbaa !1436  ; 2 uses
  %.not15 = icmp eq ptr %i.bd, null
  br i1 %.not15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1438
  %i.bg = call i8 %i.bd(i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(328) %11) #24, !inline_history !1439
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit, %bb.s
  %.sroa.04.0 = phi i8 [ 0, %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit ], [ %i.bg, %bb.s ], [ 1, %bb.r ]
  call void @_ZN4mlir9transform14TransformStateD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %bb.t, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.04.1 = phi i8 [ %i.ad, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %.sroa.04.0, %bb.t ], [ 0, %bb.m ]
  ret i8 %.sroa.04.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9transform14TransformStateD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir9transform14TransformState11RegionScopeEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4mlir9transform14TransformState11RegionScopeEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZN4mlir9transform14TransformState11RegionScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #26
  br label %_ZNSt10unique_ptrIN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4mlir9transform14TransformState11RegionScopeEEclEPS3_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm11SmallVectorIPN4mlir9transform14TransformState11RegionScopeELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EED2Ev.exit
  tail call void @free(ptr noundef %i.d) #24
  br label %_ZN4llvm11SmallVectorIPN4mlir9transform14TransformState11RegionScopeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir9transform14TransformState11RegionScopeELj6EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EED2Ev.exit, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !686  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm11SmallVectorIPN4mlir9transform14TransformState11RegionScopeELj6EED2Ev.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !679
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !685
  %i.n = zext i32 %i.i to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !124  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.s = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !798  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 3) #24, !inline_history !848 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ab = add i32 %.0.i3.i.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !849

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.p
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !850

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.h, align 4, !tbaa !686 ; 2 uses
  %i.ad = icmp eq i32 %.pr.i, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !679
  %i.af = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 40
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN4mlir9transform14TransformState11RegionScopeELj6EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit
  tail call void @free(ptr noundef %i.an) #24
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i: ; preds = %bb.f, %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i
  tail call void @free(ptr noundef %i.aq) #24
  br label %_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit

_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EED2Ev.exit.i, %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1440 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_9transform14TransformState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i1

.lr.ph7.preheader.i.i1:                           ; preds = %_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !1441
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1442
  %i.ba = zext i32 %i.av to i64
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 5
  br label %.lr.ph7.i.i2

.lr.ph7.i.i2:                                     ; preds = %._crit_edge.i.i10, %.lr.ph7.preheader.i.i1
  %indvars.iv.i.i3 = phi i64 [ 0, %.lr.ph7.preheader.i.i1 ], [ %indvars.iv.next.i.i11, %._crit_edge.i.i10 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.i3
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i4 = icmp eq i32 %i.be, 0
  br i1 %.not11.i2.i.i4, label %._crit_edge.i.i10, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %.lr.ph7.i.i2
  %indvars.iv.tr.i.i6 = trunc i64 %indvars.iv.i.i3 to i32
  %i.bf = shl i32 %indvars.iv.tr.i.i6, 5
  br label %bb.h

bb.h:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i5
  %.0.i3.i.i7 = phi i32 [ %i.be, %.lr.ph.i.i5 ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i7, i1 true)
  %i.bh = or disjoint i32 %i.bg, %i.bf
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1443 ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i8, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4mlir9transform14TransformState9ExtensionEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir9transform14TransformState9ExtensionEEclEPS3_.exit.i.i.i.i: ; preds = %bb.h
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !237
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #24, !inline_history !1445
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir9transform14TransformState9ExtensionEEclEPS3_.exit.i.i.i.i, %bb.h
  %i.bp = add i32 %.0.i3.i.i7, -1
  %i.bq = and i32 %i.bp, %.0.i3.i.i7              ; 2 uses
  %.not11.i.i.i9 = icmp eq i32 %i.bq, 0
  br i1 %.not11.i.i.i9, label %._crit_edge.i.i10, label %bb.h, !llvm.loop !1446

._crit_edge.i.i10:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i2
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i3, 1 ; 2 uses
  %.not.i.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %i.bc
  br i1 %.not.i.i.i12, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, label %.lr.ph7.i.i2, !llvm.loop !1447

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i10
  %.pr.i13 = load i32, ptr %i.au, align 4, !tbaa !1440 ; 2 uses
  %i.br = icmp eq i32 %.pr.i13, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_9transform14TransformState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i
  %i.bs = load ptr, ptr %i.at, align 8, !tbaa !1441
  %i.bt = zext i32 %.pr.i13 to i64                ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 4
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_9transform14TransformState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_9transform14TransformState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit: ; preds = %_ZN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEEES3_SA_SC_SF_E10destroyAllEv.exit.i, %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !858 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_9transform14TransformState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !851
  %i.ce = zext i32 %i.cb to i64                   ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.ce, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef 8) #24
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_9transform14TransformState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEED2Ev.exit, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  %i.co = zext i32 %i.cn to i64
  %.idx.i.i = shl nuw nsw i64 %i.co, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.cq, %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i.i ], [ %i.cp, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN4mlir9transform14TransformState8MappingsEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir9transform14TransformState8MappingsEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN4mlir9transform14TransformState8MappingsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cs) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 120) #26
  br label %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i.i

_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir9transform14TransformState8MappingsEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i14 = icmp eq ptr %i.cl, %i.cq
  br i1 %.not.i.i.i14, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1448

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.ck, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.loopexit.i.i, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  %i.ct = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.loopexit.i.i ], [ %i.cl, %_ZN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit ] ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bz
  br i1 %i.cu, label %_ZN4llvm11SmallVectorISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELj0EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.i.i
  tail call void @free(ptr noundef %i.ct) #24
  br label %_ZN4llvm11SmallVectorISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELj0EED2Ev.exit.i: ; preds = %bb.k, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE13destroy_rangeEPSC_SE_.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !123 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZN4llvm9MapVectorIPN4mlir6RegionESt10unique_ptrINS1_9transform14TransformState8MappingsESt14default_deleteIS7_EENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_SA_ELj0EEELj0EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELj0EED2Ev.exit.i
  %i.cy = load ptr, ptr %0, align 8, !tbaa !112
  %i.cz = zext i32 %i.cw to i64                   ; 2 uses
  %i.da = shl nuw nsw i64 %i.cz, 4
  %i.db = add nuw nsw i64 %i.cz, 31
  %i.dc = lshr i64 %i.db, 3
  %i.dd = and i64 %i.dc, 1073741820
  %i.de = add nuw nsw i64 %i.dd, %i.da
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cy, i64 noundef %i.de, i64 noundef 8) #24
  br label %_ZN4llvm9MapVectorIPN4mlir6RegionESt10unique_ptrINS1_9transform14TransformState8MappingsESt14default_deleteIS7_EENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_SA_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPN4mlir6RegionESt10unique_ptrINS1_9transform14TransformState8MappingsESt14default_deleteIS7_EENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_SA_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELj0EED2Ev.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform38ConversionPatternDescriptorOpInterface16populatePatternsERNS_13TypeConverterERNS_17RewritePatternSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(508) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1449 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1453
  %i.d = load ptr, ptr %0, align 8, !tbaa !834
  tail call void %i.c(ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(508) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform38ConversionPatternDescriptorOpInterface29populateConversionTargetRulesERKNS_13TypeConverterERNS_16ConversionTargetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(508) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1449 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1455
  %i.e = load ptr, ptr %0, align 8, !tbaa !834
  tail call void %i.d(ptr noundef %i.b, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(508) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform38ConversionPatternDescriptorOpInterface16getTypeConverterEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.502") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1449 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1456
  %i.e = load ptr, ptr %1, align 8, !tbaa !834
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.502") align 8 %0, ptr noundef %i.b, ptr noundef %i.e) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform38ConversionPatternDescriptorOpInterface19verifyTypeConverterENS0_31TypeConverterBuilderOpInterfaceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1449 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1457
  %i.e = load ptr, ptr %0, align 8, !tbaa !834
  %i.f = tail call i8 %i.d(ptr noundef %i.b, ptr noundef %i.e, ptr %1, ptr %2) #24
  ret i8 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform28NormalFormCheckedOpInterface21getCheckedNormalFormsERN4llvm15SmallVectorImplINS0_23NormalFormAttrInterfaceEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1458 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1462
  %i.d = load ptr, ptr %0, align 8, !tbaa !834
  tail call void %i.c(ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform28PatternDescriptorOpInterface16populatePatternsERNS_17RewritePatternSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1464 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1468
  %i.d = load ptr, ptr %0, align 8, !tbaa !834
  tail call void %i.c(ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(176) %1) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1493
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !122
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !112
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !124
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !124
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1494
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !111
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !111
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !124
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112, !noalias !1495 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122, !noalias !1495 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !123, !noalias !1495 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !124
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !111
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !1492

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1493
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !112
  store ptr %i.y, ptr %i.q, align 8, !tbaa !122
  store i32 0, ptr %i.p, align 16, !tbaa !1494
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !696
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1493
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !696
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !696
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !124 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !124
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !124
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !124
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !112    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !123  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !123
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !124
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1500

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !111
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !124
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !124
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !124
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !124
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1501

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !1502

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !123
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1494
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1494
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS4_EESI_IJOSB_EEEEERSC_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !100
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %3, align 8, !tbaa !106
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !111
  store ptr %i.l, ptr %i.g, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load i64, ptr %i.k, align 8, !tbaa !92
  store i64 %i.n, ptr %i.m, align 8, !tbaa !92
  store ptr null, ptr %i.k, align 8, !tbaa !92
  %i.o = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.f, 4               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %i.q = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.r = lshr exact i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.t = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.prol, align 8, !tbaa !80
  store ptr %i.t, ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92
  store i64 %i.w, ptr %i.u, align 8, !tbaa !92
  store ptr null, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1503

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.z = icmp ult i64 %i.q, 48
  br i1 %i.z, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.aa = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !80
  store ptr %i.aa, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !92
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !92
  store ptr null, ptr %i.ac, align 8, !tbaa !92
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !80
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !92
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !92
  store ptr null, ptr %i.ai, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !80
  store ptr %i.am, ptr %i.al, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !92
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !92
  store ptr null, ptr %i.ao, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !80
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !92
  store i64 %i.av, ptr %i.at, align 8, !tbaa !92
  store ptr null, ptr %i.au, align 8, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %i.aw, %i.p
  br i1 %.not.i.i.i.i.i.i.3, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1504

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i
  %.05.i.i = phi ptr [ %i.ay, %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i ], [ %i.p, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4mlir9transform14TransformState8MappingsEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4mlir9transform14TransformState8MappingsEEclEPS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZN4mlir9transform14TransformState8MappingsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ba) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 120) #26
  br label %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i

_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir9transform14TransformState8MappingsEEclEPS3_.exit.i.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.o, %i.ay
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1448

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit.loopexit: ; preds = %_ZNSt4pairIPN4mlir6RegionESt10unique_ptrINS0_9transform14TransformState8MappingsESt14default_deleteIS6_EEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit.loopexit, %bb.a
  %i.bb = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit.loopexit ], [ %i.o, %bb.a ] ; 2 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !323
  %i.bd = icmp eq ptr %i.bb, %i.b
  br i1 %i.bd, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE21takeAllocationForGrowEPSC_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit
  call void @free(ptr noundef %i.bb) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE21takeAllocationForGrowEPSC_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE21takeAllocationForGrowEPSC_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EE19moveElementsForGrowEPSC_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !10
  %i.be = trunc i64 %i.bc to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !58
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !57
  %i.bh = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.bh, ptr %i.d, align 8, !tbaa !57
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %i.bk
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir9transform14TransformState8MappingsD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !193  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192
  %i.h = zext i32 %i.c to i64
  %i.i = add nuw nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !124  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.m = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.w, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.s) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.v = add i32 %.0.i3.i.i, -1
  %i.w = and i32 %i.v, %.0.i3.i.i                 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1505

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1506

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !193 ; 2 uses
  %i.x = icmp eq i32 %.pr.i, 0
  br i1 %i.x, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.z = zext i32 %.pr.i to i64                   ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 72
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !193 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit15, label %.lr.ph7.preheader.i.i1

.lr.ph7.preheader.i.i1:                           ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !180
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !192
  %i.am = zext i32 %i.ah to i64
  %i.an = add nuw nsw i64 %i.am, 31
  %i.ao = lshr i64 %i.an, 5
  br label %.lr.ph7.i.i2

.lr.ph7.i.i2:                                     ; preds = %._crit_edge.i.i10, %.lr.ph7.preheader.i.i1
  %indvars.iv.i.i3 = phi i64 [ 0, %.lr.ph7.preheader.i.i1 ], [ %indvars.iv.next.i.i11, %._crit_edge.i.i10 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.i3
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i4 = icmp eq i32 %i.aq, 0
  br i1 %.not11.i2.i.i4, label %._crit_edge.i.i10, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %.lr.ph7.i.i2
  %indvars.iv.tr.i.i6 = trunc i64 %indvars.iv.i.i3 to i32
  %i.ar = shl i32 %indvars.iv.tr.i.i6, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i8, %.lr.ph.i.i5
  %.0.i3.i.i7 = phi i32 [ %i.aq, %.lr.ph.i.i5 ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i8 ] ; 3 uses
  %i.as = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i7, i1 true)
  %i.at = or disjoint i32 %i.as, %i.ar
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [72 x i8], ptr %i.aj, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i8, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.ax) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i8

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i8: ; preds = %bb.f, %bb.e
  %i.ba = add i32 %.0.i3.i.i7, -1
  %i.bb = and i32 %i.ba, %.0.i3.i.i7              ; 2 uses
  %.not11.i.i.i9 = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i9, label %._crit_edge.i.i10, label %bb.e, !llvm.loop !1505

._crit_edge.i.i10:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i8, %.lr.ph7.i.i2
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i3, 1 ; 2 uses
  %.not.i.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %i.ao
  br i1 %.not.i.i.i12, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i13, label %.lr.ph7.i.i2, !llvm.loop !1506

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i13: ; preds = %._crit_edge.i.i10
  %.pr.i14 = load i32, ptr %i.ag, align 4, !tbaa !193 ; 2 uses
  %i.bc = icmp eq i32 %.pr.i14, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit15, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i13
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !180
  %i.be = zext i32 %.pr.i14 to i64                ; 2 uses
  %i.bf = mul nuw nsw i64 %i.be, 72
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit15

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit15: ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i13, %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !168 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i16

.lr.ph7.preheader.i.i16:                          ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit15
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !167
  %i.br = zext i32 %i.bm to i64
  %i.bs = add nuw nsw i64 %i.br, 31
  %i.bt = lshr i64 %i.bs, 5
  br label %.lr.ph7.i.i17

.lr.ph7.i.i17:                                    ; preds = %._crit_edge.i.i24, %.lr.ph7.preheader.i.i16
  %indvars.iv.i.i18 = phi i64 [ 0, %.lr.ph7.preheader.i.i16 ], [ %indvars.iv.next.i.i25, %._crit_edge.i.i24 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i18
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i19 = icmp eq i32 %i.bv, 0
  br i1 %.not11.i2.i.i19, label %._crit_edge.i.i24, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %.lr.ph7.i.i17
  %indvars.iv.tr.i.i21 = trunc i64 %indvars.iv.i.i18 to i32
  %i.bw = shl i32 %indvars.iv.tr.i.i21, 5
  br label %bb.h

bb.h:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i20
  %.0.i3.i.i22 = phi i32 [ %i.bv, %.lr.ph.i.i20 ], [ %i.cg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.bx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i22, i1 true)
  %i.by = or disjoint i32 %i.bx, %i.bw
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %i.bo, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !10 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %i.cc) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.i, %bb.h
  %i.cf = add i32 %.0.i3.i.i22, -1
  %i.cg = and i32 %i.cf, %.0.i3.i.i22             ; 2 uses
  %.not11.i.i.i23 = icmp eq i32 %i.cg, 0
  br i1 %.not11.i.i.i23, label %._crit_edge.i.i24, label %bb.h, !llvm.loop !1507

._crit_edge.i.i24:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i17
  %indvars.iv.next.i.i25 = add nuw nsw i64 %indvars.iv.i.i18, 1 ; 2 uses
  %.not.i.i.i26 = icmp eq i64 %indvars.iv.next.i.i25, %i.bt
  br i1 %.not.i.i.i26, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i17, !llvm.loop !1508

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i24
  %.pr.i27 = load i32, ptr %i.bl, align 4, !tbaa !168 ; 2 uses
  %i.ch = icmp eq i32 %.pr.i27, 0
  br i1 %i.ch, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ci = load ptr, ptr %i.bk, align 8, !tbaa !155
  %i.cj = zext i32 %.pr.i27 to i64                ; 2 uses
  %i.ck = mul nuw nsw i64 %i.cj, 72
  %i.cl = add nuw nsw i64 %i.cj, 31
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = and i64 %i.cm, 1073741820
  %i.co = add nuw nsw i64 %i.cn, %i.ck
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ci, i64 noundef %i.co, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit15, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !219 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i28

.lr.ph7.preheader.i.i28:                          ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !206
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !218
  %i.cw = zext i32 %i.cr to i64
  %i.cx = add nuw nsw i64 %i.cw, 31
  %i.cy = lshr i64 %i.cx, 5
  br label %.lr.ph7.i.i29

.lr.ph7.i.i29:                                    ; preds = %._crit_edge.i.i36, %.lr.ph7.preheader.i.i28
  %indvars.iv.i.i30 = phi i64 [ 0, %.lr.ph7.preheader.i.i28 ], [ %indvars.iv.next.i.i37, %._crit_edge.i.i36 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i30
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i31 = icmp eq i32 %i.da, 0
  br i1 %.not11.i2.i.i31, label %._crit_edge.i.i36, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %.lr.ph7.i.i29
  %indvars.iv.tr.i.i33 = trunc i64 %indvars.iv.i.i30 to i32
  %i.db = shl i32 %indvars.iv.tr.i.i33, 5
  br label %bb.k

bb.k:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i32
  %.0.i3.i.i34 = phi i32 [ %i.da, %.lr.ph.i.i32 ], [ %i.dl, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.dc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i34, i1 true)
  %i.dd = or disjoint i32 %i.dc, %i.db
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.ct, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !10 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.dh) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.l, %bb.k
  %i.dk = add i32 %.0.i3.i.i34, -1
  %i.dl = and i32 %i.dk, %.0.i3.i.i34             ; 2 uses
  %.not11.i.i.i35 = icmp eq i32 %i.dl, 0
  br i1 %.not11.i.i.i35, label %._crit_edge.i.i36, label %bb.k, !llvm.loop !1509

._crit_edge.i.i36:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i29
  %indvars.iv.next.i.i37 = add nuw nsw i64 %indvars.iv.i.i30, 1 ; 2 uses
  %.not.i.i.i38 = icmp eq i64 %indvars.iv.next.i.i37, %i.cy
  br i1 %.not.i.i.i38, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i29, !llvm.loop !1510

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i36
  %.pr.i39 = load i32, ptr %i.cq, align 4, !tbaa !219 ; 2 uses
  %i.dm = icmp eq i32 %.pr.i39, 0
  br i1 %i.dm, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i
  %i.dn = load ptr, ptr %i.cp, align 8, !tbaa !206
  %i.do = zext i32 %.pr.i39 to i64                ; 2 uses
  %i.dp = mul nuw nsw i64 %i.do, 40
  %i.dq = add nuw nsw i64 %i.do, 31
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 1073741820
  %i.dt = add nuw nsw i64 %i.ds, %i.dp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dn, i64 noundef %i.dt, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i, %bb.m
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !141 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i40

.lr.ph7.preheader.i.i40:                          ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit
  %i.dx = load ptr, ptr %0, align 8, !tbaa !128
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !140
  %i.ea = zext i32 %i.dv to i64
  %i.eb = add nuw nsw i64 %i.ea, 31
  %i.ec = lshr i64 %i.eb, 5
  br label %.lr.ph7.i.i41

.lr.ph7.i.i41:                                    ; preds = %._crit_edge.i.i48, %.lr.ph7.preheader.i.i40
  %indvars.iv.i.i42 = phi i64 [ 0, %.lr.ph7.preheader.i.i40 ], [ %indvars.iv.next.i.i49, %._crit_edge.i.i48 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i.i42
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i43 = icmp eq i32 %i.ee, 0
  br i1 %.not11.i2.i.i43, label %._crit_edge.i.i48, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %.lr.ph7.i.i41
  %indvars.iv.tr.i.i45 = trunc i64 %indvars.iv.i.i42 to i32
  %i.ef = shl i32 %indvars.iv.tr.i.i45, 5
  br label %bb.n

bb.n:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i44
  %.0.i3.i.i46 = phi i32 [ %i.ee, %.lr.ph.i.i44 ], [ %i.ep, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.eg = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i46, i1 true)
  %i.eh = or disjoint i32 %i.eg, %i.ef
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [40 x i8], ptr %i.dx, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef %i.el) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.o, %bb.n
  %i.eo = add i32 %.0.i3.i.i46, -1
  %i.ep = and i32 %i.eo, %.0.i3.i.i46             ; 2 uses
  %.not11.i.i.i47 = icmp eq i32 %i.ep, 0
  br i1 %.not11.i.i.i47, label %._crit_edge.i.i48, label %bb.n, !llvm.loop !1511

._crit_edge.i.i48:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i41
  %indvars.iv.next.i.i49 = add nuw nsw i64 %indvars.iv.i.i42, 1 ; 2 uses
  %.not.i.i.i50 = icmp eq i64 %indvars.iv.next.i.i49, %i.ec
  br i1 %.not.i.i.i50, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i41, !llvm.loop !1512

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i48
  %.pr.i51 = load i32, ptr %i.du, align 4, !tbaa !141 ; 2 uses
  %i.eq = icmp eq i32 %.pr.i51, 0
  br i1 %i.eq, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  %i.er = load ptr, ptr %0, align 8, !tbaa !128
  %i.es = zext i32 %.pr.i51 to i64                ; 2 uses
  %i.et = mul nuw nsw i64 %i.es, 40
  %i.eu = add nuw nsw i64 %i.es, 31
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = and i64 %i.ev, 1073741820
  %i.ex = add nuw nsw i64 %i.ew, %i.et
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.er, i64 noundef %i.ex, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, %bb.p
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9transform14TransformState11RegionScopeELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = load i32, ptr %i.a, align 8, !tbaa !57
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !57
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !57
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(192) ptr @_ZN4llvm15SmallVectorImplIN4mlir10DiagnosticEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE18growAndEmplaceBackIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(192) %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %i.f ; 13 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.h, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.j, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 4, ptr %i.l, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !57
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.o) ; 0 uses
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i: ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !1193
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !1193
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1194
  store ptr %i.v, ptr %i.t, align 8, !tbaa !1194
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !1195
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !1195
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1196
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !1196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 176 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store i32 0, ptr %i.ae, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 188
  store i32 0, ptr %i.af, align 4, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !57
  %.not.i.i6.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i6.i, label %_ZN4mlir10DiagnosticC2EOS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ai) ; 0 uses
  br label %_ZN4mlir10DiagnosticC2EOS0_.exit

_ZN4mlir10DiagnosticC2EOS0_.exit:                 ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i, %bb.e
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !57
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %i.a, align 8, !tbaa !57
  %i.am = load ptr, ptr %0, align 8, !tbaa !10
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [192 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -192
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mlir10DiagnosticC2EOS0_.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.ap, %_ZN4mlir10DiagnosticC2EOS0_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(192) ptr @_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE18growAndEmplaceBackIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %i.f ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.g, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.i, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.j, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 4, ptr %i.k, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir18DiagnosticArgumentEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.n) ; 0 uses
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EEC2EOS3_.exit.i: ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !1193
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !1193
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1194
  store ptr %i.u, ptr %i.s, align 8, !tbaa !1194
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 152
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIS3_JS7_EEESt4pairIPSC_bEOT_DpOT0_:bb.a
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !127, !llvm.loop !1561

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1562
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1563
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1562
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !140
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 8 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 40                ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !124
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !124
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !1563
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !1563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8, !tbaa !143
  store i64 %i.bl, ptr %i.ax, align 8, !tbaa !143
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 2, ptr %i.bp, align 4, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !57
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit
  %i.bs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPN4mlir9OperationEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %bb.e ], [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128, !noalias !1564 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140, !noalias !1564 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !141, !noalias !1564 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !124
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !143
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !124
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !1561

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1562
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.24", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !141
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !128
  store ptr %i.y, ptr %i.q, align 8, !tbaa !140
  store i32 0, ptr %i.p, align 16, !tbaa !1563
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1562   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1569 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store ptr %i.z, ptr %2, align 16, !tbaa !1562
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !696
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1569
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !124
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !124
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1511

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1512

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !141 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !128
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !140
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !141
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.by, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 8 uses
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !124
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !124
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1570

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store i64 %i.v, ptr %i.ax, align 8, !tbaa !143
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 20 ; 2 uses
  store i32 2, ptr %i.bb, align 4, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !57 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.bf = icmp eq ptr %i.ax, %i.u
  br i1 %i.bf, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE12assignRemoteEOS4_.exit.i: ; preds = %bb.d
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !10
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !58
  store i32 %i.bk, ptr %i.bb, align 4, !tbaa !58
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !10
  store i32 0, ptr %i.bj, align 4, !tbaa !58
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bl = zext i32 %i.bd to i64                   ; 2 uses
  %i.bm = icmp ugt i32 %i.bd, 2
  br i1 %i.bm, label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i, label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull %i.az, i64 noundef %i.bl, i64 noundef 8) #24
  %.pre = load i32, ptr %i.bc, align 8, !tbaa !57 ; 2 uses
  %.pre25 = zext i32 %.pre to i64
  %.not.i.i.i9 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i.thread

_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i
  %.pre-phi36 = phi i64 [ %.pre25, %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i ], [ %i.bl, %bb.e ]
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !10
  %gepdiff.i = shl nuw nsw i64 %.pre-phi36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 8 %i.bn, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i.thread, %_ZSt4moveIPPN4mlir9OperationES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !57
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i.sink.split

_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIPN4mlir9OperationEE12assignRemoteEOS4_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i
  store i32 0, ptr %i.bc, align 8, !tbaa !57
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i

_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bp = shl nuw i32 1, %.lcssa.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !124
  %i.bs = or i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !124
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !10 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i
  tail call void @free(ptr noundef %i.bu) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj2EEC2EOS4_.exit.i, %bb.f
  %i.bx = add i32 %.0.i16, -1
  %i.by = and i32 %i.bx, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.by, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1571

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1572

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre24 = load i32, ptr %i.d, align 4, !tbaa !141
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bz = phi i32 [ %.pre24, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1563
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !1563
  %i.cd = icmp eq i32 %i.bz, 0
  br i1 %i.cd, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.ce = load ptr, ptr %1, align 8, !tbaa !128
  %i.cf = zext i32 %i.bz to i64                   ; 2 uses
  %i.cg = mul nuw nsw i64 %i.cf, 40
  %i.ch = add nuw nsw i64 %i.cf, 31
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = and i64 %i.ci, 1073741820
  %i.ck = add nuw nsw i64 %i.cj, %i.cg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ce, i64 noundef %i.ck, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS1_9OperationELj2EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS5_9OperationELj2EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !206, !noalias !1573 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218, !noalias !1573 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !219, !noalias !1573 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !124
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !126

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !124
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !127, !llvm.loop !1578

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1579
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !737
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1579
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !218
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !206
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 40                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !124
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !124
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !737
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !221
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !221
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 2, ptr %i.bl, align 4, !tbaa !58
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E22findBucketForInsertionIS4_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIS4_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !206, !noalias !1580 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218, !noalias !1580 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !219, !noalias !1580 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !124
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !221
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !1578

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1579
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.26", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !219
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !206
  store ptr %i.y, ptr %i.q, align 8, !tbaa !218
  store i32 0, ptr %i.p, align 16, !tbaa !737
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1579   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1569 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store ptr %i.z, ptr %2, align 16, !tbaa !1579
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !696
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1569
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !124
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !124
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1509

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1510

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !219 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !206
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !206
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !219  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !206
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !219
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !221  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !124
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1585

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !221
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 2, ptr %i.aw, align 4, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !57 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !10 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !10
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !58
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !58
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !10
  store i32 0, ptr %i.be, align 4, !tbaa !58
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bg = zext i32 %i.ay to i64                   ; 2 uses
  %i.bh = icmp ugt i32 %i.ay, 2
  br i1 %i.bh, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i.thread

_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef 8) #24
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !57 ; 2 uses
  %.pre25 = zext i32 %.pre to i64
  %.not.i.i.i9 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i.thread

_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i
  %.pre-phi36 = phi i64 [ %.pre25, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i ], [ %i.bg, %bb.e ]
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !10
  %gepdiff.i = shl nuw nsw i64 %.pre-phi36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 8 %i.bi, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i.thread, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !57
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !57
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bk = shl nuw i32 1, %.lcssa.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !124
  %i.bn = or i32 %i.bm, %i.bk
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !10 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bp) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj2EEC2EOS3_.exit.i, %bb.f
  %i.bs = add i32 %.0.i16, -1
  %i.bt = and i32 %i.bs, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1586

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS2_5ValueELj2EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1587

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre24 = load i32, ptr %i.d, align 4, !tbaa !219
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bu = phi i32 [ %.pre24, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !737
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !737
  %i.by = icmp eq i32 %i.bu, 0
  br i1 %i.by, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bz = load ptr, ptr %1, align 8, !tbaa !206
  %i.ca = zext i32 %i.bu to i64                   ; 2 uses
  %i.cb = mul nuw nsw i64 %i.ca, 40
  %i.cc = add nuw nsw i64 %i.ca, 31
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 1073741820
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bz, i64 noundef %i.cf, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !219
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_11SmallVectorINS1_5ValueELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_11SmallVectorINS5_5ValueELj2EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

declare ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !180, !noalias !1588 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192, !noalias !1588 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !193, !noalias !1588 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !124
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !126

end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_:bb.a
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !127, !llvm.loop !1593

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1594
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !745
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1594
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !192
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !180
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 8 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 72                ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !124
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !124
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !745
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8, !tbaa !143
  store i64 %i.bl, ptr %i.ax, align 8, !tbaa !143
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 6, ptr %i.bp, align 4, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !57
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %i.bs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %bb.e ], [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !180, !noalias !1595 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192, !noalias !1595 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !193, !noalias !1595 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !124
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !143
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !124
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !1593

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1594
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.30", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !193
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 72                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !180
  store ptr %i.y, ptr %i.q, align 8, !tbaa !192
  store i32 0, ptr %i.p, align 16, !tbaa !745
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1594   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1569 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store ptr %i.z, ptr %2, align 16, !tbaa !1594
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !696
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1569
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !124
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !124
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1505

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1506

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !193 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !180
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 72
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !193  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !192  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !180
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !193
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.by, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.t ; 8 uses
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !124
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !124
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1600

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store i64 %i.v, ptr %i.ax, align 8, !tbaa !143
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 20 ; 2 uses
  store i32 6, ptr %i.bb, align 4, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !57 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.bf = icmp eq ptr %i.ax, %i.u
  br i1 %i.bf, label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !10
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !58
  store i32 %i.bk, ptr %i.bb, align 4, !tbaa !58
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !10
  store i32 0, ptr %i.bj, align 4, !tbaa !58
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bl = zext i32 %i.bd to i64                   ; 2 uses
  %i.bm = icmp ugt i32 %i.bd, 6
  br i1 %i.bm, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i.thread

_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull %i.az, i64 noundef %i.bl, i64 noundef 8) #24
  %.pre = load i32, ptr %i.bc, align 8, !tbaa !57 ; 2 uses
  %.pre25 = zext i32 %.pre to i64
  %.not.i.i.i9 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i.thread

_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i
  %.pre-phi36 = phi i64 [ %.pre25, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i ], [ %i.bl, %bb.e ]
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !10
  %gepdiff.i = shl nuw nsw i64 %.pre-phi36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 8 %i.bn, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i.thread, %_ZSt4moveIPN4mlir5ValueES2_ET0_T_S4_S3_.exit34.i
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !57
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.bc, align 8, !tbaa !57
  br label %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bp = shl nuw i32 1, %.lcssa.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !124
  %i.bs = or i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !124
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !10 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bu) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir5ValueELj6EEC2EOS3_.exit.i, %bb.f
  %i.bx = add i32 %.0.i16, -1
  %i.by = and i32 %i.bx, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.by, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1601

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1602

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre24 = load i32, ptr %i.d, align 4, !tbaa !193
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bz = phi i32 [ %.pre24, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !745
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !745
  %i.cd = icmp eq i32 %i.bz, 0
  br i1 %i.cd, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.ce = load ptr, ptr %1, align 8, !tbaa !180
  %i.cf = zext i32 %i.bz to i64                   ; 2 uses
  %i.cg = mul nuw nsw i64 %i.cf, 72
  %i.ch = add nuw nsw i64 %i.cf, 31
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = and i64 %i.ci, 1073741820
  %i.ck = add nuw nsw i64 %i.cj, %i.cg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ce, i64 noundef %i.ck, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorIS2_Lj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS6_Lj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIS3_Lj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !180, !noalias !1603 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192, !noalias !1603 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !193, !noalias !1603 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !124
  %i.z = and i32 %i.t, 31
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_:bb.a
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !127, !llvm.loop !1613

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1614
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1615
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1614
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !167
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !155
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 8 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 72                ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !124
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !124
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !1615
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8, !tbaa !143
  store i64 %i.bl, ptr %i.ax, align 8, !tbaa !143
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  store i32 6, ptr %i.bp, align 4, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !57
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit
  %i.bs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir9AttributeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %bb.e ], [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !155, !noalias !1616 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167, !noalias !1616 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !168, !noalias !1616 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !124
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !143
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !124
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !1613

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1614
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.28", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !168
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 72                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !155
  store ptr %i.y, ptr %i.q, align 8, !tbaa !167
  store i32 0, ptr %i.p, align 16, !tbaa !1615
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1614   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1569 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store ptr %i.z, ptr %2, align 16, !tbaa !1614
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !696
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1569
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !124
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !124
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1507

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1508

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !168 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !155
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 72
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !167
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !168  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !167  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !155
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !168
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.by, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %i.t ; 8 uses
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !124
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !124
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1621

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store i64 %i.v, ptr %i.ax, align 8, !tbaa !143
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 20 ; 2 uses
  store i32 6, ptr %i.bb, align 4, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !57 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.bf = icmp eq ptr %i.ax, %i.u
  br i1 %i.bf, label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !10 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE12assignRemoteEOS3_.exit.i: ; preds = %bb.d
  store ptr %i.bg, ptr %i.ay, align 8, !tbaa !10
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !58
  store i32 %i.bk, ptr %i.bb, align 4, !tbaa !58
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !10
  store i32 0, ptr %i.bj, align 4, !tbaa !58
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bl = zext i32 %i.bd to i64                   ; 2 uses
  %i.bm = icmp ugt i32 %i.bd, 6
  br i1 %i.bm, label %_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i, label %_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i.thread

_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i: ; preds = %bb.e
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull %i.az, i64 noundef %i.bl, i64 noundef 8) #24
  %.pre = load i32, ptr %i.bc, align 8, !tbaa !57 ; 2 uses
  %.pre25 = zext i32 %.pre to i64
  %.not.i.i.i9 = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i.thread

_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i.thread: ; preds = %bb.e, %_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i
  %.pre-phi36 = phi i64 [ %.pre25, %_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i ], [ %i.bl, %bb.e ]
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !10
  %gepdiff.i = shl nuw nsw i64 %.pre-phi36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 8 %i.bn, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i.thread, %_ZSt4moveIPN4mlir9AttributeES2_ET0_T_S4_S3_.exit34.i
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !57
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i.sink.split

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir9AttributeEE12assignRemoteEOS3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir9AttributeELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  store i32 0, ptr %i.bc, align 8, !tbaa !57
  br label %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i

_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i: ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bp = shl nuw i32 1, %.lcssa.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !124
  %i.bs = or i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !124
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !10 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i
  tail call void @free(ptr noundef %i.bu) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir9AttributeELj6EEC2EOS3_.exit.i, %bb.f
  %i.bx = add i32 %.0.i16, -1
  %i.by = and i32 %i.bx, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.by, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1622

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS2_9AttributeELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1623

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre24 = load i32, ptr %i.d, align 4, !tbaa !168
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bz = phi i32 [ %.pre24, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !1615
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !1615
  %i.cd = icmp eq i32 %i.bz, 0
  br i1 %i.cd, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.ce = load ptr, ptr %1, align 8, !tbaa !155
  %i.cf = zext i32 %i.bz to i64                   ; 2 uses
  %i.cg = mul nuw nsw i64 %i.cf, 72
  %i.ch = add nuw nsw i64 %i.cf, 31
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = and i64 %i.ci, 1073741820
  %i.ck = add nuw nsw i64 %i.cj, %i.cg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ce, i64 noundef %i.ck, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_11SmallVectorINS1_9AttributeELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorINS5_9AttributeELj6EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_11SmallVectorIPNS2_9OperationELj2EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !128, !noalias !1624 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140, !noalias !1624 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !141, !noalias !1624 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !124
  %i.z = and i32 %i.t, 31
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1635
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !857
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !851
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
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
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !124
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !124
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !859
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8, !tbaa !143
  store i64 %i.bl, ptr %i.ax, align 8, !tbaa !143
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !851, !noalias !1636 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !857, !noalias !1636 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !858, !noalias !1636 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !124
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !143
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !124
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !1634

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1635
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.0", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !858
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !851
  store ptr %i.y, ptr %i.q, align 8, !tbaa !857
  store i32 0, ptr %i.p, align 16, !tbaa !859
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !696
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1635
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !696
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !696
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !124 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !124
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !124
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !124
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !851    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !857
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !858  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !857  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !851
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !858
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !124 ; 2 uses
  %i.al = and i32 %i.ag, 31                       ; 2 uses
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ap, %.lr.ph.i ], [ %i.ag, %bb.b ]
  %i.ao = add i32 %.016.i, 1
  %i.ap = and i32 %i.ao, %i.k                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !124 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1641

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ak, %bb.b ], [ %i.at, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store i64 %i.v, ptr %i.ay, align 8, !tbaa !143
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = or i32 %i.az, %.lcssa11.i
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !124
  %i.bb = add i32 %.0.i15, -1
  %i.bc = and i32 %i.bb, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1642

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1643

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !858
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bd = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !859
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !859
  %i.bh = icmp eq i32 %i.bd, 0
  br i1 %i.bh, label %_ZN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bi = zext i32 %i.bd to i64                   ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bn, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !858
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !679, !noalias !1644 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !685, !noalias !1644 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !686, !noalias !1644 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !124
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !126

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.ah, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.af, %bb.c ], [ %i.t, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !143
  %i.ad = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !124
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !127, !llvm.loop !762

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1649
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !763
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1649
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !685
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !679
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 40                ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !124
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !124
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !763
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8, !tbaa !143
  store i64 %i.bl, ptr %i.ax, align 8, !tbaa !143
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E22findBucketForInsertionIS3_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E15LookupBucketForIS3_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !679, !noalias !1650 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !685, !noalias !1650 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !686, !noalias !1650 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !143 ; 2 uses
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
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !124
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !143
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !124
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !762

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1649
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.14", align 16 ; 10 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !686
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !679
  store ptr %i.y, ptr %i.q, align 8, !tbaa !685
  store i32 0, ptr %i.p, align 16, !tbaa !763
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1649   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1569 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store ptr %i.z, ptr %2, align 16, !tbaa !1649
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !696
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1569
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !124
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !124
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !124 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.aw = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i32 noundef 3) #24, !inline_history !848 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !849

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !850

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !686 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !679
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !679
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !685
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !686  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !685  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !679
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !686
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 4 uses
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !124
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
  %i.at = load i32, ptr %i.as, align 4, !tbaa !124
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1655

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ah, %bb.b ], [ %i.aq, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ai, %bb.b ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store i64 %i.v, ptr %i.ax, align 8, !tbaa !143
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 0, i64 24, i1 false)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !800
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !800
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !798
  %.not.i.i.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.not.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %_ZNSt8functionIFvN4mlir8LocationEEEC2EOS3_.exit.i

_ZNSt8functionIFvN4mlir8LocationEEEC2EOS3_.exit.i: ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 16, i1 false), !tbaa.struct !698
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !798
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !798
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %_ZNSt8functionIFvN4mlir8LocationEEEC2EOS3_.exit.i
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !124
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !124
  %i.bl = add i32 %.0.i18, -1
  %i.bm = and i32 %i.bl, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1656

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS2_8LocationEEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !1657

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !686
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !763
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !763
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !679
  %i.bt = zext i32 %i.bn to i64                   ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bt, 40
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !686
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir5ValueESt8functionIFvNS5_8LocationEEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvN4mlir8LocationEEZNKS0_9transform14TransformState29recordOpHandleInvalidationOneERNS0_9OpOperandEN4llvm8ArrayRefIPNS0_9OperationEEESA_NS0_5ValueESC_RNS7_8DenseMapISC_St8functionIS2_ENS7_12DenseMapInfoISC_vEENS7_6detail12DenseMapPairISC_SF_EEEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #1 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 7 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !696   ; 7 uses
  %.val2 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZN4mlir9emitErrorENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr %.val2) #24
  %i.a = load ptr, ptr %11, align 8, !tbaa !360
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i32 3, ptr %9, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.106, ptr %i.c, align 8, !tbaa !321
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 66, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !58
  %.not.i.i.i.i.i.i.i.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZN4mlir10Diagnostic6appendIRA67_KcEERS0_OT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.k = load i32, ptr %i.d, align 8, !tbaa !57
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.d, align 8, !tbaa !57
  br label %_ZN4mlir10Diagnostic6appendIRA67_KcEERS0_OT_.exit.i.i.i.i.i

_ZN4mlir10Diagnostic6appendIRA67_KcEERS0_OT_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.i.i.i

_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.i.i.i: ; preds = %_ZN4mlir10Diagnostic6appendIRA67_KcEERS0_OT_.exit.i.i.i.i.i, %bb.a
  call void @_ZN4mlir18InFlightDiagnosticC2EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %11)
  %i.m = load ptr, ptr %11, align 8, !tbaa !360
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.i.i.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNO4mlir18InFlightDiagnosticlsIRA67_KcEEOS0_OT_.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !368, !range !369, !noundef !370
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !368
  br i1 %i.p, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.q) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i

_ZN4mlir18InFlightDiagnosticD2Ev.exit.i.i.i:      ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.s = call ptr @_ZNK4mlir5Value6getLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #24
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.u = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10Diagnostic10attachNoteESt8optionalINS_8LocationEE(ptr noundef nonnull align 8 dereferenceable(192) %i.t, ptr %i.s, i8 1) #24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1697
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1696
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1694
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !910
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !124
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !124
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1697
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !221
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !221
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !910, !noalias !1698 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1694, !noalias !1698 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !907, !noalias !1698 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !124
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !221
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !1695

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1696
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.724", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !907
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !910
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1694
  store i32 0, ptr %i.p, align 16, !tbaa !1697
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !696
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1696
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !696
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !696
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !124 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !124
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !124
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !124
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !910    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1694
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !907  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1694 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !910
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !907
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
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
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !221  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124 ; 2 uses
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
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !124 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1703

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !221
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !124
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1704

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1705

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !907
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1697
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1697
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !907
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit

_ZN4llvm8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN4mlir9OperationENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_vEENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6insertINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEPS2_SE_T_SF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = sub nsw i64 %5, %3                       ; 9 uses
  %i.k = add i64 %i.j, %i.g                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n                  ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.c, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 8) #24
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  %.pre24.i = zext i32 %.pre.i to i64
  %.pre90.pre = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i: ; preds = %bb.c, %bb.b
  %.pre90 = phi ptr [ %i.a, %bb.b ], [ %.pre90.pre, %bb.c ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre24.i, %bb.c ]
  %i.q = phi i32 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %.not8.i.i.i.i.i = icmp eq i64 %3, %5
  br i1 %.not8.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre90, i64 %.pre-phi.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.010.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ %3, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %i.s = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.sroa.2.09.i.i.i.i.i) #24
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %.010.i.i.i.i.i, align 8, !tbaa !143
  %i.u = add nsw i64 %.sroa.2.09.i.i.i.i.i, 1     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %i.u, %5
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1706

_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre23.i = load i32, ptr %i.e, align 8, !tbaa !57
  %.pre89 = load ptr, ptr %0, align 8, !tbaa !10
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEvEEvT_SE_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i
  %i.w = phi ptr [ %.pre89, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i ], [ %.pre90, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i ]
  %i.x = phi i32 [ %.pre23.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_11ResultRangeEPNS1_6detail12OpResultImplENS1_8OpResultESB_SB_E8iteratorEPS2_EEvT_SF_T0_.exit.loopexit.i ], [ %i.q, %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i ]
  %i.y = trunc i64 %i.j to i32
  %i.z = add i32 %i.x, %i.y
  store i32 %i.z, ptr %i.e, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.d
  br label %_ZSt4copyIN4llvm6detail27indexed_accessor_range_baseIN4mlir11ResultRangeEPNS3_6detail12OpResultImplENS3_8OpResultES8_S8_E8iteratorEPNS3_5ValueEET0_T_SE_SD_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ab, i64 noundef %i.k, i64 noundef 8) #24
  %.pre = load ptr, ptr %0, align 8, !tbaa !10
  %.pre88 = load i32, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  %.pre92 = zext i32 %.pre88 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.g, %bb.d ], [ %.pre92, %bb.e ] ; 3 uses
  %i.ac = phi i32 [ %i.f, %bb.d ], [ %.pre88, %bb.e ] ; 2 uses
  %i.ad = phi ptr [ %i.a, %bb.d ], [ %.pre, %bb.e ] ; 4 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.d ; 9 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 5 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.ah = ashr exact i64 %gepdiff, 3              ; 3 uses
  %.not = icmp ult i64 %i.ah, %i.j
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit
  %.neg = mul i64 %i.j, -8                        ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %.neg ; 4 uses
  %i.aj = add nsw i64 %i.j, %.pre-phi             ; 2 uses
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !58
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.g, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i56

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.an, i64 noundef %i.aj, i64 noundef 8) #24
  %.pre.i61 = load i32, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  %.pre11.i = zext i32 %.pre.i61 to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i56

_ZN4llvm15SmallVectorImplIN4mlir5ValueEE7reserveEm.exit.i56: ; preds = %bb.g, %bb.f
  %.pre-phi.i57 = phi i64 [ %.pre-phi, %bb.f ], [ %.pre11.i, %bb.g ] ; 2 uses
  %i.ao = phi i32 [ %i.ac, %bb.f ], [ %.pre.i61, %bb.g ]
  %.not7.i.i.i.i.i = icmp eq i64 %.neg, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir5ValueEE6appendISt13move_iteratorIPS2_EvEEvT_S8_.exit, label %.lr.ph.i.i.i.i.preheader.i58

end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_:bb.a
.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ad = phi ptr [ %i.w, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !124
  %i.af = icmp eq i32 %i.k, %i.ae                 ; 3 uses
  br i1 %i.af, label %.thread, label %bb.c, !prof !64

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ], [ %i.w, %bb.c ], [ %i.ad, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.af, %bb.c ], [ %i.af, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !1822
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.r = add nuw nsw i64 %i.q, 31                 ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = add nuw nsw i64 %i.s, %i.q
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.u, i64 noundef 4) #24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !697
  %i.x = shl nuw nsw i64 %i.q, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !697
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !697
  %i.ab = lshr i64 %i.r, 3
  %i.ac = and i64 %i.ab, 1073741820
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  %i.ad = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %i.ac, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  %i.ae = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.ad, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.af = load i32, ptr %2, align 8               ; 3 uses
  %i.ag = and i32 %i.af, 1
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit
  store i32 %i.af, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !1829
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !697
  br label %bb.b

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEEC2EjNS_12DenseMapBaseIS7_jS2_S4_S6_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit
  %i.al = load i32, ptr %0, align 8
  %i.am = and i32 %i.al, -2
  store i32 %i.am, ptr %0, align 8
  %i.an = zext i32 %.0.i4 to i64                  ; 3 uses
  %i.ao = add nuw nsw i64 %i.an, 31
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = add nuw nsw i64 %i.ap, %i.an
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ar, i64 noundef 4) #24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !697
  %i.au = shl nuw nsw i64 %i.an, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !697
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %.0.i4, ptr %i.ax, align 8, !tbaa !697
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.ay = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ay, 0            ; 2 uses
  %i.az = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.ax
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.ay, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  %i.be = phi i64 [ 4, %.thread.i ], [ %i.bd, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  %i.bf = phi ptr [ %i.ak, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 0, i64 %i.be, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit
  %i.bg = phi i32 [ %i.af, %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE13maybeMoveFastEOS7_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E24initWithExactBucketCountEj.exit ]
  %i.bh = and i32 %i.bg, 1
  %.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !697 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !697
  %i.bn = zext i32 %i.bj to i64                   ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 31
  %i.bp = lshr i64 %i.bo, 5
  %i.bq = add nuw nsw i64 %i.bp, %i.bn
  %i.br = shl nuw nsw i64 %i.bq, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.br, i64 noundef 4) #24
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = load i32, ptr %i.f, align 8
  %i.k = select i1 %.not.i.i, i32 %i.j, i32 4
  %i.l = load i32, ptr %0, align 8
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.m, 0               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i, ptr %i.s, ptr %i.r
  %i.u = load i32, ptr %i.n, align 8
  %i.v = add i32 %i.u, -1
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 3
  %i.x = zext i32 %i.k to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  %.not.i22 = icmp eq i64 %i.z, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !124 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ab, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ac = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ab, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !124 ; 2 uses
  %i.ai = mul i32 %i.ah, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ai, %bb.b ], [ %i.aq, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.w                  ; 3 uses
  %i.aj = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !124
  %i.an = and i32 %.0.i11, 31                     ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = add i32 %.0.i11, 1
  br i1 %i.ap, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1830

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aj
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !124
  %i.at = shl nuw i32 1, %i.an
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !124
  %i.av = or i32 %i.au, %i.at
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !124
  %i.aw = add i32 %.0.i21, -1
  %i.ax = and i32 %i.aw, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1831

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1832

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.m, %bb.a ]
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.az = and i32 %i.ay, -2
  %i.ba = or disjoint i32 %.pre-phi, %i.az
  store i32 %i.ba, ptr %0, align 8
  %i.bb = load i32, ptr %1, align 8               ; 3 uses
  %i.bc = and i32 %i.bb, 1
  %.not.i.i12 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !697 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !697
  %i.bg = zext i32 %i.bd to i64                   ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 31
  %i.bi = lshr i64 %i.bh, 5
  %i.bj = add nuw nsw i64 %i.bi, %i.bg
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bk, i64 noundef 4) #24
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit

_ZN4llvm13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS1_12DenseSetPairIjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.bl = phi i32 [ %i.bb, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIjvEENS5_12DenseSetPairIjEEEEjS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit ], [ %i.bb, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bm = and i32 %i.bl, -2
  store i32 %i.bm, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN4mlir9transform6detail27getConsumedHandleOpOperandsENS3_20TransformOpInterfaceEE3$_0EclIPNS2_11SideEffects14EffectInstanceINS2_13MemoryEffects6EffectEEEEEbT_"(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1324 ; 2 uses
  %i.c = load atomic i8, ptr @_ZGVZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEvE8instance acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit.i.i.i.i.i.i.i.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEvE8instance) #24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4mlir9transform24TransformMappingResourceC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEvE8instance)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEvE8instance) #24
  br label %_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit.i.i.i.i.i.i.i.i.i

_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = icmp eq ptr %i.b, @_ZZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEvE8instance
  br i1 %i.f, label %_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.069.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.g = load ptr, ptr %.069.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !237
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.069.i.i.i.i.i.i.i.i.i.i) #24, !inline_history !1833 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i.i.i = icmp ne ptr %i.j, null ; 2 uses
  %i.k = icmp ne ptr %i.j, @_ZZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEvE8instance
  %or.cond.not.i.i.i.i.i.i.i.i.i.i = and i1 %i.k, %.not.i1.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.i, !llvm.loop !1371

_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.thread.i, label %"_ZZN4mlir9transform6detail27getConsumedHandleOpOperandsENS0_20TransformOpInterfaceEENK3$_0clERKNS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEE.exit"

_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.i, %_ZN4mlir11SideEffects8Resource4BaseINS_9transform24TransformMappingResourceES1_E3getEv.exit.i.i.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !809
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13MemoryEffects4FreeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %_ZN4llvm3isaIJN4mlir13MemoryEffects4FreeEEPNS2_6EffectEEEbRKT0_.exit.i, !prof !8

bb.d:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.thread.i
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13MemoryEffects4FreeEvE13resolveTypeIDEvE2id) #24
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir13MemoryEffects4FreeEEPNS2_6EffectEEEbRKT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.123, i64 49), i64 25) #24
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13MemoryEffects4FreeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13MemoryEffects4FreeEvE13resolveTypeIDEvE2id) #24
  br label %_ZN4llvm3isaIJN4mlir13MemoryEffects4FreeEEPNS2_6EffectEEEbRKT0_.exit.i

_ZN4llvm3isaIJN4mlir13MemoryEffects4FreeEEPNS2_6EffectEEEbRKT0_.exit.i: ; preds = %bb.e, %bb.d, %_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.thread.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13MemoryEffects4FreeEvE13resolveTypeIDEvE2id, align 8, !tbaa !232
  %i.q = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br label %"_ZZN4mlir9transform6detail27getConsumedHandleOpOperandsENS0_20TransformOpInterfaceEENK3$_0clERKNS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEE.exit"

"_ZZN4mlir9transform6detail27getConsumedHandleOpOperandsENS0_20TransformOpInterfaceEENK3$_0clERKNS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEE.exit": ; preds = %_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.i, %_ZN4llvm3isaIJN4mlir13MemoryEffects4FreeEEPNS2_6EffectEEEbRKT0_.exit.i
  %i.r = phi i1 [ false, %_ZN4llvm3isaIJN4mlir9transform24TransformMappingResourceEEPNS1_11SideEffects8ResourceEEEbRKT0_.exit.i ], [ %i.q, %_ZN4llvm3isaIJN4mlir13MemoryEffects4FreeEEPNS2_6EffectEEEbRKT0_.exit.i ]
  ret i1 %i.r
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OpOperandELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = load i32, ptr %i.a, align 8, !tbaa !57
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !57
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JRS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1430, !noalias !1834 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1839, !noalias !1834 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1427, !noalias !1834 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !232 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !124
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !126

end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JRS5_EEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %.loopexit
  %i.an = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %i.ao = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1841
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1839
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !1430
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ap = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ar = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 24                ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !124
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !124
  %i.bd = load i32, ptr %i.ai, align 8, !tbaa !1842
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !1842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %1, align 8, !tbaa !232
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !232
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1430, !noalias !1843 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1839, !noalias !1843 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1427, !noalias !1843 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !232 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !124
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !126

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !232
  %i.w = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.w, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %.lr.ph
  %i.x = add nuw i32 %.01926, 1
  %i.y = and i32 %i.x, %i.g                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !124
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !127, !llvm.loop !1840

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.w, %bb.c ], [ %i.w, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1841
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.419", align 16 ; 9 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1427
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1430
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1839
  store i32 0, ptr %i.p, align 16, !tbaa !1842
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !696
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1841
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !696
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !696
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !696
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !124 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !124
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !124
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !124
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !124
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN4mlir6TypeIDENS1_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir6TypeIDENS1_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIN4mlir6TypeIDENS1_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1430
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1427 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1839 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1430
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1427
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !124  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
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
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !124
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !124
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1848

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !232
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !124
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !124
  %i.ay = add i32 %.0.i16, -1
  %i.az = and i32 %i.ay, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1849

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS2_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1850

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1427
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1842
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1842
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIN4mlir6TypeIDENS1_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !1430
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !1427
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN4mlir6TypeIDENS1_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIN4mlir6TypeIDENS1_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDENS5_9transform23NormalFormAttrInterfaceENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24), ptr) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = distinct !{null}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !5, i64 8, !5, i64 12}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !29, i64 88}
!14 = !{!"_ZTSN4mlir9transform14TransformStateE", !15, i64 0, !23, i64 40, !27, i64 64, !29, i64 88, !30, i64 96, !41, i64 224, !43, i64 232, !45, i64 256, !50, i64 320}
!15 = !{!"_ZTSN4llvm9MapVectorIPN4mlir6RegionESt10unique_ptrINS1_9transform14TransformState8MappingsESt14default_deleteIS7_EENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_SA_ELj0EEELj0EEE", !16, i64 0, !19, i64 24}
!16 = !{!"_ZTSN4llvm8DenseMapIPN4mlir6RegionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !17, i64 0, !18, i64 8, !5, i64 16, !5, i64 20}
!17 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPN4mlir6RegionEjEE", !12, i64 0}
!18 = !{!"p1 int", !12, i64 0}
!19 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELj0EEE", !20, i64 0}
!20 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEEEE", !21, i64 0}
!21 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEELb0EEE", !22, i64 0}
!22 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPN4mlir6RegionESt10unique_ptrINS2_9transform14TransformState8MappingsESt14default_deleteIS8_EEEvEE", !11, i64 0}
!23 = !{!"_ZTSN4llvm8DenseSetIN4mlir5ValueENS_12DenseMapInfoIS2_vEEEE", !24, i64 0}
!24 = !{!"_ZTSN4llvm6detail12DenseSetImplIN4mlir5ValueENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEEE", !25, i64 0}
!25 = !{!"_ZTSN4llvm8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !26, i64 0, !18, i64 8, !5, i64 16, !5, i64 20}
!26 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIN4mlir5ValueEEE", !12, i64 0}
!27 = !{!"_ZTSN4llvm8DenseMapIN4mlir6TypeIDESt10unique_ptrINS1_9transform14TransformState9ExtensionESt14default_deleteIS6_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S9_EEEE", !28, i64 0, !18, i64 8, !5, i64 16, !5, i64 20}
!28 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIN4mlir6TypeIDESt10unique_ptrINS2_9transform14TransformState9ExtensionESt14default_deleteIS7_EEEE", !12, i64 0}
!29 = !{!"p1 _ZTSN4mlir9OperationE", !12, i64 0}
!30 = !{!"_ZTSN4mlir11RaggedArrayIN4llvm12PointerUnionIJPNS_9OperationENS_9AttributeENS_5ValueEEEEEE", !31, i64 0, !36, i64 64}
!31 = !{!"_ZTSN4llvm11SmallVectorISt4pairImmELj3EEE", !32, i64 0, !35, i64 16}
!32 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairImmEEE", !33, i64 0}
!33 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairImmELb1EEE", !34, i64 0}
!34 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairImmEvEE", !11, i64 0}
!35 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairImmELj3EEE", !6, i64 0}
!36 = !{!"_ZTSN4llvm11SmallVectorINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EEE", !37, i64 0, !40, i64 16}
!37 = !{!"_ZTSN4llvm15SmallVectorImplINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEEEE", !38, i64 0}
!38 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELb1EEE", !39, i64 0}
!39 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEEvEE", !11, i64 0}
!40 = !{!"_ZTSN4llvm18SmallVectorStorageINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELj6EEE", !6, i64 0}
!41 = !{!"_ZTSN4mlir9transform16TransformOptionsE", !42, i64 0, !42, i64 1}
!42 = !{!"bool", !6, i64 0}
!43 = !{!"_ZTSN4llvm8DenseMapIN4mlir5ValueESt8functionIFvNS1_8LocationEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEEE", !44, i64 0, !18, i64 8, !5, i64 16, !5, i64 20}
!44 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIN4mlir5ValueESt8functionIFvNS2_8LocationEEEEE", !12, i64 0}
!45 = !{!"_ZTSN4llvm11SmallVectorIPN4mlir9transform14TransformState11RegionScopeELj6EEE", !46, i64 0, !49, i64 16}
!46 = !{!"_ZTSN4llvm15SmallVectorImplIPN4mlir9transform14TransformState11RegionScopeEEE", !47, i64 0}
!47 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPN4mlir9transform14TransformState11RegionScopeELb1EEE", !48, i64 0}
!48 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPN4mlir9transform14TransformState11RegionScopeEvEE", !11, i64 0}
!49 = !{!"_ZTSN4llvm18SmallVectorStorageIPN4mlir9transform14TransformState11RegionScopeELj6EEE", !6, i64 0}
!50 = !{!"_ZTSSt10unique_ptrIN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EE", !51, i64 0}
!51 = !{!"_ZTSSt15__uniq_ptr_dataIN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_ELb1ELb1EE", !52, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_implIN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EE", !53, i64 0}
!53 = !{!"_ZTSSt5tupleIJPN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EEE", !54, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJPN4mlir9transform14TransformState11RegionScopeESt14default_deleteIS3_EEE", !55, i64 0}
!55 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir9transform14TransformState11RegionScopeELb0EE", !56, i64 0}
!56 = !{!"p1 _ZTSN4mlir9transform14TransformState11RegionScopeE", !12, i64 0}
!57 = !{!11, !5, i64 8}
!58 = !{!11, !5, i64 12}
!59 = !{!55, !56, i64 0}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSSt4pairImmE", !62, i64 0, !62, i64 8}
end_hunk_10
