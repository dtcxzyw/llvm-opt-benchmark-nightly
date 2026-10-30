Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/channel?download=true
inline.NumInlined: 757
inline.NumDeleted: 392
begin_hunk_0
@_ZTSN9grpc_core14DualRefCountedINS_24UnstartedCallDestinationENS_19PolymorphicRefCountENS_11UnrefDeleteEEE = linkonce_odr constant [103 x i8] c"N9grpc_core14DualRefCountedINS_24UnstartedCallDestinationENS_19PolymorphicRefCountENS_11UnrefDeleteEEE\00", comdat, align 1
@_ZTIN9grpc_core19PolymorphicRefCountE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core19PolymorphicRefCountE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN9grpc_core19PolymorphicRefCountE = linkonce_odr constant [34 x i8] c"N9grpc_core19PolymorphicRefCountE\00", comdat, align 1
@_ZTIN9grpc_core9CppImplOfINS_7ChannelE12grpc_channelEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core9CppImplOfINS_7ChannelE12grpc_channelEE }, comdat, align 8
@_ZTSN9grpc_core9CppImplOfINS_7ChannelE12grpc_channelEE = linkonce_odr constant [51 x i8] c"N9grpc_core9CppImplOfINS_7ChannelE12grpc_channelEE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN9grpc_core7ExecCtxE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN9grpc_core7ExecCtxE, ptr @_ZN9grpc_core7ExecCtxD2Ev, ptr @_ZN9grpc_core7ExecCtxD0Ev, ptr @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv] }, comdat, align 8
@_ZTIN9grpc_core7ExecCtxE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core7ExecCtxE }, comdat, align 8
@_ZTSN9grpc_core7ExecCtxE = linkonce_odr constant [21 x i8] c"N9grpc_core7ExecCtxE\00", comdat, align 1
@_ZN9grpc_core7ExecCtx9exec_ctx_E = external thread_local local_unnamed_addr global ptr, align 8
@_ZN9grpc_core4Fork16support_enabled_E = external local_unnamed_addr global %"struct.std::atomic.42", align 1
@_ZTVN9grpc_core9Timestamp12ScopedSourceE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN9grpc_core9Timestamp12ScopedSourceE, ptr @__cxa_pure_virtual, ptr @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv] }, comdat, align 8
@_ZN9grpc_core9Timestamp25thread_local_time_source_E = external thread_local local_unnamed_addr global ptr, align 8
@_ZTIN9grpc_core9Timestamp12ScopedSourceE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN9grpc_core9Timestamp12ScopedSourceE, ptr @_ZTIN9grpc_core9Timestamp6SourceE }, comdat, align 8
@_ZTSN9grpc_core9Timestamp12ScopedSourceE = linkonce_odr constant [37 x i8] c"N9grpc_core9Timestamp12ScopedSourceE\00", comdat, align 1
@_ZTIN9grpc_core9Timestamp6SourceE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN9grpc_core9Timestamp6SourceE }, comdat, align 8
@_ZTSN9grpc_core9Timestamp6SourceE = linkonce_odr constant [30 x i8] c"N9grpc_core9Timestamp6SourceE\00", comdat, align 1
@_ZTVN9grpc_core14promise_detail10UnwakeableE = external constant { [6 x ptr] }, align 8
@_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr local_unnamed_addr global %"class.grpc_core::NoDestruct.59" zeroinitializer, comdat, align 8
@_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits = linkonce_odr global i64 0, comdat, align 8
@.str.34 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN4absl12lts_2025051212log_internal9kCharNullE = external global %"struct.std::array", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"grpc.internal.no_subchannel.channelz_channel_node\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"grpc.resource_quota\00", align 1
@_ZTVN9grpc_core18CallArenaAllocatorE = external constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [5 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.29, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.30, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.31, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.32, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E }]
@llvm.used = appending global [5 x ptr] [ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E], section "llvm.metadata"

@_ZN9grpc_core7Channel14RegisteredCallC1EPKcS3_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN9grpc_core7Channel14RegisteredCallC2EPKcS3_
@_ZN9grpc_core7Channel14RegisteredCallC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN9grpc_core7Channel14RegisteredCallC2ERKS1_
@_ZN9grpc_core7Channel14RegisteredCallD1Ev = unnamed_addr alias void (ptr), ptr @_ZN9grpc_core7Channel14RegisteredCallD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core7Channel14RegisteredCallC2EPKcS3_(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 32), (64, 65)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.grpc_slice, align 8         ; 4 uses
  %4 = alloca %struct.grpc_slice, align 8         ; 4 uses
  %5 = alloca %"class.grpc_core::Slice", align 8  ; 7 uses
  %6 = alloca %"class.grpc_core::Slice", align 8  ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !102
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i8 0, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32, !noalias !103
  invoke void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %5, ptr noundef nonnull %1, i64 noundef %i.c)
          to label %_ZN9grpc_core12slice_detail16CopyConstructorsINS_5SliceEE16FromCopiedStringEPKc.exit unwind label %bb.j

_ZN9grpc_core12slice_detail16CopyConstructorsINS_5SliceEE16FromCopiedStringEPKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.d = load ptr, ptr %5, align 8, !tbaa !19     ; 4 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 1 to ptr)
  br i1 %i.e, label %bb.b, label %_ZN9grpc_core5SliceD2Ev.exit

bb.b:                                             ; preds = %_ZN9grpc_core12slice_detail16CopyConstructorsINS_5SliceEE16FromCopiedStringEPKc.exit
  %i.f = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN9grpc_core5SliceD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #33
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %_ZN9grpc_core12slice_detail16CopyConstructorsINS_5SliceEE16FromCopiedStringEPKc.exit, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.l = load i8, ptr %2, align 1, !tbaa !16
  %.not8 = icmp eq i8 %i.l, 0
  br i1 %.not8, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32, !noalias !104
  invoke void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %6, ptr noundef nonnull %2, i64 noundef %i.m)
          to label %_ZN9grpc_core12slice_detail16CopyConstructorsINS_5SliceEE16FromCopiedStringEPKc.exit10 unwind label %bb.k

_ZN9grpc_core12slice_detail16CopyConstructorsINS_5SliceEE16FromCopiedStringEPKc.exit10: ; preds = %bb.f
  %i.n = load i8, ptr %i.b, align 8, !tbaa !12, !range !25, !noundef !26
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.thread

_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.thread: ; preds = %_ZN9grpc_core12slice_detail16CopyConstructorsINS_5SliceEE16FromCopiedStringEPKc.exit10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  store i8 1, ptr %i.b, align 8, !tbaa !12
  br label %_ZN9grpc_core5SliceD2Ev.exit11

_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %_ZN9grpc_core12slice_detail16CopyConstructorsINS_5SliceEE16FromCopiedStringEPKc.exit10
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 32, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pr = load ptr, ptr %6, align 8, !tbaa !19     ; 4 uses
  %i.p = icmp ugt ptr %.pr, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %bb.g, label %_ZN9grpc_core5SliceD2Ev.exit11

bb.g:                                             ; preds = %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.q = atomicrmw add ptr %.pr, i64 -1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %_ZN9grpc_core5SliceD2Ev.exit11

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr)
          to label %_ZN9grpc_core5SliceD2Ev.exit11 unwind label %bb.i, !inline_history !0

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

_ZN9grpc_core5SliceD2Ev.exit11:                   ; preds = %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.thread, %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.m

bb.l:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit11, %bb.e, %_ZN9grpc_core5SliceD2Ev.exit
  ret void

bb.m:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.w, %bb.j ]
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #31
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.a, i64 -1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit unwind label %bb.d, !inline_history !0

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !12
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.e = icmp ugt ptr %i.d, inttoptr (i64 1 to ptr)
  br i1 %i.e, label %bb.c, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #33
  unreachable

_ZNSt17_Optional_payloadIN9grpc_core5SliceELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core7Channel14RegisteredCallC2ERKS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 32), (64, 65)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9 = alloca %"union.grpc_slice::grpc_slice_data", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !19, !noalias !109 ; 2 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %_ZNK9grpc_core5Slice3RefEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.a, i64 1 monotonic, align 8, !noalias !109 ; 0 uses
  br label %_ZNK9grpc_core5Slice3RefEv.exit

_ZNK9grpc_core5Slice3RefEv.exit:                  ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12, !range !25, !noundef !26
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNK9grpc_core5Slice3RefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !19, !noalias !110 ; 3 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 1 to ptr)
  br i1 %i.k, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %.sroa.9.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx19, i64 24, i1 false), !tbaa.struct !111
  br label %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = atomicrmw add ptr %i.j, i64 1 monotonic, align 8, !noalias !110 ; 0 uses
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %.pre = load i8, ptr %i.e, align 8, !tbaa !12, !range !25
  %i.m = trunc nuw i8 %.pre to i1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false), !tbaa.struct !111
  br i1 %i.m, label %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.thread

_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.thread: ; preds = %.thread, %bb.d
  %.sroa.0.0.copyload20 = phi ptr [ %i.j, %.thread ], [ %.sroa.0.0.copyload.pre, %bb.d ]
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  store ptr %.sroa.0.0.copyload20, ptr %i.d, align 8, !tbaa !15
  store i8 1, ptr %i.e, align 8, !tbaa !12
  br label %_ZN9grpc_core5SliceD2Ev.exit

_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.d
  %.sroa.012.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !15 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.copyload.pre, ptr %i.d, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false), !tbaa.struct !111
  %i.n = icmp ugt ptr %.sroa.012.0.copyload, inttoptr (i64 1 to ptr)
  br i1 %i.n, label %bb.e, label %_ZN9grpc_core5SliceD2Ev.exit

bb.e:                                             ; preds = %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.o = atomicrmw add ptr %.sroa.012.0.copyload, i64 -1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_ZN9grpc_core5SliceD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.0.copyload)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.g, !inline_history !0

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.thread, %_ZNSt8optionalIN9grpc_core5SliceEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit, %_ZNK9grpc_core5Slice3RefEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9grpc_core7Channel14RegisteredCallD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(72) dereferenceable(72) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !12, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !12
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  %i.f = icmp ugt ptr %i.e, inttoptr (i64 1 to ptr)
  br i1 %i.f, label %bb.c, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw add ptr %i.e, i64 -1 acq_rel, align 8
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #33
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.n = icmp ugt ptr %i.m, inttoptr (i64 1 to ptr)
  br i1 %i.n, label %bb.f, label %_ZN9grpc_core5SliceD2Ev.exit

bb.f:                                             ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit
  %i.o = atomicrmw add ptr %i.m, i64 -1 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_ZN9grpc_core5SliceD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.h, !inline_history !0

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core7ChannelC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11ChannelArgsE(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 16)) %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.grpc_core::MemoryOwner", align 16 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.9", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4294967296, ptr %i.a, align 8, !tbaa !123
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN9grpc_core7ChannelE, i64 16), ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !31
  %i.d = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !33
  %i.k = load i64, ptr %i.e, align 8, !tbaa !16
  store i64 %i.k, ptr %i.c, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !34
  store ptr %i.e, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %i.l, align 8, !tbaa !34
  store i8 0, ptr %i.e, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.p = invoke noundef ptr @_ZNK9grpc_core11ChannelArgs14GetVoidPointerESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 49, ptr nonnull @.str.35)
          to label %.noexc unwind label %bb.p     ; 3 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 4294967296 monotonic, align 8, !noalias !126 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  store ptr %i.p, ptr %i.o, align 8, !tbaa !37, !alias.scope !127
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN9grpc_core33CompressionOptionsFromChannelArgsERKNS_11ChannelArgsE(ptr dead_on_unwind nonnull writable sret(%struct.grpc_compression_options) align 4 %i.t, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.u, align 8, !tbaa !129
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.w, ptr %i.y, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.w, ptr %i.z, align 8, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.aa, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.ac = invoke noundef ptr @_ZNK9grpc_core11ChannelArgs14GetVoidPointerESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 19, ptr nonnull @.str.36)
          to label %_ZNK9grpc_core11ChannelArgs9GetObjectINS_13ResourceQuotaEEENS_13GetObjectImplIT_vE6ResultEv.exit unwind label %bb.r ; 2 uses

_ZNK9grpc_core11ChannelArgs9GetObjectINS_13ResourceQuotaEEENS_13GetObjectImplIT_vE6ResultEv.exit: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !135, !noalias !132 ; 3 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !135, !alias.scope !132
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47, !noalias !132 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !47, !alias.scope !132
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core13ResourceQuota12memory_quotaEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9grpc_core11ChannelArgs9GetObjectINS_13ResourceQuotaEEENS_13GetObjectImplIT_vE6ResultEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16, !noalias !132
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !48, !noalias !132
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !48, !noalias !132
  br label %_ZN9grpc_core13ResourceQuota12memory_quotaEv.exit

bb.h:                                             ; preds = %bb.f
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4, !noalias !132 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !135
  br label %_ZN9grpc_core13ResourceQuota12memory_quotaEv.exit

_ZN9grpc_core13ResourceQuota12memory_quotaEv.exit: ; preds = %_ZNK9grpc_core11ChannelArgs9GetObjectINS_13ResourceQuotaEEENS_13GetObjectImplIT_vE6ResultEv.exit, %bb.g, %bb.h
  %i.an = phi ptr [ %i.ae, %_ZNK9grpc_core11ChannelArgs9GetObjectINS_13ResourceQuotaEEENS_13GetObjectImplIT_vE6ResultEv.exit ], [ %i.ae, %bb.g ], [ %.pre, %bb.h ]
  invoke void @_ZN9grpc_core11MemoryQuota17CreateMemoryOwnerEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::MemoryOwner") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZN9grpc_core13ResourceQuota12memory_quotaEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.ao = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %_ZN17grpc_event_engine12experimental15MemoryAllocatorD2Ev.exit unwind label %bb.t ; 5 uses

_ZN17grpc_event_engine12experimental15MemoryAllocatorD2Ev.exit: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load <2 x ptr>, ptr %3, align 16, !tbaa !49, !noalias !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false), !noalias !136
  store i64 1, ptr %i.ap, align 8, !tbaa !129, !noalias !136
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !49, !noalias !136
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core18CallArenaAllocatorE, i64 16), ptr %i.ao, align 8, !tbaa !28, !noalias !136
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 1024, ptr %i.as, align 8, !tbaa !123, !noalias !136
  store ptr %i.ao, ptr %i.ab, align 8, !tbaa !52, !alias.scope !136
  %.pre17 = load ptr, ptr %i.af, align 8, !tbaa !47 ; 8 uses
  %.not.i.i = icmp eq ptr %.pre17, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN9grpc_core11MemoryQuotaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN17grpc_event_engine12experimental15MemoryAllocatorD2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.pre17, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.at, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre17, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !55
  %i.ay = load ptr, ptr %.pre17, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %.pre17) #31, !inline_history !122
  %i.bb = load ptr, ptr %.pre17, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
end_hunk_0
begin_hunk_1_@_ZNSt4pairIKS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EN9grpc_core7Channel14RegisteredCallEED2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN9grpc_core7Channel14RegisteredCallD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !16
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: uwtable
define void @grpc_channel_destroy(ptr noundef %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %1 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !76
  %i.i = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %1, ptr %i.f, align 8, !tbaa !75
  %i.k = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core9api_traceE, i64 8) monotonic, align 8, !range !25, !noundef !26
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %.critedge12, !prof !56

bb.f:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 97) #36
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 29, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit unwind label %bb.u

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit: ; preds = %bb.g
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.u       ; 2 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.u

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.critedge unwind label %bb.u

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %.critedge12

.critedge12:                                      ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit, %.critedge
  %i.n = phi ptr [ %0, %_ZN9grpc_core7ExecCtxC2Ev.exit ], [ %.pre, %.critedge ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i64 -4294967295 acq_rel, align 8
  %.mask.i.i = and i64 %i.p, -4294967296
  %i.q = icmp eq i64 %.mask.i.i, 4294967296
  br i1 %i.q, label %bb.i, label %.noexc, !prof !56

bb.i:                                             ; preds = %.critedge12
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc unwind label %bb.s, !inline_history !158

.noexc:                                           ; preds = %bb.i, %.critedge12
  %i.u = atomicrmw add ptr %i.o, i64 -1 acq_rel, align 8
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.j, label %_Z29grpc_channel_destroy_internalP12grpc_channel.exit, !prof !56

bb.j:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #31, !inline_history !159
  br label %_Z29grpc_channel_destroy_internalP12grpc_channel.exit

_Z29grpc_channel_destroy_internalP12grpc_channel.exit: ; preds = %bb.j, %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !28
  %i.z = load i64, ptr %i.c, align 8, !tbaa !73
  %i.aa = or i64 %i.z, 1
  store i64 %i.aa, ptr %i.c, align 8, !tbaa !73
  %i.ab = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.k unwind label %bb.r, !inline_history !77 ; 0 uses

bb.k:                                             ; preds = %_Z29grpc_channel_destroy_internalP12grpc_channel.exit
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.m unwind label %bb.r, !inline_history !77

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !75
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !73
  %i.ae = and i64 %i.ad, 4
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.n, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.af = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.o, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.r, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.o, %bb.n, %bb.m
  %i.ah = load i8, ptr %i.e, align 8, !tbaa !74, !range !25, !noundef !26
  %i.ai = trunc nuw i8 %i.ah to i1
  store i8 0, ptr %i.e, align 8, !tbaa !74
  br i1 %i.ai, label %bb.p, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.p:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.d, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i16, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i16

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i16: ; preds = %bb.q, %bb.p
  %i.al = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.r:                                             ; preds = %bb.o, %bb.l, %_Z29grpc_channel_destroy_internalP12grpc_channel.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.s:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.t:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.h, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi30EEERS2_RAT__Kc.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.u ], [ %i.ap, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.v, %bb.s
  %.pn10 = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %.pn, %bb.v ]
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn10
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !61
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.f
}

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !73
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !75
  %i.h = load i64, ptr %i.a, align 8, !tbaa !73
  %i.i = and i64 %i.h, 4
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, !prof !56

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit unwind label %bb.i

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit:       ; preds = %bb.e, %bb.f, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !74, !range !25, !noundef !26
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !74
  br i1 %i.n, label %bb.g, label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !82
  br label %_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EED2Ev.exit: ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable
}

; Function Attrs: uwtable
define noundef ptr @grpc_channel_create_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly byval(%struct.grpc_slice) align 8 captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly byval(%struct.gpr_timespec) align 8 captures(none) %6, ptr nofree noundef readnone captures(address_is_null) %7) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.grpc_core::ExecCtx", align 8 ; 15 uses
  %10 = alloca %"class.grpc_core::Slice", align 8 ; 4 uses
  %11 = alloca %"class.std::optional", align 8    ; 6 uses
  %12 = alloca %"class.std::optional.46", align 8 ; 2 uses
  %.not.not = icmp eq ptr %7, null
  br i1 %.not.not, label %.critedge, label %bb.b, !prof !85

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.1, i32 noundef 108, ptr noundef nonnull @.str.4) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #33
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #33
  unreachable

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %9, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  store i8 0, ptr %i.e, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d, %.critedge
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !76
  %i.i = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i unwind label %bb.h

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtxC2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.e, align 8, !tbaa !74, !range !25, !noundef !26
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.p = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !82
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.ag ], [ %i.k, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i ], [ %i.k, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, %bb.g
  store ptr %9, ptr %i.f, align 8, !tbaa !75
  %i.q = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.r = icmp ugt ptr %i.q, inttoptr (i64 1 to ptr)
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.s = atomicrmw add ptr %i.q, i64 1 monotonic, align 8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !17
  %.not.not26 = icmp eq ptr %5, null
  br i1 %.not.not26, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 1 to ptr)
  br i1 %i.u, label %bb.n, label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit33

bb.n:                                             ; preds = %bb.m
  %i.v = atomicrmw add ptr %i.t, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit33

_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit33: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !17
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit33
  %.sink = phi i8 [ 1, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit33 ], [ 0, %bb.l ]
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 %.sink, ptr %i.w, align 8, !tbaa !12
  %.sroa.0.0.copyload = load i64, ptr %6, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.x = invoke i64 @_ZN9grpc_core9Timestamp19FromTimespecRoundUpE12gpr_timespec(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 0, ptr %i.y, align 8, !tbaa !87
  %i.z = load ptr, ptr %0, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11, i64 %i.x, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.std::optional.46") align 8 %12)
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !12, !range !25, !noundef !26
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !12
  br i1 %i.af, label %bb.r, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ag = load ptr, ptr %11, align 8, !tbaa !19   ; 4 uses
  %i.ah = icmp ugt ptr %i.ag, inttoptr (i64 1 to ptr)
  br i1 %i.ah, label %bb.s, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.ai = atomicrmw add ptr %i.ag, i64 -1 acq_rel, align 8
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit unwind label %bb.u, !inline_history !0

bb.u:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #33
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %i.ao = load ptr, ptr %10, align 8, !tbaa !19   ; 4 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 1 to ptr)
  br i1 %i.ap, label %bb.v, label %_ZN9grpc_core5SliceD2Ev.exit

bb.v:                                             ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit
  %i.aq = atomicrmw add ptr %i.ao, i64 -1 acq_rel, align 8
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.w, label %_ZN9grpc_core5SliceD2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.x, !inline_history !0

bb.x:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #33
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit, %bb.v, %bb.w
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %9, align 8, !tbaa !28
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !73
  %i.ax = or i64 %i.aw, 1
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !73
  %i.ay = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.y unwind label %bb.af, !inline_history !77 ; 0 uses

bb.y:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.aa unwind label %bb.af, !inline_history !77

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr %i.az, ptr %i.f, align 8, !tbaa !75
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !73
  %i.bb = and i64 %i.ba, 4
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %bb.ab, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.ac, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.af, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.be = load i8, ptr %i.e, align 8, !tbaa !74, !range !25, !noundef !26
  %i.bf = trunc nuw i8 %i.be to i1
  store i8 0, ptr %i.e, align 8, !tbaa !74
  br i1 %i.bf, label %bb.ad, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.ad:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.d, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i36 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i36, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i37, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i37

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i37: ; preds = %bb.ae, %bb.ad
  %i.bi = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.af:                                            ; preds = %bb.ac, %bb.z, %_ZN9grpc_core5SliceD2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  ret ptr %i.ac

bb.ag:                                            ; preds = %bb.p, %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #31
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #31
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %common.resume
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare i64 @_ZN9grpc_core9Timestamp19FromTimespecRoundUpE12gpr_timespec(i64, i64) local_unnamed_addr #4

; Function Attrs: uwtable
define noundef nonnull ptr @grpc_channel_register_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !61
  store ptr %1, ptr %i.c, align 8, !tbaa !88
  store ptr %2, ptr %i.d, align 8, !tbaa !88
  %i.e = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core9api_traceE, i64 8) monotonic, align 8, !range !25, !noundef !26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %.critedge17, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 123) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 35, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 9, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.h       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 7, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 11, ptr nonnull @.str.8)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8, !tbaa !49
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.critedge unwind label %bb.h

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.critedge17

.critedge17:                                      ; preds = %bb.a, %.critedge
  %.not.not = icmp eq ptr %3, null
  br i1 %.not.not, label %.critedge19, label %bb.g, !prof !85

bb.g:                                             ; preds = %.critedge17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 126, ptr noundef nonnull @.str.4) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit20 unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit20: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  unreachable

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #33
  unreachable

.critedge19:                                      ; preds = %.critedge17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %6, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.n, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  store i8 0, ptr %i.p, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge19
  call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge19
  %i.q = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !76
  %i.t = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.l, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.l:                                             ; preds = %bb.k
  call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.l, %bb.k
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

common.resume:                                    ; preds = %bb.h, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.w ], [ %i.k, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.m, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %6, ptr %i.q, align 8, !tbaa !75
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.y = invoke noundef ptr @_ZN9grpc_core7Channel12RegisterCallEPKcS2_(ptr noundef nonnull align 8 dereferenceable(152) %i.v, ptr noundef %i.w, ptr noundef %i.x)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %6, align 8, !tbaa !28
  %i.z = load i64, ptr %i.n, align 8, !tbaa !73
  %i.aa = or i64 %i.z, 1
  store i64 %i.aa, ptr %i.n, align 8, !tbaa !73
  %i.ab = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.o unwind label %bb.v, !inline_history !77 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.q unwind label %bb.v, !inline_history !77

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !75
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !73
  %i.ae = and i64 %i.ad, 4
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.r, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.af = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.s, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.v, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.s, %bb.r, %bb.q
  %i.ah = load i8, ptr %i.p, align 8, !tbaa !74, !range !25, !noundef !26
  %i.ai = trunc nuw i8 %i.ah to i1
  store i8 0, ptr %i.p, align 8, !tbaa !74
  br i1 %i.ai, label %bb.t, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.t:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i23 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i23, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i24, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i24

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i24: ; preds = %bb.u, %bb.t
  %i.al = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.v:                                             ; preds = %bb.s, %bb.p, %bb.n
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret ptr %i.y

bb.w:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %common.resume
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !88     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %spec.select.i = select i1 %.not.i, ptr @_ZN4absl12lts_2025051212log_internal9kCharNullE, ptr %i.d ; 2 uses
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #31
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %spec.select.i, i64 noundef %i.e)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.g
}

; Function Attrs: uwtable
define noundef ptr @grpc_channel_create_registered_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly byval(%struct.gpr_timespec) align 8 captures(none) %5, ptr noundef %6) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca ptr, align 8                      ; 3 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %8 = alloca %"class.grpc_core::ExecCtx", align 8 ; 15 uses
  %9 = alloca %"class.grpc_core::Slice", align 8  ; 4 uses
  %10 = alloca %"class.std::optional", align 8    ; 7 uses
  %11 = alloca %"class.grpc_core::Slice", align 8 ; 6 uses
  %12 = alloca %"class.std::optional.46", align 8 ; 2 uses
  store ptr %0, ptr %i.g, align 8, !tbaa !61
  store ptr %1, ptr %i.h, align 8, !tbaa !90
  store ptr %3, ptr %i.i, align 8, !tbaa !92
  %i.j = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core9api_traceE, i64 8) monotonic, align 8, !range !25, !noundef !26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge36, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 137) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 44, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.c unwind label %bb.ax      ; 2 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 14, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP9grpc_callEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.d unwind label %bb.ax      ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 19, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %2, ptr %i.f, align 4, !tbaa !48
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.e unwind label %bb.ax      ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 19, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit46 unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit46: ; preds = %bb.e
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP21grpc_completion_queueEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.f unwind label %bb.ax      ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit46
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 25, ptr nonnull @.str.13)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %4, ptr %i.e, align 8, !tbaa !49
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.g unwind label %bb.ax      ; 2 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 34, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit: ; preds = %bb.g
  %i.q = load i64, ptr %5, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.q, ptr %i.d, align 8, !tbaa !57
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.h unwind label %bb.ax      ; 2 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 11, ptr nonnull @.str.15)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.t, ptr %i.c, align 4, !tbaa !48
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.i unwind label %bb.ax      ; 2 uses

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 14, ptr nonnull @.str.16)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit47 unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit47: ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.w, ptr %i.b, align 4, !tbaa !48
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.j unwind label %bb.ax      ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 13, ptr nonnull @.str.17)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %6, ptr %i.a, align 8, !tbaa !49
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.ax      ; 2 uses

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.ax

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.k
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %.critedge unwind label %bb.ax

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.critedge36

.critedge36:                                      ; preds = %bb.a, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %8, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.aa, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 5 uses
  store i8 0, ptr %i.ac, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge36
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l, %.critedge36
  %i.ad = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !76
  %i.ag = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i unwind label %bb.p

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.n, %bb.m
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtxC2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load i8, ptr %i.ac, align 8, !tbaa !74, !range !25, !noundef !26
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !74
  br i1 %i.ak, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.ab, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.an = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.am, ptr %i.an, align 8, !tbaa !82
  br label %common.resume

common.resume:                                    ; preds = %bb.ax, %.critedge45, %bb.p, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.p ], [ %i.ai, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i ], [ %i.dh, %.critedge45 ], [ %i.dg, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, %bb.o
  store ptr %8, ptr %i.ad, align 8, !tbaa !75
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !61  ; 2 uses
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.ar = load ptr, ptr %4, align 8, !tbaa !19, !noalias !171 ; 2 uses
  %i.as = icmp ugt ptr %i.ar, inttoptr (i64 1 to ptr)
  br i1 %i.as, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.at = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !noalias !171 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !17
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !12, !range !25, !noundef !26
  %i.ax = trunc nuw i8 %i.aw to i1                ; 3 uses
  br i1 %i.ax, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !19, !noalias !172 ; 2 uses
  %i.az = icmp ugt ptr %i.ay, inttoptr (i64 1 to ptr)
  br i1 %i.az, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ba = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !noalias !172 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false), !noalias !173
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w
  %.sink = phi i8 [ 1, %bb.w ], [ 0, %bb.t ]
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !12
  %.sroa.0.0.copyload = load i64, ptr %5, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.bc = invoke i64 @_ZN9grpc_core9Timestamp19FromTimespecRoundUpE12gpr_timespec(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %bb.y unwind label %bb.ay

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 0, ptr %i.bd, align 8, !tbaa !87
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(152) %i.ao, ptr noundef %i.ap, i32 noundef %2, ptr noundef %i.aq, ptr noundef null, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 %10, i64 %i.bc, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.std::optional.46") align 8 %12)
          to label %bb.z unwind label %bb.ay

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !12, !range !25, !noundef !26
  %i.bk = trunc nuw i8 %i.bj to i1                ; 2 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !12
  br i1 %i.ax, label %.critedge38, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bk, label %bb.ab, label %.critedge41

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load ptr, ptr %10, align 8, !tbaa !19   ; 4 uses
  %i.bm = icmp ugt ptr %i.bl, inttoptr (i64 1 to ptr)
  br i1 %i.bm, label %bb.ac, label %.critedge41

bb.ac:                                            ; preds = %bb.ab
  %i.bn = atomicrmw add ptr %i.bl, i64 -1 acq_rel, align 8
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.ad, label %.critedge41

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !24
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %.critedge41 unwind label %bb.ae, !inline_history !0

bb.ae:                                            ; preds = %bb.ad
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

.critedge38:                                      ; preds = %bb.z
  br i1 %i.bk, label %bb.af, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit51

bb.af:                                            ; preds = %.critedge38
  %i.bt = load ptr, ptr %10, align 8, !tbaa !19   ; 4 uses
  %i.bu = icmp ugt ptr %i.bt, inttoptr (i64 1 to ptr)
  br i1 %i.bu, label %bb.ag, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit51

bb.ag:                                            ; preds = %bb.af
  %i.bv = atomicrmw add ptr %i.bt, i64 -1 acq_rel, align 8
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ah, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit51

bb.ah:                                            ; preds = %bb.ag
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bt)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit51 unwind label %bb.ai, !inline_history !0

bb.ai:                                            ; preds = %bb.ah
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #33
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit51: ; preds = %.critedge38, %bb.af, %bb.ag, %bb.ah
  %i.cb = load ptr, ptr %11, align 8, !tbaa !19   ; 4 uses
  %i.cc = icmp ugt ptr %i.cb, inttoptr (i64 1 to ptr)
  br i1 %i.cc, label %bb.aj, label %_ZN9grpc_core5SliceD2Ev.exit

bb.aj:                                            ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit51
  %i.cd = atomicrmw add ptr %i.cb, i64 -1 acq_rel, align 8
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ak, label %_ZN9grpc_core5SliceD2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.al, !inline_history !0

bb.al:                                            ; preds = %bb.ak
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #33
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit51, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.critedge41

.critedge41:                                      ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %_ZN9grpc_core5SliceD2Ev.exit
  %i.cj = load ptr, ptr %9, align 8, !tbaa !19    ; 4 uses
  %i.ck = icmp ugt ptr %i.cj, inttoptr (i64 1 to ptr)
  br i1 %i.ck, label %bb.am, label %_ZN9grpc_core5SliceD2Ev.exit52

bb.am:                                            ; preds = %.critedge41
  %i.cl = atomicrmw add ptr %i.cj, i64 -1 acq_rel, align 8
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.an, label %_ZN9grpc_core5SliceD2Ev.exit52

bb.an:                                            ; preds = %bb.am
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !24
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %_ZN9grpc_core5SliceD2Ev.exit52 unwind label %bb.ao, !inline_history !0

bb.ao:                                            ; preds = %bb.an
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #33
  unreachable

_ZN9grpc_core5SliceD2Ev.exit52:                   ; preds = %.critedge41, %bb.am, %bb.an
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %8, align 8, !tbaa !28
  %i.cr = load i64, ptr %i.aa, align 8, !tbaa !73
  %i.cs = or i64 %i.cr, 1
  store i64 %i.cs, ptr %i.aa, align 8, !tbaa !73
  %i.ct = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.ap unwind label %bb.aw, !inline_history !77 ; 0 uses

bb.ap:                                            ; preds = %_ZN9grpc_core5SliceD2Ev.exit52
  %i.cu = load ptr, ptr %i.af, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.ar unwind label %bb.aw, !inline_history !77

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store ptr %i.cu, ptr %i.ad, align 8, !tbaa !75
  %i.cv = load i64, ptr %i.aa, align 8, !tbaa !73
  %i.cw = and i64 %i.cv, 4
  %.not.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i, label %bb.as, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.cx = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.at, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.aw, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.at, %bb.as, %bb.ar
  %i.cz = load i8, ptr %i.ac, align 8, !tbaa !74, !range !25, !noundef !26
  %i.da = trunc nuw i8 %i.cz to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !74
  br i1 %i.da, label %bb.au, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.au:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.ab, align 8, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i55 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i55, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i56, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i56

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i56: ; preds = %bb.av, %bb.au
  %i.dd = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.aw:                                            ; preds = %bb.at, %bb.aq, %_ZN9grpc_core5SliceD2Ev.exit52
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret ptr %i.bh

bb.ax:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.k, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit47, %bb.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit, %bb.f, %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit, %bb.d, %bb.c, %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi20EEERS2_RAT__Kc.exit46, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi45EEERS2_RAT__Kc.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %common.resume

bb.ay:                                            ; preds = %bb.y, %bb.x
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #31
  br i1 %i.ax, label %.critedge43, label %.critedge45

.critedge43:                                      ; preds = %bb.ay
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.critedge45

.critedge45:                                      ; preds = %bb.ay, %.critedge43
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #31
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %common.resume
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP9grpc_callEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !90
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP21grpc_completion_queueEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !92
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.d)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.f
}

; Function Attrs: uwtable
define noundef ptr @_Z40grpc_channel_create_call_with_arena_initP12grpc_channelP9grpc_calljP21grpc_completion_queueN9grpc_core5SliceESt8optionalIS6_E12gpr_timespecbS7_IN4absl12lts_2025051211FunctionRefIFvPNS5_5ArenaEEEEE(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef align 8 captures(none) %4, ptr nofree noundef align 8 captures(none) %5, ptr nofree noundef readonly byval(%struct.gpr_timespec) align 8 captures(none) %6, i1 noundef zeroext %7, ptr nofree noundef readonly byval(%"class.std::optional.46") align 8 captures(none) %8) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  %10 = alloca %"class.grpc_core::Slice", align 8 ; 4 uses
  %11 = alloca %"class.std::optional", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %9, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !76
  %i.h = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %9, ptr %i.e, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false), !noalias !178
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store i8 0, ptr %i.k, align 8, !tbaa !12
  %i.l = load i8, ptr %i.j, align 8, !tbaa !12, !range !25, !noundef !26
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %_ZNSt8optionalIN9grpc_core5SliceEEC2EOS2_.exit

bb.f:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 32, i1 false), !noalias !179
  store i8 1, ptr %i.k, align 8, !tbaa !12
  br label %_ZNSt8optionalIN9grpc_core5SliceEEC2EOS2_.exit

_ZNSt8optionalIN9grpc_core5SliceEEC2EOS2_.exit:   ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit, %bb.f
  %.sroa.0.0.copyload = load i64, ptr %6, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.n = invoke i64 @_ZN9grpc_core9Timestamp19FromTimespecRoundUpE12gpr_timespec(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %bb.g unwind label %common.resume

bb.g:                                             ; preds = %_ZNSt8optionalIN9grpc_core5SliceEEC2EOS2_.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11, i64 %i.n, i1 noundef zeroext %7, ptr noundef nonnull byval(%"class.std::optional.46") align 8 %8)
          to label %bb.h unwind label %common.resume

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.k, align 8, !tbaa !12, !range !25, !noundef !26
  %i.t = trunc nuw i8 %i.s to i1
  store i8 0, ptr %i.k, align 8, !tbaa !12
  br i1 %i.t, label %bb.i, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %11, align 8, !tbaa !19    ; 4 uses
  %i.v = icmp ugt ptr %i.u, inttoptr (i64 1 to ptr)
  br i1 %i.v, label %bb.j, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.w = atomicrmw add ptr %i.u, i64 -1 acq_rel, align 8
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.k, label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit unwind label %bb.l, !inline_history !0

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #33
  unreachable

_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ac = load ptr, ptr %10, align 8, !tbaa !19   ; 4 uses
  %i.ad = icmp ugt ptr %i.ac, inttoptr (i64 1 to ptr)
  br i1 %i.ad, label %bb.m, label %_ZN9grpc_core5SliceD2Ev.exit

bb.m:                                             ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit
  %i.ae = atomicrmw add ptr %i.ac, i64 -1 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.n, label %_ZN9grpc_core5SliceD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_ZN9grpc_core5SliceD2Ev.exit unwind label %bb.o, !inline_history !0

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #33
  unreachable

_ZN9grpc_core5SliceD2Ev.exit:                     ; preds = %_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev.exit, %bb.m, %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %9, align 8, !tbaa !28
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !73
  %i.al = or i64 %i.ak, 1
  store i64 %i.al, ptr %i.b, align 8, !tbaa !73
  %i.am = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.p unwind label %bb.w, !inline_history !77 ; 0 uses

bb.p:                                             ; preds = %_ZN9grpc_core5SliceD2Ev.exit
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.r unwind label %bb.w, !inline_history !77

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.an, ptr %i.e, align 8, !tbaa !75
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !73
  %i.ap = and i64 %i.ao, 4
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.s, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.aq = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.t, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.w, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.t, %bb.s, %bb.r
  %i.as = load i8, ptr %i.d, align 8, !tbaa !74, !range !25, !noundef !26
  %i.at = trunc nuw i8 %i.as to i1
  store i8 0, ptr %i.d, align 8, !tbaa !74
  br i1 %i.at, label %bb.u, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.u:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.c, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i9 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i9, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i10, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i10

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i10: ; preds = %bb.v, %bb.u
  %i.aw = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.w:                                             ; preds = %bb.t, %bb.q, %_ZN9grpc_core5SliceD2Ev.exit
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  ret ptr %i.r

common.resume:                                    ; preds = %bb.g, %_ZNSt8optionalIN9grpc_core5SliceEEC2EOS2_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseIN9grpc_core5SliceELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #31
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #31
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  resume { ptr, i32 } %i.az
}

; Function Attrs: mustprogress uwtable
define ptr @grpc_channel_get_target(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !61
  %i.b = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core9api_traceE, i64 8) monotonic, align 8, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge8, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.1, i32 noundef 174) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 32, ptr nonnull @.str.18)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.critedge unwind label %bb.d

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %.critedge8

.critedge8:                                       ; preds = %bb.a, %.critedge
  %i.e = phi ptr [ %0, %bb.a ], [ %.pre, %.critedge ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = add i64 %i.i, 1
  %i.k = call ptr @gpr_zalloc(i64 noundef %i.j)   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.g, i64 %i.i, i1 false)
  ret ptr %i.k

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.c, %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %i.l
}

declare ptr @gpr_zalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define void @grpc_channel_get_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %2, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !76
  %i.h = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %2, ptr %i.e, align 8, !tbaa !75
  %i.j = load ptr, ptr %0, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1)
          to label %bb.f unwind label %common.resume

bb.f:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %2, align 8, !tbaa !28
  %i.m = load i64, ptr %i.b, align 8, !tbaa !73
  %i.n = or i64 %i.m, 1
  store i64 %i.n, ptr %i.b, align 8, !tbaa !73
  %i.o = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.g unwind label %bb.n, !inline_history !77 ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.i unwind label %bb.n, !inline_history !77

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.p, ptr %i.e, align 8, !tbaa !75
  %i.q = load i64, ptr %i.b, align 8, !tbaa !73
  %i.r = and i64 %i.q, 4
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bb.j, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.s = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.k, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.n, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.k, %bb.j, %bb.i
  %i.u = load i8, ptr %i.d, align 8, !tbaa !74, !range !25, !noundef !26
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.d, align 8, !tbaa !74
  br i1 %i.v, label %bb.l, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.l:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.c, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i5 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i5, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i6, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i6

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i6: ; preds = %bb.m, %bb.l
  %i.y = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.x, ptr %i.y, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

common.resume:                                    ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.ab
}

; Function Attrs: uwtable
define void @grpc_channel_reset_connect_backoff(ptr noundef %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %1 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !76
  %i.i = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %1, ptr %i.f, align 8, !tbaa !75
  %i.k = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core9api_traceE, i64 8) monotonic, align 8, !range !25, !noundef !26
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %.critedge12, !prof !56

bb.f:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 190) #36
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 43, ptr nonnull @.str.19)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi44EEERS2_RAT__Kc.exit unwind label %bb.t

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi44EEERS2_RAT__Kc.exit: ; preds = %bb.g
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.t       ; 2 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi44EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.t

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.critedge unwind label %bb.t

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %.critedge12

.critedge12:                                      ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit, %.critedge
  %i.n = phi ptr [ %0, %_ZN9grpc_core7ExecCtxC2Ev.exit ], [ %.pre, %.critedge ] ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(152) %i.n)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %.critedge12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %1, align 8, !tbaa !28
  %i.r = load i64, ptr %i.c, align 8, !tbaa !73
  %i.s = or i64 %i.r, 1
  store i64 %i.s, ptr %i.c, align 8, !tbaa !73
  %i.t = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.j unwind label %bb.q, !inline_history !77 ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.l unwind label %bb.q, !inline_history !77

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.u, ptr %i.f, align 8, !tbaa !75
  %i.v = load i64, ptr %i.c, align 8, !tbaa !73
  %i.w = and i64 %i.v, 4
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.m, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.x = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.n, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.q, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.n, %bb.m, %bb.l
  %i.z = load i8, ptr %i.e, align 8, !tbaa !74, !range !25, !noundef !26
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.e, align 8, !tbaa !74
  br i1 %i.aa, label %bb.o, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.o:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.d, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i16, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i16

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i16: ; preds = %bb.p, %bb.o
  %i.ad = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.q:                                             ; preds = %bb.n, %bb.k, %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.r:                                             ; preds = %.critedge12
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.s:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.h, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi44EEERS2_RAT__Kc.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #37
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.t ], [ %i.ah, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.u, %bb.r
  %.pn10 = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %.pn, %bb.u ]
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @grpc_channel_support_connectivity_watcher(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: uwtable
define noundef i32 @grpc_channel_check_connectivity_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %"class.grpc_core::ExecCtx", align 8 ; 14 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %2, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !76
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
  br label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  tail call void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
  br label %_ZN9grpc_core7ExecCtxC2Ev.exit

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %bb.e, %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  store ptr %2, ptr %i.g, align 8, !tbaa !75
  %i.l = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core9api_traceE, i64 8) monotonic, align 8, !range !25, !noundef !26
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %.critedge14, !prof !56

bb.f:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1, i32 noundef 202) #36
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 46, ptr nonnull @.str.20)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit unwind label %bb.u

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit: ; preds = %bb.g
  %i.n = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.u       ; 2 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 17, ptr nonnull @.str.21)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit unwind label %bb.u

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !48
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.u       ; 2 uses

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.u

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %.critedge unwind label %bb.u

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.critedge14

.critedge14:                                      ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit, %.critedge
  %i.p = phi ptr [ %0, %_ZN9grpc_core7ExecCtxC2Ev.exit ], [ %.pre, %.critedge ] ; 2 uses
  %i.q = icmp ne i32 %1, 0
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(152) %i.p, i1 noundef zeroext %i.q)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %.critedge14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %2, align 8, !tbaa !28
  %i.v = load i64, ptr %i.d, align 8, !tbaa !73
  %i.w = or i64 %i.v, 1
  store i64 %i.w, ptr %i.d, align 8, !tbaa !73
  %i.x = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.k unwind label %bb.r, !inline_history !77 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.m unwind label %bb.r, !inline_history !77

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.y, ptr %i.g, align 8, !tbaa !75
  %i.z = load i64, ptr %i.d, align 8, !tbaa !73
  %i.aa = and i64 %i.z, 4
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.n, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ab = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.o, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.r, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.o, %bb.n, %bb.m
  %i.ad = load i8, ptr %i.f, align 8, !tbaa !74, !range !25, !noundef !26
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.f, align 8, !tbaa !74
  br i1 %i.ae, label %bb.p, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.p:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.e, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i17 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i17, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i18, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i18

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i18: ; preds = %bb.q, %bb.p
  %i.ah = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.r:                                             ; preds = %bb.o, %bb.l, %bb.j
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret i32 %i.u

bb.s:                                             ; preds = %.critedge14
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.t:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi18EEERS2_RAT__Kc.exit, %bb.h, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.pn = phi { ptr, i32 } [ %i.am, %bb.u ], [ %i.al, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %common.resume

common.resume:                                    ; preds = %bb.v, %bb.s
  %.pn12 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %.pn, %bb.v ]
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn12
}

; Function Attrs: uwtable
define void @grpc_channel_watch_connectivity_state(ptr noundef %0, i32 noundef %1, i64 %2, i64 %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %6 = alloca %"class.grpc_core::ExecCtx", align 8 ; 15 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %.sroa.3.8.extract.trunc = trunc i64 %3 to i32
  %.sroa.6.8.extract.shift = lshr i64 %3, 32
  %.sroa.6.8.extract.trunc = trunc nuw i64 %.sroa.6.8.extract.shift to i32
  store ptr %0, ptr %i.f, align 8, !tbaa !61
  store ptr %4, ptr %i.g, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %6, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 4 uses
  store i8 0, ptr %i.k, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !76
  %i.o = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i unwind label %bb.f

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtxC2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load i8, ptr %i.k, align 8, !tbaa !74, !range !25, !noundef !26
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.v = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.u, ptr %i.v, align 8, !tbaa !82
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %.pn17, %bb.af ], [ %i.q, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, %bb.e
  store ptr %6, ptr %i.l, align 8, !tbaa !75
  %i.w = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core9api_traceE, i64 8) monotonic, align 8, !range !25, !noundef !26
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.i, label %.critedge19, !prof !56

bb.i:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 213) #36
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 46, ptr nonnull @.str.22)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit: ; preds = %bb.j
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.k unwind label %bb.ad      ; 2 uses

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 22, ptr nonnull @.str.23)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %1, ptr %i.e, align 4, !tbaa !48
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.l unwind label %bb.ad      ; 2 uses

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 34, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8, !tbaa !57
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.m unwind label %bb.ad      ; 2 uses

bb.m:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 11, ptr nonnull @.str.15)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.3.8.extract.trunc, ptr %i.c, align 4, !tbaa !48
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.n unwind label %bb.ad      ; 2 uses

bb.n:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 14, ptr nonnull @.str.16)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.6.8.extract.trunc, ptr %i.b, align 4, !tbaa !48
  %i.ac = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %bb.ad      ; 2 uses

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 7, ptr nonnull @.str.24)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit: ; preds = %bb.o
  %i.ad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP21grpc_completion_queueEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.p unwind label %bb.ad      ; 2 uses

bb.p:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 6, ptr nonnull @.str.25)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %5, ptr %i.a, align 8, !tbaa !49
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.q unwind label %bb.ad      ; 2 uses

bb.q:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.ad

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.q
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %.critedge unwind label %bb.ad

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.critedge19

.critedge19:                                      ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit, %.critedge
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !61  ; 2 uses
  %i.ag = invoke i64 @_ZN9grpc_core9Timestamp19FromTimespecRoundUpE12gpr_timespec(i64 %2, i64 %3)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %.critedge19
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(152) %i.af, i32 noundef %1, i64 %i.ag, ptr noundef %i.ah, ptr noundef %5)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %6, align 8, !tbaa !28
  %i.al = load i64, ptr %i.i, align 8, !tbaa !73
  %i.am = or i64 %i.al, 1
  store i64 %i.am, ptr %i.i, align 8, !tbaa !73
  %i.an = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.t unwind label %bb.aa, !inline_history !77 ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.v unwind label %bb.aa, !inline_history !77

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr %i.ao, ptr %i.l, align 8, !tbaa !75
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !73
  %i.aq = and i64 %i.ap, 4
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.w, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ar = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.x, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.aa, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.x, %bb.w, %bb.v
  %i.at = load i8, ptr %i.k, align 8, !tbaa !74, !range !25, !noundef !26
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.k, align 8, !tbaa !74
  br i1 %i.au, label %bb.y, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.y:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.j, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i24 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i24, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i25, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i25

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i25: ; preds = %bb.z, %bb.y
  %i.ax = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.aa:                                            ; preds = %bb.x, %bb.u, %bb.s
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void

bb.ab:                                            ; preds = %bb.r, %.critedge19
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.q, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit, %bb.p, %bb.o, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi15EEERS2_RAT__Kc.exit, %bb.n, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.m, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit, %bb.l, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi23EEERS2_RAT__Kc.exit, %bb.k, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi8EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.ad ], [ %i.bb, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn17 = phi { ptr, i32 } [ %i.ba, %bb.ab ], [ %.pn, %bb.ae ]
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %common.resume
}

; Function Attrs: uwtable
define void @_Z17grpc_channel_pingP12grpc_channelP21grpc_completion_queuePvS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.grpc_core::ExecCtx", align 8 ; 15 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !61
  store ptr %1, ptr %i.d, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %4, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.f, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  store i8 0, ptr %i.h, align 8, !tbaa !74
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E) ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !76
  %i.l = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, !prof !56

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i unwind label %bb.f

_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i:     ; preds = %bb.d, %bb.c
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtxC2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtxC2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load i8, ptr %i.h, align 8, !tbaa !74, !range !25, !noundef !26
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.s = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !82
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %.pn16.pn, %bb.ag ], [ %i.n, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZN9grpc_core7ExecCtxC2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15IncExecCtxCountEv.exit.i, %bb.e
  store ptr %4, ptr %i.i, align 8, !tbaa !75
  %i.t = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core9api_traceE, i64 8) monotonic, align 8, !range !25, !noundef !26
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %.critedge19, !prof !56

bb.i:                                             ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 228) #36
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 26, ptr nonnull @.str.26)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit unwind label %bb.r

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit: ; preds = %bb.j
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP12grpc_channelEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.k unwind label %bb.r       ; 2 uses

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 5, ptr nonnull @.str.27)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit unwind label %bb.r

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit: ; preds = %bb.k
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP21grpc_completion_queueEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.l unwind label %bb.r       ; 2 uses

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 6, ptr nonnull @.str.25)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.r

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8, !tbaa !49
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.m unwind label %bb.r       ; 2 uses

bb.m:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 11, ptr nonnull @.str.8)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.r

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.a, align 8, !tbaa !49
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %bb.r       ; 2 uses

bb.n:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 1, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.r

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.n
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %.critedge unwind label %bb.r

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.critedge19

.critedge19:                                      ; preds = %_ZN9grpc_core7ExecCtxC2Ev.exit, %.critedge
  %i.z = icmp eq ptr %3, null
  br i1 %i.z, label %bb.p, label %bb.o, !prof !85

bb.o:                                             ; preds = %.critedge19
  %i.aa = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @.str.28)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplIPvDnEEPKcRKT_RKT0_S5_.exit unwind label %bb.t

bb.p:                                             ; preds = %.critedge19
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !61  ; 2 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(152) %i.ab, ptr noundef %i.ac, ptr noundef %2)
          to label %bb.x unwind label %bb.t

bb.q:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.n, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.m, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit, %bb.l, %bb.k, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi27EEERS2_RAT__Kc.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #37
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.ag, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ag

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZN4absl12lts_2025051212log_internal12Check_EQImplIPvDnEEPKcRKT_RKT0_S5_.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull %i.aa) #36
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplIPvDnEEPKcRKT_RKT0_S5_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit22 unwind label %bb.w

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit22: ; preds = %bb.u
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  unreachable

bb.v:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplIPvDnEEPKcRKT_RKT0_S5_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.ag

bb.w:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #33
  unreachable

bb.x:                                             ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %4, align 8, !tbaa !28
  %i.al = load i64, ptr %i.f, align 8, !tbaa !73
  %i.am = or i64 %i.al, 1
  store i64 %i.am, ptr %i.f, align 8, !tbaa !73
  %i.an = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.y unwind label %bb.af, !inline_history !77 ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !76
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.aa unwind label %bb.af, !inline_history !77

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !75
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !73
  %i.aq = and i64 %i.ap, 4
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.ab, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ar = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.ac, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.af, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.at = load i8, ptr %i.h, align 8, !tbaa !74, !range !25, !noundef !26
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.h, align 8, !tbaa !74
  br i1 %i.au, label %bb.ad, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.ad:                                            ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.g, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i25 = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i25, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i26, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i26

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i26: ; preds = %bb.ae, %bb.ad
  %i.ax = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.af:                                            ; preds = %bb.ac, %bb.z, %bb.x
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.ag:                                            ; preds = %bb.t, %bb.v, %bb.s
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.ai, %bb.t ], [ %i.aj, %bb.v ]
  call void @_ZN9grpc_core7ExecCtxD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #11 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core14promise_detail10UnwakeableE, i64 16), ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.29() #12 section ".text.startup" comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 8
  %i.c = tail call noundef zeroext i16 @_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE(ptr noundef nonnull @_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv)
  store i16 %i.c, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 2, !tbaa !94
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit, !prof !180

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits) #31
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i8 0, i64 24, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits) #31
  br label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit

_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !183 ; 3 uses
  %i.e = load ptr, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, align 8, !tbaa !184 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !185
  %.not.i2 = icmp eq ptr %i.d, %i.j
  br i1 %.not.i2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit
  store ptr %0, ptr %i.d, align 8, !tbaa !49
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !183
  br label %_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit
  %i.m = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
  unreachable

_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.i ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.i
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #34 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !49
  %i.u = icmp sgt i64 %i.h, 0
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !185
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.y) #35
  br label %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, align 8, !tbaa !184
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !183
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !185
  br label %_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.aa = trunc i64 %i.i to i16
  ret i16 %i.aa
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv(ptr noundef %0) #13 comdat {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.30() #12 section ".text.startup" comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, align 8
  %i.c = tail call noundef zeroext i16 @_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE(ptr noundef nonnull @_ZN9grpc_core12arena_detail19DestroyArenaContextINS_8channelz8CallNodeEEEvPv)
  store i16 %i.c, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E, align 2, !tbaa !94
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN9grpc_core12arena_detail18ArenaContextTraitsINS_8channelz8CallNodeEE3id_E) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core12arena_detail19DestroyArenaContextINS_8channelz8CallNodeEEEvPv(ptr noundef %0) #13 comdat {
bb.a:
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.31() #12 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E) personality ptr @__gxx_personality_v0 {
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
end_hunk_1
begin_hunk_2_@_ZN9grpc_core7ChannelD2Ev:bb.a

_ZN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit: ; preds = %_ZNSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EN9grpc_core7Channel14RegisteredCallESt4lessIS7_ESaIS0_IKS7_SA_EEED2Ev.exit, %.noexc.i, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9grpc_core13RefCountedPtrINS_8channelz11ChannelNodeEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ChannelD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK9grpc_core7Channel13channel_stackEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core7Channel9is_clientEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK9grpc_core7Channel12is_promisingEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !inline_history !208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !48   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !inline_history !208
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210
  tail call void @_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !211  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 96
  tail call void @_ZN9grpc_core7Channel14RegisteredCallD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.f) #31
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.k = load i64, ptr %i.i, align 8, !tbaa !16
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #35
  br label %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 168) #35
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !209

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES0_IKS7_N9grpc_core7Channel14RegisteredCallEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !73
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i, !inline_history !77 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i, !inline_history !77

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !75
  %i.h = load i64, ptr %i.a, align 8, !tbaa !73
  %i.i = and i64 %i.h, 4
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !25, !noundef !26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !56

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.i, !inline_history !77

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !74, !range !25, !noundef !26
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !74
  br i1 %i.n, label %bb.g, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #31, !inline_history !77
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !82
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33, !inline_history !77
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i
  tail call void @abort() #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #20

declare noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPvEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #23

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 1) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #25

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZN9grpc_core13PerCpuOptions6ShardsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #26

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #24

declare void @grpc_slice_from_copied_buffer(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK9grpc_core11ChannelArgs14GetVoidPointerESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN17grpc_event_engine12experimental15MemoryAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 8 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental8internal19MemoryAllocatorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !55
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !212
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31, !inline_history !212
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental8internal19MemoryAllocatorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !48
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.j, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental8internal19MemoryAllocatorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #31
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental8internal19MemoryAllocatorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental8internal19MemoryAllocatorImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNKSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS7_SA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34   ; 4 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 3 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.e, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.h = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i) #31 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
end_hunk_2
