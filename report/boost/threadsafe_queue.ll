Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/threadsafe_queue?download=true
inline.NumInlined: 71
inline.NumDeleted: 48
begin_hunk_0_@_ZN5boost3log11v2_mt_posix3aux29threadsafe_queue_impl_generic4pushEPNS2_21threadsafe_queue_impl9node_baseE:_ZN5boost7atomics6detail26core_operations_gcc_atomicILm8ELb0ELb0EE5storeERVmmNS_12memory_orderE.exit4
  br label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i

.lr.ph28.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph28.i.i
  %.027.i.i = phi i32 [ %i.q, %.lr.ph28.i.i ], [ 0, %.preheader.i.i ]
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !25
  %i.q = add nuw nsw i32 %.027.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.q, %.013.ph.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge29.i.i, label %.lr.ph28.i.i, !llvm.loop !0

bb.c:                                             ; preds = %._crit_edge.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = atomicrmw volatile add ptr %i.a, i32 2 monotonic, align 4
  %i.s = add i32 %i.r, 2
  br label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = load atomic volatile i32, ptr %i.a monotonic, align 8 ; 2 uses
  %i.u = icmp eq i32 %i.t, %.018.lcssa.i.i
  br i1 %i.u, label %.lr.ph25.i.i, label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i

.lr.ph25.i.i:                                     ; preds = %bb.e, %.lr.ph25.i.i
  %i.v = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 128, i32 noundef %.018.lcssa.i.i, ptr noundef null, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.w = load atomic volatile i32, ptr %i.a monotonic, align 8 ; 2 uses
  %i.x = icmp eq i32 %i.w, %.018.lcssa.i.i
  br i1 %i.x, label %.lr.ph25.i.i, label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i, !llvm.loop !1

_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i: ; preds = %.lr.ph25.i.i, %bb.e, %bb.d, %._crit_edge29.i.i, %bb.b
  %.119.i.i = phi i32 [ %i.p, %._crit_edge29.i.i ], [ %i.n, %bb.b ], [ %i.s, %bb.d ], [ %i.t, %bb.e ], [ %i.w, %.lr.ph25.i.i ]
  %.114.i.i = phi i32 [ %i.o, %._crit_edge29.i.i ], [ %.013.ph.i.i, %bb.b ], [ %.013.ph.i.i, %bb.d ], [ 1, %bb.e ], [ 1, %.lr.ph25.i.i ]
  %.1.i.i = phi i32 [ 0, %._crit_edge29.i.i ], [ 0, %bb.b ], [ 2, %bb.d ], [ %.012.ph.i.i, %bb.e ], [ %.012.ph.i.i, %.lr.ph25.i.i ]
  br label %.outer.i.i, !llvm.loop !2

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm8ELb0ELb0EE5storeERVmmNS_12memory_orderE.exit: ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 64, !tbaa !23
  %i.aa = ptrtoint ptr %1 to i64
  store atomic volatile i64 %i.aa, ptr %i.z monotonic, align 8
  store ptr %1, ptr %i.y, align 64, !tbaa !23
  %i.ab = tail call i8 asm sideeffect "lock; andl $2, $0\0A\09", "=*m,={@ccnz},ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 -2, ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a) #21, !srcloc !27 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc nuw i8 %i.ab to i1
  br i1 %i.ad, label %bb.f, label %_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEED2Ev.exit

bb.f:                                             ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm8ELb0ELb0EE5storeERVmmNS_12memory_orderE.exit
  %i.ae = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEED2Ev.exit

_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEED2Ev.exit: ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm8ELb0ELb0EE5storeERVmmNS_12memory_orderE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux21threadsafe_queue_impl7try_popEPS3_RPNS3_9node_baseES7_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux29threadsafe_queue_impl_generic7try_popERPNS2_21threadsafe_queue_impl9node_baseES7_(ptr noundef nonnull align 64 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3aux29threadsafe_queue_impl_generic7try_popERPNS2_21threadsafe_queue_impl9node_baseES7_(ptr noundef nonnull align 64 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load atomic volatile i32, ptr %i.a monotonic, align 8
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i, %bb.a
  %.018.ph.i.i = phi i32 [ %.119.i.i, %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.013.ph.i.i = phi i32 [ %.114.i.i, %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i ], [ 1, %bb.a ] ; 6 uses
  %.012.ph.i.i = phi i32 [ %.1.i.i, %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.c = and i32 %.018.ph.i.i, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.outer.i.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i
  %.01823.i.i = phi i32 [ %i.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i ], [ %.018.ph.i.i, %.outer.i.i ] ; 2 uses
  %i.e = sub i32 %.01823.i.i, %.012.ph.i.i
  %i.f = or i32 %i.e, 1
  %i.g = cmpxchg weak volatile ptr %i.a, i32 %.01823.i.i, i32 %i.f acquire monotonic, align 4 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEEC2ERS4_.exit, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.i = extractvalue { i32, i1 } %i.g, 0         ; 3 uses
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i, %.outer.i.i
  %.018.lcssa.i.i = phi i32 [ %.018.ph.i.i, %.outer.i.i ], [ %i.i, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i.i ] ; 3 uses
  %i.l = icmp ult i32 %.013.ph.i.i, 16
  %.not.i.i = icmp eq i32 %.012.ph.i.i, 0         ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge.i.i
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %bb.b
  %.not30.i.i = icmp eq i32 %.013.ph.i.i, 0
  br i1 %.not30.i.i, label %._crit_edge29.i.i, label %.lr.ph28.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile sub ptr %i.a, i32 2 monotonic, align 4
  %i.n = add i32 %i.m, -2
  br label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i

._crit_edge29.i.i:                                ; preds = %.lr.ph28.i.i, %.preheader.i.i
  %i.o = shl nuw nsw i32 %.013.ph.i.i, 1
  %i.p = load atomic volatile i32, ptr %i.a monotonic, align 8
  br label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i

.lr.ph28.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph28.i.i
  %.027.i.i = phi i32 [ %i.q, %.lr.ph28.i.i ], [ 0, %.preheader.i.i ]
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !25
  %i.q = add nuw nsw i32 %.027.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.q, %.013.ph.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge29.i.i, label %.lr.ph28.i.i, !llvm.loop !0

bb.d:                                             ; preds = %._crit_edge.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.a, i32 2 monotonic, align 4
  %i.s = add i32 %i.r, 2
  br label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = load atomic volatile i32, ptr %i.a monotonic, align 8 ; 2 uses
  %i.u = icmp eq i32 %i.t, %.018.lcssa.i.i
  br i1 %i.u, label %.lr.ph25.i.i, label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i

.lr.ph25.i.i:                                     ; preds = %bb.f, %.lr.ph25.i.i
  %i.v = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 128, i32 noundef %.018.lcssa.i.i, ptr noundef null, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  %i.w = load atomic volatile i32, ptr %i.a monotonic, align 8 ; 2 uses
  %i.x = icmp eq i32 %i.w, %.018.lcssa.i.i
  br i1 %i.x, label %.lr.ph25.i.i, label %_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i, !llvm.loop !1

_ZN5boost7atomics6detail15wait_operationsINS1_15core_operationsILm4ELb0ELb0EEELm4ELb1ELb0EE4waitERVKjjNS_12memory_orderE.exit.i.i: ; preds = %.lr.ph25.i.i, %bb.f, %bb.e, %._crit_edge29.i.i, %bb.c
  %.119.i.i = phi i32 [ %i.p, %._crit_edge29.i.i ], [ %i.n, %bb.c ], [ %i.s, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %.lr.ph25.i.i ]
  %.114.i.i = phi i32 [ %i.o, %._crit_edge29.i.i ], [ %.013.ph.i.i, %bb.c ], [ %.013.ph.i.i, %bb.e ], [ 1, %bb.f ], [ 1, %.lr.ph25.i.i ]
  %.1.i.i = phi i32 [ 0, %._crit_edge29.i.i ], [ 0, %bb.c ], [ 2, %bb.e ], [ %.012.ph.i.i, %bb.f ], [ %.012.ph.i.i, %.lr.ph25.i.i ]
  br label %.outer.i.i, !llvm.loop !2

_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEEC2ERS4_.exit: ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %0, align 64, !tbaa !24    ; 2 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8 ; 2 uses
  %.not = icmp ne i64 %i.z, 0                     ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEEC2ERS4_.exit
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  store ptr %i.y, ptr %1, align 8, !tbaa !40
  store ptr %i.aa, ptr %0, align 64, !tbaa !24
  store ptr %i.aa, ptr %2, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEEC2ERS4_.exit, %bb.g
  %i.ab = tail call i8 asm sideeffect "lock; andl $2, $0\0A\09", "=*m,={@ccnz},ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a, i32 -2, ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.a) #21, !srcloc !27 ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 2
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = trunc nuw i8 %i.ab to i1
  br i1 %i.ad, label %bb.i, label %_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  br label %_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEED2Ev.exit

_ZN5boost3log11v2_mt_posix3aux20exclusive_lock_guardINS2_14adaptive_mutexEED2Ev.exit: ; preds = %bb.h, %bb.i
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt9bad_allocEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #21 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt9bad_allocEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt9bad_allocEE, ptr nonnull @_ZN5boost10wrapexceptISt9bad_allocED2Ev) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt9bad_allocEC2ERKS1_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 16), ptr %0, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 64), ptr %i.a, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.b, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !28
  %i.h = shufflevector <2 x ptr> %i.g, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !28
  %i.i = load <2 x i32>, ptr %i.e, align 8, !tbaa !29
  store <2 x i32> %i.i, ptr %i.d, align 8, !tbaa !29
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt9bad_allocED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !3 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #21
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptISt9bad_allocE5cloneEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !32
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %.body, !inline_history !41

.body:                                            ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #21, !inline_history !43
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 16), ptr %i.a, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 64), ptr %i.b, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.c, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.m)
          to label %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit unwind label %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7

_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit: ; preds = %bb.c
  ret ptr %i.a

_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #21, !inline_history !42
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7, %.body
  %.pn = phi { ptr, i32 } [ %i.n, %_ZN5boost10wrapexceptISt9bad_allocE7deleterD2Ev.exit7 ], [ %i.j, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost10wrapexceptISt9bad_allocE7rethrowEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 56) #21 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt9bad_allocEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt9bad_allocEE, ptr nonnull @_ZN5boost10wrapexceptISt9bad_allocED2Ev) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt9bad_allocED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit unwind label %bb.c, !inline_history !3 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptISt9bad_allocED1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit unwind label %bb.c, !inline_history !3 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable

_ZN5boost10wrapexceptISt9bad_allocED2Ev.exit:     ; preds = %bb.a, %bb.b
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N5boost10wrapexceptISt9bad_allocED0Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN5boost10wrapexceptISt9bad_allocEC2ERKS2_:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt9bad_allocEE, i64 104), ptr %i.b, align 8, !tbaa !13
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9bad_allocD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #21
  resume { ptr, i32 } %i.k
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost16exception_detail20copy_boost_exceptionEPNS_9exceptionEPKS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::exception_detail::refcount_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.boost::exception_detail::refcount_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i unwind label %bb.f

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !32     ; 6 uses
  %.not.i2.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i2.i.i, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit unwind label %bb.g, !inline_history !45

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit
  %i.j = load ptr, ptr %.pr, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit unwind label %bb.e, !inline_history !3 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #23
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit: ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21

bb.g:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.r, null
  br i1 %.not.i.i20, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 unwind label %bb.i, !inline_history !3 ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #23
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.o

bb.j:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit, %bb.a
  %.sroa.0.2 = phi ptr [ null, %bb.a ], [ %i.f, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !28
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !tbaa !28
  %i.ad = load <2 x i32>, ptr %i.y, align 8, !tbaa !29
  store <2 x i32> %i.ad, ptr %i.z, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i22, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23 unwind label %bb.n, !inline_history !45 ; 0 uses

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23: ; preds = %bb.k, %bb.j
  store ptr %.sroa.0.2, ptr %i.ae, align 8, !tbaa !32
  %.not.i2.i.i24 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i2.i.i24, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29, label %bb.l

bb.l:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23
  %i.ak = load ptr, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27 unwind label %bb.n, !inline_history !45

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27: ; preds = %bb.l
  %i.an = load ptr, ptr %.sroa.0.2, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29 unwind label %bb.m, !inline_history !3 ; 0 uses

bb.m:                                             ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #23
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit29: ; preds = %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEE7releaseEv.exit.i.i23, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEaSERKS3_.exit27
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.n ], [ %.sroa.0.1, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 ] ; 3 uses
  %.pn17 = phi { ptr, i32 } [ %i.at, %bb.n ], [ %.pn, %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit21 ]
  %.not.i.i30 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i30, label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %.sroa.0.3, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.3)
          to label %_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31 unwind label %bb.q, !inline_history !3 ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #23
  unreachable

_ZN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEED2Ev.exit31: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSN5boost7atomics6detail18base_atomic_commonIjLb0ELb0EEE", !9, i64 0}
!17 = !{!"p1 _ZTSN5boost3log11v2_mt_posix3aux21threadsafe_queue_impl9node_baseE", !14, i64 0}
!18 = !{!"_ZTSN5boost7atomics6detail11base_atomicIjiLb0EEE", !16, i64 0}
!19 = !{!"_ZTSN5boost7atomics6atomicIjEE", !18, i64 0}
!20 = !{!"_ZTSN5boost3log11v2_mt_posix3aux14adaptive_mutexE", !19, i64 0}
!21 = !{!"_ZTSN5boost3log11v2_mt_posix3aux29threadsafe_queue_impl_generic7pointerE", !17, i64 0, !20, i64 8, !8, i64 12}
!22 = !{!"_ZTSN5boost3log11v2_mt_posix3aux29threadsafe_queue_impl_genericE", !21, i64 0, !21, i64 128}
!23 = !{!22, !17, i64 128}
!24 = !{!22, !17, i64 0}
!25 = !{i64 2944207}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{i64 3102563, i64 3102600}
!28 = !{!15, !15, i64 0}
!29 = !{!9, !9, i64 0}
!30 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !14, i64 0}
!31 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{!"_ZTSN5boost15source_locationE", !15, i64 0, !15, i64 8, !9, i64 16, !9, i64 20}
!35 = !{!34, !15, i64 0}
!36 = !{!34, !15, i64 8}
!37 = !{!34, !9, i64 16}
!38 = !{!34, !9, i64 20}
!39 = !{!16, !9, i64 0}
!40 = !{!17, !17, i64 0}
!41 = distinct !{ptr @_ZN5boost10wrapexceptISt9bad_allocEC2ERKS2_, null}
!42 = distinct !{null}
!43 = !{ptr @_ZN5boost10wrapexceptISt9bad_allocEC2ERKS2_}
!44 = distinct !{null}
!45 = distinct !{null}
end_hunk_1
