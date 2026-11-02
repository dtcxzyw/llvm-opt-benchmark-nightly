Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/log?download=true
inline.NumInlined: 115
inline.NumDeleted: 50
begin_hunk_0_@grpc_absl_log_int:bb.a
  store i64 %4, ptr %i.a, align 8, !tbaa !20
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24 unwind label %bb.r

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24: ; preds = %bb.q
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.critedge19

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.s

.critedge19:                                      ; preds = %bb.b, %.critedge, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, %bb.a, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit22
  ret void

bb.s:                                             ; preds = %bb.r, %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.r, %bb.m ], [ %i.w, %bb.r ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @grpc_absl_log_str(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !15
  store ptr %4, ptr %i.b, align 8, !tbaa !15
  switch i32 %2, label %.critedge16 [
    i32 0, label %bb.b
    i32 1, label %bb.i
    i32 2, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZ17grpc_absl_log_strENK3$_0clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %.critedge16, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, !prof !16

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit: ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZ17grpc_absl_log_strENK3$_0clEvE4site", i32 noundef %i.c)
  br i1 %i.e, label %bb.c, label %.critedge16

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 82) #14
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage10AtLocationESt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 %i.g, ptr nonnull %0, i32 noundef %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.critedge unwind label %bb.h

.critedge:                                        ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.critedge16

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 85) #14
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage10AtLocationESt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.l, ptr nonnull %0, i32 noundef %1)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit18 unwind label %bb.m

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit18: ; preds = %bb.l
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %.critedge16

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.s

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 88) #14
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage10AtLocationESt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 %i.q, ptr nonnull %0, i32 noundef %1)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit19 unwind label %bb.r

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit19: ; preds = %bb.q
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.critedge16

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.s

.critedge16:                                      ; preds = %bb.b, %.critedge, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, %bb.a, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit19, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit18
  ret void

bb.s:                                             ; preds = %bb.r, %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.p, %bb.m ], [ %i.u, %bb.r ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @gpr_log_verbosity_init() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = load atomic ptr, ptr @_ZN9grpc_core10ConfigVars12config_vars_E acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN9grpc_core10ConfigVars3GetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(312) ptr @_ZN9grpc_core10ConfigVars4LoadEv()
  br label %_ZN9grpc_core10ConfigVars3GetEv.exit

_ZN9grpc_core10ConfigVars3GetEv.exit:             ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 6 uses
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %i.f, ptr %i.d, i64 4, ptr nonnull @.str.2) #11
  br i1 %i.g, label %.preheader, label %bb.e

.preheader:                                       ; preds = %_ZN9grpc_core10ConfigVars3GetEv.exit
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal14LogFirstNState9ShouldLogEi(ptr noundef nonnull align 4 dereferenceable(4) @_ZZ22gpr_log_verbosity_initE42absl_log_internal_stateful_condition_state, i32 noundef 1)
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %i.i = load atomic i32, ptr @_ZZ22gpr_log_verbosity_initE42absl_log_internal_stateful_condition_state monotonic, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.1, i32 noundef 102) #14
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 181, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi182EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi182EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi182EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  br label %.critedge

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi182EEERS2_RAT__Kc.exit, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  br label %bb.q

.critedge:                                        ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %.preheader
  %i.k = call noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64 8, ptr nonnull @.str.4, i32 noundef -1) ; 0 uses
  %i.l = call noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64 17, ptr nonnull @.str.5, i32 noundef -1) ; 0 uses
  call void @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef 0)
  br label %bb.p

bb.e:                                             ; preds = %_ZN9grpc_core10ConfigVars3GetEv.exit
  %i.m = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %i.f, ptr %i.d, i64 5, ptr nonnull @.str.6) #11
  br i1 %i.m, label %.preheader57, label %bb.h

.preheader57:                                     ; preds = %bb.e
  %i.n = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal14LogFirstNState9ShouldLogEi(ptr noundef nonnull align 4 dereferenceable(4) @_ZZ22gpr_log_verbosity_initE42absl_log_internal_stateful_condition_state_0, i32 noundef 1)
  br i1 %i.n, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %.preheader57
  %i.o = load atomic i32, ptr @_ZZ22gpr_log_verbosity_initE42absl_log_internal_stateful_condition_state_0 monotonic, align 4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 110) #14
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 182, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi183EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi183EEERS2_RAT__Kc.exit: ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit23 unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit23: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi183EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %.critedge2

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi183EEERS2_RAT__Kc.exit, %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.q

.critedge2:                                       ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit23, %.preheader57
  %i.q = call noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64 8, ptr nonnull @.str.4, i32 noundef 2) ; 0 uses
  %i.r = call noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64 17, ptr nonnull @.str.5, i32 noundef 2) ; 0 uses
  call void @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef 0)
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.s = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %i.f, ptr %i.d, i64 5, ptr nonnull @.str.8) #11
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = tail call noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64 8, ptr nonnull @.str.4, i32 noundef -1) ; 0 uses
  %i.u = tail call noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64 17, ptr nonnull @.str.5, i32 noundef -1) ; 0 uses
  tail call void @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef 2)
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.v = tail call noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64 %i.f, ptr %i.d, i64 4, ptr nonnull @.str.9) #11
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = tail call noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64 8, ptr nonnull @.str.4, i32 noundef -1) ; 0 uses
  %i.x = tail call noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64 17, ptr nonnull @.str.5, i32 noundef -1) ; 0 uses
  tail call void @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef 1000)
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 0
  br i1 %i.y, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 128) #14
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 23, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit unwind label %bb.o

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit: ; preds = %bb.m
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.f, ptr %i.d)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24 unwind label %bb.o

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24: ; preds = %bb.n
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.q

bb.p:                                             ; preds = %.critedge2, %bb.k, %bb.l, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24, %bb.i, %.critedge
  ret void

bb.q:                                             ; preds = %bb.o, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.p, %bb.g ], [ %i.aa, %bb.o ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN4absl12lts_2025051216EqualsIgnoreCaseESt17basic_string_viewIcSt11char_traitsIcEES4_(i64, ptr, i64, ptr) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal14LogFirstNState9ShouldLogEi(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #5

declare void @_ZN4absl12lts_2025051214SetMinLogLevelENS0_18LogSeverityAtLeastE(i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(312) ptr @_ZN9grpc_core10ConfigVars4LoadEv() local_unnamed_addr #3

declare noundef i32 @_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi(i64, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

attributes #0 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }
attributes #14 = { cold }
attributes #15 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!12, !9, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!9, !9, i64 0}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!4, !4, i64 0}
!18 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!11, !11, i64 0}
end_hunk_0
