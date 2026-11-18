Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/synth_engine?download=true
inline.NumInlined: 559
inline.NumDeleted: 240
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EESaIS8_EED2Ev:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(929) %i.d) #20, !inline_history !70
  br label %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4cvc58internal6theory11quantifiers15SynthConjectureEEclEPS4_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers11SynthEngineD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(120) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers11SynthEngineE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4cvc58internal6theory11quantifiers15SynthConjectureEEclEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4cvc58internal6theory11quantifiers15SynthConjectureEEclEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(929) %i.e) #20, !inline_history !71
  br label %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4cvc58internal6theory11quantifiers15SynthConjectureEEclEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers11SynthEngineD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN4cvc58internal6theory11quantifiers11SynthEngineE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4cvc58internal6theory11quantifiers15SynthConjectureEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4cvc58internal6theory11quantifiers15SynthConjectureEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(929) %i.e) #20, !inline_history !72
  br label %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4cvc58internal6theory11quantifiers15SynthConjectureEEclEPS4_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN4cvc58internal6theory11quantifiers11SynthEngineD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #19, !inline_history !73
  br label %_ZN4cvc58internal6theory11quantifiers11SynthEngineD2Ev.exit

_ZN4cvc58internal6theory11quantifiers11SynthEngineD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4cvc58internal6theory11quantifiers15SynthConjectureESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZNK4cvc58internal6theory11quantifiers11SynthEngine8identifyB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.b, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.c, align 1, !tbaa !79
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers11SynthEngine8presolveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, 34359738360
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = lshr exact i64 %i.g, 3
  %wide.trip.count = and i64 %i.i, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  tail call void @_ZN4cvc58internal6theory11quantifiers15SynthConjecture8presolveEv(ptr noundef nonnull align 8 dereferenceable(929) %i.l)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN4cvc58internal6theory11quantifiers15SynthConjecture8presolveEv(ptr noundef nonnull align 8 dereferenceable(929)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers11SynthEngine10needsCheckENS1_6Theory6EffortE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 199
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory11quantifiers11SynthEngine10needsModelENS1_6Theory6EffortE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #7 align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers11SynthEngine5checkENS1_6Theory6EffortENS2_17QuantifiersModule7QEffortE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i32 %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.569", align 8   ; 18 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.574", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %6 = alloca %"class.std::vector.569", align 8   ; 13 uses
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal6theory11TheoryState12getValuationEv(ptr noundef nonnull align 8 dereferenceable(160) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = and i64 %i.k, 34359738360
  %.not159 = icmp eq i64 %i.l, 0
  br i1 %.not159, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = lshr exact i64 %i.k, 3
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %wide.trip.count = and i64 %i.m, 4294967295
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43, !nonnull !41, !align !42
  %i.r = invoke noundef ptr @_ZNK4cvc58internal3Env18getResourceManagerEv(ptr noundef nonnull align 8 dereferenceable(696) %i.q)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.preheader:                                       ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.v

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 840
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46, !noalias !86 ; 9 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !46, !alias.scope !86
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !86 ; 3 uses
  %i.ac = lshr i64 %i.ab, 40
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1048575                  ; 3 uses
  %i.af = icmp samesign ult i32 %i.ae, 1048574
  br i1 %i.af, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.ag = add nuw nsw i32 %i.ae, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 40
  %i.aj = and i64 %i.ab, -1152920405095219201
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.aa, align 8, !noalias !86
  br label %_ZNK4cvc58internal6theory11quantifiers15SynthConjecture13getConjectureEv.exit

bb.e:                                             ; preds = %bb.c
  %i.al = icmp eq i32 %i.ae, 1048574
  br i1 %i.al, label %bb.f, label %_ZNK4cvc58internal6theory11quantifiers15SynthConjecture13getConjectureEv.exit, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.am = or i64 %i.ab, 1152920405095219200
  store i64 %i.am, ptr %i.aa, align 8, !noalias !86
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZNK4cvc58internal6theory11quantifiers15SynthConjecture13getConjectureEv.exit unwind label %bb.k

_ZNK4cvc58internal6theory11quantifiers15SynthConjecture13getConjectureEv.exit: ; preds = %bb.e, %bb.d, %bb.f
  store ptr %i.aa, ptr %4, align 8, !tbaa !88
  %i.an = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory9Valuation11hasSatValueENS0_12NodeTemplateILb0EEERb(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNK4cvc58internal6theory11quantifiers15SynthConjecture13getConjectureEv.exit
  %i.ao = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ap, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.h, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.aq = add i64 %i.ao, 1152920405095219200
  %i.ar = and i64 %i.aq, 1152920405095219200      ; 2 uses
  %i.as = and i64 %i.ao, -1152920405095219201
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.aa, align 8
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !48

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ax = load i8, ptr %i.a, align 1, !range !49
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = select i1 %i.an, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.n, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit

bb.k:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNK4cvc58internal6theory11quantifiers15SynthConjecture13getConjectureEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn24 = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.ba, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit.split-lp152

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bc = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers15SynthConjecture10needsCheckEv(ptr noundef nonnull align 8 dereferenceable(929) %i.y)
          to label %bb.o unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  br i1 %i.bc, label %bb.p, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !53  ; 4 uses
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !54
  %.not.i41 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i41, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.y, ptr %i.bd, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bf, ptr %i.n, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit

bb.r:                                             ; preds = %bb.p
  %7 = load ptr, ptr %3, align 8, !tbaa !55       ; 4 uses
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %7 to i64                  ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775800
  br i1 %i.bj, label %bb.s, label %_ZNKSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #18
          to label %.noexc42 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.bk = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bl, i64 1152921504606846975)
  %i.bo = select i1 %i.bm, i64 1152921504606846975, i64 %i.bn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #17
          to label %.noexc43 unwind label %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store ptr %i.y, ptr %i.br, align 8, !tbaa !18
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.t, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

bb.t:                                             ; preds = %.noexc43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 8 %7, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i: ; preds = %bb.t, %.noexc43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.not.i17.i.i = icmp eq ptr %7, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  %i.bu = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %7, i64 noundef %i.bw) #19
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  store ptr %i.bq, ptr %3, align 8, !tbaa !55
  store ptr %i.bt, ptr %i.n, align 8, !tbaa !53
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bx, ptr %i.o, align 8, !tbaa !54
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit

.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.n, %bb.s
  %lpad.loopexit.split-lp201 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp152

_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.q, %bb.o, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !83

.loopexit.split-lp152:                            ; preds = %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.m
  %.pn26 = phi { ptr, i32 } [ %.pn24, %bb.m ], [ %lpad.loopexit.split-lp201, %.loopexit.split-lp152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.an

bb.v:                                             ; preds = %.preheader, %_ZNK4cvc58internal15ResourceManager3outEv.exit
  invoke void @_ZN4cvc58internal15ResourceManager13spendResourceENS0_8ResourceE(ptr noundef nonnull align 8 dereferenceable(3560) %i.r, i32 noundef 15)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit57: ; preds = %bb.v
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !53  ; 2 uses
  %i.bz = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = and i64 %i.cc, 34359738360
  %.not160 = icmp eq i64 %i.cd, 0
  br i1 %.not160, label %._crit_edge158, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit57
  %i.ce = lshr exact i64 %i.cc, 3
  %wide.trip.count172 = and i64 %i.ce, 4294967295
  br label %.lr.ph157

._crit_edge158.loopexit:                          ; preds = %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit71
  %.pre = load ptr, ptr %3, align 8, !tbaa !55
  %.pre174 = load ptr, ptr %i.s, align 8, !tbaa !53
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit57
  %i.cf = phi ptr [ %.pre174, %._crit_edge158.loopexit ], [ %i.by, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit57 ]
  %i.cg = phi ptr [ %.pre, %._crit_edge158.loopexit ], [ %i.bz, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit57 ] ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i58, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit, label %_ZSt8_DestroyIPPN4cvc58internal6theory11quantifiers15SynthConjectureES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4cvc58internal6theory11quantifiers15SynthConjectureES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %._crit_edge158
  store ptr %i.cg, ptr %i.s, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit

_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit: ; preds = %._crit_edge158, %_ZSt8_DestroyIPPN4cvc58internal6theory11quantifiers15SynthConjectureES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ch = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit71
  %indvars.iv169 = phi i64 [ 0, %.lr.ph157.preheader ], [ %indvars.iv.next170, %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit71 ] ; 2 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !55
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv169
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18 ; 3 uses
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !56, !nonnull !41, !align !42
  %i.cm = invoke noundef i64 @_ZNK4cvc58internal6theory24InferenceManagerBuffered16numPendingLemmasEv(ptr noundef nonnull align 8 dereferenceable(337) %i.cl)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %.lr.ph157
  %i.cn = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers15SynthConjecture7doCheckEv(ptr noundef nonnull align 8 dereferenceable(929) %i.ck)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %.noexc59
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !56, !nonnull !41, !align !42
  %i.cp = invoke noundef i64 @_ZNK4cvc58internal6theory24InferenceManagerBuffered16numPendingLemmasEv(ptr noundef nonnull align 8 dereferenceable(337) %i.co)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %.noexc60
  %i.cq = icmp ugt i64 %i.cp, %i.cm
  %spec.select.i = or i1 %i.cn, %i.cq
  br i1 %spec.select.i, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit71, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !53  ; 4 uses
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !54
  %.not.i62 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i62, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.ck, ptr %i.cr, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.ct, ptr %i.u, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit71

bb.z:                                             ; preds = %bb.x
  %i.cu = load ptr, ptr %6, align 8, !tbaa !55    ; 4 uses
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 5 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.aa, label %_ZNKSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE12_M_check_lenEmPKc.exit.i.i63

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #18
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE12_M_check_lenEmPKc.exit.i.i63: ; preds = %bb.z
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i64 = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i64, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i65 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i65)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #17
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE12_M_check_lenEmPKc.exit.i.i63
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store ptr %i.ck, ptr %i.dg, align 8, !tbaa !18
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.ab, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i66

bb.ab:                                            ; preds = %.noexc70
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %i.cu, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i66

_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i66: ; preds = %bb.ab, %.noexc70
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.not.i17.i.i67 = icmp eq ptr %i.cu, null
  br i1 %.not.i17.i.i67, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i68, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i66
  %i.dj = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dl) #19
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i68

_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i68: ; preds = %bb.ac, %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i66
  store ptr %i.df, ptr %6, align 8, !tbaa !55
  store ptr %i.di, ptr %i.u, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dm, ptr %i.v, align 8, !tbaa !54
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit71

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph157, %.noexc59, %.noexc60, %_ZNKSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE12_M_check_lenEmPKc.exit.i.i63, %bb.v, %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit, %bb.ae, %bb.af, %bb.ah, %bb.ai, %._crit_edge, %bb.aa
  %lpad.loopexit.split-lp198 = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EED2Ev.exit84, label %bb.am

_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE9push_backERKS5_.exit71: ; preds = %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i68, %bb.y, %bb.w
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %._crit_edge158.loopexit, label %.lr.ph157, !llvm.loop !84

bb.ad:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit
  %i.do = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.dp = load ptr, ptr %i.u, align 8, !tbaa !53
  %.not.i.i72 = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i.i72, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit74, label %_ZSt8_DestroyIPPN4cvc58internal6theory11quantifiers15SynthConjectureES5_EvT_S7_RSaIT0_E.exit.i.i73

_ZSt8_DestroyIPPN4cvc58internal6theory11quantifiers15SynthConjectureES5_EvT_S7_RSaIT0_E.exit.i.i73: ; preds = %bb.ad
  store ptr %i.do, ptr %i.u, align 8, !tbaa !53
  br label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit74

_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit74: ; preds = %bb.ad, %_ZSt8_DestroyIPPN4cvc58internal6theory11quantifiers15SynthConjectureES5_EvT_S7_RSaIT0_E.exit.i.i73
  %i.dq = load ptr, ptr %3, align 8, !tbaa !89
  %i.dr = load ptr, ptr %i.s, align 8, !tbaa !89
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit74
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal6theory11TheoryState12getValuationEv(ptr noundef nonnull align 8 dereferenceable(160) %i.dt)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.dv = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory9Valuation9needCheckEv(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  br i1 %i.dv, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = invoke noundef zeroext i1 @_ZNK4cvc58internal15ResourceManager14outOfResourcesEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.r)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %bb.ah
  br i1 %i.dw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %.noexc75
  %i.dx = invoke noundef zeroext i1 @_ZNK4cvc58internal15ResourceManager9outOfTimeEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.r)
          to label %_ZNK4cvc58internal15ResourceManager3outEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4cvc58internal15ResourceManager3outEv.exit:   ; preds = %bb.ai
  br i1 %i.dx, label %.critedge, label %bb.v, !llvm.loop !85

.critedge:                                        ; preds = %.noexc75, %bb.ag, %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EE5clearEv.exit74, %_ZNK4cvc58internal15ResourceManager3outEv.exit
  %i.dy = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIPN4cvc58internal6theory11quantifiers15SynthConjectureESaIS5_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge
end_hunk_0
