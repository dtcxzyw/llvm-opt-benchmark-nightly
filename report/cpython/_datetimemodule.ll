inline.NumInlined: 580
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@microseconds_to_delta_ex:bb.a
  br i1 %.not.i43, label %bb.k, label %Py_DECREF.exit44

bb.k:                                             ; preds = %bb.j
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !35
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %Py_DECREF.exit44

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #16
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.ae = getelementptr i8, ptr %i.z, i64 32
  %i.af = getelementptr i8, ptr %i.z, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = tail call i32 @PyLong_AsInt(ptr noundef %i.ag) #16 ; 5 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %Py_DECREF.exit44
  %i.aj = tail call ptr @PyErr_Occurred() #16
  %.not41 = icmp eq ptr %i.aj, null
  br i1 %.not41, label %.thread, label %bb.u

bb.n:                                             ; preds = %Py_DECREF.exit44
  %or.cond3 = icmp ult i32 %i.ah, 86400
  br i1 %or.cond3, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !43 ; 10 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !35 ; 2 uses
  %i.am = icmp ugt i32 %i.al, -1073741825
  br i1 %i.am, label %_Py_NewRef.exit50, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !35
  br label %_Py_NewRef.exit50

_Py_NewRef.exit50:                                ; preds = %bb.o, %bb.p
  %i.ao = tail call i32 @PyLong_AsInt(ptr noundef nonnull %i.ak) #16 ; 5 uses
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.s, label %.split

.split:                                           ; preds = %_Py_NewRef.exit50
  %i.aq = add i32 %i.ao, 999999999
  %or.cond.i16.i = icmp ult i32 %i.aq, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %.split
  %i.ar = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !43
  %i.as = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ar, ptr noundef nonnull @.str.71, i32 noundef %i.ao, i32 noundef 999999999) #16, !inline_history !24 ; 0 uses
  br label %bb.u

check_delta_day_range.exit.i:                     ; preds = %.split
  %i.at = or i32 %i.ah, %i.n
  %i.au = or i32 %i.at, %i.ao
  %or.cond3.i.i = icmp ne i32 %i.au, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.av = icmp ne ptr %1, %zero_delta.val.i.i
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.av
  br i1 %or.cond.i17.not.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %check_delta_day_range.exit.i
  %i.aw = getelementptr i8, ptr %1, i64 304
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11
  %i.ay = tail call ptr %i.ax(ptr noundef %1, i64 noundef 0) #16, !inline_history !24 ; 6 uses
  %.not15.i = icmp eq ptr %i.ay, null
  br i1 %.not15.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store i64 -1, ptr %i.az, align 8, !tbaa !30
  %i.ba = getelementptr i8, ptr %i.ay, i64 24
  store i32 %i.ao, ptr %i.ba, align 8, !tbaa !32
  %i.bb = getelementptr i8, ptr %i.ay, i64 28
  store i32 %i.ah, ptr %i.bb, align 4, !tbaa !33
  %i.bc = getelementptr i8, ptr %i.ay, i64 32
  store i32 %i.n, ptr %i.bc, align 8, !tbaa !34
  br label %bb.u

bb.s:                                             ; preds = %_Py_NewRef.exit50
  %i.bd = tail call ptr @PyErr_Occurred() #16
  %.not42 = icmp eq ptr %i.bd, null
  br i1 %.not42, label %.split34, label %bb.u

.split34:                                         ; preds = %bb.s
  %i.be = getelementptr i8, ptr %1, i64 304
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bg = tail call ptr %i.bf(ptr noundef %1, i64 noundef 0) #16, !inline_history !24 ; 6 uses
  %.not15.i59 = icmp eq ptr %i.bg, null
  br i1 %.not15.i59, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.split34
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store i64 -1, ptr %i.bh, align 8, !tbaa !30
  %i.bi = getelementptr i8, ptr %i.bg, i64 24
  store i32 -1, ptr %i.bi, align 8, !tbaa !32
  %i.bj = getelementptr i8, ptr %i.bg, i64 28
  store i32 %i.ah, ptr %i.bj, align 4, !tbaa !33
  %i.bk = getelementptr i8, ptr %i.bg, i64 32
  store i32 %i.n, ptr %i.bk, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.m, %bb.s, %.thread, %bb.r, %check_delta_day_range.exit.thread.i, %check_delta_day_range.exit.i, %bb.q, %.split34, %bb.t
  %.032.ph = phi ptr [ %i.z, %bb.t ], [ %i.z, %.split34 ], [ %i.z, %bb.q ], [ %i.z, %check_delta_day_range.exit.i ], [ %i.z, %check_delta_day_range.exit.thread.i ], [ %i.z, %bb.r ], [ %.133, %.thread ], [ %i.z, %bb.s ], [ %i.z, %bb.m ], [ %i.i, %bb.d ] ; 3 uses
  %.031.ph = phi ptr [ %i.ak, %bb.t ], [ %i.ak, %.split34 ], [ %i.ak, %bb.q ], [ %i.ak, %check_delta_day_range.exit.i ], [ %i.ak, %check_delta_day_range.exit.thread.i ], [ %i.ak, %bb.r ], [ null, %.thread ], [ %i.ak, %bb.s ], [ null, %bb.m ], [ null, %bb.d ] ; 2 uses
  %.0.ph = phi ptr [ %i.bg, %bb.t ], [ null, %.split34 ], [ null, %bb.q ], [ @zero_delta, %check_delta_day_range.exit.i ], [ null, %check_delta_day_range.exit.thread.i ], [ %i.ay, %bb.r ], [ null, %.thread ], [ null, %bb.s ], [ null, %bb.m ], [ null, %bb.d ] ; 2 uses
  %i.bl = load i32, ptr %.032.ph, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bl, -1
  br i1 %.not.i.i, label %bb.v, label %Py_XDECREF.exit

bb.v:                                             ; preds = %bb.u
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %.032.ph, align 8, !tbaa !35
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.w, label %Py_XDECREF.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %.032.ph) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.u, %bb.v, %bb.w
  %.not.i62 = icmp eq ptr %.031.ph, null
  br i1 %.not.i62, label %Py_XDECREF.exit64, label %Py_XDECREF.exit.thread82

Py_XDECREF.exit.thread82:                         ; preds = %Py_DECREF.exit46, %Py_XDECREF.exit
  %.0317587 = phi ptr [ %.031.ph, %Py_XDECREF.exit ], [ %i.q, %Py_DECREF.exit46 ] ; 3 uses
  %.07786 = phi ptr [ %.0.ph, %Py_XDECREF.exit ], [ null, %Py_DECREF.exit46 ] ; 3 uses
  %i.bo = load i32, ptr %.0317587, align 8, !tbaa !35 ; 2 uses
  %.not.i.i63 = icmp sgt i32 %i.bo, -1
  br i1 %.not.i.i63, label %bb.x, label %Py_XDECREF.exit64

bb.x:                                             ; preds = %Py_XDECREF.exit.thread82
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %.0317587, align 8, !tbaa !35
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %Py_XDECREF.exit64

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0317587) #16
  br label %Py_XDECREF.exit64

Py_XDECREF.exit64:                                ; preds = %_get_current_state.exit, %Py_XDECREF.exit, %Py_XDECREF.exit.thread82, %bb.x, %bb.y
  %.07781 = phi ptr [ %.07786, %bb.y ], [ %.0.ph, %Py_XDECREF.exit ], [ %.07786, %Py_XDECREF.exit.thread82 ], [ %.07786, %bb.x ], [ null, %_get_current_state.exit ]
  %i.br = load i32, ptr %.08.i, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.br, -1
  br i1 %.not.i, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %Py_XDECREF.exit64
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %.08.i, align 8, !tbaa !35
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.aa, label %Py_DECREF.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %.08.i) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_XDECREF.exit64, %bb.z, %bb.aa
  ret ptr %.07781

.thread:                                          ; preds = %bb.m, %bb.d, %bb.n, %bb.e
  %.133 = phi ptr [ %i.z, %bb.n ], [ %i.i, %bb.e ], [ %i.i, %bb.d ], [ %i.z, %bb.m ]
  %i.bu = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.bu, ptr noundef nonnull @.str.42) #16
  br label %bb.u
}

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyInterpreterState_Get() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_current_module(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.c = tail call ptr @PyInterpreterState_GetDict(ptr noundef %0) #16 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !43
  %i.e = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 76840), ptr noundef nonnull %i.b) #16
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = icmp ne ptr %i.g, @_Py_NoneStruct
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 @PyWeakref_GetRef(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.l = icmp eq ptr %i.k, @_Py_NoneStruct
  br i1 %i.l, label %bb.e, label %Py_DECREF.exit13

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.m = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i12 = icmp sgt i32 %i.m, -1
  br i1 %.not.i12, label %bb.f, label %Py_DECREF.exit13

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit13

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16
  br label %Py_DECREF.exit13

Py_DECREF.exit13:                                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !43   ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %Py_DECREF.exit13
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !35
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %Py_DECREF.exit13, %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %Py_DECREF.exit
  %.0 = phi ptr [ %i.t, %Py_DECREF.exit ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #2

declare ptr @PyInterpreterState_GetDict(ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyWeakref_GetRef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @checked_divmod(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyNumber_Divmod(ptr noundef %0, ptr noundef %1) #16 ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val17 = load ptr, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.c = getelementptr i8, ptr %.val17, i64 168
  %.val20 = load i64, ptr %i.c, align 8, !tbaa !81
  %i.d = and i64 %.val20, 67108864
  %.not12 = icmp eq i64 %i.d, 0
  br i1 %.not12, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.f = getelementptr i8, ptr %.val17, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.43, ptr noundef %i.g) #16 ; 0 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i14 = icmp sgt i32 %i.i, -1
  br i1 %.not.i14, label %bb.d, label %Py_DECREF.exit15

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !35
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit15.sink.split, label %Py_DECREF.exit15

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.a, i64 16
  %.val19 = load i64, ptr %i.l, align 8, !tbaa !63 ; 2 uses
  %.not13 = icmp eq i64 %.val19, 2
  br i1 %.not13, label %Py_DECREF.exit15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull @.str.44, i64 noundef %.val19) #16 ; 0 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit15

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !35
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit15.sink.split, label %Py_DECREF.exit15

Py_DECREF.exit15.sink.split:                      ; preds = %bb.g, %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16
  br label %Py_DECREF.exit15

Py_DECREF.exit15:                                 ; preds = %Py_DECREF.exit15.sink.split, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.a ], [ %i.a, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.f ], [ null, %Py_DECREF.exit15.sink.split ]
  ret ptr %.0
}

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Divmod(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PyTuple_Size(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyLong_DivmodNear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Remainder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @divide_timedelta_timedelta(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @delta_to_microseconds(ptr noundef %0) ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @delta_to_microseconds(ptr noundef %1) ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i15 = icmp sgt i32 %i.e, -1
  br i1 %.not.i15, label %bb.d, label %Py_DECREF.exit16

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !35
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %Py_DECREF.exit16.sink.split, label %Py_DECREF.exit16

bb.e:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyNumber_FloorDivide(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #16 ; 3 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i13 = icmp sgt i32 %i.i, -1
  br i1 %.not.i13, label %bb.f, label %Py_DECREF.exit14

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !35
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %Py_DECREF.exit14

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.l = load i32, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit16

bb.h:                                             ; preds = %Py_DECREF.exit14
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.c, align 8, !tbaa !35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %Py_DECREF.exit16.sink.split, label %Py_DECREF.exit16

Py_DECREF.exit16.sink.split:                      ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.a, %bb.d ], [ %i.c, %bb.h ]
  %.0.ph = phi ptr [ null, %bb.d ], [ %i.h, %bb.h ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %Py_DECREF.exit16.sink.split, %bb.h, %Py_DECREF.exit14, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ %i.h, %bb.h ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ %i.h, %Py_DECREF.exit14 ], [ %.0.ph, %Py_DECREF.exit16.sink.split ]
  ret ptr %.0
}

declare ptr @PyNumber_FloorDivide(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_TrueDivide(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PyObject_Hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @delta_total_seconds(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @delta_to_microseconds(ptr noundef %0) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyInterpreterState_Get() #16
  %i.d = tail call fastcc ptr @get_current_module(ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_get_current_state.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @PyErr_Occurred() #16      ; 0 uses
  %i.g = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.41) #16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  br label %_get_current_state.exit

_get_current_state.exit:                          ; preds = %bb.c, %bb.b
  %.08.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 4 uses
  %i.h = getelementptr i8, ptr %.08.i, i64 24
end_hunk_0
begin_hunk_1_@date_subtract:bb.a
  %i.k = getelementptr i8, ptr %0, i64 26
  %i.l = load i8, ptr %i.k, align 2, !tbaa !35
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 27
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35    ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 28
  %i.r = load i8, ptr %i.q, align 4, !tbaa !35
  %i.s = zext i8 %i.r to i32
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 4 uses
  %i.w = icmp ugt i8 %i.p, 2
  br i1 %i.w, label %bb.d, label %ymd_to_ord.exit

bb.d:                                             ; preds = %PyObject_TypeCheck.exit31.thread
  %i.x = and i32 %i.m, 3
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %is_leap.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc = trunc nuw i32 %i.n to i16         ; 2 uses
  %i.z = urem i16 %.lhs.trunc, 100
  %.not.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i.i, label %is_leap.exit.i.i, label %is_leap.exit.thread6.i.i

is_leap.exit.thread6.i.i:                         ; preds = %bb.e
  %i.aa = add i32 %i.v, 1
  br label %ymd_to_ord.exit

is_leap.exit.i.i:                                 ; preds = %bb.e
  %i.ab = urem i16 %.lhs.trunc, 400
  %.not.i.i = icmp eq i16 %i.ab, 0
  %i.ac = add i32 %i.v, 1
  br i1 %.not.i.i, label %ymd_to_ord.exit, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %is_leap.exit.i.i, %bb.d
  br label %ymd_to_ord.exit

ymd_to_ord.exit:                                  ; preds = %PyObject_TypeCheck.exit31.thread, %is_leap.exit.thread6.i.i, %is_leap.exit.i.i, %is_leap.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.v, %PyObject_TypeCheck.exit31.thread ], [ %i.v, %is_leap.exit.thread.i.i ], [ %i.ac, %is_leap.exit.i.i ], [ %i.aa, %is_leap.exit.thread6.i.i ]
  %i.ad = add nsw i32 %i.n, -1                    ; 4 uses
  %i.ae = mul nsw i32 %i.ad, 365
  %i.af = sdiv i32 %i.ad, 4
  %.neg.i.i = sdiv i32 %i.ad, -100
  %i.ag = sdiv i32 %i.ad, 400
  %i.ah = add nuw nsw i32 %i.af, %i.s
  %i.ai = add nsw i32 %i.ah, %i.ae
  %i.aj = add nsw i32 %i.ai, %.neg.i.i
  %i.ak = add nsw i32 %i.aj, %i.ag
  %i.al = add i32 %i.ak, %.0.i.i                  ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 25
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = getelementptr i8, ptr %1, i64 26
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !35
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = or disjoint i32 %i.ap, %i.as            ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 27
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 28
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !35
  %i.ay = zext i8 %i.ax to i32
  %i.az = zext i8 %i.av to i64
  %i.ba = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7  ; 4 uses
  %i.bc = icmp ugt i8 %i.av, 2
  br i1 %i.bc, label %bb.f, label %ymd_to_ord.exit39

bb.f:                                             ; preds = %ymd_to_ord.exit
  %i.bd = and i32 %i.as, 3
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %is_leap.exit.thread.i.i34

bb.g:                                             ; preds = %bb.f
  %.lhs.trunc49 = trunc nuw i32 %i.at to i16      ; 2 uses
  %i.bf = urem i16 %.lhs.trunc49, 100
  %.not.i.i.i35 = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i.i35, label %is_leap.exit.i.i37, label %is_leap.exit.thread6.i.i36

is_leap.exit.thread6.i.i36:                       ; preds = %bb.g
  %i.bg = add i32 %i.bb, 1
  br label %ymd_to_ord.exit39

is_leap.exit.i.i37:                               ; preds = %bb.g
  %i.bh = urem i16 %.lhs.trunc49, 400
  %.not.i.i38 = icmp eq i16 %i.bh, 0
  %i.bi = add i32 %i.bb, 1
  br i1 %.not.i.i38, label %ymd_to_ord.exit39, label %is_leap.exit.thread.i.i34

is_leap.exit.thread.i.i34:                        ; preds = %is_leap.exit.i.i37, %bb.f
  br label %ymd_to_ord.exit39

ymd_to_ord.exit39:                                ; preds = %ymd_to_ord.exit, %is_leap.exit.thread6.i.i36, %is_leap.exit.i.i37, %is_leap.exit.thread.i.i34
  %.0.i.i32 = phi i32 [ %i.bb, %ymd_to_ord.exit ], [ %i.bb, %is_leap.exit.thread.i.i34 ], [ %i.bi, %is_leap.exit.i.i37 ], [ %i.bg, %is_leap.exit.thread6.i.i36 ]
  %i.bj = add nsw i32 %i.at, -1                   ; 4 uses
  %i.bk = mul nsw i32 %i.bj, 365
  %i.bl = sdiv i32 %i.bj, 4
  %.neg.i.i33 = sdiv i32 %i.bj, -100
  %i.bm = sdiv i32 %i.bj, 400
  %i.bn = add nuw nsw i32 %i.bl, %i.ay
  %i.bo = add nsw i32 %i.bn, %i.bk
  %i.bp = add nsw i32 %i.bo, %.neg.i.i33
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = add i32 %i.bq, %.0.i.i32                ; 2 uses
  %i.bs = sub i32 %i.al, %i.br                    ; 3 uses
  %i.bt = add i32 %i.bs, 999999999
  %or.cond.i16.i = icmp ult i32 %i.bt, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %ymd_to_ord.exit39
  %i.bu = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !43
  %i.bv = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bu, ptr noundef nonnull @.str.71, i32 noundef %i.bs, i32 noundef 999999999) #16, !inline_history !24 ; 0 uses
  br label %new_delta_ex.exit

check_delta_day_range.exit.i:                     ; preds = %ymd_to_ord.exit39
  %or.cond3.i.i = icmp ne i32 %i.al, %i.br
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.bw = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.bw
  br i1 %or.cond.i17.not.i, label %bb.h, label %new_delta_ex.exit

bb.h:                                             ; preds = %check_delta_day_range.exit.i
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !11
  %i.by = tail call ptr %i.bx(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !24 ; 6 uses
  %.not15.i = icmp eq ptr %i.by, null
  br i1 %.not15.i, label %new_delta_ex.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  store i64 -1, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr i8, ptr %i.by, i64 24
  store i32 %i.bs, ptr %i.ca, align 8, !tbaa !32
  %i.cb = getelementptr i8, ptr %i.by, i64 28
  store i32 0, ptr %i.cb, align 4, !tbaa !33
  %i.cc = getelementptr i8, ptr %i.by, i64 32
  store i32 0, ptr %i.cc, align 8, !tbaa !34
  br label %new_delta_ex.exit

bb.j:                                             ; preds = %PyObject_TypeCheck.exit31
  %.val = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %.not.i40 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i40, label %PyObject_TypeCheck.exit41.thread, label %PyObject_TypeCheck.exit41

PyObject_TypeCheck.exit41:                        ; preds = %bb.j
  %i.cd = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not56 = icmp eq i32 %i.cd, 0
  br i1 %.not56, label %new_delta_ex.exit, label %PyObject_TypeCheck.exit41.thread

PyObject_TypeCheck.exit41.thread:                 ; preds = %bb.j, %PyObject_TypeCheck.exit41
  %i.ce = getelementptr i8, ptr %1, i64 24
  %.val25 = load i32, ptr %i.ce, align 8, !tbaa !32
  %i.cf = tail call fastcc ptr @add_date_timedelta(ptr noundef nonnull %0, i32 %.val25, i32 noundef 1)
  br label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %bb.b, %bb.a, %bb.i, %bb.h, %check_delta_day_range.exit.i, %check_delta_day_range.exit.thread.i, %PyObject_TypeCheck.exit29, %PyObject_TypeCheck.exit41, %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit27, %PyObject_TypeCheck.exit41.thread
  %.0 = phi ptr [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %bb.a ], [ %i.cf, %PyObject_TypeCheck.exit41.thread ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit27 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit41 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit29 ], [ null, %bb.h ], [ @zero_delta, %check_delta_day_range.exit.i ], [ null, %check_delta_day_range.exit.thread.i ], [ %i.by, %bb.i ], [ @_Py_NotImplementedStruct, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @add_date_timedelta(ptr nofree noundef readonly captures(none) %0, i32 %.24.val, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !35
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %0, i64 26
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  store i32 %i.k, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.l = getelementptr i8, ptr %0, i64 27
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %.not = icmp eq i32 %1, 0
  %i.r = sub i32 0, %.24.val
  %i.s = select i1 %.not, i32 %.24.val, i32 %i.r
  %i.t = add i32 %i.s, %i.q
  store i32 %i.t, ptr %i.c, align 4, !tbaa !7
  %i.u = call fastcc i32 @normalize_date(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.b, label %new_date_subclass_ex.exit

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.a, align 4, !tbaa !7    ; 3 uses
  %i.x = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %i.aa = icmp eq ptr %.val, @PyDateTime_DateType
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call ptr @new_date_ex(i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull @PyDateTime_DateType), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp eq ptr %.val, @PyDateTime_DateTimeType
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call ptr @new_datetime_ex2(i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %.val, ptr noundef nonnull @.str.47, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.ad, %bb.e ], [ %i.ae, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @new_datetime_ex(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #0 {
bb.a:
  %i.a = tail call ptr @new_datetime_ex2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef 0, ptr noundef %8)
  ret ptr %i.a
}

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @Py_HashBuffer(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_fromtimestamp(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @date_fromtimestamp(ptr noundef %0, ptr noundef %1), !inline_history !91
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_fromordinal(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @PyLong_AsInt(ptr noundef %1) #16 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call fastcc ptr @datetime_date_fromordinal_impl(ptr noundef %0, i32 noundef %i.a)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.split4, label %bb.c

.split4:                                          ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.102) #16, !inline_history !92
  br label %bb.c

bb.c:                                             ; preds = %.split, %.split4, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %.split ], [ null, %.split4 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_fromisoformat(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.f, align 8, !tbaa !81
  %i.g = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull %1) #16
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.h = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #16, !inline_history !93 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.b, align 4, !tbaa !7
  store i32 0, ptr %i.c, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.j = load i64, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  switch i64 %i.j, label %.critedge.i [
    i64 10, label %bb.e
    i64 8, label %bb.e
    i64 7, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.k = call fastcc i32 @parse_isoformat_date(ptr noundef %i.h, i64 noundef %i.j, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d), !inline_history !93
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.o = load i32, ptr %i.d, align 4, !tbaa !7    ; 3 uses
  %i.p = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = call ptr @new_date_ex(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull @PyDateTime_DateType), !inline_history !95
  br label %datetime_date_fromisoformat_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = call ptr @new_datetime_ex2(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !96
  br label %datetime_date_fromisoformat_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.t = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o) #16, !inline_history !95
  br label %datetime_date_fromisoformat_impl.exit

.critedge.i:                                      ; preds = %bb.e, %bb.d, %bb.c
  %i.u = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.v = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.105, ptr noundef nonnull %1) #16, !inline_history !93 ; 0 uses
  br label %datetime_date_fromisoformat_impl.exit

datetime_date_fromisoformat_impl.exit:            ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.09.i = phi ptr [ null, %.critedge.i ], [ %i.q, %bb.g ], [ %i.s, %bb.i ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %datetime_date_fromisoformat_impl.exit, %bb.b
  %.0 = phi ptr [ %.09.i, %datetime_date_fromisoformat_impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_fromisocalendar(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq ptr %3, null
  %i.c = icmp eq i64 %2, 3
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_date_fromisocalendar._parser, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = call i32 @PyLong_AsInt(ptr noundef %i.g) #16 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = call ptr @PyErr_Occurred() #16
  %.not28 = icmp eq ptr %i.j, null
  br i1 %.not28, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %.thread
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = call i32 @PyLong_AsInt(ptr noundef %i.l) #16 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = call ptr @PyErr_Occurred() #16
  %.not29 = icmp eq ptr %i.o, null
  br i1 %.not29, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr i8, ptr %i.f, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = call i32 @PyLong_AsInt(ptr noundef %i.q) #16 ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.t = call ptr @PyErr_Occurred() #16
  %.not30 = icmp eq ptr %i.t, null
  br i1 %.not30, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.r, %bb.f ], [ -1, %bb.g ]
  %i.u = call fastcc ptr @datetime_date_fromisocalendar_impl(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.m, i32 noundef %.sink)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.b ], [ %i.u, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_strptime(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.80, i64 noundef %2, i64 noundef 2, i64 noundef 2) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %datetime_date_strptime_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr i8, ptr %.val15, i64 168
  %.val17 = load i64, ptr %i.d, align 8, !tbaa !81
  %i.e = and i64 %.val17, 268435456
  %.not13 = icmp eq i64 %i.e, 0
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.b) #16
  br label %datetime_date_strptime_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr i8, ptr %.val, i64 168
  %.val16 = load i64, ptr %i.i, align 8, !tbaa !81
  %i.j = and i64 %.val16, 268435456
  %.not14 = icmp eq i64 %i.j, 0
  br i1 %.not14, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.g) #16
  br label %datetime_date_strptime_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.k = tail call ptr @PyImport_Import(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73512)) #16 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %datetime_date_strptime_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef nonnull %i.k, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 73568), ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.g, ptr noundef null) #16 ; 3 uses
  %i.n = load i32, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.i, label %datetime_date_strptime_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.k, align 8, !tbaa !35
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %datetime_date_strptime_impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #16
  br label %datetime_date_strptime_impl.exit

datetime_date_strptime_impl.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.g ], [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %i.m, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_today(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %2 = alloca %struct.tm, align 8                 ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = call i64 @time(ptr noundef nonnull %i.b) #16, !inline_history !97 ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !94
  %i.f = call i32 @_PyTime_localtime(i64 noundef %i.e, ptr noundef nonnull %2) #16, !inline_history !97
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !98
  %i.i = add i32 %i.h, 1900
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !100
  %i.l = add i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !101
  %i.o = call ptr @new_date_ex(i32 noundef %i.i, i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull @PyDateTime_DateType), !inline_history !97
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %datetime_date_today_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.p = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.114) #16, !inline_history !97 ; 5 uses
  %.not.i11.i = icmp eq ptr %i.p, null
  br i1 %.not.i11.i, label %datetime_date_today_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @PyObject_CallNoArgs(ptr noundef nonnull %i.p) #16, !inline_history !97 ; 5 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i.i, label %bb.g, label %time_time.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %time_time.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #16, !inline_history !97
  br label %time_time.exit.i

time_time.exit.i:                                 ; preds = %bb.h, %bb.g, %bb.f
  %i.u = icmp eq ptr %i.q, null
  br i1 %i.u, label %datetime_date_today_impl.exit, label %bb.i

bb.i:                                             ; preds = %time_time.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %0, ptr %i.a, align 16, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.q, ptr %i.v, align 8, !tbaa !43
  %i.w = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 84992), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16, !inline_history !97 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.x = load i32, ptr %i.q, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i, label %bb.j, label %datetime_date_today_impl.exit

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.q, align 8, !tbaa !35
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %datetime_date_today_impl.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #16, !inline_history !97
  br label %datetime_date_today_impl.exit

datetime_date_today_impl.exit:                    ; preds = %bb.d, %bb.e, %time_time.exit.i, %bb.i, %bb.j, %bb.k
  %.2.i = phi ptr [ %.0.i, %bb.d ], [ %i.w, %bb.k ], [ null, %time_time.exit.i ], [ %i.w, %bb.i ], [ %i.w, %bb.j ], [ null, %bb.e ]
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define internal ptr @date_ctime(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr i8, ptr %0, i64 26
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = or disjoint i32 %i.d, %i.g               ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 27
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35    ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 28
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = zext i8 %i.j to i64                      ; 2 uses
  %i.n = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7    ; 4 uses
  %i.p = icmp ugt i8 %i.j, 2
  br i1 %i.p, label %bb.b, label %format_ctime.exit

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %i.g, 3
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %is_leap.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %.lhs.trunc.i.i = trunc nuw i32 %i.h to i16     ; 2 uses
  %i.s = urem i16 %.lhs.trunc.i.i, 100
  %.not.i.i.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %is_leap.exit.i.i.i.i, label %is_leap.exit.thread6.i.i.i.i

is_leap.exit.thread6.i.i.i.i:                     ; preds = %bb.c
  %i.t = add i32 %i.o, 1
  br label %format_ctime.exit

is_leap.exit.i.i.i.i:                             ; preds = %bb.c
  %i.u = urem i16 %.lhs.trunc.i.i, 400
  %.not.i.i.i.i = icmp eq i16 %i.u, 0
  %i.v = add i32 %i.o, 1
  br i1 %.not.i.i.i.i, label %format_ctime.exit, label %is_leap.exit.thread.i.i.i.i

is_leap.exit.thread.i.i.i.i:                      ; preds = %is_leap.exit.i.i.i.i, %bb.b
  br label %format_ctime.exit

format_ctime.exit:                                ; preds = %bb.a, %is_leap.exit.thread6.i.i.i.i, %is_leap.exit.i.i.i.i, %is_leap.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.a ], [ %i.o, %is_leap.exit.thread.i.i.i.i ], [ %i.v, %is_leap.exit.i.i.i.i ], [ %i.t, %is_leap.exit.thread6.i.i.i.i ]
  %i.w = zext i8 %i.l to i32                      ; 2 uses
  %i.x = add nsw i32 %i.h, -1                     ; 4 uses
  %i.y = mul nsw i32 %i.x, 365
  %i.z = sdiv i32 %i.x, 4
  %.neg.i.i.i.i = sdiv i32 %i.x, -100
  %i.aa = sdiv i32 %i.x, 400
  %i.ab = add nuw nsw i32 %i.w, 6
  %i.ac = add nuw nsw i32 %i.ab, %i.z
  %i.ad = add nsw i32 %i.ac, %i.y
  %i.ae = add nsw i32 %i.ad, %.neg.i.i.i.i
  %i.af = add nsw i32 %i.ae, %i.aa
  %i.ag = add i32 %i.af, %.0.i.i.i.i
  %i.ah = srem i32 %i.ag, 7
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr [8 x i8], ptr @format_ctime.DayNames, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !102
  %i.al = getelementptr [8 x i8], ptr @format_ctime.MonthNames, i64 %i.m
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !102
  %i.ao = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.134, ptr noundef %i.ak, ptr noundef %i.an, i32 noundef %i.w, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %i.h) #16
  ret ptr %i.ao
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_strftime(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = icmp eq ptr %3, null
  %i.d = icmp eq i64 %2, 1
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_date_strftime._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %datetime_date_strftime_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr i8, ptr %.val, i64 168
  %.val22 = load i64, ptr %i.j, align 8, !tbaa !81
  %i.k = and i64 %.val22, 268435456
  %.not21 = icmp eq i64 %i.k, 0
  br i1 %.not21, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.h) #16
  br label %datetime_date_strftime_impl.exit

bb.d:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !43
  %i.l = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 102776), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #16, !inline_history !103 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %datetime_date_strftime_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call fastcc ptr @wrap_strftime(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %i.l, ptr noundef %0), !inline_history !103 ; 3 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i, label %bb.f, label %datetime_date_strftime_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !35
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %datetime_date_strftime_impl.exit

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #16, !inline_history !103
  br label %datetime_date_strftime_impl.exit

datetime_date_strftime_impl.exit:                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date___format__(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.c, align 8, !tbaa !81
end_hunk_1
begin_hunk_2_@date_toordinal:bb.a
  br label %ymd_to_ord.exit

is_leap.exit.i.i:                                 ; preds = %bb.c
  %i.u = urem i16 %.lhs.trunc, 400
  %.not.i.i = icmp eq i16 %i.u, 0
  %i.v = add i32 %i.o, 1
  br i1 %.not.i.i, label %ymd_to_ord.exit, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %is_leap.exit.i.i, %bb.b
  br label %ymd_to_ord.exit

ymd_to_ord.exit:                                  ; preds = %bb.a, %is_leap.exit.thread6.i.i, %is_leap.exit.i.i, %is_leap.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.o, %bb.a ], [ %i.o, %is_leap.exit.thread.i.i ], [ %i.v, %is_leap.exit.i.i ], [ %i.t, %is_leap.exit.thread6.i.i ]
  %i.w = zext i8 %i.l to i32
  %i.x = add nsw i32 %i.h, -1                     ; 4 uses
  %i.y = mul nsw i32 %i.x, 365
  %i.z = sdiv i32 %i.x, 4
  %.neg.i.i = sdiv i32 %i.x, -100
  %i.aa = sdiv i32 %i.x, 400
  %i.ab = add nuw nsw i32 %i.z, %i.w
  %i.ac = add nsw i32 %i.ab, %i.y
  %i.ad = add nsw i32 %i.ac, %.neg.i.i
  %i.ae = add nsw i32 %i.ad, %i.aa
  %i.af = add i32 %i.ae, %.0.i.i
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call ptr @PyLong_FromLong(i64 noundef %i.ag) #16
  ret ptr %i.ah
}

; Function Attrs: nounwind uwtable
define internal ptr @date_weekday(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35
  %i.c = zext i8 %i.b to i32
  %i.d = shl nuw nsw i32 %i.c, 8
  %i.e = getelementptr i8, ptr %0, i64 26
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = or disjoint i32 %i.d, %i.g               ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 27
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35    ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 28
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = zext i8 %i.j to i64
  %i.n = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7    ; 4 uses
  %i.p = icmp ugt i8 %i.j, 2
  br i1 %i.p, label %bb.b, label %weekday.exit

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %i.g, 3
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %is_leap.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %.lhs.trunc.i = trunc nuw i32 %i.h to i16       ; 2 uses
  %i.s = urem i16 %.lhs.trunc.i, 100
  %.not.i.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i.i.i, label %is_leap.exit.i.i.i, label %is_leap.exit.thread6.i.i.i

is_leap.exit.thread6.i.i.i:                       ; preds = %bb.c
  %i.t = add i32 %i.o, 1
  br label %weekday.exit

is_leap.exit.i.i.i:                               ; preds = %bb.c
  %i.u = urem i16 %.lhs.trunc.i, 400
  %.not.i.i.i = icmp eq i16 %i.u, 0
  %i.v = add i32 %i.o, 1
  br i1 %.not.i.i.i, label %weekday.exit, label %is_leap.exit.thread.i.i.i

is_leap.exit.thread.i.i.i:                        ; preds = %is_leap.exit.i.i.i, %bb.b
  br label %weekday.exit

weekday.exit:                                     ; preds = %bb.a, %is_leap.exit.thread6.i.i.i, %is_leap.exit.i.i.i, %is_leap.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.o, %bb.a ], [ %i.o, %is_leap.exit.thread.i.i.i ], [ %i.v, %is_leap.exit.i.i.i ], [ %i.t, %is_leap.exit.thread6.i.i.i ]
  %i.w = zext i8 %i.l to i32
  %i.x = add nsw i32 %i.h, -1                     ; 4 uses
  %i.y = mul nsw i32 %i.x, 365
  %i.z = sdiv i32 %i.x, 4
  %.neg.i.i.i = sdiv i32 %i.x, -100
  %i.aa = sdiv i32 %i.x, 400
  %i.ab = add nuw nsw i32 %i.w, 6
  %i.ac = add nuw nsw i32 %i.ab, %i.z
  %i.ad = add nsw i32 %i.ac, %i.y
  %i.ae = add nsw i32 %i.ad, %.neg.i.i.i
  %i.af = add nsw i32 %i.ae, %i.aa
  %i.ag = add i32 %i.af, %.0.i.i.i
  %i.ah = srem i32 %i.ag, 7
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call ptr @PyLong_FromLong(i64 noundef %i.ai) #16
  ret ptr %i.aj
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_date_replace(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2                         ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 25
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr i8, ptr %0, i64 26
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 27
  %i.n = load i8, ptr %i.m, align 1, !tbaa !35
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 28
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %i.r = zext i8 %i.q to i32                      ; 3 uses
  %i.s = icmp ult i64 %2, 4
  %i.t = icmp ne ptr %1, null
  %i.u = and i1 %i.t, %i.s
  %or.cond5 = and i1 %i.u, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_date_replace._parser, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not50 = icmp eq ptr %i.v, null
  br i1 %.not50, label %datetime_date_replace_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.w = phi ptr [ %i.v, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %.not51 = icmp eq i64 %i.d, 0
  br i1 %.not51, label %bb.o, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %.not52 = icmp eq ptr %i.x, null
  br i1 %.not52, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call i32 @PyLong_AsInt(ptr noundef nonnull %i.x) #16 ; 3 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = call ptr @PyErr_Occurred() #16
  %.not53 = icmp eq ptr %i.aa, null
  br i1 %.not53, label %bb.h, label %datetime_date_replace_impl.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = add i64 %i.d, -1                        ; 2 uses
  %.not54 = icmp eq i64 %i.ab, 0
  br i1 %.not54, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.039 = phi i64 [ %i.ab, %bb.h ], [ %i.d, %bb.e ]
  %.037 = phi i32 [ %i.y, %bb.h ], [ %i.l, %bb.e ] ; 3 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, null
  br i1 %.not55, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ad) #16 ; 3 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = call ptr @PyErr_Occurred() #16
  %.not56 = icmp eq ptr %i.ag, null
  br i1 %.not56, label %bb.l, label %datetime_date_replace_impl.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = icmp ugt i64 %.039, 1
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.i
  %.036 = phi i32 [ %i.ae, %bb.l ], [ %i.o, %bb.i ] ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ak = call i32 @PyLong_AsInt(ptr noundef %i.aj) #16 ; 2 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = call ptr @PyErr_Occurred() #16
  %.not57 = icmp eq ptr %i.am, null
  br i1 %.not57, label %bb.o, label %datetime_date_replace_impl.exit

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.h, %.thread
  %.138 = phi i32 [ %.037, %bb.n ], [ %.037, %bb.m ], [ %.037, %bb.l ], [ %i.y, %bb.h ], [ %i.l, %.thread ] ; 3 uses
  %.1 = phi i32 [ %.036, %bb.n ], [ %.036, %bb.m ], [ %i.ae, %bb.l ], [ %i.o, %bb.h ], [ %i.o, %.thread ] ; 3 uses
  %.0 = phi i32 [ -1, %bb.n ], [ %i.ak, %bb.m ], [ %i.r, %bb.l ], [ %i.r, %bb.h ], [ %i.r, %.thread ] ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 8
  %.val58 = load ptr, ptr %i.an, align 8, !tbaa !44 ; 3 uses
  %i.ao = icmp eq ptr %.val58, @PyDateTime_DateType
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = call ptr @new_date_ex(i32 noundef %.138, i32 noundef %.1, i32 noundef %.0, ptr noundef nonnull @PyDateTime_DateType), !inline_history !105
  br label %datetime_date_replace_impl.exit

bb.q:                                             ; preds = %bb.o
  %i.aq = icmp eq ptr %.val58, @PyDateTime_DateTimeType
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ar = call ptr @new_datetime_ex2(i32 noundef %.138, i32 noundef %.1, i32 noundef %.0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !106
  br label %datetime_date_replace_impl.exit

bb.s:                                             ; preds = %bb.q
  %i.as = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %.val58, ptr noundef nonnull @.str.47, i32 noundef %.138, i32 noundef %.1, i32 noundef %.0) #16, !inline_history !105
  br label %datetime_date_replace_impl.exit

datetime_date_replace_impl.exit:                  ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.k, %bb.g, %bb.d
  %.040 = phi ptr [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.d ], [ %i.ap, %bb.p ], [ %i.ar, %bb.r ], [ %i.as, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.040
}

; Function Attrs: nounwind uwtable
define internal ptr @date_reduce(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr i8, ptr %0, i64 25
  %i.c = tail call ptr @PyBytes_FromStringAndSize(ptr noundef %i.b, i64 noundef 4) #16
  %i.d = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.158, ptr noundef %i.c) #16
  %i.e = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.157, ptr noundef %.val, ptr noundef %i.d) #16
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @date_fromtimestamp(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @_PyTime_ObjectToTime_t(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %new_date_subclass_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !94
  %i.e = call i32 @_PyTime_localtime(i64 noundef %i.d, ptr noundef nonnull %2) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %new_date_subclass_ex.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !98
  %i.h = add i32 %i.g, 1900                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !100
  %i.k = add i32 %i.j, 1                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101  ; 3 uses
  %i.n = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @new_date_ex(i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull @PyDateTime_DateType), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = call ptr @new_datetime_ex2(i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.m, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.g:                                             ; preds = %bb.e
  %i.r = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.m) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.o, %bb.d ], [ %i.q, %bb.f ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %.0
}

declare i32 @_PyTime_ObjectToTime_t(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyTime_localtime(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @datetime_date_fromordinal_impl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.102) #16
  br label %new_date_subclass_ex.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, -1                       ; 2 uses
  %i.d = udiv i32 %i.c, 146097
  %i.e = urem i32 %i.c, 146097                    ; 4 uses
  %i.f = mul nuw nsw i32 %i.d, 400
  %i.g = udiv i32 %i.e, 36524
  %i.h = urem i32 %i.e, 36524                     ; 2 uses
  %.lhs.trunc = trunc nuw i32 %i.h to i16         ; 2 uses
  %i.i = udiv i16 %.lhs.trunc, 1461
  %i.j = urem i16 %.lhs.trunc, 1461               ; 4 uses
  %i.k = udiv i16 %i.j, 365
  %.sext.i = zext nneg i16 %i.k to i32
  %i.l = urem i16 %i.j, 365                       ; 2 uses
  %.sext46.i = zext nneg i16 %i.l to i32          ; 3 uses
  %i.m = mul nuw nsw i32 %i.g, 100
  %i.n = shl nuw nsw i16 %i.i, 2
  %i.o = zext nneg i16 %i.n to i32
  %i.p = or disjoint i32 %i.f, 1
  %i.q = add nuw nsw i32 %i.p, %i.m
  %i.r = add nuw nsw i32 %i.q, %i.o
  %i.s = add nuw nsw i32 %i.r, %.sext.i           ; 5 uses
  %i.t = icmp eq i16 %i.j, 1460
  %i.u = icmp eq i32 %i.e, 146096
  %or.cond.i = or i1 %i.u, %i.t
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i32 %i.s, -1
  br label %ord_to_ymd.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp samesign ugt i16 %i.j, 1094
  %i.x = icmp samesign ult i32 %i.h, 35064
  %i.y = icmp samesign ugt i32 %i.e, 109571
  %i.z = select i1 %i.x, i1 true, i1 %i.y
  %i.aa = add nuw nsw i32 %.sext46.i, 50
  %i.ab = lshr i32 %i.aa, 5                       ; 3 uses
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = icmp samesign ugt i16 %i.l, 45
  %i.ag = select i1 %i.af, i1 %i.w, i1 false
  %i.ah = select i1 %i.ag, i1 %i.z, i1 false
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add i32 %i.ae, %i.ai                    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, %.sext46.i
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i32 %i.ab, -1                   ; 3 uses
  %i.am = icmp eq i32 %i.al, 2
  %i.an = and i32 %i.s, 3
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond.i.i = and i1 %i.am, %i.ao
  br i1 %or.cond.i.i, label %bb.g, label %is_leap.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.ap = urem i32 %i.s, 100
  %.not.i.i.i = icmp ne i32 %i.ap, 0
  %i.aq = urem i32 %i.s, 400
  %.not.i.i = icmp eq i32 %i.aq, 0
  %or.cond8.i.i = or i1 %.not.i.i.i, %.not.i.i
  br i1 %or.cond8.i.i, label %days_in_month.exit.i, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %bb.g, %bb.f
  %i.ar = zext nneg i32 %i.al to i64
  %i.as = getelementptr [4 x i8], ptr @_days_in_month, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  br label %days_in_month.exit.i

days_in_month.exit.i:                             ; preds = %is_leap.exit.thread.i.i, %bb.g
  %.0.i.i = phi i32 [ %i.at, %is_leap.exit.thread.i.i ], [ 29, %bb.g ]
  %i.au = sub i32 %i.aj, %.0.i.i
  br label %bb.h

bb.h:                                             ; preds = %days_in_month.exit.i, %bb.e
  %.08 = phi i32 [ %i.al, %days_in_month.exit.i ], [ %i.ab, %bb.e ]
  %.0.i = phi i32 [ %i.au, %days_in_month.exit.i ], [ %i.aj, %bb.e ]
  %i.av = add nuw nsw i32 %.sext46.i, 1
  %i.aw = sub i32 %i.av, %.0.i
  br label %ord_to_ymd.exit

ord_to_ymd.exit:                                  ; preds = %bb.d, %bb.h
  %.09 = phi i32 [ %i.v, %bb.d ], [ %i.s, %bb.h ] ; 3 uses
  %.1 = phi i32 [ 12, %bb.d ], [ %.08, %bb.h ]    ; 3 uses
  %storemerge.i = phi i32 [ 31, %bb.d ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ax = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %ord_to_ymd.exit
  %i.ay = tail call ptr @new_date_ex(i32 noundef %.09, i32 noundef %.1, i32 noundef %storemerge.i, ptr noundef nonnull @PyDateTime_DateType), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.j:                                             ; preds = %ord_to_ymd.exit
  %i.az = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = tail call ptr @new_datetime_ex2(i32 noundef %.09, i32 noundef %.1, i32 noundef %storemerge.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %.09, i32 noundef %.1, i32 noundef %storemerge.i) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.l, %bb.k, %bb.i, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.ay, %bb.i ], [ %i.ba, %bb.k ], [ %i.bb, %bb.l ]
  ret ptr %.0
}

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -7, 1) i32 @parse_isoformat_date(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #5 {
.lr.ph.i:
  %i.a = load i8, ptr %0, align 1, !tbaa !35
  %i.b = sext i8 %i.a to i32
  %i.c = add nsw i32 %i.b, -48                    ; 2 uses
  %i.d = icmp ult i32 %i.c, 10
  br i1 %i.d, label %.lr.ph.i.1, label %parse_digits.exit.thread

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.e = getelementptr i8, ptr %0, i64 1
  %i.f = load i32, ptr %2, align 4, !tbaa !7
  %i.g = mul i32 %i.f, 10
  %i.h = add i32 %i.g, %i.c                       ; 2 uses
  store i32 %i.h, ptr %2, align 4, !tbaa !7
  %i.i = load i8, ptr %i.e, align 1, !tbaa !35
  %i.j = sext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ult i32 %i.k, 10
  br i1 %i.l, label %.lr.ph.i.2, label %parse_digits.exit.thread

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.m = getelementptr i8, ptr %0, i64 2
  %i.n = mul i32 %i.h, 10
  %i.o = add i32 %i.n, %i.k                       ; 2 uses
  store i32 %i.o, ptr %2, align 4, !tbaa !7
  %i.p = load i8, ptr %i.m, align 1, !tbaa !35
  %i.q = sext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %.lr.ph.i.3, label %parse_digits.exit.thread

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.t = getelementptr i8, ptr %0, i64 3
  %i.u = mul i32 %i.o, 10
  %i.v = add i32 %i.u, %i.r                       ; 2 uses
  store i32 %i.v, ptr %2, align 4, !tbaa !7
  %i.w = load i8, ptr %i.t, align 1, !tbaa !35
  %i.x = sext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %parse_digits.exit, label %parse_digits.exit.thread

parse_digits.exit:                                ; preds = %.lr.ph.i.3
  %i.aa = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.ab = mul i32 %i.v, 10
  %i.ac = add i32 %i.ab, %i.y                     ; 2 uses
  store i32 %i.ac, ptr %2, align 4, !tbaa !7
  %i.ad = icmp eq ptr %i.aa, null
  br i1 %i.ad, label %parse_digits.exit.thread, label %bb.a

bb.a:                                             ; preds = %parse_digits.exit
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.af = icmp eq i8 %i.ae, 45                    ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 5
  %spec.select = select i1 %i.af, ptr %i.ag, ptr %i.aa ; 6 uses
  %i.ah = load i8, ptr %spec.select, align 1, !tbaa !35 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 87
  br i1 %i.ai, label %.lr.ph.i41, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %bb.a
  %i.aj = sext i8 %i.ah to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
  %i.al = icmp ult i32 %i.ak, 10
  br i1 %i.al, label %.lr.ph.i51.1, label %parse_digits.exit.thread

.lr.ph.i41:                                       ; preds = %bb.a
  %i.am = getelementptr i8, ptr %spec.select, i64 1
  %scevgep = getelementptr i8, ptr %spec.select, i64 3 ; 4 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 10
  br i1 %i.aq, label %.lr.ph.i41.1, label %parse_digits.exit.thread

.lr.ph.i41.1:                                     ; preds = %.lr.ph.i41
  %i.ar = getelementptr i8, ptr %spec.select, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = sext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %parse_digits.exit45, label %parse_digits.exit.thread

parse_digits.exit45:                              ; preds = %.lr.ph.i41.1
  %i.aw = mul nuw nsw i32 %i.ap, 10
  %i.ax = add nuw nsw i32 %i.au, %i.aw
  %i.ay = icmp eq ptr %scevgep, null
  br i1 %i.ay, label %parse_digits.exit.thread, label %bb.b

bb.b:                                             ; preds = %parse_digits.exit45
  %i.az = ptrtoint ptr %scevgep to i64
  %i.ba = ptrtoint ptr %0 to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.bb, %1
  br i1 %i.bc, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.af, label %bb.d, label %.lr.ph.i46

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr i8, ptr %0, i64 9
  %i.be = load i8, ptr %scevgep, align 1, !tbaa !35
  %.not39 = icmp eq i8 %i.be, 45
  br i1 %.not39, label %.lr.ph.i46, label %parse_digits.exit.thread

.lr.ph.i46:                                       ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.bd, %bb.d ], [ %scevgep, %bb.c ] ; 2 uses
  %i.bf = load i8, ptr %.1, align 1, !tbaa !35
  %i.bg = sext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 9
  %scevgep93 = getelementptr i8, ptr %.1, i64 1
  %i.bj = icmp eq ptr %scevgep93, null
  %or.cond = or i1 %i.bi, %i.bj
  br i1 %or.cond, label %parse_digits.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i46, %bb.b
  %.0 = phi i32 [ %i.bh, %.lr.ph.i46 ], [ 1, %bb.b ]
  %i.bk = tail call fastcc i32 @iso_to_ymd(i32 noundef %i.ac, i32 noundef %i.ax, i32 noundef %.0, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not40 = icmp eq i32 %i.bk, 0
  %i.bl = add nsw i32 %i.bk, -3
  %.032 = select i1 %.not40, i32 0, i32 %i.bl
  br label %parse_digits.exit.thread

.lr.ph.i51.1:                                     ; preds = %.lr.ph.i51.preheader
  %i.bm = getelementptr i8, ptr %spec.select, i64 1
  %i.bn = load i32, ptr %3, align 4, !tbaa !7
  %i.bo = mul i32 %i.bn, 10
  %i.bp = add i32 %i.bo, %i.ak                    ; 2 uses
  store i32 %i.bp, ptr %3, align 4, !tbaa !7
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !35
  %i.br = sext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %parse_digits.exit55, label %parse_digits.exit.thread

parse_digits.exit55:                              ; preds = %.lr.ph.i51.1
  %i.bu = getelementptr i8, ptr %spec.select, i64 2 ; 3 uses
  %i.bv = mul i32 %i.bp, 10
  %i.bw = add i32 %i.bv, %i.bs
  store i32 %i.bw, ptr %3, align 4, !tbaa !7
  %i.bx = icmp eq ptr %i.bu, null
  br i1 %i.bx, label %parse_digits.exit.thread, label %bb.f

bb.f:                                             ; preds = %parse_digits.exit55
  br i1 %i.af, label %bb.g, label %.lr.ph.i56

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr i8, ptr %0, i64 8
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !35
  %.not = icmp eq i8 %i.bz, 45
  br i1 %.not, label %.lr.ph.i56, label %parse_digits.exit.thread

.lr.ph.i56:                                       ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.by, %bb.g ], [ %i.bu, %bb.f ] ; 3 uses
  %i.ca = load i8, ptr %.2, align 1, !tbaa !35
  %i.cb = sext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %.lr.ph.i56.1, label %parse_digits.exit.thread

.lr.ph.i56.1:                                     ; preds = %.lr.ph.i56
  %i.ce = getelementptr i8, ptr %.2, i64 1
  %i.cf = load i32, ptr %4, align 4, !tbaa !7
  %i.cg = mul i32 %i.cf, 10
  %i.ch = add i32 %i.cg, %i.cc                    ; 2 uses
  store i32 %i.ch, ptr %4, align 4, !tbaa !7
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !35
  %i.cj = sext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -48                  ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 10
  br i1 %i.cl, label %bb.h, label %parse_digits.exit.thread

bb.h:                                             ; preds = %.lr.ph.i56.1
  %i.cm = getelementptr i8, ptr %.2, i64 2
  %i.cn = mul i32 %i.ch, 10
  %i.co = add i32 %i.cn, %i.ck
  store i32 %i.co, ptr %4, align 4, !tbaa !7
  %i.cp = icmp eq ptr %i.cm, null
  %i.cq = sext i1 %i.cp to i32
  br label %parse_digits.exit.thread

parse_digits.exit.thread:                         ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i51.preheader, %.lr.ph.i51.1, %.lr.ph.i41, %.lr.ph.i41.1, %.lr.ph.i46, %.lr.ph.i56, %.lr.ph.i56.1, %bb.h, %bb.e, %parse_digits.exit45, %bb.d, %parse_digits.exit55, %bb.g, %parse_digits.exit
  %.3 = phi i32 [ -1, %parse_digits.exit ], [ -3, %.lr.ph.i41 ], [ -2, %bb.g ], [ -1, %parse_digits.exit55 ], [ -1, %.lr.ph.i51.preheader ], [ %.032, %bb.e ], [ -3, %parse_digits.exit45 ], [ -2, %bb.d ], [ -1, %.lr.ph.i ], [ -1, %.lr.ph.i56.1 ], [ -4, %.lr.ph.i46 ], [ -1, %.lr.ph.i56 ], [ %i.cq, %bb.h ], [ -3, %.lr.ph.i41.1 ], [ -1, %.lr.ph.i51.1 ], [ -1, %.lr.ph.i.3 ], [ -1, %.lr.ph.i.2 ], [ -1, %.lr.ph.i.1 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -4, 1) i32 @iso_to_ymd(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, -10000
  %or.cond = icmp ult i32 %i.a, -9999
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -53
  %or.cond3 = icmp ult i32 %i.b, -52
  br i1 %or.cond3, label %bb.c, label %is_leap.exit.thread34

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 53
  br i1 %i.c, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %0, -1                       ; 3 uses
  %i.e = mul nuw nsw i32 %i.d, 365
  %i.f = lshr i32 %i.d, 2
  %.neg.i.i.i38.lhs.trunc = trunc nuw nsw i32 %i.d to i16 ; 2 uses
  %.neg.i.i.i3839 = udiv i16 %.neg.i.i.i38.lhs.trunc, 100
  %.neg.i.i.i38.zext = zext nneg i16 %.neg.i.i.i3839 to i32
  %i.g = udiv i16 %.neg.i.i.i38.lhs.trunc, 400
  %.zext41 = zext nneg i16 %i.g to i32
  %i.h = add nuw nsw i32 %i.e, 7
  %i.i = add nuw nsw i32 %i.h, %i.f
  %i.j = sub nsw i32 %i.i, %.neg.i.i.i38.zext
  %i.k = add nsw i32 %i.j, %.zext41
  %i.l = srem i32 %i.k, 7
  switch i32 %i.l, label %.thread [
    i32 3, label %is_leap.exit.thread34
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %0, 3
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc49 = trunc nuw nsw i32 %0 to i16     ; 2 uses
  %i.o = urem i16 %.lhs.trunc49, 100
  %.not.i = icmp ne i16 %i.o, 0
  %i.p = urem i16 %.lhs.trunc49, 400
  %.not = icmp eq i16 %i.p, 0
  %or.cond53 = or i1 %.not.i, %.not
  br i1 %or.cond53, label %is_leap.exit.thread34, label %.thread

is_leap.exit.thread34:                            ; preds = %bb.d, %bb.f, %bb.b
  %i.q = add i32 %2, -8
  %or.cond5 = icmp ult i32 %i.q, -7
  br i1 %or.cond5, label %.thread, label %bb.g

bb.g:                                             ; preds = %is_leap.exit.thread34
  %i.r = add nsw i32 %0, -1                       ; 3 uses
  %i.s = mul nuw nsw i32 %i.r, 365
  %i.t = lshr i32 %i.r, 2
  %i.u = add nuw nsw i32 %i.t, %i.s
  %.neg.i.i.i3245.lhs.trunc = trunc nuw nsw i32 %i.r to i16 ; 2 uses
  %.neg.i.i.i324546 = udiv i16 %.neg.i.i.i3245.lhs.trunc, 100
  %.neg.i.i.i3245.zext = zext nneg i16 %.neg.i.i.i324546 to i32
  %i.v = sub nsw i32 %i.u, %.neg.i.i.i3245.zext
  %i.w = udiv i16 %.neg.i.i.i3245.lhs.trunc, 400
  %.zext48 = zext nneg i16 %i.w to i32
  %i.x = add nsw i32 %i.v, %.zext48               ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  %i.z = add nsw i32 %i.x, 7
  %i.aa = srem i32 %i.z, 7                        ; 2 uses
  %i.ab = sub nsw i32 %i.y, %i.aa                 ; 2 uses
  %i.ac = icmp sgt i32 %i.aa, 3
  %i.ad = add nsw i32 %i.ab, 7
  %spec.select.i = select i1 %i.ac, i32 %i.ad, i32 %i.ab
  %i.ae = mul nuw nsw i32 %1, 7
  %i.af = add nsw i32 %i.ae, -8
  %i.ag = add nsw i32 %i.af, %2
  %i.ah = add nsw i32 %i.ag, %spec.select.i
  tail call fastcc void @ord_to_ymd(i32 noundef %i.ah, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %is_leap.exit.thread34, %bb.a, %bb.g
  %.1 = phi i32 [ -3, %is_leap.exit.thread34 ], [ -4, %bb.a ], [ 0, %bb.g ], [ -2, %bb.c ], [ -2, %bb.f ], [ -2, %bb.d ], [ -2, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @datetime_date_fromisocalendar_impl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !7
  store i32 %3, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = call fastcc i32 @iso_to_ymd(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  switch i32 %i.d, label %bb.e [
    i32 -4, label %bb.b
    i32 -2, label %bb.c
    i32 -3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.f = load i32, ptr %i.a, align 4, !tbaa !7
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef 9999, i32 noundef %i.f) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.110, i32 noundef %2) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !43
  %i.k = load i32, ptr %i.b, align 4, !tbaa !7
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.111, i32 noundef %i.k) #16 ; 0 uses
  br label %new_date_subclass_ex.exit

bb.e:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.a, align 4, !tbaa !7    ; 3 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.p = icmp eq ptr %0, @PyDateTime_DateType
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @new_date_ex(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull @PyDateTime_DateType), !inline_history !89
  br label %new_date_subclass_ex.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call ptr @new_datetime_ex2(i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !90
  br label %new_date_subclass_ex.exit

bb.i:                                             ; preds = %bb.g
  %i.t = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %i.m, i32 noundef %i.n, i32 noundef %i.o) #16, !inline_history !89
  br label %new_date_subclass_ex.exit

new_date_subclass_ex.exit:                        ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.q, %bb.f ], [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.0
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyImport_Import(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #9

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @wrap_strftime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %4 = alloca %struct.tm, align 8                 ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = alloca [28 x i8], align 16               ; 5 uses
  %i.e = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.84) #16 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_XDECREF.exit226, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyUnicodeWriter_Create(i64 noundef 0) #16 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread239, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !60  ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = getelementptr i8, ptr %1, i64 56         ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.bw, %bb.c
  %.0143.ph.ph = phi ptr [ %.2145, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0137.ph.ph = phi ptr [ %.2139, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0131.ph.ph = phi ptr [ %.2133, %bb.bw ], [ null, %bb.c ] ; 24 uses
  %.0125.ph.ph = phi ptr [ %.2127, %bb.bw ], [ null, %bb.c ] ; 32 uses
  %.0112.ph.ph = phi i64 [ %.1116, %bb.bw ], [ 0, %bb.c ] ; 2 uses
  br label %.outer

.outer.loopexit:                                  ; preds = %normalize_century.exit, %bb.bg, %bb.bm
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %.outer.loopexit
  %.0115.ph = phi i64 [ %i.aj, %.outer.loopexit ], [ %.0112.ph.ph, %.outer.outer ]
  %.0112.ph = phi i64 [ %.0112, %.outer.loopexit ], [ %.0112.ph.ph, %.outer.outer ]
  br label %bb.d

bb.d:                                             ; preds = %.outer, %.split
  %.0115 = phi i64 [ %i.aj, %.split ], [ %.0115.ph, %.outer ] ; 2 uses
  %.0112 = phi i64 [ %i.aj, %.split ], [ %.0112.ph, %.outer ] ; 5 uses
  %.not = icmp eq i64 %.0115, %.val
  br i1 %.not, label %bb.bx, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i64 @PyUnicode_FindChar(ptr noundef nonnull %1, i32 noundef 37, i64 noundef %.0115, i64 noundef %.val, i32 noundef 1) #16 ; 6 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.bx, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw i64 %i.q, 1                      ; 4 uses
  %i.t = icmp eq i64 %i.s, %.val
  br i1 %i.t, label %bb.bx, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.j, align 8              ; 8 uses
  %i.v = lshr i32 %i.u, 2
  %i.w = and i32 %i.v, 7                          ; 2 uses
  %i.x = and i32 %i.u, 32
  %.not.i19.i = icmp eq i32 %i.x, 0               ; 6 uses
  switch i32 %i.w, label %bb.n [
    i32 1, label %bb.h
    i32 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = and i32 %i.u, 64
  %.not.i.i.i = icmp eq i32 %i.y, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %.val4.i.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  %i.z = getelementptr i8, ptr %.0.i.i, i64 %i.s
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i32
  br label %PyUnicode_READ_CHAR.exit

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = and i32 %i.u, 64
  %.not.i.i12.i = icmp eq i32 %i.ac, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.m:                                             ; preds = %bb.k
  %.val4.i16.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.m, %bb.l
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.l ], [ %.val4.i16.i, %bb.m ]
  %i.ad = getelementptr [2 x i8], ptr %.0.i15.i, i64 %i.s
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !88
  %i.af = zext i16 %i.ae to i32
  br label %PyUnicode_READ_CHAR.exit

bb.n:                                             ; preds = %bb.g
  br i1 %.not.i19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = and i32 %i.u, 64
  %.not.i.i20.i = icmp eq i32 %i.ag, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.p:                                             ; preds = %bb.n
  %.val4.i24.i = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.p, %bb.o
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.o ], [ %.val4.i24.i, %bb.p ]
  %i.ah = getelementptr [4 x i8], ptr %.0.i23.i, i64 %i.s
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ab, %_PyUnicode_DATA.exit.i ], [ %i.af, %_PyUnicode_DATA.exit17.i ], [ %i.ai, %_PyUnicode_DATA.exit25.i ] ; 6 uses
  %i.aj = add nuw i64 %i.q, 2                     ; 17 uses
  %i.ak = add i32 %.0.i, -58                      ; 2 uses
  %i.al = call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 30)
  switch i32 %i.al, label %bb.bc [
    i32 16, label %bb.q
    i32 0, label %bb.s
    i32 8, label %bb.ag
    i32 11, label %bb.az
  ]

bb.q:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.am = icmp eq ptr %.0143.ph.ph, null
  br i1 %i.am, label %bb.r, label %make_Zreplacement.exit.thread229

bb.r:                                             ; preds = %bb.q
  %i.an = call fastcc ptr @make_somezreplacement(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %3) ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread239, label %make_Zreplacement.exit.thread229

bb.s:                                             ; preds = %PyUnicode_READ_CHAR.exit
  %i.ap = icmp slt i64 %i.aj, %.val
  br i1 %i.ap, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  switch i32 %i.w, label %bb.aa [
    i32 1, label %bb.u
    i32 2, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = and i32 %i.u, 64
  %.not.i.i.i192 = icmp eq i32 %i.aq, 0
  %.0.v.i.i.i193 = select i1 %.not.i.i.i192, i64 56, i64 40
  %.0.i.i.i194 = getelementptr i8, ptr %1, i64 %.0.v.i.i.i193
  br label %_PyUnicode_DATA.exit.i195

bb.w:                                             ; preds = %bb.u
  %.val4.i.i197 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i195

_PyUnicode_DATA.exit.i195:                        ; preds = %bb.w, %bb.v
  %.0.i.i196 = phi ptr [ %.0.i.i.i194, %bb.v ], [ %.val4.i.i197, %bb.w ]
  %i.ar = getelementptr i8, ptr %.0.i.i196, i64 %i.aj
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = zext i8 %i.as to i32
  br label %PyUnicode_READ_CHAR.exit204

bb.x:                                             ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = and i32 %i.u, 64
  %.not.i.i12.i185 = icmp eq i32 %i.au, 0
  %.0.v.i.i13.i186 = select i1 %.not.i.i12.i185, i64 56, i64 40
  %.0.i.i14.i187 = getelementptr i8, ptr %1, i64 %.0.v.i.i13.i186
  br label %_PyUnicode_DATA.exit17.i188

bb.z:                                             ; preds = %bb.x
  %.val4.i16.i191 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i188

_PyUnicode_DATA.exit17.i188:                      ; preds = %bb.z, %bb.y
  %.0.i15.i189 = phi ptr [ %.0.i.i14.i187, %bb.y ], [ %.val4.i16.i191, %bb.z ]
  %i.av = getelementptr [2 x i8], ptr %.0.i15.i189, i64 %i.aj
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !88
  %i.ax = zext i16 %i.aw to i32
  br label %PyUnicode_READ_CHAR.exit204

bb.aa:                                            ; preds = %bb.t
  br i1 %.not.i19.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ay = and i32 %i.u, 64
  %.not.i.i20.i198 = icmp eq i32 %i.ay, 0
  %.0.v.i.i21.i199 = select i1 %.not.i.i20.i198, i64 56, i64 40
  %.0.i.i22.i200 = getelementptr i8, ptr %1, i64 %.0.v.i.i21.i199
  br label %_PyUnicode_DATA.exit25.i201

bb.ac:                                            ; preds = %bb.aa
  %.val4.i24.i203 = load ptr, ptr %i.k, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit25.i201

_PyUnicode_DATA.exit25.i201:                      ; preds = %bb.ac, %bb.ab
  %.0.i23.i202 = phi ptr [ %.0.i.i22.i200, %bb.ab ], [ %.val4.i24.i203, %bb.ac ]
  %i.az = getelementptr [4 x i8], ptr %.0.i23.i202, i64 %i.aj
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit204

PyUnicode_READ_CHAR.exit204:                      ; preds = %_PyUnicode_DATA.exit.i195, %_PyUnicode_DATA.exit17.i188, %_PyUnicode_DATA.exit25.i201
  %.0.i190 = phi i32 [ %i.at, %_PyUnicode_DATA.exit.i195 ], [ %i.ax, %_PyUnicode_DATA.exit17.i188 ], [ %i.ba, %_PyUnicode_DATA.exit25.i201 ]
  %i.bb = icmp eq i32 %.0.i190, 122
  br i1 %i.bb, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %PyUnicode_READ_CHAR.exit204
  %i.bc = add nuw i64 %i.q, 3                     ; 2 uses
  %i.bd = icmp eq ptr %.0137.ph.ph, null
  br i1 %i.bd, label %bb.ae, label %make_Zreplacement.exit.thread229

bb.ae:                                            ; preds = %bb.ad
  %i.be = call fastcc ptr @make_somezreplacement(ptr noundef %0, ptr noundef nonnull @.str.137, ptr noundef %3) ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.thread239, label %make_Zreplacement.exit.thread229

bb.af:                                            ; preds = %PyUnicode_READ_CHAR.exit204, %bb.s
  switch i32 %.0.i, label %bb.bc [
    i32 90, label %bb.ag
    i32 102, label %bb.az
  ]

bb.ag:                                            ; preds = %PyUnicode_READ_CHAR.exit, %bb.af
  %i.bg = icmp eq ptr %.0131.ph.ph, null
  br i1 %i.bg, label %bb.ah, label %make_Zreplacement.exit.thread229

bb.ah:                                            ; preds = %bb.ag
  %.val10.i.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %.val10.i.i, @PyDateTime_DateTimeType
  br i1 %.not.i.i.i205, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.ah
  %i.bh = call i32 @PyType_IsSubtype(ptr noundef %.val10.i.i, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !107
  %.not15.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not15.i.i, label %bb.ai, label %PyObject_TypeCheck.exit.thread.i.i

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.ah
  %i.bi = load i8, ptr %i.m, align 8, !tbaa !57
  %.not7.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not7.i.i, label %bb.ai, label %.sink.split.i.i

bb.ai:                                            ; preds = %PyObject_TypeCheck.exit.thread.i.i, %PyObject_TypeCheck.exit.i.i
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %.val.i.i, @PyDateTime_TimeType
  br i1 %.not.i11.i.i, label %PyObject_TypeCheck.exit12.thread.i.i, label %PyObject_TypeCheck.exit12.i.i

PyObject_TypeCheck.exit12.i.i:                    ; preds = %bb.ai
  %i.bj = call i32 @PyType_IsSubtype(ptr noundef %.val.i.i, ptr noundef nonnull @PyDateTime_TimeType) #16, !inline_history !107
  %.not.i35.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i35.i, label %get_tzinfo_member.exit.i, label %PyObject_TypeCheck.exit12.thread.i.i

PyObject_TypeCheck.exit12.thread.i.i:             ; preds = %PyObject_TypeCheck.exit12.i.i, %bb.ai
  %i.bk = load i8, ptr %i.m, align 8, !tbaa !57
  %.not9.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not9.i.i, label %get_tzinfo_member.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %PyObject_TypeCheck.exit12.thread.i.i, %PyObject_TypeCheck.exit.thread.i.i
  %.sink16.i.i = phi i64 [ 40, %PyObject_TypeCheck.exit.thread.i.i ], [ 32, %PyObject_TypeCheck.exit12.thread.i.i ]
  %i.bl = getelementptr i8, ptr %0, i64 %.sink16.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43
  br label %get_tzinfo_member.exit.i

get_tzinfo_member.exit.i:                         ; preds = %.sink.split.i.i, %PyObject_TypeCheck.exit12.thread.i.i, %PyObject_TypeCheck.exit12.i.i
  %.0.i.i206 = phi ptr [ null, %PyObject_TypeCheck.exit12.thread.i.i ], [ null, %PyObject_TypeCheck.exit12.i.i ], [ %i.bm, %.sink.split.i.i ] ; 3 uses
  %i.bn = call ptr @Py_GetConstant(i32 noundef 7) #16, !inline_history !108 ; 16 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread239, label %bb.aj

bb.aj:                                            ; preds = %get_tzinfo_member.exit.i
  %i.bp = icmp eq ptr %.0.i.i206, @_Py_NoneStruct
  %i.bq = icmp eq ptr %.0.i.i206, null
  %or.cond.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i, label %make_Zreplacement.exit.thread229, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr %.0.i.i206, ptr %i.c, align 16, !tbaa !43
  store ptr %3, ptr %i.n, align 8, !tbaa !43
  %i.br = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 103552), ptr noundef nonnull %i.c, i64 noundef -9223372036854775806, ptr noundef null) #16, !inline_history !108 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.bs = icmp eq ptr %i.br, null                 ; 2 uses
  %i.bt = icmp eq ptr %i.br, @_Py_NoneStruct      ; 2 uses
  %or.cond.i.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i, label %call_tzname.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %.val17.i.i = load ptr, ptr %i.bu, align 8, !tbaa !44 ; 2 uses
  %i.bv = getelementptr i8, ptr %.val17.i.i, i64 168
  %.val18.i.i = load i64, ptr %i.bv, align 8, !tbaa !81
  %i.bw = and i64 %.val18.i.i, 268435456
  %.not.i36.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i36.i, label %bb.am, label %call_tzname.exit.thread40.i

bb.am:                                            ; preds = %bb.al
  %i.bx = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.by = getelementptr i8, ptr %.val17.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46
  %i.ca = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bx, ptr noundef nonnull @.str.149, ptr noundef %i.bz) #16, !inline_history !108 ; 0 uses
  %i.cb = load i32, ptr %i.br, align 8, !tbaa !35 ; 2 uses
  %.not.i.i38.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i.i38.i, label %bb.an, label %call_tzname.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.br, align 8, !tbaa !35
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ao, label %call_tzname.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #16, !inline_history !108
  br label %call_tzname.exit.thread.i

call_tzname.exit.i:                               ; preds = %bb.ak
  br i1 %i.bs, label %call_tzname.exit.thread.i, label %call_tzname.exit.thread40.i

call_tzname.exit.thread40.i:                      ; preds = %call_tzname.exit.i, %bb.al
  br i1 %i.bt, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %call_tzname.exit.thread40.i
  %i.ce = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i29.i = icmp sgt i32 %i.ce, -1
  br i1 %.not.i29.i, label %bb.aq, label %make_Zreplacement.exit.thread229

bb.aq:                                            ; preds = %bb.ap
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.cf, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %make_Zreplacement.exit, label %make_Zreplacement.exit.thread229

bb.ar:                                            ; preds = %call_tzname.exit.thread40.i
  %i.ch = load i32, ptr %i.bn, align 8, !tbaa !35 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.ch, -1
  br i1 %.not.i27.i, label %bb.as, label %Py_DECREF.exit28.i

bb.as:                                            ; preds = %bb.ar
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.bn, align 8, !tbaa !35
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.at, label %Py_DECREF.exit28.i

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.bn) #16, !inline_history !108
  br label %Py_DECREF.exit28.i

Py_DECREF.exit28.i:                               ; preds = %bb.at, %bb.as, %bb.ar
  %i.ck = call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.br, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147) #16, !inline_history !108 ; 5 uses
  %i.cl = load i32, ptr %i.br, align 8, !tbaa !35 ; 2 uses
  %.not.i25.i = icmp sgt i32 %i.cl, -1
  br i1 %.not.i25.i, label %bb.au, label %Py_DECREF.exit26.i

bb.au:                                            ; preds = %Py_DECREF.exit28.i
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.br, align 8, !tbaa !35
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.av, label %Py_DECREF.exit26.i

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #16, !inline_history !108
  br label %Py_DECREF.exit26.i

Py_DECREF.exit26.i:                               ; preds = %bb.av, %bb.au, %Py_DECREF.exit28.i
  %i.co = icmp eq ptr %i.ck, null
  br i1 %i.co, label %.thread239, label %bb.aw

bb.aw:                                            ; preds = %Py_DECREF.exit26.i
  %i.cp = getelementptr i8, ptr %i.ck, i64 8
  %.val.i = load ptr, ptr %i.cp, align 8, !tbaa !44
  %i.cq = getelementptr i8, ptr %.val.i, i64 168
  %.val34.i = load i64, ptr %i.cq, align 8, !tbaa !81
  %i.cr = and i64 %.val34.i, 268435456
  %.not.i207 = icmp eq i64 %i.cr, 0
  br i1 %.not.i207, label %bb.ax, label %make_Zreplacement.exit.thread229

bb.ax:                                            ; preds = %bb.aw
  %i.cs = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  call void @PyErr_SetString(ptr noundef %i.cs, ptr noundef nonnull @.str.148) #16, !inline_history !108
  br label %call_tzname.exit.thread.i

call_tzname.exit.thread.i:                        ; preds = %call_tzname.exit.i, %bb.ax, %bb.ao, %bb.an, %bb.am
  %.0.i208 = phi ptr [ %i.bn, %bb.an ], [ %i.ck, %bb.ax ], [ %i.bn, %bb.ao ], [ %i.bn, %bb.am ], [ %i.bn, %call_tzname.exit.i ] ; 3 uses
  %i.ct = load i32, ptr %.0.i208, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ct, -1
  br i1 %.not.i.i, label %bb.ay, label %.thread239

bb.ay:                                            ; preds = %call_tzname.exit.thread.i
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %.0.i208, align 8, !tbaa !35
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %make_Zreplacement.exit.thread231, label %.thread239

make_Zreplacement.exit.thread231:                 ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i208) #16, !inline_history !108
  br label %.thread239

make_Zreplacement.exit:                           ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16, !inline_history !108
  br label %make_Zreplacement.exit.thread229

bb.az:                                            ; preds = %PyUnicode_READ_CHAR.exit, %bb.af
  %i.cw = icmp eq ptr %.0125.ph.ph, null
  br i1 %i.cw, label %bb.ba, label %make_Zreplacement.exit.thread229

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.val9.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i.i209 = icmp eq ptr %.val9.i, @PyDateTime_TimeType
  br i1 %.not.i.i209, label %.sink.split.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.ba
  %i.cx = call i32 @PyType_IsSubtype(ptr noundef %.val9.i, ptr noundef nonnull @PyDateTime_TimeType) #16, !inline_history !109
  %.not14.i = icmp eq i32 %i.cx, 0
  br i1 %.not14.i, label %bb.bb, label %.sink.split.i

bb.bb:                                            ; preds = %PyObject_TypeCheck.exit.i
  %.val.i210 = load ptr, ptr %i.l, align 8, !tbaa !44 ; 2 uses
  %.not.i10.i = icmp eq ptr %.val.i210, @PyDateTime_DateTimeType
  br i1 %.not.i10.i, label %.sink.split.i, label %PyObject_TypeCheck.exit11.i

PyObject_TypeCheck.exit11.i:                      ; preds = %bb.bb
  %i.cy = call i32 @PyType_IsSubtype(ptr noundef %.val.i210, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !109
  %.not.i211 = icmp eq i32 %i.cy, 0
  br i1 %.not.i211, label %make_freplacement.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %PyObject_TypeCheck.exit11.i, %bb.bb, %PyObject_TypeCheck.exit.i, %bb.ba
  %.sink29.i = phi i64 [ 28, %PyObject_TypeCheck.exit.i ], [ 28, %bb.ba ], [ 32, %bb.bb ], [ 32, %PyObject_TypeCheck.exit11.i ]
  %.sink25.i = phi i64 [ 29, %PyObject_TypeCheck.exit.i ], [ 29, %bb.ba ], [ 33, %bb.bb ], [ 33, %PyObject_TypeCheck.exit11.i ]
  %.sink19.i = phi i64 [ 30, %PyObject_TypeCheck.exit.i ], [ 30, %bb.ba ], [ 34, %bb.bb ], [ 34, %PyObject_TypeCheck.exit11.i ]
  %i.cz = getelementptr i8, ptr %0, i64 %.sink29.i
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !35
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 16
  %i.dd = getelementptr i8, ptr %0, i64 %.sink25.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !35
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = or disjoint i32 %i.dg, %i.dc
  %i.di = getelementptr i8, ptr %0, i64 %.sink19.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !35
  %i.dk = zext i8 %i.dj to i32
  %i.dl = or disjoint i32 %i.dh, %i.dk
  br label %make_freplacement.exit

make_freplacement.exit:                           ; preds = %PyObject_TypeCheck.exit11.i, %.sink.split.i
  %.sink.i = phi i32 [ 0, %PyObject_TypeCheck.exit11.i ], [ %i.dl, %.sink.split.i ]
  %i.dm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %.sink.i) #16, !inline_history !109 ; 0 uses
  %i.dn = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.b) #16, !inline_history !109 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.thread239, label %make_Zreplacement.exit.thread229

bb.bc:                                            ; preds = %PyUnicode_READ_CHAR.exit, %bb.af
  %i.dp = load i32, ptr @normalize_century.cache, align 4, !tbaa !7 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.bd, label %normalize_century.exit

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 1, ptr %i.o, align 4
  store i32 -1801, ptr %i.p, align 4
  %i.dr = call i64 @strftime(ptr noundef nonnull %i.a, i64 noundef 5, ptr noundef nonnull @.str.151, ptr noundef nonnull %4) #16
  %.not.i212 = icmp eq i64 %i.dr, 0
  br i1 %.not.i212, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ds = load i32, ptr %i.a, align 1
  %i.dt = xor i32 %i.ds, 960049200
  %i.du = getelementptr i8, ptr %i.a, i64 4
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i32
  %i.dx = or i32 %i.dt, %i.dw
  %i.dy = icmp ne i32 %i.dx, 0                    ; 2 uses
  %i.dz = zext i1 %i.dy to i32                    ; 0 uses
  %i.ea = zext i1 %i.dy to i32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.eb = phi i32 [ 0, %bb.bd ], [ %i.ea, %bb.be ] ; 2 uses
  store i32 %i.eb, ptr @normalize_century.cache, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %normalize_century.exit

normalize_century.exit:                           ; preds = %bb.bc, %bb.bf
  %i.ec = phi i32 [ %i.eb, %bb.bf ], [ %i.dp, %bb.bc ]
  %.not171 = icmp eq i32 %i.ec, 0
  br i1 %.not171, label %.outer.loopexit, label %bb.bg, !llvm.loop !110

bb.bg:                                            ; preds = %normalize_century.exit
  %i.ed = icmp eq i32 %.0.i, 71
  %i.ee = icmp eq i32 %.0.i, 70
  %i.ef = icmp eq i32 %.0.i, 67
  switch i32 %.0.i, label %.outer.loopexit [
    i32 89, label %bb.bh
    i32 71, label %bb.bh
    i32 70, label %bb.bh
    i32 67, label %bb.bh
  ], !llvm.loop !110

bb.bh:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg
  %i.eg = call ptr @PySequence_GetItem(ptr noundef nonnull %2, i64 noundef 0) #16 ; 5 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.thread239, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ei = call i64 @PyLong_AsLong(ptr noundef nonnull %i.eg) #16 ; 3 uses
  %i.ej = load i32, ptr %i.eg, align 8, !tbaa !35 ; 2 uses
  %.not.i179 = icmp sgt i32 %i.ej, -1
  br i1 %.not.i179, label %bb.bj, label %Py_DECREF.exit180

bb.bj:                                            ; preds = %bb.bi
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %i.eg, align 8, !tbaa !35
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.bk, label %Py_DECREF.exit180

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.eg) #16
  br label %Py_DECREF.exit180

Py_DECREF.exit180:                                ; preds = %bb.bi, %bb.bj, %bb.bk
  %i.em = icmp eq i64 %i.ei, -1
  br i1 %i.em, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %Py_DECREF.exit180
end_hunk_2
begin_hunk_3_@wrap_strftime:bb.a
  %.4141 = phi ptr [ %.5142, %.thread239 ], [ %.0137.ph.ph, %bb.cb ], [ %.0137.ph.ph, %_Py_NewRef.exit ], [ %.0137.ph.ph, %bb.cc ], [ %.0137.ph.ph, %bb.cd ] ; 4 uses
  %.4135 = phi ptr [ %.5136, %.thread239 ], [ %.0131.ph.ph, %bb.cb ], [ %.0131.ph.ph, %_Py_NewRef.exit ], [ %.0131.ph.ph, %bb.cc ], [ %.0131.ph.ph, %bb.cd ] ; 4 uses
  %.4129 = phi ptr [ %.5130, %.thread239 ], [ %.0125.ph.ph, %bb.cb ], [ %.0125.ph.ph, %_Py_NewRef.exit ], [ %.0125.ph.ph, %bb.cc ], [ %.0125.ph.ph, %bb.cd ] ; 4 uses
  %.not.i213 = icmp eq ptr %.4129, null
  br i1 %.not.i213, label %Py_XDECREF.exit, label %bb.ce

bb.ce:                                            ; preds = %Py_DECREF.exit
  %i.ga = load i32, ptr %.4129, align 8, !tbaa !35 ; 2 uses
  %.not.i.i214 = icmp sgt i32 %i.ga, -1
  br i1 %.not.i.i214, label %bb.cf, label %Py_XDECREF.exit

bb.cf:                                            ; preds = %bb.ce
  %i.gb = add nsw i32 %i.ga, -1                   ; 2 uses
  store i32 %i.gb, ptr %.4129, align 8, !tbaa !35
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.cg, label %Py_XDECREF.exit

bb.cg:                                            ; preds = %bb.cf
  call void @_Py_Dealloc(ptr noundef nonnull %.4129) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %Py_DECREF.exit, %bb.ce, %bb.cf, %bb.cg
  %.not.i215 = icmp eq ptr %.4147, null
  br i1 %.not.i215, label %Py_XDECREF.exit217, label %bb.ch

bb.ch:                                            ; preds = %Py_XDECREF.exit
  %i.gd = load i32, ptr %.4147, align 8, !tbaa !35 ; 2 uses
  %.not.i.i216 = icmp sgt i32 %i.gd, -1
  br i1 %.not.i.i216, label %bb.ci, label %Py_XDECREF.exit217

bb.ci:                                            ; preds = %bb.ch
  %i.ge = add nsw i32 %i.gd, -1                   ; 2 uses
  store i32 %i.ge, ptr %.4147, align 8, !tbaa !35
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.cj, label %Py_XDECREF.exit217

bb.cj:                                            ; preds = %bb.ci
  call void @_Py_Dealloc(ptr noundef nonnull %.4147) #16
  br label %Py_XDECREF.exit217

Py_XDECREF.exit217:                               ; preds = %Py_XDECREF.exit, %bb.ch, %bb.ci, %bb.cj
  %.not.i218 = icmp eq ptr %.4141, null
  br i1 %.not.i218, label %Py_XDECREF.exit220, label %bb.ck

bb.ck:                                            ; preds = %Py_XDECREF.exit217
  %i.gg = load i32, ptr %.4141, align 8, !tbaa !35 ; 2 uses
  %.not.i.i219 = icmp sgt i32 %i.gg, -1
  br i1 %.not.i.i219, label %bb.cl, label %Py_XDECREF.exit220

bb.cl:                                            ; preds = %bb.ck
  %i.gh = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gh, ptr %.4141, align 8, !tbaa !35
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.cm, label %Py_XDECREF.exit220

bb.cm:                                            ; preds = %bb.cl
  call void @_Py_Dealloc(ptr noundef nonnull %.4141) #16
  br label %Py_XDECREF.exit220

Py_XDECREF.exit220:                               ; preds = %Py_XDECREF.exit217, %bb.ck, %bb.cl, %bb.cm
  %.not.i221 = icmp eq ptr %.4135, null
  br i1 %.not.i221, label %Py_XDECREF.exit223, label %bb.cn

bb.cn:                                            ; preds = %Py_XDECREF.exit220
  %i.gj = load i32, ptr %.4135, align 8, !tbaa !35 ; 2 uses
  %.not.i.i222 = icmp sgt i32 %i.gj, -1
  br i1 %.not.i.i222, label %bb.co, label %Py_XDECREF.exit223

bb.co:                                            ; preds = %bb.cn
  %i.gk = add nsw i32 %i.gj, -1                   ; 2 uses
  store i32 %i.gk, ptr %.4135, align 8, !tbaa !35
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.cp, label %Py_XDECREF.exit223

bb.cp:                                            ; preds = %bb.co
  call void @_Py_Dealloc(ptr noundef nonnull %.4135) #16
  br label %Py_XDECREF.exit223

Py_XDECREF.exit223:                               ; preds = %bb.cp, %bb.co, %bb.cn, %Py_XDECREF.exit220
  %i.gm = load i32, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %.not.i.i225 = icmp sgt i32 %i.gm, -1
  br i1 %.not.i.i225, label %bb.cq, label %Py_XDECREF.exit226

bb.cq:                                            ; preds = %Py_XDECREF.exit223
  %i.gn = add nsw i32 %i.gm, -1                   ; 2 uses
  store i32 %i.gn, ptr %i.e, align 8, !tbaa !35
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.cr, label %Py_XDECREF.exit226

bb.cr:                                            ; preds = %bb.cq
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #16
  br label %Py_XDECREF.exit226

.thread239:                                       ; preds = %bb.bw, %get_tzinfo_member.exit.i, %Py_DECREF.exit26.i, %make_freplacement.exit, %bb.ae, %bb.r, %make_Zreplacement.exit.thread229, %bb.bu, %Py_DECREF.exit178, %bb.bn, %bb.bl, %bb.bh, %.split, %.split.thread, %call_tzname.exit.thread.i, %bb.ay, %make_Zreplacement.exit.thread231, %bb.ca, %bb.b
  %.5148 = phi ptr [ null, %bb.b ], [ %.0143.ph.ph, %bb.ca ], [ %.0143.ph.ph, %make_Zreplacement.exit.thread231 ], [ %.0143.ph.ph, %call_tzname.exit.thread.i ], [ %.0143.ph.ph, %bb.ay ], [ %.0143.ph.ph, %.split.thread ], [ %.0143.ph.ph, %bb.bu ], [ %.0143.ph.ph, %.split ], [ %.0143.ph.ph, %bb.bh ], [ %.0143.ph.ph, %bb.bl ], [ %.0143.ph.ph, %bb.bn ], [ %.0143.ph.ph, %Py_DECREF.exit178 ], [ null, %bb.r ], [ %.2145, %make_Zreplacement.exit.thread229 ], [ %.0143.ph.ph, %Py_DECREF.exit26.i ], [ %.0143.ph.ph, %get_tzinfo_member.exit.i ], [ %.0143.ph.ph, %make_freplacement.exit ], [ %.0143.ph.ph, %bb.ae ], [ %.2145, %bb.bw ]
  %.5142 = phi ptr [ null, %bb.b ], [ %.0137.ph.ph, %bb.ca ], [ %.0137.ph.ph, %make_Zreplacement.exit.thread231 ], [ %.0137.ph.ph, %call_tzname.exit.thread.i ], [ %.0137.ph.ph, %bb.ay ], [ %.0137.ph.ph, %.split.thread ], [ %.0137.ph.ph, %bb.bu ], [ %.0137.ph.ph, %.split ], [ %.0137.ph.ph, %bb.bh ], [ %.0137.ph.ph, %bb.bl ], [ %.0137.ph.ph, %bb.bn ], [ %.0137.ph.ph, %Py_DECREF.exit178 ], [ %.0137.ph.ph, %bb.r ], [ %.2139, %make_Zreplacement.exit.thread229 ], [ %.0137.ph.ph, %Py_DECREF.exit26.i ], [ %.0137.ph.ph, %get_tzinfo_member.exit.i ], [ %.0137.ph.ph, %make_freplacement.exit ], [ null, %bb.ae ], [ %.2139, %bb.bw ]
  %.5136 = phi ptr [ null, %bb.b ], [ %.0131.ph.ph, %bb.ca ], [ null, %make_Zreplacement.exit.thread231 ], [ null, %call_tzname.exit.thread.i ], [ null, %bb.ay ], [ %.0131.ph.ph, %.split.thread ], [ %.0131.ph.ph, %bb.bu ], [ %.0131.ph.ph, %.split ], [ %.0131.ph.ph, %bb.bh ], [ %.0131.ph.ph, %bb.bl ], [ %.0131.ph.ph, %bb.bn ], [ %.0131.ph.ph, %Py_DECREF.exit178 ], [ %.0131.ph.ph, %bb.r ], [ %.2133, %make_Zreplacement.exit.thread229 ], [ null, %Py_DECREF.exit26.i ], [ null, %get_tzinfo_member.exit.i ], [ %.0131.ph.ph, %make_freplacement.exit ], [ %.0131.ph.ph, %bb.ae ], [ %.2133, %bb.bw ]
  %.5130 = phi ptr [ null, %bb.b ], [ %.0125.ph.ph, %bb.ca ], [ %.0125.ph.ph, %make_Zreplacement.exit.thread231 ], [ %.0125.ph.ph, %call_tzname.exit.thread.i ], [ %.0125.ph.ph, %bb.ay ], [ %.0125.ph.ph, %.split.thread ], [ %.0125.ph.ph, %bb.bu ], [ %.0125.ph.ph, %.split ], [ %.0125.ph.ph, %bb.bh ], [ %.0125.ph.ph, %bb.bl ], [ %.0125.ph.ph, %bb.bn ], [ %.0125.ph.ph, %Py_DECREF.exit178 ], [ %.0125.ph.ph, %bb.r ], [ %.2127, %make_Zreplacement.exit.thread229 ], [ %.0125.ph.ph, %Py_DECREF.exit26.i ], [ %.0125.ph.ph, %get_tzinfo_member.exit.i ], [ null, %make_freplacement.exit ], [ %.0125.ph.ph, %bb.ae ], [ %.2127, %bb.bw ]
  call void @PyUnicodeWriter_Discard(ptr noundef %i.g) #16
  br label %Py_DECREF.exit

Py_XDECREF.exit226:                               ; preds = %bb.cr, %bb.cq, %Py_XDECREF.exit223, %bb.a
  %.1119 = phi ptr [ null, %bb.a ], [ %.0149, %Py_XDECREF.exit223 ], [ %.0149, %bb.cq ], [ %.0149, %bb.cr ]
  ret ptr %.1119
}

declare ptr @PyUnicodeWriter_Create(i64 noundef) local_unnamed_addr #2

declare i64 @PyUnicode_FindChar(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_somezreplacement(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val10.i = load ptr, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.val10.i, @PyDateTime_DateTimeType
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.a
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val10.i, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !112
  %.not15.i = icmp eq i32 %i.c, 0
  br i1 %.not15.i, label %bb.b, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !57
  %.not7.i = icmp eq i8 %i.e, 0
  br i1 %.not7.i, label %bb.b, label %get_tzinfo_member.exit

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread.i, %PyObject_TypeCheck.exit.i
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %.not.i11.i = icmp eq ptr %.val.i, @PyDateTime_TimeType
  br i1 %.not.i11.i, label %PyObject_TypeCheck.exit12.thread.i, label %PyObject_TypeCheck.exit12.i

PyObject_TypeCheck.exit12.i:                      ; preds = %bb.b
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyDateTime_TimeType) #16, !inline_history !112
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %get_tzinfo_member.exit.thread, label %PyObject_TypeCheck.exit12.thread.i

PyObject_TypeCheck.exit12.thread.i:               ; preds = %PyObject_TypeCheck.exit12.i, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !57
  %.not9.i = icmp eq i8 %i.h, 0
  br i1 %.not9.i, label %get_tzinfo_member.exit.thread, label %get_tzinfo_member.exit

get_tzinfo_member.exit:                           ; preds = %PyObject_TypeCheck.exit.thread.i, %PyObject_TypeCheck.exit12.thread.i
  %.sink16.i = phi i64 [ 40, %PyObject_TypeCheck.exit.thread.i ], [ 32, %PyObject_TypeCheck.exit12.thread.i ]
  %i.i = getelementptr i8, ptr %0, i64 %.sink16.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = icmp eq ptr %i.j, @_Py_NoneStruct
  %i.l = icmp eq ptr %i.j, null
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %get_tzinfo_member.exit.thread, label %bb.c

get_tzinfo_member.exit.thread:                    ; preds = %PyObject_TypeCheck.exit12.i, %PyObject_TypeCheck.exit12.thread.i, %get_tzinfo_member.exit
  %i.m = tail call ptr @PyUnicode_FromStringAndSize(ptr noundef null, i64 noundef 0) #16
  br label %bb.e

bb.c:                                             ; preds = %get_tzinfo_member.exit
  %i.n = call fastcc i32 @format_utcoffset(ptr noundef %i.a, ptr noundef %1, ptr noundef %i.j, ptr noundef %2)
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %get_tzinfo_member.exit.thread
  %.0 = phi ptr [ %i.m, %get_tzinfo_member.exit.thread ], [ %i.p, %bb.d ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

declare ptr @PySequence_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Long(ptr noundef) local_unnamed_addr #2

declare i32 @PyOS_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @PyUnicodeWriter_WriteSubstring(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PyUnicodeWriter_WriteUTF8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PyUnicodeWriter_WriteStr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyUnicodeWriter_Discard(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallFunctionObjArgs(ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @format_utcoffset(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @call_tzinfo_method(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %3) ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_Py_NoneStruct
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i43 = icmp sgt i32 %i.d, -1
  br i1 %.not.i43, label %bb.d, label %Py_DECREF.exit44

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %Py_DECREF.exit44

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.c, %bb.d, %bb.e
  store i8 0, ptr %0, align 1, !tbaa !35
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @delta_negative(ptr noundef nonnull %i.a) ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not.i41 = icmp sgt i32 %i.k, -1
  br i1 %.not.i41, label %bb.h, label %Py_DECREF.exit42

bb.h:                                             ; preds = %bb.g
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.a, align 8, !tbaa !35
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %Py_DECREF.exit42

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16
  br label %Py_DECREF.exit42

Py_DECREF.exit42:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.n = icmp eq ptr %i.j, null
  br i1 %i.n, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.f, %Py_DECREF.exit42
  %.035 = phi ptr [ %i.j, %Py_DECREF.exit42 ], [ %i.a, %bb.f ] ; 5 uses
  %.025 = phi i32 [ 45, %Py_DECREF.exit42 ], [ 43, %bb.f ] ; 3 uses
  %i.o = getelementptr i8, ptr %.035, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %i.q = getelementptr i8, ptr %.035, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33   ; 2 uses
  %i.s = load i32, ptr %.035, align 8, !tbaa !35  ; 2 uses
  %.not.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %.035, align 8, !tbaa !35
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %.035) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.k, %bb.l
  %i.v = sdiv i32 %i.r, 60                        ; 2 uses
  %.neg = mul nsw i32 %i.v, -60
  %i.w = add i32 %.neg, %i.r                      ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 60, i32 0
  %storemerge.i = add nsw i32 %i.y, %i.w          ; 3 uses
  %.lobit.i47 = ashr i32 %i.w, 31
  %.0.i = add nsw i32 %.lobit.i47, %i.v           ; 2 uses
  %i.z = sdiv i32 %.0.i, 60                       ; 2 uses
  %.neg56 = mul nsw i32 %i.z, -60
  %i.aa = add nsw i32 %.neg56, %.0.i              ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = select i1 %i.ab, i32 60, i32 0
  %storemerge.i48 = add nsw i32 %i.ac, %i.aa      ; 3 uses
  %.lobit.i49 = ashr i32 %i.aa, 31
  %.0.i50 = add nsw i32 %.lobit.i49, %i.z         ; 3 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit
  %i.ad = tail call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %0, i64 noundef 100, ptr noundef nonnull @.str.142, i32 noundef %.025, i32 noundef %.0.i50, ptr noundef %1, i32 noundef %storemerge.i48, ptr noundef %1, i32 noundef %storemerge.i, i32 noundef %i.p) #16 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %Py_DECREF.exit
  %.not40 = icmp eq i32 %storemerge.i, 0
  br i1 %.not40, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = tail call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %0, i64 noundef 100, ptr noundef nonnull @.str.143, i32 noundef %.025, i32 noundef %.0.i50, ptr noundef %1, i32 noundef %storemerge.i48, ptr noundef %1, i32 noundef %storemerge.i) #16 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.af = tail call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %0, i64 noundef 100, ptr noundef nonnull @.str.144, i32 noundef %.025, i32 noundef %.0.i50, ptr noundef %1, i32 noundef %storemerge.i48) #16 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit42, %bb.a, %bb.p, %bb.o, %bb.m, %Py_DECREF.exit44
  %.0 = phi i32 [ 0, %bb.p ], [ 0, %Py_DECREF.exit44 ], [ -1, %bb.a ], [ 0, %bb.m ], [ 0, %bb.o ], [ -1, %Py_DECREF.exit42 ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare i64 @PyUnicode_GetLength(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @build_struct_time(i32 noundef range(i32 0, 65536) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 256) %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 256) %4, i32 noundef range(i32 0, 256) %5, i32 noundef range(i32 -1, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.153) #16 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7    ; 8 uses
  %i.f = icmp samesign ugt i32 %1, 2              ; 2 uses
  br i1 %i.f, label %bb.c, label %weekday.exit

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %0, 3
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %is_leap.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc.i = trunc nuw i32 %0 to i16         ; 2 uses
  %i.i = urem i16 %.lhs.trunc.i, 100
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i.i.i, label %is_leap.exit.i.i.i, label %is_leap.exit.thread6.i.i.i

is_leap.exit.thread6.i.i.i:                       ; preds = %bb.d
  %i.j = add i32 %i.e, 1
  br label %weekday.exit

is_leap.exit.i.i.i:                               ; preds = %bb.d
  %i.k = urem i16 %.lhs.trunc.i, 400
  %.not.i.i.i = icmp eq i16 %i.k, 0
  %i.l = add i32 %i.e, 1
  br i1 %.not.i.i.i, label %weekday.exit, label %is_leap.exit.thread.i.i.i

is_leap.exit.thread.i.i.i:                        ; preds = %is_leap.exit.i.i.i, %bb.c
  br label %weekday.exit

weekday.exit:                                     ; preds = %bb.b, %is_leap.exit.thread6.i.i.i, %is_leap.exit.i.i.i, %is_leap.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.e, %is_leap.exit.thread.i.i.i ], [ %i.l, %is_leap.exit.i.i.i ], [ %i.j, %is_leap.exit.thread6.i.i.i ]
  %i.m = add nsw i32 %0, -1                       ; 4 uses
  %i.n = mul nsw i32 %i.m, 365
  %i.o = sdiv i32 %i.m, 4
  %.neg.i.i.i = sdiv i32 %i.m, -100
  %i.p = sdiv i32 %i.m, 400
  %i.q = add nuw nsw i32 %i.o, 6
  %i.r = add nsw i32 %i.q, %i.n
  %i.s = add nsw i32 %i.r, %.neg.i.i.i
  %i.t = add nsw i32 %i.s, %i.p
  %i.u = add nsw i32 %i.t, %2
  %i.v = add i32 %i.u, %.0.i.i.i
  %i.w = srem i32 %i.v, 7
  br i1 %i.f, label %bb.e, label %days_before_month.exit

bb.e:                                             ; preds = %weekday.exit
  %i.x = and i32 %0, 3
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %is_leap.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc = trunc nuw i32 %0 to i16           ; 2 uses
  %i.z = urem i16 %.lhs.trunc, 100
  %.not.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i, label %is_leap.exit.i, label %is_leap.exit.thread6.i

is_leap.exit.thread6.i:                           ; preds = %bb.f
  %i.aa = add i32 %i.e, 1
  br label %days_before_month.exit

is_leap.exit.i:                                   ; preds = %bb.f
  %i.ab = urem i16 %.lhs.trunc, 400
  %.not.i18 = icmp eq i16 %i.ab, 0
  %i.ac = add i32 %i.e, 1
  br i1 %.not.i18, label %days_before_month.exit, label %is_leap.exit.thread.i

is_leap.exit.thread.i:                            ; preds = %is_leap.exit.i, %bb.e
  br label %days_before_month.exit

days_before_month.exit:                           ; preds = %weekday.exit, %is_leap.exit.thread6.i, %is_leap.exit.i, %is_leap.exit.thread.i
  %.0.i = phi i32 [ %i.e, %weekday.exit ], [ %i.e, %is_leap.exit.thread.i ], [ %i.ac, %is_leap.exit.i ], [ %i.aa, %is_leap.exit.thread6.i ]
  %i.ad = add i32 %.0.i, %2
  %i.ae = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.154, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.w, i32 noundef %i.ad, i32 noundef %6) #16 ; 3 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %.not.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %days_before_month.exit
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !35
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@datetime_timetuple:bb.a
  %i.q = phi i32 [ 1, %bb.f ], [ 1, %.split22 ], [ %i.p, %bb.g ] ; 3 uses
  %i.r = load i32, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit29

bb.h:                                             ; preds = %delta_bool.exit
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit29.sink.split, label %Py_DECREF.exit29

Py_DECREF.exit29.sink.split:                      ; preds = %bb.h, %bb.e
  %_Py_NoneStruct.sink = phi ptr [ @_Py_NoneStruct, %bb.e ], [ %i.e, %bb.h ]
  %.2.ph = phi i32 [ -1, %bb.e ], [ %i.q, %bb.h ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %_Py_NoneStruct.sink) #16
  br label %Py_DECREF.exit29

Py_DECREF.exit29:                                 ; preds = %Py_DECREF.exit29.sink.split, %.split, %bb.e, %delta_bool.exit, %bb.h, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %i.q, %bb.h ], [ -1, %.split ], [ -1, %bb.e ], [ %i.q, %delta_bool.exit ], [ %.2.ph, %Py_DECREF.exit29.sink.split ]
  %i.u = getelementptr i8, ptr %0, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr i8, ptr %0, i64 26
  %i.z = load i8, ptr %i.y, align 2, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 27
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr i8, ptr %0, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %0, i64 29
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr i8, ptr %0, i64 30
  %i.am = load i8, ptr %i.al, align 2, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %0, i64 31
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = tail call fastcc ptr @build_struct_time(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %.2)
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %Py_DECREF.exit29
  %.120 = phi ptr [ %i.ar, %Py_DECREF.exit29 ], [ null, %bb.c ]
  ret ptr %.120
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_timestamp(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %.not32 = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %.not32, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyInterpreterState_Get() #16
  %i.f = tail call fastcc ptr @get_current_module(ptr noundef %i.e) ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_get_current_state.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyErr_Occurred() #16      ; 0 uses
  %i.i = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.41) #16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %_get_current_state.exit

_get_current_state.exit:                          ; preds = %bb.d, %bb.c
  %.08.i = phi ptr [ %i.i, %bb.d ], [ %i.f, %bb.c ] ; 4 uses
  %i.j = getelementptr i8, ptr %.08.i, i64 24
  %.08.val.i = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr i8, ptr %.08.val.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.m = tail call ptr @datetime_subtract(ptr noundef nonnull %0, ptr noundef %i.l) ; 5 uses
  %i.n = load i32, ptr %.08.i, align 8, !tbaa !35 ; 2 uses
  %.not.i37 = icmp sgt i32 %i.n, -1
  br i1 %.not.i37, label %bb.e, label %Py_DECREF.exit38

bb.e:                                             ; preds = %_get_current_state.exit
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %.08.i, align 8, !tbaa !35
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %Py_DECREF.exit38

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.08.i) #16
  br label %Py_DECREF.exit38

Py_DECREF.exit38:                                 ; preds = %_get_current_state.exit, %bb.e, %bb.f
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %.critedge36, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit38
  %i.q = tail call ptr @delta_total_seconds(ptr noundef nonnull %i.m, ptr poison) ; 3 uses
  %i.r = load i32, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.h, label %.critedge36

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.m, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %.critedge36

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #16
  br label %.critedge36

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = getelementptr i8, ptr %0, i64 26
  %i.z = load i8, ptr %i.y, align 2, !tbaa !35
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  %i.ac = getelementptr i8, ptr %0, i64 27
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr i8, ptr %0, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %0, i64 29
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr i8, ptr %0, i64 30
  %i.am = load i8, ptr %i.al, align 2, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %0, i64 31
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr i8, ptr %0, i64 35
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = zext i8 %i.as to i32
  %i.au = tail call fastcc i64 @local_to_seconds(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.at) ; 2 uses
  %.not33 = icmp eq i64 %i.au, -1
  br i1 %.not33, label %.critedge36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i64 %i.au, -62135683200
  %i.aw = sitofp i64 %i.av to double
  %i.ax = getelementptr i8, ptr %0, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !35
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 16
  %i.bb = getelementptr i8, ptr %0, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 8
  %i.bf = or disjoint i32 %i.be, %i.ba
  %i.bg = getelementptr i8, ptr %0, i64 34
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !35
  %i.bi = zext i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bf, %i.bi
  %i.bk = uitofp nneg i32 %i.bj to double
  %i.bl = fdiv double %i.bk, 1.000000e+06
  %i.bm = fadd double %i.bl, %i.aw
  %i.bn = tail call ptr @PyFloat_FromDouble(double noundef %i.bm) #16
  br label %.critedge36

.critedge36:                                      ; preds = %Py_DECREF.exit38, %bb.i, %bb.h, %bb.g, %bb.k, %bb.j
  %.229 = phi ptr [ %i.q, %bb.i ], [ null, %bb.j ], [ %i.bn, %bb.k ], [ %i.q, %bb.g ], [ %i.q, %bb.h ], [ null, %Py_DECREF.exit38 ]
  ret ptr %.229
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_utctimetuple(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.e, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.h = add nuw i32 %i.f, 1                      ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.d, ptr noundef nonnull @.str.10, ptr noundef nonnull %0) ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq ptr %i.i, @_Py_NoneStruct
  br i1 %i.k, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i39 = icmp sgt i32 %i.l, -1
  br i1 %.not.i39, label %bb.g, label %Py_DECREF.exit40

bb.g:                                             ; preds = %bb.f
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %Py_DECREF.exit40

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16
  br label %Py_DECREF.exit40

Py_DECREF.exit40:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.o = load i32, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %Py_DECREF.exit40
  %i.q = add nuw i32 %i.o, 1                      ; 2 uses
  store i32 %i.q, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.e
  %i.r = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef -1) ; 3 uses
  %i.s = load i32, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %.not.i37 = icmp sgt i32 %i.s, -1
  br i1 %.not.i37, label %bb.k, label %Py_DECREF.exit38

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.i, align 8, !tbaa !35
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %Py_DECREF.exit38

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #16
  br label %Py_DECREF.exit38

Py_DECREF.exit38:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.v = icmp eq ptr %i.r, null
  br i1 %i.v, label %.critedge, label %Py_DECREF.exit38._Py_NewRef.exit_crit_edge

Py_DECREF.exit38._Py_NewRef.exit_crit_edge:       ; preds = %Py_DECREF.exit38
  %.pre = load i32, ptr %i.r, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %Py_DECREF.exit38._Py_NewRef.exit_crit_edge, %bb.i, %Py_DECREF.exit40, %bb.c, %.thread
  %i.w = phi i32 [ %.pre, %Py_DECREF.exit38._Py_NewRef.exit_crit_edge ], [ %i.h, %bb.c ], [ %i.f, %.thread ], [ %i.o, %Py_DECREF.exit40 ], [ %i.q, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %i.r, %Py_DECREF.exit38._Py_NewRef.exit_crit_edge ], [ %0, %bb.c ], [ %0, %.thread ], [ %0, %Py_DECREF.exit40 ], [ %0, %bb.i ] ; 9 uses
  %i.x = getelementptr i8, ptr %.2, i64 25
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8
  %i.ab = getelementptr i8, ptr %.2, i64 26
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad
  %i.af = getelementptr i8, ptr %.2, i64 27
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %.2, i64 28
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr i8, ptr %.2, i64 29
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %.2, i64 30
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr i8, ptr %.2, i64 31
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = zext i8 %i.as to i32
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %_Py_NewRef.exit
  %i.au = add nsw i32 %i.w, -1                    ; 2 uses
  store i32 %i.au, ptr %.2, align 8, !tbaa !35
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %_Py_NewRef.exit, %bb.m, %bb.n
  %i.aw = tail call fastcc ptr @build_struct_time(i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.at, i32 noundef 0)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %Py_DECREF.exit38, %Py_DECREF.exit
  %.132 = phi ptr [ %i.aw, %Py_DECREF.exit ], [ null, %Py_DECREF.exit38 ], [ null, %bb.d ]
  ret ptr %.132
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_isoformat(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [2 x ptr], align 16               ; 3 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 16
  %.val50 = load i64, ptr %i.e, align 8, !tbaa !63
  %i.f = add i64 %.val50, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %2, 3
  %i.h = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.h, %i.g
  br i1 %or.cond5, label %.thread57, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = phi i64 [ %i.f, %.thread ], [ %2, %bb.b ]
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_isoformat._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c) #16 ; 2 uses
  %.not41 = icmp eq ptr %i.j, null
  br i1 %.not41, label %bb.ai, label %.thread57

.thread57:                                        ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.l = phi i64 [ %i.i, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %.not42 = icmp eq i64 %i.l, 0
  br i1 %.not42, label %bb.x, label %bb.d

bb.d:                                             ; preds = %.thread57
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !43   ; 11 uses
  %.not43 = icmp eq ptr %i.m, null
  br i1 %.not43, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val49 = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr i8, ptr %.val49, i64 168
  %.val52 = load i64, ptr %i.o, align 8, !tbaa !81
  %i.p = and i64 %.val52, 268435456
  %.not44 = icmp eq i64 %i.p, 0
  br i1 %.not44, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.231, ptr noundef nonnull %i.m) #16
  br label %bb.ai

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.m, i64 16
  %.val54 = load i64, ptr %i.q, align 8, !tbaa !60 ; 2 uses
  %.not45 = icmp eq i64 %.val54, 1
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.s = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.r, ptr noundef nonnull @.str.232, i64 noundef %.val54) #16 ; 0 uses
  br label %bb.ai

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.m, i64 32
  %i.u = load i32, ptr %i.t, align 8              ; 5 uses
  %i.v = lshr i32 %i.u, 2
  %i.w = and i32 %i.v, 7
  %i.x = and i32 %i.u, 32
  %.not.i19.i = icmp eq i32 %i.x, 0               ; 3 uses
  switch i32 %i.w, label %bb.p [
    i32 1, label %bb.j
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = and i32 %i.u, 64
  %.not.i.i.i = icmp eq i32 %i.y, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.m, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.m, i64 56
  %.val4.i.i = load ptr, ptr %i.z, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.k ], [ %.val4.i.i, %bb.l ]
  %i.aa = load i8, ptr %.0.i.i, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i32
  br label %PyUnicode_READ_CHAR.exit

bb.m:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = and i32 %i.u, 64
  %.not.i.i12.i = icmp eq i32 %i.ac, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.m, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %i.m, i64 56
  %.val4.i16.i = load ptr, ptr %i.ad, align 8, !tbaa !35
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.o, %bb.n
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.n ], [ %.val4.i16.i, %bb.o ]
  %i.ae = load i16, ptr %.0.i15.i, align 2, !tbaa !88
  %i.af = zext i16 %i.ae to i32
end_hunk_4
begin_hunk_5_@datetime_datetime_replace:bb.a
  %.182165 = phi i32 [ %.081, %bb.ak ], [ %.081, %.thread170 ], [ %.081, %bb.aj ], [ %i.u, %.thread ], [ %.081, %bb.ah ], [ %.081, %bb.ad ], [ %.081, %bb.z ], [ %i.bu, %bb.v ], [ %i.u, %bb.r ], [ %i.u, %bb.n ], [ %i.u, %bb.j ] ; 2 uses
  %.184164 = phi i32 [ %.083, %bb.ak ], [ %.083, %.thread170 ], [ %.083, %bb.aj ], [ %i.r, %.thread ], [ %.083, %bb.ah ], [ %.083, %bb.ad ], [ %.083, %bb.z ], [ %.083, %bb.v ], [ %i.bo, %bb.r ], [ %i.r, %bb.n ], [ %i.r, %bb.j ] ; 2 uses
  %.186163 = phi i32 [ %.085, %bb.ak ], [ %.085, %.thread170 ], [ %.085, %bb.aj ], [ %i.o, %.thread ], [ %.085, %bb.ah ], [ %.085, %bb.ad ], [ %.085, %bb.z ], [ %.085, %bb.v ], [ %.085, %bb.r ], [ %i.bi, %bb.n ], [ %i.o, %bb.j ] ; 2 uses
  %.188162 = phi i32 [ %.087, %bb.ak ], [ %.087, %.thread170 ], [ %.087, %bb.aj ], [ %i.l, %.thread ], [ %.087, %bb.ah ], [ %.087, %bb.ad ], [ %.087, %bb.z ], [ %.087, %bb.v ], [ %.087, %bb.r ], [ %.087, %bb.n ], [ %i.bc, %bb.j ] ; 2 uses
  %.0 = phi i32 [ -1, %bb.ak ], [ %i.cu, %.thread170 ], [ %i.av, %bb.aj ], [ %i.av, %.thread ], [ %i.av, %bb.ah ], [ %i.av, %bb.ad ], [ %i.av, %bb.z ], [ %i.av, %bb.v ], [ %i.av, %bb.r ], [ %i.av, %bb.n ], [ %i.av, %bb.j ] ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 8
  %.val149 = load ptr, ptr %i.cx, align 8, !tbaa !44 ; 2 uses
  %i.cy = icmp eq ptr %.val149, @PyDateTime_DateTimeType
  br i1 %i.cy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread151
  %i.cz = call ptr @new_datetime_ex2(i32 noundef %.188162, i32 noundef %.186163, i32 noundef %.184164, i32 noundef %.182165, i32 noundef %.180166, i32 noundef %.178167, i32 noundef %.1168, ptr noundef %.075169, i32 noundef %.0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !147
  br label %datetime_datetime_replace_impl.exit

bb.am:                                            ; preds = %.thread151
  %i.da = call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %.val149, i32 noundef %.0, ptr noundef nonnull @.str.29, i32 noundef %.188162, i32 noundef %.186163, i32 noundef %.184164, i32 noundef %.182165, i32 noundef %.180166, i32 noundef %.178167, i32 noundef %.1168, ptr noundef %.075169), !inline_history !147
  br label %datetime_datetime_replace_impl.exit

datetime_datetime_replace_impl.exit:              ; preds = %bb.am, %bb.al, %bb.ak, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.f
  %.091 = phi ptr [ null, %bb.i ], [ null, %bb.m ], [ null, %bb.q ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.ac ], [ null, %bb.ag ], [ null, %bb.ak ], [ null, %bb.f ], [ %i.cz, %bb.al ], [ %i.da, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.091
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_astimezone(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 2
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread29, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_astimezone._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not25 = icmp eq ptr %i.g, null
  br i1 %.not25, label %datetime_datetime_astimezone_impl.exit, label %.thread29

.thread29:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]
  %i.i = phi i64 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.j = sub i64 0, %i.i
  %.not26 = icmp eq i64 %2, %i.j
  br i1 %.not26, label %.thread31, label %bb.d

bb.d:                                             ; preds = %.thread29
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !43   ; 4 uses
  %i.l = icmp eq ptr %i.k, @_Py_NoneStruct
  br i1 %i.l, label %.thread31, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val4.i.i, @PyDateTime_TZInfoType
  br i1 %.not.i.i.i, label %.thread31, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.e
  %i.n = call i32 @PyType_IsSubtype(ptr noundef %.val4.i.i, ptr noundef nonnull @PyDateTime_TZInfoType) #16, !inline_history !148
  %.not6.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i.i, label %check_tzinfo_subclass.exit.i, label %.thread31

check_tzinfo_subclass.exit.i:                     ; preds = %PyObject_TypeCheck.exit.i.i
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.p = getelementptr i8, ptr %.val.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.200, ptr noundef %i.q) #16, !inline_history !148 ; 0 uses
  br label %datetime_datetime_astimezone_impl.exit

.thread31:                                        ; preds = %.thread29, %PyObject_TypeCheck.exit.i.i, %bb.e, %bb.d
  %i.s = phi i1 [ true, %bb.d ], [ false, %PyObject_TypeCheck.exit.i.i ], [ false, %bb.e ], [ true, %.thread29 ]
  %.033 = phi ptr [ @_Py_NoneStruct, %bb.d ], [ %i.k, %PyObject_TypeCheck.exit.i.i ], [ %i.k, %bb.e ], [ @_Py_NoneStruct, %.thread29 ] ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !57
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %Py_DECREF.exit84.i, label %bb.f

bb.f:                                             ; preds = %.thread31
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51   ; 5 uses
  %i.x = icmp eq ptr %i.w, @_Py_NoneStruct
  br i1 %i.x, label %Py_DECREF.exit84.i, label %bb.h

Py_DECREF.exit84.i:                               ; preds = %bb.r, %bb.s, %bb.t, %.thread31, %bb.f
  %i.y = getelementptr i8, ptr %0, i64 35
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52    ; 3 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %0, i64 25        ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr i8, ptr %0, i64 26        ; 2 uses
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !35
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %0, i64 27        ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.an = load i8, ptr %i.am, align 4, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr i8, ptr %0, i64 29        ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr i8, ptr %0, i64 30        ; 2 uses
  %i.at = load i8, ptr %i.as, align 2, !tbaa !35
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr i8, ptr %0, i64 31        ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %i.ax = zext i8 %i.aw to i32
  %i.ay = call fastcc i64 @local_to_seconds(i32 noundef %i.ai, i32 noundef %i.al, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.aa), !inline_history !149 ; 3 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %datetime_datetime_astimezone_impl.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit84.i
  %i.ba = load i8, ptr %i.ab, align 1, !tbaa !35
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = load i8, ptr %i.af, align 2, !tbaa !35
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i8, ptr %i.am, align 4, !tbaa !35
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i8, ptr %i.as, align 2, !tbaa !35
  %i.bn = zext i8 %i.bm to i32
  %i.bo = load i8, ptr %i.av, align 1, !tbaa !35
  %i.bp = zext i8 %i.bo to i32
  %.not.i99.i = icmp eq i8 %i.z, 0
  %i.bq = zext i1 %.not.i99.i to i32
  %i.br = call fastcc i64 @local_to_seconds(i32 noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef %i.bn, i32 noundef %i.bp, i32 noundef %i.bq), !inline_history !149 ; 3 uses
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %datetime_datetime_astimezone_impl.exit, label %local_timezone_from_local.exit.i

local_timezone_from_local.exit.i:                 ; preds = %bb.g
  %i.bt = icmp sgt i64 %i.br, %i.ay
  %i.bu = zext i1 %i.bt to i8
  %.not31.i.i = icmp eq i8 %i.z, %i.bu
  %.0.i100.i = select i1 %.not31.i.i, i64 %i.br, i64 %i.ay
  %i.bv = add nsw i64 %.0.i100.i, -62135683200
  %i.bw = call fastcc ptr @local_timezone_from_timestamp(i64 noundef %i.bv), !inline_history !149 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %datetime_datetime_astimezone_impl.exit, label %_Py_NewRef.exit.i

bb.h:                                             ; preds = %bb.f
  %i.by = load i32, ptr %i.w, align 8, !tbaa !35  ; 2 uses
  %i.bz = icmp ugt i32 %i.by, -1073741825
  br i1 %i.bz, label %_Py_NewRef.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = add nuw i32 %i.by, 1
  store i32 %i.ca, ptr %i.w, align 8, !tbaa !35
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.i, %bb.h, %local_timezone_from_local.exit.i
  %.061.i = phi ptr [ %i.bw, %local_timezone_from_local.exit.i ], [ %i.w, %bb.h ], [ %i.w, %bb.i ] ; 8 uses
  %i.cb = icmp eq ptr %.061.i, %.033
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_Py_NewRef.exit.i
  %i.cc = load i32, ptr %.061.i, align 8, !tbaa !35 ; 2 uses
  %.not.i87.i = icmp sgt i32 %i.cc, -1
  br i1 %.not.i87.i, label %bb.k, label %Py_DECREF.exit88.i

bb.k:                                             ; preds = %bb.j
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %.061.i, align 8, !tbaa !35
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.l, label %Py_DECREF.exit88.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %.061.i) #16, !inline_history !150
  br label %Py_DECREF.exit88.i

Py_DECREF.exit88.i:                               ; preds = %bb.l, %bb.k, %bb.j
  %i.cf = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, -1073741825
  br i1 %i.cg, label %datetime_datetime_astimezone_impl.exit, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit88.i
  %i.ch = add nuw i32 %i.cf, 1
  store i32 %i.ch, ptr %0, align 8, !tbaa !35
  br label %datetime_datetime_astimezone_impl.exit

bb.n:                                             ; preds = %_Py_NewRef.exit.i
  %i.ci = call fastcc ptr @call_tzinfo_method(ptr noundef nonnull %.061.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %0), !inline_history !150 ; 11 uses
  %i.cj = load i32, ptr %.061.i, align 8, !tbaa !35 ; 2 uses
  %.not.i85.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i85.i, label %bb.o, label %Py_DECREF.exit86.i

bb.o:                                             ; preds = %bb.n
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %.061.i, align 8, !tbaa !35
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %Py_DECREF.exit86.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %.061.i) #16, !inline_history !150
  br label %Py_DECREF.exit86.i

Py_DECREF.exit86.i:                               ; preds = %bb.p, %bb.o, %bb.n
  %i.cm = icmp eq ptr %i.ci, null
  br i1 %i.cm, label %datetime_datetime_astimezone_impl.exit, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit86.i
  %i.cn = icmp eq ptr %i.ci, @_Py_NoneStruct
  br i1 %i.cn, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i83.i = icmp sgt i32 %i.co, -1
  br i1 %.not.i83.i, label %bb.s, label %Py_DECREF.exit84.i

bb.s:                                             ; preds = %bb.r
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %Py_DECREF.exit84.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull @_Py_NoneStruct) #16, !inline_history !150
  br label %Py_DECREF.exit84.i

bb.u:                                             ; preds = %bb.q
  %i.cr = getelementptr i8, ptr %i.ci, i64 8
  %.val98.i = load ptr, ptr %i.cr, align 8, !tbaa !44 ; 2 uses
  %.not.i102.i = icmp eq ptr %.val98.i, @PyDateTime_DeltaType
  br i1 %.not.i102.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.u
  %i.cs = call i32 @PyType_IsSubtype(ptr noundef %.val98.i, ptr noundef nonnull @PyDateTime_DeltaType) #16, !inline_history !150
  %.not111.i = icmp eq i32 %i.cs, 0
  br i1 %.not111.i, label %bb.v, label %PyObject_TypeCheck.exit.thread.i

bb.v:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.ct = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !43
  %i.cu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ct, ptr noundef nonnull @.str.238, ptr noundef nonnull %i.ci) #16, !inline_history !150 ; 0 uses
  %i.cv = load i32, ptr %i.ci, align 8, !tbaa !35 ; 2 uses
  %.not.i81.i = icmp sgt i32 %i.cv, -1
  br i1 %.not.i81.i, label %bb.w, label %datetime_datetime_astimezone_impl.exit

bb.w:                                             ; preds = %bb.v
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.ci, align 8, !tbaa !35
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.x, label %datetime_datetime_astimezone_impl.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #16, !inline_history !150
  br label %datetime_datetime_astimezone_impl.exit

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.u
  %i.cy = call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, i32 noundef -1), !inline_history !150 ; 21 uses
  %i.cz = load i32, ptr %i.ci, align 8, !tbaa !35 ; 2 uses
  %.not.i79.i = icmp sgt i32 %i.cz, -1
  br i1 %.not.i79.i, label %bb.y, label %Py_DECREF.exit80.i

bb.y:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.ci, align 8, !tbaa !35
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.z, label %Py_DECREF.exit80.i

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #16, !inline_history !150
  br label %Py_DECREF.exit80.i

Py_DECREF.exit80.i:                               ; preds = %bb.z, %bb.y, %PyObject_TypeCheck.exit.thread.i
  %i.dc = icmp eq ptr %i.cy, null
  br i1 %i.dc, label %datetime_datetime_astimezone_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %Py_DECREF.exit80.i
  %i.dd = getelementptr i8, ptr %i.cy, i64 24
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !57
  %.not70.i = icmp eq i8 %i.de, 0
  br i1 %.not70.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr i8, ptr %i.cy, i64 25
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !35
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 8
  %i.dj = getelementptr i8, ptr %i.cy, i64 26
  %i.dk = load i8, ptr %i.dj, align 2, !tbaa !35
  %i.dl = zext i8 %i.dk to i32
  %i.dm = or disjoint i32 %i.di, %i.dl
  %i.dn = getelementptr i8, ptr %i.cy, i64 27
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !35
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr i8, ptr %i.cy, i64 28
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !35
  %i.ds = zext i8 %i.dr to i32
  %i.dt = getelementptr i8, ptr %i.cy, i64 29
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !35
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr i8, ptr %i.cy, i64 30
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !35
  %i.dy = zext i8 %i.dx to i32
  %i.dz = getelementptr i8, ptr %i.cy, i64 31
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !35
  %i.eb = zext i8 %i.ea to i32
  %i.ec = getelementptr i8, ptr %i.cy, i64 32
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !35
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 16
  %i.eg = getelementptr i8, ptr %i.cy, i64 33
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !35
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 8
  %i.ek = or disjoint i32 %i.ej, %i.ef
  %i.el = getelementptr i8, ptr %i.cy, i64 34
  %i.em = load i8, ptr %i.el, align 2, !tbaa !35
  %i.en = zext i8 %i.em to i32
  %i.eo = or disjoint i32 %i.ek, %i.en
  %i.ep = getelementptr i8, ptr %i.cy, i64 35
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !52
  %i.er = zext i8 %i.eq to i32
  %i.es = getelementptr i8, ptr %i.cy, i64 8
  %.val.i = load ptr, ptr %i.es, align 8, !tbaa !44
  %i.et = call ptr @new_datetime_ex2(i32 noundef %i.dm, i32 noundef %i.dp, i32 noundef %i.ds, i32 noundef %i.dv, i32 noundef %i.dy, i32 noundef %i.eb, i32 noundef %i.eo, ptr noundef nonnull @utc_timezone, i32 noundef %i.er, ptr noundef %.val.i), !inline_history !150 ; 2 uses
  %i.eu = load i32, ptr %i.cy, align 8, !tbaa !35 ; 2 uses
  %.not.i77.i = icmp sgt i32 %i.eu, -1
  br i1 %.not.i77.i, label %bb.ac, label %Py_DECREF.exit78.i

bb.ac:                                            ; preds = %bb.ab
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.cy, align 8, !tbaa !35
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.ad, label %Py_DECREF.exit78.i

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.cy) #16, !inline_history !150
  br label %Py_DECREF.exit78.i

Py_DECREF.exit78.i:                               ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ex = icmp eq ptr %i.et, null
  br i1 %i.ex, label %datetime_datetime_astimezone_impl.exit, label %Py_DECREF.exit76.i

bb.ae:                                            ; preds = %bb.aa
  %i.ey = getelementptr i8, ptr %i.cy, i64 40     ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !43 ; 3 uses
  %i.fa = load i32, ptr @utc_timezone, align 8, !tbaa !35 ; 2 uses
  %i.fb = icmp ugt i32 %i.fa, -1073741825
  br i1 %i.fb, label %_Py_NewRef.exit103.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = add nuw i32 %i.fa, 1
  store i32 %i.fc, ptr @utc_timezone, align 8, !tbaa !35
  br label %_Py_NewRef.exit103.i

_Py_NewRef.exit103.i:                             ; preds = %bb.af, %bb.ae
  store ptr @utc_timezone, ptr %i.ey, align 8, !tbaa !43
  %i.fd = load i32, ptr %i.ez, align 8, !tbaa !35 ; 2 uses
  %.not.i75.i = icmp sgt i32 %i.fd, -1
  br i1 %.not.i75.i, label %bb.ag, label %Py_DECREF.exit76.i

bb.ag:                                            ; preds = %_Py_NewRef.exit103.i
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.ez, align 8, !tbaa !35
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ah, label %Py_DECREF.exit76.i

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.ez) #16, !inline_history !150
  br label %Py_DECREF.exit76.i

Py_DECREF.exit76.i:                               ; preds = %bb.ah, %bb.ag, %_Py_NewRef.exit103.i, %Py_DECREF.exit78.i
  %.060.i = phi ptr [ %i.et, %Py_DECREF.exit78.i ], [ %i.cy, %_Py_NewRef.exit103.i ], [ %i.cy, %bb.ag ], [ %i.cy, %bb.ah ] ; 9 uses
  br i1 %i.s, label %bb.ai, label %bb.bb

bb.ai:                                            ; preds = %Py_DECREF.exit76.i
  %i.fg = call ptr @PyInterpreterState_Get() #16, !inline_history !151
  %i.fh = call fastcc ptr @get_current_module(ptr noundef %i.fg), !inline_history !151 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.aj, label %_get_current_state.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fj = call ptr @PyErr_Occurred() #16, !inline_history !151 ; 0 uses
  %i.fk = call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.41) #16, !inline_history !151 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fk) ]
  br label %_get_current_state.exit.i.i

_get_current_state.exit.i.i:                      ; preds = %bb.aj, %bb.ai
  %.08.i.i.i = phi ptr [ %i.fk, %bb.aj ], [ %i.fh, %bb.ai ] ; 4 uses
  %i.fl = getelementptr i8, ptr %.08.i.i.i, i64 24
  %.08.val.i.i.i = load ptr, ptr %i.fl, align 8, !tbaa !69
  %i.fm = getelementptr i8, ptr %.08.val.i.i.i, i64 64
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !146
  %i.fo = call ptr @datetime_subtract(ptr noundef nonnull %.060.i, ptr noundef %i.fn), !inline_history !151 ; 8 uses
  %i.fp = load i32, ptr %.08.i.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i25.i.i = icmp sgt i32 %i.fp, -1
  br i1 %.not.i25.i.i, label %bb.ak, label %Py_DECREF.exit26.i.i

bb.ak:                                            ; preds = %_get_current_state.exit.i.i
  %i.fq = add nsw i32 %i.fp, -1                   ; 2 uses
  store i32 %i.fq, ptr %.08.i.i.i, align 8, !tbaa !35
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.al, label %Py_DECREF.exit26.i.i

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %.08.i.i.i) #16, !inline_history !151
  br label %Py_DECREF.exit26.i.i

Py_DECREF.exit26.i.i:                             ; preds = %bb.al, %bb.ak, %_get_current_state.exit.i.i
  %i.fs = icmp eq ptr %i.fo, null
  br i1 %i.fs, label %local_timezone.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %Py_DECREF.exit26.i.i
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !11
  %i.fu = call ptr %i.ft(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !152 ; 9 uses
  %.not15.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not15.i.i.i, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fv = load i32, ptr %i.fo, align 8, !tbaa !35 ; 2 uses
  %.not.i23.i.i = icmp sgt i32 %i.fv, -1
  br i1 %.not.i23.i.i, label %bb.ao, label %local_timezone.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.fw = add nsw i32 %i.fv, -1                   ; 2 uses
  store i32 %i.fw, ptr %i.fo, align 8, !tbaa !35
end_hunk_5
