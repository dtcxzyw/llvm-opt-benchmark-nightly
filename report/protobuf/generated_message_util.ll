inline.NumInlined: 128
inline.NumDeleted: 106
begin_hunk_0_@_ZN6google8protobuf8internal23SerializeMessageNoTableEPKNS0_11MessageLiteEPNS1_11ArrayOutputE:.noexc
  store ptr %i.f, ptr %i.g, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.h, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.j, align 1, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 58 ; 2 uses
  store i8 %i.d, ptr %i.k, align 2, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 59
  store i8 0, ptr %i.l, align 1, !tbaa !45
  store ptr %i.f, ptr %i.e, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.n = call noundef i64 @_ZNK6google8protobuf2io17ArrayOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i64 %i.n, ptr %i.m, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.o = call noundef zeroext i1 @_ZN6google8protobuf2io17ArrayOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.p = load i32, ptr %i.b, align 4              ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = select i1 %i.o, i1 %i.q, i1 false, !prof !48
  br i1 %i.r, label %bb.a, label %.noexc._crit_edge, !prof !48

.noexc._crit_edge:                                ; preds = %.noexc
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %bb.b

bb.a:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.t = icmp samesign ugt i32 %i.p, 16           ; 3 uses
  %i.u = zext nneg i32 %i.p to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %.sink9.i.i.i = select i1 %i.t, ptr %i.w, ptr %i.x
  %.sink.i.i.i = select i1 %i.t, ptr null, ptr %i.s
  %.0.i.i.i = select i1 %i.t, ptr %i.s, ptr %i.f  ; 2 uses
  store ptr %.sink9.i.i.i, ptr %3, align 8, !tbaa !39
  store ptr %.sink.i.i.i, ptr %i.g, align 8, !tbaa !40
  store ptr %.0.i.i.i, ptr %i.e, align 8, !tbaa !27
  br label %bb.b

bb.b:                                             ; preds = %.noexc._crit_edge, %bb.a
  %i.y = phi ptr [ %.pre, %.noexc._crit_edge ], [ %.0.i.i.i, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !50, !range !37, !noundef !38
  store i8 %i.aa, ptr %i.k, align 2, !tbaa !44
  %i.ab = load ptr, ptr %0, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.y, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.e, !inline_history !34 ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !27
  %i.af = invoke noundef i64 @_ZNK6google8protobuf2io19EpsCopyOutputStream9ByteCountEPh(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %i.ae)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !47
  %i.ah = sub nsw i64 %i.af, %i.ag
  %i.ai = load ptr, ptr %1, align 8, !tbaa !35
  %sext = shl i64 %i.ah, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  store ptr %i.ak, ptr %1, align 8, !tbaa !35
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.al
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN6google8protobuf2io17ArrayOutputStreamC1EPvii(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold mustprogress noreturn uwtable
define hidden void @_ZN6google8protobuf8internal23SerializeNotImplementedEi(i32 noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 330) #18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 29, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %0, ptr %i.a, align 4, !tbaa !3
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  unreachable

bb.c:                                             ; preds = %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  unreachable
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal6IsNullILi9EEEbPKv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal6IsNullILi12EEEbPKv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -4
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = icmp eq i64 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal6IsNullILi10EEEbPKv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal6IsNullILi11EEEbPKv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal19ExtensionSerializerEPKNS0_11MessageLiteEPKhjjjPNS0_2io17CodedOutputStreamE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !55
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %_ZNK6google8protobuf8internal12ExtensionSet24SerializeWithCachedSizesEPKNS0_11MessageLiteEiiPNS0_2io17CodedOutputStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet22_InternalSerializeImplEPKNS0_11MessageLiteEiiPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %0, i32 noundef %3, i32 noundef %4, ptr noundef %i.d, ptr noundef nonnull %5)
  br label %_ZNK6google8protobuf8internal12ExtensionSet24SerializeWithCachedSizesEPKNS0_11MessageLiteEiiPNS0_2io17CodedOutputStreamE.exit

_ZNK6google8protobuf8internal12ExtensionSet24SerializeWithCachedSizesEPKNS0_11MessageLiteEiiPNS0_2io17CodedOutputStreamE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal26UnknownFieldSerializerLiteEPKhjjjPNS0_2io17CodedOutputStreamE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZN6google8protobuf8internal28init_protobuf_defaults_stateE acquire, align 1, !range !37, !noundef !38
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv()
  br label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.0.i = phi ptr [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.c ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.b ], [ inttoptr (i64 8 to ptr), %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.0.i, align 8, !tbaa !7   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 4 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !39
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n
  %sext.i = shl i64 %i.i, 32
  %i.p = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.q = icmp slt i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %bb.e, !prof !60

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.r = trunc i64 %i.i to i32
  %i.s = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %i.g, i32 noundef %i.r, ptr noundef %i.k)
  br label %_ZN6google8protobuf2io17CodedOutputStream11WriteStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.t = and i64 %i.i, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.g, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.k, i64 %i.p
  br label %_ZN6google8protobuf2io17CodedOutputStream11WriteStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf2io17CodedOutputStream11WriteStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.u, %bb.e ]
  store ptr %.0.i.i.i, ptr %i.j, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal26DuplicateIfNonNullInternalEPNS0_11MessageLiteE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) ; 2 uses
  tail call void @_ZN6google8protobuf11MessageLite21CheckTypeAndMergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN6google8protobuf11MessageLite21CheckTypeAndMergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !61 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !62   ; 7 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !67   ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 12 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.k = load i8, ptr %i.j, align 4, !tbaa !68    ; 2 uses
  %i.l = icmp slt i8 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = tail call noundef ptr %i.n(ptr noundef %i.f, ptr noundef nonnull %i.i, ptr noundef null), !inline_history !69
  br label %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i8 %i.k, 0
  %i.q = icmp ult i32 %i.g, 33                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ult i32 %i.g, 65
  br i1 %i.t, label %bb.g, label %.preheader.i14.i

.preheader.i14.i:                                 ; preds = %bb.f
  %i.u = icmp ugt i32 %i.g, 80
  br i1 %i.u, label %.lr.ph64.i16.i, label %._crit_edge65.i15.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  br label %bb.l

._crit_edge65.i15.i:                              ; preds = %.lr.ph64.i16.i, %.preheader.i14.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.z, i8 0, i64 64, i1 false)
  br label %bb.l

.lr.ph64.i16.i:                                   ; preds = %.preheader.i14.i, %.lr.ph64.i16.i
  %i.aa = phi i64 [ %i.ad, %.lr.ph64.i16.i ], [ 80, %.preheader.i14.i ] ; 2 uses
  %.05563.i17.i = phi i64 [ %i.aa, %.lr.ph64.i16.i ], [ 16, %.preheader.i14.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %.05563.i17.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ac) #17, !srcloc !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ab, i8 0, i64 64, i1 false)
  %i.ad = add nuw nsw i64 %i.aa, 64               ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.h
  br i1 %i.ae, label %.lr.ph64.i16.i, label %._crit_edge65.i15.i, !llvm.loop !71

bb.h:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ag, ptr noundef nonnull align 1 dereferenceable(16) %i.ai, i64 16, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp ult i32 %i.g, 65
  br i1 %i.aj, label %bb.k, label %.preheader61.i9.i

.preheader61.i9.i:                                ; preds = %bb.j
  %i.ak = icmp ugt i32 %i.g, 80
  br i1 %i.ak, label %.lr.ph.i12.i, label %._crit_edge.i10.i

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.al, ptr noundef nonnull align 1 dereferenceable(16) %i.am, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 1 dereferenceable(32) %i.aq, i64 32, i1 false)
  br label %bb.l

._crit_edge.i10.i:                                ; preds = %.lr.ph.i12.i, %.preheader61.i9.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -64
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.as, ptr noundef nonnull align 1 dereferenceable(64) %i.au, i64 64, i1 false)
  br label %bb.l

.lr.ph.i12.i:                                     ; preds = %.preheader61.i9.i, %.lr.ph.i12.i
  %i.av = phi i64 [ %i.ba, %.lr.ph.i12.i ], [ 80, %.preheader61.i9.i ] ; 2 uses
  %.062.i13.i = phi i64 [ %i.av, %.lr.ph.i12.i ], [ 16, %.preheader61.i9.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062.i13.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ax, i32 0, i32 3, i32 1)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %.062.i13.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.az) #17, !srcloc !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ay, ptr noundef nonnull align 1 dereferenceable(64) %i.aw, i64 64, i1 false)
  %i.ba = add nuw nsw i64 %i.av, 64               ; 2 uses
  %i.bb = icmp samesign ult i64 %i.ba, %i.h
  br i1 %i.bb, label %.lr.ph.i12.i, label %._crit_edge.i10.i, !llvm.loop !72

bb.l:                                             ; preds = %._crit_edge.i10.i, %bb.k, %bb.i, %._crit_edge65.i15.i, %bb.g, %bb.e
  %i.bc = load i64, ptr %i.f, align 1
  store i64 %i.bc, ptr %i.i, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.bd, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit

_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit: ; preds = %bb.b, %bb.l
  %phi.call.i = phi ptr [ %i.o, %bb.b ], [ %i.i, %bb.l ] ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !73
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %phi.call.i, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13 unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16, !inline_history !74

_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13: ; preds = %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit
  %i.bg = load ptr, ptr %0, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.m unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16

bb.m:                                             ; preds = %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13
  %i.bj = load ptr, ptr %i.be, align 8, !tbaa !73
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12 unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16, !inline_history !74

_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12: ; preds = %bb.m
  %i.bk = load ptr, ptr %1, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
end_hunk_0
