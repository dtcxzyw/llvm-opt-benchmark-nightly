Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_util?download=true
inline.NumInlined: 128
inline.NumDeleted: 106
begin_hunk_0_@_ZN6google8protobuf8internal23SerializeMessageNoTableEPKNS0_11MessageLiteEPNS1_11ArrayOutputE:.noexc
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
  store i32 %0, ptr %i.a, align 4, !tbaa !7
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal6IsNullILi11EEEbPKv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = icmp eq ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal19ExtensionSerializerEPKNS0_11MessageLiteEPKhjjjPNS0_2io17CodedOutputStreamE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !58
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %_ZNK6google8protobuf8internal12ExtensionSet24SerializeWithCachedSizesEPKNS0_11MessageLiteEiiPNS0_2io17CodedOutputStreamE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet22_InternalSerializeImplEPKNS0_11MessageLiteEiiPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %0, i32 noundef %3, i32 noundef %4, ptr noundef %i.d, ptr noundef nonnull %5)
  br label %_ZNK6google8protobuf8internal12ExtensionSet24SerializeWithCachedSizesEPKNS0_11MessageLiteEiiPNS0_2io17CodedOutputStreamE.exit

_ZNK6google8protobuf8internal12ExtensionSet24SerializeWithCachedSizesEPKNS0_11MessageLiteEiiPNS0_2io17CodedOutputStreamE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  store ptr %.0.i.i, ptr %i.c, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal26UnknownFieldSerializerLiteEPKhjjjPNS0_2io17CodedOutputStreamE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr @_ZN6google8protobuf8internal28init_protobuf_defaults_stateE acquire, align 1, !range !25, !noundef !26
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv()
  br label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi ptr [ %i.g, %bb.b ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.c ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %.0.i, align 8, !tbaa !13  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 4 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !27
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %sext.i = shl i64 %i.l, 32
  %i.s = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.t = icmp slt i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f, !prof !33

bb.e:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.u = trunc i64 %i.l to i32
  %i.v = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %i.j, i32 noundef %i.u, ptr noundef %i.n)
  br label %_ZN6google8protobuf2io17CodedOutputStream11WriteStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.w = and i64 %i.l, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.j, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds i8, ptr %i.n, i64 %i.s
  br label %_ZN6google8protobuf2io17CodedOutputStream11WriteStringESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf2io17CodedOutputStream11WriteStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.v, %bb.e ], [ %i.x, %bb.f ]
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !22
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !61 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !71   ; 7 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !72
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.k = load i8, ptr %i.j, align 4, !tbaa !73    ; 2 uses
  %i.l = icmp slt i8 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = tail call noundef ptr %i.n(ptr noundef %i.f, ptr noundef nonnull %i.i, ptr noundef null), !inline_history !62
  br label %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.e, align 8, !tbaa !72   ; 6 uses
  %i.q = zext i32 %i.p to i64                     ; 11 uses
  %i.r = icmp eq i8 %i.k, 0
  %i.s = icmp ult i32 %i.p, 33                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.v = icmp ult i32 %i.p, 65
  br i1 %i.v, label %bb.g, label %.preheader.i14.i

.preheader.i14.i:                                 ; preds = %bb.f
  %i.w = icmp ugt i32 %i.p, 80
  br i1 %i.w, label %.lr.ph64.i16.i, label %._crit_edge65.i15.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  br label %bb.l

._crit_edge65.i15.i:                              ; preds = %.lr.ph64.i16.i, %.preheader.i14.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ab, i8 0, i64 64, i1 false)
  br label %bb.l

.lr.ph64.i16.i:                                   ; preds = %.preheader.i14.i, %.lr.ph64.i16.i
  %2 = phi i64 [ %i.ae, %.lr.ph64.i16.i ], [ 80, %.preheader.i14.i ] ; 2 uses
  %.05563.i17.i = phi i64 [ %2, %.lr.ph64.i16.i ], [ 16, %.preheader.i14.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %.05563.i17.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ad) #17, !srcloc !74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false)
  %i.ae = add nuw nsw i64 %2, 64                  ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %i.q
  br i1 %i.af, label %.lr.ph64.i16.i, label %._crit_edge65.i15.i, !llvm.loop !63

bb.h:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ah, ptr noundef nonnull align 1 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ak = icmp ult i32 %i.p, 65
  br i1 %i.ak, label %bb.k, label %.preheader61.i9.i

.preheader61.i9.i:                                ; preds = %bb.j
  %i.al = icmp ugt i32 %i.p, 80
  br i1 %i.al, label %.lr.ph.i12.i, label %._crit_edge.i10.i

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.am, ptr noundef nonnull align 1 dereferenceable(16) %i.an, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ap, ptr noundef nonnull align 1 dereferenceable(32) %i.ar, i64 32, i1 false)
  br label %bb.l

._crit_edge.i10.i:                                ; preds = %.lr.ph.i12.i, %.preheader61.i9.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -64
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.at, ptr noundef nonnull align 1 dereferenceable(64) %i.av, i64 64, i1 false)
  br label %bb.l

.lr.ph.i12.i:                                     ; preds = %.preheader61.i9.i, %.lr.ph.i12.i
  %i.aw = phi i64 [ %i.bb, %.lr.ph.i12.i ], [ 80, %.preheader61.i9.i ] ; 2 uses
  %.062.i13.i = phi i64 [ %i.aw, %.lr.ph.i12.i ], [ 16, %.preheader61.i9.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062.i13.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ay, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 %.062.i13.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ba) #17, !srcloc !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.az, ptr noundef nonnull align 1 dereferenceable(64) %i.ax, i64 64, i1 false)
  %i.bb = add nuw nsw i64 %i.aw, 64               ; 2 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.q
  br i1 %i.bc, label %.lr.ph.i12.i, label %._crit_edge.i10.i, !llvm.loop !64

bb.l:                                             ; preds = %._crit_edge.i10.i, %bb.k, %bb.i, %._crit_edge65.i15.i, %bb.g, %bb.e
  %i.bd = load i64, ptr %i.f, align 1
  store i64 %i.bd, ptr %i.i, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.be, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit

_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit: ; preds = %bb.b, %bb.l
  %phi.call.i = phi ptr [ %i.o, %bb.b ], [ %i.i, %bb.l ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %phi.call.i, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13 unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16, !inline_history !65

_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13: ; preds = %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.m unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16

bb.m:                                             ; preds = %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !75
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12 unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16, !inline_history !65

_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12: ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.n unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16

bb.n:                                             ; preds = %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !75
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %phi.call.i)
          to label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16, !inline_history !65

_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.n
  %i.bp = load ptr, ptr %phi.call.i, align 8, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %phi.call.i) #17, !inline_history !66
  ret void

_ZNSt10unique_ptrIN6google8protobuf11MessageLiteESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit, %bb.m, %bb.n, %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit12, %_ZN6google8protobuf11MessageLite22MergeFromWithClassDataERKS1_PKNS0_8internal9ClassDataE.exit13
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %phi.call.i, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %phi.call.i) #17, !inline_history !66
  resume { ptr, i32 } %i.bs
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal23GetOwnedMessageInternalEPNS0_5ArenaEPNS0_11MessageLiteES3_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN6google8protobuf5Arena3OwnINS0_11MessageLiteEEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv)
  br label %_ZN6google8protobuf5Arena3OwnINS0_11MessageLiteEEEvPT_.exit

bb.d:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0) ; 2 uses
  tail call void @_ZN6google8protobuf11MessageLite21CheckTypeAndMergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN6google8protobuf5Arena3OwnINS0_11MessageLiteEEEvPT_.exit

_ZN6google8protobuf5Arena3OwnINS0_11MessageLiteEEEvPT_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi ptr [ %i.c, %bb.d ], [ null, %bb.b ], [ %1, %bb.c ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK6google8protobuf2io19EpsCopyOutputStream9ByteCountEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet22_InternalSerializeImplEPKNS0_11MessageLiteEiiPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef i64 @_ZNK6google8protobuf2io17ArrayOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare noundef zeroext i1 @_ZN6google8protobuf2io17ArrayOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #4

declare void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__I_000101() #15 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %__cxx_global_var_init.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited) #17
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %__cxx_global_var_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN6google8protobuf8internalL24InitProtobufDefaultsImplEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited) #17
  br label %__cxx_global_var_init.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6google8protobuf8internal24InitProtobufDefaultsSlowEvE9is_inited) #17
  resume { ptr, i32 } %i.d

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b, %bb.d
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
end_hunk_0
