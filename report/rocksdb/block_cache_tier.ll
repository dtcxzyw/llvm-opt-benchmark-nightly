Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_cache_tier?download=true
inline.NumInlined: 1300
inline.NumDeleted: 724
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !193

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #21 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.q = load i64, ptr %i.d, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #20
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !132
  store i64 %.0, ptr %i.d, align 8, !tbaa !25
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !133
  store i8 0, ptr %i.c, align 1, !tbaa !25
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.t = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.v = load i8, ptr %i.u, align 1, !tbaa !25
  store i8 %i.v, ptr %i.t, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !133
  %i.x = load ptr, ptr %0, align 8, !tbaa !132
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.b
  store i8 0, ptr %i.y, align 1, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !370
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !159  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !131
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !370
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb14ThreadedWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb14ThreadedWriterE, i64 16), ptr %0, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !372  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !373  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !371

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %bb.a, %bb.b
  %.05.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !137
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  tail call void @_ZSt9terminatev() #22
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.b, %bb.a
  %.not.i.i1.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !374
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.j) #20
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7rocksdb12BoundedQueueINS_14ThreadedWriter2IOEEE, i64 16), ptr %i.k, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !192  ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not8.i.i.i, label %_ZN7rocksdb12BoundedQueueINS_14ThreadedWriter2IOEED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i
  %.09.i.i.i = phi ptr [ %i.n, %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit ] ; 4 uses
  %i.n = load ptr, ptr %.09.i.i.i, align 8, !tbaa !192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !237  ; 2 uses
  %.not.i.i.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i1, label %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 48 ; 2 uses
  %i.r = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef 3)
          to label %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i unwind label %bb.f, !inline_history !238 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #22, !inline_history !238
  unreachable

_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 80) #20, !inline_history !238
  %.not.i.i.i2 = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i.i2, label %_ZN7rocksdb12BoundedQueueINS_14ThreadedWriter2IOEED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !8

_ZN7rocksdb12BoundedQueueINS_14ThreadedWriter2IOEED2Ev.exit: ; preds = %_ZSt10destroy_atIN7rocksdb14ThreadedWriter2IOEEvPT_.exit.i.i.i, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #19, !inline_history !238
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.v) #19, !inline_history !238
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb25CacheWriteBufferAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7rocksdb25CacheWriteBufferAllocatorE, i64 16), ptr %0, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit unwind label %bb.e

_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit:    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 12 uses
  %.sroa.08.012 = load ptr, ptr %i.b, align 8, !tbaa !192 ; 2 uses
  %i.c = icmp eq ptr %.sroa.08.012, %i.b
  br i1 %i.c, label %_ZNSt7__cxx114listIPN7rocksdb16CacheWriteBufferESaIS3_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !192 ; 2 uses
  %.not8.i.i = icmp eq ptr %.pre, %i.b
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN7rocksdb16CacheWriteBufferESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.d = load ptr, ptr %.09.i.i, align 8, !tbaa !192 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #20
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN7rocksdb16CacheWriteBufferESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !9

_ZNSt7__cxx114listIPN7rocksdb16CacheWriteBufferESaIS3_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit, %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.b, ptr %i.e, align 8, !tbaa !234
  store ptr %i.b, ptr %i.b, align 8, !tbaa !192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.f, align 8, !tbaa !235
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx114listIPN7rocksdb16CacheWriteBufferESaIS3_EE5clearEv.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %_ZNSt7__cxx114listIPN7rocksdb16CacheWriteBufferESaIS3_EE5clearEv.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %.not8.i.i4 = icmp eq ptr %i.i, %i.b
  br i1 %.not8.i.i4, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb16CacheWriteBufferESaIS3_EED2Ev.exit, label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_ZN7rocksdb9MutexLockD2Ev.exit, %.lr.ph.i.i5
  %.09.i.i6 = phi ptr [ %i.j, %.lr.ph.i.i5 ], [ %i.i, %_ZN7rocksdb9MutexLockD2Ev.exit ] ; 2 uses
  %i.j = load ptr, ptr %.09.i.i6, align 8, !tbaa !192 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i6, i64 noundef 24) #20
  %.not.i.i7 = icmp eq ptr %i.j, %i.b
  br i1 %.not.i.i7, label %_ZNSt7__cxx1110_List_baseIPN7rocksdb16CacheWriteBufferESaIS3_EED2Ev.exit, label %.lr.ph.i.i5, !llvm.loop !9

_ZNSt7__cxx1110_List_baseIPN7rocksdb16CacheWriteBufferESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i5, %_ZN7rocksdb9MutexLockD2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.k) #19
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #19
  ret void

.lr.ph:                                           ; preds = %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit, %bb.d
  %.sroa.08.013 = phi ptr [ %.sroa.08.0, %bb.d ], [ %.sroa.08.012, %_ZN7rocksdb9MutexLockC2EPNS_4port5MutexE.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !240  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.sroa.08.0 = load ptr, ptr %.sroa.08.013, align 8, !tbaa !192 ; 2 uses
  %i.r = icmp eq ptr %.sroa.08.0, %i.b
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb12BoundedQueueINS_14BlockCacheTier8InsertOpEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7rocksdb12BoundedQueueINS_14BlockCacheTier8InsertOpEEE, i64 16), ptr %0, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb14BlockCacheTier8InsertOpESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt10destroy_atIN7rocksdb14BlockCacheTier8InsertOpEEvPT_.exit.i.i
  %.09.i.i = phi ptr [ %i.c, %_ZSt10destroy_atIN7rocksdb14BlockCacheTier8InsertOpEEvPT_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !192 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !132  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt10destroy_atIN7rocksdb14BlockCacheTier8InsertOpEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !25
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZSt10destroy_atIN7rocksdb14BlockCacheTier8InsertOpEEvPT_.exit.i.i

_ZSt10destroy_atIN7rocksdb14BlockCacheTier8InsertOpEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 88) #20
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb14BlockCacheTier8InsertOpESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNSt7__cxx1110_List_baseIN7rocksdb14BlockCacheTier8InsertOpESaIS3_EED2Ev.exit: ; preds = %_ZSt10destroy_atIN7rocksdb14BlockCacheTier8InsertOpEEvPT_.exit.i.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN7rocksdb4port7CondVarD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.p) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN7rocksdb4port5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.q) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb19PersistentCacheTierD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN7rocksdb19PersistentCacheTierE, i64 16), ptr %0, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb19PersistentCacheTierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !228
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !375
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !375
  br label %_ZNSt12__shared_ptrIN7rocksdb19PersistentCacheTierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !159
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb19PersistentCacheTierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !193

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN7rocksdb19PersistentCacheTierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb19PersistentCacheTierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEEE, i64 16), ptr %0, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7rocksdb4port7RWMutexESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.d, 56                    ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNKSt14default_deleteIA_N7rocksdb4port7RWMutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i
  %i.g = phi ptr [ %i.h, %.preheader.i.i ], [ %i.f, %.preheader.preheader.i.i ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -56 ; 3 uses
  tail call void @_ZN7rocksdb4port7RWMutexD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #19
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNKSt14default_deleteIA_N7rocksdb4port7RWMutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7rocksdb4port7RWMutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %.preheader.i.i, %bb.b
  %i.j = add i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.c, i64 noundef %i.j) #20
  br label %_ZNSt10unique_ptrIA_N7rocksdb4port7RWMutexESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_N7rocksdb4port7RWMutexESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_N7rocksdb4port7RWMutexEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !242  ; 4 uses
  %.not.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7rocksdb9HashTableIPNS0_9BlockInfoENS0_22BlockCacheTierMetadata4HashENS4_5EqualEE6BucketESt14default_deleteIS9_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_N7rocksdb4port7RWMutexESt14default_deleteIS3_EED2Ev.exit
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.idx.i.i2 = mul i64 %i.n, 24                   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNKSt14default_deleteIA_N7rocksdb9HashTableIPNS0_9BlockInfoENS0_22BlockCacheTierMetadata4HashENS4_5EqualEE6BucketEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i, label %.preheader.preheader.i.i3

.preheader.preheader.i.i3:                        ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i.i2
  br label %.preheader.i.i4

.preheader.i.i4:                                  ; preds = %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6BucketD2Ev.exit.i.i, %.preheader.preheader.i.i3
  %i.q = phi ptr [ %i.r, %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6BucketD2Ev.exit.i.i ], [ %i.p, %.preheader.preheader.i.i3 ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -24 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !192  ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not8.i.i.i.i.i, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6BucketD2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i4, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.s, %.preheader.i.i4 ] ; 2 uses
  %i.t = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !192 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 24) #20
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6BucketD2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6BucketD2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i.i4
  %i.u = icmp eq ptr %i.r, %i.l
  br i1 %i.u, label %_ZNKSt14default_deleteIA_N7rocksdb9HashTableIPNS0_9BlockInfoENS0_22BlockCacheTierMetadata4HashENS4_5EqualEE6BucketEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i, label %.preheader.i.i4

_ZNKSt14default_deleteIA_N7rocksdb9HashTableIPNS0_9BlockInfoENS0_22BlockCacheTierMetadata4HashENS4_5EqualEE6BucketEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i: ; preds = %_ZN7rocksdb9HashTableIPNS_9BlockInfoENS_22BlockCacheTierMetadata4HashENS3_5EqualEE6BucketD2Ev.exit.i.i, %bb.c
  %i.v = add i64 %.idx.i.i2, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.m, i64 noundef %i.v) #20
  br label %_ZNSt10unique_ptrIA_N7rocksdb9HashTableIPNS0_9BlockInfoENS0_22BlockCacheTierMetadata4HashENS4_5EqualEE6BucketESt14default_deleteIS9_EED2Ev.exit

_ZNSt10unique_ptrIA_N7rocksdb9HashTableIPNS0_9BlockInfoENS0_22BlockCacheTierMetadata4HashENS4_5EqualEE6BucketESt14default_deleteIS9_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7rocksdb4port7RWMutexESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIA_N7rocksdb9HashTableIPNS0_9BlockInfoENS0_22BlockCacheTierMetadata4HashENS4_5EqualEE6BucketEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb18EvictableHashTableINS_14BlockCacheFileENS_22BlockCacheTierMetadata18BlockCacheFileHashENS2_19BlockCacheFileEqualEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7rocksdb18EvictableHashTableINS_14BlockCacheFileENS_22BlockCacheTierMetadata18BlockCacheFileHashENS2_19BlockCacheFileEqualEEE, i64 16), ptr %0, align 8, !tbaa !131
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N7rocksdb7LRUListINS0_14BlockCacheFileEEESt14default_deleteIS4_EED2Ev.exit, label %bb.b
end_hunk_0
