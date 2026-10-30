Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/arena?download=true
inline.NumInlined: 257
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt5dequeIN7rocksdb10MemMappingESaIS1_EED2Ev:bb.a
_ZNSt11_Deque_baseIN7rocksdb10MemMappingESaIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseIN7rocksdb10MemMappingESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.e = load <4 x ptr>, ptr %i.a, align 8, !tbaa !41, !noalias !77
  store <4 x ptr> %i.e, ptr %1, align 8, !tbaa !41
  %i.f = load <4 x ptr>, ptr %i.c, align 8, !tbaa !41, !noalias !78
  store <4 x ptr> %i.f, ptr %2, align 8, !tbaa !41
  invoke void @_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE19_M_destroy_data_auxESt15_Deque_iteratorIS4_RS4_PS4_ESA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.06.i.i, align 8, !tbaa !51
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef 512) #16
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.n = icmp ult ptr %.06.i.i, %i.i
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, !llvm.loop !1

_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, %bb.c
  %i.o = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i ], [ %i.g, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52
  %i.r = shl i64 %i.q, 3
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #16
  br label %_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb5ArenaD2Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb5ArenaE, i64 16), ptr %0, align 16, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb12AllocTracker7FreeMemEv(ptr noundef nonnull align 8 dereferenceable(18) %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2152
  tail call void @_ZNSt5dequeIN7rocksdb10MemMappingESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2072
  tail call void @_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #15
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #17
  unreachable
}

declare void @_ZN7rocksdb12AllocTracker7FreeMemEv(ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb5ArenaD0Ev(ptr noundef nonnull align 16 dereferenceable(2288) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2288) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7rocksdb5Arena16AllocateFallbackEmb(ptr noundef nonnull align 16 dereferenceable(2288) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !34  ; 2 uses
  %i.c = lshr i64 %i.b, 2
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !53
  %i.h = tail call noundef ptr @_ZN7rocksdb5Arena16AllocateNewBlockEm(ptr noundef nonnull align 16 dereferenceable(2288) %0, i64 noundef %1)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40   ; 3 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZN7rocksdb5Arena20AllocateFromHugePageEm(ptr noundef nonnull align 16 dereferenceable(2288) %0, i64 noundef %i.j) ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %..thread_crit_edge, label %bb.e

..thread_crit_edge:                               ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 16, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.c
  %i.l = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.b, %bb.c ] ; 2 uses
  %i.m = tail call noundef ptr @_ZN7rocksdb5Arena16AllocateNewBlockEm(ptr noundef nonnull align 16 dereferenceable(2288) %0, i64 noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.119 = phi i64 [ %i.j, %bb.d ], [ %i.l, %.thread ] ; 3 uses
  %.1 = phi ptr [ %i.k, %bb.d ], [ %i.m, %.thread ] ; 5 uses
  %i.n = sub i64 %.119, %1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i64 %i.n, ptr %i.o, align 16, !tbaa !36
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 %1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2248
  store ptr %i.p, ptr %i.q, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 %.119
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2240
  store ptr %i.r, ptr %i.s, align 16, !tbaa !39
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2248
  store ptr %.1, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 %.119
  %i.v = sub nsw i64 0, %1
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2240
  store ptr %i.w, ptr %i.x, align 16, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.121 = phi ptr [ %i.h, %bb.b ], [ %.1, %bb.f ], [ %i.w, %bb.g ]
  ret ptr %.121
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7rocksdb5Arena16AllocateNewBlockEm(ptr noundef nonnull align 16 dereferenceable(2288) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.a, ptr %2, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %.not.i.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i.i, label %bb.b, label %_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.c, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.b, align 8, !tbaa !55
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2072
  invoke void @_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit unwind label %bb.d

_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.b
  %.pr = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt5dequeISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.j = call i64 @malloc_usable_size(ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !tbaa !37
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 16, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZN7rocksdb12AllocTracker8AllocateEm(ptr noundef nonnull align 8 dereferenceable(18) %i.o, i64 noundef %i.j)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %.not.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit10, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.q) #16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit10

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit10: ; preds = %bb.d, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb5Arena20AllocateFromHugePageEm(ptr noundef nonnull align 16 dereferenceable(2288) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::MemMapping", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN7rocksdb10MemMapping12AllocateHugeEm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::MemMapping") align 8 %2, i64 noundef %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !81     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -16
  %.not.i.i = icmp eq ptr %i.c, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN7rocksdb10MemMappingC1EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.b, align 8, !tbaa !56
  br label %_ZNSt5dequeIN7rocksdb10MemMappingESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2152
  invoke void @_ZNSt5dequeIN7rocksdb10MemMappingESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt5dequeIN7rocksdb10MemMappingESaIS1_EE9push_backEOS1_.exit unwind label %bb.f

_ZNSt5dequeIN7rocksdb10MemMappingESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 2 uses
  %i.k = load i64, ptr %i.j, align 16, !tbaa !37
  %i.l = add i64 %i.k, %1
  store i64 %i.l, ptr %i.j, align 16, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not7 = icmp eq ptr %i.n, null
  br i1 %.not7, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN7rocksdb10MemMappingESaIS1_EE9push_backEOS1_.exit
  invoke void @_ZN7rocksdb12AllocTracker8AllocateEm(ptr noundef nonnull align 8 dereferenceable(18) %i.n, i64 noundef %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb10MemMappingD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %_ZNSt5dequeIN7rocksdb10MemMappingESaIS1_EE9push_backEOS1_.exit, %bb.e, %bb.a
  call void @_ZN7rocksdb10MemMappingD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

declare void @_ZN7rocksdb10MemMapping12AllocateHugeEm(ptr dead_on_unwind writable sret(%"class.rocksdb::MemMapping") align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7rocksdb10MemMappingD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb5Arena15AllocateAlignedEmmPNS_6LoggerE(ptr noundef nonnull align 16 dereferenceable(2288) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ne i64 %2, 0
  %or.cond = and i1 %i.d, %i.c
  %i.e = icmp ne i64 %1, 0
  %or.cond3 = and i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, -1
  %i.g = udiv i64 %i.f, %2
  %i.h = add nuw i64 %i.g, 1
  %i.i = mul i64 %i.h, %2
  %i.j = tail call noundef ptr @_ZN7rocksdb5Arena20AllocateFromHugePageEm(ptr noundef nonnull align 16 dereferenceable(2288) %0, i64 noundef %i.i) ; 2 uses
  %.not34 = icmp eq ptr %i.j, null
  br i1 %.not34, label %bb.c, label %_ZN7rocksdb5Arena16AllocateFallbackEmb.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.k = tail call ptr @__errno_location() #19
  %i.l = load i32, ptr %i.k, align 4, !tbaa !83
  call void @_ZN7rocksdb8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.l)
  %i.m = load ptr, ptr %4, align 8, !tbaa !86
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 32), ptr noundef %i.m)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !86     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !87
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #16
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %4, align 8, !tbaa !86     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !87
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %.thread, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 15                       ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = sub nuw nsw i64 16, %i.ab
  %i.ae = select i1 %i.ac, i64 0, i64 %i.ad       ; 2 uses
  %i.af = add i64 %i.ae, %1                       ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !36 ; 2 uses
  %.not = icmp ugt i64 %i.af, %i.ah
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.af
  store ptr %i.aj, ptr %i.y, align 8, !tbaa !38
  %i.ak = sub nuw i64 %i.ah, %i.af
  store i64 %i.ak, ptr %i.ag, align 16, !tbaa !36
  br label %_ZN7rocksdb5Arena16AllocateFallbackEmb.exit

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.am = load i64, ptr %i.al, align 16, !tbaa !34 ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = icmp ugt i64 %1, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !53
end_hunk_0
