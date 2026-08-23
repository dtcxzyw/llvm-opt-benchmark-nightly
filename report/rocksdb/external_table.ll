Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/external_table?download=true
inline.NumInlined: 1938
inline.NumDeleted: 1028
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !356
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapterD2Ev(ptr noundef nonnull align 8 dead_on_return(856) dereferenceable(856) initializes((0, 8)) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapterE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !355  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !357 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb19InternalTblPropCollEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb19InternalTblPropCollEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #30, !inline_history !671
  br label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb19InternalTblPropCollEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !670

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !359
  br label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !356
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN7rocksdb15TablePropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(784) dereferenceable(784) %i.p) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !304  ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(33) %i.r) #30, !inline_history !672
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !302  ; 3 uses
  %.not.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb20ExternalTableBuilderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb20ExternalTableBuilderEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #30, !inline_history !380
  br label %_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb20ExternalTableBuilderEEclEPS1_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !258 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapterD0Ev(ptr noundef nonnull align 8 dereferenceable(856) initializes((0, 8)) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapterE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !355  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !357 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb19InternalTblPropCollEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb19InternalTblPropCollEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #30, !inline_history !673
  br label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb19InternalTblPropCollEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !670

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !359
  br label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !356
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28, !inline_history !674
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN7rocksdb15TablePropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(784) dereferenceable(784) %i.p) #30, !inline_history !674
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !304  ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(33) %i.r) #30, !inline_history !675
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i, %_ZNSt6vectorISt10unique_ptrIN7rocksdb19InternalTblPropCollESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !302  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN7rocksdb20ExternalTableBuilderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb20ExternalTableBuilderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #30, !inline_history !676
  br label %_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb20ExternalTableBuilderEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !258 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapterD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #28, !inline_history !674
  br label %_ZN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapterD2Ev.exit

_ZN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapterD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb20ExternalTableBuilderESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 856) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_127ExternalTableBuilderAdapter3AddERKNS_5SliceES4_(ptr noundef nonnull align 8 dereferenceable(856) initializes((8, 14)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 9 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr @.str, ptr %3, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 72057594037927935, ptr %i.b, align 8, !tbaa !533
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !536
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN7rocksdb16ParseInternalKeyERKNS_5SliceEPNS_17ParsedInternalKeyEb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i1 noundef zeroext false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <4 x i8>, ptr %4, align 8, !tbaa !15
  store <4 x i8> %i.e, ptr %i.d, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %4, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !67, !range !397, !noundef !90
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i8 %i.g, ptr %i.h, align 4, !tbaa !256
  store i8 0, ptr %i.f, align 4, !tbaa !256
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !257
  store i8 0, ptr %i.i, align 1, !tbaa !257
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !258
  store ptr null, ptr %i.l, align 8, !tbaa !258
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !258  ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !258
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.o) #28
  %.pr = load ptr, ptr %i.l, align 8, !tbaa !258  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.a, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.p = load i8, ptr %i.d, align 8, !tbaa !244
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.p

bb.b:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.r = load i8, ptr %i.c, align 8, !tbaa !536   ; 8 uses
  %.not = icmp eq i8 %i.r, 1
  br i1 %.not, label %bb.o, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  %i.s = icmp ult i8 %i.r, 10                     ; 2 uses
  %i.t = icmp ult i8 %i.r, 100
  %. = select i1 %i.t, i32 2, i32 3               ; 3 uses
  %i.u = zext nneg i32 %. to i64
  %i.v = select i1 %i.s, i64 1, i64 %i.u          ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  store ptr %i.w, ptr %9, align 8, !tbaa !42, !alias.scope !677
  br i1 %i.s, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.v, ptr %11, align 8, !tbaa !43, !alias.scope !677
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, i8 45, i64 %i.v, i1 false)
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.v, ptr %12, align 8, !tbaa !43, !alias.scope !677
  %13 = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %13, align 1, !tbaa !15
  %i.x = icmp ugt i8 %i.r, 99
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.y = urem i8 %i.r, 100
  %i.z = shl nuw i8 %i.y, 1
  %i.aa = udiv i8 %i.r, 100
  %i.ab = zext i8 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15, !noalias !677
  %i.af = zext nneg i32 %. to i64
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !15
  %i.ai = load i8, ptr %i.ac, align 2, !tbaa !15, !noalias !677
  %14 = add nsw i32 %., -2
  %15 = zext nneg i32 %14 to i64
  br label %bb.d, !llvm.loop !680

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.aj = shl nuw i8 %i.r, 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15, !noalias !677
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !15
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !15, !noalias !677
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.d:                                             ; preds = %.lr.ph.preheader.i.i, %.thread
  %.sink65 = phi i64 [ %15, %.lr.ph.preheader.i.i ], [ %i.v, %.thread ]
  %.sink = phi i8 [ %i.ai, %.lr.ph.preheader.i.i ], [ 0, %.thread ]
  %.0.lcssa.i.i.ph = phi i8 [ %i.aa, %.lr.ph.preheader.i.i ], [ %i.r, %.thread ]
  %16 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink65
  store i8 %.sink, ptr %16, align 1, !tbaa !15
  %i.aq = or disjoint i8 %.0.lcssa.i.i.ph, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %._crit_edge.i.i, %bb.d
  %storemerge.i.i = phi i8 [ %i.aq, %bb.d ], [ %i.ap, %._crit_edge.i.i ]
  store i8 %storemerge.i.i, ptr %i.w, align 8, !tbaa !15
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.62, i64 noundef 11)
          to label %.noexc unwind label %bb.l     ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 14 uses
  store ptr %i.as, ptr %8, align 8, !tbaa !42, !alias.scope !681
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !9  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !43 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.at, ptr %8, align 8, !tbaa !9, !alias.scope !681
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !15
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !15, !alias.scope !681
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !43, !alias.scope !681
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !9
  store i64 0, ptr %i.bc, align 8, !tbaa !43
  store i8 0, ptr %i.au, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !43, !noalias !684 ; 5 uses
  %i.bf = icmp sgt i64 %i.be, 9223372036854775794
  br i1 %i.bf, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #32
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  %i.bg = add nsw i64 %i.be, 13                   ; 3 uses
  %i.bh = load ptr, ptr %8, align 8, !tbaa !9, !noalias !684 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bj = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bk = load i64, ptr %i.as, align 8, !tbaa !15, !noalias !684
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bl = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bg, %i.bl
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.bm, ptr noundef nonnull align 1 dereferenceable(13) @.str.63, i64 13, i1 false), !noalias !684
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.be, i64 noundef 0, ptr noundef nonnull @.str.63, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.i, %bb.h
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !43, !noalias !684
  %i.bn = load ptr, ptr %8, align 8, !tbaa !9, !noalias !684
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bg
  store i8 0, ptr %i.bo, align 1, !tbaa !15, !noalias !684
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.bp, ptr %7, align 8, !tbaa !42, !alias.scope !684
  %i.bq = load ptr, ptr %8, align 8, !tbaa !9, !noalias !684 ; 3 uses
  %i.br = icmp eq ptr %i.bq, %i.as
  br i1 %i.br, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bs = load i64, ptr %i.bd, align 8, !tbaa !43, !noalias !684 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bu, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.bq, ptr %7, align 8, !tbaa !9, !alias.scope !684
  %i.bv = load i64, ptr %i.as, align 8, !tbaa !15, !noalias !684
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !15, !alias.scope !684
  %.pre.i13 = load i64, ptr %i.bd, align 8, !tbaa !43, !noalias !684
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.j
  %i.bw = phi ptr [ %i.bp, %bb.j ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  %i.bx = phi i64 [ %i.bs, %bb.j ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !43, !alias.scope !684
  store ptr %i.as, ptr %8, align 8, !tbaa !9, !noalias !684
  store i64 0, ptr %i.bd, align 8, !tbaa !43, !noalias !684
  store i8 0, ptr %i.as, align 8, !tbaa !15, !noalias !684
  store ptr %i.bw, ptr %6, align 8, !tbaa !86
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr @.str, ptr %10, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ca, align 8, !tbaa !88
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %10, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit unwind label %bb.n

_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit: ; preds = %bb.k
  %i.cb = load <4 x i8>, ptr %5, align 8, !tbaa !15
  store <4 x i8> %i.cb, ptr %i.d, align 8, !tbaa !15
  store <4 x i8> zeroinitializer, ptr %5, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !67, !range !397, !noundef !90
  store i8 %i.cd, ptr %i.h, align 4, !tbaa !256
  store i8 0, ptr %i.cc, align 4, !tbaa !256
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  store i8 %i.cf, ptr %i.k, align 1, !tbaa !257
  store i8 0, ptr %i.ce, align 1, !tbaa !257
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !258
  store ptr null, ptr %i.cg, align 8, !tbaa !258
  %i.ci = load ptr, ptr %i.m, align 8, !tbaa !258 ; 2 uses
  store ptr %i.ch, ptr %i.m, align 8, !tbaa !258
  %.not.i.i.i.i.i17 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i17, label %_ZN7rocksdb6StatusD2Ev.exit22, label %_ZN7rocksdb6StatusaSEOS0_.exit19

_ZN7rocksdb6StatusaSEOS0_.exit19:                 ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ci) #28
  %.pr40 = load ptr, ptr %i.cg, align 8, !tbaa !258 ; 2 uses
  %.not.i.i20 = icmp eq ptr %.pr40, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit22, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit19
  call void @_ZdaPv(ptr noundef nonnull %.pr40) #28
  br label %_ZN7rocksdb6StatusD2Ev.exit22

_ZN7rocksdb6StatusD2Ev.exit22:                    ; preds = %_ZN7rocksdb6Status12NotSupportedERKNS_5SliceES3_.exit, %_ZN7rocksdb6StatusaSEOS0_.exit19, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.cj = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bp
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN7rocksdb6StatusD2Ev.exit22
  %i.cl = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cn = load ptr, ptr %8, align 8, !tbaa !9     ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.as
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cp = load i64, ptr %i.as, align 8, !tbaa !15
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cr = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.w
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.ct = load i64, ptr %i.w, align 8, !tbaa !15
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.p

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
end_hunk_0
