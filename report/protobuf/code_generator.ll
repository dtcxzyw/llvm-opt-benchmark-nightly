Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/code_generator?download=true
inline.NumInlined: 136
inline.NumDeleted: 88
begin_hunk_0_@_ZNK6google8protobuf8compiler13CodeGenerator23BuildFeatureSetDefaultsEv:bb.a

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit3: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.s
}

declare void @_ZN6google8protobuf15FeatureResolver15CompileDefaultsEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKPKNS0_15FieldDescriptorEEENS0_7EditionESD_(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr") align 8, ptr noundef, ptr, i64, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6google8protobuf8compiler16GeneratorContextD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN6google8protobuf8compiler16GeneratorContextD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN6google8protobuf8compiler16GeneratorContext13OpenForAppendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN6google8protobuf8compiler16GeneratorContext13OpenForInsertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.2, i32 noundef 84) #17
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 49, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit unwind label %bb.b

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit: ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.b

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  unreachable

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  unreachable
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN6google8protobuf8compiler16GeneratorContext34OpenForInsertWithGeneratedCodeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKNS0_17GeneratedCodeInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret ptr %i.d
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN6google8protobuf8compiler16GeneratorContext15ListParsedFilesEPSt6vectorIPKNS0_14FileDescriptorESaIS6_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.2, i32 noundef 96) #17
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 54, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi55EEERS2_RAT__Kc.exit unwind label %bb.b

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi55EEERS2_RAT__Kc.exit: ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.b

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi55EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  unreachable

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi55EEERS2_RAT__Kc.exit, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6google8protobuf8compiler16GeneratorContext18GetCompilerVersionEPNS1_7VersionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef initializes((32, 44)) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 7, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 34, ptr %i.d, align 4, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %i.e, align 8, !tbaa !47
  %i.f = or i32 %i.c, 15
  store i32 %i.f, ptr %i.b, align 8, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.h to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 0, ptr nonnull @.str.5, ptr noundef %.0.i.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN6google8protobuf8compiler19CanSkipEditionCheckESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %0, 16
  br i1 %i.a, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread39, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.a

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.a: ; preds = %bb.a
  %i.b = load i128, ptr %1, align 1
  %i.c = icmp ne i128 %i.b, 63005710922238749866870542373108019047
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread39: ; preds = %bb.a
  %i.f = icmp samesign ult i64 %0, 4
  br i1 %i.f, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.a, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread39
  %i.g = load i32, ptr %1, align 1
  %i.h = icmp ne i32 %i.g, 794980469
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17.thread42

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17.thread42: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17
  %i.k = icmp ult i64 %0, 20
  br i1 %i.k, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17.thread42
  %i.l = load i128, ptr %1, align 1
  %i.m = xor i128 %i.l, 148148874381911853431012628534685167459
  %i.n = getelementptr i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 1
  %i.p = zext i32 %i.o to i128
  %i.q = xor i128 %i.p, 795243874
  %i.r = or i128 %i.m, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21.thread45

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21.thread45: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21
  %i.v = icmp ult i64 %0, 24
  br i1 %i.v, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21.thread45
  %i.w = load i128, ptr %1, align 1
  %i.x = xor i128 %i.w, 154789619378286933427326946790421196643
  %i.y = getelementptr i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 1
  %i.aa = zext i64 %i.z to i128
  %i.ab = xor i128 %i.aa, 3419199087980998751
  %i.ac = or i128 %i.x, %i.ab
  %i.ad = icmp ne i128 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25.thread48

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25.thread48: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25
  %i.ag = icmp ult i64 %0, 30
  br i1 %i.ag, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i26

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i26: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25.thread48
  %i.ah = load i128, ptr %1, align 1
  %i.ai = xor i128 %i.ah, 133449157532737606480567122525846463860
  %i.aj = getelementptr i8, ptr %1, i64 14
  %i.ak = load i128, ptr %i.aj, align 1
  %i.al = xor i128 %i.ak, 134814791032310995528498538888173282405
  %i.am = or i128 %i.ai, %i.al
  %i.an = icmp ne i128 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i26
  br label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit29: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread39, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17.thread42, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21.thread45, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i26, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25.thread48
  %2 = phi i1 [ true, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21 ], [ true, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17 ], [ true, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.a ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32 ], [ false, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25.thread48 ], [ true, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit25 ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i26 ], [ false, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit21.thread45 ], [ false, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit17.thread42 ], [ false, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread39 ]
  ret i1 %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6google8protobuf8compiler13CodeGenerator20GetSupportedFeaturesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6google8protobuf8compiler13CodeGenerator14HasGenerateAllEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK6google8protobuf8compiler13CodeGenerator20GetFeatureExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6google8protobuf8compiler13CodeGenerator17GetMinimumEditionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6google8protobuf8compiler13CodeGenerator17GetMaximumEditionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i32 0
}

declare { ptr, ptr } @_ZNK6google8protobuf10FeatureSet11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #5

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), i64, ptr, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf14FileDescriptorESaIS4_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p2 _ZTSN6google8protobuf14FileDescriptorE", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !10, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !12, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !24, i64 8}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !24, i64 8, !6, i64 16}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!23 = !{!"p1 omnipotent char", !12, i64 0}
!24 = !{!"long", !6, i64 0}
!25 = !{!26, !29, i64 8}
!26 = !{!"_ZTSN6google8protobuf14FileDescriptorE", !27, i64 0, !28, i64 1, !28, i64 2, !5, i64 4, !29, i64 8, !29, i64 16, !30, i64 24, !31, i64 32, !32, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !10, i64 80, !33, i64 88, !33, i64 96, !34, i64 104, !35, i64 112, !36, i64 120, !37, i64 128, !38, i64 136, !39, i64 144, !40, i64 152, !40, i64 160, !41, i64 168, !42, i64 176}
!27 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !6, i64 0}
!28 = !{!"bool", !6, i64 0}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !12, i64 0}
!31 = !{!"_ZTSN6google8protobuf7EditionE", !6, i64 0}
!32 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !12, i64 0}
!33 = !{!"p1 int", !12, i64 0}
!34 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !12, i64 0}
!35 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !12, i64 0}
!36 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !12, i64 0}
!37 = !{!"p1 _ZTSN6google8protobuf17ServiceDescriptorE", !12, i64 0}
!38 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !12, i64 0}
!39 = !{!"p1 _ZTSN6google8protobuf11FileOptionsE", !12, i64 0}
!40 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !12, i64 0}
!41 = !{!"p1 _ZTSN6google8protobuf20FileDescriptorTablesE", !12, i64 0}
!42 = !{!"p1 _ZTSN6google8protobuf14SourceCodeInfoE", !12, i64 0}
!43 = !{!21, !23, i64 0}
!44 = !{!24, !24, i64 0}
!45 = !{!23, !23, i64 0}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!6, !6, i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p2 _ZTSN6google8protobuf15FieldDescriptorE", !11, i64 0}
!51 = !{!49, !50, i64 8}
!52 = !{!49, !50, i64 16}
!53 = !{!54, !24, i64 0}
!54 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !24, i64 0}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !57, i64 0}
!57 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !12, i64 0}
end_hunk_0
