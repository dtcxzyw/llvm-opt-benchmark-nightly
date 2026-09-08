Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/message_layout_helper?download=true
inline.NumInlined: 1439
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6google8protobuf8internal17TailCallTableInfoD2Ev:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #21
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !100

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #21
  br label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit

_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !116
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit: ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EED2Ev.exit, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !42
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo14FieldEntryInfoESaIS4_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper15IsFastPathFieldEPKNS0_15FieldDescriptorERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISA_EE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef %0)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef %0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = load ptr, ptr %1, align 8, !tbaa !76     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = trunc i64 %i.i to i32
  %i.k = add i32 %i.j, 536870911
  %i.l = lshr i32 %i.b, 3
  %i.m = and i32 %i.k, %i.l
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !61
  %i.r = icmp ne i8 %i.q, 1
  %.not10 = icmp eq ptr %i.e, null
  %.not = or i1 %.not10, %i.r
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = icmp eq ptr %i.t, %0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.u, %bb.c ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper24ShouldPromoteToFastParseEPKNS0_15FieldDescriptorENS3_12FieldHotnessERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISB_EE(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper15IsFastPathFieldEPKNS0_15FieldDescriptorERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISA_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef %0)
  br i1 %i.b, label %bb.c, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper15IsFastPathFieldEPKNS0_15FieldDescriptorERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISA_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i32 @_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE(ptr noundef %0)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = load ptr, ptr %2, align 8, !tbaa !76     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 5
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, 536870911
  %i.m = lshr i32 %i.c, 3
  %i.n = and i32 %i.l, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !61
  %i.s = icmp ne i8 %i.r, 1
  %.not10.i = icmp eq ptr %i.f, null
  %.not.i = or i1 %.not10.i, %i.s
  br i1 %.not.i, label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper15IsFastPathFieldEPKNS0_15FieldDescriptorERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISA_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.v = icmp eq ptr %i.u, %0
  br label %_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper15IsFastPathFieldEPKNS0_15FieldDescriptorERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISA_EE.exit

_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper15IsFastPathFieldEPKNS0_15FieldDescriptorERKSt6vectorINS0_8internal17TailCallTableInfo13FastFieldInfoESaISA_EE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %i.v, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler3cppltENS2_19MessageLayoutHelper12FieldHotnessES4_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, %1
  ret i1 %i.a
}

declare noundef i32 @_ZN6google8protobuf8compiler3cpp21EstimateAlignmentSizeEPKNS0_15FieldDescriptorE(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper29ConsolidateAlignedFieldGroupsERSt5arrayISt6vectorINS2_10FieldGroupESaIS6_EELm6EEmm(ptr dead_on_unwind noalias writable sret(%"struct.std::array.1") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"class.google::protobuf::compiler::cpp::FieldGroup", align 8 ; 15 uses
  %i.a = icmp ugt i64 %3, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.b = urem i64 %3, %2                          ; 2 uses
  %i.c = udiv i64 %3, %2                          ; 3 uses
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.e, label %bb.f, !prof !72

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %3, i64 noundef %2, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull %i.e) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  %i.g = add i64 %i.c, 5
  %i.h = udiv i64 %i.g, %i.c                      ; 4 uses
  %i.i = icmp ugt i64 %i.h, 288230376151711743
  %i.j = shl nuw nsw i64 %i.h, 5
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.i, label %bb.h, label %.split

bb.f:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %i.b, i64 noundef 0, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull %i.o) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit49 unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit49: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  unreachable

.split:                                           ; preds = %bb.e, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge
  %.04076 = phi i64 [ %i.bd, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge ], [ 0, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.04076 ; 5 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.04076 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !77
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 5
  %i.z = icmp ult i64 %i.y, %i.h
  br i1 %i.z, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit

bb.h:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
          to label %.noexc unwind label %.loopexit.split-lp67

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_M_allocateEm.exit.i: ; preds = %.split
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.w
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23
          to label %.noexc50 unwind label %.loopexit66 ; 4 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_M_allocateEm.exit.i
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !77  ; 3 uses
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !68 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc50, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ae, %.noexc50 ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.af, %.noexc50 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.ah = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !29, !alias.scope !128, !noalias !127
  store <2 x ptr> %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !29, !alias.scope !127, !noalias !128
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71, !alias.scope !128, !noalias !127
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !71, !alias.scope !127, !noalias !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !128, !noalias !127
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !128, !noalias !127
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !127, !noalias !128
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.ag
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !77
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split.i, %.noexc50
  %i.aq = phi ptr [ %.pr.i, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exitthread-pre-split.i ], [ %i.af, %.noexc50 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !69
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #21
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.ae, ptr %i.r, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store ptr %i.av, ptr %i.aa, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.h
  store ptr %i.aw, ptr %i.s, align 8, !tbaa !69
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit.i, %.split
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !73
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %i.ax, ptr %i.az)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.preheader unwind label %.loopexit66

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.preheader: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !68 ; 2 uses
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !77  ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.bb
  br i1 %.not, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br label %bb.j

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit.preheader
  %i.bd = add nuw nsw i64 %.04076, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, 6
  br i1 %exitcond.not, label %bb.w, label %.split, !llvm.loop !124

.loopexit66:                                      ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE7reserveEm.exit
  %lpad.loopexit68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp67:                             ; preds = %bb.h
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %.lr.ph75, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit
  %i.be = phi ptr [ %i.bb, %.lr.ph75 ], [ %i.ei, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit ] ; 2 uses
  %i.bf = phi ptr [ %i.ba, %.lr.ph75 ], [ %i.eh, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit ] ; 2 uses
  %.03874 = phi i64 [ 0, %.lr.ph75 ], [ %i.bg, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.bg = add i64 %.03874, %i.c                   ; 4 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 5
  %i.bl = icmp ult i64 %.03874, %i.bk
  %i.bm = icmp ult i64 %.03874, %i.bg
  %or.cond72 = and i1 %i.bm, %i.bl
  br i1 %or.cond72, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit, %bb.j
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !68 ; 7 uses
  %i.bo = load ptr, ptr %i.s, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !37  ; 2 uses
  %i.bq = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i.i.i.i.i.i, label %.noexc53, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = icmp ugt i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !70

.noexc.i.i.i.i:                                   ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc52 unwind label %.loopexit.split-lp

.noexc52:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #23
          to label %.noexc53 unwind label %.loopexit

.noexc53:                                         ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.k
  %i.bw = phi ptr [ null, %bb.k ], [ %i.bv, %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.bw, ptr %i.bn, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !71
  %i.ca = load ptr, ptr %6, align 8, !tbaa !29    ; 4 uses
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp sgt i64 %i.ce, 8
  br i1 %i.cf, label %bb.m, label %bb.n, !prof !72

bb.m:                                             ; preds = %.noexc53
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bw, ptr align 8 %i.ca, i64 %i.ce, i1 false)
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i

bb.n:                                             ; preds = %.noexc53
  %i.cg = icmp eq i64 %i.ce, 8
  br i1 %i.cg, label %bb.o, label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ch = load ptr, ptr %i.ca, align 8, !tbaa !44
  store ptr %i.ch, ptr %i.bw, align 8, !tbaa !44
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i

_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.ci = getelementptr inbounds i8, ptr %i.bw, i64 %i.ce
  store ptr %i.ci, ptr %i.bx, align 8, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.ck = load i64, ptr %i.k, align 8
  store i64 %i.ck, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %i.cm, ptr %i.bc, align 8, !tbaa !68
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit

bb.p:                                             ; preds = %.critedge
  invoke void @_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %._ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit_crit_edge unwind label %.loopexit

._ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit_crit_edge: ; preds = %bb.p
  %.pre78 = load ptr, ptr %6, align 8, !tbaa !38
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit

.lr.ph:                                           ; preds = %bb.j, %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit
  %i.cn = phi ptr [ %i.ds, %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit ], [ %i.be, %bb.j ] ; 2 uses
  %i.co = phi ptr [ %i.dt, %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit ], [ %i.bf, %bb.j ]
  %.073 = phi i64 [ %i.du, %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit ], [ %.03874, %bb.j ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %.073 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !29 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !29 ; 3 uses
  %.not.i55 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i55, label %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.ct = load float, ptr %i.k, align 8, !tbaa !36
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.cv = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = ashr exact i64 %i.cy, 3                 ; 2 uses
  %i.da = uitofp i64 %i.cz to float
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dc = load float, ptr %i.db, align 8, !tbaa !36
  %i.dd = ptrtoint ptr %i.cs to i64
  %i.de = ptrtoint ptr %i.cq to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3                 ; 2 uses
  %i.dh = uitofp i64 %i.dg to float
  %i.di = fmul float %i.dc, %i.dh
  %i.dj = call float @llvm.fmuladd.f32(float %i.ct, float %i.da, float %i.di)
  %i.dk = add nsw i64 %i.cz, %i.dg
  %i.dl = uitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dj, %i.dl
  store float %i.dm, ptr %i.k, align 8, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !39
  %i.dp = load i32, ptr %i.m, align 4, !tbaa !39
  %i.dq = add i32 %i.dp, %i.do
  store i32 %i.dq, ptr %i.m, align 4, !tbaa !39
  %i.dr = getelementptr inbounds i8, ptr %i.cv, i64 %i.cy
  invoke void @_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEvNS9_IPS4_S6_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %i.dr, ptr %i.cq, ptr %i.cs)
          to label %._ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit_crit_edge unwind label %bb.r

._ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit_crit_edge: ; preds = %bb.q
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !68
  %.pre77 = load ptr, ptr %i.q, align 8, !tbaa !77
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit

_ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit: ; preds = %._ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit_crit_edge, %.lr.ph
  %i.ds = phi ptr [ %.pre77, %._ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit_crit_edge ], [ %i.cn, %.lr.ph ] ; 2 uses
  %i.dt = phi ptr [ %.pre, %._ZN6google8protobuf8compiler3cpp10FieldGroup6AppendERKS3_.exit_crit_edge ], [ %i.co, %.lr.ph ] ; 2 uses
  %i.du = add nuw i64 %.073, 1                    ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 5
  %i.dz = icmp ult i64 %i.du, %i.dy
  %i.ea = icmp ult i64 %i.du, %i.bg
  %or.cond = and i1 %i.ea, %i.dz
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !125

bb.r:                                             ; preds = %bb.q
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit: ; preds = %._ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit_crit_edge, %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i
  %i.ec = phi ptr [ %.pre78, %._ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit_crit_edge ], [ %i.ca, %_ZN6google8protobuf8compiler3cpp10FieldGroupC2ERKS3_.exit.i ] ; 3 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i57, label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit

_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE9push_backERKS4_.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.eh = load ptr, ptr %i.ay, align 8, !tbaa !68 ; 2 uses
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !77  ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 5
  %i.en = icmp ult i64 %i.bg, %i.em
  br i1 %i.en, label %bb.j, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge, !llvm.loop !126

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.r
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.eo = load ptr, ptr %6, align 8, !tbaa !38    ; 3 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i58, label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit59, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit59

_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit59: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.v

bb.v:                                             ; preds = %.loopexit66, %.loopexit.split-lp67, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit59
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6google8protobuf8compiler3cpp10FieldGroupD2Ev.exit59 ], [ %lpad.loopexit68, %.loopexit66 ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp67 ]
  call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #20
  resume { ptr, i32 } %.pn.pn

bb.w:                                             ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEEEvT_SC_.exit._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.l = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #21
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68   ; 2 uses
  %.not4.i.i.i.1 = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.1, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.1
  %.05.i.i.i.1 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.1 ], [ %i.s, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i.1, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.1
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.1

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.1: ; preds = %bb.d, %.lr.ph.i.i.i.1
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.1, i64 32 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i.i.1, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.1, label %.lr.ph.i.i.i.1, !llvm.loop !1

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.1: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.1
  %.pr.i.1 = load ptr, ptr %i.r, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.1

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.1: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.1, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit
  %i.ac = phi ptr [ %.pr.i.1, %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.1 ], [ %i.s, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.1, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !69
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #21
  br label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit.1

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit.1: ; preds = %bb.e, %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !77 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68 ; 2 uses
  %.not4.i.i.i.2 = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i.2, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.2, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit.1, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.2
  %.05.i.i.i.2 = phi ptr [ %i.as, %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.2 ], [ %i.aj, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit.1 ] ; 3 uses
  %i.am = load ptr, ptr %.05.i.i.i.2, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.2 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.2, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.2
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.2, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #21
  br label %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.2

_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.2: ; preds = %bb.f, %.lr.ph.i.i.i.2
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.2, i64 32 ; 2 uses
  %.not.i.i.i.2 = icmp eq ptr %i.as, %i.al
  br i1 %.not.i.i.i.2, label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.2, label %.lr.ph.i.i.i.2, !llvm.loop !1

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.2: ; preds = %_ZSt8_DestroyIN6google8protobuf8compiler3cpp10FieldGroupEEvPT_.exit.i.i.i.2
  %.pr.i.2 = load ptr, ptr %i.ai, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.2

_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.2: ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.2, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit.1
  %i.at = phi ptr [ %.pr.i.2, %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.2 ], [ %i.aj, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit.1 ] ; 3 uses
  %.not.i.i1.i.2 = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i.2, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EED2Ev.exit.2, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf8compiler3cpp10FieldGroupES4_EvT_S6_RSaIT0_E.exit.i.2
end_hunk_0
