Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/posixmodule?download=true
inline.NumInlined: 800
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@os_sched_setparam_impl:bb.a
  %i.i = trunc nsw i64 %i.d to i32
  store i32 %i.i, ptr %2, align 4, !tbaa !1638
  %i.j = call i32 @sched_setparam(i32 noundef %0, ptr noundef nonnull %2) #19
  %.not3 = icmp eq i32 %i.j, 0
  br i1 %.not3, label %convert_sched_param.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.l = call ptr @PyErr_SetFromErrno(ptr noundef %i.k) #19
  br label %convert_sched_param.exit.thread

convert_sched_param.exit.thread:                  ; preds = %bb.d, %bb.f, %bb.b, %bb.g, %bb.h
  %.0 = phi ptr [ %i.l, %bb.h ], [ @_Py_NoneStruct, %bb.g ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @sched_setparam(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_sched_setscheduler_impl(ptr nofree readnone captures(address) %.24.val.24.val, i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !guid !1964 {
bb.a:
  %3 = alloca %struct.sched_param, align 4        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val11.i = load ptr, ptr %i.a, align 8, !tbaa !1583
  %.not.i = icmp eq ptr %.val11.i, %.24.val.24.val
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.271) #19
  br label %convert_sched_param.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyStructSequence_GetItem(ptr noundef nonnull %2, i64 noundef 0) #19
  %i.d = tail call i64 @PyLong_AsLong(ptr noundef %i.c) #19 ; 3 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyErr_Occurred() #19
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %bb.g, label %convert_sched_param.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = add i64 %i.d, -2147483648
  %or.cond.i = icmp ult i64 %i.g, -4294967296
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !1581
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.272) #19
  br label %convert_sched_param.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.i = trunc nsw i64 %i.d to i32
  store i32 %i.i, ptr %3, align 4, !tbaa !1638
  %i.j = call i32 @sched_setscheduler(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3) #19
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.h, label %convert_sched_param.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.l = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.m = call ptr @PyErr_SetFromErrno(ptr noundef %i.l) #19
  br label %convert_sched_param.exit.thread

convert_sched_param.exit.thread:                  ; preds = %bb.d, %bb.f, %bb.b, %bb.g, %bb.h
  %.0 = phi ptr [ %i.m, %bb.h ], [ @_Py_NoneStruct, %bb.g ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @sched_setscheduler(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_sched_setaffinity_impl(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !guid !1966 {
bb.a:
  %i.a = tail call ptr @PyObject_GetIter(ptr noundef %1) #19 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_XDECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__sched_cpualloc(i64 noundef 64) #19 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread14, label %bb.c

.thread14:                                        ; preds = %bb.b
  %i.e = tail call ptr @PyErr_NoMemory() #19      ; 0 uses
  br label %bb.x

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.c, align 8
  %i.f = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %._crit_edge41, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.c, %Py_DECREF.exit87
  %i.g = phi ptr [ %i.aq, %Py_DECREF.exit87 ], [ %i.f, %bb.c ] ; 9 uses
  %.05438 = phi ptr [ %.2, %Py_DECREF.exit87 ], [ %i.c, %bb.c ] ; 4 uses
  %.05637 = phi i64 [ %.258, %Py_DECREF.exit87 ], [ 8, %bb.c ] ; 2 uses
  %.06036 = phi i32 [ %.262, %Py_DECREF.exit87 ], [ 64, %bb.c ] ; 3 uses
  %i.h = tail call i32 @PyIndex_Check(ptr noundef nonnull %i.g) #19
  %.not78 = icmp eq i32 %i.h, 0
  br i1 %.not78, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph40
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !1581
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !1583
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.319, ptr noundef %.val) #19 ; 0 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !1590 ; 2 uses
  %.not.i86 = icmp sgt i32 %i.l, -1
  br i1 %.not.i86, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.g, align 8, !tbaa !1590
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #19
  br label %bb.w

bb.g:                                             ; preds = %.lr.ph40
  %i.o = tail call i64 @PyLong_AsLong(ptr noundef nonnull %i.g) #19 ; 8 uses
  %i.p = load i32, ptr %i.g, align 8, !tbaa !1590 ; 2 uses
  %.not.i84 = icmp sgt i32 %i.p, -1
  br i1 %.not.i84, label %bb.h, label %Py_DECREF.exit85

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !1590
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit85

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #19
  br label %Py_DECREF.exit85

Py_DECREF.exit85:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.s = icmp slt i64 %i.o, 0
  br i1 %i.s, label %bb.j, label %bb.l

bb.j:                                             ; preds = %Py_DECREF.exit85
  %i.t = tail call ptr @PyErr_Occurred() #19
  %.not82 = icmp eq ptr %i.t, null
  br i1 %.not82, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !1581
  tail call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str.320) #19
  br label %bb.w

bb.l:                                             ; preds = %Py_DECREF.exit85
  %i.v = icmp samesign ugt i64 %i.o, 2147483646
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !1581
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.321) #19
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.x = sext i32 %.06036 to i64
  %.not79 = icmp slt i64 %i.o, %i.x
  br i1 %.not79, label %bb.q, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.y = trunc nuw nsw i64 %i.o to i32
  %i.z = add nuw nsw i32 %i.y, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %.05133 = phi i32 [ %.06036, %.lr.ph ], [ %.1, %bb.o ] ; 2 uses
  %i.aa = icmp sgt i32 %.05133, 1073741823
  %i.ab = shl i32 %.05133, 1
  %.1 = select i1 %i.aa, i32 %i.z, i32 %i.ab      ; 3 uses
  %i.ac = sext i32 %.1 to i64                     ; 3 uses
  %.not80 = icmp slt i64 %i.o, %i.ac
  br i1 %.not80, label %._crit_edge, label %bb.o, !llvm.loop !1965

._crit_edge:                                      ; preds = %bb.o
  %i.ad = tail call ptr @__sched_cpualloc(i64 noundef %i.ac) #19 ; 4 uses
  %.not81 = icmp eq ptr %i.ad, null
  br i1 %.not81, label %.thread, label %bb.p

.thread:                                          ; preds = %._crit_edge
  %i.ae = tail call ptr @PyErr_NoMemory() #19     ; 0 uses
  br label %bb.w

bb.p:                                             ; preds = %._crit_edge
  %i.af = add nuw nsw i64 %i.ac, 63
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 2305843009213693944      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %.05438, i64 %.05637, i1 false)
  tail call void @__sched_cpufree(ptr noundef %.05438) #19
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.262 = phi i32 [ %.1, %bb.p ], [ %.06036, %bb.n ]
  %.258 = phi i64 [ %i.ah, %bb.p ], [ %.05637, %bb.n ] ; 3 uses
  %.2 = phi ptr [ %i.ad, %bb.p ], [ %.05438, %bb.n ] ; 3 uses
  %i.ai = lshr i64 %i.o, 3
  %i.aj = icmp samesign ult i64 %i.ai, %.258
  br i1 %i.aj, label %bb.r, label %Py_DECREF.exit87

bb.r:                                             ; preds = %bb.q
  %i.ak = and i64 %i.o, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = lshr i64 %i.o, 6
  %i.an = getelementptr [8 x i8], ptr %.2, i64 %i.am ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1617
  %i.ap = or i64 %i.ao, %i.al
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !1617
  br label %Py_DECREF.exit87

Py_DECREF.exit87:                                 ; preds = %bb.r, %bb.q
  %i.aq = tail call ptr @PyIter_Next(ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %._crit_edge41, label %.lr.ph40

._crit_edge41:                                    ; preds = %Py_DECREF.exit87, %bb.c
  %.056.lcssa = phi i64 [ 8, %bb.c ], [ %.258, %Py_DECREF.exit87 ]
  %.054.lcssa = phi ptr [ %i.c, %bb.c ], [ %.2, %Py_DECREF.exit87 ] ; 4 uses
  %i.ar = tail call ptr @PyErr_Occurred() #19
  %.not76 = icmp eq ptr %i.ar, null
  br i1 %.not76, label %bb.s, label %.thread69

.thread69:                                        ; preds = %._crit_edge41
  tail call void @__sched_cpufree(ptr noundef nonnull %.054.lcssa) #19
  br label %bb.x

bb.s:                                             ; preds = %._crit_edge41
  %i.as = load i32, ptr %i.a, align 8, !tbaa !1590 ; 2 uses
  %.not.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i, label %bb.t, label %Py_DECREF.exit

bb.t:                                             ; preds = %bb.s
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !1590
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.t, %bb.u
  %i.av = tail call i32 @sched_setaffinity(i32 noundef %0, i64 noundef %.056.lcssa, ptr noundef %.054.lcssa) #19
  %.not77 = icmp eq i32 %i.av, 0
  br i1 %.not77, label %bb.v, label %.thread65

.thread65:                                        ; preds = %Py_DECREF.exit
  %i.aw = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.ax = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.aw) #19 ; 0 uses
  tail call void @__sched_cpufree(ptr noundef nonnull %.054.lcssa) #19
  br label %Py_XDECREF.exit

bb.v:                                             ; preds = %Py_DECREF.exit
  tail call void @__sched_cpufree(ptr noundef %.054.lcssa) #19
  br label %Py_XDECREF.exit

bb.w:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.k, %.thread, %bb.j, %bb.m
  tail call void @__sched_cpufree(ptr noundef nonnull %.05438) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread69, %.thread14
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !1590 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i.i, label %bb.y, label %Py_XDECREF.exit

bb.y:                                             ; preds = %bb.x
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.a, align 8, !tbaa !1590
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.z, label %Py_XDECREF.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #19
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.thread65, %bb.z, %bb.y, %bb.x, %bb.a, %bb.v
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.v ], [ null, %bb.a ], [ null, %.thread65 ], [ null, %bb.x ], [ null, %bb.y ], [ null, %bb.z ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_setaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @os_sched_getaffinity_impl(i32 noundef %0) unnamed_addr #0 !guid !1968 {
bb.a:
  %i.a = tail call ptr @__sched_cpualloc(i64 noundef 64) #19 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.e
  %i.c = shl i32 %.03811, 1                       ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr exact i64 %i.d, 3
  %i.f = tail call ptr @__sched_cpualloc(i64 noundef %i.d) #19 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = tail call ptr @PyErr_NoMemory() #19
  br label %Py_XDECREF.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 7 uses
  %i.j = phi i64 [ %i.e, %bb.b ], [ 8, %bb.a ]    ; 3 uses
  %.03811 = phi i32 [ %i.c, %bb.b ], [ 64, %bb.a ] ; 2 uses
  %i.k = tail call i32 @sched_getaffinity(i32 noundef %0, i64 noundef %i.j, ptr noundef nonnull %i.i) #19
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @__sched_cpufree(ptr noundef nonnull %i.i) #19
  %i.m = tail call ptr @__errno_location() #21
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %.not = icmp eq i32 %i.n, 22
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @PyExc_OSError, align 8, !tbaa !1581
  %i.p = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.o) #19
  br label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp sgt i32 %.03811, 1073741823
  br i1 %i.q, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !1581
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.322) #19
  br label %Py_XDECREF.exit

bb.g:                                             ; preds = %.lr.ph
  %i.s = tail call ptr @PySet_New(ptr noundef null) #19 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread2, label %bb.h

.thread2:                                         ; preds = %bb.g
  tail call void @__sched_cpufree(ptr noundef nonnull %i.i) #19
  br label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i32 @__sched_cpucount(i64 noundef %i.j, ptr noundef nonnull %i.i) #19 ; 2 uses
  %.not4212 = icmp eq i32 %i.u, 0
  br i1 %.not4212, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.h, %.critedge
  %.03414 = phi i32 [ %.135, %.critedge ], [ %i.u, %bb.h ] ; 3 uses
  %.03613 = phi i32 [ %i.am, %.critedge ], [ 0, %bb.h ] ; 2 uses
  %i.v = sext i32 %.03613 to i64                  ; 4 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = icmp samesign ult i64 %i.w, %i.j
  br i1 %i.x, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph16
  %i.y = lshr i64 %i.v, 6
  %i.z = getelementptr [8 x i8], ptr %i.i, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1617
  %i.ab = and i64 %i.v, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.aa, %i.ac
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @PyLong_FromLong(i64 noundef %i.v) #19 ; 5 uses
  %i.ag = add i32 %.03414, -1
  %i.ah = icmp eq ptr %i.af, null
  br i1 %i.ah, label %.thread3, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 @PySet_Add(ptr noundef nonnull %i.s, ptr noundef nonnull %i.af) #19
  %.not44 = icmp eq i32 %i.ai, 0
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !1590 ; 2 uses
  %.not.i = icmp sgt i32 %i.aj, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.af, align 8, !tbaa !1590
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %Py_DECREF.exit
end_hunk_0
