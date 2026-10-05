Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestLoopParametricTiling?download=true
inline.NumInlined: 877
inline.NumDeleted: 632
begin_hunk_0_@_ZN4mlir10UnknownLoc3getEPNS_11MLIRContextE
declare ptr @_ZN4mlir10UnknownLoc3getEPNS_11MLIRContextE(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #16
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !190 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #16, !inline_history !182
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #18, !inline_history !182
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !190
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !183

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !187
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !194  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !195  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #18
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !184

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !194
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !196
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #18
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #16
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #16, !inline_history !197
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #16 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !198 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !198 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !198  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #16
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #16, !inline_history !197
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvEUlNS1_3scf5ForOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.186", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.d
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvEUlNS_3scf5ForOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %.val.i = load ptr, ptr %.val, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213, !nonnull !31, !noundef !31
  %i.h = tail call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.g) #16
  br label %_ZN4mlir9Operation15getParentRegionEv.exit.i.i

_ZN4mlir9Operation15getParentRegionEv.exit.i.i:   ; preds = %bb.b, %bb.d
  %.0.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation15getParentRegionEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.n = icmp eq ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_3scf5ForOpEvE2idE
  br i1 %i.n, label %_ZZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvENKUlN4mlir3scf5ForOpEE_clES3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mlir9Operation15getParentRegionEv.exit.i.i
  %i.o = tail call noundef ptr @_ZN4mlir6Region15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i) #16 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i2.i.i, label %_ZN4mlir6Region15getParentOfTypeINS_3scf5ForOpEEET_v.exit.i.i, label %_ZN4mlir9Operation15getParentRegionEv.exit.i.i, !llvm.loop !199

_ZN4mlir6Region15getParentOfTypeINS_3scf5ForOpEEET_v.exit.i.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 456
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 464
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  call void @_ZN4mlir22extractFixedOuterLoopsENS_3scf5ForOpEN4llvm8ArrayRefIlEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.186") align 8 %2, ptr %1, ptr %i.q, i64 %i.w) #16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIN4mlir3scf5ForOpELj8EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6Region15getParentOfTypeINS_3scf5ForOpEEET_v.exit.i.i
  call void @free(ptr noundef %i.y) #16
  br label %_ZN4llvm11SmallVectorIN4mlir3scf5ForOpELj8EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN4mlir3scf5ForOpELj8EED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZN4mlir6Region15getParentOfTypeINS_3scf5ForOpEEET_v.exit.i.i
  %i.ab = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvENKUlN4mlir3scf5ForOpEE_clES3_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir3scf5ForOpELj8EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.ab) #16
  br label %_ZZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvENKUlN4mlir3scf5ForOpEE_clES3_.exit.i

_ZZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvENKUlN4mlir3scf5ForOpEE_clES3_.exit.i: ; preds = %bb.c, %bb.f, %_ZN4llvm11SmallVectorIN4mlir3scf5ForOpELj8EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvEUlNS_3scf5ForOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvEUlNS_3scf5ForOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit: ; preds = %bb.a, %_ZZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvENKUlN4mlir3scf5ForOpEE_clES3_.exit.i
  ret void
}

declare void @_ZN4mlir22extractFixedOuterLoopsENS_3scf5ForOpEN4llvm8ArrayRefIlEE(ptr dead_on_unwind writable sret(%"struct.std::pair.186") align 8, ptr, ptr, i64) local_unnamed_addr #8

declare noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #8

declare noundef ptr @_ZN4mlir6Region15getParentRegionEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #8

declare void @_ZN4mlir12registerPassERKSt8functionIFSt10unique_ptrINS_4PassESt14default_deleteIS2_EEvEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{ptr @_ZN4llvm2cl4listIlbNS0_6parserIlEEED2Ev, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSSt14_Function_base", !5, i64 0, !9, i64 16}
!11 = !{!10, !9, i64 16}
!12 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !9, i64 0, !6, i64 8, !6, i64 12}
!15 = !{!14, !9, i64 0}
!16 = !{!14, !6, i64 12}
!17 = !{!"vtable pointer", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 omnipotent char", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTSN4mlir4PassE", !9, i64 0}
!24 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir4PassELb0EE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!"p1 long", !9, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"bool", !5, i64 0}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"p1 _ZTSN12_GLOBAL__N_130SimpleParametricLoopTilingPassE", !9, i64 0}
!33 = !{!"_ZTSZN12_GLOBAL__N_130SimpleParametricLoopTilingPass14runOnOperationEvEUlN4mlir3scf5ForOpEE_", !32, i64 0}
!34 = !{!33, !32, i64 0}
!35 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"_ZTSN4mlir6TypeIDE", !12, i64 0}
!38 = !{!37, !12, i64 0}
!39 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir6detail18PassExecutionStateEE", !5, i64 0, !29, i64 72}
!40 = !{!39, !29, i64 72}
!41 = !{!14, !6, i64 8}
!42 = !{!"any p2 pointer", !9, i64 0}
!43 = !{!"p2 _ZTSN4mlir6detail11PassOptions10OptionBaseE", !42, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !43, i64 16}
!47 = !{!"p1 int", !9, i64 0}
!48 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !42, i64 0, !6, i64 8, !6, i64 12, !29, i64 16}
!49 = !{!48, !42, i64 0}
!50 = !{!"p1 _ZTSN4llvm2cl10SubCommandE", !9, i64 0}
!51 = !{!"p1 _ZTSN4llvm2cl15SubCommandGroupE", !9, i64 0}
!52 = !{!"_ZTSN4llvm2cl3subE", !50, i64 0, !51, i64 8}
!53 = !{!52, !50, i64 0}
!54 = !{!52, !51, i64 8}
!55 = !{!"_ZTSN4mlir6detail11PassOptions10OptionBaseE", !29, i64 8}
!56 = !{!55, !29, i64 8}
!57 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIlSaIlEE", !59, i64 0}
!61 = !{!"p1 _ZTSN4llvm2cl11OptionValueIlEE", !9, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN4llvm2cl11OptionValueIlEESaIS3_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!"_ZTSNSt12_Vector_baseIN4llvm2cl11OptionValueIlEESaIS3_EE12_Vector_implE", !62, i64 0}
!64 = !{!"_ZTSSt12_Vector_baseIN4llvm2cl11OptionValueIlEESaIS3_EE", !63, i64 0}
!65 = !{!"_ZTSSt6vectorIN4llvm2cl11OptionValueIlEESaIS3_EE", !64, i64 0}
!66 = !{!"_ZTSN4llvm2cl12list_storageIlbEE", !60, i64 0, !65, i64 24, !29, i64 48}
!67 = !{!66, !29, i64 48}
!68 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!69 = !{!68, !47, i64 0}
!70 = !{!68, !47, i64 8}
!71 = !{!57, !27, i64 0}
!72 = !{!57, !27, i64 8}
!73 = !{!"p1 _ZTSN4mlir6detail11PassOptions10ListOptionIlN4llvm2cl6parserIlEEEE", !9, i64 0}
!74 = !{!"_ZTSZN4mlir6detail11PassOptions10ListOptionIlN4llvm2cl6parserIlEEE16handleOccurrenceEjNS3_9StringRefES8_EUlRKlE_", !73, i64 0}
!75 = !{!74, !73, i64 0}
!76 = !{!"p1 _ZTSN4llvm2cl6parserIlEE", !9, i64 0}
!77 = !{!"p1 _ZTSN4llvm2cl6OptionE", !9, i64 0}
!78 = !{!"p1 _ZTSN4llvm9StringRefE", !9, i64 0}
!79 = !{!68, !47, i64 16}
!80 = !{ptr @_ZN4llvm2cl4listIlbNS0_6parserIlEEED2Ev}
!81 = !{!62, !61, i64 0}
!82 = !{!62, !61, i64 16}
!83 = !{!57, !27, i64 16}
!84 = !{!48, !29, i64 16}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !9, i64 0}
!87 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !86, i64 0, !86, i64 8}
!88 = distinct !{null, null}
!89 = !{!"_ZTSSt8functionIFSt10unique_ptrIN4mlir4PassESt14default_deleteIS2_EEvEE", !10, i64 0, !9, i64 24}
!90 = !{!89, !9, i64 24}
!91 = distinct !{!91, i1 false, !"_ZSt10__invoke_rISt10unique_ptrIN4mlir4PassESt14default_deleteIS2_EERZNS1_16PassRegistrationIN12_GLOBAL__N_130SimpleParametricLoopTilingPassEEC1EvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_"}
!92 = distinct !{!92, !91, !"_ZSt10__invoke_rISt10unique_ptrIN4mlir4PassESt14default_deleteIS2_EERZNS1_16PassRegistrationIN12_GLOBAL__N_130SimpleParametricLoopTilingPassEEC1EvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_: argument 0"}
!93 = distinct !{!93, i1 false, !"_ZSt13__invoke_implISt10unique_ptrIN12_GLOBAL__N_130SimpleParametricLoopTilingPassESt14default_deleteIS2_EERZN4mlir16PassRegistrationIS2_EC1EvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_"}
!94 = distinct !{!94, !93, !"_ZSt13__invoke_implISt10unique_ptrIN12_GLOBAL__N_130SimpleParametricLoopTilingPassESt14default_deleteIS2_EERZN4mlir16PassRegistrationIS2_EC1EvEUlvE_JEET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!95 = distinct !{!95, i1 false, !"_ZZN4mlir16PassRegistrationIN12_GLOBAL__N_130SimpleParametricLoopTilingPassEEC1EvENKUlvE_clEv"}
!96 = distinct !{!96, !95, !"_ZZN4mlir16PassRegistrationIN12_GLOBAL__N_130SimpleParametricLoopTilingPassEEC1EvENKUlvE_clEv: argument 0"}
!97 = distinct !{!97, i1 false, !"_ZSt11make_uniqueIN12_GLOBAL__N_130SimpleParametricLoopTilingPassEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!98 = distinct !{!98, !97, !"_ZSt11make_uniqueIN12_GLOBAL__N_130SimpleParametricLoopTilingPassEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!99 = !{!92}
!100 = !{!98, !96, !94, !92}
!101 = !{ptr @_ZN12_GLOBAL__N_130SimpleParametricLoopTilingPassD2Ev}
!102 = !{!"_ZTSN4llvm5Twine8NodeKindE", !5, i64 0}
!103 = !{!"_ZTSN4llvm5TwineE", !5, i64 0, !5, i64 16, !102, i64 32, !102, i64 33}
!104 = !{!103, !102, i64 33}
!105 = !{!5, !5, i64 0}
!106 = !{!103, !102, i64 32}
!107 = !{!"p1 _ZTSN4mlir16DiagnosticEngineE", !9, i64 0}
!108 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir10DiagnosticEE", !5, i64 0, !29, i64 192}
!109 = !{!"_ZTSSt17_Optional_payloadIN4mlir10DiagnosticELb1ELb0ELb0EE", !108, i64 0}
!110 = !{!"_ZTSSt17_Optional_payloadIN4mlir10DiagnosticELb0ELb0ELb0EE", !109, i64 0}
!111 = !{!"_ZTSSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EE", !110, i64 0}
!112 = !{!"_ZTSSt8optionalIN4mlir10DiagnosticEE", !111, i64 0}
!113 = !{!"_ZTSN4mlir18InFlightDiagnosticE", !107, i64 0, !112, i64 8}
!114 = !{!113, !107, i64 0}
!115 = !{!108, !29, i64 192}
!116 = distinct !{!116, i1 false, !"_ZSt11make_uniqueIN12_GLOBAL__N_130SimpleParametricLoopTilingPassEJRKS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!117 = distinct !{!117, !116, !"_ZSt11make_uniqueIN12_GLOBAL__N_130SimpleParametricLoopTilingPassEJRKS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!118 = distinct !{null}
!119 = distinct !{null, null}
!120 = !{!117}
!121 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_9StringRefEPNS_2cl6OptionEEE", !9, i64 0}
!122 = !{!"_ZTSN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEEE", !121, i64 0, !47, i64 8, !6, i64 16, !6, i64 20}
!123 = !{!122, !6, i64 20}
!124 = !{!122, !121, i64 0}
!125 = !{!"p2 _ZTSN4mlir4Pass9StatisticE", !42, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIPN4mlir4Pass9StatisticESaIS3_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
end_hunk_0
