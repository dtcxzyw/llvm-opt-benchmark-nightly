Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/threading_control?download=true
inline.NumInlined: 610
inline.NumDeleted: 367
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3tbb6detail2r117threading_control7releaseEbb:bb.a
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !169
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  call void @_ZN3tbb6detail2r117thread_dispatcher7releaseEb(ptr noundef nonnull align 8 dereferenceable(152) %i.ad, i1 noundef zeroext %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, %bb.k
  %.0 = phi i1 [ %2, %bb.k ], [ false, %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw xchg ptr %i.a, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7releaseEv.exit unwind label %bb.c

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7releaseEv.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @_ZN3tbb6detail2r117threading_controlC2Ejj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !165
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4, !tbaa !168
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef ptr @_ZN3tbb6detail2r117threading_control25register_public_referenceEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.tbb::detail::d1::unique_scoped_lock", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store ptr null, ptr %0, align 8, !tbaa !133
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7acquireERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3tbb6detail2r117threading_control25g_threading_control_mutexE)
  %i.a = load ptr, ptr @_ZN3tbb6detail2r117threading_control19g_threading_controlE, align 8, !tbaa !164 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit

_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw add ptr %i.d, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !133    ; 2 uses
  %i.g = atomicrmw xchg ptr %i.f, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !133
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r117threading_control24create_threading_controlEv()
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit, %bb.c
  %.0 = phi ptr [ %i.a, %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit ], [ %i.h, %bb.c ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %.not.i4 = icmp eq ptr %i.j, null
  br i1 %.not.i4, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw xchg ptr %i.j, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.j)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #20
  unreachable

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret ptr %.0
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef zeroext i1 @_ZN3tbb6detail2r117threading_control27unregister_public_referenceEb(i1 noundef zeroext %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN3tbb6detail2r117threading_control19g_threading_controlE, align 8, !tbaa !164
  %i.b = tail call noundef zeroext i1 @_ZN3tbb6detail2r117threading_control7releaseEbb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext true, i1 noundef zeroext %0)
  ret i1 %i.b
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden { ptr, ptr } @_ZN3tbb6detail2r117threading_control13create_clientERNS1_5arenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 128 dereferenceable(768) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::unique_scoped_lock", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !133
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7acquireERS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3tbb6detail2r117threading_control25g_threading_control_mutexE)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = atomicrmw add ptr %i.a, i32 1 seq_cst, align 4 ; 0 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !133    ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw xchg ptr %i.c, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.g = load ptr, ptr %0, align 8, !tbaa !169    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 128 dereferenceable(768) %1), !inline_history !189
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.o = call noundef ptr @_ZN3tbb6detail2r117thread_dispatcher13create_clientERNS1_5arenaE(ptr noundef nonnull align 8 dereferenceable(152) %i.n, ptr noundef nonnull align 128 dereferenceable(768) %1)
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.l, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.o, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r117threading_control14publish_clientENS1_24threading_control_clientERNS0_2d111constraintsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !169    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !190
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void @_ZN3tbb6detail2r117thread_dispatcher15register_clientEPNS1_24thread_dispatcher_clientE(ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN3tbb6detail2r117threading_control26prepare_client_destructionENS1_24threading_control_clientE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.tbb::detail::r1::threading_control_impl::client_snapshot") align 8 captures(none) initializes((0, 12), (16, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr %2, ptr %3) local_unnamed_addr #9 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93, !noalias !191
  store i64 %i.b, ptr %0, align 8, !tbaa !96, !alias.scope !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99, !noalias !191, !nonnull !37, !align !100
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 220
  %i.g = load i32, ptr %i.f, align 4, !tbaa !101, !noalias !191
  store i32 %i.g, ptr %i.c, align 8, !tbaa !130, !alias.scope !191
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !131, !alias.scope !191
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.i, align 8, !tbaa !132, !alias.scope !191
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef zeroext i1 @_ZN3tbb6detail2r117threading_control18try_destroy_clientENS1_22threading_control_impl15client_snapshotE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.tbb::detail::r1::threading_control_impl::client_snapshot") align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::unique_scoped_lock", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !169    ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %1, align 8, !tbaa !194
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !12
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !195
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !196
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call noundef zeroext i1 @_ZN3tbb6detail2r117thread_dispatcher21try_unregister_clientEPNS1_24thread_dispatcher_clientEmj(ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr noundef %.sroa.44.0.copyload, i64 noundef %.sroa.03.0.copyload, i32 noundef %.sroa.2.0.copyload) ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZN3tbb6detail2r122threading_control_impl18try_destroy_clientENS2_15client_snapshotE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0.copyload), !inline_history !197
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !133
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7acquireERS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3tbb6detail2r117threading_control25g_threading_control_mutexE)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 seq_cst, align 4
  %i.k = icmp eq i32 %i.j, 1                      ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZN3tbb6detail2r117threading_control19g_threading_controlE, align 8, !tbaa !164
  br label %_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i

_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i: ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !133    ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i
  %i.m = atomicrmw xchg ptr %i.l, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #20
  unreachable

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i: ; preds = %bb.d, %_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.k, label %bb.f, label %_ZN3tbb6detail2r122threading_control_impl18try_destroy_clientENS2_15client_snapshotE.exit

bb.f:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !169
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  call void @_ZN3tbb6detail2r117thread_dispatcher7releaseEb(ptr noundef nonnull align 8 dereferenceable(152) %i.r, i1 noundef zeroext false)
  br label %_ZN3tbb6detail2r122threading_control_impl18try_destroy_clientENS2_15client_snapshotE.exit

_ZN3tbb6detail2r122threading_control_impl18try_destroy_clientENS2_15client_snapshotE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i, %bb.a
  ret i1 %i.d
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r117threading_control22set_active_num_workersEj(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.tbb::detail::d1::unique_scoped_lock", align 8 ; 5 uses
  %2 = alloca %"class.tbb::detail::d1::unique_scoped_lock", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !133
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7acquireERS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3tbb6detail2r117threading_control25g_threading_control_mutexE)
  %i.a = load ptr, ptr @_ZN3tbb6detail2r117threading_control19g_threading_controlE, align 8, !tbaa !164 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null                ; 2 uses
  br i1 %.not.i, label %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit

_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit: ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !133    ; 3 uses
  %.not.i3 = icmp eq ptr %i.d, null
  br i1 %.not.i3, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit
  %i.e = atomicrmw xchg ptr %i.d, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit: ; preds = %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.not.i, label %_ZN3tbb6detail2r117threading_control7releaseEbb.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  call void @_ZN3tbb6detail2r131thread_request_serializer_proxy22set_active_num_workersEi(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef %0)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i32 noundef %0), !inline_history !198
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr null, ptr %1, align 8, !tbaa !133
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7acquireERS3_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3tbb6detail2r117threading_control25g_threading_control_mutexE)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = icmp eq i32 %i.p, 1                      ; 2 uses
  br i1 %i.q, label %bb.f, label %_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr @_ZN3tbb6detail2r117threading_control19g_threading_controlE, align 8, !tbaa !164
  br label %_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i

_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i: ; preds = %bb.f, %bb.e
  %i.r = load ptr, ptr %1, align 8, !tbaa !133    ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i
  %i.s = atomicrmw xchg ptr %i.r, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.r)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #20
  unreachable

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i: ; preds = %bb.g, %_ZN3tbb6detail2r117threading_control10remove_refEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %i.q, label %bb.i, label %_ZN3tbb6detail2r117threading_control7releaseEbb.exit

bb.i:                                             ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  call void @_ZN3tbb6detail2r117thread_dispatcher7releaseEb(ptr noundef nonnull align 8 dereferenceable(152) %i.x, i1 noundef zeroext false)
  br label %_ZN3tbb6detail2r117threading_control7releaseEbb.exit

_ZN3tbb6detail2r117threading_control7releaseEbb.exit: ; preds = %bb.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef zeroext i1 @_ZN3tbb6detail2r117threading_control10is_presentEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.tbb::detail::d1::unique_scoped_lock", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store ptr null, ptr %0, align 8, !tbaa !133
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7acquireERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3tbb6detail2r117threading_control25g_threading_control_mutexE)
  %i.a = load ptr, ptr @_ZN3tbb6detail2r117threading_control19g_threading_controlE, align 8, !tbaa !164
  %i.b = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr %i.b, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #20
  unreachable

_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = icmp ne ptr %i.a, null
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret i1 %i.f
}

; Function Attrs: mustprogress sspstrong uwtable
define hidden noundef zeroext i1 @_ZN3tbb6detail2r117threading_control25register_lifetime_controlEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.tbb::detail::d1::unique_scoped_lock", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store ptr null, ptr %0, align 8, !tbaa !133
  call void @_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEE7acquireERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3tbb6detail2r117threading_control25g_threading_control_mutexE)
  %i.a = load ptr, ptr @_ZN3tbb6detail2r117threading_control19g_threading_controlE, align 8, !tbaa !164 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = atomicrmw add ptr %i.d, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit

_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !133    ; 3 uses
  %.not.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i1, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2r117threading_control21get_threading_controlEb.exit
  %i.g = atomicrmw xchg ptr %i.f, i8 0 seq_cst, align 1 ; 0 uses
  invoke void @_ZN3tbb6detail2r121notify_by_address_oneEPv(ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %_ZN3tbb6detail2d118unique_scoped_lockINS1_5mutexEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #20
  unreachable
end_hunk_0
