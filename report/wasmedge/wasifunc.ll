Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/wasifunc?download=true
inline.NumInlined: 4648
inline.NumDeleted: 1754
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8WasmEdge4Host4WASI7Environ10sockSendToEiN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEt23__wasi_address_family_tS6_tRj:bb.a
bb.a:
  %9 = alloca %"struct.cxx20::span.274", align 8  ; 5 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %10, align 8, !tbaa !165   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %9, align 8, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !234
  %i.g = call i32 @_ZNK8WasmEdge4Host4WASI5INode10sockSendToEN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEt23__wasi_address_family_tS6_tRj(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr %2, i64 %3, i16 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef nonnull byval(%"struct.cxx20::span.274") align 8 %9, i16 noundef zeroext %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.311.0 = phi i32 [ %i.g, %bb.c ], [ 524288, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.j, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !187
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23, !inline_history !0
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.h ], [ %i.w, %bb.i ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.j, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !188

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #23
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret i32 %.sroa.311.0

bb.k:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host16WasiSockShutdown4bodyERKNS_7Runtime12CallingFrameEij(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) initializes((0, 1), (4, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %4, 252
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i32 %4 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !602, !nonnull !86, !align !87
  %i.e = tail call i32 @_ZNK8WasmEdge4Host4WASI7Environ12sockShutdownEi16__wasi_sdflags_t(ptr noundef nonnull align 8 dereferenceable(344) %i.d, i32 noundef %3, i8 noundef zeroext %i.b) #23 ; 2 uses
  %i.f = trunc i32 %i.e to i1
  %.sroa.58.0.extract.shift = lshr i32 %i.e, 16
  %spec.select = select i1 %i.f, i32 0, i32 %.sroa.58.0.extract.shift
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 28, %bb.a ], [ %spec.select, %bb.b ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.g, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK8WasmEdge4Host4WASI7Environ12sockShutdownEi16__wasi_sdflags_t(ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !165    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call i32 @_ZNK8WasmEdge4Host4WASI5INode12sockShutdownE16__wasi_sdflags_t(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i8 noundef zeroext %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.33.0 = phi i32 [ %i.c, %bb.c ], [ 524288, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !186
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !187
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.h ], [ %i.s, %bb.i ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.j, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !188

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.sroa.33.0

bb.k:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host14WasiSockSetOpt4bodyERKNS_7Runtime12CallingFrameEijjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #23, !noalias !605
  switch i32 %i.d, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.e, !noalias !605

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43, !noalias !605
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !44, !noalias !605 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread37, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread37: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.i = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #23, !noalias !605 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25, !noalias !605
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !46, !noalias !605 ; 3 uses
  %i.m = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #23, !noalias !605 ; 0 uses
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a, label %bb.f

bb.f:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %cond.i = icmp eq i32 %4, 0
  %.sroa.02.0.insert.insert.i = select i1 %cond.i, i64 1, i64 120259084288 ; 2 uses
  %.sroa.433.0.extract.shift = lshr i64 %.sroa.02.0.insert.insert.i, 32
  %i.o = trunc i64 %.sroa.02.0.insert.insert.i to i1
  %8 = trunc nuw nsw i64 %.sroa.433.0.extract.shift to i32 ; 2 uses
  br i1 %i.o, label %bb.g, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a

bb.g:                                             ; preds = %bb.f
  %switch.i = icmp ugt i32 %5, 14
  br i1 %switch.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = zext i32 %6 to i64                       ; 2 uses
  %i.q = zext i32 %7 to i64                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49
  %i.t = shl i64 %i.s, 16
  %i.u = add nuw nsw i64 %i.q, %i.p
  %i.v = icmp ule i64 %i.u, %i.t                  ; 2 uses
  %.not45 = icmp eq i32 %7, 0
  %.not = or i1 %i.v, %.not45
  br i1 %.not, label %bb.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %.sroa.0.0.i = select i1 %i.v, ptr %i.y, ptr null
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !608, !nonnull !86, !align !87
  %i.ab = tail call i32 @_ZNK8WasmEdge4Host4WASI7Environ10sockSetOptEi23__wasi_sock_opt_level_t20__wasi_sock_opt_so_tN5cxx204spanIKhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(344) %i.aa, i32 noundef %3, i32 noundef %8, i32 noundef %5, ptr %.sroa.0.0.i, i64 %i.q) #23 ; 2 uses
  %i.ac = trunc i32 %i.ab to i1
  %.sroa.523.0.extract.shift = lshr i32 %i.ab, 16
  %spec.select = select i1 %i.ac, i32 0, i32 %.sroa.523.0.extract.shift
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread.a: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread37, %bb.a
  %.sink = phi i32 [ 28, %bb.g ], [ 21, %bb.h ], [ %spec.select, %bb.i ], [ %8, %bb.f ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit ], [ 21, %bb.a ], [ 21, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread37 ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.ad, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK8WasmEdge4Host4WASI7Environ10sockSetOptEi23__wasi_sock_opt_level_t20__wasi_sock_opt_so_tN5cxx204spanIKhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %6, align 8, !tbaa !165    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call i32 @_ZNK8WasmEdge4Host4WASI5INode10sockSetOptE23__wasi_sock_opt_level_t20__wasi_sock_opt_so_tN5cxx204spanIKhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %2, i32 noundef %3, ptr %4, i64 %5) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.37.0 = phi i32 [ %i.c, %bb.c ], [ 524288, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !186
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !187
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.h ], [ %i.s, %bb.i ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.j, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !188

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i32 %.sroa.37.0

bb.k:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge4Host19WasiSockGetAddrinfo4bodyERKNS_7Runtime12CallingFrameEjjjjjjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %class.anon, align 8               ; 11 uses
  store i32 %9, ptr %i.a, align 4, !tbaa !104
  %i.f = and i32 %7, 3
  %.not52 = icmp eq i32 %i.f, 0
  br i1 %.not52, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.g, align 4, !tbaa !22
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.h = and i32 %8, 3
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.i, align 4, !tbaa !22
  br label %bb.ap

bb.e:                                             ; preds = %bb.c
  %i.j = and i32 %10, 3
  %.not54 = icmp eq i32 %i.j, 0
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.k, align 4, !tbaa !22
  br label %bb.ap

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.o = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #23, !noalias !611
  switch i32 %i.o, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.i
    i32 35, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.k, !noalias !611

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43, !noalias !611
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !44, !noalias !611 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread49, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread49: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.t = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #23, !noalias !611 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #25, !noalias !611
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !46, !noalias !611 ; 4 uses
  %i.x = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #23, !noalias !611 ; 0 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !46
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.l

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.g, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread49, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.z, align 4, !tbaa !22
  br label %bb.ao

bb.l:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.aa = zext i32 %3 to i64                      ; 2 uses
  %i.ab = zext i32 %4 to i64                      ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ae = shl i64 %i.ad, 16                       ; 5 uses
  %i.af = add nuw nsw i64 %i.ab, %i.aa
  %i.ag = icmp ugt i64 %i.af, %i.ae               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %.sroa.0.0.i = select i1 %i.ag, i64 0, i64 %i.ab ; 2 uses
  %.sroa.3.0.i = select i1 %i.ag, ptr null, ptr %i.aj
  store i64 %.sroa.0.0.i, ptr %11, align 8
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge4Host16WasiSockSendToV24bodyERKNS_7Runtime12CallingFrameEijjjijj:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4102.0.extract.shift, ptr %i.ax, align 4, !tbaa !22
  br label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.ay = icmp ugt i32 %5, 1024
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.az, align 4, !tbaa !22
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.ba = zext i32 %4 to i64                      ; 2 uses
  %i.bb = shl nuw nsw i32 %5, 3
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, %i.ba
  %i.be = icmp ugt i64 %i.bd, %i.y
  br i1 %i.be, label %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit, label %bb.y

_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit: ; preds = %bb.w
  %.not130 = icmp eq i32 %5, 0
  br i1 %.not130, label %.thread146, label %bb.x

bb.x:                                             ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.bf, align 4, !tbaa !22
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ba ; 2 uses
  %i.bh = zext i32 %9 to i64                      ; 2 uses
  %.not131.not = icmp ugt i64 %i.y, %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bh ; 2 uses
  br i1 %.not131.not, label %bb.aa, label %bb.z

.thread146:                                       ; preds = %_ZNK8WasmEdge7Runtime8Instance14MemoryInstance7getSpanI15__wasi_ciovec_tEEN5cxx204spanIT_Lm18446744073709551615EEEmm.exit
  %i.bj = zext i32 %9 to i64                      ; 2 uses
  %.not131.not149 = icmp samesign ugt i64 %i.y, %i.bj
  br i1 %.not131.not149, label %.thread152, label %bb.z

.thread152:                                       ; preds = %.thread146
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 0, ptr %10, align 8, !tbaa !209
  br label %.critedge

bb.z:                                             ; preds = %.thread146, %bb.y
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.bl, align 4, !tbaa !22
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 0, ptr %10, align 8, !tbaa !209
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %.not64133 = icmp eq i32 %5, 0
  br i1 %.not64133, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ac
  %.0135 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ce, %bb.ac ] ; 3 uses
  %.058134 = phi i32 [ 0, %.lr.ph ], [ %i.bz, %bb.ac ] ; 2 uses
  %i.bo = phi i64 [ 0, %.lr.ph ], [ %i.cd, %bb.ac ] ; 3 uses
  %i.bp = xor i32 %.058134, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %.0135, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !211 ; 2 uses
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.br, i32 %i.bp) ; 2 uses
  %i.bt = load i32, ptr %.0135, align 4, !tbaa !212
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = zext i32 %i.bs to i64                   ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, %i.bu
  %i.bx = icmp ule i64 %i.bw, %i.y                ; 2 uses
  %.not132145 = icmp eq i32 %i.bs, 0
  %.not132 = or i1 %i.bx, %.not132145
  br i1 %.not132, label %bb.ac, label %.critedge66

bb.ac:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bu
  %.sroa.0.0.i82 = select i1 %i.bx, ptr %i.by, ptr null
  %i.bz = tail call i32 @llvm.uadd.sat.i32(i32 %i.br, i32 %.058134)
  %i.ca = icmp samesign ult i64 %i.bo, 1024
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  store ptr %.sroa.0.0.i82, ptr %i.cb, align 8, !tbaa !233
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.bv, ptr %i.cc, align 8, !tbaa !234
  %i.cd = add nuw nsw i64 %i.bo, 1                ; 3 uses
  store i64 %i.cd, ptr %10, align 8, !tbaa !209
  %i.ce = getelementptr inbounds nuw i8, ptr %.0135, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.ce, %i.bm
  br i1 %.not64, label %.critedge, label %bb.ab

.critedge:                                        ; preds = %bb.ac, %.thread152, %bb.aa
  %i.cf = phi ptr [ %i.bk, %.thread152 ], [ %i.bi, %bb.aa ], [ %i.bi, %bb.ac ]
  %.val.i = phi i64 [ 0, %.thread152 ], [ 0, %bb.aa ], [ %i.cd, %bb.ac ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !710, !nonnull !86, !align !87
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.0107.0, ptr %11, align 8, !tbaa !233
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.6.0, ptr %i.cj, align 8, !tbaa !234
  %i.ck = trunc i32 %7 to i16
  %i.cl = call i32 @_ZNK8WasmEdge4Host4WASI7Environ10sockSendToEiN5cxx204spanINS4_IKhLm18446744073709551615EEELm18446744073709551615EEEt23__wasi_address_family_tS6_tRj(ptr noundef nonnull align 8 dereferenceable(344) %i.ch, i32 noundef %3, ptr nonnull %i.ci, i64 %.val.i, i16 noundef zeroext %.sroa.4102.0.extract.trunc, i8 noundef zeroext %.061, ptr noundef nonnull byval(%"struct.cxx20::span.274") align 8 %11, i16 noundef zeroext %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.cf) #23 ; 2 uses
  %i.cm = trunc i32 %i.cl to i1
  %.sroa.587.0.extract.shift = lshr i32 %i.cl, 16
  %spec.select = select i1 %i.cm, i32 0, i32 %.sroa.587.0.extract.shift
  br label %.critedge66

.critedge66:                                      ; preds = %bb.ab, %.critedge
  %.sink = phi i32 [ %spec.select, %.critedge ], [ 21, %bb.ab ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.cn, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.o, %bb.v, %bb.s, %.thread, %bb.z, %.critedge66, %bb.x, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.m, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host14WasiSockGetOpt4bodyERKNS_7Runtime12CallingFrameEijjjj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.cxx20::span.164", align 8  ; 5 uses
  %i.a = and i32 %7, 3
  %.not52 = icmp eq i32 %i.a, 0
  br i1 %.not52, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.b, align 4, !tbaa !22
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.f = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #23, !noalias !713
  switch i32 %i.f, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.e
    i32 35, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.g, !noalias !713

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43, !noalias !713
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !44, !noalias !713 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread47, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread47: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.k = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #23, !noalias !713 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25, !noalias !713
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !46, !noalias !713 ; 3 uses
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #23, !noalias !713 ; 0 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.h

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.c, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread47, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.q, align 4, !tbaa !22
  br label %bb.p

bb.h:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %cond.i = icmp eq i32 %4, 0
  %.sroa.02.0.insert.insert.i = select i1 %cond.i, i64 1, i64 120259084288 ; 2 uses
  %.sroa.441.0.extract.shift = lshr i64 %.sroa.02.0.insert.insert.i, 32
  %i.r = trunc i64 %.sroa.02.0.insert.insert.i to i1
  %9 = trunc nuw nsw i64 %.sroa.441.0.extract.shift to i32 ; 2 uses
  br i1 %i.r, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %9, ptr %i.s, align 4, !tbaa !22
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %switch.i = icmp ugt i32 %5, 14
  br i1 %switch.i, label %.thread50, label %bb.j

.thread50:                                        ; preds = %bb.i
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 28, ptr %i.t, align 4, !tbaa !22
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.u = zext i32 %7 to i64                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !49
  %i.x = shl i64 %i.w, 16                         ; 2 uses
  %.not53 = icmp ule i64 %i.x, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u ; 2 uses
  %i.ab = icmp eq ptr %i.z, null
  %i.ac = select i1 %.not53, i1 true, i1 %i.ab
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.ad, align 4, !tbaa !22
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ae = zext i32 %6 to i64                      ; 2 uses
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !104
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = add nuw nsw i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ah, %i.x                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %.sroa.0.0.i = select i1 %i.ai, ptr null, ptr %i.aj
  %.sroa.6.0.i = select i1 %i.ai, i64 0, i64 %i.ag ; 2 uses
  store ptr %.sroa.0.0.i, ptr %8, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %.sroa.6.0.i, ptr %i.ak, align 8
  %.not = icmp eq i64 %.sroa.6.0.i, %i.ag
  br i1 %.not, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !716, !nonnull !86, !align !87
  %i.an = call i32 @_ZNK8WasmEdge4Host4WASI7Environ10sockGetOptEi23__wasi_sock_opt_level_t20__wasi_sock_opt_so_tRN5cxx204spanIhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(344) %i.am, i32 noundef %3, i32 noundef %9, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %8) #23 ; 2 uses
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.530.0.extract.shift = lshr i32 %i.an, 16
  br label %bb.o

.critedge:                                        ; preds = %bb.m
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !231
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.aa, align 4, !tbaa !104
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %.critedge
  %.sroa.530.0.extract.shift.sink = phi i32 [ %.sroa.530.0.extract.shift, %bb.n ], [ 0, %.critedge ], [ 21, %bb.l ]
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.530.0.extract.shift.sink, ptr %i.ar, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.p

bb.p:                                             ; preds = %.thread50, %.thread, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, %bb.o, %bb.k, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK8WasmEdge4Host4WASI7Environ10sockGetOptEi23__wasi_sock_opt_level_t20__wasi_sock_opt_so_tRN5cxx204spanIhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNK8WasmEdge4Host4WASI7Environ13getNodeOrNullEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !165    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = call i32 @_ZNK8WasmEdge4Host4WASI5INode10sockGetOptE23__wasi_sock_opt_level_t20__wasi_sock_opt_so_tRN5cxx204spanIhLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.35.0 = phi i32 [ %i.c, %bb.c ], [ 524288, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !186
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !187
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.h ], [ %i.s, %bb.i ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.j, label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !188

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8WasmEdge4Host4WASI6VINodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i32 %.sroa.35.0

bb.k:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge4Host22WasiSockGetLocalAddrV24bodyERKNS_7Runtime12CallingFrameEijj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = and i32 %4, 3
  %.not50 = icmp eq i32 %i.c, 0
  br i1 %.not50, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.d, align 4, !tbaa !22
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %5, 3
  %.not51 = icmp eq i32 %i.e, 0
  br i1 %.not51, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %i.f, align 4, !tbaa !22
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.j = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !719
  switch i32 %i.j, label %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i [
    i32 11, label %bb.g
    i32 35, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #26
          to label %.noexc.i.i unwind label %bb.i, !noalias !719

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43, !noalias !719
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !44, !noalias !719 ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.not, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread48, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread48: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.o = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !719 ; 0 uses
  br label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25, !noalias !719
  unreachable

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit: ; preds = %_ZNSt11shared_lockISt12shared_mutexEC2ERS0_.exit.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !46, !noalias !719 ; 3 uses
  %i.s = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #23, !noalias !719 ; 0 uses
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread, label %bb.j

_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread: ; preds = %bb.e, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit.thread48, %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  store i8 1, ptr %0, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 21, ptr %i.u, align 4, !tbaa !22
  br label %bb.u

bb.j:                                             ; preds = %_ZNK8WasmEdge7Runtime12CallingFrame16getMemoryByIndexEj.exit
  %i.v = zext i32 %4 to i64                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49
  %i.y = shl i64 %i.x, 16                         ; 3 uses
  %i.z = add nuw nsw i64 %i.v, 8
  %i.aa = icmp ugt i64 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %i.ae, label %bb.k, label %bb.l

end_hunk_1
