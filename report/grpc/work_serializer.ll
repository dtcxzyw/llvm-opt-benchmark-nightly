Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/work_serializer?download=true
inline.NumInlined: 581
inline.NumDeleted: 310
begin_hunk_0_@_ZN9grpc_core14WorkSerializer18WorkSerializerImplD2Ev:bb.a
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !137
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !137
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !80
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.m, label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25
  br label %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS5_EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 16, !tbaa !45
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS5_EED2Ev.exit1, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 16 dereferenceable(48) %i.ae)
          to label %_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS5_EED2Ev.exit1 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN4absl12lts_2025051213InlinedVectorIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS5_EED2Ev.exit1: ; preds = %_ZNSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core14WorkSerializer18WorkSerializerImplD0Ev(ptr noundef nonnull align 16 dereferenceable(192) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN9grpc_core14WorkSerializer18WorkSerializerImplD2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn8_N9grpc_core14WorkSerializer18WorkSerializerImplD1Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN9grpc_core14WorkSerializer18WorkSerializerImplD2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.a) #25
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn8_N9grpc_core14WorkSerializer18WorkSerializerImplD0Ev(ptr noundef %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN9grpc_core14WorkSerializer18WorkSerializerImplD2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.a) #25, !inline_history !142
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(192) %i.a, i64 noundef 192) #29, !inline_history !142
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #10 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E) personality ptr @__gxx_personality_v0 {
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
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, i64 8), align 8, !tbaa !93
  %i.e = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 4264) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 3 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #28 ; 2 uses
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %_ZN9grpc_core10NoDestructINS_20GlobalStatsCollectorEEC2IJEEEDpOT_.exit, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.b
  %i.k = add i64 %i.g, -4264
  %i.l = urem i64 %i.k, 4264
  %i.m = sub i64 %i.g, %i.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.m, i1 false)
  br label %_ZN9grpc_core10NoDestructINS_20GlobalStatsCollectorEEC2IJEEEDpOT_.exit

_ZN9grpc_core10NoDestructINS_20GlobalStatsCollectorEEC2IJEEEDpOT_.exit: ; preds = %bb.b, %.loopexit.loopexit.i.i.i
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E, i64 16), align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %_ZN9grpc_core10NoDestructINS_20GlobalStatsCollectorEEC2IJEEEDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.3() #10 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E) personality ptr @__gxx_personality_v0 {
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
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E, i64 8), align 8, !tbaa !151
  %i.e = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.d, i64 4024) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 3 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #28 ; 2 uses
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %_ZN9grpc_core10NoDestructINS_25Http2GlobalStatsCollectorEEC2IJEEEDpOT_.exit, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.b
  %i.k = add i64 %i.g, -4024
  %i.l = urem i64 %i.k, 4024
  %i.m = sub i64 %i.g, %i.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.m, i1 false)
  br label %_ZN9grpc_core10NoDestructINS_25Http2GlobalStatsCollectorEEC2IJEEEDpOT_.exit

_ZN9grpc_core10NoDestructINS_25Http2GlobalStatsCollectorEEC2IJEEEDpOT_.exit: ; preds = %bb.b, %.loopexit.loopexit.i.i.i
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19NoDestructSingletonINS_25Http2GlobalStatsCollectorEE6value_E, i64 16), align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %_ZN9grpc_core10NoDestructINS_25Http2GlobalStatsCollectorEEC2IJEEEDpOT_.exit, %bb.a
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(4264) ptr @_ZN9grpc_core6PerCpuINS_20GlobalStatsCollector4DataEE8this_cpuEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core20PerCpuShardingHelper6state_E, null
  br i1 %.not.i.i, label %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.i, label %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.thread.i

_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.i: ; preds = %bb.a
  %i.a = tail call noundef align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZN9grpc_core20PerCpuShardingHelper6state_E) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !155  ; 2 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %.thread8.i, label %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit4.thread.i, !prof !47

_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.thread.i: ; preds = %bb.a
  tail call void @_ZTHN9grpc_core20PerCpuShardingHelper6state_E()
  %i.e = tail call noundef align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZN9grpc_core20PerCpuShardingHelper6state_E) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !155
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.b, label %.thread7.i, !prof !47

.thread8.i:                                       ; preds = %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.i
  %i.i = tail call i32 @gpr_cpu_current_cpu()
  %.sroa.0.0.insert.insert10.i = or i32 %i.i, -65536
  store i32 %.sroa.0.0.insert.insert10.i, ptr %i.a, align 2
  br label %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit4.thread.i

bb.b:                                             ; preds = %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.thread.i
  %i.j = tail call i32 @gpr_cpu_current_cpu()
  tail call void @_ZTHN9grpc_core20PerCpuShardingHelper6state_E()
  %.sroa.0.0.insert.insert.i = or i32 %i.j, -65536
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.e, align 2
  br label %.thread7.i

_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit4.thread.i: ; preds = %.thread8.i, %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.i
  %i.k = phi i16 [ -1, %.thread8.i ], [ %i.c, %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.i ]
  %i.l = add i16 %i.k, -1
  store i16 %i.l, ptr %i.b, align 2, !tbaa !155
  br label %_ZN9grpc_core20PerCpuShardingHelper15GetShardingBitsEv.exit

.thread7.i:                                       ; preds = %bb.b, %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit.thread.i
  tail call void @_ZTHN9grpc_core20PerCpuShardingHelper6state_E()
  %i.m = load i16, ptr %i.f, align 2, !tbaa !155
  %i.n = add i16 %i.m, -1
  store i16 %i.n, ptr %i.f, align 2, !tbaa !155
  tail call void @_ZTHN9grpc_core20PerCpuShardingHelper6state_E()
  br label %_ZN9grpc_core20PerCpuShardingHelper15GetShardingBitsEv.exit

_ZN9grpc_core20PerCpuShardingHelper15GetShardingBitsEv.exit: ; preds = %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit4.thread.i, %.thread7.i
  %i.o = phi ptr [ %i.a, %_ZTWN9grpc_core20PerCpuShardingHelper6state_E.exit4.thread.i ], [ %i.e, %.thread7.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i16, ptr %i.o, align 2, !tbaa !156
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !93
  %i.u = urem i64 %i.r, %i.t
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw [4264 x i8], ptr %i.v, i64 %i.u
  ret ptr %i.w
}

declare i32 @gpr_cpu_current_cpu() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core10latent_see4Flow9AppendEndERNS0_8AppenderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53
  %i.d = sub nsw i64 0, %i.c
  %i.e = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  %i.f = sub nsw i64 0, %i.e
  tail call void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.a, i64 noundef %i.d, i64 noundef %i.f)
  store i64 0, ptr %i.b, align 8, !tbaa !53
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.35", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.35", align 8 ; 8 uses
  %6 = alloca %"class.std::unique_ptr.35", align 8 ; 4 uses
  %.not.i = icmp eq ptr @_ZTHN9grpc_core10latent_see8Appender4bin_E, null ; 2 uses
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core10latent_see8Appender4bin_E) ; 13 uses
  br i1 %.not.i, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us: ; preds = %bb.a, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit19.us
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i11.us = icmp eq ptr %i.b, null
  br i1 %.not.i11.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit13.us, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit15.us, !prof !47

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit13.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZSt11make_uniqueIN9grpc_core10latent_see3BinEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.35") align 8 %4)
  %i.c = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 0 uses
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit15.us

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit15.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit13.us, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us
  %i.d = phi ptr [ %.pre, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit13.us ], [ %i.b, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us ] ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.h = add i64 %i.g, -8161
  %i.i = icmp ult i64 %i.h, -8193
  br i1 %i.i, label %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.thread.us, label %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit

_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.thread.us: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit15.us
  %i.j = load ptr, ptr %0, align 8, !tbaa !56
  store i64 %i.e, ptr %5, align 8, !tbaa !102
  store ptr null, ptr %i.a, align 8, !tbaa !102
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 %5)
          to label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit19.us unwind label %.split41.us

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit19.us: ; preds = %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.thread.us
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEDn(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr null) #25 ; 0 uses
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.us, !llvm.loop !157

.split41.us:                                      ; preds = %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.thread.us
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread: ; preds = %bb.a, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit19
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !102
  %.not.i1122 = icmp eq ptr %i.m, null
  br i1 %.not.i1122, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit13, label %.thread23, !prof !47

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit13: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZSt11make_uniqueIN9grpc_core10latent_see3BinEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.35") align 8 %4)
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 0 uses
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.thread23

.thread23:                                        ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit13, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.o = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !100  ; 2 uses
  %i.r = add i64 %i.q, -8161
  %i.s = icmp ult i64 %i.r, -8193
  br i1 %i.s, label %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.thread, label %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.loopexit43

_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.loopexit43: ; preds = %.thread23
  %i.t = ptrtoint ptr %i.o to i64
  br label %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit

_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit: ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit15.us, %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.loopexit43
  %i.u = phi i64 [ %i.t, %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.loopexit43 ], [ %i.e, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit15.us ]
  %.us-phi = phi ptr [ %i.o, %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.loopexit43 ], [ %i.d, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit15.us ] ; 2 uses
  %.us-phi38 = phi i64 [ %i.q, %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.loopexit43 ], [ %i.g, %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit15.us ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.us-phi38 ; 3 uses
  store ptr %1, ptr %i.x, align 16, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %2, ptr %i.y, align 8, !tbaa !158
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.z, align 16, !tbaa !159
  %i.aa = add nsw i64 %.us-phi38, 32              ; 2 uses
  store i64 %i.aa, ptr %i.v, align 8, !tbaa !100
  %i.ab = icmp eq i64 %i.aa, 8192
  br i1 %i.ab, label %bb.b, label %bb.f, !prof !160

_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.thread: ; preds = %.thread23
  %i.ac = load ptr, ptr %0, align 8, !tbaa !56
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !102
  store i64 %i.ad, ptr %5, align 8, !tbaa !102
  store ptr null, ptr %i.a, align 8, !tbaa !102
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 8 %5)
          to label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit19 unwind label %.split41

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit19: ; preds = %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.thread
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEDn(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr null) #25 ; 0 uses
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit.thread, !llvm.loop !157

.split41:                                         ; preds = %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit.thread
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.b:                                             ; preds = %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !56
  br i1 %.not.i, label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit21, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZTHN9grpc_core10latent_see8Appender4bin_E()
  %.pre51 = load i64, ptr %i.a, align 8, !tbaa !102
  br label %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit21

_ZTWN9grpc_core10latent_see8Appender4bin_E.exit21: ; preds = %bb.b, %bb.c
  %i.ah = phi i64 [ %i.u, %bb.b ], [ %.pre51, %bb.c ]
  store i64 %i.ah, ptr %6, align 8, !tbaa !102
  store ptr null, ptr %i.a, align 8, !tbaa !102
  invoke void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.ag, ptr noundef nonnull align 8 %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit21
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  br label %bb.f

bb.e:                                             ; preds = %_ZTWN9grpc_core10latent_see8Appender4bin_E.exit21
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZN9grpc_core10latent_see3Bin6AppendEPKNS0_8MetadataEll.exit, %bb.d
  ret void

bb.g:                                             ; preds = %.split41, %.split41.us, %bb.e
  %.sink = phi ptr [ %6, %bb.e ], [ %5, %.split41.us ], [ %5, %.split41 ]
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %i.l, %.split41.us ], [ %i.af, %.split41 ]
  call void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #25
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN9grpc_core10latent_see3BinEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.35") align 8 %0) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8224) ptr @_Znwm(i64 noundef 8224) #28 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8224) %i.a, i8 0, i64 8224, i1 false)
  %i.b = invoke i64 @gpr_thd_currentid()
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !161
  store ptr %i.a, ptr %0, align 8, !tbaa !102
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8224) #29
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !102
  store ptr null, ptr %1, align 8, !tbaa !102
  %i.b = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !102
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt15__uniq_ptr_dataIN9grpc_core10latent_see3BinESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %.not6.i.i.i.i.i = icmp samesign eq i64 %i.e, 0
  br i1 %.not6.i.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %bb.d
  %i.f = phi i64 [ %i.n, %bb.d ], [ %i.e, %bb.b ]
  %.sroa.01.07.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i.i, %bb.d ], [ %i.c, %bb.b ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.01.07.i.i.i.i.i, align 16, !tbaa !104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !108  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i.i.i, i64 32
  invoke void %i.l(ptr noundef nonnull %i.m)
          to label %._crit_edge8.i.i.i.i.i unwind label %bb.e

._crit_edge8.i.i.i.i.i:                           ; preds = %bb.c
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.01.07.i.i.i.i.i, align 16, !tbaa !104
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 32
  %.pre9.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !108
  %.pre10.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !100
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
  tail call void @__clang_call_terminate(ptr %i.t) #26
  unreachable

_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i.i: ; preds = %bb.d, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8224) #29
  br label %_ZNSt15__uniq_ptr_dataIN9grpc_core10latent_see3BinESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit

_ZNSt15__uniq_ptr_dataIN9grpc_core10latent_see3BinESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not6.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not6.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.e = phi i64 [ %i.m, %bb.d ], [ %i.d, %bb.b ]
  %.sroa.01.07.i.i = phi ptr [ %storemerge.i.i.i, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %i.f = load ptr, ptr %.sroa.01.07.i.i, align 16, !tbaa !104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i, i64 32
  invoke void %i.k(ptr noundef nonnull %i.l)
          to label %._crit_edge8.i.i unwind label %bb.e

._crit_edge8.i.i:                                 ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %.sroa.01.07.i.i, align 16, !tbaa !104
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 32
  %.pre9.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !108
  %.pre10.i.i = load i64, ptr %i.c, align 8, !tbaa !100
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
  tail call void @__clang_call_terminate(ptr %i.s) #26
  unreachable

_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit: ; preds = %bb.d, %bb.b
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef 8224) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit, %bb.a
  ret void
}

declare void @_ZN9grpc_core10latent_see4Sink6AppendESt10unique_ptrINS0_3BinESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EEaSEDn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !102
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not6.i.i.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not6.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.d
  %i.e = phi i64 [ %i.m, %bb.d ], [ %i.d, %bb.b ]
  %.sroa.01.07.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %i.f = load ptr, ptr %.sroa.01.07.i.i.i.i, align 16, !tbaa !104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.07.i.i.i.i, i64 32
  invoke void %i.k(ptr noundef nonnull %i.l)
          to label %._crit_edge8.i.i.i.i unwind label %bb.e

._crit_edge8.i.i.i.i:                             ; preds = %bb.c
  %.pre.i.i.i.i = load ptr, ptr %.sroa.01.07.i.i.i.i, align 16, !tbaa !104
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 32
  %.pre9.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !108
  %.pre10.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !100
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge8.i.i.i.i, %.lr.ph.i.i.i.i
  %i.m = phi i64 [ %.pre10.i.i.i.i, %._crit_edge8.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.n = phi i32 [ %.pre9.i.i.i.i, %._crit_edge8.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i ]
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %.sroa.01.07.i.i.i.i, i64 %i.o
  %storemerge.i.i.i.i.i = getelementptr i8, ptr %i.p, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, %i.q
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #26
  unreachable

_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i: ; preds = %bb.d, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8224) #29
  br label %_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN9grpc_core10latent_see3BinESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN9grpc_core10latent_see3BinEEclEPS2_.exit.i.i
  ret ptr %0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

declare i64 @gpr_thd_currentid() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN9grpc_core7ExecCtxD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core7ExecCtxE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !68
  %i.c = or i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !68
  %i.d = invoke noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.i, !inline_history !73 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %bb.d unwind label %bb.i, !inline_history !73

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !70
  %i.h = load i64, ptr %i.a, align 8, !tbaa !68
  %i.i = and i64 %i.h, 4
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load atomic i8, ptr @_ZN9grpc_core4Fork16support_enabled_E monotonic, align 1, !range !40, !noundef !41
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, !prof !47

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv()
          to label %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i unwind label %bb.i, !inline_history !73

_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i:     ; preds = %bb.f, %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !69, !range !40, !noundef !41
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !69
  br i1 %i.n, label %bb.g, label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.g:                                             ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN9grpc_core9Timestamp12ScopedSourceE, i64 16), ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #25, !inline_history !73
  br label %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i

_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.r = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !78
  br label %_ZN9grpc_core7ExecCtxD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #26, !inline_history !73
  unreachable

_ZN9grpc_core7ExecCtxD2Ev.exit:                   ; preds = %_ZN9grpc_core4Fork15DecExecCtxCountEv.exit.i, %_ZNSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE10_M_destroyEv.exit.i.i.i.i
  tail call void @abort() #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN9grpc_core7ExecCtx18CheckReadyToFinishEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN9grpc_core4Fork17DoIncExecCtxCountEv() local_unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core9Timestamp12ScopedSource15InvalidateCacheEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #18

declare noundef i32 @_ZN9grpc_core22Histogram_100000_20_649BucketForEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core10latent_see4Flow11AppendBeginERNS0_8AppenderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = atomicrmw add ptr @_ZN9grpc_core10latent_see4Flow8next_id_E, i64 1 monotonic, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.b, align 8, !tbaa !53
  %i.c = load ptr, ptr %0, align 8, !tbaa !72
  %i.d = sub nsw i64 0, %i.a
  %i.e = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  tail call void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.c, i64 noundef %i.d, i64 noundef %i.e)
  ret void
}

declare noundef zeroext i1 @_ZN9grpc_core7ExecCtx5FlushEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare void @_ZN9grpc_core4Fork17DoDecExecCtxCountEv() local_unnamed_addr #2

declare noundef i32 @_ZN9grpc_core21Histogram_10000_20_649BucketForEi(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2) #11 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 16 dereferenceable(48) %0) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !tbaa !45    ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = select i1 %i.b, ptr %i.d, ptr %i.c
  %i.f = lshr i64 %i.a, 1                         ; 2 uses
  %.not5.i = icmp eq i64 %i.f, 0
  br i1 %.not5.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.g, %.lr.ph.i ], [ %i.f, %bb.a ]
  %i.g = add nsw i64 %.06.i, -1                   ; 3 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !49
  tail call void %i.j(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.h, ptr noundef nonnull align 16 dereferenceable(32) %i.h) #25, !inline_history !3
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load i64, ptr %0, align 16, !tbaa !45
  br label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit.loopexit, %bb.a
  %i.k = phi i64 [ %.pre, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit.loopexit ], [ %i.a, %bb.a ]
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE21DeallocateIfAllocatedEv.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit
  %i.m = load ptr, ptr %i.c, align 16, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !80
  %i.p = shl i64 %i.o, 5
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #29
  br label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE21DeallocateIfAllocatedEv.exit

_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE21DeallocateIfAllocatedEv.exit: ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !162
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !80
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !83   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !162
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i64 @_ZN9grpc_core13PerCpuOptions6ShardsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 16 dereferenceable(32) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15EmplaceBackSlowIJNS0_12AnyInvocableIFvvEEERNS3_13DebugLocationEEEERS6_DpOT_(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !tbaa !45, !noalias !166 ; 2 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 16, !noalias !166
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !166
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 4 uses
  %i.g = shl i64 %i.f, 1
  %i.h = select i1 %i.b, i64 %i.g, i64 2          ; 4 uses
  %i.i = icmp ugt i64 %i.h, 288230376151711743
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 576460752303423487
  br i1 %i.j, label %.noexc, label %.noexc14

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.noexc14:                                         ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.a
  %i.k = shl nuw nsw i64 %i.h, 5
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #28 ; 3 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.sink1.i ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !49
  tail call void %i.o(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %i.m) #25, !inline_history !165
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load <2 x ptr>, ptr %i.n, align 16, !tbaa !50
  store <2 x ptr> %i.r, ptr %i.p, align 16, !tbaa !50
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.n, align 16, !tbaa !49
  store ptr null, ptr %i.q, align 8, !tbaa !51
  %.not.i = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i, %.lr.ph.i
  %.sroa.021.0 = phi ptr [ %i.y, %.lr.ph.i ], [ %.sink2.i, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i ] ; 4 uses
  %.012.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.012.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !49
  tail call void %i.u(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.021.0, ptr noundef nonnull align 16 dereferenceable(32) %i.s) #25, !inline_history !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 24
  %i.x = load <2 x ptr>, ptr %i.t, align 16, !tbaa !50
  store <2 x ptr> %i.x, ptr %i.v, align 16, !tbaa !50
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.t, align 16, !tbaa !49
  store ptr null, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 32
  %i.z = add nuw nsw i64 %.012.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %.sink1.i
  br i1 %exitcond.not.i, label %.lr.ph.i16, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i16:                                       ; preds = %.lr.ph.i, %.lr.ph.i16
  %.06.i = phi i64 [ %i.aa, %.lr.ph.i16 ], [ %.sink1.i, %.lr.ph.i ]
  %i.aa = add nsw i64 %.06.i, -1                  ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sink2.i, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !49
  tail call void %i.ad(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.ab, ptr noundef nonnull align 16 dereferenceable(32) %i.ab) #25, !inline_history !3
  %.not.i17 = icmp eq i64 %i.aa, 0
  br i1 %.not.i17, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit, label %.lr.ph.i16, !llvm.loop !1

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit: ; preds = %.lr.ph.i16, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i
  %i.ae = load i64, ptr %0, align 16, !tbaa !45   ; 2 uses
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.c, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit
  %i.ag = load ptr, ptr %i.c, align 16, !tbaa !80
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !80
  %i.ai = shl i64 %i.ah, 5
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #29
  %.pre = load i64, ptr %0, align 16, !tbaa !45
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEED2Ev.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit
  %i.aj = phi i64 [ %.pre, %bb.c ], [ %i.ae, %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit ]
  store ptr %i.l, ptr %i.c, align 16, !tbaa !80
  store i64 %i.h, ptr %i.e, align 8, !tbaa !80
  %i.ak = or i64 %i.aj, 1
  %i.al = add i64 %i.ak, 2
  store i64 %i.al, ptr %0, align 16, !tbaa !45
  ret ptr %i.m
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE11ShrinkToFitEv(ptr noundef nonnull align 16 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80  ; 4 uses
  %i.c = load i64, ptr %0, align 16, !tbaa !45    ; 4 uses
  %i.d = lshr i64 %i.c, 1                         ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80   ; 4 uses
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEED2Ev.exit, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.c, 3
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, 576460752303423487
  br i1 %i.i, label %bb.d, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.j, label %.noexc, label %.noexc25

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.noexc25:                                         ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.d, 5                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #28 ; 3 uses
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %.lr.ph.preheader.i, label %bb.i

bb.e:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.thread56, label %.lr.ph.preheader.i

.thread56:                                        ; preds = %bb.e
  %i.m = shl i64 %i.f, 5
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.m) #29
  br label %bb.h

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i, %bb.e
  %.01948 = phi ptr [ %i.a, %bb.e ], [ %i.l, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i ]
  %.sroa.033.046 = phi ptr [ null, %bb.e ], [ %i.l, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i ] ; 2 uses
  %.sroa.10.044 = phi i64 [ 0, %bb.e ], [ %i.d, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.sroa.032.0 = phi ptr [ %i.b, %.lr.ph.preheader.i ], [ %i.t, %.lr.ph.i ] ; 4 uses
  %.012.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.01948, i64 %.012.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !49
  tail call void %i.p(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.032.0, ptr noundef nonnull align 16 dereferenceable(32) %i.n) #25, !inline_history !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 24
  %i.s = load <2 x ptr>, ptr %i.o, align 16, !tbaa !50
  store <2 x ptr> %i.s, ptr %i.q, align 16, !tbaa !50
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.o, align 16, !tbaa !49
  store ptr null, ptr %i.r, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 32
  %i.u = add nuw i64 %.012.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.d
  br i1 %exitcond.not.i, label %.lr.ph.i27, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i27:                                       ; preds = %.lr.ph.i, %.lr.ph.i27
  %.06.i = phi i64 [ %i.v, %.lr.ph.i27 ], [ %i.d, %.lr.ph.i ]
  %i.v = add i64 %.06.i, -1                       ; 3 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !49
  tail call void %i.y(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.w) #25, !inline_history !3
  %.not.i28 = icmp eq i64 %i.v, 0
  br i1 %.not.i28, label %bb.f, label %.lr.ph.i27, !llvm.loop !1

bb.f:                                             ; preds = %.lr.ph.i27
  %i.z = shl i64 %i.f, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.z) #29
  %.not65 = icmp eq ptr %.sroa.033.046, null
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.sroa.033.046, ptr %i.a, align 16, !tbaa !80
  store i64 %.sroa.10.044, ptr %i.e, align 8, !tbaa !80
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEED2Ev.exit

bb.h:                                             ; preds = %.thread56, %bb.f
  %i.aa = load i64, ptr %0, align 16, !tbaa !45
  %i.ab = and i64 %i.aa, -2
  store i64 %i.ab, ptr %0, align 16, !tbaa !45
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEED2Ev.exit

bb.i:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE8AllocateERS7_m.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.k) #29
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEED2Ev.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEED2Ev.exit: ; preds = %bb.h, %bb.g, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE19SwapInlinedElementsINS8_21ElementwiseSwapPolicyEEEvT_PS8_(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.grpc_core::WorkSerializer::WorkSerializerImpl::CallbackWrapper", align 16 ; 5 uses
  %i.a = load i64, ptr %0, align 16, !tbaa !45    ; 3 uses
  %i.b = lshr i64 %i.a, 1
  %i.c = load i64, ptr %1, align 8, !tbaa !45     ; 3 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = icmp samesign ugt i64 %i.b, %i.d         ; 4 uses
  %spec.select = select i1 %i.e, ptr %0, ptr %1
  %spec.select22 = select i1 %i.e, ptr %1, ptr %0
  %i.f = select i1 %i.e, i64 %i.c, i64 %i.a
  %i.g = lshr i64 %i.f, 1                         ; 5 uses
  %i.h = select i1 %i.e, i64 %i.a, i64 %i.c
  %i.i = lshr i64 %i.h, 1
  %i.j = sub nsw i64 %i.i, %i.g                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %.not8.i.i = icmp eq i64 %i.g, 0
  br i1 %.not8.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE5SwapNENS8_21ElementwiseSwapPolicyEPS8_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.z, %bb.b ] ; 5 uses
  %.079.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.y, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !49
  call void %i.p(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %.079.i.i, ptr noundef nonnull align 16 dereferenceable(32) %2) #25, !inline_history !167
  %i.q = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24
  %i.r = load <2 x ptr>, ptr %i.o, align 16, !tbaa !50
  store <2 x ptr> %i.r, ptr %i.n, align 16, !tbaa !50
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.o, align 16, !tbaa !49
  store ptr null, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !49
  call void %i.t(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %.010.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.079.i.i) #25, !inline_history !168
  %i.u = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.v = load <2 x ptr>, ptr %i.s, align 16, !tbaa !50
  store <2 x ptr> %i.v, ptr %i.o, align 16, !tbaa !50
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.s, align 16, !tbaa !49
  store ptr null, ptr %i.u, align 8, !tbaa !51
  %i.w = load ptr, ptr %i.n, align 16, !tbaa !49
  call void %i.w(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %.010.i.i) #25, !inline_history !168
  %i.x = load <2 x ptr>, ptr %i.n, align 16, !tbaa !50
  store <2 x ptr> %i.x, ptr %i.s, align 16, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32
  %.not.i.i = icmp eq ptr %i.y, %i.l
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE5SwapNENS8_21ElementwiseSwapPolicyEPS8_m.exit, label %bb.b, !llvm.loop !169

_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE5SwapNENS8_21ElementwiseSwapPolicyEPS8_m.exit: ; preds = %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.g ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select22, i64 16
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.g
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE5SwapNENS8_21ElementwiseSwapPolicyEPS8_m.exit, %.lr.ph.i
  %.sroa.011.0 = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ab, %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE5SwapNENS8_21ElementwiseSwapPolicyEPS8_m.exit ] ; 4 uses
  %.012.i = phi i64 [ %i.al, %.lr.ph.i ], [ 0, %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE5SwapNENS8_21ElementwiseSwapPolicyEPS8_m.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %.012.i ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !49
  call void %i.ag(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.011.0, ptr noundef nonnull align 16 dereferenceable(32) %i.ae) #25, !inline_history !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 24
  %i.aj = load <2 x ptr>, ptr %i.af, align 16, !tbaa !50
  store <2 x ptr> %i.aj, ptr %i.ah, align 16, !tbaa !50
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.af, align 16, !tbaa !49
  store ptr null, ptr %i.ai, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.0, i64 32
  %i.al = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.j
  br i1 %exitcond.not.i, label %.lr.ph.i9, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i9:                                        ; preds = %.lr.ph.i, %.lr.ph.i9
  %.06.i = phi i64 [ %i.am, %.lr.ph.i9 ], [ %i.j, %.lr.ph.i ]
  %i.am = add i64 %.06.i, -1                      ; 3 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !49
  call void %i.ap(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.an, ptr noundef nonnull align 16 dereferenceable(32) %i.an) #25, !inline_history !3
  %.not.i10 = icmp eq i64 %i.am, 0
  br i1 %.not.i10, label %_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit, label %.lr.ph.i9, !llvm.loop !1

_ZN4absl12lts_2025051223inlined_vector_internal14DestroyAdapterISaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEELb0EE15DestroyElementsERS7_PS6_m.exit: ; preds = %.lr.ph.i9, %_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE5SwapNENS8_21ElementwiseSwapPolicyEPS8_m.exit
  ret void
}

declare extern_weak void @_ZTHN9grpc_core20PerCpuShardingHelper6state_E() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

declare extern_weak void @_ZTHN9grpc_core10latent_see8Appender4bin_E() #2

declare extern_weak void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E() #2

declare extern_weak void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { cold }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !79}
!1 = distinct !{!1, !79}
!2 = distinct !{!2, !79}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null, null, null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN4absl12lts_202505125MutexE", !13, i64 0}
!15 = !{!"_ZTSN4absl12lts_2025051219ReleasableMutexLockE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTSN9grpc_core10OrphanableE"}
!18 = !{!"_ZTSN17grpc_event_engine12experimental11EventEngine7ClosureE"}
!19 = !{!"long", !9, i64 0}
!20 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageImLm1ELb0EEE", !19, i64 0}
!21 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJSaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEmEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !20, i64 0}
!22 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJSaIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperEEmEEE", !21, i64 0}
!23 = !{!"_ZTSN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EEE", !22, i64 0, !9, i64 16}
!24 = !{!"_ZTSN4absl12lts_2025051213InlinedVectorIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS5_EEE", !23, i64 0}
!25 = !{!"p1 _ZTSN17grpc_event_engine12experimental11EventEngineE", !13, i64 0}
!26 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!27 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0}
!28 = !{!"_ZTSSt12__shared_ptrIN17grpc_event_engine12experimental11EventEngineELN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0, !27, i64 8}
!29 = !{!"_ZTSSt10shared_ptrIN17grpc_event_engine12experimental11EventEngineEE", !28, i64 0}
!30 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !19, i64 0}
!31 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !30, i64 0}
!32 = !{!"bool", !9, i64 0}
!33 = !{!"_ZTSSt13__atomic_baseIlE", !19, i64 0}
!34 = !{!"_ZTSSt6atomicIlE", !33, i64 0}
!35 = !{!"_ZTSN4absl12lts_202505125MutexE", !34, i64 0}
!36 = !{!"p1 _ZTSN9grpc_core10latent_see8MetadataE", !13, i64 0}
!37 = !{!"_ZTSN9grpc_core10latent_see4FlowE", !36, i64 0, !19, i64 8}
!38 = !{!"_ZTSN9grpc_core14WorkSerializer18WorkSerializerImplE", !17, i64 0, !18, i64 8, !24, i64 16, !29, i64 64, !31, i64 80, !30, i64 88, !19, i64 96, !32, i64 104, !32, i64 105, !35, i64 112, !24, i64 128, !37, i64 176}
!39 = !{!38, !32, i64 104}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!38, !32, i64 105}
!43 = !{!"vtable pointer", !8, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!19, !19, i64 0}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{!"_ZTSN4absl12lts_2025051222internal_any_invocable8CoreImplILb0EvJEEE", !9, i64 0, !13, i64 16, !13, i64 24}
!49 = !{!48, !13, i64 16}
!50 = !{!13, !13, i64 0}
!51 = !{!48, !13, i64 24}
!52 = !{!28, !25, i64 0}
!53 = !{!37, !19, i64 8}
!54 = !{!"p1 _ZTSN9grpc_core10latent_see4SinkE", !13, i64 0}
!55 = !{!"_ZTSN9grpc_core10latent_see8AppenderE", !54, i64 0}
!56 = !{!55, !54, i64 0}
!57 = !{!"p1 _ZTS12grpc_closure", !13, i64 0}
!58 = !{!"_ZTS17grpc_closure_list", !57, i64 0, !57, i64 8}
!59 = !{!"p1 _ZTSN9grpc_core8CombinerE", !13, i64 0}
!60 = !{!"_ZTSN9grpc_core7ExecCtx12CombinerDataE", !59, i64 0, !59, i64 8}
!61 = !{!"_ZTSSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE", !9, i64 0, !32, i64 32}
!62 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core15ScopedTimeCacheELb1ELb0ELb0EE", !61, i64 0}
!63 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core15ScopedTimeCacheELb0ELb0ELb0EE", !62, i64 0}
!64 = !{!"_ZTSSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EE", !63, i64 0}
!65 = !{!"_ZTSSt8optionalIN9grpc_core15ScopedTimeCacheEE", !64, i64 0}
!66 = !{!"p1 _ZTSN9grpc_core7ExecCtxE", !13, i64 0}
!67 = !{!"_ZTSN9grpc_core7ExecCtxE", !58, i64 8, !60, i64 24, !19, i64 40, !65, i64 48, !66, i64 88}
!68 = !{!67, !19, i64 40}
!69 = !{!61, !32, i64 32}
!70 = !{!66, !66, i64 0}
!71 = !{!67, !66, i64 88}
!72 = !{!37, !36, i64 0}
!73 = !{ptr @_ZN9grpc_core7ExecCtxD2Ev}
!74 = !{!"_ZTSN9grpc_core9Timestamp6SourceE"}
!75 = !{!"p1 _ZTSN9grpc_core9Timestamp6SourceE", !13, i64 0}
!76 = !{!"_ZTSN9grpc_core9Timestamp12ScopedSourceE", !74, i64 0, !75, i64 8}
!77 = !{!76, !75, i64 8}
!78 = !{!75, !75, i64 0}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!9, !9, i64 0}
!81 = !{!"p1 _ZTSN9grpc_core14WorkSerializer18WorkSerializerImplE", !13, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!10, !10, i64 0}
!84 = !{!"_ZTSN9grpc_core20PerCpuShardingHelperE"}
!85 = !{!"p1 _ZTSN9grpc_core20GlobalStatsCollector4DataE", !13, i64 0}
!86 = !{!"_ZTSSt10_Head_baseILm0EPN9grpc_core20GlobalStatsCollector4DataELb0EE", !85, i64 0}
!87 = !{!"_ZTSSt11_Tuple_implILm0EJPN9grpc_core20GlobalStatsCollector4DataESt14default_deleteIA_S2_EEE", !86, i64 0}
!88 = !{!"_ZTSSt5tupleIJPN9grpc_core20GlobalStatsCollector4DataESt14default_deleteIA_S2_EEE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implIN9grpc_core20GlobalStatsCollector4DataESt14default_deleteIA_S2_EE", !88, i64 0}
!90 = !{!"_ZTSSt15__uniq_ptr_dataIN9grpc_core20GlobalStatsCollector4DataESt14default_deleteIA_S2_ELb1ELb1EE", !89, i64 0}
!91 = !{!"_ZTSSt10unique_ptrIA_N9grpc_core20GlobalStatsCollector4DataESt14default_deleteIS3_EE", !90, i64 0}
!92 = !{!"_ZTSN9grpc_core6PerCpuINS_20GlobalStatsCollector4DataEEE", !84, i64 0, !19, i64 8, !91, i64 16}
!93 = !{!92, !19, i64 8}
!94 = !{!85, !85, i64 0}
!95 = !{!"p1 _ZTSN9grpc_core32MultiProducerSingleConsumerQueue4NodeE", !13, i64 0}
!96 = !{!"_ZTSSt13__atomic_baseIPN9grpc_core32MultiProducerSingleConsumerQueue4NodeEE", !95, i64 0}
!97 = !{!"_ZTSSt6atomicIPN9grpc_core32MultiProducerSingleConsumerQueue4NodeEE", !96, i64 0}
!98 = !{!"_ZTSN9grpc_core32MultiProducerSingleConsumerQueue4NodeE", !97, i64 0}
!99 = !{!"_ZTSN9grpc_core10latent_see3BinE", !98, i64 0, !19, i64 8, !19, i64 16, !9, i64 32}
!100 = !{!99, !19, i64 8}
!101 = !{!"p1 _ZTSN9grpc_core10latent_see3BinE", !13, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"_ZTSN9grpc_core10latent_see3Bin5EventE", !36, i64 0, !19, i64 8, !19, i64 16}
!104 = !{!103, !36, i64 0}
!105 = !{!"p1 omnipotent char", !13, i64 0}
!106 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !19, i64 0, !105, i64 8}
!107 = !{!"_ZTSN9grpc_core10latent_see8MetadataE", !105, i64 0, !10, i64 8, !106, i64 16, !10, i64 32, !13, i64 40, !13, i64 48}
!108 = !{!107, !10, i64 32}
!109 = !{!107, !13, i64 40}
!110 = distinct !{!110, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15MakeStorageViewEv"}
!111 = distinct !{!111, !110, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15MakeStorageViewEv: argument 0"}
!112 = distinct !{null, null, null, null, null, null}
!113 = distinct !{!113, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15MakeStorageViewEv"}
!114 = distinct !{!114, !113, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15MakeStorageViewEv: argument 0"}
!115 = !{!111}
!116 = !{!114}
!117 = distinct !{null}
!118 = distinct !{null, null, null}
!119 = distinct !{null, null, null, null, null, null, null, null}
!120 = distinct !{null, null, null, null, null, null, null, null}
!121 = distinct !{!121, !79}
!122 = distinct !{null, null, null, null, null, null, null, null}
!123 = distinct !{null, null, null, null, null}
!124 = !{!"p1 _ZTSN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperE", !13, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{i64 0, i64 8, !125, i64 8, i64 8, !45}
!127 = !{!30, !19, i64 0}
!128 = !{!38, !19, i64 96}
!129 = distinct !{!129, !"_ZN9grpc_core14MakeOrphanableINS_14WorkSerializer18WorkSerializerImplEJSt10shared_ptrIN17grpc_event_engine12experimental11EventEngineEEEEESt10unique_ptrIT_NS_16OrphanableDeleteEEDpOT0_"}
!130 = distinct !{!130, !129, !"_ZN9grpc_core14MakeOrphanableINS_14WorkSerializer18WorkSerializerImplEJSt10shared_ptrIN17grpc_event_engine12experimental11EventEngineEEEEESt10unique_ptrIT_NS_16OrphanableDeleteEEDpOT0_: argument 0"}
!131 = !{!130}
!132 = !{!20, !19, i64 0}
!133 = !{!33, !19, i64 0}
!134 = distinct !{null}
!135 = distinct !{null, null, null}
!136 = distinct !{null}
!137 = distinct !{null, null, null}
!138 = !{!27, !26, i64 0}
!139 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!140 = !{!139, !10, i64 8}
!141 = !{!139, !10, i64 12}
!142 = !{ptr @_ZN9grpc_core14WorkSerializer18WorkSerializerImplD0Ev}
!143 = !{!"p1 _ZTSN9grpc_core25Http2GlobalStatsCollector4DataE", !13, i64 0}
!144 = !{!"_ZTSSt10_Head_baseILm0EPN9grpc_core25Http2GlobalStatsCollector4DataELb0EE", !143, i64 0}
!145 = !{!"_ZTSSt11_Tuple_implILm0EJPN9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIA_S2_EEE", !144, i64 0}
!146 = !{!"_ZTSSt5tupleIJPN9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIA_S2_EEE", !145, i64 0}
!147 = !{!"_ZTSSt15__uniq_ptr_implIN9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIA_S2_EE", !146, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_dataIN9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIA_S2_ELb1ELb1EE", !147, i64 0}
!149 = !{!"_ZTSSt10unique_ptrIA_N9grpc_core25Http2GlobalStatsCollector4DataESt14default_deleteIS3_EE", !148, i64 0}
!150 = !{!"_ZTSN9grpc_core6PerCpuINS_25Http2GlobalStatsCollector4DataEEE", !84, i64 0, !19, i64 8, !149, i64 16}
!151 = !{!150, !19, i64 8}
!152 = !{!143, !143, i64 0}
!153 = !{!"short", !9, i64 0}
!154 = !{!"_ZTSN9grpc_core20PerCpuShardingHelper5StateE", !153, i64 0, !153, i64 2}
!155 = !{!154, !153, i64 2}
!156 = !{!154, !153, i64 0}
!157 = distinct !{!157, !79}
!158 = !{!103, !19, i64 8}
!159 = !{!103, !19, i64 16}
!160 = !{!"branch_weights", i32 2097152, i32 -100663296}
!161 = !{!99, !19, i64 16}
!162 = distinct !{null}
!163 = distinct !{!163, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15MakeStorageViewEv"}
!164 = distinct !{!164, !163, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIN9grpc_core14WorkSerializer18WorkSerializerImpl15CallbackWrapperELm1ESaIS6_EE15MakeStorageViewEv: argument 0"}
!165 = distinct !{null, null, null, null}
!166 = !{!164}
!167 = distinct !{null, null, null, null, null, null, null, null}
!168 = distinct !{null, null, null, null, null, null, null, null}
!169 = distinct !{!169, !79}
end_hunk_0
