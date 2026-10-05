Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestSparseBackwardDataFlowAnalysis?download=true
inline.NumInlined: 2482
inline.NumDeleted: 1545
begin_hunk_0_@_ZN12_GLOBAL__N_117WrittenToAnalysis16visitCallOperandERN4mlir9OpOperandE:_ZN4llvmplERKNS_5TwineES2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %.val = load ptr, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.af = zext i32 %.val6 to i64
  %.idx.i.i = shl nuw nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %.not5.i.i.i = icmp eq i32 %.val6, 0
  br i1 %.not5.i.i.i, label %_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 196
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.as, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i ] ; 3 uses
  %i.aj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %.06.i.i.i), !noalias !413
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.aj, 1
  %i.ak = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i.i to i1
  br i1 %i.ak, label %bb.e, label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.06.i.i.i, align 8 ; 2 uses
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !60 ; 2 uses
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !24
  %.not.i.i.i.i.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f, !prof !61

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir10StringAttrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr %.sroa.0.0.copyload.i.i.i.i)
  br label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.ap, align 1
  %i.aq = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ad, align 8, !tbaa !60
  br label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i

_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %i.ag
  br i1 %.not.i.i.i, label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE12insert_rangeIRKS9_EEvOT_.exit.loopexit.i, label %bb.d, !llvm.loop !7

_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE12insert_rangeIRKS9_EEvOT_.exit.loopexit.i: ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i
  %.pre.i = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.at = icmp ne i32 %i.ae, %.pre.i
  %i.au = zext i1 %i.at to i32
  br label %_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit

_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit: ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE12insert_rangeIRKS9_EEvOT_.exit.loopexit.i
  %i.av = phi i32 [ %i.au, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE12insert_rangeIRKS9_EEvOT_.exit.loopexit.i ], [ 0, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit ]
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.e, i32 noundef %i.av) #21
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.g
  br i1 %i.ax, label %_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit
  call void @free(ptr noundef %i.aw) #21
  br label %_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i: ; preds = %bb.h, %_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !153 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i
  %i.bb = load ptr, ptr %2, align 8, !tbaa !154
  %i.bc = zext i32 %i.az to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #21
  br label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit

_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4mlir8dataflow30SparseBackwardDataFlowAnalysisIN12_GLOBAL__N_19WrittenToEE14setToExitStateEPNS0_21AbstractSparseLatticeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN4mlir8dataflow30SparseBackwardDataFlowAnalysisIN12_GLOBAL__N_19WrittenToEE17getLatticeElementENS_5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::LatticeAnchor", align 8 ; 4 uses
  %3 = alloca %"class.mlir::TypeID", align 8      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !155 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = ptrtoint ptr %1 to i64
  %i.c = or i64 %i.b, 4                           ; 2 uses
  %i.d = tail call fastcc i64 @_ZNK4mlir14DataFlowSolver21getLeaderAnchorOrSelfIN12_GLOBAL__N_19WrittenToEEENS_13LatticeAnchorES4_(ptr noundef nonnull align 8 dereferenceable(208) %.val, i64 %i.c)
  store i64 %i.d, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 160
  %i.f = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSH_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr @_ZZN12_GLOBAL__N_19WrittenTo13resolveTypeIDEvE2id, ptr %3, align 8
  %i.h = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.fca.0.extract.i8.i.i = extractvalue { ptr, i8 } %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i8.i.i, i64 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !138  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4mlir16DataFlowAnalysis11getOrCreateIN12_GLOBAL__N_19WrittenToENS_5ValueEEEPT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #22 ; 22 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 0, ptr %i.p, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 0, ptr %i.q, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.r, ptr %i.o, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 4, ptr %i.s, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  store i32 0, ptr %i.t, align 4, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i8 1, ptr %i.u, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store ptr %i.w, ptr %i.v, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i32 0, ptr %i.x, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 124
  store i32 4, ptr %i.y, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store i32 0, ptr %i.ac, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 196
  store i32 0, ptr %i.ad, align 4, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_19WrittenToE, i64 16), ptr %i.k, align 8, !tbaa !26
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !138 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !138
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir16DataFlowAnalysis11getOrCreateIN12_GLOBAL__N_19WrittenToENS_5ValueEEEPT_T0_.exit, label %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #21, !inline_history !414
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !138
  br label %_ZN4mlir16DataFlowAnalysis11getOrCreateIN12_GLOBAL__N_19WrittenToENS_5ValueEEEPT_T0_.exit

_ZN4mlir16DataFlowAnalysis11getOrCreateIN12_GLOBAL__N_19WrittenToENS_5ValueEEEPT_T0_.exit: ; preds = %bb.a, %bb.b, %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i.i.i
  %i.ai = phi ptr [ %i.k, %bb.b ], [ %.pre.i.i, %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i.i.i ], [ %i.j, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %i.ai
}

declare i8 @_ZN4mlir8dataflow38AbstractSparseBackwardDataFlowAnalysis22visitCallableOperationEPNS_9OperationENS_19CallableOpInterfaceEN4llvm8ArrayRefIPNS0_21AbstractSparseLatticeEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr, ptr, ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i8 @_ZN12_GLOBAL__N_117WrittenToAnalysis14visitOperationEPN4mlir9OperationEN4llvm8ArrayRefIPNS_9WrittenToEEENS5_IPKS6_EE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, ptr nofree readonly captures(address) %2, i64 %3, ptr nofree readonly captures(address) %4, i64 %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %"class.llvm::ilist_iterator", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %7 = alloca %"class.llvm::ilist_iterator", align 8 ; 8 uses
  %8 = alloca %"class.llvm::SetVector.214", align 8 ; 10 uses
  %9 = alloca %"class.mlir::StringAttr", align 8  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_6memref7StoreOpEvE2idE
  %10 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6memref7StoreOpEvE2idE
  %spec.select.i.i.i.i = and i1 %10, %i.h
  %i.i = icmp ne ptr %1, null
  %i.j = and i1 %i.i, %spec.select.i.i.i.i
  br i1 %i.j, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  store i32 0, ptr %i.m, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4
  %.not.i.i = icmp ult i32 %i.p, 16777216
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @.str.25, i64 8) #21 ; 2 uses
  %i.r = extractvalue { ptr, i8 } %i.q, 0
  %i.s = extractvalue { ptr, i8 } %i.q, 1
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr nonnull @.str.25, i64 8) #21
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.05.1.i.i = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.05.1.i.i, null
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation13getAttrOfTypeINS_10StringAttrEEET_N4llvm9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i
  %i.w = load ptr, ptr %.sroa.05.1.i.i, align 8, !tbaa !158
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.y = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  %spec.select.i.i.i.i.a = select i1 %i.y, ptr %.sroa.05.1.i.i, ptr null
  br label %_ZN4mlir9Operation13getAttrOfTypeINS_10StringAttrEEET_N4llvm9StringRefE.exit

_ZN4mlir9Operation13getAttrOfTypeINS_10StringAttrEEET_N4llvm9StringRefE.exit: ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i, %bb.e
  %.sroa.02.0.i.i.i = phi ptr [ %spec.select.i.i.i.i.a, %bb.e ], [ null, %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i ]
  store ptr %.sroa.02.0.i.i.i, ptr %9, align 8
  %i.z = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %9), !noalias !427
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.z, 1
  %i.aa = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.aa, label %bb.f, label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exitthread-pre-split

bb.f:                                             ; preds = %_ZN4mlir9Operation13getAttrOfTypeINS_10StringAttrEEET_N4llvm9StringRefE.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %9, align 8 ; 2 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !60  ; 2 uses
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !24
  %.not.i.i31 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i31, label %bb.h, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir10StringAttrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr %.sroa.0.0.copyload.i)
  br label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exitthread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.ad = zext i32 %i.ab to i64
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  store ptr %.sroa.0.0.copyload.i, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.m, align 8, !tbaa !60
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.m, align 8, !tbaa !60
  br label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exitthread-pre-split: ; preds = %bb.g, %_ZN4mlir9Operation13getAttrOfTypeINS_10StringAttrEEET_N4llvm9StringRefE.exit
  %.val22.pr = load i32, ptr %i.m, align 8, !tbaa !60
  br label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit

_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit: ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exitthread-pre-split, %bb.h
  %.val22 = phi i32 [ %.val22.pr, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exitthread-pre-split ], [ %i.ah, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ai = load ptr, ptr %2, align 8, !tbaa !160   ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %.val = load ptr, ptr %i.k, align 8, !tbaa !23  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 192 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !60
  %i.am = zext i32 %.val22 to i64
  %.idx.i.i = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i.i
  %.not5.i.i.i = icmp eq i32 %.val22, 0
  br i1 %.not5.i.i.i, label %_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 196
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.az, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i ] ; 3 uses
  %i.aq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir10StringAttrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %.06.i.i.i), !noalias !428
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.aq, 1
  %i.ar = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i.i to i1
  br i1 %i.ar, label %bb.j, label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.06.i.i.i, align 8 ; 2 uses
  %i.as = load i32, ptr %i.ak, align 8, !tbaa !60 ; 2 uses
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !24
  %.not.i.i.i.i.i = icmp ult i32 %i.as, %i.at
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k, !prof !61

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir10StringAttrELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr %.sroa.0.0.copyload.i.i.i.i)
  br label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.au = zext i32 %i.as to i64
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.ak, align 8, !tbaa !60
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ak, align 8, !tbaa !60
  br label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i

_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.az, %i.an
  br i1 %.not.i.i.i32, label %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE12insert_rangeIRKS9_EEvOT_.exit.loopexit.i, label %bb.i, !llvm.loop !7

_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE12insert_rangeIRKS9_EEvOT_.exit.loopexit.i: ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i.i.i
  %.pre.i = load i32, ptr %i.ak, align 8, !tbaa !60
  %i.ba = icmp ne i32 %i.al, %.pre.i
  %i.bb = zext i1 %i.ba to i32
  br label %_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit

_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit: ; preds = %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE12insert_rangeIRKS9_EEvOT_.exit.loopexit.i
  %i.bc = phi i32 [ %i.bb, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE12insert_rangeIRKS9_EEvOT_.exit.loopexit.i ], [ 0, %_ZN4llvm9SetVectorIN4mlir10StringAttrENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit ]
  call void @_ZN4mlir16DataFlowAnalysis18propagateIfChangedEPNS_13AnalysisStateENS_12ChangeResultE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.ai, i32 noundef %i.bc) #21
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !23  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.l
  br i1 %i.be, label %_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit
  call void @free(ptr noundef %i.bd) #21
  br label %_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i: ; preds = %bb.m, %_ZN12_GLOBAL__N_121WrittenToLatticeValue9addWritesERKN4llvm9SetVectorIN4mlir10StringAttrENS1_11SmallVectorIS4_Lj0EEENS1_8DenseSetIS4_NS1_12DenseMapInfoIS4_vEEEELj0EEE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !153 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i
  %i.bi = load ptr, ptr %8, align 8, !tbaa !154
  %i.bj = zext i32 %i.bg to i64                   ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bj, 31
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741820
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bi, i64 noundef %i.bo, i64 noundef 8) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4llvm11SmallVectorIN4mlir10StringAttrELj0EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.loopexit

.thread:                                          ; preds = %bb.a
  %.idx = shl nuw nsw i64 %5, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %.not39 = icmp eq i64 %5, 0
  br i1 %.not39, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %.thread
  %.idx42 = shl nuw nsw i64 %3, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx42
  %.not2137 = icmp eq i64 %3, 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not2137, label %.lr.ph41.split.us, label %.lr.ph

.lr.ph41.split.us:                                ; preds = %.lr.ph41, %_ZN4mlir16DataFlowAnalysis20getProgramPointAfterEPNS_9OperationE.exit.us
  %.01940.us = phi ptr [ %i.cc, %_ZN4mlir16DataFlowAnalysis20getProgramPointAfterEPNS_9OperationE.exit.us ], [ %4, %.lr.ph41 ] ; 2 uses
  %i.bt = load ptr, ptr %.01940.us, align 8, !tbaa !160
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !155, !nonnull !41, !align !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !162
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !429 ; 2 uses
  %.not.i.i33.us = icmp eq ptr %i.bv, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 152 ; 2 uses
  br i1 %.not.i.i33.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph41.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.bv, ptr %i.b, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bx = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !179
  store ptr %i.bz, ptr %6, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
end_hunk_0
