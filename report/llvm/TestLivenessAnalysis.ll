Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestLivenessAnalysis?download=true
inline.NumInlined: 1400
inline.NumDeleted: 1089
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E10destroyAllEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS4_INS5_6TypeIDESt10unique_ptrINS5_13AnalysisStateESt14default_deleteIS9_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEENSD_IS6_vEENSG_IS6_SI_EEEES6_SI_SJ_SK_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !193
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !49   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !196  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E10destroyAllEvENKUljE_clEj.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !49 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(56) %i.ai) #15, !inline_history !188
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir13AnalysisStateEEclEPS1_.exit.i.i.i.i.i, %bb.c
  %i.am = add i32 %.0.i3.i.i.i, -1
  %i.an = and i32 %i.am, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !189

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !190

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.r, align 4, !tbaa !196 ; 2 uses
  %i.ao = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ao, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E10destroyAllEvENKUljE_clEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i.i
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !197
  %i.aq = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = add nuw nsw i64 %i.aq, 31
  %i.at = lshr i64 %i.as, 3
  %i.au = and i64 %i.at, 1073741820
  %i.av = add nuw nsw i64 %i.au, %i.ar
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ap, i64 noundef %i.av, i64 noundef 8) #15
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E10destroyAllEvENKUljE_clEj.exit: ; preds = %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i.i, %bb.d
  %i.aw = add i32 %.0.i3, -1
  %i.ax = and i32 %i.aw, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !191

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS1_INS2_6TypeIDESt10unique_ptrINS2_13AnalysisStateESt14default_deleteIS6_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEENSA_IS3_vEENSD_IS3_SF_EEEES3_SF_SG_SH_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS4_INS5_6TypeIDESt10unique_ptrINS5_13AnalysisStateESt14default_deleteIS9_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEENSD_IS6_vEENSG_IS6_SI_EEEES6_SI_SJ_SK_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !192

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN4mlir13LatticeAnchorENS4_INS5_6TypeIDESt10unique_ptrINS5_13AnalysisStateESt14default_deleteIS9_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SC_EEEENSD_IS6_vEENSG_IS6_SI_EEEES6_SI_SJ_SK_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #8

declare void @_ZN4llvm19SmallPtrSetImplBase15eraseFromBucketEPPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #15, !inline_history !201
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
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !73 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !73 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #15
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #15, !inline_history !201
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_124TestLivenessAnalysisPass14runOnOperationEvEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 47
  %3 = load i8, ptr %i.b, align 1
  %.not.i.i.i = icmp eq i8 %3, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @.str.11, i64 3) #15 ; 2 uses
  %i.d = extractvalue { ptr, i8 } %i.c, 0
  %i.e = extractvalue { ptr, i8 } %i.c, 1
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = tail call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr nonnull @.str.11, i64 3) #15
  br label %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i

_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.05.1.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.05.1.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZZN12_GLOBAL__N_124TestLivenessAnalysisPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4mlir9Operation7getAttrEN4llvm9StringRefE.exit.i.i
  %i.i = load ptr, ptr %.sroa.05.1.i.i.i, align 8, !tbaa !213
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE
  br i1 %i.k, label %bb.e, label %_ZZN12_GLOBAL__N_124TestLivenessAnalysisPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.05.1.i.i.i, ptr %2, align 8
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !221
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !222  ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, 10
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull @.str.12, i64 noundef 10) #15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.p, ptr noundef nonnull align 1 dereferenceable(10) @.str.12, i64 10, i1 false)
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !222
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  store ptr %i.w, ptr %i.o, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.l, %bb.g ] ; 5 uses
  %i.x = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #15 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !221
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !222 ; 3 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ugt i64 %i.z, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, ptr noundef %i.y, i64 noundef %i.z) #15 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.y, i64 %i.z, i1 false)
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !222
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.z ; 2 uses
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.j, %bb.i, %bb.h
  %i.al = phi ptr [ %.pre.i, %bb.h ], [ %i.ak, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ai, %bb.h ], [ %.0.i.i.i, %bb.j ], [ %.0.i.i.i, %bb.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !221
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 2
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.13, i64 noundef 2) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32.i

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  store i16 2618, ptr %i.al, align 1
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !222
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store ptr %i.av, ptr %i.at, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32.i

_ZN4llvm11raw_ostreamlsEPKc.exit32.i:             ; preds = %bb.l, %bb.k
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.aw = load i32, ptr %4, align 4
  %i.ax = and i32 %i.aw, 8388608
  %.not.i.i33.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i33.i, label %._crit_edge.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i, !prof !223

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !226
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !227 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %.not156.i = icmp eq i32 %i.bb, 0
  br i1 %.not156.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.m

._crit_edge.i:                                    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45.i, %_ZN4mlir9Operation11getOperandsEv.exit.i, %_ZN4llvm11raw_ostreamlsEPKc.exit32.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !241 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %1, i64 -16
  %i.bh = zext i32 %i.bf to i64
  %.not152159.i = icmp eq i32 %i.bf, 0
  br i1 %.not152159.i, label %._crit_edge164.i, label %.lr.ph163.i

.lr.ph163.i:                                      ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.t

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit45.i, %.lr.ph.i
  %.sroa.9141.0158.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cy, %_ZN4llvm11raw_ostreamlsEPKc.exit45.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %.sroa.9141.0158.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !243, !noalias !244
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !245, !nonnull !27, !align !216
  %i.bm = call noundef ptr @_ZN4mlir8dataflow19RunLivenessAnalysis11getLivenessENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr %.sroa.0.0.copyload.i.i.i.i.i.i) #15 ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !221
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !222 ; 2 uses
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, 10
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull @.str.14, i64 noundef 10) #15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.br, ptr noundef nonnull align 1 dereferenceable(10) @.str.14, i64 10, i1 false)
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !222
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  store ptr %i.by, ptr %i.bq, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit39.i

_ZN4llvm11raw_ostreamlsEPKc.exit39.i:             ; preds = %bb.o, %bb.n
  %.0.i.i38.i = phi ptr [ %i.bw, %bb.n ], [ %i.bn, %bb.o ]
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i38.i, i64 noundef %.sroa.9141.0158.i) #15 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !221
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !222 ; 2 uses
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.cg, 2
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39.i
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull @.str.15, i64 noundef 2) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42.i

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit39.i
  store i16 8250, ptr %i.cd, align 1
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !222
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store ptr %i.ck, ptr %i.cc, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit42.i

_ZN4llvm11raw_ostreamlsEPKc.exit42.i:             ; preds = %bb.q, %bb.p
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216
  %i.cm = load ptr, ptr %i.bm, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(161) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.cl) #15, !inline_history !206
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !221
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !222 ; 2 uses
  %i.cu = icmp eq ptr %i.cr, %i.ct
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42.i
  %i.cv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr noundef nonnull @.str.16, i64 noundef 1) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45.i

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit42.i
  store i8 10, ptr %i.ct, align 1
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !222
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit45.i

_ZN4llvm11raw_ostreamlsEPKc.exit45.i:             ; preds = %bb.s, %bb.r
  %i.cy = add nuw nsw i64 %.sroa.9141.0158.i, 1   ; 2 uses
  %.not.i = icmp eq i64 %i.cy, %i.bc
  br i1 %.not.i, label %._crit_edge.i, label %bb.m

._crit_edge164.i:                                 ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit57.i, %._crit_edge.i
  %i.cz = load i32, ptr %4, align 4               ; 3 uses
  %i.da = and i32 %i.cz, 8388607                  ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZZN12_GLOBAL__N_124TestLivenessAnalysisPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit, label %_ZN4mlir9Operation10getRegionsEv.exit.i

_ZN4mlir9Operation10getRegionsEv.exit.i:          ; preds = %._crit_edge164.i
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dd = lshr i32 %i.cz, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.dd, 1
  %i.de = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.de
  %i.dg = lshr i32 %i.cz, 21
  %i.dh = and i32 %i.dg, 2040
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !246
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %i.dm ; 2 uses
  %i.do = shl nuw nsw i32 %i.da, 5
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.aa

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit57.i, %.lr.ph163.i
  %.sroa.9.0161.i = phi i64 [ 0, %.lr.ph163.i ], [ %i.fg, %_ZN4llvm11raw_ostreamlsEPKc.exit57.i ] ; 3 uses
  %i.ds = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 noundef %.sroa.9.0161.i) #15, !noalias !247
  %i.dt = load ptr, ptr %i.bi, align 8, !tbaa !245, !nonnull !27, !align !216
  %i.du = call noundef ptr @_ZN4mlir8dataflow19RunLivenessAnalysis11getLivenessENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(208) %i.dt, ptr %i.ds) #15 ; 2 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !221
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !222 ; 2 uses
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ult i64 %i.ec, 9
  br i1 %i.ed, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ee = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull @.str.17, i64 noundef 9) #15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dz, ptr noundef nonnull align 1 dereferenceable(9) @.str.17, i64 9, i1 false)
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !222
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 9
  store ptr %i.eg, ptr %i.dy, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit51.i

_ZN4llvm11raw_ostreamlsEPKc.exit51.i:             ; preds = %bb.v, %bb.u
  %.0.i.i50.i = phi ptr [ %i.ee, %bb.u ], [ %i.dv, %bb.v ]
  %i.eh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i50.i, i64 noundef %.sroa.9.0161.i) #15 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !221
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !222 ; 2 uses
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ult i64 %i.eo, 2
  br i1 %i.ep, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51.i
  %i.eq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef nonnull @.str.15, i64 noundef 2) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit54.i

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit51.i
  store i16 8250, ptr %i.el, align 1
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !222
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  store ptr %i.es, ptr %i.ek, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit54.i

_ZN4llvm11raw_ostreamlsEPKc.exit54.i:             ; preds = %bb.x, %bb.w
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216
  %i.eu = load ptr, ptr %i.du, align 8, !tbaa !16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(161) %i.du, ptr noundef nonnull align 8 dereferenceable(48) %i.et) #15, !inline_history !206
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !221
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !222 ; 2 uses
  %i.fc = icmp eq ptr %i.ez, %i.fb
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit54.i
  %i.fd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ex, ptr noundef nonnull @.str.16, i64 noundef 1) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit54.i
  store i8 10, ptr %i.fb, align 1
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !222
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit57.i

_ZN4llvm11raw_ostreamlsEPKc.exit57.i:             ; preds = %bb.z, %bb.y
  %i.fg = add nuw nsw i64 %.sroa.9.0161.i, 1      ; 2 uses
  %.not152.i = icmp eq i64 %i.fg, %i.bh
  br i1 %.not152.i, label %._crit_edge164.i, label %bb.t

bb.aa:                                            ; preds = %._crit_edge176.i, %_ZN4mlir9Operation10getRegionsEv.exit.i
  %.sroa.0106.0179.i = phi ptr [ %i.dn, %_ZN4mlir9Operation10getRegionsEv.exit.i ], [ %i.gg, %._crit_edge176.i ] ; 4 uses
  %.sroa.7109.0178.i = phi i64 [ 0, %_ZN4mlir9Operation10getRegionsEv.exit.i ], [ %i.gf, %._crit_edge176.i ] ; 2 uses
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !221
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !222 ; 2 uses
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = icmp ult i64 %i.fo, 10
  br i1 %i.fp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fh, ptr noundef nonnull @.str.18, i64 noundef 10) #15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit60.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.fl, ptr noundef nonnull align 1 dereferenceable(10) @.str.18, i64 10, i1 false)
  %i.fr = load ptr, ptr %i.fk, align 8, !tbaa !222
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 10
  store ptr %i.fs, ptr %i.fk, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit60.i

_ZN4llvm11raw_ostreamlsEPKc.exit60.i:             ; preds = %bb.ac, %bb.ab
  %.0.i.i59.i = phi ptr [ %i.fq, %bb.ab ], [ %i.fh, %bb.ac ]
  %i.ft = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i59.i, i64 noundef %.sroa.7109.0178.i) #15 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !221
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 32 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !222 ; 2 uses
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = icmp ult i64 %i.ga, 2
  br i1 %i.gb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit60.i
  %i.gc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ft, ptr noundef nonnull @.str.13, i64 noundef 2) #15 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit63.i

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit60.i
  store i16 2618, ptr %i.fx, align 1
  %i.gd = load ptr, ptr %i.fw, align 8, !tbaa !222
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  store ptr %i.ge, ptr %i.fw, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit63.i

_ZN4llvm11raw_ostreamlsEPKc.exit63.i:             ; preds = %bb.ae, %bb.ad
  %.sroa.095.0.in170.i = getelementptr inbounds nuw i8, ptr %.sroa.0106.0179.i, i64 8
  %.sroa.095.0171.i = load ptr, ptr %.sroa.095.0.in170.i, align 8, !tbaa !73 ; 2 uses
  %.not154172.i = icmp eq ptr %.sroa.095.0171.i, %.sroa.0106.0179.i
  br i1 %.not154172.i, label %._crit_edge176.i, label %.lr.ph175.i

._crit_edge176.i:                                 ; preds = %._crit_edge169.i, %_ZN4llvm11raw_ostreamlsEPKc.exit63.i
  %i.gf = add nuw nsw i64 %.sroa.7109.0178.i, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0106.0179.i, i64 32 ; 2 uses
  %.not153.i = icmp eq ptr %i.gg, %i.dq
  br i1 %.not153.i, label %_ZZN12_GLOBAL__N_124TestLivenessAnalysisPass14runOnOperationEvENKUlPN4mlir9OperationEE_clES3_.exit, label %bb.aa

.lr.ph175.i:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit63.i, %._crit_edge169.i
  %.sroa.095.0174.i = phi ptr [ %.sroa.095.0.i, %._crit_edge169.i ], [ %.sroa.095.0171.i, %_ZN4llvm11raw_ostreamlsEPKc.exit63.i ] ; 3 uses
  %.sroa.798.0173.i = phi i64 [ %i.hj, %._crit_edge169.i ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit63.i ] ; 2 uses
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !215, !nonnull !27, !align !216 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !221
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 32 ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !222 ; 2 uses
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = icmp ult i64 %i.go, 12
  br i1 %i.gp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph175.i
  %i.gq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.gh, ptr noundef nonnull @.str.19, i64 noundef 12) #15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit66.i

bb.ag:                                            ; preds = %.lr.ph175.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.gl, ptr noundef nonnull align 1 dereferenceable(12) @.str.19, i64 12, i1 false)
  %i.gr = load ptr, ptr %i.gk, align 8, !tbaa !222
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store ptr %i.gs, ptr %i.gk, align 8, !tbaa !222
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit66.i

_ZN4llvm11raw_ostreamlsEPKc.exit66.i:             ; preds = %bb.ag, %bb.af
  %.0.i.i65.i = phi ptr [ %i.gq, %bb.af ], [ %i.gh, %bb.ag ]
  %i.gt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i65.i, i64 noundef %.sroa.798.0173.i) #15 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !221
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !222 ; 2 uses
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = ptrtoint ptr %i.gx to i64
end_hunk_0
