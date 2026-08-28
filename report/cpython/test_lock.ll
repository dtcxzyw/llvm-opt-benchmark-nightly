Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/test_lock?download=true
inline.NumInlined: 41
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@test_lock_basic:bb.a
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @test_lock_two_threads(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.test_lock2_data, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i64 0, ptr %2, align 8
  %i.a = cmpxchg ptr %2, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @PyMutex_Lock(ptr noundef nonnull %2) #6
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.c = load i8, ptr %2, align 8, !tbaa !12
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 79, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_two_threads) #7
  unreachable

bb.d:                                             ; preds = %_PyMutex_Lock.exit
  %i.e = call i64 @PyThread_start_new_thread(ptr noundef nonnull @lock_thread, ptr noundef nonnull %2) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.i, %bb.g ]     ; 2 uses
  %i.f = call i32 @usleep(i32 noundef 10000) #6   ; 0 uses
  %i.g = load atomic i8, ptr %2 monotonic, align 8 ; 2 uses
  %i.h = and i8 %i.g, -3
  %or.cond = icmp eq i8 %i.h, 1
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef 89, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_two_threads) #7
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = add nuw nsw i32 %.0, 1
  %i.j = icmp ne i8 %i.g, 3
  %i.k = icmp samesign ult i32 %.0, 199
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %bb.e, label %bb.h, !llvm.loop !15

bb.h:                                             ; preds = %bb.g
  %i.m = load atomic i8, ptr %2 monotonic, align 8
  %i.n = icmp eq i8 %i.m, 3
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, i32 noundef 95, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_two_threads) #7
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.o = cmpxchg ptr %2, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_PyMutex_Unlock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PyMutex_Unlock(ptr noundef nonnull %2) #6
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.j, %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @PyEvent_Wait(ptr noundef nonnull %i.q) #6
  %i.r = load i8, ptr %2, align 8, !tbaa !12
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_PyMutex_Unlock.exit
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, i32 noundef 99, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_two_threads) #7
  unreachable

bb.m:                                             ; preds = %_PyMutex_Unlock.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @test_lock_counter(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
.preheader.preheader:
  %2 = alloca %struct.test_data_counter, align 8  ; 9 uses
  %3 = alloca [5 x %struct.thread_data_counter], align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  store ptr %2, ptr %3, align 16, !tbaa !17
  %i.a = call i64 @PyThread_start_new_thread(ptr noundef nonnull @counter_thread, ptr noundef nonnull %3) #6 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %2, ptr %i.b, align 16, !tbaa !17
  %i.c = call i64 @PyThread_start_new_thread(ptr noundef nonnull @counter_thread, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %2, ptr %i.d, align 16, !tbaa !17
  %i.e = call i64 @PyThread_start_new_thread(ptr noundef nonnull @counter_thread, ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %2, ptr %i.f, align 16, !tbaa !17
  %i.g = call i64 @PyThread_start_new_thread(ptr noundef nonnull @counter_thread, ptr noundef nonnull %i.f) #6 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr %2, ptr %i.h, align 16, !tbaa !17
  %i.i = call i64 @PyThread_start_new_thread(ptr noundef nonnull @counter_thread, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @PyEvent_Wait(ptr noundef nonnull %i.j) #6
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @PyEvent_Wait(ptr noundef nonnull %i.k) #6
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @PyEvent_Wait(ptr noundef nonnull %i.l) #6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @PyEvent_Wait(ptr noundef nonnull %i.m) #6
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @PyEvent_Wait(ptr noundef nonnull %i.n) #6
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = icmp eq i64 %i.p, 50000
  br i1 %i.q, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader.preheader
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_counter) #7
  unreachable

bb.b:                                             ; preds = %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @test_lock_counter_slow(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
.preheader.preheader:
  %2 = alloca %struct.test_data_counter, align 8  ; 9 uses
  %3 = alloca [5 x %struct.thread_data_counter], align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  store ptr %2, ptr %3, align 16, !tbaa !17
  %i.a = call i64 @PyThread_start_new_thread(ptr noundef nonnull @slow_counter_thread, ptr noundef nonnull %3) #6 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %2, ptr %i.b, align 16, !tbaa !17
  %i.c = call i64 @PyThread_start_new_thread(ptr noundef nonnull @slow_counter_thread, ptr noundef nonnull %i.b) #6 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %2, ptr %i.d, align 16, !tbaa !17
  %i.e = call i64 @PyThread_start_new_thread(ptr noundef nonnull @slow_counter_thread, ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %2, ptr %i.f, align 16, !tbaa !17
  %i.g = call i64 @PyThread_start_new_thread(ptr noundef nonnull @slow_counter_thread, ptr noundef nonnull %i.f) #6 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr %2, ptr %i.h, align 16, !tbaa !17
  %i.i = call i64 @PyThread_start_new_thread(ptr noundef nonnull @slow_counter_thread, ptr noundef nonnull %i.h) #6 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @PyEvent_Wait(ptr noundef nonnull %i.j) #6
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @PyEvent_Wait(ptr noundef nonnull %i.k) #6
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @PyEvent_Wait(ptr noundef nonnull %i.l) #6
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @PyEvent_Wait(ptr noundef nonnull %i.m) #6
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @PyEvent_Wait(ptr noundef nonnull %i.n) #6
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = icmp eq i64 %i.p, 500
  br i1 %i.q, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader.preheader
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, i32 noundef 193, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_counter_slow) #7
  unreachable

bb.b:                                             ; preds = %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @_testinternalcapi_benchmark_locks(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 8
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.4, i64 noundef %2, i64 noundef 1, i64 noundef 8) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !24
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #6 ; 5 uses
  %.not72 = icmp eq ptr %i.d, null
  br i1 %.not72, label %Py_DECREF.exit87.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.d) #6 ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not.i86 = icmp sgt i32 %i.f, -1
  br i1 %.not.i86, label %bb.e, label %Py_DECREF.exit87

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !26
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %Py_DECREF.exit87

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #6
  br label %Py_DECREF.exit87

Py_DECREF.exit87:                                 ; preds = %bb.f, %bb.e, %bb.d
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %Py_DECREF.exit87.thread, label %bb.g

Py_DECREF.exit87.thread:                          ; preds = %bb.c, %Py_DECREF.exit87
  %i.j = tail call ptr @PyErr_Occurred() #6
  %.not73 = icmp eq ptr %i.j, null
  br i1 %.not73, label %bb.g, label %bb.af

bb.g:                                             ; preds = %Py_DECREF.exit87.thread, %Py_DECREF.exit87
  %.05491.ph = phi i64 [ %i.e, %Py_DECREF.exit87 ], [ -1, %Py_DECREF.exit87.thread ]
  %i.k = icmp slt i64 %2, 2
  br i1 %i.k, label %bb.ae, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = tail call i32 @PyLong_AsInt(ptr noundef %i.m) #6 ; 8 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #6
  %.not74 = icmp eq ptr %i.p, null
  br i1 %.not74, label %bb.j, label %bb.af

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = icmp eq i64 %2, 2
  br i1 %i.q, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = tail call i32 @PyLong_AsInt(ptr noundef %i.s) #6 ; 7 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = tail call ptr @PyErr_Occurred() #6
  %.not75 = icmp eq ptr %i.v, null
  br i1 %.not75, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = icmp samesign ult i64 %2, 4
  br i1 %i.w, label %bb.ae, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.z = tail call i32 @PyLong_AsInt(ptr noundef %i.y) #6 ; 6 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @PyErr_Occurred() #6
  %.not76 = icmp eq ptr %i.ab, null
  br i1 %.not76, label %bb.p, label %bb.af

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ac = icmp eq i64 %2, 4
  br i1 %i.ac, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.af = tail call i32 @PyLong_AsInt(ptr noundef %i.ae) #6 ; 5 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = tail call ptr @PyErr_Occurred() #6
  %.not77 = icmp eq ptr %i.ah, null
  br i1 %.not77, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ai = icmp samesign ult i64 %2, 6
  br i1 %i.ai, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr i8, ptr %1, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.al = tail call ptr @_PyNumber_Index(ptr noundef %i.ak) #6 ; 5 uses
  %.not78 = icmp eq ptr %i.al, null
  br i1 %.not78, label %Py_DECREF.exit85.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.al) #6 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !26 ; 2 uses
  %.not.i84 = icmp sgt i32 %i.an, -1
  br i1 %.not.i84, label %bb.v, label %Py_DECREF.exit85

bb.v:                                             ; preds = %bb.u
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !26
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.w, label %Py_DECREF.exit85

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.al) #6
  br label %Py_DECREF.exit85

Py_DECREF.exit85:                                 ; preds = %bb.w, %bb.v, %bb.u
  %i.aq = icmp eq i64 %i.am, -1
  br i1 %i.aq, label %Py_DECREF.exit85.thread, label %bb.x

Py_DECREF.exit85.thread:                          ; preds = %bb.t, %Py_DECREF.exit85
  %i.ar = tail call ptr @PyErr_Occurred() #6
  %.not79 = icmp eq ptr %i.ar, null
  br i1 %.not79, label %bb.x, label %bb.af

bb.x:                                             ; preds = %Py_DECREF.exit85.thread, %Py_DECREF.exit85
  %.058.ph = phi i64 [ %i.am, %Py_DECREF.exit85 ], [ -1, %Py_DECREF.exit85.thread ] ; 3 uses
  %i.as = icmp eq i64 %2, 6
  br i1 %i.as, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = getelementptr i8, ptr %1, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !24
  %i.av = tail call ptr @_PyNumber_Index(ptr noundef %i.au) #6 ; 5 uses
  %.not80 = icmp eq ptr %i.av, null
  br i1 %.not80, label %Py_DECREF.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.av) #6 ; 2 uses
  %i.ax = load i32, ptr %i.av, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i, label %bb.aa, label %Py_DECREF.exit

bb.aa:                                            ; preds = %bb.z
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !26
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.ab, label %Py_DECREF.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.av) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ba = icmp eq i64 %i.aw, -1
  br i1 %i.ba, label %Py_DECREF.exit.thread, label %bb.ac

Py_DECREF.exit.thread:                            ; preds = %bb.y, %Py_DECREF.exit
  %i.bb = tail call ptr @PyErr_Occurred() #6
  %.not81 = icmp eq ptr %i.bb, null
  br i1 %.not81, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.056.ph = phi i64 [ %i.aw, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 2 uses
  %i.bc = icmp samesign ult i64 %2, 8
  br i1 %i.bc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = getelementptr i8, ptr %1, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.bf = tail call i32 @PyObject_IsTrue(ptr noundef %i.be) #6 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.x, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g
  %.063 = phi i32 [ 1, %bb.g ], [ %i.n, %bb.j ], [ %i.n, %bb.m ], [ %i.n, %bb.p ], [ %i.n, %bb.s ], [ %i.n, %bb.x ], [ %i.n, %bb.ac ], [ %i.n, %bb.ad ]
  %.062 = phi i32 [ 0, %bb.g ], [ 0, %bb.j ], [ %i.t, %bb.m ], [ %i.t, %bb.p ], [ %i.t, %bb.s ], [ %i.t, %bb.x ], [ %i.t, %bb.ac ], [ %i.t, %bb.ad ]
  %.061 = phi i32 [ 1000, %bb.g ], [ 1000, %bb.j ], [ 1000, %bb.m ], [ %i.z, %bb.p ], [ %i.z, %bb.s ], [ %i.z, %bb.x ], [ %i.z, %bb.ac ], [ %i.z, %bb.ad ]
  %.060 = phi i32 [ 1, %bb.g ], [ 1, %bb.j ], [ 1, %bb.m ], [ 1, %bb.p ], [ %i.af, %bb.s ], [ %i.af, %bb.x ], [ %i.af, %bb.ac ], [ %i.af, %bb.ad ]
  %.159 = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.s ], [ %.058.ph, %bb.x ], [ %.058.ph, %bb.ac ], [ %.058.ph, %bb.ad ]
  %.157 = phi i64 [ 1, %bb.g ], [ 1, %bb.j ], [ 1, %bb.m ], [ 1, %bb.p ], [ 1, %bb.s ], [ 1, %bb.x ], [ %.056.ph, %bb.ac ], [ %.056.ph, %bb.ad ]
  %.055 = phi i32 [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.x ], [ 0, %bb.ac ], [ %i.bf, %bb.ad ]
  %i.bh = tail call fastcc ptr @_testinternalcapi_benchmark_locks_impl(i64 noundef %.05491.ph, i32 noundef %.063, i32 noundef %.062, i32 noundef %.061, i32 noundef %.060, i64 noundef %.159, i64 noundef %.157, i32 noundef %.055)
  br label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit85.thread, %Py_DECREF.exit87.thread, %bb.ae, %bb.b, %bb.i, %bb.l, %bb.o, %bb.r, %bb.ad
  %.065 = phi ptr [ %i.bh, %bb.ae ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.o ], [ null, %bb.r ], [ null, %bb.ad ], [ null, %Py_DECREF.exit85.thread ], [ null, %Py_DECREF.exit87.thread ], [ null, %bb.b ], [ null, %Py_DECREF.exit.thread ]
  ret ptr %.065
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @test_lock_benchmark(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @_testinternalcapi_benchmark_locks_impl(i64 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 100, i32 noundef 1, i64 noundef 0, i64 noundef 1, i32 noundef 0) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ @_Py_NoneStruct, %bb.b ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @test_lock_once(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._PyOnceFlag, align 1        ; 23 uses
  %i.a = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !6
  %i.b = load atomic i8, ptr %2 seq_cst, align 1
  %i.c = icmp eq i8 %i.b, 4
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.i, %bb.g, %bb.e, %bb.a, %bb.j, %bb.h, %bb.f, %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.11, i32 noundef 421, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_once) #7
  unreachable

bb.c:                                             ; preds = %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.11, i32 noundef 424, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_once) #7
  unreachable

bb.d:                                             ; preds = %.thread9.9, %.thread9.8, %.thread9.7, %.thread9.6, %.thread9.5, %.thread9.4
  call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.11, i32 noundef 425, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_once) #7
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = load atomic i8, ptr %2 seq_cst, align 1
  %i.g = icmp eq i8 %i.f, 4
  br i1 %i.g, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.j = load atomic i8, ptr %2 seq_cst, align 1
  %i.k = icmp eq i8 %i.j, 4
  br i1 %i.k, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.n = load atomic i8, ptr %2 seq_cst, align 1
  %i.o = icmp eq i8 %i.n, 4
  br i1 %i.o, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.r = load atomic i8, ptr %2 seq_cst, align 1
  %i.s = icmp eq i8 %i.r, 4
  br i1 %i.s, label %.thread9.4, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.thread9.4, label %bb.c

.thread9.4:                                       ; preds = %bb.k, %bb.l
  %i.v = load i32, ptr %i.a, align 4, !tbaa !6
  %i.w = icmp eq i32 %i.v, 5
  br i1 %i.w, label %bb.m, label %bb.d

bb.m:                                             ; preds = %.thread9.4
  %i.x = load atomic i8, ptr %2 seq_cst, align 1
  %i.y = icmp eq i8 %i.x, 4
  br i1 %i.y, label %.thread9.5, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.thread9.5, label %bb.c

.thread9.5:                                       ; preds = %bb.m, %bb.n
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ac = icmp eq i32 %i.ab, 5
  br i1 %i.ac, label %bb.o, label %bb.d

bb.o:                                             ; preds = %.thread9.5
  %i.ad = load atomic i8, ptr %2 seq_cst, align 1
  %i.ae = icmp eq i8 %i.ad, 4
  br i1 %i.ae, label %.thread9.6, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread9.6, label %bb.c

.thread9.6:                                       ; preds = %bb.o, %bb.p
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ai = icmp eq i32 %i.ah, 5
  br i1 %i.ai, label %bb.q, label %bb.d

bb.q:                                             ; preds = %.thread9.6
  %i.aj = load atomic i8, ptr %2 seq_cst, align 1
  %i.ak = icmp eq i8 %i.aj, 4
  br i1 %i.ak, label %.thread9.7, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.thread9.7, label %bb.c

.thread9.7:                                       ; preds = %bb.q, %bb.r
  %i.an = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ao = icmp eq i32 %i.an, 5
  br i1 %i.ao, label %bb.s, label %bb.d

bb.s:                                             ; preds = %.thread9.7
  %i.ap = load atomic i8, ptr %2 seq_cst, align 1
  %i.aq = icmp eq i8 %i.ap, 4
  br i1 %i.aq, label %.thread9.8, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.thread9.8, label %bb.c

.thread9.8:                                       ; preds = %bb.s, %bb.t
  %i.at = load i32, ptr %i.a, align 4, !tbaa !6
  %i.au = icmp eq i32 %i.at, 5
  br i1 %i.au, label %bb.u, label %bb.d

bb.u:                                             ; preds = %.thread9.8
  %i.av = load atomic i8, ptr %2 seq_cst, align 1
  %i.aw = icmp eq i8 %i.av, 4
  br i1 %i.aw, label %.thread9.9, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = call i32 @_PyOnceFlag_CallOnceSlow(ptr noundef nonnull %2, ptr noundef nonnull @init_maybe_fail, ptr noundef nonnull %i.a) #6
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread9.9, label %bb.c

.thread9.9:                                       ; preds = %bb.u, %bb.v
  %i.az = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ba = icmp eq i32 %i.az, 5
  br i1 %i.ba, label %bb.w, label %bb.d

bb.w:                                             ; preds = %.thread9.9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @test_lock_rwlock(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.test_rwlock_data, align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.test_lock_rwlock.test_data, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  call void @_PyRWMutex_Lock(ptr noundef nonnull %i.a) #6
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11, i32 noundef 492, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_rwlock) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @_PyRWMutex_Unlock(ptr noundef nonnull %i.a) #6
  %i.d = load i64, ptr %i.a, align 8, !tbaa !27
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.11, i32 noundef 495, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_rwlock) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = call i64 @PyThread_start_new_thread(ptr noundef nonnull @rdlock_thread, ptr noundef nonnull %2) #6 ; 0 uses
  %i.g = call i64 @PyThread_start_new_thread(ptr noundef nonnull @rdlock_thread, ptr noundef nonnull %2) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i32 [ 0, %bb.e ], [ %i.j, %bb.f ]   ; 2 uses
  %i.h = call i32 @usleep(i32 noundef 10000) #6   ; 0 uses
  %i.i = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.j = add nuw nsw i32 %.0.i, 1
  %i.k = icmp ne i64 %i.i, 8
  %i.l = icmp samesign ult i32 %.0.i, 199
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %bb.f, label %wait_until.exit, !llvm.loop !30

wait_until.exit:                                  ; preds = %bb.f
  %i.n = icmp eq i64 %i.i, 8
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %wait_until.exit
  call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.11, i32 noundef 503, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_rwlock) #7
  unreachable

bb.h:                                             ; preds = %wait_until.exit
  %i.o = call i64 @PyThread_start_new_thread(ptr noundef nonnull @wrlock_thread, ptr noundef nonnull %2) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i1 = phi i32 [ 0, %bb.h ], [ %i.r, %bb.i ]  ; 2 uses
  %i.p = call i32 @usleep(i32 noundef 10000) #6   ; 0 uses
  %i.q = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.r = add nuw nsw i32 %.0.i1, 1
  %i.s = icmp ne i64 %i.q, 10
  %i.t = icmp samesign ult i32 %.0.i1, 199
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.i, label %wait_until.exit2, !llvm.loop !30

wait_until.exit2:                                 ; preds = %bb.i
  %i.v = icmp eq i64 %i.q, 10
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %wait_until.exit2
  call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.11, i32 noundef 508, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_rwlock) #7
  unreachable

bb.k:                                             ; preds = %wait_until.exit2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_PyEvent_Notify(ptr noundef nonnull %i.w) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i3 = phi i32 [ 0, %bb.k ], [ %i.z, %bb.l ]  ; 2 uses
  %i.x = call i32 @usleep(i32 noundef 10000) #6   ; 0 uses
  %i.y = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.z = add nuw nsw i32 %.0.i3, 1
  %i.aa = icmp ne i64 %i.y, 3
  %i.ab = icmp samesign ult i32 %.0.i3, 199
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.l, label %wait_until.exit4, !llvm.loop !30

wait_until.exit4:                                 ; preds = %bb.l
  %i.ad = icmp eq i64 %i.y, 3
  br i1 %i.ad, label %bb.n, label %bb.m

bb.m:                                             ; preds = %wait_until.exit4
  call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.11, i32 noundef 513, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_rwlock) #7
  unreachable

bb.n:                                             ; preds = %wait_until.exit4
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 17
  call void @_PyEvent_Notify(ptr noundef nonnull %i.ae) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.0.i5 = phi i32 [ 0, %bb.n ], [ %i.ah, %bb.o ] ; 2 uses
  %i.af = call i32 @usleep(i32 noundef 10000) #6  ; 0 uses
  %i.ag = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.ah = add nuw nsw i32 %.0.i5, 1
  %i.ai = icmp ne i64 %i.ag, 8
  %i.aj = icmp samesign ult i32 %.0.i5, 199
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.o, label %wait_until.exit6, !llvm.loop !30

wait_until.exit6:                                 ; preds = %bb.o
  %i.al = icmp eq i64 %i.ag, 8
  br i1 %i.al, label %bb.q, label %bb.p

bb.p:                                             ; preds = %wait_until.exit6
  call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.11, i32 noundef 518, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_rwlock) #7
  unreachable

bb.q:                                             ; preds = %wait_until.exit6
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 18
  call void @_PyEvent_Notify(ptr noundef nonnull %i.am) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.0.i7 = phi i32 [ 0, %bb.q ], [ %i.ap, %bb.r ] ; 2 uses
  %i.an = call i32 @usleep(i32 noundef 10000) #6  ; 0 uses
  %i.ao = load atomic i64, ptr %i.a seq_cst, align 8 ; 2 uses
  %i.ap = add nuw nsw i32 %.0.i7, 1
  %i.aq = icmp ne i64 %i.ao, 0
  %i.ar = icmp samesign ult i32 %.0.i7, 199
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.r, label %wait_until.exit8, !llvm.loop !30

wait_until.exit8:                                 ; preds = %bb.r
  %i.at = icmp eq i64 %i.ao, 0
  br i1 %i.at, label %bb.t, label %bb.s

bb.s:                                             ; preds = %wait_until.exit8
  call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.11, i32 noundef 523, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_rwlock) #7
  unreachable

bb.t:                                             ; preds = %wait_until.exit8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 19
  call void @PyEvent_Wait(ptr noundef nonnull %i.au) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @test_lock_recursive(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct._PyRecursiveMutex, align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = call i32 @_PyRecursiveMutex_IsLockedByCurrentThread(ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.11, i32 noundef 533, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_recursive) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @_PyRecursiveMutex_Lock(ptr noundef nonnull %2) #6
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31
  %i.d = call i64 @PyThread_get_thread_ident_ex() #6
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.11, i32 noundef 536, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_recursive) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = load atomic i8, ptr %2 seq_cst, align 8
  %3 = and i8 %i.f, 1
  %.not1 = icmp eq i8 %3, 0
  br i1 %.not1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.11, i32 noundef 537, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_recursive) #7
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.11, i32 noundef 538, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_recursive) #7
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_PyRecursiveMutex_Lock(ptr noundef nonnull %2) #6
  %i.j = load i64, ptr %i.g, align 8, !tbaa !34
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.11, i32 noundef 541, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_recursive) #7
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_PyRecursiveMutex_Unlock(ptr noundef nonnull %2) #6
  call void @_PyRecursiveMutex_Unlock(ptr noundef nonnull %2) #6
  %i.l = load i64, ptr %i.b, align 8, !tbaa !31
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.11, i32 noundef 545, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_recursive) #7
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.n = load atomic i8, ptr %2 seq_cst, align 8
  %4 = and i8 %i.n, 1
  %.not2 = icmp eq i8 %4, 0
  br i1 %.not2, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.11, i32 noundef 546, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_recursive) #7
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.o = load i64, ptr %i.g, align 8, !tbaa !34
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.11, i32 noundef 547, ptr noundef nonnull @__PRETTY_FUNCTION__.test_lock_recursive) #7
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr @_Py_NoneStruct
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @PyMutex_Lock(ptr noundef) local_unnamed_addr #1

declare void @PyMutex_Unlock(ptr noundef) local_unnamed_addr #1

declare i64 @PyThread_start_new_thread(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @lock_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  store atomic i32 1, ptr %i.a seq_cst, align 4
  %i.b = cmpxchg ptr %0, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.c = extractvalue { i8, i1 } %i.b, 1
  br i1 %i.c, label %_PyMutex_Lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull %0) #6
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.a, %bb.b
  %i.d = load i8, ptr %0, align 4, !tbaa !10
  switch i8 %i.d, label %bb.c [
    i8 1, label %bb.d
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__.lock_thread) #7
  unreachable

bb.d:                                             ; preds = %_PyMutex_Lock.exit, %_PyMutex_Lock.exit
  %i.e = cmpxchg ptr %0, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %_PyMutex_Unlock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMutex_Unlock(ptr noundef nonnull %0) #6
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.d, %bb.e
  %i.g = load i8, ptr %0, align 4, !tbaa !10
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_PyMutex_Unlock.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, i32 noundef 66, ptr noundef nonnull @__PRETTY_FUNCTION__.lock_thread) #7
  unreachable

bb.g:                                             ; preds = %_PyMutex_Unlock.exit
  %i.i = getelementptr i8, ptr %0, i64 1
  tail call void @_PyEvent_Notify(ptr noundef %i.i) #6
  ret void
}

declare void @PyEvent_Wait(ptr noundef) local_unnamed_addr #1

declare void @_PyEvent_Notify(ptr noundef) local_unnamed_addr #1

declare i32 @usleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @counter_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_PyMutex_Unlock.exit
  %i.c = getelementptr i8, ptr %0, i64 8
  tail call void @_PyEvent_Notify(ptr noundef %i.c) #6
  ret void

bb.c:                                             ; preds = %bb.a, %_PyMutex_Unlock.exit
  %.07 = phi i64 [ 0, %bb.a ], [ %i.j, %_PyMutex_Unlock.exit ]
  %i.d = cmpxchg ptr %i.a, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_PyMutex_Lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Lock(ptr noundef %i.a) #6
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.c, %bb.d
  %i.f = load i64, ptr %i.b, align 8, !tbaa !21
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  %i.h = cmpxchg ptr %i.a, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.i = extractvalue { i8, i1 } %i.h, 1
  br i1 %i.i, label %_PyMutex_Unlock.exit, label %bb.e

bb.e:                                             ; preds = %_PyMutex_Lock.exit
  tail call void @PyMutex_Unlock(ptr noundef nonnull %i.a) #6
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %_PyMutex_Lock.exit, %bb.e
  %i.j = add nuw nsw i64 %.07, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, 10000
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !35
}

; Function Attrs: nounwind uwtable
define internal void @slow_counter_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_PyMutex_Unlock.exit
  %i.c = getelementptr i8, ptr %0, i64 8
  tail call void @_PyEvent_Notify(ptr noundef %i.c) #6
  ret void

bb.c:                                             ; preds = %bb.a, %_PyMutex_Unlock.exit
  %.08 = phi i64 [ 0, %bb.a ], [ %i.m, %_PyMutex_Unlock.exit ] ; 2 uses
  %i.d = cmpxchg ptr %i.a, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %_PyMutex_Lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMutex_Lock(ptr noundef %i.a) #6
  br label %_PyMutex_Lock.exit

_PyMutex_Lock.exit:                               ; preds = %bb.c, %bb.d
  %.lhs.trunc = trunc nuw i64 %.08 to i8
  %i.f = urem i8 %.lhs.trunc, 7
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_PyMutex_Lock.exit
  %i.h = tail call i32 @usleep(i32 noundef 2000) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_PyMutex_Lock.exit
  %i.i = load i64, ptr %i.b, align 8, !tbaa !21
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.b, align 8, !tbaa !21
  %i.k = cmpxchg ptr %i.a, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %_PyMutex_Unlock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PyMutex_Unlock(ptr noundef nonnull %i.a) #6
  br label %_PyMutex_Unlock.exit

_PyMutex_Unlock.exit:                             ; preds = %bb.f, %bb.g
  %i.m = add nuw nsw i64 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, 100
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !36
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_testinternalcapi_benchmark_locks_impl(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef range(i32 0, -2147483648) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.bench_config, align 8       ; 13 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  store i32 0, ptr %8, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %1, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %4, ptr %i.e, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %7, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %5, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %6, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.k = tail call ptr @PyMem_Calloc(i64 noundef %6, i64 noundef 216) #6 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !46
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call ptr @PyMem_Calloc(i64 noundef %0, i64 noundef 40) #6 ; 10 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.q = tail call ptr @PyList_New(i64 noundef %0) #6 ; 10 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i32 @PyTime_PerfCounter(ptr noundef nonnull %i.a) #6
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %.preheader5

.preheader5:                                      ; preds = %bb.f
  %i.u = icmp sgt i64 %0, 0                       ; 2 uses
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader5
  %i.v = icmp eq i64 %5, 0
  br i1 %i.v, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.preheader5, %.lr.ph
  %.0609 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %.preheader5 ] ; 3 uses
  %i.w = getelementptr [40 x i8], ptr %i.n, i64 %.0609 ; 4 uses
  store ptr %8, ptr %i.w, align 8, !tbaa !47
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.y = srem i64 %.0609, %6
  %i.z = getelementptr [216 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !50
  %i.ab = add nuw nsw i64 %.0609, 1               ; 3 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !51
  %i.ad = call i64 @PyThread_start_new_thread(ptr noundef nonnull @thread_benchmark_locks, ptr noundef nonnull %i.w) #6 ; 0 uses
  %exitcond.not = icmp eq i64 %i.ab, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

bb.g:                                             ; preds = %._crit_edge
  %i.ae = mul i32 %3, 1000
  %i.af = call i32 @usleep(i32 noundef %i.ae) #6  ; 0 uses
  store atomic i32 1, ptr %8 seq_cst, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  br i1 %i.u, label %.lr.ph12, label %._crit_edge13.thread

._crit_edge13:                                    ; preds = %.lr.ph12
  %i.ag = call i32 @PyTime_PerfCounter(ptr noundef nonnull %i.b) #6
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph16

._crit_edge13.thread:                             ; preds = %bb.h
  %i.ai = call i32 @PyTime_PerfCounter(ptr noundef nonnull %i.b) #6
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit, label %._crit_edge17

.lr.ph16:                                         ; preds = %._crit_edge13
  %i.ak = getelementptr i8, ptr %i.q, i64 8
  %i.al = getelementptr i8, ptr %i.q, i64 32
  %i.am = getelementptr i8, ptr %i.q, i64 24
  br label %bb.i

.lr.ph12:                                         ; preds = %bb.h, %.lr.ph12
  %.05910 = phi i64 [ %i.ap, %.lr.ph12 ], [ 0, %bb.h ] ; 2 uses
  %i.an = getelementptr [40 x i8], ptr %i.n, i64 %.05910
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  call void @PyEvent_Wait(ptr noundef %i.ao) #6
  %i.ap = add nuw nsw i64 %.05910, 1              ; 2 uses
  %exitcond18.not = icmp eq i64 %i.ap, %0
  br i1 %exitcond18.not, label %._crit_edge13, label %.lr.ph12, !llvm.loop !53

bb.i:                                             ; preds = %.lr.ph16, %bb.n
  %.05615 = phi i64 [ 0, %.lr.ph16 ], [ %i.bc, %bb.n ] ; 4 uses
  %.05714 = phi i64 [ 0, %.lr.ph16 ], [ %i.bb, %bb.n ]
  %i.aq = getelementptr [40 x i8], ptr %i.n, i64 %.05615
  %i.ar = getelementptr i8, ptr %i.aq, i64 24     ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.at = call ptr @PyLong_FromSsize_t(i64 noundef %i.as) #6 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !55
  %i.au = getelementptr i8, ptr %.val.i, i64 168
  %.val7.i = load i64, ptr %i.au, align 8, !tbaa !58
  %i.av = and i64 %.val7.i, 33554432
  %.not.i.a = icmp eq i64 %i.av, 0
  br i1 %.not.i.a, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__.PyList_SET_ITEM) #7
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !66
  %i.ax = icmp slt i64 %.05615, %i.aw
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__.PyList_SET_ITEM) #7
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !70
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.05615
  store ptr %i.at, ptr %i.az, align 8, !tbaa !24
  %i.ba = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.bb = add i64 %i.ba, %.05714                  ; 2 uses
  %i.bc = add nuw nsw i64 %.05615, 1              ; 2 uses
  %exitcond19.not = icmp eq i64 %i.bc, %0
  br i1 %exitcond19.not, label %._crit_edge17.loopexit, label %bb.i, !llvm.loop !71

._crit_edge17.loopexit:                           ; preds = %bb.n
  %i.bd = sitofp i64 %i.bb to double
  %i.be = fmul nnan double %i.bd, 1.000000e+09
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge13.thread, %._crit_edge17.loopexit
  %.057.lcssa = phi double [ 0.000000e+00, %._crit_edge13.thread ], [ %i.be, %._crit_edge17.loopexit ]
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %.not71 = icmp eq i64 %i.bf, %i.bg
  br i1 %.not71, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge17
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11, i32 noundef 374, ptr noundef nonnull @__PRETTY_FUNCTION__._testinternalcapi_benchmark_locks_impl) #7
  unreachable

bb.p:                                             ; preds = %._crit_edge17
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = sitofp i64 %i.bh to double
  %i.bj = fdiv double %.057.lcssa, %i.bi
  %i.bk = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.22, double noundef %i.bj, ptr noundef nonnull %i.q, i64 noundef %i.bh) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %._crit_edge13.thread, %._crit_edge13, %bb.f, %bb.e, %bb.p, %bb.d, %bb.b
  %.062 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %._crit_edge13 ], [ %i.bk, %bb.p ], [ null, %._crit_edge13.thread ], [ null, %bb.i ]
  %.061 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %._crit_edge13 ], [ %i.n, %bb.p ], [ %i.n, %._crit_edge13.thread ], [ %i.n, %bb.i ]
  %.054 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %._crit_edge13 ], [ %i.q, %bb.p ], [ %i.q, %._crit_edge13.thread ], [ %i.q, %bb.i ] ; 4 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !46
  call void @PyMem_Free(ptr noundef %i.bl) #6
  call void @PyMem_Free(ptr noundef %.061) #6
  %.not.i72 = icmp eq ptr %.054, null
  br i1 %.not.i72, label %Py_XDECREF.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.bm = load i32, ptr %.054, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i.i, label %bb.r, label %Py_XDECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %.054, align 8, !tbaa !26
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.s, label %Py_XDECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %.054) #6
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.s, %bb.r, %bb.q, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  ret ptr %.062
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare i32 @PyTime_PerfCounter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @thread_benchmark_locks(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 14 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40
  %.fr134 = freeze i32 %i.c                       ; 4 uses
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41
  %.fr135 = freeze i32 %i.e                       ; 4 uses
  %i.f = getelementptr i8, ptr %i.a, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42
  %.fr = freeze i32 %i.g                          ; 4 uses
  %i.h = getelementptr i8, ptr %i.a, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44   ; 6 uses
  %i.j = icmp sgt i64 %i.i, 0                     ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = getelementptr i8, ptr %i.a, i64 16       ; 5 uses
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = getelementptr i8, ptr %i.a, i64 40
  %i.o = icmp sgt i32 %.fr, 0
  %i.p = icmp sgt i32 %.fr134, 0
  %i.q = icmp sgt i32 %.fr135, 0                  ; 2 uses
  %i.r = sext i32 %.fr to i64                     ; 9 uses
  br i1 %i.o, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.s = getelementptr i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51
  %xtraiter = and i32 %.fr134, 7                  ; 3 uses
  %i.u = icmp ult i32 %.fr134, 8
  %unroll_iter = and i32 %.fr134, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod228 = icmp ne i32 %xtraiter, 0
  %xtraiter229 = and i32 %.fr135, 7               ; 3 uses
  %i.v = icmp ult i32 %.fr135, 8
  %unroll_iter234 = and i32 %.fr135, 2147483640
  %lcmp.mod231.not = icmp eq i32 %xtraiter229, 0
  %lcmp.mod233 = icmp ne i32 %xtraiter229, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %._crit_edge.us67
  %.049.us = phi i64 [ %.150.us, %._crit_edge.us67 ], [ %i.t, %.split.us.preheader ] ; 2 uses
  %.043.us = phi double [ %.144.lcssa.us, %._crit_edge.us67 ], [ 0.000000e+00, %.split.us.preheader ] ; 3 uses
  %.042.us = phi double [ %.3.lcssa.us, %._crit_edge.us67 ], [ 1.000000e+00, %.split.us.preheader ] ; 2 uses
  %.041.us = phi i64 [ %i.bf, %._crit_edge.us67 ], [ 0, %.split.us.preheader ] ; 4 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.w = load atomic i32, ptr %i.a monotonic, align 8
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %bb.d, label %.split70.us

bb.c:                                             ; preds = %.split.us
  %.not47.us = icmp slt i64 %.041.us, %i.i
  br i1 %.not47.us, label %bb.d, label %.split70.us

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.y = load i32, ptr %i.l, align 8, !tbaa !43
  %.not48.us = icmp eq i32 %i.y, 0
  br i1 %.not48.us, label %.lr.ph56.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %.049.us, -7046029254386353131   ; 3 uses
  %i.aa = lshr i64 %i.z, 30
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 27
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -7723592293110705685     ; 2 uses
  %i.ag = lshr i64 %i.af, 31
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !45
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = mul nuw i64 %i.ak, %i.ai
  %i.am = lshr i64 %i.al, 32
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.ao = getelementptr [216 x i8], ptr %i.an, i64 %i.am
  br label %.lr.ph56.us

.lr.ph56.us:                                      ; preds = %bb.e, %bb.d
  %.150.us = phi i64 [ %.049.us, %bb.d ], [ %i.z, %bb.e ]
  %.040.us = phi ptr [ %i.x, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.040.us, i64 200 ; 8 uses
  %i.aq = getelementptr i8, ptr %.040.us, i64 208 ; 2 uses
  br i1 %i.p, label %.lr.ph56.split.us.us, label %.lr.ph56.split.us66

.lr.ph56.split.us66:                              ; preds = %.lr.ph56.us, %_PyMutex_Unlock.exit.us64
  %.03954.us62 = phi i32 [ %i.av, %_PyMutex_Unlock.exit.us64 ], [ 0, %.lr.ph56.us ]
  %i.ar = cmpxchg ptr %i.ap, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.as = extractvalue { i8, i1 } %i.ar, 1
  br i1 %i.as, label %_PyMutex_Lock.exit.us63, label %bb.f

bb.f:                                             ; preds = %.lr.ph56.split.us66
  tail call void @PyMutex_Lock(ptr noundef %i.ap) #6
  br label %_PyMutex_Lock.exit.us63

_PyMutex_Lock.exit.us63:                          ; preds = %bb.f, %.lr.ph56.split.us66
  %i.at = cmpxchg ptr %i.ap, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.au = extractvalue { i8, i1 } %i.at, 1
  br i1 %i.au, label %_PyMutex_Unlock.exit.us64, label %bb.g

bb.g:                                             ; preds = %_PyMutex_Lock.exit.us63
  tail call void @PyMutex_Unlock(ptr noundef %i.ap) #6
  br label %_PyMutex_Unlock.exit.us64

_PyMutex_Unlock.exit.us64:                        ; preds = %bb.g, %_PyMutex_Lock.exit.us63
  %i.av = add nuw nsw i32 %.03954.us62, 1         ; 2 uses
  %exitcond161.not = icmp eq i32 %i.av, %.fr
  br i1 %exitcond161.not, label %..preheader_crit_edge.us, label %.lr.ph56.split.us66, !llvm.loop !73

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.359.us = phi double [ %i.bd, %.lr.ph.us ], [ %.us-phi.us, %.lr.ph.us.preheader ]
  %.14458.us = phi double [ %i.bd, %.lr.ph.us ], [ %.043.us, %.lr.ph.us.preheader ]
  %niter235 = phi i32 [ %niter235.next.7, %.lr.ph.us ], [ 0, %.lr.ph.us.preheader ]
  %i.aw = fadd double %.14458.us, %.359.us        ; 2 uses
  %i.ax = fadd double %i.aw, %i.aw                ; 2 uses
  %i.ay = fadd double %i.ax, %i.ax                ; 2 uses
  %i.az = fadd double %i.ay, %i.ay                ; 2 uses
  %i.ba = fadd double %i.az, %i.az                ; 2 uses
  %i.bb = fadd double %i.ba, %i.ba                ; 2 uses
  %i.bc = fadd double %i.bb, %i.bb                ; 2 uses
  %i.bd = fadd double %i.bc, %i.bc                ; 6 uses
  %niter235.next.7 = add nuw nsw i32 %niter235, 8 ; 2 uses
  %niter235.ncmp.7 = icmp eq i32 %niter235.next.7, %unroll_iter234
  br i1 %niter235.ncmp.7, label %._crit_edge.us67.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !74

._crit_edge.us67.loopexit.unr-lcssa:              ; preds = %.lr.ph.us
  br i1 %lcmp.mod231.not, label %._crit_edge.us67, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %._crit_edge.us67.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %.359.us.epil.init = phi double [ %.us-phi.us, %.lr.ph.us.preheader ], [ %i.bd, %._crit_edge.us67.loopexit.unr-lcssa ]
  %.14458.us.epil.init = phi double [ %.043.us, %.lr.ph.us.preheader ], [ %i.bd, %._crit_edge.us67.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod233)
  br label %.lr.ph.us.epil

.lr.ph.us.epil:                                   ; preds = %.lr.ph.us.epil, %.lr.ph.us.epil.preheader
  %.359.us.epil = phi double [ %i.be, %.lr.ph.us.epil ], [ %.359.us.epil.init, %.lr.ph.us.epil.preheader ]
  %.14458.us.epil = phi double [ %i.be, %.lr.ph.us.epil ], [ %.14458.us.epil.init, %.lr.ph.us.epil.preheader ]
  %epil.iter230 = phi i32 [ %epil.iter230.next, %.lr.ph.us.epil ], [ 0, %.lr.ph.us.epil.preheader ]
  %i.be = fadd double %.14458.us.epil, %.359.us.epil ; 4 uses
  %epil.iter230.next = add i32 %epil.iter230, 1   ; 2 uses
  %epil.iter230.cmp.not = icmp eq i32 %epil.iter230.next, %xtraiter229
  br i1 %epil.iter230.cmp.not, label %._crit_edge.us67, label %.lr.ph.us.epil, !llvm.loop !75

._crit_edge.us67:                                 ; preds = %._crit_edge.us67.loopexit.unr-lcssa, %.lr.ph.us.epil, %..preheader_crit_edge.us
  %.144.lcssa.us = phi double [ %.043.us, %..preheader_crit_edge.us ], [ %i.bd, %._crit_edge.us67.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.us.epil ]
  %.3.lcssa.us = phi double [ %.us-phi.us, %..preheader_crit_edge.us ], [ %i.bd, %._crit_edge.us67.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.us.epil ]
  %i.bf = add i64 %.041.us, %i.r
  br label %.split.us

..preheader_crit_edge.us:                         ; preds = %_PyMutex_Unlock.exit.us64, %_PyMutex_Unlock.exit.us.us
  %.us-phi.us = phi double [ %.lcssa, %_PyMutex_Unlock.exit.us.us ], [ %.042.us, %_PyMutex_Unlock.exit.us64 ] ; 3 uses
  br i1 %i.q, label %.lr.ph.us.preheader, label %._crit_edge.us67

.lr.ph.us.preheader:                              ; preds = %..preheader_crit_edge.us
  br i1 %i.v, label %.lr.ph.us.epil.preheader, label %.lr.ph.us

.lr.ph56.split.us.us:                             ; preds = %.lr.ph56.us, %_PyMutex_Unlock.exit.us.us
  %.03954.us.us = phi i32 [ %i.br, %_PyMutex_Unlock.exit.us.us ], [ 0, %.lr.ph56.us ]
  %.153.us.us = phi double [ %.lcssa, %_PyMutex_Unlock.exit.us.us ], [ %.042.us, %.lr.ph56.us ] ; 2 uses
  %i.bg = cmpxchg ptr %i.ap, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.bh = extractvalue { i8, i1 } %i.bg, 1
  br i1 %i.bh, label %_PyMutex_Lock.exit.us.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph56.split.us.us
  tail call void @PyMutex_Lock(ptr noundef %i.ap) #6
  br label %_PyMutex_Lock.exit.us.us

_PyMutex_Lock.exit.us.us:                         ; preds = %bb.h, %.lr.ph56.split.us.us
  %.promoted.us.us = load double, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  br i1 %i.u, label %.epil.preheader, label %_PyMutex_Lock.exit.us.us.new
end_hunk_0
