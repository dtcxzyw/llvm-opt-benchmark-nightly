Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseSpaceCollapse?download=true
inline.NumInlined: 1614
inline.NumDeleted: 1125
begin_hunk_0_@_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_13sparse_tensor19SparseTensorDialectEEEPT_vEUlvE_EES6_l:_ZNSt10unique_ptrIN4mlir13sparse_tensor19SparseTensorDialectESt14default_deleteIS2_EED2Ev.exit
_ZNSt10unique_ptrIN4mlir13sparse_tensor19SparseTensorDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !177
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17, !noalias !177 ; 2 uses
  tail call void @_ZN4mlir13sparse_tensor19SparseTensorDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #19, !noalias !177
  store ptr %i.c, ptr %0, align 8, !tbaa !179
  ret void
}

declare void @_ZN4mlir13sparse_tensor19SparseTensorDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15
  %.not.not.i.i = icmp ult i32 %i.b, %i.f
  %.val.pre5 = load ptr, ptr %0, align 8, !tbaa !14 ; 4 uses
  br i1 %.not.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE28reserveForParamAndGetAddressERS4_m.exit, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %.val.pre5, i64 %i.c
  %i.h = icmp uge ptr %1, %.val.pre5
  %i.i = icmp ult ptr %1, %i.g
  %spec.select.i.i.i.i = and i1 %i.h, %i.i
  br i1 %spec.select.i.i.i.i, label %bb.c, label %.critedge.i.i, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %.val.pre5 to i64
  %i.l = sub i64 %i.j, %i.k
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %.val19.i.i = load ptr, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.val19.i.i, i64 %i.l
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE28reserveForParamAndGetAddressERS4_m.exit

.critedge.i.i:                                    ; preds = %bb.b
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d)
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE28reserveForParamAndGetAddressERS4_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE28reserveForParamAndGetAddressERS4_m.exit: ; preds = %bb.a, %bb.c, %.critedge.i.i
  %.val = phi ptr [ %.val.pre5, %bb.a ], [ %.val19.i.i, %bb.c ], [ %.val.pre, %.critedge.i.i ]
  %.016.i.i = phi ptr [ %1, %bb.a ], [ %i.m, %bb.c ], [ %1, %.critedge.i.i ] ; 7 uses
  %.val3 = load i32, ptr %i.a, align 8, !tbaa !28
  %i.n = zext i32 %.val3 to i64
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %i.n ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  store i32 3, ptr %i.r, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 6 uses
  %.not.i.i = icmp eq i32 %i.t, 0
  %i.u = icmp eq ptr %i.o, %.016.i.i
  %or.cond.i = or i1 %i.u, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEC2EOS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE28reserveForParamAndGetAddressERS4_m.exit
  %i.v = load ptr, ptr %.016.i.i, align 8, !tbaa !14 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12assignRemoteEOS3_.exit.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12assignRemoteEOS3_.exit.i.i: ; preds = %bb.d
  store ptr %i.v, ptr %i.o, align 8, !tbaa !14
  store i32 %i.t, ptr %i.q, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !15
  store i32 %i.z, ptr %i.r, align 4, !tbaa !15
  store ptr %i.w, ptr %.016.i.i, align 8, !tbaa !14
  store i32 0, ptr %i.y, align 4, !tbaa !15
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEEaSEOS3_.exit.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ugt i32 %i.t, 3
  br i1 %i.aa, label %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i, label %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i

_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i: ; preds = %bb.e
  %i.ab = zext i32 %i.t to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull %i.p, i64 noundef %i.ab, i64 noundef 16) #19
  %.val41.i.pre.i = load i32, ptr %i.s, align 8, !tbaa !28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.val41.i.pre.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_117CollapseSpaceInfoELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i, label %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge

_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge: ; preds = %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i
  %.val34.i.i.pre = load ptr, ptr %.016.i.i, align 8, !tbaa !14
  %.val.i.i4.pre = load ptr, ptr %i.o, align 8, !tbaa !14
  br label %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i

_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge, %bb.e
  %.val.i.i4 = phi ptr [ %.val.i.i4.pre, %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge ], [ %i.p, %bb.e ]
  %.val34.i.i = phi ptr [ %.val34.i.i.pre, %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge ], [ %i.v, %bb.e ]
  %.val41.i11.i = phi i32 [ %.val41.i.pre.i, %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i_crit_edge ], [ %i.t, %bb.e ]
  %i.ac = zext i32 %.val41.i11.i to i64
  %gepdiff.i.i = shl nuw nsw i64 %i.ac, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val.i.i4, ptr align 8 %.val34.i.i, i64 %gepdiff.i.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_117CollapseSpaceInfoELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_117CollapseSpaceInfoELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.thread.i, %_ZSt4moveIPN12_GLOBAL__N_117CollapseSpaceInfoES2_ET0_T_S4_S3_.exit46.i.i
  store i32 %i.t, ptr %i.q, align 8, !tbaa !28
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEEaSEOS3_.exit.sink.split.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEEaSEOS3_.exit.sink.split.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_117CollapseSpaceInfoELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12assignRemoteEOS3_.exit.i.i
  store i32 0, ptr %i.s, align 8, !tbaa !28
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEC2EOS3_.exit

_ZN4llvm11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEC2EOS3_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE28reserveForParamAndGetAddressERS4_m.exit, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEEaSEOS3_.exit.sink.split.i
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !28
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #19, !inline_history !180
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #19 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !69 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !69 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #19
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #19, !inline_history !180
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_123SparseSpaceCollapsePass14runOnOperationEvEUlNS1_13sparse_tensor18ExtractIterSpaceOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor18ExtractIterSpaceOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.e
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_123SparseSpaceCollapsePass14runOnOperationEvEUlNS_13sparse_tensor18ExtractIterSpaceOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %.val, align 8, !tbaa !182, !nonnull !27, !align !183
  %i.g = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr nonnull %1)
  br i1 %i.g, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_123SparseSpaceCollapsePass14runOnOperationEvEUlNS_13sparse_tensor18ExtractIterSpaceOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184, !nonnull !27, !align !183
  %i.j = load ptr, ptr %.val, align 8, !tbaa !182, !nonnull !27, !align !183
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIN12_GLOBAL__N_117CollapseSpaceInfoELj3EEELb0EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.j)
  %i.k = load ptr, ptr %.val, align 8, !tbaa !182, !nonnull !27, !align !183 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !28
  %i.m = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr nonnull %1) ; 0 uses
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_123SparseSpaceCollapsePass14runOnOperationEvEUlNS_13sparse_tensor18ExtractIterSpaceOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_123SparseSpaceCollapsePass14runOnOperationEvEUlNS_13sparse_tensor18ExtractIterSpaceOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.mlir::sparse_tensor::ExtractIterSpaceOp", align 8 ; 6 uses
  %3 = alloca %"class.mlir::sparse_tensor::ExtractIterSpaceOp", align 8 ; 5 uses
  store ptr %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = ptrtoint ptr %1 to i64
  br i1 %.not.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %1, i64 -16
  %i.e = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef 0) #19
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit.thread", label %_ZNK4mlir5Value9hasOneUseEv.exit.i

_ZNK4mlir5Value9hasOneUseEv.exit.i:               ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit.thread"

bb.c:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88
  %i.n = icmp eq ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor9IterateOpEvE2idE
  br i1 %i.n, label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit", label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit.thread"

"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit": ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %.not.i18 = icmp ult i32 %i.o, %i.q
  br i1 %.not.i18, label %bb.e, label %bb.d, !prof !73

bb.d:                                             ; preds = %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit"
  %i.r = tail call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_117CollapseSpaceInfoELb1EE18growAndEmplaceBackIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12emplace_backIJEEERS2_DpOT_.exit

bb.e:                                             ; preds = %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit"
  %i.s = zext i32 %i.o to i64
  %.val.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = load i32, ptr %i.a, align 8, !tbaa !28
  %i.v = add i32 %i.u, 1                          ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !28
  %.val3.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.val3.i, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12emplace_backIJEEERS2_DpOT_.exit

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  store i64 %i.c, ptr %.0.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.aa = ptrtoint ptr %i.j to i64
  store i64 %i.aa, ptr %i.z, align 8
  br label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit.thread"

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %.val16 = load ptr, ptr %0, align 8, !tbaa !14
  %i.ab = zext i32 %i.b to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.val16, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %3, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = inttoptr i64 %i.ag to ptr               ; 6 uses
  %i.ai = getelementptr inbounds i8, ptr %1, i64 -16
  %i.aj = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 noundef 0) #19
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i19, label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit24", label %_ZNK4mlir5Value9hasOneUseEv.exit.i20

_ZNK4mlir5Value9hasOneUseEv.exit.i20:             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.g, label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit24"

bb.g:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.i20
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i22 = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i22, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !88
  %i.as = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor9IterateOpEvE2idE
  %spec.select.i.i.i23 = select i1 %i.as, ptr %i.ao, ptr null
  br label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit24"

"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit24": ; preds = %bb.f, %_ZNK4mlir5Value9hasOneUseEv.exit.i20, %bb.g
  %.sroa.05.0.i21 = phi ptr [ %spec.select.i.i.i23, %bb.g ], [ null, %_ZNK4mlir5Value9hasOneUseEv.exit.i20 ], [ null, %bb.f ] ; 5 uses
  %i.at = call i64 @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #19
  %i.au = load ptr, ptr %3, align 8, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  %i.ax = and i64 %i.at, 4294967295
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.ba = call i64 @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #19
  %i.bb = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.be = and i64 %i.ba, 4294967295
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.0.0.copyload.i.i.i.i26 = load ptr, ptr %i.bg, align 8, !tbaa !58
  %i.bh = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i26
  %i.bi = icmp ne ptr %.sroa.05.0.i21, null
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit24"
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i21, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %.not = icmp eq ptr %i.bk, %i.bm
  br i1 %.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.bo = load i32, ptr %i.bn, align 4            ; 3 uses
  %i.bp = and i32 %i.bo, 8388607
  %i.bq = icmp ne i32 %i.bp, 0
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.bs = lshr i32 %i.bo, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.bs, 1
  %i.bt = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bt
  %i.bv = lshr i32 %i.bo, 21
  %i.bw = and i32 %i.bv, 2040
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !68
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.cb ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !78
  %i.ce = icmp ne ptr %i.cc, %i.cd
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !69 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !81 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !82
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr i8, ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cp, align 8
  %i.cq = call i64 @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp27getODSOperandIndexAndLengthEj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) #19 ; 3 uses
  %i.cr = load ptr, ptr %2, align 8, !tbaa !53    ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = and i32 %i.ct, 8388608
  %.not.i.i.i.i.i27 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i.i.i27, label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit.i, label %bb.j, !prof !59

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !56
  br label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit.i

_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.cw, %bb.j ], [ null, %bb.i ]
  %i.cx = and i64 %i.cq, 4294967295               ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.cq, 32
  %i.cy = add i64 %.sroa.5.0.extract.shift.i.i, %i.cq
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = icmp eq i64 %i.cz, %i.cx
  br i1 %i.da, label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp13getParentIterEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit.i
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %i.dc, align 8, !tbaa !58
  br label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp13getParentIterEv.exit

_ZN4mlir13sparse_tensor18ExtractIterSpaceOp13getParentIterEv.exit: ; preds = %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit.i, %bb.k
  %.sroa.06.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i28, %bb.k ], [ null, %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit.i ]
  %.not47 = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.06.0.i
  br i1 %.not47, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp13getParentIterEv.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !50 ; 2 uses
  %.not.i29 = icmp eq ptr %i.de, null
  br i1 %.not.i29, label %_ZN4mlir9Operation11getParentOpEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.de) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.l, %bb.m
  %i.dg = phi ptr [ %i.df, %bb.m ], [ null, %bb.l ]
  %.not14 = icmp eq ptr %i.dg, %i.ah
  br i1 %.not14, label %_ZN4mlir19LoopLikeOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_13sparse_tensor9IterateOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit32, label %.critedge

_ZN4mlir19LoopLikeOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_13sparse_tensor9IterateOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit32: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.dh = call noundef ptr @_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.ah)
  %i.di = call noundef ptr @_ZN4mlir11OpInterfaceINS_19LoopLikeOpInterfaceENS_6detail34LoopLikeOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %.sroa.05.0.i21)
  %i.dj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118isCollapsableLoopsEN4mlir19LoopLikeOpInterfaceES1_(ptr nonnull %i.ah, ptr %i.dh, ptr nonnull %.sroa.05.0.i21, ptr %i.di)
  br i1 %i.dj, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN4mlir19LoopLikeOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_13sparse_tensor9IterateOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit32
  %i.dk = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.dl = load i64, ptr %2, align 8
  store i64 %i.dl, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = ptrtoint ptr %.sroa.05.0.i21 to i64
  store i64 %i.dn, ptr %i.dm, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp13getParentIterEv.exit, %bb.h, %_ZN4mlir19LoopLikeOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_13sparse_tensor9IterateOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit32, %_ZN4mlir9Operation11getParentOpEv.exit, %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit24", %bb.n
  %.1 = phi i1 [ false, %_ZN4mlir19LoopLikeOpInterfaceCI2NS_6detail9InterfaceIS0_PNS_9OperationENS1_34LoopLikeOpInterfaceInterfaceTraitsENS_2OpIS0_JEEENS_7OpTrait9TraitBaseEEEINS_13sparse_tensor9IterateOpETnPNSt9enable_ifIXsr3std10is_base_ofINS2_IS0_S4_S5_S7_S9_E5TraitIT_EESF_EE5valueEvE4typeELPv0EEESF_.exit32 ], [ false, %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit24" ], [ true, %bb.n ], [ false, %_ZN4mlir9Operation11getParentOpEv.exit ], [ false, %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp13getParentIterEv.exit ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit.thread"

"_ZZN12_GLOBAL__N_115legalToCollapseERN4llvm15SmallVectorImplINS_17CollapseSpaceInfoEEEN4mlir13sparse_tensor18ExtractIterSpaceOpEENK3$_0clES7_.exit.thread": ; preds = %bb.b, %_ZNK4mlir5Value9hasOneUseEv.exit.i, %bb.c, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12emplace_backIJEEERS2_DpOT_.exit, %.critedge
  %.2 = phi i1 [ %.1, %.critedge ], [ true, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12emplace_backIJEEERS2_DpOT_.exit ], [ false, %bb.c ], [ false, %_ZNK4mlir5Value9hasOneUseEv.exit.i ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_117CollapseSpaceInfoEE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !73

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_117CollapseSpaceInfoELb1EE18growAndEmplaceBackIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !28
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !28
  %.val3 = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val3, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118isCollapsableLoopsEN4mlir19LoopLikeOpInterfaceES1_(ptr %0, ptr %1, ptr %2, ptr %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.llvm::detail::zip_first", align 8 ; 7 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 6 uses
  %6 = alloca %"class.std::optional.236", align 8 ; 6 uses
  %7 = alloca %"class.mlir::LoopLikeOpInterface", align 8 ; 4 uses
  %8 = alloca %"class.mlir::LoopLikeOpInterface", align 8 ; 6 uses
  %9 = alloca %"class.std::optional.213", align 8 ; 5 uses
  store ptr %0, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.a, align 8
  store ptr %2, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface17getRegionIterArgsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #19 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 4 uses
  %i.f = call { ptr, i64 } @_ZN4mlir19LoopLikeOpInterface15getInitsMutableEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #19 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %8, align 8, !tbaa !53     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4
end_hunk_0
