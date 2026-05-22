inline.NumInlined: 35
inline.NumDeleted: 18
begin_hunk_0_@_ZN5boost7atomics6detail9lock_pool4waitEPvS3_:bb.a
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit.i
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %i.y = load i32, ptr %i.c, align 4, !tbaa !32
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.c, align 4, !tbaa !32
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %2, align 8
  store i64 1000, ptr %i.aa, align 8, !tbaa !36
  %i.ab = invoke i32 @nanosleep(ptr noundef nonnull %2, ptr noundef null)
          to label %_ZN5boost7atomics6detail9wait_someEv.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #15
  unreachable

_ZN5boost7atomics6detail9wait_someEv.exit:        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost7atomics6detail9wait_someEv.exit, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state4waitERNS3_10lock_stateE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool10notify_oneEPvPVKv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.e = load atomic volatile i64, ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_114g_find_addressE monotonic, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = invoke noundef i64 %i.f(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.d)
          to label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i unwind label %bb.c, !inline_history !22 ; 2 uses

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i: ; preds = %bb.b
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %.not.i6 = icmp eq i32 %i.u, 0
  br i1 %.not.i6, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %i.q, i32 noundef 131, i32 noundef 0, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #14 ; 0 uses
  tail call void asm sideeffect "lock; orl $1, $0\0A\09", "=*m,ir,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 8 dereferenceable(24) %0, i32 2, ptr nonnull elementtype(i32) align 8 dereferenceable(24) %0) #14, !srcloc !38
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_oneERNS3_10lock_stateE.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i, %bb.a, %bb.e, %bb.d, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool10notify_allEPvPVKv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.e = load atomic volatile i64, ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_114g_find_addressE monotonic, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = invoke noundef i64 %i.f(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.d)
          to label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i unwind label %bb.c, !inline_history !22 ; 2 uses

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i: ; preds = %bb.b
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %.not.i6 = icmp eq i32 %i.u, 0
  br i1 %.not.i6, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %i.q, i32 noundef 131, i32 noundef 0, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #14 ; 0 uses
  tail call void asm sideeffect "lock; orl $1, $0\0A\09", "=*m,ir,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 8 dereferenceable(24) %0, i32 2, ptr nonnull elementtype(i32) align 8 dereferenceable(24) %0) #14, !srcloc !38
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110wait_state10notify_allERNS3_10lock_stateE.exit: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_112find_addressEPVKvPKS5_m.exit.i, %bb.a, %bb.e, %bb.d, %_ZNK5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list4findEPVKv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7atomics6detail9lock_pool12thread_fenceEv() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1, !tbaa !39
  call void asm sideeffect "lock; notb $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.a, ptr nonnull elementtype(i8) %i.a) #14, !srcloc !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define void @_ZN5boost7atomics6detail9lock_pool12signal_fenceEv() local_unnamed_addr #3 {
_ZN5boost7atomics6detail27fence_operations_gcc_atomic12signal_fenceENS_12memory_orderE.exit:
  fence syncscope("singlethread") seq_cst
  ret void
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list15allocate_bufferEmPNS4_6headerE(i64 noundef %0, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load atomic volatile i8, ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_125g_pool_cleanup_registeredE monotonic, align 1
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw volatile xchg ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_125g_pool_cleanup_registeredE, i8 1 monotonic, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @atexit(ptr noundef nonnull @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_117cleanup_lock_poolEv) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.g = shl i64 %0, 4
  %i.h = add i64 %i.g, 16                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.i = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef %i.h) #14
  %.not.i = icmp ne i32 %i.i, 0
  %.pre.i = load ptr, ptr %i.a, align 8           ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.j = icmp eq ptr %.pre.i, null
  %i.k = select i1 %.not.i, i1 true, i1 %i.j
  br i1 %i.k, label %bb.h, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %0 ; 2 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !19     ; 2 uses
  store i64 %i.n, ptr %.pre.i, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = shl i64 %i.n, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.o, i64 %i.p, i1 false)
  %i.q = load i64, ptr %1, align 8, !tbaa !19     ; 2 uses
  %.idx = shl i64 %i.q, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.s = sub i64 %0, %i.q
  %i.t = shl i64 %i.s, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v
  %i.x = shl i64 %i.v, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.w, i64 %i.x, i1 false)
  %i.y = load i64, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.idx34 = shl i64 %i.y, 6
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx34
  %i.aa = sub i64 %0, %i.y
  %i.ab = shl i64 %i.aa, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ %i.ab, %bb.f ], [ %i.h, %bb.e ]
  %.pre.i.sink = phi ptr [ %i.z, %bb.f ], [ %.pre.i, %bb.e ]
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.pre.i.sink, i8 0, i64 %.sink, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  store i64 %0, ptr %i.ac, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.0 = phi ptr [ %.pre.i, %bb.g ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_117cleanup_lock_poolEv() #2 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit
  %.08 = phi i64 [ 0, %bb.a ], [ %i.ah, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit ] ; 2 uses
  %i.a = getelementptr inbounds nuw [64 x i8], ptr @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_111g_lock_poolE, i64 %.08 ; 8 uses
  tail call fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state9long_lockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %i.c, align 16, !tbaa !41
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !14   ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load i64, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.013.i = phi i64 [ %i.m, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.013.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %.not12.not.i = icmp eq ptr %i.l, null
  br i1 %.not12.not.i, label %.critedge.loopexit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #17
  store ptr null, ptr %i.k, align 8, !tbaa !24
  %i.m = add i64 %.013.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !43

.critedge.loopexit.i:                             ; preds = %bb.e, %.lr.ph.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %.pre15.i = load i64, ptr %.pre.i, align 8, !tbaa !19
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.d
  %i.n = phi i64 [ %.pre15.i, %.critedge.loopexit.i ], [ %i.i, %bb.d ]
  %i.o = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.d, %bb.d ]
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %bb.f, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit

bb.f:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.o) #14
  store ptr null, ptr %i.b, align 8, !tbaa !14
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit: ; preds = %bb.c, %.critedge.i, %bb.f
  %i.q = load atomic volatile i32, ptr %i.a monotonic, align 64 ; 3 uses
  %i.r = and i32 %i.q, -2
  %i.s = add i32 %i.r, 4                          ; 2 uses
  %i.t = cmpxchg weak volatile ptr %i.a, i32 %i.q, i32 %i.s release monotonic, align 4 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %._crit_edge.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i: ; preds = %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i
  %i.v = phi { i32, i1 } [ %i.z, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ], [ %i.t, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit ]
  %i.w = extractvalue { i32, i1 } %i.v, 0         ; 3 uses
  %i.x = and i32 %i.w, -2
  %i.y = add i32 %i.x, 4                          ; 2 uses
  %i.z = cmpxchg weak volatile ptr %i.a, i32 %i.w, i32 %i.y release monotonic, align 4 ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.z, 1
  br i1 %i.aa, label %._crit_edge.i, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i

._crit_edge.i:                                    ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit
  %.0.lcssa.i = phi i32 [ %i.q, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit ], [ %i.w, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ]
  %.lcssa.i = phi i32 [ %i.s, %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv.exit ], [ %i.y, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE21compare_exchange_weakERVjRjjNS_12memory_orderES7_.exit.i ] ; 2 uses
  %i.ab = and i32 %.0.lcssa.i, 2
  %.not.i6 = icmp eq i32 %i.ab, 0
  br i1 %.not.i6, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 129, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0) #14
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit

bb.h:                                             ; preds = %bb.g
  %i.af = and i32 %.lcssa.i, -4
  %i.ag = cmpxchg volatile ptr %i.a, i32 %.lcssa.i, i32 %i.af monotonic monotonic, align 4 ; 0 uses
  br label %_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit

_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_110lock_state6unlockEv.exit: ; preds = %._crit_edge.i, %bb.g, %bb.h
  %i.ah = add nuw nsw i64 %.08, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, 256
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5boost7atomics6detail9lock_pool12_GLOBAL__N_115wait_state_list10free_spareEv(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.013 = phi i64 [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.013 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.not12.not = icmp eq ptr %i.i, null
  br i1 %.not12.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 24) #17
  store ptr null, ptr %i.h, align 8, !tbaa !24
  %i.j = add i64 %.013, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.d
  br i1 %exitcond.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !43

.critedge.loopexit:                               ; preds = %.lr.ph, %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %.pre15 = load i64, ptr %.pre, align 8, !tbaa !19
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %i.k = phi i64 [ %.pre15, %.critedge.loopexit ], [ %i.f, %bb.b ]
  %i.l = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.a, %bb.b ]
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.l) #14
  store ptr null, ptr %0, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #11

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare noundef i64 @_ZN5boost7atomics6detail18find_address_sse41EPVKvPKS3_m(ptr noundef, ptr noundef, i64 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_0
