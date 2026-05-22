inline.NumInlined: 35
inline.NumDeleted: 17
begin_hunk_0_@_PyParkingLot_Park:bb.a
bb.d:                                             ; preds = %_PyRawMutex_Lock.exit
  %i.l = load atomic i32, ptr %0 seq_cst, align 4
  %i.m = load i32, ptr %1, align 4, !tbaa !7
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.i, label %bb.g

bb.e:                                             ; preds = %_PyRawMutex_Lock.exit
  %i.o = load atomic i64, ptr %0 seq_cst, align 8
  %i.p = load i64, ptr %1, align 8, !tbaa !11
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.i, label %bb.g

bb.f:                                             ; preds = %_PyRawMutex_Lock.exit
  unreachable

atomic_memcmp.exit:                               ; preds = %_PyRawMutex_Lock.exit
  %i.r = load atomic i16, ptr %0 seq_cst, align 2
  %i.s = load i16, ptr %1, align 2, !tbaa !22
  %i.t = icmp eq i16 %i.r, %i.s
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c, %atomic_memcmp.exit
  %i.u = cmpxchg ptr %i.e, i64 1, i64 0 seq_cst seq_cst, align 8
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %_PyRawMutex_Unlock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_PyRawMutex_UnlockSlow(ptr noundef %i.e) #9
  br label %_PyRawMutex_Unlock.exit

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.c, %atomic_memcmp.exit
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.x = call i32 @sem_init(ptr noundef nonnull %i.w, i32 noundef 0, i32 noundef 0) #9
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %_PySemaphore_Init.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PySemaphore_Init, ptr noundef nonnull @.str) #10
  unreachable

_PySemaphore_Init.exit:                           ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.ab = getelementptr i8, ptr %i.e, i64 16      ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !25
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !25
  store ptr %i.aa, ptr %i.ab, align 16, !tbaa !24
  %i.ae = getelementptr i8, ptr %i.e, i64 24      ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !26
  %i.ah = cmpxchg ptr %i.e, i64 1, i64 0 seq_cst seq_cst, align 8
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %_PyRawMutex_Unlock.exit35, label %bb.k

bb.k:                                             ; preds = %_PySemaphore_Init.exit
  call void @_PyRawMutex_UnlockSlow(ptr noundef %i.e) #9
  br label %_PyRawMutex_Unlock.exit35

_PyRawMutex_Unlock.exit35:                        ; preds = %_PySemaphore_Init.exit, %bb.k
  %.not30 = icmp eq i32 %5, 0
  br i1 %.not30, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_PyRawMutex_Unlock.exit35
  %i.aj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_tstate)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 4 uses
  %.not31 = icmp eq ptr %i.ak, null
  br i1 %.not31, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr i8, ptr %i.ak, i64 48
  %i.am = load atomic i32, ptr %i.al monotonic, align 4
  %.not = icmp eq i32 %i.am, 1
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @PyEval_ReleaseThread(ptr noundef nonnull %i.ak) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %_PyRawMutex_Unlock.exit35
  %.025 = phi ptr [ %i.ak, %bb.n ], [ null, %_PyRawMutex_Unlock.exit35 ], [ null, %bb.m ], [ null, %bb.l ] ; 2 uses
  %i.an = call i32 @_PySemaphore_Wait(ptr noundef nonnull %i.w, i64 noundef %3) ; 3 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_PyRawMutex_Unlock.exit39, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = cmpxchg ptr %i.e, i64 0, i64 1 seq_cst seq_cst, align 8
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %_PyRawMutex_Lock.exit36, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_PyRawMutex_LockSlow(ptr noundef %i.e) #9
  br label %_PyRawMutex_Lock.exit36

_PyRawMutex_Lock.exit36:                          ; preds = %bb.p, %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !31, !range !32, !noundef !33
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_PyRawMutex_Lock.exit36
  %i.au = cmpxchg ptr %i.e, i64 1, i64 0 seq_cst seq_cst, align 8
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %_PyRawMutex_Unlock.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_PyRawMutex_UnlockSlow(ptr noundef %i.e) #9
  br label %_PyRawMutex_Unlock.exit37

_PyRawMutex_Unlock.exit37:                        ; preds = %bb.r, %bb.s
  %i.aw = call i32 @sem_wait(ptr noundef nonnull %i.w) #9
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %.lr.ph, label %_PyRawMutex_Unlock.exit39

.lr.ph:                                           ; preds = %_PyRawMutex_Unlock.exit37
  %i.ay = tail call ptr @__errno_location() #11
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_PySemaphore_Wait.exit
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7  ; 2 uses
  switch i32 %i.az, label %bb.u [
    i32 4, label %_PySemaphore_Wait.exit
    i32 110, label %_PySemaphore_Wait.exit
  ]

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, ...) @_Py_FatalErrorFormat(ptr noundef nonnull @__func__._PySemaphore_Wait, ptr noundef nonnull @.str.1, i32 noundef %i.az) #10
  unreachable

_PySemaphore_Wait.exit:                           ; preds = %bb.t, %bb.t
  %i.ba = call i32 @sem_wait(ptr noundef nonnull %i.w) #9
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.t, label %_PyRawMutex_Unlock.exit39, !llvm.loop !34

bb.v:                                             ; preds = %_PyRawMutex_Lock.exit36
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !25
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.bf = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.bg = add i64 %i.bf, -1
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !26
  %i.bh = cmpxchg ptr %i.e, i64 1, i64 0 seq_cst seq_cst, align 8
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  br i1 %i.bi, label %_PyRawMutex_Unlock.exit39, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_PyRawMutex_UnlockSlow(ptr noundef %i.e) #9
  br label %_PyRawMutex_Unlock.exit39

_PyRawMutex_Unlock.exit39:                        ; preds = %_PySemaphore_Wait.exit, %_PyRawMutex_Unlock.exit37, %bb.w, %bb.v, %bb.o
  %.0 = phi i32 [ 0, %bb.o ], [ %i.an, %bb.w ], [ %i.an, %bb.v ], [ 0, %_PyRawMutex_Unlock.exit37 ], [ 0, %_PySemaphore_Wait.exit ] ; 2 uses
  %i.bj = call i32 @sem_destroy(ptr noundef nonnull %i.w) #9 ; 0 uses
  %.not34 = icmp eq ptr %.025, null
  br i1 %.not34, label %_PyRawMutex_Unlock.exit, label %bb.x

bb.x:                                             ; preds = %_PyRawMutex_Unlock.exit39
  call void @PyEval_AcquireThread(ptr noundef nonnull %.025) #9
  br label %_PyRawMutex_Unlock.exit

_PyRawMutex_Unlock.exit:                          ; preds = %bb.h, %bb.g, %_PyRawMutex_Unlock.exit39, %bb.x
  %.026 = phi i32 [ %.0, %_PyRawMutex_Unlock.exit39 ], [ %.0, %bb.x ], [ -1, %bb.g ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret i32 %.026
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @PyEval_ReleaseThread(ptr noundef) local_unnamed_addr #4

declare void @PyEval_AcquireThread(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @_PyParkingLot_Unpark(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = urem i64 %i.a, 257
  %i.c = getelementptr [32 x i8], ptr @buckets, i64 %i.b ; 6 uses
  %i.d = cmpxchg ptr %i.c, i64 0, i64 1 seq_cst seq_cst, align 8
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %_PyRawMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyRawMutex_LockSlow(ptr noundef %i.c) #9
  br label %_PyRawMutex_Lock.exit

_PyRawMutex_Lock.exit:                            ; preds = %bb.a, %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_PyRawMutex_Lock.exit
  %.014.in.i = phi ptr [ %i.f, %_PyRawMutex_Lock.exit ], [ %.014.i, %bb.d ]
  %.014.i = load ptr, ptr %.014.in.i, align 8, !tbaa !25 ; 8 uses
  %.not.i = icmp eq ptr %.014.i, %i.f
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.014.i, i64 -40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %.not15.i = icmp eq i64 %i.h, %i.a
  br i1 %.not15.i, label %dequeue.exit, label %bb.c

dequeue.exit:                                     ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.014.i, i64 -48   ; 3 uses
  %i.j = getelementptr i8, ptr %.014.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = load ptr, ptr %.014.i, align 8, !tbaa !25 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.014.i, i8 0, i64 16, i1 false)
  %i.n = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !26
  %i.q = getelementptr i8, ptr %.014.i, i64 16
  store i8 1, ptr %i.q, align 8, !tbaa !31
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %dequeue.exit
  %i.r = icmp ne i64 %i.p, 0
  %i.s = zext i1 %i.r to i32
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %dequeue.exit, %bb.e
  %.sink24 = phi i32 [ %i.s, %bb.e ], [ 0, %dequeue.exit ], [ 0, %bb.c ]
  %.sink = phi ptr [ %i.t, %bb.e ], [ null, %dequeue.exit ], [ null, %bb.c ]
  %.not19 = phi i1 [ false, %bb.e ], [ true, %dequeue.exit ], [ true, %bb.c ]
  %.2.i17 = phi ptr [ %i.i, %bb.e ], [ null, %dequeue.exit ], [ null, %bb.c ]
  tail call void %1(ptr noundef %2, ptr noundef %.sink, i32 noundef %.sink24) #9
  %i.u = cmpxchg ptr %i.c, i64 1, i64 0 seq_cst seq_cst, align 8
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %_PyRawMutex_Unlock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_PyRawMutex_UnlockSlow(ptr noundef %i.c) #9
  br label %_PyRawMutex_Unlock.exit

_PyRawMutex_Unlock.exit:                          ; preds = %bb.f, %bb.g
  br i1 %.not19, label %_PySemaphore_Wakeup.exit, label %bb.h

bb.h:                                             ; preds = %_PyRawMutex_Unlock.exit
  %i.w = getelementptr i8, ptr %.2.i17, i64 16
  %i.x = tail call i32 @sem_post(ptr noundef %i.w) #9
  %.not.i14 = icmp eq i32 %i.x, 0
  br i1 %.not.i14, label %_PySemaphore_Wakeup.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PySemaphore_Wakeup, ptr noundef nonnull @.str.2) #10
  unreachable

_PySemaphore_Wakeup.exit:                         ; preds = %bb.h, %_PyRawMutex_Unlock.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyParkingLot_UnparkAll(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.llist_node, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr %1, ptr %1, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !24
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = urem i64 %i.b, 257
  %i.d = getelementptr [32 x i8], ptr @buckets, i64 %i.c ; 6 uses
  %i.e = cmpxchg ptr %i.d, i64 0, i64 1 seq_cst seq_cst, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_PyRawMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_PyRawMutex_LockSlow(ptr noundef %i.d) #9
  br label %_PyRawMutex_Lock.exit

_PyRawMutex_Lock.exit:                            ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not17.i = icmp eq ptr %i.h, %i.g
  br i1 %.not17.i, label %dequeue_all.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_PyRawMutex_Lock.exit
  %i.i = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.018.i = phi ptr [ %i.h, %.lr.ph.i ], [ %.01519.i, %bb.e ] ; 8 uses
  %.01519.i = load ptr, ptr %.018.i, align 8, !tbaa !25 ; 4 uses
  %i.j = getelementptr i8, ptr %.018.i, i64 -40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = icmp eq i64 %i.k, %i.b
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.018.i, i64 8     ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  store ptr %.01519.i, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr i8, ptr %.01519.i, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.018.i, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !24
  store ptr %1, ptr %.018.i, align 8, !tbaa !25
  store ptr %.018.i, ptr %i.p, align 8, !tbaa !25
  store ptr %.018.i, ptr %i.a, align 8, !tbaa !24
  %i.q = load i64, ptr %i.i, align 8, !tbaa !26
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.i, align 8, !tbaa !26
  %i.s = getelementptr i8, ptr %.018.i, i64 16
  store i8 1, ptr %i.s, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i = icmp eq ptr %.01519.i, %i.g
  br i1 %.not.i, label %dequeue_all.exit, label %bb.c, !llvm.loop !36

dequeue_all.exit:                                 ; preds = %bb.e, %_PyRawMutex_Lock.exit
  %i.t = cmpxchg ptr %i.d, i64 1, i64 0 seq_cst seq_cst, align 8
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %_PyRawMutex_Unlock.exit, label %bb.f

bb.f:                                             ; preds = %dequeue_all.exit
  call void @_PyRawMutex_UnlockSlow(ptr noundef %i.d) #9
  br label %_PyRawMutex_Unlock.exit

_PyRawMutex_Unlock.exit:                          ; preds = %dequeue_all.exit, %bb.f
  %i.v = load ptr, ptr %1, align 8, !tbaa !25
  br label %_PySemaphore_Wakeup.exit

_PySemaphore_Wakeup.exit:                         ; preds = %bb.h, %_PyRawMutex_Unlock.exit
  %.0 = phi ptr [ %i.v, %_PyRawMutex_Unlock.exit ], [ %.012, %bb.h ] ; 5 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_PySemaphore_Wakeup.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

bb.h:                                             ; preds = %_PySemaphore_Wakeup.exit
  %.012 = load ptr, ptr %.0, align 8, !tbaa !25   ; 3 uses
  %i.w = getelementptr i8, ptr %.0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24   ; 2 uses
  store ptr %.012, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr i8, ptr %.012, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0, i8 0, i64 16, i1 false)
  %i.z = getelementptr i8, ptr %.0, i64 -32
  %i.aa = call i32 @sem_post(ptr noundef %i.z) #9
  %.not.i13 = icmp eq i32 %i.aa, 0
  br i1 %.not.i13, label %_PySemaphore_Wakeup.exit, label %bb.i, !llvm.loop !37

bb.i:                                             ; preds = %bb.h
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PySemaphore_Wakeup, ptr noundef nonnull @.str.2) #10
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_PyParkingLot_AfterFork() local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8224) @buckets, i8 0, i64 8224, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.d, %bb.a
  %.03 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.d ]    ; 6 uses
  %i.a = getelementptr [32 x i8], ptr @buckets, i64 %.03 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 3 uses
  store ptr %i.b, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.c, align 16, !tbaa !24
  %exitcond.not = icmp eq i64 %.03, 256
  br i1 %exitcond.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr [32 x i8], ptr @buckets, i64 %.03 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 40       ; 3 uses
  store ptr %i.e, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr i8, ptr %i.d, i64 48
  store ptr %i.e, ptr %i.f, align 16, !tbaa !24
  %i.g = getelementptr [32 x i8], ptr @buckets, i64 %.03 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 72       ; 3 uses
  store ptr %i.h, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr i8, ptr %i.g, i64 80
  store ptr %i.h, ptr %i.i, align 16, !tbaa !24
  %i.j = getelementptr [32 x i8], ptr @buckets, i64 %.03 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 104      ; 3 uses
  store ptr %i.k, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr i8, ptr %i.j, i64 112
  store ptr %i.k, ptr %i.l, align 16, !tbaa !24
  %i.m = add nuw nsw i64 %.03, 4
  br label %bb.c
}

declare void @_PyRawMutex_LockSlow(ptr noundef) local_unnamed_addr #4

declare void @_PyRawMutex_UnlockSlow(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
end_hunk_0
