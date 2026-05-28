inline.NumInlined: 73
inline.NumDeleted: 25
begin_hunk_0_@_PyMutex_LockTimed:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  %.027 = phi i64 [ %i.n, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.o = load i64, ptr %i.a, align 8, !tbaa !11
  %i.p = add i64 %i.o, 1000000
  store i64 %i.p, ptr %3, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = and i32 %2, 8
  %.not36 = icmp eq i32 %i.s, 0
  %i.t = and i32 %2, 1
  %i.u = and i32 %2, 2
  %.not40 = icmp eq i32 %i.u, 0
  %i.v = and i32 %2, 4
  %.not41 = icmp eq i32 %i.v, 0
  br label %.outer

.outer:                                           ; preds = %bb.t, %bb.f
  %.1.ph = phi i8 [ %.355, %bb.t ], [ %.053, %bb.f ] ; 3 uses
  %.030.ph = phi i64 [ %.333, %bb.t ], [ %1, %bb.f ] ; 5 uses
  %i.w = and i8 %.1.ph, 1
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %_Py_atomic_compare_exchange_uint8.exit47
  %.169 = phi i8 [ %i.ab, %_Py_atomic_compare_exchange_uint8.exit47 ], [ %.1.ph, %.outer ] ; 2 uses
  %i.y = or disjoint i8 %.169, 1
  %i.z = cmpxchg ptr %0, i8 %.169, i8 %i.y seq_cst seq_cst, align 1 ; 2 uses
  %i.aa = extractvalue { i8, i1 } %i.z, 1
  br i1 %i.aa, label %_Py_atomic_compare_exchange_uint8.exit47.thread, label %_Py_atomic_compare_exchange_uint8.exit47

_Py_atomic_compare_exchange_uint8.exit47:         ; preds = %.lr.ph
  %i.ab = extractvalue { i8, i1 } %i.z, 0         ; 3 uses
  %i.ac = and i8 %i.ab, 1
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_Py_atomic_compare_exchange_uint8.exit47, %.outer
  %.1.lcssa = phi i8 [ %.1.ph, %.outer ], [ %i.ab, %_Py_atomic_compare_exchange_uint8.exit47 ] ; 4 uses
  %i.ae = icmp eq i64 %.030.ph, 0
  br i1 %i.ae, label %_Py_atomic_compare_exchange_uint8.exit47.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  br i1 %.not36, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = call i32 @Py_IsFinalizing() #8
  %.not37 = icmp eq i32 %i.af, 0
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr @PyExc_PythonFinalizationError, align 8, !tbaa !16
  call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str) #8
  br label %_Py_atomic_compare_exchange_uint8.exit47.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i8 %.1.lcssa, ptr %i.b, align 1, !tbaa !19
  %i.ah = and i8 %.1.lcssa, 2
  %.not38 = icmp eq i8 %i.ah, 0
  br i1 %.not38, label %bb.k, label %_Py_atomic_compare_exchange_uint8.exit48

bb.k:                                             ; preds = %bb.j
  %i.ai = or disjoint i8 %.1.lcssa, 2             ; 2 uses
  store i8 %i.ai, ptr %i.b, align 1, !tbaa !19
  %i.aj = cmpxchg ptr %0, i8 %.1.lcssa, i8 %i.ai seq_cst seq_cst, align 1 ; 2 uses
  %i.ak = extractvalue { i8, i1 } %i.aj, 1
  br i1 %i.ak, label %_Py_atomic_compare_exchange_uint8.exit48, label %_Py_atomic_compare_exchange_uint8.exit48.thread

_Py_atomic_compare_exchange_uint8.exit48.thread:  ; preds = %bb.k
  %i.al = extractvalue { i8, i1 } %i.aj, 0
  br label %bb.t

_Py_atomic_compare_exchange_uint8.exit48:         ; preds = %bb.k, %bb.j
  %i.am = call i32 @_PyParkingLot_Park(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %.030.ph, ptr noundef nonnull %3, i32 noundef %i.t) #8 ; 3 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_Py_atomic_compare_exchange_uint8.exit48
  %i.ao = load i32, ptr %i.q, align 8, !tbaa !15
  %.not42 = icmp eq i32 %i.ao, 0
  br i1 %.not42, label %bb.q, label %.thread

bb.m:                                             ; preds = %_Py_atomic_compare_exchange_uint8.exit48
  %i.ap = icmp ne i32 %i.am, -3                   ; 2 uses
  %or.cond = or i1 %.not40, %i.ap
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = call i32 @Py_MakePendingCalls() #8
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread, label %bb.q

bb.o:                                             ; preds = %bb.m
  %or.cond46 = or i1 %.not41, %i.ap
  br i1 %or.cond46, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.as = icmp eq i32 %i.am, -2
  br i1 %i.as, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.l
  %i.at = icmp sgt i64 %.030.ph, 0
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = call i64 @_PyDeadline_Get(i64 noundef %.027) #8
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.au, i64 0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.131 = phi i64 [ %spec.store.select, %bb.r ], [ %.030.ph, %bb.q ]
  %i.av = load atomic i8, ptr %0 monotonic, align 1
  br label %bb.t

.thread:                                          ; preds = %bb.o, %bb.l, %bb.n, %bb.p
  %.2.ph = phi i32 [ 0, %bb.p ], [ 2, %bb.n ], [ 1, %bb.l ], [ 2, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %_Py_atomic_compare_exchange_uint8.exit47.thread

bb.t:                                             ; preds = %_Py_atomic_compare_exchange_uint8.exit48.thread, %bb.s
  %.355 = phi i8 [ %i.al, %_Py_atomic_compare_exchange_uint8.exit48.thread ], [ %i.av, %bb.s ]
  %.333 = phi i64 [ %.030.ph, %_Py_atomic_compare_exchange_uint8.exit48.thread ], [ %.131, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.outer

_Py_atomic_compare_exchange_uint8.exit47.thread:  ; preds = %._crit_edge, %.lr.ph, %.thread, %bb.i
  %.3 = phi i32 [ %.2.ph, %.thread ], [ 0, %bb.i ], [ 1, %.lr.ph ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_Py_atomic_compare_exchange_uint8.exit

_Py_atomic_compare_exchange_uint8.exit:           ; preds = %bb.b, %bb.c, %_Py_atomic_compare_exchange_uint8.exit47.thread
  %.4 = phi i32 [ %.3, %_Py_atomic_compare_exchange_uint8.exit47.thread ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @PyTime_MonotonicRaw(ptr noundef) local_unnamed_addr #3

declare i64 @_PyTime_Add(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @Py_IsFinalizing() local_unnamed_addr #3

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyParkingLot_Park(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Py_MakePendingCalls() local_unnamed_addr #3

declare i64 @_PyDeadline_Get(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyMutex_TryUnlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr %0 seq_cst, align 1  ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_Py_atomic_compare_exchange_uint8.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_Py_atomic_compare_exchange_uint8.exit
  %i.e = phi i32 [ %i.j, %_Py_atomic_compare_exchange_uint8.exit ], [ %i.b, %bb.a ]
  %.069 = phi i8 [ %i.i, %_Py_atomic_compare_exchange_uint8.exit ], [ %i.a, %bb.a ]
  %i.f = and i32 %i.e, 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_PyParkingLot_Unpark(ptr noundef nonnull %0, ptr noundef nonnull @mutex_unpark, ptr noundef nonnull %0) #8
  br label %_Py_atomic_compare_exchange_uint8.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.g = cmpxchg ptr %0, i8 %.069, i8 0 seq_cst seq_cst, align 1 ; 2 uses
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_Py_atomic_compare_exchange_uint8.exit.thread, label %_Py_atomic_compare_exchange_uint8.exit

_Py_atomic_compare_exchange_uint8.exit:           ; preds = %bb.c
  %i.i = extractvalue { i8, i1 } %i.g, 0          ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_Py_atomic_compare_exchange_uint8.exit.thread, label %.lr.ph

_Py_atomic_compare_exchange_uint8.exit.thread:    ; preds = %_Py_atomic_compare_exchange_uint8.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %_Py_atomic_compare_exchange_uint8.exit ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @_PyParkingLot_Unpark(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @mutex_unpark(ptr noundef captures(none) %0, ptr noundef captures(address_is_null) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i32 @PyTime_MonotonicRaw(ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11
  %i.d = load i64, ptr %1, align 8, !tbaa !13
  %i.e = icmp sgt i64 %i.c, %i.d                  ; 2 uses
  %i.f = zext i1 %i.e to i32
  %i.g = getelementptr i8, ptr %1, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !15
  %spec.select = zext i1 %i.e to i8               ; 2 uses
  %.not12 = icmp eq i32 %2, 0
  %i.h = or disjoint i8 %spec.select, 2
  %.1 = select i1 %.not12, i8 %spec.select, i8 %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.2 = phi i8 [ %.1, %bb.b ], [ 0, %bb.a ]
  store atomic i8 %.2, ptr %0 seq_cst, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_PyRawMutex_LockSlow(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.raw_mutex_entry, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @_PySemaphore_Init(ptr noundef nonnull %i.a) #8
  %i.b = load atomic i64, ptr %0 seq_cst, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = or disjoint i64 %i.c, 1
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.backedge, %bb.a
  %.0.ph = phi i64 [ %i.b, %bb.a ], [ %.0.ph.be, %.backedge.outer.backedge ] ; 5 uses
  %i.e = and i64 %.0.ph, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %.0.ph, -2
  %i.h = inttoptr i64 %i.g to ptr
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.d
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.i = or disjoint i64 %.0.ph, 1
  %i.j = cmpxchg ptr %0, i64 %.0.ph, i64 %i.i seq_cst seq_cst, align 8 ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %.backedge.outer.backedge

.backedge.outer.backedge:                         ; preds = %bb.c, %bb.b
  %.pn = phi { i64, i1 } [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  %.0.ph.be = extractvalue { i64, i1 } %.pn, 0
  br label %.backedge.outer

bb.c:                                             ; preds = %.backedge
  store ptr %i.h, ptr %1, align 8, !tbaa !20
  %i.l = cmpxchg ptr %0, i64 %.0.ph, i64 %i.d seq_cst seq_cst, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %.backedge.outer.backedge

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @_PySemaphore_Wait(ptr noundef nonnull %i.a, i64 noundef -1) #8 ; 0 uses
  br label %.backedge

bb.e:                                             ; preds = %bb.b
  call void @_PySemaphore_Destroy(ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

declare void @_PySemaphore_Init(ptr noundef) local_unnamed_addr #3

declare i32 @_PySemaphore_Wait(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_PySemaphore_Destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_PyRawMutex_UnlockSlow(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 8 ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.critedge, %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyRawMutex_UnlockSlow, ptr noundef nonnull @.str.1) #9
  unreachable

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.022 = phi i64 [ %.1, %.critedge ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = and i64 %.022, -2                        ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = cmpxchg ptr %0, i64 %.022, i64 %i.g seq_cst seq_cst, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.e, i64 8
  tail call void @_PySemaphore_Wakeup(ptr noundef %i.j) #8
  br label %_Py_atomic_compare_exchange_uintptr.exit14

bb.d:                                             ; preds = %.lr.ph
  %i.k = cmpxchg ptr %0, i64 %.022, i64 0 seq_cst seq_cst, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %_Py_atomic_compare_exchange_uintptr.exit14, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.b
  %.pn = phi { i64, i1 } [ %i.h, %bb.b ], [ %i.k, %bb.d ]
  %.1 = extractvalue { i64, i1 } %.pn, 0          ; 2 uses
  %i.m = and i64 %.1, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

_Py_atomic_compare_exchange_uintptr.exit14:       ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_PySemaphore_Wakeup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local range(i32 0, 2) i32 @_PyEvent_IsSet(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic i8, ptr %0 seq_cst, align 1
  %i.b = icmp eq i8 %i.a, 1
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyEvent_Notify(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw xchg ptr %0, i8 1 seq_cst, align 1
  %switch = icmp ult i8 %i.a, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyParkingLot_UnparkAll(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_PyParkingLot_UnparkAll(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @PyEvent_Wait(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.b = load atomic i8, ptr %0 seq_cst, align 1
  switch i8 %i.b, label %PyEvent_WaitTimed.exit [
    i8 1, label %PyEvent_WaitTimed.exit.thread
    i8 0, label %_Py_atomic_compare_exchange_uint8.exit.i
  ]

_Py_atomic_compare_exchange_uint8.exit.i:         ; preds = %bb.b
  %i.c = cmpxchg ptr %0, i8 0, i8 2 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %PyEvent_WaitTimed.exit, label %.backedge

.backedge:                                        ; preds = %_Py_atomic_compare_exchange_uint8.exit.i, %PyEvent_WaitTimed.exit
  br label %bb.b, !llvm.loop !24

PyEvent_WaitTimed.exit:                           ; preds = %bb.b, %_Py_atomic_compare_exchange_uint8.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 2, ptr %i.a, align 1, !tbaa !19
  %i.e = call i32 @_PyParkingLot_Park(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef -1, ptr noundef null, i32 noundef 1) #8 ; 0 uses
  %i.f = load atomic i8, ptr %0 seq_cst, align 1
  %.not = icmp eq i8 %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %.not, label %PyEvent_WaitTimed.exit.thread, label %.backedge

PyEvent_WaitTimed.exit.thread:                    ; preds = %PyEvent_WaitTimed.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @PyEvent_WaitTimed(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_Py_atomic_compare_exchange_uint8.exit, %bb.a
  %i.b = load atomic i8, ptr %0 seq_cst, align 1
  switch i8 %i.b, label %bb.c [
    i8 1, label %.loopexit
    i8 0, label %_Py_atomic_compare_exchange_uint8.exit
  ]

_Py_atomic_compare_exchange_uint8.exit:           ; preds = %bb.b
  %i.c = cmpxchg ptr %0, i8 0, i8 2 seq_cst seq_cst, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b, %_Py_atomic_compare_exchange_uint8.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 2, ptr %i.a, align 1, !tbaa !19
  %i.e = call i32 @_PyParkingLot_Park(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %1, ptr noundef null, i32 noundef %2) #8 ; 0 uses
  %i.f = load atomic i8, ptr %0 seq_cst, align 1
  %i.g = icmp eq i8 %i.f, 1
  %i.h = zext i1 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c
  %.1.ph = phi i32 [ %i.h, %bb.c ], [ 1, %bb.b ]
  ret i32 %.1.ph
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyOnceFlag_CallOnceSlow(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load atomic i8, ptr %0 seq_cst, align 1
  br label %.backedge

thread-pre-split:                                 ; preds = %bb.g, %bb.b
  %.pn = phi { i8, i1 } [ %i.d, %bb.b ], [ %i.k, %bb.g ]
  %storemerge = extractvalue { i8, i1 } %.pn, 0
  br label %.backedge.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.c = phi i8 [ %i.b, %bb.a ], [ %.be, %.backedge.backedge ] ; 5 uses
  store i8 %i.c, ptr %i.a, align 1
  switch i8 %i.c, label %bb.f [
    i8 0, label %bb.b
    i8 4, label %unlock_once.exit
  ]

bb.b:                                             ; preds = %.backedge
  %i.d = cmpxchg ptr %0, i8 0, i8 1 seq_cst seq_cst, align 1 ; 2 uses
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 %1(ptr noundef %2) #8           ; 3 uses
  switch i32 %i.f, label %bb.d [
    i32 -1, label %.split6.i
    i32 0, label %.split.i
  ]

.split.i:                                         ; preds = %bb.c
  br label %.split6.i

bb.d:                                             ; preds = %bb.c
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.unlock_once, ptr noundef nonnull @.str.3) #9
  unreachable

.split6.i:                                        ; preds = %.split.i, %bb.c
  %.sink.i = phi i8 [ 4, %.split.i ], [ 0, %bb.c ]
  %i.g = atomicrmw xchg ptr %0, i8 %.sink.i seq_cst, align 1
  %i.h = and i8 %i.g, 2
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %unlock_once.exit, label %bb.e

bb.e:                                             ; preds = %.split6.i
  call void @_PyParkingLot_UnparkAll(ptr noundef nonnull %0) #8
  br label %unlock_once.exit

bb.f:                                             ; preds = %.backedge
  %i.i = and i8 %i.c, 2
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = or disjoint i8 %i.c, 2                   ; 2 uses
  %i.k = cmpxchg ptr %0, i8 %i.c, i8 %i.j seq_cst seq_cst, align 1 ; 2 uses
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %.thread, label %thread-pre-split

.thread:                                          ; preds = %bb.g
  store i8 %i.j, ptr %i.a, align 1, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.f
  %i.m = call i32 @_PyParkingLot_Park(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef -1, ptr noundef null, i32 noundef 1) #8 ; 0 uses
  %i.n = load atomic i8, ptr %0 seq_cst, align 1
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.h, %thread-pre-split
  %.be = phi i8 [ %storemerge, %thread-pre-split ], [ %i.n, %bb.h ]
  br label %.backedge

unlock_once.exit:                                 ; preds = %.backedge, %bb.e, %.split6.i
  %.0 = phi i32 [ %i.f, %bb.e ], [ %i.f, %.split6.i ], [ 0, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_PyRecursiveMutex_IsLockedByCurrentThread(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyThread_get_thread_ident_ex() #8
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = icmp eq i64 %i.c, %i.a
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

declare i64 @PyThread_get_thread_ident_ex() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @_PyRecursiveMutex_Lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyThread_get_thread_ident_ex() #8 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %.not = icmp eq i64 %i.c, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = cmpxchg ptr %0, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_PyMutex_Lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @_PyMutex_LockTimed(ptr noundef nonnull %0, i64 noundef -1, i32 noundef 1) ; 0 uses
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.c, %bb.d
  store atomic i64 %i.a, ptr %i.b monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %_PyMutex_Lock.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 3) i32 @_PyRecursiveMutex_LockTimed(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyThread_get_thread_ident_ex() #8 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %.not = icmp eq i64 %i.c, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @_PyMutex_LockTimed(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2) ; 2 uses
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store atomic i64 %i.a, ptr %i.b monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ %i.g, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyRecursiveMutex_Unlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyThread_get_thread_ident_ex() #8
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %.not.i = icmp eq i64 %i.c, %i.a
  br i1 %.not.i, label %bb.b, label %_PyRecursiveMutex_TryUnlock.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not7.i = icmp eq i64 %i.e, 0
  br i1 %.not7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !26
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  store atomic i64 0, ptr %i.b monotonic, align 8
  %i.g = cmpxchg ptr %0, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load atomic i8, ptr %0 seq_cst, align 8  ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_Py_atomic_compare_exchange_uint8.exit.i.i.i.i
  %i.m = phi i32 [ %i.r, %_Py_atomic_compare_exchange_uint8.exit.i.i.i.i ], [ %i.j, %bb.e ]
  %.069.i.i.i.i = phi i8 [ %i.q, %_Py_atomic_compare_exchange_uint8.exit.i.i.i.i ], [ %i.i, %bb.e ]
  %i.n = and i32 %i.m, 2
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @_PyParkingLot_Unpark(ptr noundef nonnull %0, ptr noundef nonnull @mutex_unpark, ptr noundef nonnull %0) #8
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = cmpxchg ptr %0, i8 %.069.i.i.i.i, i8 0 seq_cst seq_cst, align 1 ; 2 uses
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %.loopexit, label %_Py_atomic_compare_exchange_uint8.exit.i.i.i.i

_Py_atomic_compare_exchange_uint8.exit.i.i.i.i:   ; preds = %bb.g
  %i.q = extractvalue { i8, i1 } %i.o, 0          ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_Py_atomic_compare_exchange_uint8.exit.i.i.i.i, %bb.e
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.PyMutex_Unlock, ptr noundef nonnull @.str.1) #9
  unreachable

_PyRecursiveMutex_TryUnlock.exit:                 ; preds = %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyRecursiveMutex_Unlock, ptr noundef nonnull @.str.2) #9
  unreachable

.loopexit:                                        ; preds = %bb.g, %bb.c, %bb.d, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyRecursiveMutex_TryUnlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyThread_get_thread_ident_ex() #8
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %.not = icmp eq i64 %i.c, %i.a
  br i1 %.not, label %bb.b, label %_PyMutex_Unlock.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not7 = icmp eq i64 %i.e, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !26
  br label %_PyMutex_Unlock.exit

bb.d:                                             ; preds = %bb.b
  store atomic i64 0, ptr %i.b monotonic, align 8
  %i.g = cmpxchg ptr %0, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_PyMutex_Unlock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load atomic i8, ptr %0 seq_cst, align 8  ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_Py_atomic_compare_exchange_uint8.exit.i.i.i
  %i.m = phi i32 [ %i.r, %_Py_atomic_compare_exchange_uint8.exit.i.i.i ], [ %i.j, %bb.e ]
  %.069.i.i.i = phi i8 [ %i.q, %_Py_atomic_compare_exchange_uint8.exit.i.i.i ], [ %i.i, %bb.e ]
  %i.n = and i32 %i.m, 2
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_PyParkingLot_Unpark(ptr noundef nonnull %0, ptr noundef nonnull @mutex_unpark, ptr noundef nonnull %0) #8
  br label %_PyMutex_Unlock.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.o = cmpxchg ptr %0, i8 %.069.i.i.i, i8 0 seq_cst seq_cst, align 1 ; 2 uses
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_PyMutex_Unlock.exit, label %_Py_atomic_compare_exchange_uint8.exit.i.i.i

_Py_atomic_compare_exchange_uint8.exit.i.i.i:     ; preds = %bb.g
  %i.q = extractvalue { i8, i1 } %i.o, 0          ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.loopexit.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %_Py_atomic_compare_exchange_uint8.exit.i.i.i, %bb.e
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.PyMutex_Unlock, ptr noundef nonnull @.str.1) #9
end_hunk_0
begin_hunk_1_@_PyRWMutex_RLock:bb.a

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0 = phi i64 [ %i.c, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 9 uses
  %i.d = and i64 %.0, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.0, ptr %i.b, align 8, !tbaa !11
  %i.e = and i64 %.0, 2
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i64 %.0, 2                   ; 2 uses
  %i.h = cmpxchg ptr %0, i64 %.0, i64 %i.g seq_cst seq_cst, align 8 ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  store i64 %i.g, ptr %i.b, align 8, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { i64, i1 } %i.h, 0
  br label %rwmutex_set_parked_and_wait.exit

bb.e:                                             ; preds = %.thread.i, %bb.b
  %i.k = call i32 @_PyParkingLot_Park(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef -1, ptr noundef null, i32 noundef 1) #8 ; 0 uses
  %i.l = load atomic i64, ptr %0 monotonic, align 8
  br label %rwmutex_set_parked_and_wait.exit

rwmutex_set_parked_and_wait.exit:                 ; preds = %bb.d, %bb.e
  %.1.i = phi i64 [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %rwmutex_set_parked_and_wait.exit, %rwmutex_set_parked_and_wait.exit9, %_Py_atomic_compare_exchange_uintptr.exit
  %.0.be = phi i64 [ %i.s, %_Py_atomic_compare_exchange_uintptr.exit ], [ %i.o, %rwmutex_set_parked_and_wait.exit9 ], [ %.1.i, %rwmutex_set_parked_and_wait.exit ]
  br label %.backedge

bb.f:                                             ; preds = %.backedge
  %i.m = and i64 %.0, 2
  %.not5 = icmp eq i64 %i.m, 0
  br i1 %.not5, label %bb.g, label %rwmutex_set_parked_and_wait.exit9

rwmutex_set_parked_and_wait.exit9:                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0, ptr %i.a, align 8, !tbaa !11
  %i.n = call i32 @_PyParkingLot_Park(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef -1, ptr noundef null, i32 noundef 1) #8 ; 0 uses
  %i.o = load atomic i64, ptr %0 monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge.backedge

bb.g:                                             ; preds = %bb.f
  %i.p = add i64 %.0, 4
  %i.q = cmpxchg ptr %0, i64 %.0, i64 %i.p seq_cst seq_cst, align 8 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %bb.h, label %_Py_atomic_compare_exchange_uintptr.exit

_Py_atomic_compare_exchange_uintptr.exit:         ; preds = %bb.g
  %i.s = extractvalue { i64, i1 } %i.q, 0
  br label %.backedge.backedge

bb.h:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyRWMutex_RUnlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw add ptr %0, i64 -4 seq_cst, align 8
  %i.b = and i64 %i.a, -2
  %or.cond.not = icmp eq i64 %i.b, 6
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyParkingLot_UnparkAll(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyRWMutex_Lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load atomic i64, ptr %0 monotonic, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0 = phi i64 [ %i.b, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 7 uses
  %i.c = and i64 %.0, -3
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.backedge
  %i.e = or disjoint i64 %.0, 1
  %i.f = cmpxchg ptr %0, i64 %.0, i64 %i.e seq_cst seq_cst, align 8 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %_Py_atomic_compare_exchange_uintptr.exit

_Py_atomic_compare_exchange_uintptr.exit:         ; preds = %bb.b
  %i.h = extractvalue { i64, i1 } %i.f, 0
  br label %.backedge.backedge

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0, ptr %i.a, align 8, !tbaa !11
  %i.i = and i64 %.0, 2
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = or disjoint i64 %.0, 2                   ; 2 uses
  %i.l = cmpxchg ptr %0, i64 %.0, i64 %i.k seq_cst seq_cst, align 8 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  store i64 %i.k, ptr %i.a, align 8, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br label %rwmutex_set_parked_and_wait.exit

bb.g:                                             ; preds = %.thread.i, %bb.d
  %i.o = call i32 @_PyParkingLot_Park(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef -1, ptr noundef null, i32 noundef 1) #8 ; 0 uses
  %i.p = load atomic i64, ptr %0 monotonic, align 8
  br label %rwmutex_set_parked_and_wait.exit

rwmutex_set_parked_and_wait.exit:                 ; preds = %bb.f, %bb.g
  %.1.i = phi i64 [ %i.p, %bb.g ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %rwmutex_set_parked_and_wait.exit, %_Py_atomic_compare_exchange_uintptr.exit
  %.0.be = phi i64 [ %i.h, %_Py_atomic_compare_exchange_uintptr.exit ], [ %.1.i, %rwmutex_set_parked_and_wait.exit ]
  br label %.backedge
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyRWMutex_Unlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = atomicrmw xchg ptr %0, i64 0 seq_cst, align 8
  %i.b = and i64 %i.a, 2
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyParkingLot_UnparkAll(ptr noundef %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_PySeqLock_LockWrite(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.0.be, %.backedge ] ; 3 uses
  %i.b = and i32 %.0, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @sched_yield() #8          ; 0 uses
  %i.d = load atomic i32, ptr %0 monotonic, align 4
  br label %.backedge

bb.d:                                             ; preds = %bb.b
  %i.e = or disjoint i32 %.0, 1
  %i.f = cmpxchg ptr %0, i32 %.0, i32 %i.e seq_cst seq_cst, align 4 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  fence release
  ret void

bb.f:                                             ; preds = %bb.d
  %i.h = extractvalue { i32, i1 } %i.f, 0
  %i.i = tail call i32 @sched_yield() #8          ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.c
  %.0.be = phi i32 [ %i.h, %bb.f ], [ %i.d, %bb.c ]
  br label %bb.b
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_PySeqLock_AbandonWrite(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %i.b = add i32 %i.a, -1
  store atomic i32 %i.b, ptr %0 seq_cst, align 4
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local void @_PySeqLock_UnlockWrite(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %i.b = add i32 %i.a, 1
  store atomic i32 %i.b, ptr %0 seq_cst, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -1) i32 @_PySeqLock_BeginRead(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = tail call i32 @sched_yield() #8          ; 0 uses
  %i.d = load atomic i32, ptr %0 acquire, align 4 ; 2 uses
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.d, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_PySeqLock_EndRead(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  fence acquire
  %i.a = load atomic i32, ptr %0 monotonic, align 4
  %i.b = icmp eq i32 %i.a, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sched_yield() #8          ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @_PySeqLock_AfterFork(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !31
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @PyMutex_Lock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_PyMutex_LockTimed(ptr noundef %0, i64 noundef -1, i32 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PyMutex_Unlock(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i8, ptr %0 seq_cst, align 1  ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_Py_atomic_compare_exchange_uint8.exit.i
  %i.e = phi i32 [ %i.j, %_Py_atomic_compare_exchange_uint8.exit.i ], [ %i.b, %bb.a ]
  %.069.i = phi i8 [ %i.i, %_Py_atomic_compare_exchange_uint8.exit.i ], [ %i.a, %bb.a ]
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_PyParkingLot_Unpark(ptr noundef nonnull %0, ptr noundef nonnull @mutex_unpark, ptr noundef nonnull %0) #8
  br label %_PyMutex_TryUnlock.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = cmpxchg ptr %0, i8 %.069.i, i8 0 seq_cst seq_cst, align 1 ; 2 uses
  %i.h = extractvalue { i8, i1 } %i.g, 1
  br i1 %i.h, label %_PyMutex_TryUnlock.exit, label %_Py_atomic_compare_exchange_uint8.exit.i

_Py_atomic_compare_exchange_uint8.exit.i:         ; preds = %bb.c
  %i.i = extractvalue { i8, i1 } %i.g, 0          ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %_Py_atomic_compare_exchange_uint8.exit.i, %bb.a
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.PyMutex_Unlock, ptr noundef nonnull @.str.1) #9
  unreachable

_PyMutex_TryUnlock.exit:                          ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local range(i32 0, 2) i32 @PyMutex_IsLocked(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic i8, ptr %0 seq_cst, align 1
  %i.b = and i8 %i.a, 1
  %i.c = zext nneg i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"mutex_entry", !12, i64 0, !8, i64 8}
!15 = !{!14, !8, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS7_object", !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!21, !22, i64 0}
!21 = !{!"raw_mutex_entry", !22, i64 0, !23, i64 8}
!22 = !{!"p1 _ZTS15raw_mutex_entry", !18, i64 0}
!23 = !{!"_PySemaphore", !9, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !12, i64 16}
!27 = !{!"", !28, i64 0, !29, i64 8, !12, i64 16}
!28 = !{!"PyMutex", !9, i64 0}
!29 = !{!"long long", !9, i64 0}
!30 = distinct !{!30, !25}
!31 = !{!32, !8, i64 0}
!32 = !{!"", !8, i64 0}
end_hunk_1
