Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/proxy?download=true
inline.NumInlined: 2418
inline.NumDeleted: 1116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8WasmEdge7Runtime8Instance14MemoryInstance9fillBytesEhmm:bb.a
  store i64 %4, ptr %i.l, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.j, ptr %i.m, align 8, !tbaa !130
  %i.n = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc9 unwind label %bb.h

.noexc9:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo12InfoBoundaryEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.5, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  store i8 0, ptr %0, align 4, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1032, ptr %i.o, align 4, !tbaa !26
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !170
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %2, i64 %4, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.f, %bb.e
  store i64 1, ptr %0, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4fillIPhhEvT_S1_RKT0_.exit, %bb.d
  ret void

bb.h:                                             ; preds = %.noexc9, %bb.c, %.noexc, %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor20proxyMemAtomicNotifyERNS_7Runtime12StackManagerEjmm(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  tail call void @_ZN8WasmEdge8Executor8Executor12atomicNotifyERNS_7Runtime8Instance14MemoryInstanceEmm(ptr dead_on_unwind writable sret(%"class.cxx20::expected.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 noundef %4, i64 noundef %5) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #29
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN8WasmEdge8Executor8Executor12atomicNotifyERNS_7Runtime8Instance14MemoryInstanceEmm(ptr dead_on_unwind writable sret(%"class.cxx20::expected.318") align 8, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8WasmEdge8Executor8Executor18proxyMemAtomicWaitERNS_7Runtime12StackManagerEjmmlj(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
          to label %bb.b unwind label %bb.f       ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.b = icmp eq i32 %7, 64
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8WasmEdge8Executor8Executor10atomicWaitImEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind writable sret(%"class.cxx20::expected.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 noundef %4, i64 %5, i64 noundef %6) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %7, 32
  tail call void @llvm.assume(i1 %i.c)
  %i.d = trunc i64 %5 to i32
  tail call void @_ZN8WasmEdge8Executor8Executor10atomicWaitIjEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind writable sret(%"class.cxx20::expected.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 noundef %4, i32 %i.d, i64 noundef %6) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor10atomicWaitImEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 noundef %3, i64 %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, WasmEdge::Runtime::Instance::MemoryInstance::Waiter>, std::allocator<std::pair<const unsigned long, WasmEdge::Runtime::Instance::MemoryInstance::Waiter>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, false>>::_Scoped_node", align 8 ; 6 uses
  %8 = alloca %"struct.std::__detail::_Node_iterator", align 8 ; 11 uses
  %9 = alloca %"class.cxx20::scope_exit", align 8 ; 8 uses
  %10 = alloca %"class.std::unique_lock", align 8 ; 14 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !82
  %i.b = and i8 %i.a, 2
  %.not50 = icmp eq i8 %i.b, 0
  br i1 %.not50, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1041, ptr %i.c, align 8, !tbaa !26
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81
  %.not.i.i = icmp ugt i64 %3, -9
  %i.f = shl i64 %i.e, 16
  %i.g = add nuw i64 %3, 8                        ; 2 uses
  %i.h = icmp ugt i64 %i.g, %i.f
  %.not3.i = select i1 %.not.i.i, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not51 = icmp eq ptr %i.j, null
  %.not = select i1 %.not3.i, i1 true, i1 %.not51
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1032, ptr %i.k, align 8, !tbaa !26
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %5, -1                      ; 2 uses
  br i1 %i.l, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.o = add nsw i64 %i.n, %5
  %.pre = load i64, ptr %i.d, align 8, !tbaa !81
  %.pre89 = load ptr, ptr %i.i, align 8
  %.pre92 = shl i64 %.pre, 16
  %i.p = icmp ugt i64 %i.g, %.pre92
  %i.q = getelementptr inbounds nuw i8, ptr %.pre89, i64 %3
  %cond.fr = freeze i1 %i.p
  %spec.select = select i1 %cond.fr, ptr null, ptr %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.042.0107 = phi i64 [ undef, %.thread ], [ %i.o, %bb.f ] ; 3 uses
  %i.r = phi ptr [ %i.m, %.thread ], [ %spec.select, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load atomic i64, ptr %i.r seq_cst, align 8
  %.not17 = icmp eq i64 %i.s, %4
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %0, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.t, align 8, !tbaa !26
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr null, ptr %8, align 8, !tbaa !173
  %i.w = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %.invoke

.invoke:                                          ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit28, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us, %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.i
  %i.x = phi i32 [ %i.w, %bb.i ], [ %i.ar, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.bm, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us ], [ %i.cf, %_ZNSt11unique_lockISt5mutexED2Ev.exit28 ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.x) #30
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %i.v, ptr %7, align 8, !tbaa !176
  %i.y = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc21 unwind label %.loopexit.split-lp ; 7 uses

.noexc21:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store i64 %3, ptr %i.aa, align 8, !tbaa !182
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i8 0, i64 96, i1 false)
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store i8 0, ptr %i.ad, align 8, !tbaa !183
  store ptr %i.y, ptr %i.z, align 8, !tbaa !184
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !185
  %.not.not.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.j, label %.thread22.i.i.i.i.i

bb.j:                                             ; preds = %.noexc21
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not27.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %.not27.i.i.i.i.i, label %.thread22.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %11 = load i64, ptr %i.aa, align 8, !tbaa !78   ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !78
  %i.aj = icmp eq i64 %11, %i.ai
  br i1 %i.aj, label %.loopexit.i.i.i.i, label %bb.k, !llvm.loop !3

.thread22.i.i.i.i.i:                              ; preds = %bb.k, %.noexc21
  %12 = load i64, ptr %i.aa, align 8, !tbaa !78
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.l, %.thread22.i.i.i.i.i
  %.sroa.019.3.i.i.i.i.i = phi ptr [ null, %.thread22.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ]
  %.sroa.4.3.i.i.i.i.i = phi i64 [ %12, %.thread22.i.i.i.i.i ], [ %11, %bb.l ]
  %i.ak = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS9_10_Hash_nodeIS7_Lb0EEEmSN_(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef %.sroa.019.3.i.i.i.i.i, i64 noundef %.sroa.4.3.i.i.i.i.i, ptr noundef nonnull %i.y)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.m ; 2 uses

bb.m:                                             ; preds = %.loopexit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.body

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  store ptr %i.ak, ptr %8, align 8
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #27 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  store atomic ptr %2, ptr %i.an release, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %1, ptr %9, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !187
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !189
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !191
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 1, ptr %i.ao, align 8, !tbaa !390
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.aq, ptr %10, align 8, !tbaa !193
  store i8 0, ptr %i.ap, align 8, !tbaa !194
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #27 ; 2 uses
  %.not.i.i.i2367 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i2367, label %.lr.ph, label %.invoke

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.at = sdiv i64 %.sroa.042.0107, 1000000000    ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.at, -1000000000
  %i.au = add i64 %.neg.i.i.i.i, %.sroa.042.0107
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us
  store i8 1, ptr %i.ap, align 8, !tbaa !194
  %i.aw = load atomic i32, ptr %i.as acquire, align 8
  %.not52.us = icmp eq i32 %i.aw, 0
  br i1 %.not52.us, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.ax = load ptr, ptr %8, align 8, !tbaa !173
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i64 %i.at, ptr %6, align 8, !tbaa !196
  store i64 %i.au, ptr %i.av, align 8, !tbaa !197
  %i.az = load ptr, ptr %10, align 8, !tbaa !193  ; 2 uses
  %i.ba = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.o unwind label %.loopexit.split.us ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bb = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %.not79 = icmp slt i64 %i.bb, %.sroa.042.0107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bc = load atomic i32, ptr %i.as monotonic, align 8
  %.not53.us = icmp eq i32 %i.bc, 0
  br i1 %.not53.us, label %bb.p, label %.split70.us

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %8, align 8, !tbaa !173   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !198, !range !38, !noundef !39
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.split73.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not79, label %bb.r, label %.split76.us

bb.r:                                             ; preds = %bb.q
  %i.bh = load i8, ptr %i.ap, align 8, !tbaa !194, !range !38, !noundef !39
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.s, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us

bb.s:                                             ; preds = %bb.r
  %i.bj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #27 ; 0 uses
  %.pre91 = load ptr, ptr %8, align 8, !tbaa !173
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us

_ZNSt11unique_lockISt5mutexED2Ev.exit28.us:       ; preds = %bb.s, %bb.r
  %i.bk = phi ptr [ %i.bd, %bb.r ], [ %.pre91, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bl, ptr %10, align 8, !tbaa !193
  store i8 0, ptr %i.ap, align 8, !tbaa !194
  %i.bm = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #27 ; 2 uses
  %.not.i.i.i23.us = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i23.us, label %.lr.ph.split.us, label %.invoke, !llvm.loop !388

.loopexit.split.us:                               ; preds = %bb.n
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.lr.ph.split.split:                               ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexED2Ev.exit28
  store i8 1, ptr %i.ap, align 8, !tbaa !194
  %i.bn = load atomic i32, ptr %i.as acquire, align 8
  %.not52 = icmp eq i32 %i.bn, 0
  br i1 %.not52, label %bb.t, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  store i8 0, ptr %0, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bo, align 8, !tbaa !26
  br label %.critedge

bb.t:                                             ; preds = %.lr.ph.split.split
  %i.bp = load ptr, ptr %8, align 8, !tbaa !173
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(9) %10)
          to label %bb.u unwind label %.loopexit.split

bb.u:                                             ; preds = %bb.t
  %i.br = load atomic i32, ptr %i.as monotonic, align 8
  %.not53 = icmp eq i32 %i.br, 0
  br i1 %.not53, label %bb.v, label %.split70.us

.split70.us:                                      ; preds = %bb.u, %bb.o
  store i8 0, ptr %0, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bs, align 8, !tbaa !26
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %8, align 8, !tbaa !173   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !198, !range !38, !noundef !39
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.split73.us, label %bb.w

.split73.us:                                      ; preds = %bb.v, %bb.p
  store i8 1, ptr %0, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !26
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.by = load i8, ptr %i.ap, align 8, !tbaa !194, !range !38, !noundef !39
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.x, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

.split76.us:                                      ; preds = %bb.q
  store i8 1, ptr %0, align 8, !tbaa !77
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ca, align 8, !tbaa !26
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %10, align 8, !tbaa !193  ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cb) #27 ; 0 uses
  %.pre90 = load ptr, ptr %8, align 8, !tbaa !173
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

_ZNSt11unique_lockISt5mutexED2Ev.exit28:          ; preds = %bb.w, %bb.x, %bb.y
  %i.cd = phi ptr [ %i.bt, %bb.w ], [ %i.bt, %bb.x ], [ %.pre90, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  store ptr %i.ce, ptr %10, align 8, !tbaa !193
  store i8 0, ptr %i.ap, align 8, !tbaa !194
  %i.cf = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #27 ; 2 uses
  %.not.i.i.i23 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i23, label %.lr.ph.split.split, label %.invoke, !llvm.loop !388

.critedge:                                        ; preds = %.split76.us, %.split73.us, %.split70.us, %.split.us
  %i.cg = load i8, ptr %i.ap, align 8, !tbaa !194, !range !38, !noundef !39
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.z, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

bb.z:                                             ; preds = %.critedge
  %i.ci = load ptr, ptr %10, align 8, !tbaa !193  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i29, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ci) #27 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

_ZNSt11unique_lockISt5mutexED2Ev.exit30:          ; preds = %.critedge, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.ck = load i8, ptr %i.ao, align 8, !tbaa !390, !range !38, !noundef !39
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ab, label %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitImEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit

bb.ab:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit30
  call void @_ZZN8WasmEdge8Executor8Executor10atomicWaitImEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EElENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #27
  br label %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitImEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit

_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitImEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit30, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.h, %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitImEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit, %bb.d, %bb.b
  ret void

.loopexit.split:                                  ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp, %.loopexit.split.us, %.loopexit.split, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.m ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  %i.cm = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.cm) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor10atomicWaitIjEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected.318") align 8 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, i64 noundef %3, i32 %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, WasmEdge::Runtime::Instance::MemoryInstance::Waiter>, std::allocator<std::pair<const unsigned long, WasmEdge::Runtime::Instance::MemoryInstance::Waiter>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, false>>::_Scoped_node", align 8 ; 6 uses
  %8 = alloca %"struct.std::__detail::_Node_iterator", align 8 ; 11 uses
  %9 = alloca %"class.cxx20::scope_exit.513", align 8 ; 8 uses
  %10 = alloca %"class.std::unique_lock", align 8 ; 14 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !82
  %i.b = and i8 %i.a, 2
  %.not50 = icmp eq i8 %i.b, 0
  br i1 %.not50, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1041, ptr %i.c, align 8, !tbaa !26
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81
  %.not.i.i = icmp ugt i64 %3, -5
  %i.f = shl i64 %i.e, 16
  %i.g = add nuw i64 %3, 4                        ; 2 uses
  %i.h = icmp ugt i64 %i.g, %i.f
  %.not3.i = select i1 %.not.i.i, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not51 = icmp eq ptr %i.j, null
  %.not = select i1 %.not3.i, i1 true, i1 %.not51
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1032, ptr %i.k, align 8, !tbaa !26
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i64 %5, -1                      ; 2 uses
  br i1 %i.l, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %i.o = add nsw i64 %i.n, %5
  %.pre = load i64, ptr %i.d, align 8, !tbaa !81
  %.pre89 = load ptr, ptr %i.i, align 8
  %.pre92 = shl i64 %.pre, 16
  %i.p = icmp ugt i64 %i.g, %.pre92
  %i.q = getelementptr inbounds nuw i8, ptr %.pre89, i64 %3
  %cond.fr = freeze i1 %i.p
  %spec.select = select i1 %cond.fr, ptr null, ptr %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.042.0107 = phi i64 [ undef, %.thread ], [ %i.o, %bb.f ] ; 3 uses
  %i.r = phi ptr [ %i.m, %.thread ], [ %spec.select, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load atomic i32, ptr %i.r seq_cst, align 4
  %.not17 = icmp eq i32 %i.s, %4
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %0, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.t, align 8, !tbaa !26
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr null, ptr %8, align 8, !tbaa !173
  %i.w = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %.invoke

.invoke:                                          ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit28, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us, %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.i
  %i.x = phi i32 [ %i.w, %bb.i ], [ %i.ar, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.bm, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us ], [ %i.cf, %_ZNSt11unique_lockISt5mutexED2Ev.exit28 ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.x) #30
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr %i.v, ptr %7, align 8, !tbaa !176
  %i.y = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #31
          to label %.noexc21 unwind label %.loopexit.split-lp ; 7 uses

.noexc21:                                         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store i64 %3, ptr %i.aa, align 8, !tbaa !182
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i8 0, i64 96, i1 false)
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store i8 0, ptr %i.ad, align 8, !tbaa !183
  store ptr %i.y, ptr %i.z, align 8, !tbaa !184
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !185
  %.not.not.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.j, label %.thread22.i.i.i.i.i

bb.j:                                             ; preds = %.noexc21
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !177 ; 4 uses
  %.not27.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %.not27.i.i.i.i.i, label %.thread22.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %11 = load i64, ptr %i.aa, align 8, !tbaa !78   ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !78
  %i.aj = icmp eq i64 %11, %i.ai
  br i1 %i.aj, label %.loopexit.i.i.i.i, label %bb.k, !llvm.loop !3

.thread22.i.i.i.i.i:                              ; preds = %bb.k, %.noexc21
  %12 = load i64, ptr %i.aa, align 8, !tbaa !78
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.l, %.thread22.i.i.i.i.i
  %.sroa.019.3.i.i.i.i.i = phi ptr [ null, %.thread22.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.l ]
  %.sroa.4.3.i.i.i.i.i = phi i64 [ %12, %.thread22.i.i.i.i.i ], [ %11, %bb.l ]
  %i.ak = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS9_10_Hash_nodeIS7_Lb0EEEmSN_(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef %.sroa.019.3.i.i.i.i.i, i64 noundef %.sroa.4.3.i.i.i.i.i, ptr noundef nonnull %i.y)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.m ; 2 uses

bb.m:                                             ; preds = %.loopexit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt10_HashtableImSt4pairIKmN8WasmEdge7Runtime8Instance14MemoryInstance6WaiterEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.body

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  store ptr %i.ak, ptr %8, align 8
  %i.am = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #27 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  store atomic ptr %2, ptr %i.an release, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %1, ptr %9, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !187
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !189
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !191
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i8 1, ptr %i.ao, align 8, !tbaa !393
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.aq, ptr %10, align 8, !tbaa !193
  store i8 0, ptr %i.ap, align 8, !tbaa !194
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #27 ; 2 uses
  %.not.i.i.i2367 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i2367, label %.lr.ph, label %.invoke

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.at = sdiv i64 %.sroa.042.0107, 1000000000    ; 2 uses
  %.neg.i.i.i.i = mul nsw i64 %i.at, -1000000000
  %i.au = add i64 %.neg.i.i.i.i, %.sroa.042.0107
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us
  store i8 1, ptr %i.ap, align 8, !tbaa !194
  %i.aw = load atomic i32, ptr %i.as acquire, align 8
  %.not52.us = icmp eq i32 %i.aw, 0
  br i1 %.not52.us, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.ax = load ptr, ptr %8, align 8, !tbaa !173
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i64 %i.at, ptr %6, align 8, !tbaa !196
  store i64 %i.au, ptr %i.av, align 8, !tbaa !197
  %i.az = load ptr, ptr %10, align 8, !tbaa !193  ; 2 uses
  %i.ba = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.o unwind label %.loopexit.split.us ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bb = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #27
  %.not79 = icmp slt i64 %i.bb, %.sroa.042.0107
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bc = load atomic i32, ptr %i.as monotonic, align 8
  %.not53.us = icmp eq i32 %i.bc, 0
  br i1 %.not53.us, label %bb.p, label %.split70.us

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %8, align 8, !tbaa !173   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !198, !range !38, !noundef !39
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.split73.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not79, label %bb.r, label %.split76.us

bb.r:                                             ; preds = %bb.q
  %i.bh = load i8, ptr %i.ap, align 8, !tbaa !194, !range !38, !noundef !39
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.s, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us

bb.s:                                             ; preds = %bb.r
  %i.bj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.az) #27 ; 0 uses
  %.pre91 = load ptr, ptr %8, align 8, !tbaa !173
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28.us

_ZNSt11unique_lockISt5mutexED2Ev.exit28.us:       ; preds = %bb.s, %bb.r
  %i.bk = phi ptr [ %i.bd, %bb.r ], [ %.pre91, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bl, ptr %10, align 8, !tbaa !193
  store i8 0, ptr %i.ap, align 8, !tbaa !194
  %i.bm = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #27 ; 2 uses
  %.not.i.i.i23.us = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i23.us, label %.lr.ph.split.us, label %.invoke, !llvm.loop !391

.loopexit.split.us:                               ; preds = %bb.n
  %lpad.loopexit.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.lr.ph.split.split:                               ; preds = %.lr.ph, %_ZNSt11unique_lockISt5mutexED2Ev.exit28
  store i8 1, ptr %i.ap, align 8, !tbaa !194
  %i.bn = load atomic i32, ptr %i.as acquire, align 8
  %.not52 = icmp eq i32 %i.bn, 0
  br i1 %.not52, label %bb.t, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.us
  store i8 0, ptr %0, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bo, align 8, !tbaa !26
  br label %.critedge

bb.t:                                             ; preds = %.lr.ph.split.split
  %i.bp = load ptr, ptr %8, align 8, !tbaa !173
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(9) %10)
          to label %bb.u unwind label %.loopexit.split

bb.u:                                             ; preds = %bb.t
  %i.br = load atomic i32, ptr %i.as monotonic, align 8
  %.not53 = icmp eq i32 %i.br, 0
  br i1 %.not53, label %bb.v, label %.split70.us

.split70.us:                                      ; preds = %bb.u, %bb.o
  store i8 0, ptr %0, align 8, !tbaa !77
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.bs, align 8, !tbaa !26
  br label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %8, align 8, !tbaa !173   ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !198, !range !38, !noundef !39
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.split73.us, label %bb.w

.split73.us:                                      ; preds = %bb.v, %bb.p
  store i8 1, ptr %0, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !26
  br label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.by = load i8, ptr %i.ap, align 8, !tbaa !194, !range !38, !noundef !39
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.x, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

.split76.us:                                      ; preds = %bb.q
  store i8 1, ptr %0, align 8, !tbaa !77
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ca, align 8, !tbaa !26
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %10, align 8, !tbaa !193  ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i27, label %_ZNSt11unique_lockISt5mutexED2Ev.exit28, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cb) #27 ; 0 uses
  %.pre90 = load ptr, ptr %8, align 8, !tbaa !173
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit28

_ZNSt11unique_lockISt5mutexED2Ev.exit28:          ; preds = %bb.w, %bb.x, %bb.y
  %i.cd = phi ptr [ %i.bt, %bb.w ], [ %i.bt, %bb.x ], [ %.pre90, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  store ptr %i.ce, ptr %10, align 8, !tbaa !193
  store i8 0, ptr %i.ap, align 8, !tbaa !194
  %i.cf = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #27 ; 2 uses
  %.not.i.i.i23 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i23, label %.lr.ph.split.split, label %.invoke, !llvm.loop !391

.critedge:                                        ; preds = %.split76.us, %.split73.us, %.split70.us, %.split.us
  %i.cg = load i8, ptr %i.ap, align 8, !tbaa !194, !range !38, !noundef !39
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.z, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

bb.z:                                             ; preds = %.critedge
  %i.ci = load ptr, ptr %10, align 8, !tbaa !193  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i29, label %_ZNSt11unique_lockISt5mutexED2Ev.exit30, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ci) #27 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit30

_ZNSt11unique_lockISt5mutexED2Ev.exit30:          ; preds = %.critedge, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.ck = load i8, ptr %i.ao, align 8, !tbaa !393, !range !38, !noundef !39
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ab, label %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitIjEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit

bb.ab:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit30
  call void @_ZZN8WasmEdge8Executor8Executor10atomicWaitIjEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EElENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #27
  br label %_ZN5cxx2010scope_exitIZN8WasmEdge8Executor8Executor10atomicWaitIjEENS_8expectedImNS1_7ErrCodeEEERNS1_7Runtime8Instance14MemoryInstanceEmNS1_11EndianValueIT_EElEUlvE_vED2Ev.exit

end_hunk_0
