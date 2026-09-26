Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/frame_rst_stream?download=true
inline.NumInlined: 5377
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE:bb.a
  %.not.i17.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !982
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.y) #31
  br label %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, align 8, !tbaa !981
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !980
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !982
  br label %_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.aa = trunc i64 %i.i to i16
  ret i16 %i.aa
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv(ptr noundef %0) #12 comdat {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.9() #11 section ".text.startup" comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, align 8
  %i.c = tail call noundef zeroext i16 @_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE(ptr noundef nonnull @_ZN9grpc_core12arena_detail19DestroyArenaContextINS_8channelz8CallNodeEEEvPv)
  store i16 %i.c, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, align 2, !tbaa !98
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core12arena_detail19DestroyArenaContextINS_8channelz8CallNodeEEEvPv(ptr noundef %0) #12 comdat {
bb.a:
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.10() #11 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E) personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.grpc_core::PerCpuOptions", align 8 ; 5 uses
  %i.a = load i8, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store i64 4, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 32, ptr %i.c, align 8
  %i.d = call noundef i64 @_ZN9grpc_core13PerCpuOptions6ShardsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, i64 8), align 8, !tbaa !991
  %i.e = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 4264) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 3 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #35 ; 2 uses
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %_ZN9grpc_core10NoDestructINS_20GlobalStatsCollectorEEC2IJEEEDpOT_.exit, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.b
  %i.k = add i64 %i.g, -4264
  %i.l = urem i64 %i.k, 4264
  %i.m = sub i64 %i.g, %i.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.m, i1 false)
  br label %_ZN9grpc_core10NoDestructINS_20GlobalStatsCollectorEEC2IJEEEDpOT_.exit

_ZN9grpc_core10NoDestructINS_20GlobalStatsCollectorEEC2IJEEEDpOT_.exit: ; preds = %bb.b, %.loopexit.loopexit.i.i.i
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, i64 16), align 8, !tbaa !992
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %_ZN9grpc_core10NoDestructINS_20GlobalStatsCollectorEEC2IJEEEDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.11() #11 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E) personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.grpc_core::PerCpuOptions", align 8 ; 5 uses
  %i.a = load i8, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store i64 4, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 32, ptr %i.c, align 8
  %i.d = call noundef i64 @_ZN9grpc_core13PerCpuOptions6ShardsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E, i64 8), align 8, !tbaa !1001
  %i.e = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 4024) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 3 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #35 ; 2 uses
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %_ZN9grpc_core10NoDestructINS_25Http2GlobalStatsCollectorEEC2IJEEEDpOT_.exit, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.b
  %i.k = add i64 %i.g, -4024
  %i.l = urem i64 %i.k, 4024
  %i.m = sub i64 %i.g, %i.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.m, i1 false)
  br label %_ZN9grpc_core10NoDestructINS_25Http2GlobalStatsCollectorEEC2IJEEEDpOT_.exit

_ZN9grpc_core10NoDestructINS_25Http2GlobalStatsCollectorEEC2IJEEEDpOT_.exit: ; preds = %bb.b, %.loopexit.loopexit.i.i.i
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E, i64 16), align 8, !tbaa !1002
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %_ZN9grpc_core10NoDestructINS_25Http2GlobalStatsCollectorEEC2IJEEEDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #29 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef i64 @_ZN9grpc_core13PerCpuOptions6ShardsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE11AppendValueIS9_EEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.625", align 8   ; 5 uses
  %i.a = tail call noundef double @_Z21gpr_get_cycle_counterv() ; 2 uses
  %i.b = load i64, ptr %1, align 4                ; 2 uses
  %i.c = load atomic ptr, ptr %0 acquire, align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !103  ; 3 uses
  %i.h = lshr i64 %i.g, 17
  switch i64 %i.h, label %bb.e [
    i64 0, label %bb.j
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ugt i64 %i.g, 131071
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = load i64, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %i.k, label %.loopexit89, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56, !nonnull !96, !noundef !96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !106
  %i.p = icmp slt i8 %i.o, -1
  br i1 %i.p, label %.lr.ph.i.i, label %.loopexit89

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.q = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.c ]
  %i.r = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !56
  %i.t = icmp slt <16 x i8> %i.s, splat (i8 -1)
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = add nuw nsw i32 %i.v, 1
  %i.x = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.w, i1 true)
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.y ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !106
  %i.ac = icmp slt i8 %i.ab, -1
  br i1 %i.ac, label %.lr.ph.i.i, label %.loopexit89, !llvm.loop !1

.loopexit89:                                      ; preds = %.lr.ph.i.i, %bb.c, %bb.b
  %.sroa.6.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.c ], [ %i.l, %bb.b ], [ %i.aa, %.lr.ph.i.i ]
  %i.ad = load ptr, ptr %.sroa.6.0.i, align 8, !tbaa !109
  invoke void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance6AppendIS9_EEvSt4pairIdT_E(ptr noundef nonnull align 16 dereferenceable(1872) %i.ad, double %i.a, i64 %i.b)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %.loopexit89
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i51 = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i51, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev.exit, label %bb.f, !prof !76

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.e, align 8, !tbaa !104 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56, !nonnull !96, !noundef !96 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i52 = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !106
  %i.am = icmp slt i8 %i.al, -1
  br i1 %i.am, label %.lr.ph.i.i57, label %.lr.ph.preheader

.lr.ph.i.i57:                                     ; preds = %bb.g, %.lr.ph.i.i57
  %i.an = phi ptr [ %i.ax, %.lr.ph.i.i57 ], [ %.sroa.0.0.copyload.i.i.i52, %bb.g ]
  %i.ao = phi ptr [ %i.aw, %.lr.ph.i.i57 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 1, !tbaa !56
  %i.aq = icmp slt <16 x i8> %i.ap, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = zext i16 %i.ar to i32
  %i.at = add nuw nsw i32 %i.as, 1
  %i.au = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.at, i1 true)
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.av ; 2 uses
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !106
  %i.az = icmp slt i8 %i.ay, -1
  br i1 %i.az, label %.lr.ph.i.i57, label %.lr.ph.preheader, !llvm.loop !1

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i57, %bb.f, %bb.g
  %.sroa.080.097.ph = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.f ], [ %i.aj, %bb.g ], [ %i.aw, %.lr.ph.i.i57 ]
  %.sroa.9.096.ph = phi ptr [ %i.ai, %bb.f ], [ %.sroa.0.0.copyload.i.i.i52, %bb.g ], [ %i.ax, %.lr.ph.i.i57 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i
  %.sroa.080.097 = phi ptr [ %.sroa.080.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.080.097.ph, %.lr.ph.preheader ]
  %.sroa.9.096 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.9.096.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ba = load ptr, ptr %.sroa.9.096, align 8, !tbaa !109
  invoke void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance6AppendIS9_EEvSt4pairIdT_E(ptr noundef nonnull align 16 dereferenceable(1872) %i.ba, double %i.a, i64 %i.b)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.080.097, i64 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.9.096, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !106 ; 2 uses
  %i.be = icmp slt i8 %i.bd, -1
  br i1 %i.be, label %.lr.ph.i.i62, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i62:                                     ; preds = %bb.h, %.lr.ph.i.i62
  %i.bf = phi ptr [ %i.bp, %.lr.ph.i.i62 ], [ %i.bc, %bb.h ]
  %i.bg = phi ptr [ %i.bo, %.lr.ph.i.i62 ], [ %i.bb, %bb.h ] ; 2 uses
  %i.bh = load <16 x i8>, ptr %i.bg, align 1, !tbaa !56
  %i.bi = icmp slt <16 x i8> %i.bh, splat (i8 -1)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, 1
  %i.bm = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bl, i1 true)
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bn ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !106 ; 2 uses
  %i.br = icmp slt i8 %i.bq, -1
  br i1 %i.br, label %.lr.ph.i.i62, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !1

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i62, %bb.h
  %.sroa.9.1 = phi ptr [ %i.bc, %bb.h ], [ %i.bp, %.lr.ph.i.i62 ]
  %.sroa.080.1 = phi ptr [ %i.bb, %bb.h ], [ %i.bo, %.lr.ph.i.i62 ]
  %i.bs = phi i8 [ %i.bd, %bb.h ], [ %i.bq, %.lr.ph.i.i62 ]
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev.exit, label %.lr.ph, !prof !76

_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.l

bb.j:                                             ; preds = %.loopexit89, %_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev.exit, %bb.a
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #30
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.j
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.i ], [ %i.ae, %bb.d ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit71 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #30
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit71:      ; preds = %bb.l
  resume { ptr, i32 } %.pn42.pn.pn.pn
}

declare noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv() local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr void @_ZN9grpc_core10latent_see8Appender6AppendINS_16H2RstStreamTraceILb0EEEEEvPKNS0_8MetadataEllRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.316", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr.316", align 8 ; 8 uses
  %7 = alloca %"class.std::unique_ptr.316", align 8 ; 4 uses
  %.not.i = icmp eq ptr @_ZTHN9grpc_core10latent_see8Appender4bin_E, null ; 2 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core10latent_see8Appender4bin_E) ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br i1 %.not.i, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us: ; preds = %bb.a, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20.us
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i12.us = icmp eq ptr %i.c, null
  br i1 %.not.i12.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us, !prof !76

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZSt11make_uniqueIN9grpc_core10latent_see3BinEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.316") align 8 %5)
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) #29 ; 0 uses
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14.us, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us
  %i.e = phi ptr [ %.pre, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14.us ], [ %i.c, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %i.h = add i64 %i.g, 32                         ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !117
  %i.j = add nsw i32 %i.i, 15
  %i.k = and i32 %i.j, -16
  %i.l = zext i32 %i.k to i64
  %i.m = add i64 %i.h, %i.l
  %i.n = icmp ugt i64 %i.m, 8192
  br i1 %i.n, label %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread.us, label %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit

_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us
  %8 = ptrtoint ptr %i.e to i64
  %i.o = load ptr, ptr %0, align 8, !tbaa !51
  store i64 %8, ptr %6, align 8, !tbaa !119
  store ptr null, ptr %i.a, align 8, !tbaa !119
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 %6)
          to label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20.us unwind label %.split46.us

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20.us: ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread.us
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEDn(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr null) #29 ; 0 uses
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us, !llvm.loop !1003

.split46.us:                                      ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread.us
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread: ; preds = %bb.a, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !119
  %.not.i1223 = icmp eq ptr %i.r, null
  br i1 %.not.i1223, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14, label %.thread24, !prof !76

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZSt11make_uniqueIN9grpc_core10latent_see3BinEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.316") align 8 %5)
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) #29 ; 0 uses
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.thread24

.thread24:                                        ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !115  ; 2 uses
  %i.w = add i64 %i.v, 32                         ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !117
  %i.y = add nsw i32 %i.x, 15
  %i.z = and i32 %i.y, -16
  %i.aa = zext i32 %i.z to i64
  %i.ab = add i64 %i.w, %i.aa
  %i.ac = icmp ugt i64 %i.ab, 8192
  br i1 %i.ac, label %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread, label %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit

_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit: ; preds = %.thread24, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us
  %.us-phi = phi ptr [ %i.e, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us ], [ %i.t, %.thread24 ] ; 2 uses
  %.us-phi42 = phi i64 [ %i.g, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us ], [ %i.v, %.thread24 ]
  %.us-phi43 = phi i64 [ %i.h, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us ], [ %i.w, %.thread24 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.us-phi42 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i64, ptr %4, align 4
  store i64 %i.ah, ptr %i.ag, align 4
  store ptr %1, ptr %i.af, align 16, !tbaa !121
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %2, ptr %i.ai, align 8, !tbaa !122
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %3, ptr %i.aj, align 16, !tbaa !123
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !117
  %i.al = sext i32 %i.ak to i64
  %i.am = add i64 %.us-phi43, %i.al               ; 2 uses
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !115
  %i.an = icmp eq i64 %i.am, 8192
  br i1 %i.an, label %bb.b, label %bb.f, !prof !124

_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread: ; preds = %.thread24
  %i.ao = load ptr, ptr %0, align 8, !tbaa !51
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !119
  store i64 %i.ap, ptr %6, align 8, !tbaa !119
  store ptr null, ptr %i.a, align 8, !tbaa !119
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.ao, ptr noundef nonnull align 8 %6)
          to label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20 unwind label %.split46

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20: ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEDn(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr null) #29 ; 0 uses
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread, !llvm.loop !1003

.split46:                                         ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.b:                                             ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !51
  br i1 %.not.i, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22: ; preds = %bb.b, %bb.c
  %9 = load i64, ptr %i.a, align 8, !tbaa !119
  store i64 %9, ptr %7, align 8, !tbaa !119
  store ptr null, ptr %i.a, align 8, !tbaa !119
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.as, ptr noundef nonnull align 8 %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.f

bb.e:                                             ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb0EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit, %bb.d
  ret void

bb.g:                                             ; preds = %.split46, %.split46.us, %bb.e
  %.sink = phi ptr [ %7, %bb.e ], [ %6, %.split46.us ], [ %6, %.split46 ]
  %.pn = phi { ptr, i32 } [ %i.at, %bb.e ], [ %i.q, %.split46.us ], [ %i.ar, %.split46 ]
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN9grpc_core10latent_see3BinEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.316") align 8 %0) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8224) ptr @_Znwm(i64 noundef 8224) #35 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8224) %i.a, i8 0, i64 8224, i1 false)
  %i.b = invoke i64 @gpr_thd_currentid()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !1004
  store ptr %i.a, ptr %0, align 8, !tbaa !119
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8224) #31
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  store ptr null, ptr %1, align 8, !tbaa !119
  %i.b = load ptr, ptr %0, align 8, !tbaa !119    ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt15__uniq_ptr_dataIN9grpc_core10latent_see3BinESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !115  ; 2 uses
  %.not6.i.i.i.i.i = icmp samesign eq i64 %i.e, 0
  br i1 %.not6.i.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.d
  %i.f = phi i64 [ %i.n, %bb.d ], [ %i.e, %bb.b ]
  %.sroa.01.07.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i.i, %bb.d ], [ %i.c, %bb.b ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.01.07.i.i.i.i.i, align 16, !tbaa !121 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i.i.i, i64 32
  invoke void %i.l(ptr noundef nonnull %i.m)
          to label %._crit_edge8.i.i.i.i.i unwind label %bb.e

._crit_edge8.i.i.i.i.i:                           ; preds = %bb.c
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.01.07.i.i.i.i.i, align 16, !tbaa !121
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 32
  %.pre9.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !117
  %.pre10.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !115
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge8.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.n = phi i64 [ %.pre10.i.i.i.i.i, %._crit_edge8.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.o = phi i32 [ %.pre9.i.i.i.i.i, %._crit_edge8.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %.sroa.01.07.i.i.i.i.i, i64 %i.p
  %storemerge.i.i.i.i.i.i = getelementptr i8, ptr %i.q, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #30
  unreachable

_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i.i: ; preds = %bb.d, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8224) #31
  br label %_ZNSt15__uniq_ptr_dataIN9grpc_core10latent_see3BinESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit

_ZNSt15__uniq_ptr_dataIN9grpc_core10latent_see3BinESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %.not6.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not6.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.e = phi i64 [ %i.m, %bb.d ], [ %i.d, %bb.b ]
  %.sroa.01.07.i.i = phi ptr [ %storemerge.i.i.i, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %i.f = load ptr, ptr %.sroa.01.07.i.i, align 16, !tbaa !121 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !117  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i, i64 32
  invoke void %i.k(ptr noundef nonnull %i.l)
          to label %._crit_edge8.i.i unwind label %bb.e

._crit_edge8.i.i:                                 ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %.sroa.01.07.i.i, align 16, !tbaa !121
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 32
  %.pre9.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !117
  %.pre10.i.i = load i64, ptr %i.c, align 8, !tbaa !115
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge8.i.i, %.lr.ph.i.i
  %i.m = phi i64 [ %.pre10.i.i, %._crit_edge8.i.i ], [ %i.e, %.lr.ph.i.i ] ; 2 uses
  %i.n = phi i32 [ %.pre9.i.i, %._crit_edge8.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %.sroa.01.07.i.i, i64 %i.o
  %storemerge.i.i.i = getelementptr i8, ptr %i.p, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  %.not.i.i = icmp eq ptr %storemerge.i.i.i, %i.q
  br i1 %.not.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit, label %.lr.ph.i.i, !llvm.loop !2

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit: ; preds = %bb.d, %bb.b
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef 8224) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit, %bb.a
  ret void
}

declare void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEDn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !119
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %.not6.i.i.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not6.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.d
  %i.e = phi i64 [ %i.m, %bb.d ], [ %i.d, %bb.b ]
  %.sroa.01.07.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %i.f = load ptr, ptr %.sroa.01.07.i.i.i.i, align 16, !tbaa !121 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !117  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
end_hunk_0
begin_hunk_1_@_ZNK9grpc_core15H2EndWriteCycle18ChannelzPropertiesEv:bb.a

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.j:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.i, %bb.e ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core20H2BeginEndpointWrite18ChannelzPropertiesEv(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.403, align 1            ; 3 uses
  %3 = alloca %class.anon.403, align 1            ; 3 uses
  %4 = alloca %"class.std::optional.346", align 8 ; 9 uses
  %5 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %5, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 20, ptr %4, align 8, !tbaa !126, !alias.scope !1517
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.78, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !127, !alias.scope !1517
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !129, !alias.scope !1517
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i8 1, ptr %i.c, align 8, !tbaa !131, !alias.scope !1517
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 10, ptr nonnull @.str.16, ptr noundef nonnull align 8 %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !131, !range !95, !noundef !96
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8, !tbaa !131
  %i.f = load i8, ptr %i.b, align 8
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.f, -1
  %or.cond.not.i.i.i.i = select i1 %i.e, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %bb.f, !prof !132

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.d

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #30
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #29
  br label %.body

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.j = load i32, ptr %1, align 4, !tbaa !1518
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetIjEERS1_St17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 10, ptr nonnull @.str.79, i32 noundef %i.j)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.k

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.n, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.r = load i8, ptr %i.q, align 8, !tbaa !129
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.h, !prof !76

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.s)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #30
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.v = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !56
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !136
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.ab = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !138
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #31
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.i, %bb.e ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.403, align 1            ; 3 uses
  %3 = alloca %class.anon.403, align 1            ; 3 uses
  %4 = alloca %"class.std::optional.917", align 8 ; 7 uses
  %5 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 9 uses
  %6 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1521 ; 3 uses
  %i.c = icmp ult i32 %i.b, 5
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i32 %i.b to i64
  %switch.gep53 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEv.1, i64 %i.e
  %switch.load54 = load ptr, ptr %switch.gep53, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.037.0 = phi i64 [ 7, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.10.0 = phi ptr [ @.str.81, %bb.a ], [ %switch.load54, %switch.lookup ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %5, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 5, ptr nonnull @.str.87, i64 %.sroa.037.0, ptr nonnull %.sroa.10.0)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !97
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetIN4absl12lts_202505124TimeEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 19, ptr nonnull @.str.88, i64 %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %6, align 8, !tbaa !47, !alias.scope !1522
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false), !alias.scope !1522
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1523, !noalias !1522 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1523, !noalias !1522 ; 2 uses
  %.not10.i = icmp eq ptr %i.l, %i.n
  br i1 %.not10.i, label %_ZZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEvENKUlvE_clEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.07.011.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.aa, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29, !noalias !1522
  %i.p = load ptr, ptr %1, align 8, !tbaa !1524   ; 2 uses
  %i.q = load i64, ptr %.sroa.07.011.i, align 8, !tbaa !1526
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.917") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.q)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.o, align 8, !tbaa !1528, !range !95, !noalias !1522, !noundef !96
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8, !tbaa !126, !noalias !1522
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !127, !noalias !1522
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1529
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetIlEERS1_St17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 noundef %i.x)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1522
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #29
  br label %.body

bb.i:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !1522
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.n
  br i1 %.not.i, label %_ZZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEvENKUlvE_clEv.exit, label %bb.e

_ZZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEvENKUlvE_clEv.exit: ; preds = %bb.i, %bb.d
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 %6)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %_ZZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEvENKUlvE_clEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.r

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.j
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !136 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !137 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.ae, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !129
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.k, !prof !76

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.aj)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.l

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.am = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !56
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #31
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.ag
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.j, align 8, !tbaa !136
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.as = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ae, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !138
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #31
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.m
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !136 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !137 ; 2 uses
  %.not4.i.i.i.i10 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not4.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.05.i.i.i.i12 = phi ptr [ %i.bl, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17 ], [ %i.ay, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 64
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !129
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i8 %i.bc, -1
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, label %bb.n, !prof !76

bb.n:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.bd)
          to label %.noexc.i.i.i.i.i.i.i14 unwind label %bb.o

.noexc.i.i.i.i.i.i.i14:                           ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #30
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15: ; preds = %.noexc.i.i.i.i.i.i.i14, %.lr.ph.i.i.i.i11
  %i.bg = load ptr, ptr %.05.i.i.i.i12, align 8, !tbaa !62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !56
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #31
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i16
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 72 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.bl, %i.ba
  br i1 %.not.i.i.i.i18, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19, label %.lr.ph.i.i.i.i11, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.pr.i.i20 = load ptr, ptr %i.f, align 8, !tbaa !136
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit
  %i.bm = phi ptr [ %.pr.i.i20, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i19 ], [ %i.ay, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i22 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1.i.i22, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit24, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !138
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #31
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit24

_ZN9grpc_core8channelz12PropertyListD2Ev.exit24:  ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.q:                                             ; preds = %bb.c, %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.j, %_ZZNK9grpc_core17H2TcpMetricsTrace18ChannelzPropertiesEvENKUlvE_clEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #29
  br label %.body

.body:                                            ; preds = %bb.r, %bb.h, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %i.bt, %bb.r ], [ %i.z, %bb.h ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.403, align 1            ; 3 uses
  %6 = alloca %class.anon.403, align 1            ; 3 uses
  %7 = alloca %"class.std::variant.352", align 8  ; 7 uses
  %8 = alloca %"class.std::optional.346", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !1532
  store i64 %3, ptr %7, align 8, !tbaa !126, !noalias !1532
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !127, !noalias !1532
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !129, !noalias !1532
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(33) %7, i64 16, i1 false), !tbaa.struct !147
  store i8 0, ptr %i.b, align 8, !tbaa !129, !alias.scope !1532
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 1, ptr %i.c, align 8, !tbaa !131, !alias.scope !1532
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !1532
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_.exit unwind label %bb.b, !noalias !1532

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #30, !noalias !1532
  unreachable

_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !1532
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 %8)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_.exit
  %i.f = load i8, ptr %i.c, align 8, !tbaa !131, !range !95, !noundef !96
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.c, align 8, !tbaa !131
  %i.h = load i8, ptr %i.b, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.h, -1
  %or.cond.not.i.i.i = select i1 %i.g, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit, !prof !132

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.noexc.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %.noexc.i.i.i.i.i
  ret ptr %0

bb.f:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperISt17basic_string_viewIcSt11char_traitsIcEEvE4WrapB5cxx11ES6_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #29
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetIN4absl12lts_202505124TimeEEERS1_St17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, i64 %3, i32 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.403, align 1            ; 3 uses
  %6 = alloca %class.anon.403, align 1            ; 3 uses
  %7 = alloca %"class.std::variant.352", align 8  ; 7 uses
  %8 = alloca %"class.std::optional.346", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !1535
  store i64 %3, ptr %7, align 8, !noalias !1535
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %4, ptr %.sroa.2.0..sroa_idx1.i, align 8, !tbaa !97, !noalias !1535
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 9, ptr %i.a, align 8, !tbaa !129, !noalias !1535
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(33) %7, i64 12, i1 false), !tbaa.struct !155
  store i8 9, ptr %i.b, align 8, !tbaa !129, !alias.scope !1535
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 1, ptr %i.c, align 8, !tbaa !131, !alias.scope !1535
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !1535
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(33) %7)
          to label %_ZN9grpc_core8channelz20property_list_detail7WrapperIN4absl12lts_202505124TimeEvE4WrapB5cxx11ES5_.exit unwind label %bb.b, !noalias !1535

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #30, !noalias !1535
  unreachable

_ZN9grpc_core8channelz20property_list_detail7WrapperIN4absl12lts_202505124TimeEvE4WrapB5cxx11ES5_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !1535
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !1535
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 %8)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperIN4absl12lts_202505124TimeEvE4WrapB5cxx11ES5_.exit
  %i.f = load i8, ptr %i.c, align 8, !tbaa !131, !range !95, !noundef !96
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.c, align 8, !tbaa !131
  %i.h = load i8, ptr %i.b, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.h, -1
  %or.cond.not.i.i.i = select i1 %i.g, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit, !prof !132

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.noexc.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %.noexc.i.i.i.i.i
  ret ptr %0

bb.f:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperIN4absl12lts_202505124TimeEvE4WrapB5cxx11ES5_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #29
  resume { ptr, i32 } %i.k
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef align 8) local_unnamed_addr #1

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !tbaa !58  ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #30
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !623
  tail call void %i.h(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %0) #29, !inline_history !11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN9grpc_core8channelz15ZTraceCollectorINS3_29http2_ztrace_collector_detail6ConfigEJNS3_11H2DataTraceILb0EEENS3_13H2HeaderTraceILb0EEENS3_16H2RstStreamTraceILb0EEENS3_15H2SettingsTraceILb0EEENS3_11H2PingTraceILb0EEENS3_13H2GoAwayTraceILb0EEENS3_19H2WindowUpdateTraceILb0EEENS3_15H2SecurityTraceILb0EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENS3_19H2UnknownFrameTraceENS3_18H2FlowControlStallENS3_17H2BeginWriteCycleENS3_15H2EndWriteCycleENS3_20H2BeginEndpointWriteENS3_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvEUlvE_JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !56
  tail call void @_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_clEv(ptr noundef nonnull align 16 dereferenceable(40) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN9grpc_core8channelz15ZTraceCollectorINS3_29http2_ztrace_collector_detail6ConfigEJNS3_11H2DataTraceILb0EEENS3_13H2HeaderTraceILb0EEENS3_16H2RstStreamTraceILb0EEENS3_15H2SettingsTraceILb0EEENS3_11H2PingTraceILb0EEENS3_13H2GoAwayTraceILb0EEENS3_19H2WindowUpdateTraceILb0EEENS3_15H2SecurityTraceILb0EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENS3_19H2UnknownFrameTraceENS3_18H2FlowControlStallENS3_17H2BeginWriteCycleENS3_15H2EndWriteCycleENS3_20H2BeginEndpointWriteENS3_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvEUlvE_EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateES17_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !56    ; 7 uses
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 16, !tbaa !56
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = inttoptr i64 %i.d to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #30
  unreachable

_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev.exit: ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !623
  tail call void %i.j(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull align 16 dereferenceable(40) %i.a) #29, !inline_history !10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_D2Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance17QueueCallbackDoneEvENUlvE_clEv(ptr noundef nonnull align 16 dereferenceable(40) %0) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 7 uses
  %2 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 16, !tbaa !58  ; 4 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !688
  store i64 1, ptr %1, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !375
  invoke void %i.f(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit unwind label %bb.g, !inline_history !32

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit: ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !58     ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.d

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit
  %i.i = load i8, ptr %i.d, align 8, !tbaa !688, !range !95, !noundef !96
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.d, align 8, !tbaa !688
  br i1 %i.j, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !56
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.sink.split

bb.d:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit
  %i.p = trunc i64 %i.g to i1
  br i1 %i.p, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = inttoptr i64 %i.g to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #29
  br label %common.resume

bb.h:                                             ; preds = %bb.a
  store i64 %i.b, ptr %2, align 8, !tbaa !58
  %i.u = trunc i64 %i.b to i1
  br i1 %i.u, label %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i:   ; preds = %bb.h
  %i.v = inttoptr i64 %i.b to ptr
  %i.w = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i.i = load i64, ptr %2, align 8, !tbaa !58
  %i.x = icmp eq i64 %.pr.i.i, 1
  br i1 %i.x, label %bb.i, label %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit, !prof !1536

bb.i:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit unwind label %bb.j

common.resume:                                    ; preds = %bb.g, %bb.o, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.t, %bb.g ], [ %i.ap, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %2) #29
  br label %common.resume

_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit: ; preds = %bb.h, %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i.i, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !375
  invoke void %i.aa(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit4 unwind label %bb.o, !inline_history !32

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit4: ; preds = %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit
  %i.ab = load i64, ptr %2, align 8, !tbaa !58    ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i5, label %bb.l

_ZN4absl12lts_202505126StatusD2Ev.exit.i5:        ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !688, !range !95, !noundef !96
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !688
  br i1 %i.af, label %bb.k, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

bb.k:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i5
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6: ; preds = %bb.k
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !56
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.sink.split

bb.l:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvNS0_8StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclESC_.exit4
  %i.al = trunc i64 %i.ab to i1
  br i1 %i.al, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = inttoptr i64 %i.ab to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.am)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #30
  unreachable

bb.o:                                             ; preds = %_ZN4absl12lts_202505128StatusOrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES9_T_EE5valueEiE4typeELi0EEEOSF_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #29
  br label %common.resume

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6
  %.sink16 = phi i64 [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %.sink = phi ptr [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i6 ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.aq = add i64 %.sink16, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.aq) #31
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit.sink.split, %bb.k, %bb.c, %bb.m, %bb.l, %_ZN4absl12lts_202505126StatusD2Ev.exit.i5, %bb.e, %bb.d, %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  ret void
}

declare void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE11AppendValueISM_EEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.625", align 8   ; 5 uses
  %i.a = tail call noundef double @_Z21gpr_get_cycle_counterv() ; 2 uses
  %i.b = load i64, ptr %1, align 4                ; 2 uses
  %i.c = load atomic ptr, ptr %0 acquire, align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !103  ; 3 uses
  %i.h = lshr i64 %i.g, 17
  switch i64 %i.h, label %bb.e [
    i64 0, label %bb.j
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ugt i64 %i.g, 131071
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = load i64, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %i.k, label %.loopexit89, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56, !nonnull !96, !noundef !96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !56 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !106
  %i.p = icmp slt i8 %i.o, -1
  br i1 %i.p, label %.lr.ph.i.i, label %.loopexit89

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.q = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.c ]
  %i.r = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !56
  %i.t = icmp slt <16 x i8> %i.s, splat (i8 -1)
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = add nuw nsw i32 %i.v, 1
  %i.x = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.w, i1 true)
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.y ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !106
  %i.ac = icmp slt i8 %i.ab, -1
  br i1 %i.ac, label %.lr.ph.i.i, label %.loopexit89, !llvm.loop !1

.loopexit89:                                      ; preds = %.lr.ph.i.i, %bb.c, %bb.b
  %.sroa.6.0.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.c ], [ %i.l, %bb.b ], [ %i.aa, %.lr.ph.i.i ]
  %i.ad = load ptr, ptr %.sroa.6.0.i, align 8, !tbaa !109
  invoke void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance6AppendISM_EEvSt4pairIdT_E(ptr noundef nonnull align 16 dereferenceable(1872) %i.ad, double %i.a, i64 %i.b)
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %.loopexit89
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i51 = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i51, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev.exit, label %bb.f, !prof !76

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.e, align 8, !tbaa !104 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.af, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !56, !nonnull !96, !noundef !96 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i52 = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !106
  %i.am = icmp slt i8 %i.al, -1
  br i1 %i.am, label %.lr.ph.i.i57, label %.lr.ph.preheader

.lr.ph.i.i57:                                     ; preds = %bb.g, %.lr.ph.i.i57
  %i.an = phi ptr [ %i.ax, %.lr.ph.i.i57 ], [ %.sroa.0.0.copyload.i.i.i52, %bb.g ]
  %i.ao = phi ptr [ %i.aw, %.lr.ph.i.i57 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 1, !tbaa !56
  %i.aq = icmp slt <16 x i8> %i.ap, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = zext i16 %i.ar to i32
  %i.at = add nuw nsw i32 %i.as, 1
  %i.au = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.at, i1 true)
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.av ; 2 uses
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !106
  %i.az = icmp slt i8 %i.ay, -1
  br i1 %i.az, label %.lr.ph.i.i57, label %.lr.ph.preheader, !llvm.loop !1

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i57, %bb.f, %bb.g
  %.sroa.080.097.ph = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.f ], [ %i.aj, %bb.g ], [ %i.aw, %.lr.ph.i.i57 ]
  %.sroa.9.096.ph = phi ptr [ %i.ai, %bb.f ], [ %.sroa.0.0.copyload.i.i.i52, %bb.g ], [ %i.ax, %.lr.ph.i.i57 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i
  %.sroa.080.097 = phi ptr [ %.sroa.080.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.080.097.ph, %.lr.ph.preheader ]
  %.sroa.9.096 = phi ptr [ %.sroa.9.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i ], [ %.sroa.9.096.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ba = load ptr, ptr %.sroa.9.096, align 8, !tbaa !109
  invoke void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance6AppendISM_EEvSt4pairIdT_E(ptr noundef nonnull align 16 dereferenceable(1872) %i.ba, double %i.a, i64 %i.b)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.080.097, i64 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.9.096, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !106 ; 2 uses
  %i.be = icmp slt i8 %i.bd, -1
  br i1 %i.be, label %.lr.ph.i.i62, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i

.lr.ph.i.i62:                                     ; preds = %bb.h, %.lr.ph.i.i62
  %i.bf = phi ptr [ %i.bp, %.lr.ph.i.i62 ], [ %i.bc, %bb.h ]
  %i.bg = phi ptr [ %i.bo, %.lr.ph.i.i62 ], [ %i.bb, %bb.h ] ; 2 uses
  %i.bh = load <16 x i8>, ptr %i.bg, align 1, !tbaa !56
  %i.bi = icmp slt <16 x i8> %i.bh, splat (i8 -1)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %i.bk = zext i16 %i.bj to i32
  %i.bl = add nuw nsw i32 %i.bk, 1
  %i.bm = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bl, i1 true)
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bn ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bn ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !106 ; 2 uses
  %i.br = icmp slt i8 %i.bq, -1
  br i1 %i.br, label %.lr.ph.i.i62, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i, !llvm.loop !1

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i: ; preds = %.lr.ph.i.i62, %bb.h
  %.sroa.9.1 = phi ptr [ %i.bc, %bb.h ], [ %i.bp, %.lr.ph.i.i62 ]
  %.sroa.080.1 = phi ptr [ %i.bb, %bb.h ], [ %i.bo, %.lr.ph.i.i62 ]
  %i.bs = phi i8 [ %i.bd, %bb.h ], [ %i.bq, %.lr.ph.i.i62 ]
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev.exit, label %.lr.ph, !prof !76

_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIN9grpc_core13RefCountedPtrINS4_8channelz15ZTraceCollectorINS4_29http2_ztrace_collector_detail6ConfigEJNS4_11H2DataTraceILb0EEENS4_13H2HeaderTraceILb0EEENS4_16H2RstStreamTraceILb0EEENS4_15H2SettingsTraceILb0EEENS4_11H2PingTraceILb0EEENS4_13H2GoAwayTraceILb0EEENS4_19H2WindowUpdateTraceILb0EEENS4_15H2SecurityTraceILb0EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENSM_ILb1EEENSO_ILb1EEENS4_19H2UnknownFrameTraceENS4_18H2FlowControlStallENS4_17H2BeginWriteCycleENS4_15H2EndWriteCycleENS4_20H2BeginEndpointWriteENS4_17H2TcpMetricsTraceEEE8InstanceEEEEENS0_13hash_internal4HashIS16_EESt8equal_toIS16_ESaIS16_EE8iterator21skip_empty_or_deletedEv.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.l

bb.j:                                             ; preds = %.loopexit89, %_ZNSt6vectorIN9grpc_core13RefCountedPtrINS0_8channelz15ZTraceCollectorINS0_29http2_ztrace_collector_detail6ConfigEJNS0_11H2DataTraceILb0EEENS0_13H2HeaderTraceILb0EEENS0_16H2RstStreamTraceILb0EEENS0_15H2SettingsTraceILb0EEENS0_11H2PingTraceILb0EEENS0_13H2GoAwayTraceILb0EEENS0_19H2WindowUpdateTraceILb0EEENS0_15H2SecurityTraceILb0EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENSK_ILb1EEENS0_19H2UnknownFrameTraceENS0_18H2FlowControlStallENS0_17H2BeginWriteCycleENS0_15H2EndWriteCycleENS0_20H2BeginEndpointWriteENS0_17H2TcpMetricsTraceEEE8InstanceEEESaIS12_EED2Ev.exit, %bb.a
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #30
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.j
  ret void

bb.l:                                             ; preds = %bb.d, %bb.i
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.i ], [ %i.ae, %bb.d ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit71 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #30
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit71:      ; preds = %bb.l
  resume { ptr, i32 } %.pn42.pn.pn.pn
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9grpc_core10latent_see8Appender6AppendINS_16H2RstStreamTraceILb1EEEEEvPKNS0_8MetadataEllRKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.316", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr.316", align 8 ; 8 uses
  %7 = alloca %"class.std::unique_ptr.316", align 8 ; 4 uses
  %.not.i = icmp eq ptr @_ZTHN9grpc_core10latent_see8Appender4bin_E, null ; 2 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core10latent_see8Appender4bin_E) ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  br i1 %.not.i, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us: ; preds = %bb.a, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20.us
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i12.us = icmp eq ptr %i.c, null
  br i1 %.not.i12.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us, !prof !76

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZSt11make_uniqueIN9grpc_core10latent_see3BinEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.316") align 8 %5)
  %i.d = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) #29 ; 0 uses
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14.us, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us
  %i.e = phi ptr [ %.pre, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14.us ], [ %i.c, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %i.h = add i64 %i.g, 32                         ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !117
  %i.j = add nsw i32 %i.i, 15
  %i.k = and i32 %i.j, -16
  %i.l = zext i32 %i.k to i64
  %i.m = add i64 %i.h, %i.l
  %i.n = icmp ugt i64 %i.m, 8192
  br i1 %i.n, label %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread.us, label %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit

_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us
  %8 = ptrtoint ptr %i.e to i64
  %i.o = load ptr, ptr %0, align 8, !tbaa !51
  store i64 %8, ptr %6, align 8, !tbaa !119
  store ptr null, ptr %i.a, align 8, !tbaa !119
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 %6)
          to label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20.us unwind label %.split46.us

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20.us: ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread.us
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEDn(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr null) #29 ; 0 uses
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us, !llvm.loop !1537

.split46.us:                                      ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread.us
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread: ; preds = %bb.a, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !119
  %.not.i1223 = icmp eq ptr %i.r, null
  br i1 %.not.i1223, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14, label %.thread24, !prof !76

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZSt11make_uniqueIN9grpc_core10latent_see3BinEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.316") align 8 %5)
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) #29 ; 0 uses
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.thread24

.thread24:                                        ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit14, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !115  ; 2 uses
  %i.w = add i64 %i.v, 32                         ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !117
  %i.y = add nsw i32 %i.x, 15
  %i.z = and i32 %i.y, -16
  %i.aa = zext i32 %i.z to i64
  %i.ab = add i64 %i.w, %i.aa
  %i.ac = icmp ugt i64 %i.ab, 8192
  br i1 %i.ac, label %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread, label %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit

_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit: ; preds = %.thread24, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us
  %.us-phi = phi ptr [ %i.e, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us ], [ %i.t, %.thread24 ] ; 2 uses
  %.us-phi42 = phi i64 [ %i.g, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us ], [ %i.v, %.thread24 ]
  %.us-phi43 = phi i64 [ %i.h, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit16.us ], [ %i.w, %.thread24 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.us-phi42 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i64, ptr %4, align 4
  store i64 %i.ah, ptr %i.ag, align 4
  store ptr %1, ptr %i.af, align 16, !tbaa !121
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %2, ptr %i.ai, align 8, !tbaa !122
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %3, ptr %i.aj, align 16, !tbaa !123
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !117
  %i.al = sext i32 %i.ak to i64
  %i.am = add i64 %.us-phi43, %i.al               ; 2 uses
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !115
  %i.an = icmp eq i64 %i.am, 8192
  br i1 %i.an, label %bb.b, label %bb.f, !prof !124

_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread: ; preds = %.thread24
  %i.ao = load ptr, ptr %0, align 8, !tbaa !51
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !119
  store i64 %i.ap, ptr %6, align 8, !tbaa !119
  store ptr null, ptr %i.a, align 8, !tbaa !119
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.ao, ptr noundef nonnull align 8 %6)
          to label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20 unwind label %.split46

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit20: ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #29
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEDn(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr null) #29 ; 0 uses
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread, !llvm.loop !1537

.split46:                                         ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit.thread
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.b:                                             ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !51
  br i1 %.not.i, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22: ; preds = %bb.b, %bb.c
  %9 = load i64, ptr %i.a, align 8, !tbaa !119
  store i64 %9, ptr %7, align 8, !tbaa !119
  store ptr null, ptr %i.a, align 8, !tbaa !119
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.as, ptr noundef nonnull align 8 %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.f

bb.e:                                             ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit22
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZN9grpc_core10latent_see3Bin6AppendINS_16H2RstStreamTraceILb1EEEEENS1_12AppendResultEPKNS0_8MetadataEllRKT_.exit, %bb.d
  ret void

bb.g:                                             ; preds = %.split46, %.split46.us, %bb.e
  %.sink = phi ptr [ %7, %bb.e ], [ %6, %.split46.us ], [ %6, %.split46 ]
  %.pn = phi { ptr, i32 } [ %i.at, %bb.e ], [ %i.q, %.split46.us ], [ %i.ar, %.split46 ]
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISM_EEvT_ENKUlvE_clEvENUlPvE_8__invokeES12_(ptr noundef %0) #22 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE6AppendISM_EEvT_ENKUlvE_clEvENUlPvE0_8__invokeES12_(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr noundef %1) #22 comdat align 2 {
bb.a:
  tail call void @_ZNK9grpc_core16H2RstStreamTraceILb1EE18ChannelzPropertiesEv(ptr dead_on_unwind writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance6AppendISM_EEvSt4pairIdT_E(ptr noundef nonnull align 16 dereferenceable(1872) %0, double %1, i64 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.682", align 8    ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  store double %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 16, !tbaa !370
  switch i32 %i.c, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.k
    i32 3, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i32 1, ptr %i.b, align 16, !tbaa !370
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !371
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !371
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !372
  %i.i = add i64 %i.h, 8                          ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !372
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN4absl12lts_2025051212log_internal12Check_LTImplImmEEPKcRKT_RKT0_S4_.exit

_ZN4absl12lts_2025051212log_internal12Check_LTImplImmEEPKcRKT_RKT0_S4_.exit: ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %i.l = load i64, ptr %i.j, align 16, !tbaa !373
  %i.m = icmp ugt i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_LTImplImmEEPKcRKT_RKT0_S4_.exit
  tail call void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance16RemoveMostRecentEv(ptr noundef nonnull align 16 dereferenceable(1872) %0)
  %i.n = load i64, ptr %i.g, align 8, !tbaa !372  ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.k
  br i1 %i.o, label %_ZN4absl12lts_2025051212log_internal12Check_LTImplImmEEPKcRKT_RKT0_S4_.exit, label %bb.e, !prof !52, !llvm.loop !1538

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %i.n, i64 noundef %i.k, ptr noundef nonnull @.str.21)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.13, i32 noundef 244, ptr noundef nonnull %i.p) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  unreachable

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_LTImplImmEEPKcRKT_RKT0_S4_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !678  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1539
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.not.i.i = icmp eq ptr %i.s, %i.v
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !678
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.r, align 8, !tbaa !678
  br label %_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE9push_backEOS4_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 936
  call void @_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE9push_backEOS4_.exit

_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.h, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !375
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE9push_backEOS4_.exit
  call void @_ZN9grpc_core8channelz15ZTraceCollectorINS_29http2_ztrace_collector_detail6ConfigEJNS_11H2DataTraceILb0EEENS_13H2HeaderTraceILb0EEENS_16H2RstStreamTraceILb0EEENS_15H2SettingsTraceILb0EEENS_11H2PingTraceILb0EEENS_13H2GoAwayTraceILb0EEENS_19H2WindowUpdateTraceILb0EEENS_15H2SecurityTraceILb0EEENS4_ILb1EEENS6_ILb1EEENS8_ILb1EEENSA_ILb1EEENSC_ILb1EEENSE_ILb1EEENSG_ILb1EEENSI_ILb1EEENS_19H2UnknownFrameTraceENS_18H2FlowControlStallENS_17H2BeginWriteCycleENS_15H2EndWriteCycleENS_20H2BeginEndpointWriteENS_17H2TcpMetricsTraceEEE8Instance13QueueCallbackEv(ptr noundef nonnull align 16 dereferenceable(1872) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.j, %_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE9push_backEOS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !545  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !545
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !420
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !547
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !548
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !420
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !650
  %i.ag = load ptr, ptr %0, align 8, !tbaa !648
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt4pairIdN9grpc_core16H2RstStreamTraceILb1EEEESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #35
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !649
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !546
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !678
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !649
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !545
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !546 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !547
end_hunk_1
