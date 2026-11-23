Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_datetimemodule?download=true
inline.NumInlined: 580
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@new_datetime_ex2:bb.a
  %i.bh = getelementptr i8, ptr %i.an, i64 32
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !423
  %i.bi = lshr i32 %6, 8
  %i.bj = trunc i32 %i.bi to i8
  %i.bk = getelementptr i8, ptr %i.an, i64 33
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !423
  %i.bl = trunc i32 %6 to i8
  %i.bm = getelementptr i8, ptr %i.an, i64 34
  store i8 %i.bl, ptr %i.bm, align 2, !tbaa !423
  br i1 %i.a, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bn = load i32, ptr %7, align 8, !tbaa !423   ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, -1073741825
  br i1 %i.bo, label %_Py_NewRef.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = add nuw i32 %i.bn, 1
  store i32 %i.bp, ptr %7, align 8, !tbaa !423
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.t, %bb.u
  %i.bq = getelementptr i8, ptr %i.an, i64 40
  store ptr %7, ptr %i.bq, align 8, !tbaa !436
  br label %bb.v

bb.v:                                             ; preds = %_Py_NewRef.exit, %bb.s
  %i.br = trunc nuw nsw i32 %8 to i8
  %i.bs = getelementptr i8, ptr %i.an, i64 35
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !437
  br label %check_date_args.exit.thread

check_date_args.exit.thread:                      ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.g, %bb.d, %bb.b, %check_tzinfo_subclass.exit, %bb.r, %bb.v
  %.0 = phi ptr [ null, %check_tzinfo_subclass.exit ], [ null, %bb.r ], [ null, %bb.g ], [ %i.an, %bb.v ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.p ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_timezone_from_delta(i32 noundef range(i32 -1, 1) %0, i32 noundef range(i32 60, 86341) %1) unnamed_addr #0 !guid !494 {
check_delta_day_range.exit.i:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !416
  %i.b = tail call ptr %i.a(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !417 ; 12 uses
  %.not15.i = icmp eq ptr %i.b, null
  br i1 %.not15.i, label %Py_DECREF.exit, label %bb.a

bb.a:                                             ; preds = %check_delta_day_range.exit.i
  %i.c = getelementptr i8, ptr %i.b, i64 16
  store i64 -1, ptr %i.c, align 8, !tbaa !419
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store i32 %0, ptr %i.d, align 8, !tbaa !420
  %i.e = getelementptr i8, ptr %i.b, i64 28
  store i32 %1, ptr %i.e, align 4, !tbaa !421
  %i.f = getelementptr i8, ptr %i.b, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !422
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @utc_timezone, i64 16), align 8, !tbaa !439
  %.not = icmp eq ptr %i.b, %i.g
  br i1 %.not, label %create_timezone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_TimeZoneType, i64 304), align 8, !tbaa !416
  %i.i = tail call ptr %i.h(ptr noundef nonnull @PyDateTime_TimeZoneType, i64 noundef 0) #16, !inline_history !1 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %create_timezone.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 8, !tbaa !423  ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %_Py_NewRef.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %i.b, align 8, !tbaa !423
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.d, %bb.c
  %i.n = getelementptr i8, ptr %i.i, i64 16
  store ptr %i.b, ptr %i.n, align 8, !tbaa !439
  %i.o = getelementptr i8, ptr %i.i, i64 24
  store ptr null, ptr %i.o, align 8, !tbaa !440
  br label %create_timezone.exit

create_timezone.exit:                             ; preds = %bb.a, %bb.b, %_Py_NewRef.exit.i
  %.0.i10 = phi ptr [ %i.i, %_Py_NewRef.exit.i ], [ @utc_timezone, %bb.a ], [ null, %bb.b ] ; 3 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !423  ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %create_timezone.exit
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.b, align 8, !tbaa !423
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %check_delta_day_range.exit.i, %bb.f, %bb.e, %create_timezone.exit
  %.0 = phi ptr [ %.0.i10, %bb.f ], [ %.0.i10, %create_timezone.exit ], [ %.0.i10, %bb.e ], [ null, %check_delta_day_range.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyInit__datetime() local_unnamed_addr #0 !guid !495 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @datetimemodule) #16
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #2

declare ptr @PyType_GenericNew(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @tzinfo_tzname(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !496 {
bb.a:
  %i.a = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !429
  %i.b = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.a, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8) #16 ; 0 uses
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @tzinfo_utcoffset(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !497 {
bb.a:
  %i.a = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !429
  %i.b = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.a, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10) #16 ; 0 uses
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @tzinfo_dst(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 !guid !498 {
bb.a:
  %i.a = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !429
  %i.b = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.a, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12) #16 ; 0 uses
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @tzinfo_fromutc(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) #0 !guid !499 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i68 = icmp eq ptr %.val, @PyDateTime_DateTimeType
  br i1 %.not.i68, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not86 = icmp eq i32 %i.b, 0
  br i1 %.not86, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.c = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !429
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.20) #16
  br label %Py_DECREF.exit

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.d = getelementptr i8, ptr %1, i64 24         ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !442
  %.not52 = icmp eq i8 %i.e, 0
  br i1 %.not52, label %bb.c, label %.thread

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %.not53 = icmp eq ptr %0, @_Py_NoneStruct
  br i1 %.not53, label %datetime_utcoffset.exit, label %bb.d

.thread:                                          ; preds = %PyObject_TypeCheck.exit.thread
  %i.f = getelementptr i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !436  ; 2 uses
  %.not5383 = icmp eq ptr %i.g, %0
  br i1 %.not5383, label %datetime_utcoffset.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.h = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !429
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.21) #16
  br label %Py_DECREF.exit

datetime_utcoffset.exit:                          ; preds = %.thread, %bb.c
  %i.i = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.g, %.thread ]
  %i.j = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %1) ; 9 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %datetime_utcoffset.exit
  %i.l = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.l, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %i.d, align 8, !tbaa !442
  %.not.i70 = icmp eq i8 %i.m, 0
  br i1 %.not.i70, label %datetime_dst.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !436
  br label %datetime_dst.exit

datetime_dst.exit:                                ; preds = %bb.f, %bb.g
  %i.p = phi ptr [ %i.o, %bb.g ], [ @_Py_NoneStruct, %bb.f ]
  %i.q = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.p, ptr noundef nonnull @.str.12, ptr noundef nonnull %1) ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %datetime_dst.exit
  %i.s = icmp eq ptr %i.q, @_Py_NoneStruct
  br i1 %i.s, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @delta_subtract(ptr noundef nonnull %i.j, ptr noundef nonnull %i.q) ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %1, ptr noundef nonnull %i.t, i32 noundef 1) ; 9 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %i.q, align 8, !tbaa !423  ; 2 uses
  %.not.i62 = icmp sgt i32 %i.x, -1
  br i1 %.not.i62, label %bb.l, label %Py_DECREF.exit63

bb.l:                                             ; preds = %bb.k
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.q, align 8, !tbaa !423
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.m, label %Py_DECREF.exit63

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #16
  br label %Py_DECREF.exit63

Py_DECREF.exit63:                                 ; preds = %bb.k, %bb.l, %bb.m
  %i.aa = load i8, ptr %i.d, align 8, !tbaa !442
  %.not54 = icmp eq i8 %i.aa, 0
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit63
  %i.ab = getelementptr i8, ptr %1, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !436
  br label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit63, %bb.n
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ @_Py_NoneStruct, %Py_DECREF.exit63 ]
  %i.ae = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.ad, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.v) ; 11 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp eq ptr %i.ae, @_Py_NoneStruct
  br i1 %i.ag, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %i.ae, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !420
  %.not.i71 = icmp eq i32 %i.ai, 0
  br i1 %.not.i71, label %bb.r, label %delta_bool.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr i8, ptr %i.ae, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !421
  %.not3.i = icmp eq i32 %i.ak, 0
  br i1 %.not3.i, label %delta_bool.exit, label %delta_bool.exit.thread

delta_bool.exit:                                  ; preds = %bb.r
  %i.al = getelementptr i8, ptr %i.ae, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !422
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.u, label %delta_bool.exit.thread

delta_bool.exit.thread:                           ; preds = %bb.q, %bb.r, %delta_bool.exit
  %i.an = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %i.v, ptr noundef nonnull %i.ae, i32 noundef 1) ; 2 uses
  %i.ao = load i32, ptr %i.v, align 8, !tbaa !423 ; 2 uses
  %.not.i60 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i60, label %bb.s, label %Py_DECREF.exit61

bb.s:                                             ; preds = %delta_bool.exit.thread
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.v, align 8, !tbaa !423
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.t, label %Py_DECREF.exit61

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #16
  br label %Py_DECREF.exit61

Py_DECREF.exit61:                                 ; preds = %delta_bool.exit.thread, %bb.s, %bb.t
  %i.ar = icmp eq ptr %i.an, null
  br i1 %i.ar, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %Py_DECREF.exit61, %delta_bool.exit
  %.040 = phi ptr [ %i.an, %Py_DECREF.exit61 ], [ %i.v, %delta_bool.exit ] ; 3 uses
  %i.as = load i32, ptr %i.t, align 8, !tbaa !423 ; 2 uses
  %.not.i58 = icmp sgt i32 %i.as, -1
  br i1 %.not.i58, label %bb.v, label %Py_DECREF.exit59

bb.v:                                             ; preds = %bb.u
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.t, align 8, !tbaa !423
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.w, label %Py_DECREF.exit59

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #16
  br label %Py_DECREF.exit59

Py_DECREF.exit59:                                 ; preds = %bb.u, %bb.v, %bb.w
  %i.av = load i32, ptr %i.ae, align 8, !tbaa !423 ; 2 uses
  %.not.i56 = icmp sgt i32 %i.av, -1
  br i1 %.not.i56, label %bb.x, label %Py_DECREF.exit57

bb.x:                                             ; preds = %Py_DECREF.exit59
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.ae, align 8, !tbaa !423
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.y, label %Py_DECREF.exit57

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #16
  br label %Py_DECREF.exit57

Py_DECREF.exit57:                                 ; preds = %Py_DECREF.exit59, %bb.x, %bb.y
  %i.ay = load i32, ptr %i.j, align 8, !tbaa !423 ; 2 uses
  %.not.i = icmp sgt i32 %i.ay, -1
  br i1 %.not.i, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %Py_DECREF.exit57
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.j, align 8, !tbaa !423
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.aa, label %Py_DECREF.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #16
  br label %Py_DECREF.exit

.sink.split:                                      ; preds = %bb.p, %bb.h, %bb.e
  %.str.22.sink = phi ptr [ @.str.23, %bb.h ], [ @.str.22, %bb.e ], [ @.str.24, %bb.p ]
  %.1.ph = phi ptr [ null, %bb.h ], [ null, %bb.e ], [ %i.v, %bb.p ]
  %.033.ph = phi ptr [ %i.q, %bb.h ], [ null, %bb.e ], [ %i.ae, %bb.p ]
  %.032.ph = phi ptr [ null, %bb.h ], [ null, %bb.e ], [ %i.t, %bb.p ]
  %i.bb = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !429
  tail call void @PyErr_SetString(ptr noundef %i.bb, ptr noundef nonnull %.str.22.sink) #16
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %datetime_dst.exit, %bb.i, %bb.j, %bb.o, %Py_DECREF.exit61
  %.1 = phi ptr [ %i.v, %bb.o ], [ null, %datetime_dst.exit ], [ null, %Py_DECREF.exit61 ], [ null, %bb.i ], [ null, %bb.j ], [ %.1.ph, %.sink.split ] ; 4 uses
  %.033 = phi ptr [ null, %bb.o ], [ null, %datetime_dst.exit ], [ %i.ae, %Py_DECREF.exit61 ], [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.033.ph, %.sink.split ] ; 4 uses
  %.032 = phi ptr [ %i.t, %bb.o ], [ null, %datetime_dst.exit ], [ %i.t, %Py_DECREF.exit61 ], [ null, %bb.i ], [ %i.t, %bb.j ], [ %.032.ph, %.sink.split ] ; 4 uses
  %i.bc = load i32, ptr %i.j, align 8, !tbaa !423 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i.i, label %bb.ac, label %Py_XDECREF.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.j, align 8, !tbaa !423
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ad, label %Py_XDECREF.exit

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.ab, %bb.ac, %bb.ad
  %.not.i73 = icmp eq ptr %.033, null
  br i1 %.not.i73, label %Py_XDECREF.exit75, label %bb.ae

bb.ae:                                            ; preds = %Py_XDECREF.exit
  %i.bf = load i32, ptr %.033, align 8, !tbaa !423 ; 2 uses
  %.not.i.i74 = icmp sgt i32 %i.bf, -1
  br i1 %.not.i.i74, label %bb.af, label %Py_XDECREF.exit75

bb.af:                                            ; preds = %bb.ae
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %.033, align 8, !tbaa !423
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.ag, label %Py_XDECREF.exit75

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %.033) #16
  br label %Py_XDECREF.exit75

Py_XDECREF.exit75:                                ; preds = %Py_XDECREF.exit, %bb.ae, %bb.af, %bb.ag
  %.not.i76 = icmp eq ptr %.032, null
  br i1 %.not.i76, label %Py_XDECREF.exit78, label %bb.ah

bb.ah:                                            ; preds = %Py_XDECREF.exit75
  %i.bi = load i32, ptr %.032, align 8, !tbaa !423 ; 2 uses
  %.not.i.i77 = icmp sgt i32 %i.bi, -1
  br i1 %.not.i.i77, label %bb.ai, label %Py_XDECREF.exit78

bb.ai:                                            ; preds = %bb.ah
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %.032, align 8, !tbaa !423
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.aj, label %Py_XDECREF.exit78

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %.032) #16
  br label %Py_XDECREF.exit78

Py_XDECREF.exit78:                                ; preds = %Py_XDECREF.exit75, %bb.ah, %bb.ai, %bb.aj
  %.not.i79 = icmp eq ptr %.1, null
  br i1 %.not.i79, label %Py_DECREF.exit, label %bb.ak

bb.ak:                                            ; preds = %Py_XDECREF.exit78
  %i.bl = load i32, ptr %.1, align 8, !tbaa !423  ; 2 uses
  %.not.i.i80 = icmp sgt i32 %i.bl, -1
  br i1 %.not.i.i80, label %bb.al, label %Py_DECREF.exit

bb.al:                                            ; preds = %bb.ak
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %.1, align 8, !tbaa !423
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.am, label %Py_DECREF.exit

bb.am:                                            ; preds = %bb.al
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.am, %bb.al, %bb.ak, %Py_XDECREF.exit78, %bb.aa, %bb.z, %Py_DECREF.exit57, %datetime_utcoffset.exit, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ %.040, %bb.aa ], [ null, %datetime_utcoffset.exit ], [ %.040, %Py_DECREF.exit57 ], [ %.040, %bb.z ], [ null, %Py_XDECREF.exit78 ], [ null, %bb.ak ], [ null, %bb.al ], [ null, %bb.am ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @tzinfo_reduce(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !500 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @PyObject_GetOptionalAttr(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 65312), ptr noundef nonnull %i.a) #16
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !429  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @PyObject_CallNoArgs(ptr noundef nonnull %i.d) #16 ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !429  ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !423  ; 2 uses
  %.not.i12 = icmp sgt i32 %i.g, -1
  br i1 %.not.i12, label %bb.d, label %Py_DECREF.exit13

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !423
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit13

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #16
  br label %Py_DECREF.exit13

bb.f:                                             ; preds = %bb.b
  %i.j = call ptr @PyTuple_New(i64 noundef 0) #16
  br label %Py_DECREF.exit13

Py_DECREF.exit13:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %.0 = phi ptr [ %i.j, %bb.f ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ] ; 5 uses
  %i.k = icmp eq ptr %.0, null
  br i1 %i.k, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit13
  %i.l = call ptr @_PyObject_GetState(ptr noundef %0) #16 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr %.0, align 8, !tbaa !423   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %.0, align 8, !tbaa !423
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.q, align 8, !tbaa !430
  %i.r = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.31, ptr noundef %.val, ptr noundef nonnull %.0, ptr noundef nonnull %i.l) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit13, %bb.a, %bb.k
  %.09 = phi ptr [ %i.r, %bb.k ], [ null, %bb.a ], [ null, %Py_DECREF.exit13 ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.09
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @datetime_utcoffset(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !501 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !442
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !436
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  %i.f = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.e, ptr noundef nonnull @.str.10, ptr noundef nonnull %0)
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_dst(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !502 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !442
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !436
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  %i.f = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.e, ptr noundef nonnull @.str.12, ptr noundef nonnull %0)
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal ptr @delta_subtract(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 !guid !503 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i = icmp eq ptr %.val14, @PyDateTime_DeltaType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not25 = icmp eq i32 %i.b, 0
  br i1 %.not25, label %new_delta_ex.exit.thread22, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !430 ; 2 uses
  %.not.i15 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i15, label %PyObject_TypeCheck.exit16.thread, label %PyObject_TypeCheck.exit16

PyObject_TypeCheck.exit16:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %new_delta_ex.exit.thread22, label %PyObject_TypeCheck.exit16.thread

PyObject_TypeCheck.exit16.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit16
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !420
  %i.g = getelementptr i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !420
  %i.i = sub i32 %i.f, %i.h                       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !421
  %i.l = getelementptr i8, ptr %1, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !421
  %i.n = sub i32 %i.k, %i.m                       ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !422
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !422
  %i.s = sub i32 %i.p, %i.r                       ; 4 uses
  %or.cond.i.i = icmp ugt i32 %i.s, 999999
  br i1 %or.cond.i.i, label %normalize_pair.exit.i.i, label %._crit_edge.i.i

normalize_pair.exit.i.i:                          ; preds = %PyObject_TypeCheck.exit16.thread
  %i.t = sdiv i32 %i.s, 1000000                   ; 2 uses
  %.neg.i.i = mul nsw i32 %i.t, -1000000
  %i.u = add i32 %.neg.i.i, %i.s                  ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = select i1 %i.v, i32 1000000, i32 0
  %storemerge.i.i.i.i = add nsw i32 %i.w, %i.u
  %.lobit.i.i.i.i = ashr i32 %i.u, 31
  %.0.i.i.i.i = add i32 %i.t, %i.n
  %i.x = add i32 %.0.i.i.i.i, %.lobit.i.i.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %normalize_pair.exit.i.i, %PyObject_TypeCheck.exit16.thread
  %.131.i = phi i32 [ %i.x, %normalize_pair.exit.i.i ], [ %i.n, %PyObject_TypeCheck.exit16.thread ] ; 4 uses
  %.1.i = phi i32 [ %storemerge.i.i.i.i, %normalize_pair.exit.i.i ], [ %i.s, %PyObject_TypeCheck.exit16.thread ] ; 2 uses
  %or.cond9.i.i = icmp ugt i32 %.131.i, 86399
  br i1 %or.cond9.i.i, label %normalize_pair.exit14.i.i, label %normalize_d_s_us.exit.i

normalize_pair.exit14.i.i:                        ; preds = %._crit_edge.i.i
  %i.y = sdiv i32 %.131.i, 86400                  ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.y, -86400
  %i.z = add i32 %.neg15.i.i, %.131.i             ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = select i1 %i.aa, i32 86400, i32 0
  %storemerge.i.i11.i.i = add nsw i32 %i.ab, %i.z
  %.lobit.i.i12.i.i = ashr i32 %i.z, 31
  %.0.i.i13.i.i = add i32 %i.y, %i.i
  %i.ac = add i32 %.0.i.i13.i.i, %.lobit.i.i12.i.i
  br label %normalize_d_s_us.exit.i

normalize_d_s_us.exit.i:                          ; preds = %normalize_pair.exit14.i.i, %._crit_edge.i.i
  %.032.i = phi i32 [ %i.i, %._crit_edge.i.i ], [ %i.ac, %normalize_pair.exit14.i.i ] ; 4 uses
  %.030.i = phi i32 [ %.131.i, %._crit_edge.i.i ], [ %storemerge.i.i11.i.i, %normalize_pair.exit14.i.i ] ; 2 uses
  %i.ad = add i32 %.032.i, 999999999
  %or.cond.i16.i = icmp ult i32 %i.ad, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %normalize_d_s_us.exit.i
  %i.ae = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !429
  %i.af = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ae, ptr noundef nonnull @.str.71, i32 noundef %.032.i, i32 noundef 999999999) #16, !inline_history !417 ; 0 uses
  br label %Py_INCREF.exit

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i
  %i.ag = or i32 %.032.i, %.1.i
  %i.ah = or i32 %i.ag, %.030.i
  %or.cond3.i.i = icmp ne i32 %i.ah, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.ai = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.ai
  br i1 %or.cond.i17.not.i, label %bb.b, label %Py_INCREF.exit

bb.b:                                             ; preds = %check_delta_day_range.exit.i
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !416
  %i.ak = tail call ptr %i.aj(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !417 ; 8 uses
  %.not15.i = icmp eq ptr %i.ak, null
  br i1 %.not15.i, label %Py_INCREF.exit, label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %bb.b
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  store i64 -1, ptr %i.al, align 8, !tbaa !419
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  store i32 %.032.i, ptr %i.am, align 8, !tbaa !420
  %i.an = getelementptr i8, ptr %i.ak, i64 28
  store i32 %.030.i, ptr %i.an, align 4, !tbaa !421
  %i.ao = getelementptr i8, ptr %i.ak, i64 32
  store i32 %.1.i, ptr %i.ao, align 8, !tbaa !422
  %i.ap = icmp eq ptr %i.ak, @_Py_NotImplementedStruct
  br i1 %i.ap, label %new_delta_ex.exit.thread22, label %Py_INCREF.exit

new_delta_ex.exit.thread22:                       ; preds = %PyObject_TypeCheck.exit16, %PyObject_TypeCheck.exit, %new_delta_ex.exit
  %.024 = phi ptr [ %i.ak, %new_delta_ex.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit16 ] ; 4 uses
  %i.aq = load i32, ptr %.024, align 8, !tbaa !423 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %Py_INCREF.exit, label %bb.c

bb.c:                                             ; preds = %new_delta_ex.exit.thread22
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr %.024, align 8, !tbaa !423
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.b, %check_delta_day_range.exit.thread.i, %check_delta_day_range.exit.i, %bb.c, %new_delta_ex.exit.thread22, %new_delta_ex.exit
  %.020 = phi ptr [ %.024, %bb.c ], [ %i.ak, %new_delta_ex.exit ], [ %.024, %new_delta_ex.exit.thread22 ], [ null, %bb.b ], [ null, %check_delta_day_range.exit.thread.i ], [ @zero_delta, %check_delta_day_range.exit.i ]
  ret ptr %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @add_datetime_timedelta(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #0 !guid !505 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !423
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %0, i64 26
  %i.i = load i8, ptr %i.h, align 1, !tbaa !423
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  store i32 %i.k, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.l = getelementptr i8, ptr %0, i64 27
  %i.m = load i8, ptr %i.l, align 1, !tbaa !423
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !423
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !420
  %i.t = mul i32 %i.s, %2
  %i.u = add i32 %i.t, %i.q                       ; 2 uses
  store i32 %i.u, ptr %i.c, align 4, !tbaa !15
  %i.v = getelementptr i8, ptr %0, i64 29
  %i.w = load i8, ptr %i.v, align 1, !tbaa !423
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 30
  %i.z = load i8, ptr %i.y, align 1, !tbaa !423
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 31
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !423
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr i8, ptr %1, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !421
  %i.ag = mul i32 %i.af, %2
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 32
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !423
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = getelementptr i8, ptr %0, i64 33
  %i.an = load i8, ptr %i.am, align 1, !tbaa !423
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = or disjoint i32 %i.ap, %i.al
  %i.ar = getelementptr i8, ptr %0, i64 34
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !423
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.aq, %i.at
  %i.av = getelementptr i8, ptr %1, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !422
  %i.ax = mul i32 %i.aw, %2
  %i.ay = add i32 %i.au, %i.ax                    ; 4 uses
  %or.cond.i.i = icmp ult i32 %i.ay, 1000000
  br i1 %or.cond.i.i, label %normalize_pair.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.az = sdiv i32 %i.ay, 1000000                 ; 2 uses
  %.neg.i = mul nsw i32 %i.az, -1000000
  %i.ba = add i32 %.neg.i, %i.ay                  ; 3 uses
  %i.bb = icmp slt i32 %i.ba, 0
  %i.bc = select i1 %i.bb, i32 1000000, i32 0
  %storemerge.i.i.i = add nsw i32 %i.bc, %i.ba
  %.lobit.i.i.i = ashr i32 %i.ba, 31
  %.0.i.i.i = add i32 %i.az, %i.ah
  %i.bd = add i32 %.0.i.i.i, %.lobit.i.i.i
  br label %normalize_pair.exit.i

normalize_pair.exit.i:                            ; preds = %bb.a, %bb.b
  %.030 = phi i32 [ %i.bd, %bb.b ], [ %i.ah, %bb.a ] ; 4 uses
  %.029 = phi i32 [ %storemerge.i.i.i, %bb.b ], [ %i.ay, %bb.a ] ; 2 uses
  %or.cond.i11.i = icmp ult i32 %.030, 60
  br i1 %or.cond.i11.i, label %normalize_pair.exit15.i, label %bb.c

bb.c:                                             ; preds = %normalize_pair.exit.i
  %i.be = sdiv i32 %.030, 60                      ; 2 uses
  %.neg28.i = mul nsw i32 %i.be, -60
  %i.bf = add i32 %.neg28.i, %.030                ; 3 uses
  %i.bg = icmp slt i32 %i.bf, 0
  %i.bh = select i1 %i.bg, i32 60, i32 0
  %storemerge.i.i12.i = add nsw i32 %i.bh, %i.bf
  %.lobit.i.i13.i = ashr i32 %i.bf, 31
  %.0.i.i14.i = add nsw i32 %i.be, %i.aa
  %i.bi = add nsw i32 %.0.i.i14.i, %.lobit.i.i13.i
  br label %normalize_pair.exit15.i

normalize_pair.exit15.i:                          ; preds = %normalize_pair.exit.i, %bb.c
  %.031 = phi i32 [ %i.bi, %bb.c ], [ %i.aa, %normalize_pair.exit.i ] ; 4 uses
  %.1 = phi i32 [ %storemerge.i.i12.i, %bb.c ], [ %.030, %normalize_pair.exit.i ] ; 2 uses
  %or.cond.i16.i = icmp ult i32 %.031, 60
  br i1 %or.cond.i16.i, label %normalize_pair.exit20.i, label %bb.d

bb.d:                                             ; preds = %normalize_pair.exit15.i
  %i.bj = sdiv i32 %.031, 60                      ; 2 uses
  %.neg29.i = mul nsw i32 %i.bj, -60
  %i.bk = add nsw i32 %.neg29.i, %.031            ; 3 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = select i1 %i.bl, i32 60, i32 0
  %storemerge.i.i17.i = add nsw i32 %i.bm, %i.bk
  %.lobit.i.i18.i = ashr i32 %i.bk, 31
  %.0.i.i19.i = add nsw i32 %i.bj, %i.x
  %i.bn = add nsw i32 %.0.i.i19.i, %.lobit.i.i18.i
  br label %normalize_pair.exit20.i

normalize_pair.exit20.i:                          ; preds = %normalize_pair.exit15.i, %bb.d
  %.033 = phi i32 [ %i.bn, %bb.d ], [ %i.x, %normalize_pair.exit15.i ] ; 4 uses
  %.132 = phi i32 [ %storemerge.i.i17.i, %bb.d ], [ %.031, %normalize_pair.exit15.i ] ; 2 uses
  %or.cond.i21.i = icmp ult i32 %.033, 24
  br i1 %or.cond.i21.i, label %normalize_datetime.exit, label %bb.e

bb.e:                                             ; preds = %normalize_pair.exit20.i
  %i.bo = sdiv i32 %.033, 24                      ; 2 uses
  %.neg30.i = mul nsw i32 %i.bo, -24
  %i.bp = add nsw i32 %.neg30.i, %.033            ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 0
  %i.br = select i1 %i.bq, i32 24, i32 0
  %storemerge.i.i22.i = add nsw i32 %i.br, %i.bp
  %.lobit.i.i23.i = ashr i32 %i.bp, 31
  %.0.i.i24.i = add i32 %i.bo, %i.u
  %i.bs = add i32 %.0.i.i24.i, %.lobit.i.i23.i
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !15
  br label %normalize_datetime.exit

normalize_datetime.exit:                          ; preds = %normalize_pair.exit20.i, %bb.e
  %.134 = phi i32 [ %.033, %normalize_pair.exit20.i ], [ %storemerge.i.i22.i, %bb.e ] ; 2 uses
  %i.bt = call fastcc range(i32 -1, 1) i32 @normalize_date(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %new_datetime_subclass_ex.exit, label %bb.f

bb.f:                                             ; preds = %normalize_datetime.exit
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !15  ; 2 uses
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !15  ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 24
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !442
  %.not = icmp eq i8 %i.bz, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr i8, ptr %0, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !436
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.cc = phi ptr [ %i.cb, %bb.g ], [ @_Py_NoneStruct, %bb.f ] ; 2 uses
  %i.cd = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.cd, align 8, !tbaa !430 ; 2 uses
  %i.ce = icmp eq ptr %.val, @PyDateTime_DateTimeType
  br i1 %i.ce, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cf = tail call ptr @new_datetime_ex2(i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef %i.bx, i32 noundef %.134, i32 noundef %.132, i32 noundef %.1, i32 noundef %.029, ptr noundef %i.cc, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !504
  br label %new_datetime_subclass_ex.exit

bb.j:                                             ; preds = %bb.h
  %i.cg = tail call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %.val, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef %i.bx, i32 noundef %.134, i32 noundef %.132, i32 noundef %.1, i32 noundef %.029, ptr noundef %i.cc), !inline_history !504
  br label %new_datetime_subclass_ex.exit

new_datetime_subclass_ex.exit:                    ; preds = %bb.j, %bb.i, %normalize_datetime.exit
  %.0 = phi ptr [ null, %normalize_datetime.exit ], [ %i.cf, %bb.i ], [ %i.cg, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @delta_bool(ptr nofree noundef readonly captures(none) %0) #4 !guid !506 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !420
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !421
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !422
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = phi i32 [ 1, %bb.b ], [ 1, %bb.a ], [ %i.h, %bb.c ]
  ret i32 %i.i
end_hunk_0
begin_hunk_1_@delta_new:bb.a
bb.bg:                                            ; preds = %bb.bf, %bb.aw
  %.073.i = phi double [ %i.dj, %bb.bf ], [ %i.cn, %bb.aw ]
  %i.dk = fptosi double %.073.i to i64
  %i.dl = call ptr @PyLong_FromLong(i64 noundef %i.dk) #16, !inline_history !515 ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.dn = load i32, ptr %.6.i, align 8, !tbaa !423 ; 2 uses
  %.not.i111.i = icmp sgt i32 %i.dn, -1
  br i1 %.not.i111.i, label %bb.bi, label %Py_DECREF.exit106.i

bb.bi:                                            ; preds = %bb.bh
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %.6.i, align 8, !tbaa !423
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %Py_DECREF.exit106.sink.split.i, label %Py_DECREF.exit106.i

bb.bj:                                            ; preds = %bb.bg
  %i.dq = call ptr @PyNumber_Add(ptr noundef nonnull %.6.i, ptr noundef nonnull %i.dl) #16, !inline_history !515 ; 2 uses
  %i.dr = load i32, ptr %i.dl, align 8, !tbaa !423 ; 2 uses
  %.not.i109.i = icmp sgt i32 %i.dr, -1
  br i1 %.not.i109.i, label %bb.bk, label %Py_DECREF.exit110.i

bb.bk:                                            ; preds = %bb.bj
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dl, align 8, !tbaa !423
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.bl, label %Py_DECREF.exit110.i

bb.bl:                                            ; preds = %bb.bk
  call void @_Py_Dealloc(ptr noundef nonnull %i.dl) #16, !inline_history !515
  br label %Py_DECREF.exit110.i

Py_DECREF.exit110.i:                              ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.du = load i32, ptr %.6.i, align 8, !tbaa !423 ; 2 uses
  %.not.i107.i = icmp sgt i32 %i.du, -1
  br i1 %.not.i107.i, label %bb.bm, label %Py_DECREF.exit108.i

bb.bm:                                            ; preds = %Py_DECREF.exit110.i
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %.6.i, align 8, !tbaa !423
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.bn, label %Py_DECREF.exit108.i

bb.bn:                                            ; preds = %bb.bm
  call void @_Py_Dealloc(ptr noundef nonnull %.6.i) #16, !inline_history !515
  br label %Py_DECREF.exit108.i

Py_DECREF.exit108.i:                              ; preds = %bb.bn, %bb.bm, %Py_DECREF.exit110.i
  %i.dx = icmp eq ptr %i.dq, null
  br i1 %i.dx, label %Py_DECREF.exit106.i, label %Py_DECREF.exit118.i

Py_DECREF.exit118.i:                              ; preds = %Py_DECREF.exit108.i, %bb.av
  %.8.i = phi ptr [ %.6.i, %bb.av ], [ %i.dq, %Py_DECREF.exit108.i ] ; 4 uses
  %i.dy = call fastcc ptr @microseconds_to_delta_ex(ptr noundef nonnull %.8.i, ptr noundef %0), !inline_history !515 ; 3 uses
  %i.dz = load i32, ptr %.8.i, align 8, !tbaa !423 ; 2 uses
  %.not.i105.i = icmp sgt i32 %i.dz, -1
  br i1 %.not.i105.i, label %bb.bo, label %Py_DECREF.exit106.i

bb.bo:                                            ; preds = %Py_DECREF.exit118.i
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %.8.i, align 8, !tbaa !423
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %Py_DECREF.exit106.sink.split.i, label %Py_DECREF.exit106.i

Py_DECREF.exit106.sink.split.i:                   ; preds = %bb.bo, %bb.bi, %bb.be, %bb.az
  %.6.sink.i = phi ptr [ %.6.i, %bb.be ], [ %.6.i, %bb.az ], [ %.6.i, %bb.bi ], [ %.8.i, %bb.bo ]
  %.075.ph.i = phi ptr [ null, %bb.be ], [ null, %bb.az ], [ null, %bb.bi ], [ %i.dy, %bb.bo ]
  call void @_Py_Dealloc(ptr noundef nonnull %.6.sink.i) #16, !inline_history !515
  br label %Py_DECREF.exit106.i

Py_DECREF.exit106.i:                              ; preds = %Py_DECREF.exit106.sink.split.i, %bb.bo, %Py_DECREF.exit118.i, %Py_DECREF.exit108.i, %bb.bi, %bb.bh, %bb.be, %bb.bd, %bb.az, %bb.ay, %Py_DECREF.exit120.i, %Py_DECREF.exit122.i, %Py_DECREF.exit124.i, %Py_DECREF.exit126.i, %Py_DECREF.exit128.i, %Py_DECREF.exit130.i, %Py_DECREF.exit132.i, %_get_current_state.exit.i
  %.075.i = phi ptr [ null, %_get_current_state.exit.i ], [ null, %Py_DECREF.exit132.i ], [ null, %Py_DECREF.exit130.i ], [ null, %Py_DECREF.exit128.i ], [ null, %Py_DECREF.exit126.i ], [ null, %Py_DECREF.exit124.i ], [ null, %Py_DECREF.exit122.i ], [ null, %Py_DECREF.exit120.i ], [ null, %bb.bh ], [ %i.dy, %Py_DECREF.exit118.i ], [ %i.dy, %bb.bo ], [ null, %bb.bi ], [ null, %Py_DECREF.exit108.i ], [ null, %bb.ay ], [ null, %bb.az ], [ null, %bb.bd ], [ null, %bb.be ], [ %.075.ph.i, %Py_DECREF.exit106.sink.split.i ]
  %i.ec = load i32, ptr %.0148.i, align 8, !tbaa !423 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ec, -1
  br i1 %.not.i.i, label %bb.bp, label %delta_new_impl.exit

bb.bp:                                            ; preds = %Py_DECREF.exit106.i
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %.0148.i, align 8, !tbaa !423
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bq, label %delta_new_impl.exit

bb.bq:                                            ; preds = %bb.bp
  call void @_Py_Dealloc(ptr noundef nonnull %.0148.i) #16, !inline_history !515
  br label %delta_new_impl.exit

delta_new_impl.exit:                              ; preds = %Py_DECREF.exit106.i, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.br

bb.br:                                            ; preds = %bb.c, %delta_new_impl.exit
  %.061 = phi ptr [ %.075.i, %delta_new_impl.exit ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret ptr %.061
}

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @delta_add(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 !guid !517 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i = icmp eq ptr %.val14, @PyDateTime_DeltaType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not25 = icmp eq i32 %i.b, 0
  br i1 %.not25, label %new_delta_ex.exit.thread22, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !430 ; 2 uses
  %.not.i15 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i15, label %PyObject_TypeCheck.exit16.thread, label %PyObject_TypeCheck.exit16

PyObject_TypeCheck.exit16:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %new_delta_ex.exit.thread22, label %PyObject_TypeCheck.exit16.thread

PyObject_TypeCheck.exit16.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit16
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !420
  %i.g = getelementptr i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !420
  %i.i = add i32 %i.h, %i.f                       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !421
  %i.l = getelementptr i8, ptr %1, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !421
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !422
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !422
  %i.s = add i32 %i.r, %i.p                       ; 4 uses
  %or.cond.i.i = icmp ugt i32 %i.s, 999999
  br i1 %or.cond.i.i, label %normalize_pair.exit.i.i, label %._crit_edge.i.i

normalize_pair.exit.i.i:                          ; preds = %PyObject_TypeCheck.exit16.thread
  %i.t = sdiv i32 %i.s, 1000000                   ; 2 uses
  %.neg.i.i = mul nsw i32 %i.t, -1000000
  %i.u = add i32 %.neg.i.i, %i.s                  ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = select i1 %i.v, i32 1000000, i32 0
  %storemerge.i.i.i.i = add nsw i32 %i.w, %i.u
  %.lobit.i.i.i.i = ashr i32 %i.u, 31
  %.0.i.i.i.i = add i32 %i.t, %i.n
  %i.x = add i32 %.0.i.i.i.i, %.lobit.i.i.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %normalize_pair.exit.i.i, %PyObject_TypeCheck.exit16.thread
  %.131.i = phi i32 [ %i.x, %normalize_pair.exit.i.i ], [ %i.n, %PyObject_TypeCheck.exit16.thread ] ; 4 uses
  %.1.i = phi i32 [ %storemerge.i.i.i.i, %normalize_pair.exit.i.i ], [ %i.s, %PyObject_TypeCheck.exit16.thread ] ; 2 uses
  %or.cond9.i.i = icmp ugt i32 %.131.i, 86399
  br i1 %or.cond9.i.i, label %normalize_pair.exit14.i.i, label %normalize_d_s_us.exit.i

normalize_pair.exit14.i.i:                        ; preds = %._crit_edge.i.i
  %i.y = sdiv i32 %.131.i, 86400                  ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.y, -86400
  %i.z = add i32 %.neg15.i.i, %.131.i             ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  %i.ab = select i1 %i.aa, i32 86400, i32 0
  %storemerge.i.i11.i.i = add nsw i32 %i.ab, %i.z
  %.lobit.i.i12.i.i = ashr i32 %i.z, 31
  %.0.i.i13.i.i = add i32 %i.y, %i.i
  %i.ac = add i32 %.0.i.i13.i.i, %.lobit.i.i12.i.i
  br label %normalize_d_s_us.exit.i

normalize_d_s_us.exit.i:                          ; preds = %normalize_pair.exit14.i.i, %._crit_edge.i.i
  %.032.i = phi i32 [ %i.i, %._crit_edge.i.i ], [ %i.ac, %normalize_pair.exit14.i.i ] ; 4 uses
  %.030.i = phi i32 [ %.131.i, %._crit_edge.i.i ], [ %storemerge.i.i11.i.i, %normalize_pair.exit14.i.i ] ; 2 uses
  %i.ad = add i32 %.032.i, 999999999
  %or.cond.i16.i = icmp ult i32 %i.ad, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %normalize_d_s_us.exit.i
  %i.ae = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !429
  %i.af = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ae, ptr noundef nonnull @.str.71, i32 noundef %.032.i, i32 noundef 999999999) #16, !inline_history !417 ; 0 uses
  br label %Py_INCREF.exit

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i
  %i.ag = or i32 %.032.i, %.1.i
  %i.ah = or i32 %i.ag, %.030.i
  %or.cond3.i.i = icmp ne i32 %i.ah, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.ai = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.ai
  br i1 %or.cond.i17.not.i, label %bb.b, label %Py_INCREF.exit

bb.b:                                             ; preds = %check_delta_day_range.exit.i
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !416
  %i.ak = tail call ptr %i.aj(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !417 ; 8 uses
  %.not15.i = icmp eq ptr %i.ak, null
  br i1 %.not15.i, label %Py_INCREF.exit, label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %bb.b
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  store i64 -1, ptr %i.al, align 8, !tbaa !419
  %i.am = getelementptr i8, ptr %i.ak, i64 24
  store i32 %.032.i, ptr %i.am, align 8, !tbaa !420
  %i.an = getelementptr i8, ptr %i.ak, i64 28
  store i32 %.030.i, ptr %i.an, align 4, !tbaa !421
  %i.ao = getelementptr i8, ptr %i.ak, i64 32
  store i32 %.1.i, ptr %i.ao, align 8, !tbaa !422
  %i.ap = icmp eq ptr %i.ak, @_Py_NotImplementedStruct
  br i1 %i.ap, label %new_delta_ex.exit.thread22, label %Py_INCREF.exit

new_delta_ex.exit.thread22:                       ; preds = %PyObject_TypeCheck.exit16, %PyObject_TypeCheck.exit, %new_delta_ex.exit
  %.024 = phi ptr [ %i.ak, %new_delta_ex.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit16 ] ; 4 uses
  %i.aq = load i32, ptr %.024, align 8, !tbaa !423 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, -1073741825
  br i1 %i.ar, label %Py_INCREF.exit, label %bb.c

bb.c:                                             ; preds = %new_delta_ex.exit.thread22
  %i.as = add nuw i32 %i.aq, 1
  store i32 %i.as, ptr %.024, align 8, !tbaa !423
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.b, %check_delta_day_range.exit.thread.i, %check_delta_day_range.exit.i, %bb.c, %new_delta_ex.exit.thread22, %new_delta_ex.exit
  %.020 = phi ptr [ %.024, %bb.c ], [ %i.ak, %new_delta_ex.exit ], [ %.024, %new_delta_ex.exit.thread22 ], [ null, %bb.b ], [ null, %check_delta_day_range.exit.thread.i ], [ @zero_delta, %check_delta_day_range.exit.i ]
  ret ptr %.020
}

; Function Attrs: nounwind uwtable
define internal ptr @delta_multiply(ptr noundef %0, ptr noundef %1) #0 !guid !519 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i = icmp eq ptr %.val25, @PyDateTime_DeltaType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val25, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not44 = icmp eq i32 %i.b, 0
  br i1 %.not44, label %bb.j, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.c, align 8, !tbaa !430 ; 3 uses
  %i.d = getelementptr i8, ptr %.val20, i64 168
  %.val22 = load i64, ptr %i.d, align 8, !tbaa !463
  %i.e = and i64 %.val22, 16777216
  %.not18 = icmp eq i64 %i.e, 0
  br i1 %.not18, label %bb.i, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.f = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull readonly %0), !inline_history !518 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_INCREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyNumber_Multiply(ptr noundef nonnull %1, ptr noundef nonnull %i.f) #16, !inline_history !518 ; 5 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !423  ; 2 uses
  %.not.i12.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i12.i, label %bb.d, label %Py_DECREF.exit13.i

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.f, align 8, !tbaa !423
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit13.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #16, !inline_history !518
  br label %Py_DECREF.exit13.i

Py_DECREF.exit13.i:                               ; preds = %bb.e, %bb.d, %bb.c
  %i.l = icmp eq ptr %i.h, null
  br i1 %i.l, label %Py_INCREF.exit, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit13.i
  %i.m = tail call fastcc ptr @microseconds_to_delta_ex(ptr noundef nonnull %i.h, ptr noundef nonnull @PyDateTime_DeltaType), !inline_history !518 ; 3 uses
  %i.n = load i32, ptr %i.h, align 8, !tbaa !423  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.g, label %multiply_int_timedelta.exit

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.h, align 8, !tbaa !423
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %multiply_int_timedelta.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #16, !inline_history !518
  br label %multiply_int_timedelta.exit

bb.i:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %.not.i26 = icmp eq ptr %.val20, @PyFloat_Type
  br i1 %.not.i26, label %PyObject_TypeCheck.exit27.thread, label %PyObject_TypeCheck.exit27

PyObject_TypeCheck.exit27:                        ; preds = %bb.i
  %i.q = tail call i32 @PyType_IsSubtype(ptr noundef %.val20, ptr noundef nonnull @PyFloat_Type) #16
  %.not45 = icmp eq i32 %i.q, 0
  br i1 %.not45, label %multiply_int_timedelta.exit.thread41, label %PyObject_TypeCheck.exit27.thread

PyObject_TypeCheck.exit27.thread:                 ; preds = %bb.i, %PyObject_TypeCheck.exit27
  %i.r = tail call fastcc ptr @multiply_truedivide_timedelta_float(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %multiply_int_timedelta.exit

bb.j:                                             ; preds = %PyObject_TypeCheck.exit
  %.val = load ptr, ptr %i.a, align 8, !tbaa !430 ; 3 uses
  %i.s = getelementptr i8, ptr %.val, i64 168
  %.val21 = load i64, ptr %i.s, align 8, !tbaa !463
  %i.t = and i64 %.val21, 16777216
  %.not16 = icmp eq i64 %i.t, 0
  br i1 %.not16, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call fastcc ptr @delta_to_microseconds(ptr noundef readonly %1), !inline_history !518 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %Py_INCREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call ptr @PyNumber_Multiply(ptr noundef nonnull %0, ptr noundef nonnull %i.u) #16, !inline_history !518 ; 5 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !423  ; 2 uses
  %.not.i12.i28 = icmp sgt i32 %i.x, -1
  br i1 %.not.i12.i28, label %bb.m, label %Py_DECREF.exit13.i29

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.u, align 8, !tbaa !423
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %Py_DECREF.exit13.i29

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #16, !inline_history !518
  br label %Py_DECREF.exit13.i29

Py_DECREF.exit13.i29:                             ; preds = %bb.n, %bb.m, %bb.l
  %i.aa = icmp eq ptr %i.w, null
  br i1 %i.aa, label %Py_INCREF.exit, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit13.i29
  %i.ab = tail call fastcc ptr @microseconds_to_delta_ex(ptr noundef nonnull %i.w, ptr noundef nonnull @PyDateTime_DeltaType), !inline_history !518 ; 3 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !423 ; 2 uses
  %.not.i.i30 = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i30, label %bb.p, label %multiply_int_timedelta.exit

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !423
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.q, label %multiply_int_timedelta.exit

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #16, !inline_history !518
  br label %multiply_int_timedelta.exit

bb.r:                                             ; preds = %bb.j
  %.not.i33 = icmp eq ptr %.val, @PyFloat_Type
  br i1 %.not.i33, label %PyObject_TypeCheck.exit34.thread, label %PyObject_TypeCheck.exit34

PyObject_TypeCheck.exit34:                        ; preds = %bb.r
  %i.af = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyFloat_Type) #16
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %multiply_int_timedelta.exit.thread41, label %PyObject_TypeCheck.exit34.thread

PyObject_TypeCheck.exit34.thread:                 ; preds = %bb.r, %PyObject_TypeCheck.exit34
  %i.ag = tail call fastcc ptr @multiply_truedivide_timedelta_float(ptr noundef %1, ptr noundef nonnull %0, i32 noundef 0)
  br label %multiply_int_timedelta.exit

multiply_int_timedelta.exit:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.h, %bb.g, %bb.f, %PyObject_TypeCheck.exit34.thread, %PyObject_TypeCheck.exit27.thread
  %.0 = phi ptr [ %i.m, %bb.g ], [ %i.r, %PyObject_TypeCheck.exit27.thread ], [ %i.ab, %bb.p ], [ %i.m, %bb.h ], [ %i.ag, %PyObject_TypeCheck.exit34.thread ], [ %i.ab, %bb.q ], [ %i.ab, %bb.o ], [ %i.m, %bb.f ] ; 3 uses
  %i.ah = icmp eq ptr %.0, @_Py_NotImplementedStruct
  br i1 %i.ah, label %multiply_int_timedelta.exit.thread41, label %Py_INCREF.exit

multiply_int_timedelta.exit.thread41:             ; preds = %PyObject_TypeCheck.exit27, %PyObject_TypeCheck.exit34, %multiply_int_timedelta.exit
  %.043 = phi ptr [ %.0, %multiply_int_timedelta.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit34 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit27 ] ; 4 uses
  %i.ai = load i32, ptr %.043, align 8, !tbaa !423 ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, -1073741825
  br i1 %i.aj, label %Py_INCREF.exit, label %bb.s

bb.s:                                             ; preds = %multiply_int_timedelta.exit.thread41
  %i.ak = add nuw i32 %i.ai, 1
  store i32 %i.ak, ptr %.043, align 8, !tbaa !423
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.k, %Py_DECREF.exit13.i29, %bb.b, %Py_DECREF.exit13.i, %bb.s, %multiply_int_timedelta.exit.thread41, %multiply_int_timedelta.exit
  %.039 = phi ptr [ %.043, %bb.s ], [ %.0, %multiply_int_timedelta.exit ], [ %.043, %multiply_int_timedelta.exit.thread41 ], [ null, %Py_DECREF.exit13.i ], [ null, %bb.b ], [ null, %Py_DECREF.exit13.i29 ], [ null, %bb.k ]
  ret ptr %.039
}

; Function Attrs: nounwind uwtable
define internal ptr @delta_remainder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 !guid !520 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val31 = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i32 = icmp eq ptr %.val31, @PyDateTime_DeltaType
  br i1 %.not.i32, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val31, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not37 = icmp eq i32 %i.b, 0
  br i1 %.not37, label %Py_DECREF.exit27, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !430 ; 2 uses
  %.not.i33 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i33, label %PyObject_TypeCheck.exit34.thread, label %PyObject_TypeCheck.exit34

PyObject_TypeCheck.exit34:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %Py_DECREF.exit27, label %PyObject_TypeCheck.exit34.thread

PyObject_TypeCheck.exit34.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit34
  %i.e = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull %0) ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit27, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit34.thread
  %i.g = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull %1) ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8, !tbaa !423  ; 2 uses
  %.not.i26 = icmp sgt i32 %i.i, -1
  br i1 %.not.i26, label %bb.d, label %Py_DECREF.exit27

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !423
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit27.sink.split, label %Py_DECREF.exit27

bb.e:                                             ; preds = %bb.b
  %i.l = tail call ptr @PyNumber_Remainder(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #16 ; 5 uses
  %i.m = load i32, ptr %i.e, align 8, !tbaa !423  ; 2 uses
  %.not.i24 = icmp sgt i32 %i.m, -1
  br i1 %.not.i24, label %bb.f, label %Py_DECREF.exit25

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.e, align 8, !tbaa !423
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit25

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #16
  br label %Py_DECREF.exit25

Py_DECREF.exit25:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.p = load i32, ptr %i.g, align 8, !tbaa !423  ; 2 uses
  %.not.i22 = icmp sgt i32 %i.p, -1
  br i1 %.not.i22, label %bb.h, label %Py_DECREF.exit23

bb.h:                                             ; preds = %Py_DECREF.exit25
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !423
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit23

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #16
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %Py_DECREF.exit25, %bb.h, %bb.i
  %i.s = icmp eq ptr %i.l, null
  br i1 %i.s, label %Py_DECREF.exit27, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit23
  %i.t = tail call fastcc ptr @microseconds_to_delta_ex(ptr noundef nonnull %i.l, ptr noundef nonnull @PyDateTime_DeltaType) ; 3 uses
  %i.u = load i32, ptr %i.l, align 8, !tbaa !423  ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit27

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.l, align 8, !tbaa !423
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %Py_DECREF.exit27.sink.split, label %Py_DECREF.exit27

Py_DECREF.exit27.sink.split:                      ; preds = %bb.k, %bb.d
  %.sink = phi ptr [ %i.e, %bb.d ], [ %i.l, %bb.k ]
  %.0.ph = phi ptr [ null, %bb.d ], [ %i.t, %bb.k ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %Py_DECREF.exit27

Py_DECREF.exit27:                                 ; preds = %Py_DECREF.exit27.sink.split, %bb.k, %bb.j, %bb.d, %bb.c, %Py_DECREF.exit23, %PyObject_TypeCheck.exit34.thread, %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit34
  %.0 = phi ptr [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit34 ], [ null, %PyObject_TypeCheck.exit34.thread ], [ %i.t, %bb.k ], [ null, %Py_DECREF.exit23 ], [ null, %bb.c ], [ null, %bb.d ], [ %i.t, %bb.j ], [ %.0.ph, %Py_DECREF.exit27.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @delta_divmod(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 !guid !521 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val41 = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i42 = icmp eq ptr %.val41, @PyDateTime_DeltaType
  br i1 %.not.i42, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val41, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not47 = icmp eq i32 %i.b, 0
  br i1 %.not47, label %Py_DECREF.exit35, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !430 ; 2 uses
  %.not.i43 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i43, label %PyObject_TypeCheck.exit44.thread, label %PyObject_TypeCheck.exit44

PyObject_TypeCheck.exit44:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %Py_DECREF.exit35, label %PyObject_TypeCheck.exit44.thread

PyObject_TypeCheck.exit44.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit44
  %i.e = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull %0) ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit35, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit44.thread
  %i.g = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull %1) ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8, !tbaa !423  ; 2 uses
  %.not.i34 = icmp sgt i32 %i.i, -1
  br i1 %.not.i34, label %bb.d, label %Py_DECREF.exit35

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !423
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit35.sink.split, label %Py_DECREF.exit35

bb.e:                                             ; preds = %bb.b
  %i.l = tail call fastcc ptr @checked_divmod(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) ; 9 uses
  %i.m = load i32, ptr %i.e, align 8, !tbaa !423  ; 2 uses
  %.not.i32 = icmp sgt i32 %i.m, -1
  br i1 %.not.i32, label %bb.f, label %Py_DECREF.exit33

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.e, align 8, !tbaa !423
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit33

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #16
  br label %Py_DECREF.exit33

Py_DECREF.exit33:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.p = load i32, ptr %i.g, align 8, !tbaa !423  ; 2 uses
  %.not.i30 = icmp sgt i32 %i.p, -1
  br i1 %.not.i30, label %bb.h, label %Py_DECREF.exit31

bb.h:                                             ; preds = %Py_DECREF.exit33
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !423
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit31

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #16
  br label %Py_DECREF.exit31

Py_DECREF.exit31:                                 ; preds = %Py_DECREF.exit33, %bb.h, %bb.i
  %i.s = icmp eq ptr %i.l, null
  br i1 %i.s, label %Py_DECREF.exit35, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit31
  %i.t = getelementptr i8, ptr %i.l, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !429
  %i.v = tail call fastcc ptr @microseconds_to_delta_ex(ptr noundef %i.u, ptr noundef nonnull @PyDateTime_DeltaType) ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %i.l, align 8, !tbaa !423  ; 2 uses
  %.not.i28 = icmp sgt i32 %i.x, -1
  br i1 %.not.i28, label %bb.l, label %Py_DECREF.exit35

bb.l:                                             ; preds = %bb.k
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
end_hunk_1
begin_hunk_2_@delta_negative:bb.a
  br i1 %.not15.i, label %new_delta_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  store i64 -1, ptr %i.ab, align 8, !tbaa !419
  %i.ac = getelementptr i8, ptr %i.aa, i64 24
  store i32 %.032.i, ptr %i.ac, align 8, !tbaa !420
  %i.ad = getelementptr i8, ptr %i.aa, i64 28
  store i32 %.030.i, ptr %i.ad, align 4, !tbaa !421
  %i.ae = getelementptr i8, ptr %i.aa, i64 32
  store i32 %.1.i, ptr %i.ae, align 8, !tbaa !422
  br label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %check_delta_day_range.exit.thread.i, %check_delta_day_range.exit.i, %bb.b, %bb.c
  %.0.i = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ null, %check_delta_day_range.exit.thread.i ], [ %i.aa, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @delta_positive(ptr nofree noundef readonly captures(none) %0) #0 !guid !523 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !420  ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !421  ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !422  ; 2 uses
  %i.g = add i32 %i.b, 999999999
  %or.cond.i16.i = icmp ult i32 %i.g, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !429
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.71, i32 noundef %i.b, i32 noundef 999999999) #16, !inline_history !417 ; 0 uses
  br label %new_delta_ex.exit

check_delta_day_range.exit.i:                     ; preds = %bb.a
  %i.j = or i32 %i.d, %i.b
  %i.k = or i32 %i.j, %i.f
  %or.cond3.i.i = icmp ne i32 %i.k, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.l = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.l
  br i1 %or.cond.i17.not.i, label %bb.b, label %new_delta_ex.exit

bb.b:                                             ; preds = %check_delta_day_range.exit.i
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !416
  %i.n = tail call ptr %i.m(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !417 ; 6 uses
  %.not15.i = icmp eq ptr %i.n, null
  br i1 %.not15.i, label %new_delta_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store i64 -1, ptr %i.o, align 8, !tbaa !419
  %i.p = getelementptr i8, ptr %i.n, i64 24
  store i32 %i.b, ptr %i.p, align 8, !tbaa !420
  %i.q = getelementptr i8, ptr %i.n, i64 28
  store i32 %i.d, ptr %i.q, align 4, !tbaa !421
  %i.r = getelementptr i8, ptr %i.n, i64 32
  store i32 %i.f, ptr %i.r, align 8, !tbaa !422
  br label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %check_delta_day_range.exit.thread.i, %check_delta_day_range.exit.i, %bb.b, %bb.c
  %.0.i = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ null, %check_delta_day_range.exit.thread.i ], [ %i.n, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @delta_abs(ptr nofree noundef readonly captures(none) %0) #0 !guid !524 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !420  ; 5 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @delta_negative(ptr noundef nonnull %0)
  br label %delta_positive.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !421  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !422  ; 2 uses
  %or.cond.i16.i.i = icmp samesign ult i32 %i.b, 1000000000
  br i1 %or.cond.i16.i.i, label %check_delta_day_range.exit.i.i, label %check_delta_day_range.exit.thread.i.i

check_delta_day_range.exit.thread.i.i:            ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !429
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.71, i32 noundef %i.b, i32 noundef 999999999) #16, !inline_history !525 ; 0 uses
  br label %delta_positive.exit

check_delta_day_range.exit.i.i:                   ; preds = %bb.c
  %i.k = or i32 %i.f, %i.b
  %i.l = or i32 %i.k, %i.h
  %or.cond3.i.i.i = icmp ne i32 %i.l, 0
  %zero_delta.val.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.m = icmp ne ptr %zero_delta.val.i.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i.i = select i1 %or.cond3.i.i.i, i1 true, i1 %i.m
  br i1 %or.cond.i17.not.i.i, label %bb.d, label %delta_positive.exit

bb.d:                                             ; preds = %check_delta_day_range.exit.i.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !416
  %i.o = tail call ptr %i.n(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !525 ; 6 uses
  %.not15.i.i = icmp eq ptr %i.o, null
  br i1 %.not15.i.i, label %delta_positive.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i64 -1, ptr %i.p, align 8, !tbaa !419
  %i.q = getelementptr i8, ptr %i.o, i64 24
  store i32 %i.b, ptr %i.q, align 8, !tbaa !420
  %i.r = getelementptr i8, ptr %i.o, i64 28
  store i32 %i.f, ptr %i.r, align 4, !tbaa !421
  %i.s = getelementptr i8, ptr %i.o, i64 32
  store i32 %i.h, ptr %i.s, align 8, !tbaa !422
  br label %delta_positive.exit

delta_positive.exit:                              ; preds = %bb.e, %bb.d, %check_delta_day_range.exit.i.i, %check_delta_day_range.exit.thread.i.i, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ @zero_delta, %check_delta_day_range.exit.i.i ], [ null, %check_delta_day_range.exit.thread.i.i ], [ %i.o, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @delta_divide(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 !guid !527 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i = icmp eq ptr %.val14, @PyDateTime_DeltaType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not25 = icmp eq i32 %i.b, 0
  br i1 %.not25, label %divide_timedelta_int.exit.thread, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !430 ; 3 uses
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.d, align 8, !tbaa !463
  %i.e = and i64 %.val12, 16777216
  %.not10 = icmp eq i64 %i.e, 0
  br i1 %.not10, label %bb.i, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.f = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull readonly %0), !inline_history !526 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %Py_INCREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyNumber_FloorDivide(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #16, !inline_history !526 ; 5 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !423  ; 2 uses
  %.not.i12.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i12.i, label %bb.d, label %Py_DECREF.exit13.i

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.f, align 8, !tbaa !423
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit13.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #16, !inline_history !526
  br label %Py_DECREF.exit13.i

Py_DECREF.exit13.i:                               ; preds = %bb.e, %bb.d, %bb.c
  %i.l = icmp eq ptr %i.h, null
  br i1 %i.l, label %Py_INCREF.exit, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit13.i
  %i.m = tail call fastcc ptr @microseconds_to_delta_ex(ptr noundef nonnull %i.h, ptr noundef nonnull @PyDateTime_DeltaType), !inline_history !526 ; 3 uses
  %i.n = load i32, ptr %i.h, align 8, !tbaa !423  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i, label %bb.g, label %divide_timedelta_int.exit

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.h, align 8, !tbaa !423
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %divide_timedelta_int.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #16, !inline_history !526
  br label %divide_timedelta_int.exit

bb.i:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %.not.i15 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i15, label %PyObject_TypeCheck.exit16.thread, label %PyObject_TypeCheck.exit16

PyObject_TypeCheck.exit16:                        ; preds = %bb.i
  %i.q = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %divide_timedelta_int.exit.thread, label %PyObject_TypeCheck.exit16.thread

PyObject_TypeCheck.exit16.thread:                 ; preds = %bb.i, %PyObject_TypeCheck.exit16
  %i.r = tail call fastcc ptr @divide_timedelta_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %divide_timedelta_int.exit

divide_timedelta_int.exit:                        ; preds = %bb.h, %bb.g, %bb.f, %PyObject_TypeCheck.exit16.thread
  %.0 = phi ptr [ %i.m, %bb.g ], [ %i.r, %PyObject_TypeCheck.exit16.thread ], [ %i.m, %bb.h ], [ %i.m, %bb.f ] ; 3 uses
  %i.s = icmp eq ptr %.0, @_Py_NotImplementedStruct
  br i1 %i.s, label %divide_timedelta_int.exit.thread, label %Py_INCREF.exit

divide_timedelta_int.exit.thread:                 ; preds = %PyObject_TypeCheck.exit16, %PyObject_TypeCheck.exit, %divide_timedelta_int.exit
  %.021 = phi ptr [ %.0, %divide_timedelta_int.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit16 ] ; 4 uses
  %i.t = load i32, ptr %.021, align 8, !tbaa !423 ; 2 uses
  %i.u = icmp ugt i32 %i.t, -1073741825
  br i1 %i.u, label %Py_INCREF.exit, label %bb.j

bb.j:                                             ; preds = %divide_timedelta_int.exit.thread
  %i.v = add nuw i32 %i.t, 1
  store i32 %i.v, ptr %.021, align 8, !tbaa !423
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.b, %Py_DECREF.exit13.i, %bb.j, %divide_timedelta_int.exit.thread, %divide_timedelta_int.exit
  %.020 = phi ptr [ %.021, %bb.j ], [ %.0, %divide_timedelta_int.exit ], [ %.021, %divide_timedelta_int.exit.thread ], [ null, %Py_DECREF.exit13.i ], [ null, %bb.b ]
  ret ptr %.020
}

; Function Attrs: nounwind uwtable
define internal ptr @delta_truedivide(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 !guid !529 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val19 = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i = icmp eq ptr %.val19, @PyDateTime_DeltaType
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val19, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not35 = icmp eq i32 %i.b, 0
  br i1 %.not35, label %truedivide_timedelta_timedelta.exit.thread32, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val18 = load ptr, ptr %i.c, align 8, !tbaa !430 ; 2 uses
  %.not.i20 = icmp eq ptr %.val18, @PyDateTime_DeltaType
  br i1 %.not.i20, label %PyObject_TypeCheck.exit21.thread, label %PyObject_TypeCheck.exit21

PyObject_TypeCheck.exit21:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val18, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %PyObject_TypeCheck.exit21.thread

PyObject_TypeCheck.exit21.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit21
  %i.e = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull readonly %0) ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_INCREF.exit, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit21.thread
  %i.g = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull readonly %1) ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.e, align 8, !tbaa !423  ; 2 uses
  %.not.i15.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i15.i, label %bb.d, label %Py_INCREF.exit

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.e, align 8, !tbaa !423
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit16.sink.split.i, label %Py_INCREF.exit

bb.e:                                             ; preds = %bb.b
  %i.l = tail call ptr @PyNumber_TrueDivide(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g) #16 ; 3 uses
  %i.m = load i32, ptr %i.e, align 8, !tbaa !423  ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i13.i, label %bb.f, label %Py_DECREF.exit14.i

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.e, align 8, !tbaa !423
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit14.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #16
  br label %Py_DECREF.exit14.i

Py_DECREF.exit14.i:                               ; preds = %bb.g, %bb.f, %bb.e
  %i.p = load i32, ptr %i.g, align 8, !tbaa !423  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i, label %bb.h, label %truedivide_timedelta_timedelta.exit

bb.h:                                             ; preds = %Py_DECREF.exit14.i
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.g, align 8, !tbaa !423
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %Py_DECREF.exit16.sink.split.i, label %truedivide_timedelta_timedelta.exit

Py_DECREF.exit16.sink.split.i:                    ; preds = %bb.h, %bb.d
  %.sink.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %bb.h ]
  %.0.ph.i = phi ptr [ null, %bb.d ], [ %i.l, %bb.h ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #16
  br label %truedivide_timedelta_timedelta.exit

bb.i:                                             ; preds = %PyObject_TypeCheck.exit21
  %.val17 = load ptr, ptr %i.c, align 8, !tbaa !430 ; 2 uses
  %.not.i22 = icmp eq ptr %.val17, @PyFloat_Type
  br i1 %.not.i22, label %PyObject_TypeCheck.exit23.thread, label %PyObject_TypeCheck.exit23

PyObject_TypeCheck.exit23:                        ; preds = %bb.i
  %i.s = tail call i32 @PyType_IsSubtype(ptr noundef %.val17, ptr noundef nonnull @PyFloat_Type) #16
  %.not36 = icmp eq i32 %i.s, 0
  br i1 %.not36, label %bb.j, label %PyObject_TypeCheck.exit23.thread

PyObject_TypeCheck.exit23.thread:                 ; preds = %bb.i, %PyObject_TypeCheck.exit23
  %i.t = tail call fastcc ptr @multiply_truedivide_timedelta_float(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  br label %truedivide_timedelta_timedelta.exit

bb.j:                                             ; preds = %PyObject_TypeCheck.exit23
  %.val = load ptr, ptr %i.c, align 8, !tbaa !430
  %i.u = getelementptr i8, ptr %.val, i64 168
  %.val16 = load i64, ptr %i.u, align 8, !tbaa !463
  %i.v = and i64 %.val16, 16777216
  %.not15 = icmp eq i64 %i.v, 0
  br i1 %.not15, label %truedivide_timedelta_timedelta.exit.thread32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call fastcc ptr @delta_to_microseconds(ptr noundef nonnull readonly %0), !inline_history !528 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %Py_INCREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @_PyLong_DivmodNear(ptr noundef nonnull %i.w, ptr noundef nonnull %1) #16, !inline_history !528 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %divide_nearest.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr i8, ptr %i.y, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !429 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !423 ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, -1073741825
  br i1 %i.ad, label %_Py_NewRef.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = add nuw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !423
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.n, %bb.m
  %i.af = load i32, ptr %i.y, align 8, !tbaa !423 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i.i, label %bb.o, label %divide_nearest.exit.i

bb.o:                                             ; preds = %_Py_NewRef.exit.i.i
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !423
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.p, label %divide_nearest.exit.i

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #16, !inline_history !528
  br label %divide_nearest.exit.i

divide_nearest.exit.i:                            ; preds = %bb.p, %bb.o, %_Py_NewRef.exit.i.i, %bb.l
  %.0.i.i = phi ptr [ null, %bb.l ], [ %i.ab, %_Py_NewRef.exit.i.i ], [ %i.ab, %bb.o ], [ %i.ab, %bb.p ] ; 5 uses
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !423 ; 2 uses
  %.not.i12.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i12.i, label %bb.q, label %Py_DECREF.exit13.i

bb.q:                                             ; preds = %divide_nearest.exit.i
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !423
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.r, label %Py_DECREF.exit13.i

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #16, !inline_history !528
  br label %Py_DECREF.exit13.i

Py_DECREF.exit13.i:                               ; preds = %bb.r, %bb.q, %divide_nearest.exit.i
  %i.al = icmp eq ptr %.0.i.i, null
  br i1 %i.al, label %Py_INCREF.exit, label %bb.s

bb.s:                                             ; preds = %Py_DECREF.exit13.i
  %i.am = tail call fastcc ptr @microseconds_to_delta_ex(ptr noundef nonnull %.0.i.i, ptr noundef nonnull @PyDateTime_DeltaType), !inline_history !528 ; 3 uses
  %i.an = load i32, ptr %.0.i.i, align 8, !tbaa !423 ; 2 uses
  %.not.i.i24 = icmp sgt i32 %i.an, -1
  br i1 %.not.i.i24, label %bb.t, label %truedivide_timedelta_timedelta.exit

bb.t:                                             ; preds = %bb.s
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %.0.i.i, align 8, !tbaa !423
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.u, label %truedivide_timedelta_timedelta.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #16, !inline_history !528
  br label %truedivide_timedelta_timedelta.exit

truedivide_timedelta_timedelta.exit:              ; preds = %bb.u, %bb.t, %bb.s, %Py_DECREF.exit16.sink.split.i, %bb.h, %Py_DECREF.exit14.i, %PyObject_TypeCheck.exit23.thread
  %.0 = phi ptr [ %i.am, %bb.s ], [ %i.t, %PyObject_TypeCheck.exit23.thread ], [ %.0.ph.i, %Py_DECREF.exit16.sink.split.i ], [ %i.l, %Py_DECREF.exit14.i ], [ %i.l, %bb.h ], [ %i.am, %bb.t ], [ %i.am, %bb.u ] ; 3 uses
  %i.aq = icmp eq ptr %.0, @_Py_NotImplementedStruct
  br i1 %i.aq, label %truedivide_timedelta_timedelta.exit.thread32, label %Py_INCREF.exit

truedivide_timedelta_timedelta.exit.thread32:     ; preds = %bb.j, %PyObject_TypeCheck.exit, %truedivide_timedelta_timedelta.exit
  %.034 = phi ptr [ %.0, %truedivide_timedelta_timedelta.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %bb.j ] ; 4 uses
  %i.ar = load i32, ptr %.034, align 8, !tbaa !423 ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %Py_INCREF.exit, label %bb.v

bb.v:                                             ; preds = %truedivide_timedelta_timedelta.exit.thread32
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %.034, align 8, !tbaa !423
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.k, %Py_DECREF.exit13.i, %bb.d, %bb.c, %PyObject_TypeCheck.exit21.thread, %bb.v, %truedivide_timedelta_timedelta.exit.thread32, %truedivide_timedelta_timedelta.exit
  %.030 = phi ptr [ %.034, %bb.v ], [ %.0, %truedivide_timedelta_timedelta.exit ], [ %.034, %truedivide_timedelta_timedelta.exit.thread32 ], [ null, %PyObject_TypeCheck.exit21.thread ], [ null, %bb.c ], [ null, %bb.d ], [ null, %Py_DECREF.exit13.i ], [ null, %bb.k ]
  ret ptr %.030
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @multiply_truedivide_timedelta_float(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 !guid !530 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call fastcc ptr @delta_to_microseconds(ptr noundef %0) ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_XDECREF.exit40, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !429
  %i.d = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 75032), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #16 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val14.i = load ptr, ptr %i.f, align 8, !tbaa !430 ; 2 uses
  %i.g = getelementptr i8, ptr %.val14.i, i64 168
  %.val15.i = load i64, ptr %i.g, align 8, !tbaa !463
  %i.h = and i64 %.val15.i, 67108864
  %.not.i33 = icmp eq i64 %i.h, 0
  br i1 %.not.i33, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !429
  %i.j = getelementptr i8, ptr %.val14.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !431
  %i.l = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.45, ptr noundef %i.k) #16 ; 0 uses
  %i.m = load i32, ptr %i.d, align 8, !tbaa !423  ; 2 uses
  %.not.i11.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i11.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !423
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %Py_DECREF.exit12.sink.split.i, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.c
  %i.p = call i64 @PyTuple_Size(ptr noundef nonnull %i.d) #16
  %.not10.i = icmp eq i64 %i.p, 2
  br i1 %.not10.i, label %get_float_as_integer_ratio.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !429
  call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.46) #16
  %i.r = load i32, ptr %i.d, align 8, !tbaa !423  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !423
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit12.sink.split.i, label %Py_DECREF.exit

Py_DECREF.exit12.sink.split.i:                    ; preds = %bb.h, %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #16
  br label %Py_DECREF.exit

get_float_as_integer_ratio.exit:                  ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %i.v = zext nneg i32 %2 to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !429
  %i.y = call ptr @PyNumber_Multiply(ptr noundef nonnull %i.b, ptr noundef %i.x) #16 ; 5 uses
  %i.z = load i32, ptr %i.b, align 8, !tbaa !423  ; 2 uses
  %.not.i29 = icmp sgt i32 %i.z, -1
  br i1 %.not.i29, label %bb.i, label %Py_DECREF.exit30

bb.i:                                             ; preds = %get_float_as_integer_ratio.exit
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !423
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %Py_DECREF.exit30

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #16
  br label %Py_DECREF.exit30

Py_DECREF.exit30:                                 ; preds = %get_float_as_integer_ratio.exit, %bb.i, %bb.j
  %i.ac = icmp eq ptr %i.y, null
  br i1 %i.ac, label %Py_XDECREF.exit, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit30
  %i.ad = xor i32 %2, 1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr [8 x i8], ptr %i.u, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !429
  %i.ah = call ptr @_PyLong_DivmodNear(ptr noundef nonnull %i.y, ptr noundef %i.ag) #16 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %divide_nearest.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.ah, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !429 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !423 ; 2 uses
  %i.am = icmp ugt i32 %i.al, -1073741825
  br i1 %i.am, label %_Py_NewRef.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !423
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.m, %bb.l
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !423 ; 2 uses
  %.not.i.i34 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i.i34, label %bb.n, label %divide_nearest.exit

bb.n:                                             ; preds = %_Py_NewRef.exit.i
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.ah, align 8, !tbaa !423
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %divide_nearest.exit

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #16
  br label %divide_nearest.exit

divide_nearest.exit:                              ; preds = %bb.k, %_Py_NewRef.exit.i, %bb.n, %bb.o
  %.0.i35 = phi ptr [ null, %bb.k ], [ %i.ak, %_Py_NewRef.exit.i ], [ %i.ak, %bb.n ], [ %i.ak, %bb.o ] ; 5 uses
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !423 ; 2 uses
  %.not.i27 = icmp sgt i32 %i.ar, -1
  br i1 %.not.i27, label %bb.p, label %Py_DECREF.exit28

bb.p:                                             ; preds = %divide_nearest.exit
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.y, align 8, !tbaa !423
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %Py_DECREF.exit28

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.y) #16
  br label %Py_DECREF.exit28

Py_DECREF.exit28:                                 ; preds = %divide_nearest.exit, %bb.p, %bb.q
  %i.au = icmp eq ptr %.0.i35, null
  br i1 %i.au, label %Py_XDECREF.exit, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit28
  %i.av = call fastcc ptr @microseconds_to_delta_ex(ptr noundef nonnull %.0.i35, ptr noundef nonnull @PyDateTime_DeltaType) ; 3 uses
  %i.aw = load i32, ptr %.0.i35, align 8, !tbaa !423 ; 2 uses
  %.not.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i, label %bb.s, label %Py_XDECREF.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %.0.i35, align 8, !tbaa !423
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %Py_XDECREF.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i35) #16
  br label %Py_XDECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit12.sink.split.i, %bb.g, %bb.e, %bb.d, %bb.b, %bb.h
  %i.az = load i32, ptr %i.b, align 8, !tbaa !423 ; 2 uses
  %.not.i.i37 = icmp sgt i32 %i.az, -1
  br i1 %.not.i.i37, label %bb.u, label %Py_XDECREF.exit40

bb.u:                                             ; preds = %Py_DECREF.exit
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.b, align 8, !tbaa !423
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %Py_XDECREF.exit40.sink.split, label %Py_XDECREF.exit40

Py_XDECREF.exit:                                  ; preds = %bb.t, %bb.s, %bb.r, %Py_DECREF.exit28, %Py_DECREF.exit30
  %.018.ph = phi ptr [ %i.av, %bb.t ], [ %i.av, %bb.s ], [ %i.av, %bb.r ], [ null, %Py_DECREF.exit28 ], [ null, %Py_DECREF.exit30 ] ; 3 uses
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !423 ; 2 uses
  %.not.i.i39 = icmp sgt i32 %i.bc, -1
  br i1 %.not.i.i39, label %bb.v, label %Py_XDECREF.exit40

bb.v:                                             ; preds = %Py_XDECREF.exit
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !423
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %Py_XDECREF.exit40.sink.split, label %Py_XDECREF.exit40

Py_XDECREF.exit40.sink.split:                     ; preds = %bb.v, %bb.u
  %.sink = phi ptr [ %i.b, %bb.u ], [ %i.d, %bb.v ]
  %.0.ph = phi ptr [ null, %bb.u ], [ %.018.ph, %bb.v ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %Py_XDECREF.exit40

Py_XDECREF.exit40:                                ; preds = %Py_XDECREF.exit40.sink.split, %bb.u, %Py_DECREF.exit, %bb.v, %Py_XDECREF.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.018.ph, %bb.v ], [ null, %Py_DECREF.exit ], [ %.018.ph, %Py_XDECREF.exit ], [ null, %bb.u ], [ %.0.ph, %Py_XDECREF.exit40.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @delta_to_microseconds(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 !guid !531 {
bb.a:
  %i.a = tail call ptr @PyInterpreterState_Get() #16
  %i.b = tail call fastcc ptr @get_current_module(ptr noundef %i.a) ; 2 uses
end_hunk_2
begin_hunk_3_@accum:bb.a
  %i.t = load i32, ptr %i.q, align 8, !tbaa !423  ; 2 uses
  %.not.i55 = icmp sgt i32 %i.t, -1
  br i1 %.not.i55, label %bb.j, label %Py_DECREF.exit56

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.q, align 8, !tbaa !423
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %Py_DECREF.exit56

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #16
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.w = icmp eq ptr %i.s, null
  br i1 %i.w, label %Py_DECREF.exit58, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit56
  %i.x = tail call ptr @PyNumber_Add(ptr noundef nonnull %1, ptr noundef nonnull %i.s) #16 ; 9 uses
  %i.y = load i32, ptr %i.s, align 8, !tbaa !423  ; 2 uses
  %.not.i53 = icmp sgt i32 %i.y, -1
  br i1 %.not.i53, label %bb.m, label %Py_DECREF.exit54

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.s, align 8, !tbaa !423
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.n, label %Py_DECREF.exit54

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #16
  br label %Py_DECREF.exit54

Py_DECREF.exit54:                                 ; preds = %bb.l, %bb.m, %bb.n
  %i.ab = icmp eq ptr %i.x, null
  br i1 %i.ab, label %Py_DECREF.exit58, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit54
  %i.ac = fcmp oeq double %i.o, 0.000000e+00
  br i1 %i.ac, label %Py_DECREF.exit58, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = tail call double @PyLong_AsDouble(ptr noundef %3) #16
  %i.ae = fmul double %i.o, %i.ad
  %i.af = tail call { double, double } @llvm.modf.f64(double %i.ae) ; 2 uses
  %i.ag = extractvalue { double, double } %i.af, 1
  %i.ah = tail call ptr @PyLong_FromDouble(double noundef %i.ag) #16 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !423 ; 2 uses
  %.not.i51 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i51, label %bb.r, label %Py_DECREF.exit58

bb.r:                                             ; preds = %bb.q
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.x, align 8, !tbaa !423
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.s, label %Py_DECREF.exit58

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #16
  br label %Py_DECREF.exit58

bb.t:                                             ; preds = %bb.p
  %i.am = extractvalue { double, double } %i.af, 0
  %i.an = tail call ptr @PyNumber_Add(ptr noundef nonnull %i.x, ptr noundef nonnull %i.ah) #16
  %i.ao = load i32, ptr %i.x, align 8, !tbaa !423 ; 2 uses
  %.not.i49 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i49, label %bb.u, label %Py_DECREF.exit50

bb.u:                                             ; preds = %bb.t
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !423
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.v, label %Py_DECREF.exit50

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #16
  br label %Py_DECREF.exit50

Py_DECREF.exit50:                                 ; preds = %bb.t, %bb.u, %bb.v
  %i.ar = load i32, ptr %i.ah, align 8, !tbaa !423 ; 2 uses
  %.not.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i, label %bb.w, label %Py_DECREF.exit

bb.w:                                             ; preds = %Py_DECREF.exit50
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.ah, align 8, !tbaa !423
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.x, label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit50, %bb.w, %bb.x
  %i.au = load double, ptr %4, align 8, !tbaa !455
  %i.av = fadd double %i.am, %i.au
  store double %i.av, ptr %4, align 8, !tbaa !455
  br label %Py_DECREF.exit58

bb.y:                                             ; preds = %PyObject_TypeCheck.exit
  %i.aw = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !429
  %.val = load ptr, ptr %i.a, align 8, !tbaa !430
  %i.ax = getelementptr i8, ptr %.val, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !431
  %i.az = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aw, ptr noundef nonnull @.str.70, ptr noundef %0, ptr noundef %i.ay) #16 ; 0 uses
  br label %Py_DECREF.exit58

Py_DECREF.exit58:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.e, %bb.d, %bb.c, %Py_DECREF.exit, %bb.g, %bb.h, %Py_DECREF.exit56, %Py_DECREF.exit54, %bb.o, %bb.b, %bb.y
  %.1 = phi ptr [ null, %bb.y ], [ %i.x, %bb.o ], [ null, %bb.b ], [ %i.an, %Py_DECREF.exit ], [ null, %bb.g ], [ null, %bb.h ], [ null, %Py_DECREF.exit56 ], [ null, %Py_DECREF.exit54 ], [ %i.f, %bb.e ], [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ]
  ret ptr %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare ptr @PyNumber_And(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #8

declare ptr @PyLong_FromDouble(double noundef) local_unnamed_addr #2

declare double @PyLong_AsDouble(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @date_repr(ptr nofree noundef readonly captures(none) %0) #0 !guid !539 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !430
  %i.b = getelementptr i8, ptr %.val, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !431
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !423
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %0, i64 26
  %i.i = load i8, ptr %i.h, align 2, !tbaa !423
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  %i.l = getelementptr i8, ptr %0, i64 27
  %i.m = load i8, ptr %i.l, align 1, !tbaa !423
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 4, !tbaa !423
  %i.q = zext i8 %i.p to i32
  %i.r = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.75, ptr noundef %i.c, i32 noundef %i.k, i32 noundef %i.n, i32 noundef %i.q) #16
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define internal i64 @date_hash(ptr noundef %0) #0 !guid !540 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !425  ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = tail call i64 @Py_HashBuffer(ptr noundef %i.d, i64 noundef 4) #16 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !425
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @date_str(ptr noundef %0) #0 !guid !541 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !429
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88496), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @date_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 !guid !542 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !430 ; 3 uses
  %.not.i = icmp eq ptr %.val7, @PyDateTime_DateType
  br i1 %.not.i, label %PyObject_TypeCheck.exit9, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val7, ptr noundef nonnull @PyDateTime_DateType) #16
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %diff_to_bool.exit, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %.val.pr = load ptr, ptr %i.a, align 8, !tbaa !430 ; 2 uses
  %.not.i8 = icmp eq ptr %.val.pr, @PyDateTime_DateTimeType
  br i1 %.not.i8, label %diff_to_bool.exit, label %PyObject_TypeCheck.exit9

PyObject_TypeCheck.exit9:                         ; preds = %bb.a, %bb.b
  %.val14 = phi ptr [ %.val.pr, %bb.b ], [ %.val7, %bb.a ]
  %i.c = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %diff_to_bool.exit

bb.c:                                             ; preds = %PyObject_TypeCheck.exit9
  %i.d = getelementptr i8, ptr %0, i64 25
  %i.e = getelementptr i8, ptr %1, i64 25
  %i.f = load i32, ptr %i.d, align 1
  %i.g = load i32, ptr %i.e, align 1
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.f)
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.g)
  %i.j = tail call i32 @llvm.ucmp.i32.i32(i32 %i.h, i32 %i.i) ; 6 uses
  switch i32 %2, label %bb.j [
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 0, label %bb.f
    i32 4, label %bb.g
    i32 1, label %bb.h
    i32 5, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %i.j, 0
  %_Py_TrueStruct._Py_FalseStruct.i = select i1 %i.k, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.e:                                             ; preds = %bb.c
  %.not.i10 = icmp eq i32 %i.j, 0
  %_Py_FalseStruct._Py_TrueStruct.i = select i1 %.not.i10, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  br label %diff_to_bool.exit

bb.f:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.j, 0
  %_Py_TrueStruct._Py_FalseStruct7.i = select i1 %i.l, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.g:                                             ; preds = %bb.c
  %i.m = icmp sgt i32 %i.j, 0
  %_Py_TrueStruct._Py_FalseStruct8.i = select i1 %i.m, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.h:                                             ; preds = %bb.c
  %i.n = icmp slt i32 %i.j, 1
  %_Py_TrueStruct._Py_FalseStruct9.i = select i1 %i.n, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.i:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %i.j, -1
  %_Py_TrueStruct._Py_FalseStruct10.i = select i1 %i.o, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %diff_to_bool.exit

bb.j:                                             ; preds = %bb.c
  unreachable

diff_to_bool.exit:                                ; preds = %bb.b, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %PyObject_TypeCheck.exit, %PyObject_TypeCheck.exit9
  %.0 = phi ptr [ %_Py_TrueStruct._Py_FalseStruct9.i, %bb.h ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit9 ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ %_Py_TrueStruct._Py_FalseStruct.i, %bb.d ], [ %_Py_TrueStruct._Py_FalseStruct8.i, %bb.g ], [ %_Py_FalseStruct._Py_TrueStruct.i, %bb.e ], [ %_Py_TrueStruct._Py_FalseStruct10.i, %bb.i ], [ %_Py_TrueStruct._Py_FalseStruct7.i, %bb.f ], [ @_Py_NotImplementedStruct, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @date_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !guid !544 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val25 = load i64, ptr %i.b, align 8, !tbaa !446 ; 3 uses
  %i.c = icmp eq i64 %.val25, 1
  br i1 %i.c, label %bb.b, label %date_from_pickle.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !429  ; 13 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val24 = load ptr, ptr %i.f, align 8, !tbaa !430
  %i.g = getelementptr i8, ptr %.val24, i64 168
  %.val27 = load i64, ptr %i.g, align 8, !tbaa !463 ; 2 uses
  %i.h = and i64 %.val27, 134217728
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %.val29 = load i64, ptr %i.i, align 8, !tbaa !446
  %i.j = icmp eq i64 %.val29, 4
  br i1 %i.j, label %bb.d, label %date_from_pickle.exit.thread43

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.e, i64 32
  %i.l = getelementptr i8, ptr %i.e, i64 34
  %i.m = load i8, ptr %i.l, align 2, !tbaa !423
  %i.n = sext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -1
  %i.p = icmp ult i32 %i.o, 12
  br i1 %i.p, label %bb.e, label %date_from_pickle.exit.thread43

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 304
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !416
  %i.s = tail call ptr %i.r(ptr noundef %0, i64 noundef 0) #16, !inline_history !543 ; 4 uses
  %.not.i30 = icmp eq ptr %i.s, null
  br i1 %.not.i30, label %date_from_pickle.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.s, i64 25
  %i.u = load i32, ptr %i.k, align 8
  store i32 %i.u, ptr %i.t, align 1
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store i64 -1, ptr %i.v, align 8, !tbaa !425
  br label %date_from_pickle.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.w = and i64 %.val27, 268435456
  %.not22 = icmp eq i64 %i.w, 0
  br i1 %.not22, label %date_from_pickle.exit.thread43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.e, i64 16
  %.val28 = load i64, ptr %i.x, align 8, !tbaa !445
  %i.y = icmp eq i64 %.val28, 4
  br i1 %i.y, label %bb.i, label %date_from_pickle.exit.thread43

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.e, i64 32
  %i.aa = load i32, ptr %i.z, align 8             ; 5 uses
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = and i32 %i.ab, 7
  %i.ad = and i32 %i.aa, 32
  %.not.i19.i = icmp eq i32 %i.ad, 0              ; 3 uses
  switch i32 %i.ac, label %bb.p [
    i32 1, label %bb.j
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = and i32 %i.aa, 64
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.e, i64 56
  %.val4.i.i = load ptr, ptr %i.af, align 8, !tbaa !423
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.k ], [ %.val4.i.i, %bb.l ]
  %i.ag = getelementptr i8, ptr %.0.i.i, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !423
  %i.ai = zext i8 %i.ah to i32
  br label %PyUnicode_READ_CHAR.exit

bb.m:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = and i32 %i.aa, 64
  %.not.i.i12.i = icmp eq i32 %i.aj, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.e, i64 56
  %.val4.i16.i = load ptr, ptr %i.ak, align 8, !tbaa !423
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.o, %bb.n
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.n ], [ %.val4.i16.i, %bb.o ]
  %i.al = getelementptr i8, ptr %.0.i15.i, i64 4
  %i.am = load i16, ptr %i.al, align 2, !tbaa !465
  %i.an = zext i16 %i.am to i32
  br label %PyUnicode_READ_CHAR.exit

bb.p:                                             ; preds = %bb.i
  br i1 %.not.i19.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = and i32 %i.aa, 64
  %.not.i.i20.i = icmp eq i32 %i.ao, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.e, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.r:                                             ; preds = %bb.p
  %i.ap = getelementptr i8, ptr %i.e, i64 56
  %.val4.i24.i = load ptr, ptr %i.ap, align 8, !tbaa !423
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.r, %bb.q
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.q ], [ %.val4.i24.i, %bb.r ]
  %i.aq = getelementptr i8, ptr %.0.i23.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !15
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.ai, %_PyUnicode_DATA.exit.i ], [ %i.an, %_PyUnicode_DATA.exit17.i ], [ %i.ar, %_PyUnicode_DATA.exit25.i ]
  %i.as = add i32 %.0.i, -1
end_hunk_3
begin_hunk_4_@wrap_strftime:bb.a
  %.val4.i16.i = load ptr, ptr %i.k, align 8, !tbaa !423
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.m, %bb.l
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.l ], [ %.val4.i16.i, %bb.m ]
  %i.ad = getelementptr [2 x i8], ptr %.0.i15.i, i64 %i.s
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !465
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
  %.val4.i24.i = load ptr, ptr %i.k, align 8, !tbaa !423
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.p, %bb.o
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.o ], [ %.val4.i24.i, %bb.p ]
  %i.ah = getelementptr [4 x i8], ptr %.0.i23.i, i64 %i.s
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15
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
  %.val4.i.i197 = load ptr, ptr %i.k, align 8, !tbaa !423
  br label %_PyUnicode_DATA.exit.i195

_PyUnicode_DATA.exit.i195:                        ; preds = %bb.w, %bb.v
  %.0.i.i196 = phi ptr [ %.0.i.i.i194, %bb.v ], [ %.val4.i.i197, %bb.w ]
  %i.ar = getelementptr i8, ptr %.0.i.i196, i64 %i.aj
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !423
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
  %.val4.i16.i191 = load ptr, ptr %i.k, align 8, !tbaa !423
  br label %_PyUnicode_DATA.exit17.i188

_PyUnicode_DATA.exit17.i188:                      ; preds = %bb.z, %bb.y
  %.0.i15.i189 = phi ptr [ %.0.i.i14.i187, %bb.y ], [ %.val4.i16.i191, %bb.z ]
  %i.av = getelementptr [2 x i8], ptr %.0.i15.i189, i64 %i.aj
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !465
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
  %.val4.i24.i203 = load ptr, ptr %i.k, align 8, !tbaa !423
  br label %_PyUnicode_DATA.exit25.i201

_PyUnicode_DATA.exit25.i201:                      ; preds = %bb.ac, %bb.ab
  %.0.i23.i202 = phi ptr [ %.0.i.i22.i200, %bb.ab ], [ %.val4.i24.i203, %bb.ac ]
  %i.az = getelementptr [4 x i8], ptr %.0.i23.i202, i64 %i.aj
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !15
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
  %.val10.i.i = load ptr, ptr %i.l, align 8, !tbaa !430 ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %.val10.i.i, @PyDateTime_DateTimeType
  br i1 %.not.i.i.i205, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.ah
  %i.bh = call i32 @PyType_IsSubtype(ptr noundef %.val10.i.i, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !580
  %.not15.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not15.i.i, label %bb.ai, label %PyObject_TypeCheck.exit.thread.i.i

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.ah
  %i.bi = load i8, ptr %i.m, align 8, !tbaa !442
  %.not7.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not7.i.i, label %bb.ai, label %.sink.split.i.i

bb.ai:                                            ; preds = %PyObject_TypeCheck.exit.thread.i.i, %PyObject_TypeCheck.exit.i.i
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !430 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %.val.i.i, @PyDateTime_TimeType
  br i1 %.not.i11.i.i, label %PyObject_TypeCheck.exit12.thread.i.i, label %PyObject_TypeCheck.exit12.i.i

PyObject_TypeCheck.exit12.i.i:                    ; preds = %bb.ai
  %i.bj = call i32 @PyType_IsSubtype(ptr noundef %.val.i.i, ptr noundef nonnull @PyDateTime_TimeType) #16, !inline_history !580
  %.not.i35.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i35.i, label %get_tzinfo_member.exit.i, label %PyObject_TypeCheck.exit12.thread.i.i

PyObject_TypeCheck.exit12.thread.i.i:             ; preds = %PyObject_TypeCheck.exit12.i.i, %bb.ai
  %i.bk = load i8, ptr %i.m, align 8, !tbaa !442
  %.not9.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not9.i.i, label %get_tzinfo_member.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %PyObject_TypeCheck.exit12.thread.i.i, %PyObject_TypeCheck.exit.thread.i.i
  %.sink16.i.i = phi i64 [ 40, %PyObject_TypeCheck.exit.thread.i.i ], [ 32, %PyObject_TypeCheck.exit12.thread.i.i ]
  %i.bl = getelementptr i8, ptr %0, i64 %.sink16.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !429
  br label %get_tzinfo_member.exit.i

get_tzinfo_member.exit.i:                         ; preds = %.sink.split.i.i, %PyObject_TypeCheck.exit12.thread.i.i, %PyObject_TypeCheck.exit12.i.i
  %.0.i.i206 = phi ptr [ null, %PyObject_TypeCheck.exit12.thread.i.i ], [ null, %PyObject_TypeCheck.exit12.i.i ], [ %i.bm, %.sink.split.i.i ] ; 3 uses
  %i.bn = call ptr @Py_GetConstant(i32 noundef 7) #16, !inline_history !581 ; 16 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread239, label %bb.aj

bb.aj:                                            ; preds = %get_tzinfo_member.exit.i
  %i.bp = icmp eq ptr %.0.i.i206, @_Py_NoneStruct
  %i.bq = icmp eq ptr %.0.i.i206, null
  %or.cond.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i, label %make_Zreplacement.exit.thread229, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr %.0.i.i206, ptr %i.c, align 16, !tbaa !429
  store ptr %3, ptr %i.n, align 8, !tbaa !429
  %i.br = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 103552), ptr noundef nonnull %i.c, i64 noundef -9223372036854775806, ptr noundef null) #16, !inline_history !581 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.bs = icmp eq ptr %i.br, null                 ; 2 uses
  %i.bt = icmp eq ptr %i.br, @_Py_NoneStruct      ; 2 uses
  %or.cond.i.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i, label %call_tzname.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %.val17.i.i = load ptr, ptr %i.bu, align 8, !tbaa !430 ; 2 uses
  %i.bv = getelementptr i8, ptr %.val17.i.i, i64 168
  %.val18.i.i = load i64, ptr %i.bv, align 8, !tbaa !463
  %i.bw = and i64 %.val18.i.i, 268435456
  %.not.i36.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i36.i, label %bb.am, label %call_tzname.exit.thread40.i

bb.am:                                            ; preds = %bb.al
  %i.bx = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !429
  %i.by = getelementptr i8, ptr %.val17.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !431
  %i.ca = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bx, ptr noundef nonnull @.str.149, ptr noundef %i.bz) #16, !inline_history !581 ; 0 uses
  %i.cb = load i32, ptr %i.br, align 8, !tbaa !423 ; 2 uses
  %.not.i.i38.i = icmp sgt i32 %i.cb, -1
  br i1 %.not.i.i38.i, label %bb.an, label %call_tzname.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.br, align 8, !tbaa !423
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ao, label %call_tzname.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #16, !inline_history !581
  br label %call_tzname.exit.thread.i

call_tzname.exit.i:                               ; preds = %bb.ak
  br i1 %i.bs, label %call_tzname.exit.thread.i, label %call_tzname.exit.thread40.i

call_tzname.exit.thread40.i:                      ; preds = %call_tzname.exit.i, %bb.al
  br i1 %i.bt, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %call_tzname.exit.thread40.i
  %i.ce = load i32, ptr %i.br, align 8, !tbaa !423 ; 2 uses
  %.not.i29.i = icmp sgt i32 %i.ce, -1
  br i1 %.not.i29.i, label %bb.aq, label %make_Zreplacement.exit.thread229

bb.aq:                                            ; preds = %bb.ap
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.cf, ptr %i.br, align 8, !tbaa !423
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %make_Zreplacement.exit, label %make_Zreplacement.exit.thread229

bb.ar:                                            ; preds = %call_tzname.exit.thread40.i
  %i.ch = load i32, ptr %i.bn, align 8, !tbaa !423 ; 2 uses
  %.not.i27.i = icmp sgt i32 %i.ch, -1
  br i1 %.not.i27.i, label %bb.as, label %Py_DECREF.exit28.i

bb.as:                                            ; preds = %bb.ar
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.bn, align 8, !tbaa !423
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.at, label %Py_DECREF.exit28.i

bb.at:                                            ; preds = %bb.as
  call void @_Py_Dealloc(ptr noundef nonnull %i.bn) #16, !inline_history !581
  br label %Py_DECREF.exit28.i

Py_DECREF.exit28.i:                               ; preds = %bb.at, %bb.as, %bb.ar
  %i.ck = call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %i.br, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147) #16, !inline_history !581 ; 5 uses
  %i.cl = load i32, ptr %i.br, align 8, !tbaa !423 ; 2 uses
  %.not.i25.i = icmp sgt i32 %i.cl, -1
  br i1 %.not.i25.i, label %bb.au, label %Py_DECREF.exit26.i

bb.au:                                            ; preds = %Py_DECREF.exit28.i
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.br, align 8, !tbaa !423
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.av, label %Py_DECREF.exit26.i

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #16, !inline_history !581
  br label %Py_DECREF.exit26.i

Py_DECREF.exit26.i:                               ; preds = %bb.av, %bb.au, %Py_DECREF.exit28.i
  %i.co = icmp eq ptr %i.ck, null
  br i1 %i.co, label %.thread239, label %bb.aw

bb.aw:                                            ; preds = %Py_DECREF.exit26.i
  %i.cp = getelementptr i8, ptr %i.ck, i64 8
  %.val.i = load ptr, ptr %i.cp, align 8, !tbaa !430
  %i.cq = getelementptr i8, ptr %.val.i, i64 168
  %.val34.i = load i64, ptr %i.cq, align 8, !tbaa !463
  %i.cr = and i64 %.val34.i, 268435456
  %.not.i207 = icmp eq i64 %i.cr, 0
  br i1 %.not.i207, label %bb.ax, label %make_Zreplacement.exit.thread229

bb.ax:                                            ; preds = %bb.aw
  %i.cs = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !429
  call void @PyErr_SetString(ptr noundef %i.cs, ptr noundef nonnull @.str.148) #16, !inline_history !581
  br label %call_tzname.exit.thread.i

call_tzname.exit.thread.i:                        ; preds = %call_tzname.exit.i, %bb.ax, %bb.ao, %bb.an, %bb.am
  %.0.i208 = phi ptr [ %i.bn, %bb.an ], [ %i.ck, %bb.ax ], [ %i.bn, %bb.ao ], [ %i.bn, %bb.am ], [ %i.bn, %call_tzname.exit.i ] ; 3 uses
  %i.ct = load i32, ptr %.0.i208, align 8, !tbaa !423 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ct, -1
  br i1 %.not.i.i, label %bb.ay, label %.thread239

bb.ay:                                            ; preds = %call_tzname.exit.thread.i
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %.0.i208, align 8, !tbaa !423
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %make_Zreplacement.exit.thread231, label %.thread239

make_Zreplacement.exit.thread231:                 ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i208) #16, !inline_history !581
  br label %.thread239

make_Zreplacement.exit:                           ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %i.br) #16, !inline_history !581
  br label %make_Zreplacement.exit.thread229

bb.az:                                            ; preds = %PyUnicode_READ_CHAR.exit, %bb.af
  %i.cw = icmp eq ptr %.0125.ph.ph, null
  br i1 %i.cw, label %bb.ba, label %make_Zreplacement.exit.thread229

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.val9.i = load ptr, ptr %i.l, align 8, !tbaa !430 ; 2 uses
  %.not.i.i209 = icmp eq ptr %.val9.i, @PyDateTime_TimeType
  br i1 %.not.i.i209, label %.sink.split.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.ba
  %i.cx = call i32 @PyType_IsSubtype(ptr noundef %.val9.i, ptr noundef nonnull @PyDateTime_TimeType) #16, !inline_history !582
  %.not14.i = icmp eq i32 %i.cx, 0
  br i1 %.not14.i, label %bb.bb, label %.sink.split.i

bb.bb:                                            ; preds = %PyObject_TypeCheck.exit.i
  %.val.i210 = load ptr, ptr %i.l, align 8, !tbaa !430 ; 2 uses
  %.not.i10.i = icmp eq ptr %.val.i210, @PyDateTime_DateTimeType
  br i1 %.not.i10.i, label %.sink.split.i, label %PyObject_TypeCheck.exit11.i

PyObject_TypeCheck.exit11.i:                      ; preds = %bb.bb
  %i.cy = call i32 @PyType_IsSubtype(ptr noundef %.val.i210, ptr noundef nonnull @PyDateTime_DateTimeType) #16, !inline_history !582
  %.not.i211 = icmp eq i32 %i.cy, 0
  br i1 %.not.i211, label %make_freplacement.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %PyObject_TypeCheck.exit11.i, %bb.bb, %PyObject_TypeCheck.exit.i, %bb.ba
  %.sink29.i = phi i64 [ 28, %PyObject_TypeCheck.exit.i ], [ 28, %bb.ba ], [ 32, %bb.bb ], [ 32, %PyObject_TypeCheck.exit11.i ]
  %.sink25.i = phi i64 [ 29, %PyObject_TypeCheck.exit.i ], [ 29, %bb.ba ], [ 33, %bb.bb ], [ 33, %PyObject_TypeCheck.exit11.i ]
  %.sink19.i = phi i64 [ 30, %PyObject_TypeCheck.exit.i ], [ 30, %bb.ba ], [ 34, %bb.bb ], [ 34, %PyObject_TypeCheck.exit11.i ]
  %i.cz = getelementptr i8, ptr %0, i64 %.sink29.i
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !423
  %i.db = zext i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 16
  %i.dd = getelementptr i8, ptr %0, i64 %.sink25.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !423
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = or disjoint i32 %i.dg, %i.dc
  %i.di = getelementptr i8, ptr %0, i64 %.sink19.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !423
  %i.dk = zext i8 %i.dj to i32
  %i.dl = or disjoint i32 %i.dh, %i.dk
  br label %make_freplacement.exit

make_freplacement.exit:                           ; preds = %PyObject_TypeCheck.exit11.i, %.sink.split.i
  %.sink.i = phi i32 [ 0, %PyObject_TypeCheck.exit11.i ], [ %i.dl, %.sink.split.i ]
  %i.dm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.150, i32 noundef %.sink.i) #16, !inline_history !582 ; 0 uses
  %i.dn = call ptr @PyUnicode_FromString(ptr noundef nonnull %i.b) #16, !inline_history !582 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %.thread239, label %make_Zreplacement.exit.thread229

bb.bc:                                            ; preds = %PyUnicode_READ_CHAR.exit, %bb.af
  %i.dp = load i32, ptr @normalize_century.cache, align 4, !tbaa !15 ; 2 uses
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
  store i32 %i.eb, ptr @normalize_century.cache, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %normalize_century.exit

normalize_century.exit:                           ; preds = %bb.bc, %bb.bf
  %i.ec = phi i32 [ %i.eb, %bb.bf ], [ %i.dp, %bb.bc ]
  %.not171 = icmp eq i32 %i.ec, 0
  br i1 %.not171, label %.outer.loopexit, label %bb.bg, !llvm.loop !583

bb.bg:                                            ; preds = %normalize_century.exit
  %i.ed = icmp eq i32 %.0.i, 71
  %i.ee = icmp eq i32 %.0.i, 70
  %i.ef = icmp eq i32 %.0.i, 67
  switch i32 %.0.i, label %.outer.loopexit [
    i32 89, label %bb.bh
    i32 71, label %bb.bh
    i32 70, label %bb.bh
    i32 67, label %bb.bh
  ], !llvm.loop !583

bb.bh:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg
  %i.eg = call ptr @PySequence_GetItem(ptr noundef nonnull %2, i64 noundef 0) #16 ; 5 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.thread239, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ei = call i64 @PyLong_AsLong(ptr noundef nonnull %i.eg) #16 ; 3 uses
  %i.ej = load i32, ptr %i.eg, align 8, !tbaa !423 ; 2 uses
  %.not.i179 = icmp sgt i32 %i.ej, -1
  br i1 %.not.i179, label %bb.bj, label %Py_DECREF.exit180

bb.bj:                                            ; preds = %bb.bi
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %i.eg, align 8, !tbaa !423
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.bk, label %Py_DECREF.exit180

bb.bk:                                            ; preds = %bb.bj
  call void @_Py_Dealloc(ptr noundef nonnull %i.eg) #16
  br label %Py_DECREF.exit180

Py_DECREF.exit180:                                ; preds = %bb.bi, %bb.bj, %bb.bk
  %i.em = icmp eq i64 %i.ei, -1
  br i1 %i.em, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %Py_DECREF.exit180
  %i.en = call ptr @PyErr_Occurred() #16
  %.not172 = icmp eq ptr %i.en, null
  br i1 %.not172, label %.thread, label %.thread239

bb.bm:                                            ; preds = %Py_DECREF.exit180
  %i.eo = icmp sgt i64 %i.ei, 999
  br i1 %i.eo, label %.outer.loopexit, label %.thread, !llvm.loop !583

.thread:                                          ; preds = %bb.bl, %bb.bm
  br i1 %i.ed, label %bb.bn, label %bb.bv

bb.bn:                                            ; preds = %.thread
  %i.ep = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, ptr noundef nonnull %2) #16 ; 5 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.thread239, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.er = call ptr @PyNumber_Long(ptr noundef nonnull %i.ep) #16 ; 5 uses
  %i.es = load i32, ptr %i.ep, align 8, !tbaa !423 ; 2 uses
  %.not.i177 = icmp sgt i32 %i.es, -1
  br i1 %.not.i177, label %bb.bp, label %Py_DECREF.exit178

bb.bp:                                            ; preds = %bb.bo
  %i.et = add nsw i32 %i.es, -1                   ; 2 uses
  store i32 %i.et, ptr %i.ep, align 8, !tbaa !423
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bq, label %Py_DECREF.exit178

bb.bq:                                            ; preds = %bb.bp
  call void @_Py_Dealloc(ptr noundef nonnull %i.ep) #16
  br label %Py_DECREF.exit178

Py_DECREF.exit178:                                ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.ev = icmp eq ptr %i.er, null
  br i1 %i.ev, label %.thread239, label %bb.br

bb.br:                                            ; preds = %Py_DECREF.exit178
  %i.ew = call i64 @PyLong_AsLong(ptr noundef nonnull %i.er) #16 ; 2 uses
  %i.ex = load i32, ptr %i.er, align 8, !tbaa !423 ; 2 uses
  %.not.i175 = icmp sgt i32 %i.ex, -1
  br i1 %.not.i175, label %bb.bs, label %Py_DECREF.exit176

bb.bs:                                            ; preds = %bb.br
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.er, align 8, !tbaa !423
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.bt, label %Py_DECREF.exit176

bb.bt:                                            ; preds = %bb.bs
  call void @_Py_Dealloc(ptr noundef nonnull %i.er) #16
  br label %Py_DECREF.exit176

Py_DECREF.exit176:                                ; preds = %bb.br, %bb.bs, %bb.bt
  %i.fa = icmp eq i64 %i.ew, -1
  br i1 %i.fa, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %Py_DECREF.exit176
  %i.fb = call ptr @PyErr_Occurred() #16
  %.not173 = icmp eq ptr %i.fb, null
  br i1 %.not173, label %bb.bv, label %.thread239

bb.bv:                                            ; preds = %bb.bu, %Py_DECREF.exit176, %.thread
  %.2 = phi i64 [ %i.ei, %.thread ], [ %i.ew, %Py_DECREF.exit176 ], [ -1, %bb.bu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.fc = select i1 %i.ee, ptr @.str.140, ptr @.str.141
  %i.fd = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.d, i64 noundef 28, ptr noundef nonnull %i.fc, i64 noundef %.2) #16
  %i.fe = call i32 @PyUnicodeWriter_WriteSubstring(ptr noundef nonnull %i.g, ptr noundef nonnull %1, i64 noundef %.0112, i64 noundef %i.q) #16
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %.split.thread, label %.split

end_hunk_4
begin_hunk_5_@datetime_subtract:bb.a
  %i.dn = urem i16 %.lhs.trunc142, 400
  %.not.i.i121 = icmp eq i16 %i.dn, 0
  %i.do = add i32 %i.dh, 1
  br i1 %.not.i.i121, label %ymd_to_ord.exit122, label %is_leap.exit.thread.i.i117

is_leap.exit.thread.i.i117:                       ; preds = %is_leap.exit.i.i120, %bb.ah
  br label %ymd_to_ord.exit122

ymd_to_ord.exit122:                               ; preds = %ymd_to_ord.exit, %is_leap.exit.thread6.i.i119, %is_leap.exit.i.i120, %is_leap.exit.thread.i.i117
  %.0.i.i115 = phi i32 [ %i.dh, %ymd_to_ord.exit ], [ %i.dh, %is_leap.exit.thread.i.i117 ], [ %i.do, %is_leap.exit.i.i120 ], [ %i.dm, %is_leap.exit.thread6.i.i119 ]
  %i.dp = add nsw i32 %i.cz, -1                   ; 3 uses
  %.neg163 = sdiv i32 %i.dp, -4
  %.neg.i.i116.neg162 = sdiv i32 %i.dp, 100
  %.neg161 = sdiv i32 %i.dp, -400
  %i.dq = sub nsw i32 %i.bz, %i.cz
  %reass.mul = mul nsw i32 %i.dq, 365
  %.neg157 = add nuw nsw i32 %i.cq, %i.ce
  %.neg158 = add nsw i32 %.neg157, %.neg.i.i
  %.neg159 = add nsw i32 %.neg158, %i.cr
  %.neg160 = add i32 %.neg159, %.0.i.i
  %i.dr = sub i32 %.neg160, %i.de
  %i.ds = add i32 %i.dr, %.neg163
  %i.dt = add i32 %i.ds, %.neg.i.i116.neg162
  %i.du = add i32 %i.dt, %.neg161
  %i.dv = add i32 %i.du, %reass.mul
  %i.dw = sub i32 %i.dv, %.0.i.i115               ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 29
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !423
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr i8, ptr %1, i64 29
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !423
  %i.ec = zext i8 %i.eb to i32
  %i.ed = sub nsw i32 %i.dz, %i.ec
  %i.ee = mul nsw i32 %i.ed, 3600
  %i.ef = getelementptr i8, ptr %0, i64 30
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !423
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr i8, ptr %1, i64 30
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !423
  %i.ek = zext i8 %i.ej to i32
  %i.el = sub nsw i32 %i.eh, %i.ek
  %i.em = mul nsw i32 %i.el, 60
  %i.en = add nsw i32 %i.em, %i.ee
  %i.eo = getelementptr i8, ptr %0, i64 31
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !423
  %i.eq = zext i8 %i.ep to i32
  %i.er = getelementptr i8, ptr %1, i64 31
  %i.es = load i8, ptr %i.er, align 1, !tbaa !423
  %i.et = zext i8 %i.es to i32
  %i.eu = sub nsw i32 %i.eq, %i.et
  %i.ev = add nsw i32 %i.en, %i.eu                ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 32
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !423
  %i.ey = zext i8 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 16
  %i.fa = getelementptr i8, ptr %0, i64 33
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !423
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 8
  %i.fe = or disjoint i32 %i.fd, %i.ez
  %i.ff = getelementptr i8, ptr %0, i64 34
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !423
  %i.fh = zext i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.fe, %i.fh
  %i.fj = getelementptr i8, ptr %1, i64 32
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !423
  %i.fl = zext i8 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 16
  %i.fn = getelementptr i8, ptr %1, i64 33
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !423
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 8
  %i.fr = or disjoint i32 %i.fq, %i.fm
  %i.fs = getelementptr i8, ptr %1, i64 34
  %i.ft = load i8, ptr %i.fs, align 2, !tbaa !423
  %i.fu = zext i8 %i.ft to i32
  %i.fv = or disjoint i32 %i.fr, %i.fu
  %i.fw = sub nsw i32 %i.fi, %i.fv                ; 4 uses
  %or.cond.i.i = icmp ugt i32 %i.fw, 999999
  br i1 %or.cond.i.i, label %normalize_pair.exit.i.i, label %._crit_edge.i.i

normalize_pair.exit.i.i:                          ; preds = %ymd_to_ord.exit122
  %i.fx = sdiv i32 %i.fw, 1000000                 ; 2 uses
  %.neg.i.i124 = mul nsw i32 %i.fx, -1000000
  %i.fy = add nsw i32 %.neg.i.i124, %i.fw         ; 3 uses
  %i.fz = icmp slt i32 %i.fy, 0
  %i.ga = select i1 %i.fz, i32 1000000, i32 0
  %storemerge.i.i.i.i = add nsw i32 %i.ga, %i.fy
  %.lobit.i.i.i.i = ashr i32 %i.fy, 31
  %.0.i.i.i.i = add nsw i32 %i.fx, %i.ev
  %i.gb = add nsw i32 %.0.i.i.i.i, %.lobit.i.i.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %normalize_pair.exit.i.i, %ymd_to_ord.exit122
  %.131.i = phi i32 [ %i.gb, %normalize_pair.exit.i.i ], [ %i.ev, %ymd_to_ord.exit122 ] ; 4 uses
  %.1.i = phi i32 [ %storemerge.i.i.i.i, %normalize_pair.exit.i.i ], [ %i.fw, %ymd_to_ord.exit122 ] ; 2 uses
  %or.cond9.i.i = icmp ugt i32 %.131.i, 86399
  br i1 %or.cond9.i.i, label %normalize_pair.exit14.i.i, label %normalize_d_s_us.exit.i

normalize_pair.exit14.i.i:                        ; preds = %._crit_edge.i.i
  %i.gc = sdiv i32 %.131.i, 86400                 ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.gc, -86400
  %i.gd = add nsw i32 %.neg15.i.i, %.131.i        ; 3 uses
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = select i1 %i.ge, i32 86400, i32 0
  %storemerge.i.i11.i.i = add nsw i32 %i.gf, %i.gd
  %.lobit.i.i12.i.i = ashr i32 %i.gd, 31
  %.0.i.i13.i.i = add i32 %i.gc, %i.dw
  %i.gg = add i32 %.0.i.i13.i.i, %.lobit.i.i12.i.i
  br label %normalize_d_s_us.exit.i

normalize_d_s_us.exit.i:                          ; preds = %normalize_pair.exit14.i.i, %._crit_edge.i.i
  %.032.i = phi i32 [ %i.dw, %._crit_edge.i.i ], [ %i.gg, %normalize_pair.exit14.i.i ] ; 4 uses
  %.030.i = phi i32 [ %.131.i, %._crit_edge.i.i ], [ %storemerge.i.i11.i.i, %normalize_pair.exit14.i.i ] ; 2 uses
  %i.gh = add i32 %.032.i, 999999999
  %or.cond.i16.i = icmp ult i32 %i.gh, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %normalize_d_s_us.exit.i
  %i.gi = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !429
  %i.gj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gi, ptr noundef nonnull @.str.71, i32 noundef %.032.i, i32 noundef 999999999) #16, !inline_history !417 ; 0 uses
  br label %.critedge

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i
  %i.gk = or i32 %.032.i, %.1.i
  %i.gl = or i32 %i.gk, %.030.i
  %or.cond3.i.i = icmp ne i32 %i.gl, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.gm = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.gm
  br i1 %or.cond.i17.not.i, label %bb.aj, label %new_delta_ex.exit

bb.aj:                                            ; preds = %check_delta_day_range.exit.i
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !416
  %i.go = tail call ptr %i.gn(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !417 ; 6 uses
  %.not15.i = icmp eq ptr %i.go, null
  br i1 %.not15.i, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  store i64 -1, ptr %i.gp, align 8, !tbaa !419
  %i.gq = getelementptr i8, ptr %i.go, i64 24
  store i32 %.032.i, ptr %i.gq, align 8, !tbaa !420
  %i.gr = getelementptr i8, ptr %i.go, i64 28
  store i32 %.030.i, ptr %i.gr, align 4, !tbaa !421
  %i.gs = getelementptr i8, ptr %i.go, i64 32
  store i32 %.1.i, ptr %i.gs, align 8, !tbaa !422
  br label %new_delta_ex.exit

new_delta_ex.exit:                                ; preds = %bb.ak, %check_delta_day_range.exit.i
  %.0.i123 = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ %i.go, %bb.ak ] ; 5 uses
  %.not81 = icmp eq ptr %.061185190, null
  br i1 %.not81, label %Py_DECREF.exit, label %bb.al

bb.al:                                            ; preds = %new_delta_ex.exit
  %i.gt = tail call ptr @delta_subtract(ptr noundef nonnull %.0.i123, ptr noundef nonnull %.061185190) ; 3 uses
  %i.gu = load i32, ptr %.0.i123, align 8, !tbaa !423 ; 2 uses
  %.not.i82 = icmp sgt i32 %i.gu, -1
  br i1 %.not.i82, label %bb.am, label %Py_DECREF.exit83

bb.am:                                            ; preds = %bb.al
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  store i32 %i.gv, ptr %.0.i123, align 8, !tbaa !423
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.an, label %Py_DECREF.exit83

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i123) #16
  br label %Py_DECREF.exit83

Py_DECREF.exit83:                                 ; preds = %bb.al, %bb.am, %bb.an
  %i.gx = load i32, ptr %.061185190, align 8, !tbaa !423 ; 2 uses
  %.not.i = icmp sgt i32 %i.gx, -1
  br i1 %.not.i, label %bb.ao, label %Py_DECREF.exit

bb.ao:                                            ; preds = %Py_DECREF.exit83
  %i.gy = add nsw i32 %i.gx, -1                   ; 2 uses
  store i32 %i.gy, ptr %.061185190, align 8, !tbaa !423
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.ap, label %Py_DECREF.exit

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %.061185190) #16
  br label %Py_DECREF.exit

bb.aq:                                            ; preds = %PyObject_TypeCheck.exit110
  %.val = load ptr, ptr %i.c, align 8, !tbaa !430 ; 2 uses
  %.not.i125 = icmp eq ptr %.val, @PyDateTime_DeltaType
  br i1 %.not.i125, label %PyObject_TypeCheck.exit126.thread, label %PyObject_TypeCheck.exit126

PyObject_TypeCheck.exit126:                       ; preds = %bb.aq
  %i.ha = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyDateTime_DeltaType) #16
  %.not147 = icmp eq i32 %i.ha, 0
  br i1 %.not147, label %Py_DECREF.exit.thread, label %PyObject_TypeCheck.exit126.thread

PyObject_TypeCheck.exit126.thread:                ; preds = %bb.aq, %PyObject_TypeCheck.exit126
  %i.hb = tail call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -1)
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ap, %bb.ao, %Py_DECREF.exit83, %new_delta_ex.exit, %PyObject_TypeCheck.exit126.thread
  %.2 = phi ptr [ %i.gt, %bb.ao ], [ %i.hb, %PyObject_TypeCheck.exit126.thread ], [ %i.gt, %bb.ap ], [ %.0.i123, %new_delta_ex.exit ], [ %i.gt, %Py_DECREF.exit83 ] ; 3 uses
  %i.hc = icmp eq ptr %.2, @_Py_NotImplementedStruct
  br i1 %i.hc, label %Py_DECREF.exit.thread, label %.critedge

Py_DECREF.exit.thread:                            ; preds = %PyObject_TypeCheck.exit126, %PyObject_TypeCheck.exit, %Py_DECREF.exit
  %.2139 = phi ptr [ %.2, %Py_DECREF.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit126 ] ; 4 uses
  %i.hd = load i32, ptr %.2139, align 8, !tbaa !423 ; 2 uses
  %i.he = icmp ugt i32 %i.hd, -1073741825
  br i1 %i.he, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %Py_DECREF.exit.thread
  %i.hf = add nuw i32 %i.hd, 1
  store i32 %i.hf, ptr %.2139, align 8, !tbaa !423
  br label %.critedge

.critedge:                                        ; preds = %bb.aj, %check_delta_day_range.exit.thread.i, %bb.ar, %Py_DECREF.exit.thread, %bb.aa, %bb.z, %Py_DECREF.exit91, %bb.t, %bb.s, %Py_DECREF.exit95, %bb.n, %bb.m, %bb.l, %datetime_utcoffset.exit, %Py_DECREF.exit
  %.1 = phi ptr [ %.2, %Py_DECREF.exit ], [ null, %bb.aa ], [ null, %bb.t ], [ null, %bb.n ], [ %.2139, %bb.ar ], [ null, %datetime_utcoffset.exit ], [ null, %bb.l ], [ null, %bb.m ], [ null, %Py_DECREF.exit95 ], [ null, %bb.s ], [ null, %Py_DECREF.exit91 ], [ null, %bb.z ], [ %.2139, %Py_DECREF.exit.thread ], [ null, %check_delta_day_range.exit.thread.i ], [ null, %bb.aj ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @pep495_eq_exception(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3) unnamed_addr #0 !guid !643 {
bb.a:
  %i.a = tail call fastcc ptr @get_flip_fold_offset(ptr noundef %0) ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, %2
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !420
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !420
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %delta_cmp.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.a, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !421
  %i.j = getelementptr i8, ptr %2, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !421
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %delta_cmp.exit, label %delta_cmp.exit.thread

delta_cmp.exit:                                   ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.a, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !422
  %i.o = getelementptr i8, ptr %2, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !422
  %.not21 = icmp eq i32 %i.n, %i.p
  br i1 %.not21, label %bb.e, label %delta_cmp.exit.thread

bb.e:                                             ; preds = %delta_cmp.exit, %bb.b
  %i.q = load i32, ptr %i.a, align 8, !tbaa !423  ; 2 uses
  %.not.i24 = icmp sgt i32 %i.q, -1
  br i1 %.not.i24, label %bb.f, label %Py_DECREF.exit25

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !423
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %Py_DECREF.exit25

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16
  br label %Py_DECREF.exit25

Py_DECREF.exit25:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.t = tail call fastcc ptr @get_flip_fold_offset(ptr noundef %1) ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit25
  %.not22 = icmp eq ptr %i.t, %3
  br i1 %.not22, label %delta_cmp.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.t, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !420
  %i.x = getelementptr i8, ptr %3, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !420
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.j, label %delta_cmp.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %i.t, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !421
  %i.ac = getelementptr i8, ptr %3, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !421
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.k, label %delta_cmp.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.t, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !422
  %i.ah = getelementptr i8, ptr %3, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !422
  %i.aj = icmp ne i32 %i.ag, %i.ai
  %i.ak = zext i1 %i.aj to i32
  br label %delta_cmp.exit.thread

delta_cmp.exit.thread:                            ; preds = %bb.k, %bb.j, %bb.i, %bb.c, %bb.d, %delta_cmp.exit, %bb.h
  %.015 = phi i32 [ 0, %bb.h ], [ 1, %delta_cmp.exit ], [ 1, %bb.c ], [ 1, %bb.d ], [ %i.ak, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ] ; 3 uses
  %.0 = phi ptr [ %i.t, %bb.h ], [ %i.a, %delta_cmp.exit ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %i.t, %bb.k ], [ %i.t, %bb.j ], [ %i.t, %bb.i ] ; 3 uses
  %i.al = load i32, ptr %.0, align 8, !tbaa !423  ; 2 uses
  %.not.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %delta_cmp.exit.thread
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %.0, align 8, !tbaa !423
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.m, %bb.l, %delta_cmp.exit.thread, %Py_DECREF.exit25, %bb.a
  %.016 = phi i32 [ -1, %bb.a ], [ -1, %Py_DECREF.exit25 ], [ %.015, %delta_cmp.exit.thread ], [ %.015, %bb.l ], [ %.015, %bb.m ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @get_flip_fold_offset(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 !guid !645 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 25
  %i.b = load i8, ptr %i.a, align 1, !tbaa !423
  %i.c = getelementptr i8, ptr %0, i64 26
  %i.d = load i8, ptr %i.c, align 1, !tbaa !423
  %i.e = getelementptr i8, ptr %0, i64 27
  %i.f = load i8, ptr %i.e, align 1, !tbaa !423
  %i.g = getelementptr i8, ptr %0, i64 28
  %i.h = load i8, ptr %i.g, align 1, !tbaa !423
  %i.i = getelementptr i8, ptr %0, i64 29
  %i.j = load i8, ptr %i.i, align 1, !tbaa !423
  %i.k = getelementptr i8, ptr %0, i64 30
  %i.l = load i8, ptr %i.k, align 1, !tbaa !423
  %i.m = getelementptr i8, ptr %0, i64 31
  %i.n = load i8, ptr %i.m, align 1, !tbaa !423
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load i8, ptr %i.o, align 1, !tbaa !423
  %i.q = getelementptr i8, ptr %0, i64 33
  %i.r = load i8, ptr %i.q, align 1, !tbaa !423
  %i.s = getelementptr i8, ptr %0, i64 34
  %i.t = load i8, ptr %i.s, align 1, !tbaa !423
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !442
  %.not.i7 = icmp eq i8 %i.v, 0
  br i1 %.not.i7, label %flip_fold.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !436
  br label %flip_fold.exit

flip_fold.exit:                                   ; preds = %bb.a, %bb.b
  %i.y = phi ptr [ %i.x, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  %i.z = zext i8 %i.p to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = zext i8 %i.r to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = or disjoint i32 %i.ac, %i.aa
  %i.ae = zext i8 %i.t to i32
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = zext i8 %i.n to i32
  %i.ah = zext i8 %i.l to i32
  %i.ai = zext i8 %i.j to i32
  %i.aj = zext i8 %i.h to i32
  %i.ak = zext i8 %i.f to i32
  %i.al = zext i8 %i.b to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = zext i8 %i.d to i32
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %0, i64 35
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !437
  %.not14.i = icmp eq i8 %i.aq, 0
  %i.ar = zext i1 %.not14.i to i32
  %i.as = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !430
  %i.at = tail call ptr @new_datetime_ex2(i32 noundef %i.ao, i32 noundef %i.ak, i32 noundef %i.aj, i32 noundef %i.ai, i32 noundef %i.ah, i32 noundef %i.ag, i32 noundef %i.af, ptr noundef %i.y, i32 noundef %i.ar, ptr noundef %.val.i), !inline_history !644 ; 7 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %flip_fold.exit
  %i.av = getelementptr i8, ptr %i.at, i64 24
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !442
  %.not.i8 = icmp eq i8 %i.aw, 0
  br i1 %.not.i8, label %datetime_utcoffset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr i8, ptr %i.at, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !436
  br label %datetime_utcoffset.exit

datetime_utcoffset.exit:                          ; preds = %bb.c, %bb.d
  %i.az = phi ptr [ %i.ay, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.ba = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.az, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.at) ; 3 uses
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !423 ; 2 uses
  %.not.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %datetime_utcoffset.exit
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.at, align 8, !tbaa !423
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.at) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %datetime_utcoffset.exit, %flip_fold.exit
  %.0 = phi ptr [ null, %flip_fold.exit ], [ %i.ba, %datetime_utcoffset.exit ], [ %i.ba, %bb.e ], [ %i.ba, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_now(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !649 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !446
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %2, 2
  %i.h = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.h, %i.g
  br i1 %or.cond5, label %.thread29, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_now._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.e) #16 ; 2 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %datetime_datetime_now_impl.exit, label %.thread29

.thread29:                                        ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ %1, %bb.b ]
  %i.l = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ]
  %i.m = sub i64 0, %i.l
  %.not26 = icmp eq i64 %2, %i.m
  br i1 %.not26, label %.thread31, label %bb.d

bb.d:                                             ; preds = %.thread29
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !429  ; 5 uses
  %.not34 = icmp eq ptr %i.n, @_Py_NoneStruct
  br i1 %.not34, label %.thread31, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %.val4.i.i = load ptr, ptr %i.o, align 8, !tbaa !430 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val4.i.i, @PyDateTime_TZInfoType
  br i1 %.not.i.i.i, label %.thread31, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.e
  %i.p = call i32 @PyType_IsSubtype(ptr noundef %.val4.i.i, ptr noundef nonnull @PyDateTime_TZInfoType) #16, !inline_history !646
  %.not6.i.i = icmp eq i32 %i.p, 0
  br i1 %.not6.i.i, label %check_tzinfo_subclass.exit.i, label %.thread31

check_tzinfo_subclass.exit.i:                     ; preds = %PyObject_TypeCheck.exit.i.i
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !429
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !430
  %i.r = getelementptr i8, ptr %.val.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !431
  %i.t = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.q, ptr noundef nonnull @.str.200, ptr noundef %i.s) #16, !inline_history !646 ; 0 uses
  br label %datetime_datetime_now_impl.exit

.thread31:                                        ; preds = %.thread29, %PyObject_TypeCheck.exit.i.i, %bb.e, %bb.d
  %i.u = phi i1 [ true, %PyObject_TypeCheck.exit.i.i ], [ false, %bb.d ], [ true, %bb.e ], [ false, %.thread29 ]
  %.033 = phi ptr [ %i.n, %PyObject_TypeCheck.exit.i.i ], [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ @_Py_NoneStruct, %.thread29 ] ; 2 uses
  %i.v = phi ptr [ @_PyTime_gmtime, %PyObject_TypeCheck.exit.i.i ], [ @_PyTime_localtime, %bb.d ], [ @_PyTime_gmtime, %bb.e ], [ @_PyTime_localtime, %.thread29 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.w = call i32 @PyTime_Time(ptr noundef nonnull %i.b) #16, !inline_history !647
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %datetime_best_possible.exit.thread.i, label %bb.f

datetime_best_possible.exit.thread.i:             ; preds = %.thread31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %datetime_datetime_now_impl.exit

bb.f:                                             ; preds = %.thread31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.y = load i64, ptr %i.b, align 8, !tbaa !466
  %i.z = call i32 @_PyTime_AsTimevalTime_t(i64 noundef %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 2) #16, !inline_history !647
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %datetime_best_possible.exit.thread19.i, label %datetime_best_possible.exit.i

datetime_best_possible.exit.thread19.i:           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %datetime_datetime_now_impl.exit

datetime_best_possible.exit.i:                    ; preds = %bb.f
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !466
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !15
  %i.ad = call fastcc ptr @datetime_from_timet_and_us(ptr noundef %0, ptr noundef nonnull readonly %i.v, i64 noundef %i.ab, i32 noundef %i.ac, ptr noundef %.033), !inline_history !647 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ae = icmp ne ptr %i.ad, null
  %or.cond.i = and i1 %i.u, %i.ae
  br i1 %or.cond.i, label %bb.g, label %datetime_datetime_now_impl.exit

bb.g:                                             ; preds = %datetime_best_possible.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %.033, ptr %i.a, align 16, !tbaa !429
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !429
  %i.ag = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 85048), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16, !inline_history !648 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ah = load i32, ptr %i.ad, align 8, !tbaa !423 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i.i, label %bb.h, label %datetime_datetime_now_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.ad, align 8, !tbaa !423
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %datetime_datetime_now_impl.exit

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #16, !inline_history !648
  br label %datetime_datetime_now_impl.exit

datetime_datetime_now_impl.exit:                  ; preds = %bb.i, %bb.h, %bb.g, %datetime_best_possible.exit.i, %datetime_best_possible.exit.thread19.i, %datetime_best_possible.exit.thread.i, %check_tzinfo_subclass.exit.i, %bb.c
  %.021 = phi ptr [ null, %bb.c ], [ null, %check_tzinfo_subclass.exit.i ], [ null, %datetime_best_possible.exit.thread19.i ], [ %i.ad, %datetime_best_possible.exit.i ], [ null, %datetime_best_possible.exit.thread.i ], [ %i.ag, %bb.g ], [ %i.ag, %bb.h ], [ %i.ag, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  ret ptr %.021
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_utcnow(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 !guid !654 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !429
  %i.e = tail call i32 @PyErr_WarnEx(ptr noundef %i.d, ptr noundef nonnull @.str.225, i64 noundef 1) #16, !inline_history !650
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %datetime_datetime_utcnow_impl.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.f = call i32 @PyTime_Time(ptr noundef nonnull %i.a) #16, !inline_history !651
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %datetime_best_possible.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.h = load i64, ptr %i.a, align 8, !tbaa !466
  %i.i = call i32 @_PyTime_AsTimevalTime_t(i64 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 2) #16, !inline_history !651
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !tbaa !466
  %i.l = load i32, ptr %i.c, align 4, !tbaa !15   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.m = call i32 @_PyTime_gmtime(i64 noundef %i.k, ptr noundef nonnull %2) #16, !callees !476, !inline_history !652
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %datetime_from_timet_and_us.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !468
  %i.p = add i32 %i.o, 1900                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !469
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !470  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !477  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !478  ; 2 uses
  %i.z = load i32, ptr %2, align 8, !tbaa !479
  %i.aa = call i32 @llvm.smin.i32(i32 %i.z, i32 59) ; 2 uses
  %i.ab = icmp eq ptr %0, @PyDateTime_DateTimeType
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = call ptr @new_datetime_ex2(i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.l, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !653
  br label %datetime_from_timet_and_us.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ad = call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.29, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.l, ptr noundef nonnull @_Py_NoneStruct), !inline_history !653
  br label %datetime_from_timet_and_us.exit.i

datetime_from_timet_and_us.exit.i:                ; preds = %bb.g, %bb.f, %bb.d
  %.135.i.i = phi ptr [ null, %bb.d ], [ %i.ad, %bb.g ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.h

bb.h:                                             ; preds = %datetime_from_timet_and_us.exit.i, %bb.c
  %.0.i.i = phi ptr [ %.135.i.i, %datetime_from_timet_and_us.exit.i ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %datetime_best_possible.exit.i

datetime_best_possible.exit.i:                    ; preds = %bb.h, %bb.b
  %.1.i.i = phi ptr [ %.0.i.i, %bb.h ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %datetime_datetime_utcnow_impl.exit

datetime_datetime_utcnow_impl.exit:               ; preds = %bb.a, %datetime_best_possible.exit.i
  %.0.i = phi ptr [ %.1.i.i, %datetime_best_possible.exit.i ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_fromtimestamp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !655 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !446
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %2, -1
  %i.e = icmp ult i64 %i.d, 2
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread31, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @datetime_datetime_fromtimestamp._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.f, label %.thread31

.thread31:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %1, %bb.b ]   ; 2 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %2, %bb.b ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !429
  %.not28 = icmp eq i64 %i.j, 1
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread31
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !429
  br label %bb.e

bb.e:                                             ; preds = %.thread31, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ @_Py_NoneStruct, %.thread31 ]
  %i.n = call fastcc ptr @datetime_datetime_fromtimestamp_impl(ptr noundef %0, ptr noundef %i.k, ptr noundef %.0)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.023 = phi ptr [ %i.n, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_utcfromtimestamp(ptr noundef %0, ptr noundef %1) #0 !guid !660 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !429
end_hunk_5
begin_hunk_6_@datetime_datetime_replace:bb.a
  %i.bm = getelementptr i8, ptr %i.ba, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !429 ; 2 uses
  %.not130 = icmp eq ptr %i.bn, null
  br i1 %.not130, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bn) #16 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = call ptr @PyErr_Occurred() #16
  %.not131 = icmp eq ptr %i.bq, null
  br i1 %.not131, label %bb.r, label %datetime_datetime_replace_impl.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.br = add i64 %.190, -1                       ; 2 uses
  %.not132 = icmp eq i64 %i.br, 0
  br i1 %.not132, label %.thread151, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.2 = phi i64 [ %i.br, %bb.r ], [ %.190, %bb.o ] ; 2 uses
  %.083 = phi i32 [ %i.bo, %bb.r ], [ %i.r, %bb.o ] ; 7 uses
  %i.bs = getelementptr i8, ptr %i.ba, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !429 ; 2 uses
  %.not133 = icmp eq ptr %i.bt, null
  br i1 %.not133, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bt) #16 ; 3 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bw = call ptr @PyErr_Occurred() #16
  %.not134 = icmp eq ptr %i.bw, null
  br i1 %.not134, label %bb.v, label %datetime_datetime_replace_impl.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bx = add i64 %.2, -1                         ; 2 uses
  %.not135 = icmp eq i64 %i.bx, 0
  br i1 %.not135, label %.thread151, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.3 = phi i64 [ %i.bx, %bb.v ], [ %.2, %bb.s ]  ; 2 uses
  %.081 = phi i32 [ %i.bu, %bb.v ], [ %i.u, %bb.s ] ; 6 uses
  %i.by = getelementptr i8, ptr %i.ba, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !429 ; 2 uses
  %.not136 = icmp eq ptr %i.bz, null
  br i1 %.not136, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = call i32 @PyLong_AsInt(ptr noundef nonnull %i.bz) #16 ; 3 uses
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cc = call ptr @PyErr_Occurred() #16
  %.not137 = icmp eq ptr %i.cc, null
  br i1 %.not137, label %bb.z, label %datetime_datetime_replace_impl.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cd = add i64 %.3, -1                         ; 2 uses
  %.not138 = icmp eq i64 %i.cd, 0
  br i1 %.not138, label %.thread151, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.4 = phi i64 [ %i.cd, %bb.z ], [ %.3, %bb.w ]  ; 2 uses
  %.079 = phi i32 [ %i.ca, %bb.z ], [ %i.x, %bb.w ] ; 5 uses
  %i.ce = getelementptr i8, ptr %i.ba, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !429 ; 2 uses
  %.not139 = icmp eq ptr %i.cf, null
  br i1 %.not139, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = call i32 @PyLong_AsInt(ptr noundef nonnull %i.cf) #16 ; 3 uses
  %i.ch = icmp eq i32 %i.cg, -1
  br i1 %i.ch, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ci = call ptr @PyErr_Occurred() #16
  %.not140 = icmp eq ptr %i.ci, null
  br i1 %.not140, label %bb.ad, label %datetime_datetime_replace_impl.exit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cj = add i64 %.4, -1                         ; 2 uses
  %.not141 = icmp eq i64 %i.cj, 0
  br i1 %.not141, label %.thread151, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.5 = phi i64 [ %i.cj, %bb.ad ], [ %.4, %bb.aa ] ; 2 uses
  %.077 = phi i32 [ %i.cg, %bb.ad ], [ %i.aa, %bb.aa ] ; 4 uses
  %i.ck = getelementptr i8, ptr %i.ba, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !429 ; 2 uses
  %.not142 = icmp eq ptr %i.cl, null
  br i1 %.not142, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cm = call i32 @PyLong_AsInt(ptr noundef nonnull %i.cl) #16 ; 3 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.co = call ptr @PyErr_Occurred() #16
  %.not143 = icmp eq ptr %i.co, null
  br i1 %.not143, label %bb.ah, label %datetime_datetime_replace_impl.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cp = add i64 %.5, -1                         ; 2 uses
  %.not144 = icmp eq i64 %i.cp, 0
  br i1 %.not144, label %.thread151, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.6 = phi i64 [ %i.cp, %bb.ah ], [ %.5, %bb.ae ]
  %.076 = phi i32 [ %i.cm, %bb.ah ], [ %i.an, %bb.ae ] ; 3 uses
  %i.cq = getelementptr i8, ptr %i.ba, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !429 ; 3 uses
  %.not145 = icmp eq ptr %i.cr, null
  br i1 %.not145, label %.thread170, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not146 = icmp eq i64 %.6, 1
  br i1 %.not146, label %.thread151, label %.thread170

.thread170:                                       ; preds = %bb.ai, %bb.aj
  %.075188 = phi ptr [ %i.cr, %bb.aj ], [ %i.as, %bb.ai ] ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ba, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !429
  %i.cu = call i32 @PyLong_AsInt(ptr noundef %i.ct) #16 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, -1
  br i1 %i.cv, label %bb.ak, label %.thread151

bb.ak:                                            ; preds = %.thread170
  %i.cw = call ptr @PyErr_Occurred() #16
  %.not147 = icmp eq ptr %i.cw, null
  br i1 %.not147, label %.thread151, label %datetime_datetime_replace_impl.exit

.thread151:                                       ; preds = %bb.j, %bb.n, %bb.r, %bb.v, %bb.z, %bb.ad, %bb.ah, %.thread, %.thread170, %bb.ak, %bb.aj
  %.075169 = phi ptr [ %.075188, %bb.ak ], [ %.075188, %.thread170 ], [ %i.cr, %bb.aj ], [ %i.as, %.thread ], [ %i.as, %bb.ah ], [ %i.as, %bb.ad ], [ %i.as, %bb.z ], [ %i.as, %bb.v ], [ %i.as, %bb.r ], [ %i.as, %bb.n ], [ %i.as, %bb.j ] ; 2 uses
  %.1168 = phi i32 [ %.076, %bb.ak ], [ %.076, %.thread170 ], [ %.076, %bb.aj ], [ %i.an, %.thread ], [ %i.cm, %bb.ah ], [ %i.an, %bb.ad ], [ %i.an, %bb.z ], [ %i.an, %bb.v ], [ %i.an, %bb.r ], [ %i.an, %bb.n ], [ %i.an, %bb.j ] ; 2 uses
  %.178167 = phi i32 [ %.077, %bb.ak ], [ %.077, %.thread170 ], [ %.077, %bb.aj ], [ %i.aa, %.thread ], [ %.077, %bb.ah ], [ %i.cg, %bb.ad ], [ %i.aa, %bb.z ], [ %i.aa, %bb.v ], [ %i.aa, %bb.r ], [ %i.aa, %bb.n ], [ %i.aa, %bb.j ] ; 2 uses
  %.180166 = phi i32 [ %.079, %bb.ak ], [ %.079, %.thread170 ], [ %.079, %bb.aj ], [ %i.x, %.thread ], [ %.079, %bb.ah ], [ %.079, %bb.ad ], [ %i.ca, %bb.z ], [ %i.x, %bb.v ], [ %i.x, %bb.r ], [ %i.x, %bb.n ], [ %i.x, %bb.j ] ; 2 uses
  %.182165 = phi i32 [ %.081, %bb.ak ], [ %.081, %.thread170 ], [ %.081, %bb.aj ], [ %i.u, %.thread ], [ %.081, %bb.ah ], [ %.081, %bb.ad ], [ %.081, %bb.z ], [ %i.bu, %bb.v ], [ %i.u, %bb.r ], [ %i.u, %bb.n ], [ %i.u, %bb.j ] ; 2 uses
  %.184164 = phi i32 [ %.083, %bb.ak ], [ %.083, %.thread170 ], [ %.083, %bb.aj ], [ %i.r, %.thread ], [ %.083, %bb.ah ], [ %.083, %bb.ad ], [ %.083, %bb.z ], [ %.083, %bb.v ], [ %i.bo, %bb.r ], [ %i.r, %bb.n ], [ %i.r, %bb.j ] ; 2 uses
  %.186163 = phi i32 [ %.085, %bb.ak ], [ %.085, %.thread170 ], [ %.085, %bb.aj ], [ %i.o, %.thread ], [ %.085, %bb.ah ], [ %.085, %bb.ad ], [ %.085, %bb.z ], [ %.085, %bb.v ], [ %.085, %bb.r ], [ %i.bi, %bb.n ], [ %i.o, %bb.j ] ; 2 uses
  %.188162 = phi i32 [ %.087, %bb.ak ], [ %.087, %.thread170 ], [ %.087, %bb.aj ], [ %i.l, %.thread ], [ %.087, %bb.ah ], [ %.087, %bb.ad ], [ %.087, %bb.z ], [ %.087, %bb.v ], [ %.087, %bb.r ], [ %.087, %bb.n ], [ %i.bc, %bb.j ] ; 2 uses
  %.0 = phi i32 [ -1, %bb.ak ], [ %i.cu, %.thread170 ], [ %i.av, %bb.aj ], [ %i.av, %.thread ], [ %i.av, %bb.ah ], [ %i.av, %bb.ad ], [ %i.av, %bb.z ], [ %i.av, %bb.v ], [ %i.av, %bb.r ], [ %i.av, %bb.n ], [ %i.av, %bb.j ] ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 8
  %.val149 = load ptr, ptr %i.cx, align 8, !tbaa !430 ; 2 uses
  %i.cy = icmp eq ptr %.val149, @PyDateTime_DateTimeType
  br i1 %i.cy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread151
  %i.cz = call ptr @new_datetime_ex2(i32 noundef %.188162, i32 noundef %.186163, i32 noundef %.184164, i32 noundef %.182165, i32 noundef %.180166, i32 noundef %.178167, i32 noundef %.1168, ptr noundef %.075169, i32 noundef %.0, ptr noundef nonnull @PyDateTime_DateTimeType), !inline_history !677
  br label %datetime_datetime_replace_impl.exit

bb.am:                                            ; preds = %.thread151
  %i.da = call ptr (ptr, i32, ptr, ...) @call_subclass_fold(ptr noundef %.val149, i32 noundef %.0, ptr noundef nonnull @.str.29, i32 noundef %.188162, i32 noundef %.186163, i32 noundef %.184164, i32 noundef %.182165, i32 noundef %.180166, i32 noundef %.178167, i32 noundef %.1168, ptr noundef %.075169), !inline_history !677
  br label %datetime_datetime_replace_impl.exit

datetime_datetime_replace_impl.exit:              ; preds = %bb.am, %bb.al, %bb.ak, %bb.ag, %bb.ac, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i, %bb.f
  %.091 = phi ptr [ null, %bb.i ], [ null, %bb.m ], [ null, %bb.q ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.ac ], [ null, %bb.ag ], [ null, %bb.ak ], [ null, %bb.f ], [ %i.cz, %bb.al ], [ %i.da, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.091
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_datetime_astimezone(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !684 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !446
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
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !429  ; 5 uses
  %i.l = icmp eq ptr %i.k, @_Py_NoneStruct
  br i1 %i.l, label %.thread31, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  %.val4.i.i = load ptr, ptr %i.m, align 8, !tbaa !430 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val4.i.i, @PyDateTime_TZInfoType
  br i1 %.not.i.i.i, label %.thread31, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.e
  %i.n = call i32 @PyType_IsSubtype(ptr noundef %.val4.i.i, ptr noundef nonnull @PyDateTime_TZInfoType) #16, !inline_history !679
  %.not6.i.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i.i, label %check_tzinfo_subclass.exit.i, label %.thread31

check_tzinfo_subclass.exit.i:                     ; preds = %PyObject_TypeCheck.exit.i.i
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !429
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !430
  %i.p = getelementptr i8, ptr %.val.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !431
  %i.r = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.200, ptr noundef %i.q) #16, !inline_history !679 ; 0 uses
  br label %datetime_datetime_astimezone_impl.exit

.thread31:                                        ; preds = %.thread29, %PyObject_TypeCheck.exit.i.i, %bb.e, %bb.d
  %i.s = phi i1 [ true, %bb.d ], [ false, %PyObject_TypeCheck.exit.i.i ], [ false, %bb.e ], [ true, %.thread29 ]
  %.033 = phi ptr [ %i.k, %bb.d ], [ %i.k, %PyObject_TypeCheck.exit.i.i ], [ %i.k, %bb.e ], [ @_Py_NoneStruct, %.thread29 ] ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !442
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %Py_DECREF.exit84.i, label %bb.f

bb.f:                                             ; preds = %.thread31
  %i.v = getelementptr i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !436  ; 5 uses
  %i.x = icmp eq ptr %i.w, @_Py_NoneStruct
  br i1 %i.x, label %Py_DECREF.exit84.i, label %bb.h

Py_DECREF.exit84.i:                               ; preds = %bb.r, %bb.s, %bb.t, %.thread31, %bb.f
  %i.y = getelementptr i8, ptr %0, i64 35
  %i.z = load i8, ptr %i.y, align 1, !tbaa !437   ; 3 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %0, i64 25        ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !423
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = getelementptr i8, ptr %0, i64 26        ; 2 uses
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !423
  %i.ah = zext i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.ae, %i.ah
  %i.aj = getelementptr i8, ptr %0, i64 27        ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !423
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.an = load i8, ptr %i.am, align 4, !tbaa !423
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr i8, ptr %0, i64 29        ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !423
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr i8, ptr %0, i64 30        ; 2 uses
  %i.at = load i8, ptr %i.as, align 2, !tbaa !423
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr i8, ptr %0, i64 31        ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !423
  %i.ax = zext i8 %i.aw to i32
  %i.ay = call fastcc i64 @local_to_seconds(i32 noundef %i.ai, i32 noundef %i.al, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef %i.ax, i32 noundef %i.aa), !inline_history !680 ; 3 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %datetime_datetime_astimezone_impl.exit, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit84.i
  %i.ba = load i8, ptr %i.ab, align 1, !tbaa !423
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = load i8, ptr %i.af, align 2, !tbaa !423
  %i.be = zext i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = load i8, ptr %i.aj, align 1, !tbaa !423
  %i.bh = zext i8 %i.bg to i32
  %i.bi = load i8, ptr %i.am, align 4, !tbaa !423
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i8, ptr %i.ap, align 1, !tbaa !423
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i8, ptr %i.as, align 2, !tbaa !423
  %i.bn = zext i8 %i.bm to i32
  %i.bo = load i8, ptr %i.av, align 1, !tbaa !423
  %i.bp = zext i8 %i.bo to i32
  %.not.i99.i = icmp eq i8 %i.z, 0
  %i.bq = zext i1 %.not.i99.i to i32
  %i.br = call fastcc i64 @local_to_seconds(i32 noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef %i.bn, i32 noundef %i.bp, i32 noundef %i.bq), !inline_history !680 ; 3 uses
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %datetime_datetime_astimezone_impl.exit, label %local_timezone_from_local.exit.i

local_timezone_from_local.exit.i:                 ; preds = %bb.g
  %i.bt = icmp sgt i64 %i.br, %i.ay
  %i.bu = zext i1 %i.bt to i8
  %.not31.i.i = icmp eq i8 %i.z, %i.bu
  %.0.i100.i = select i1 %.not31.i.i, i64 %i.br, i64 %i.ay
  %i.bv = add nsw i64 %.0.i100.i, -62135683200
  %i.bw = call fastcc ptr @local_timezone_from_timestamp(i64 noundef %i.bv), !inline_history !680 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %datetime_datetime_astimezone_impl.exit, label %_Py_NewRef.exit.i

bb.h:                                             ; preds = %bb.f
  %i.by = load i32, ptr %i.w, align 8, !tbaa !423 ; 2 uses
  %i.bz = icmp ugt i32 %i.by, -1073741825
  br i1 %i.bz, label %_Py_NewRef.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = add nuw i32 %i.by, 1
  store i32 %i.ca, ptr %i.w, align 8, !tbaa !423
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.i, %bb.h, %local_timezone_from_local.exit.i
  %.061.i = phi ptr [ %i.bw, %local_timezone_from_local.exit.i ], [ %i.w, %bb.h ], [ %i.w, %bb.i ] ; 8 uses
  %i.cb = icmp eq ptr %.061.i, %.033
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_Py_NewRef.exit.i
  %i.cc = load i32, ptr %.061.i, align 8, !tbaa !423 ; 2 uses
  %.not.i87.i = icmp sgt i32 %i.cc, -1
  br i1 %.not.i87.i, label %bb.k, label %Py_DECREF.exit88.i

bb.k:                                             ; preds = %bb.j
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %.061.i, align 8, !tbaa !423
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.l, label %Py_DECREF.exit88.i

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %.061.i) #16, !inline_history !681
  br label %Py_DECREF.exit88.i

Py_DECREF.exit88.i:                               ; preds = %bb.l, %bb.k, %bb.j
  %i.cf = load i32, ptr %0, align 8, !tbaa !423   ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, -1073741825
  br i1 %i.cg, label %datetime_datetime_astimezone_impl.exit, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit88.i
  %i.ch = add nuw i32 %i.cf, 1
  store i32 %i.ch, ptr %0, align 8, !tbaa !423
  br label %datetime_datetime_astimezone_impl.exit

bb.n:                                             ; preds = %_Py_NewRef.exit.i
  %i.ci = call fastcc ptr @call_tzinfo_method(ptr noundef nonnull %.061.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %0), !inline_history !681 ; 14 uses
  %i.cj = load i32, ptr %.061.i, align 8, !tbaa !423 ; 2 uses
  %.not.i85.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i85.i, label %bb.o, label %Py_DECREF.exit86.i

bb.o:                                             ; preds = %bb.n
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %.061.i, align 8, !tbaa !423
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %Py_DECREF.exit86.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %.061.i) #16, !inline_history !681
  br label %Py_DECREF.exit86.i

Py_DECREF.exit86.i:                               ; preds = %bb.p, %bb.o, %bb.n
  %i.cm = icmp eq ptr %i.ci, null
  br i1 %i.cm, label %datetime_datetime_astimezone_impl.exit, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit86.i
  %i.cn = icmp eq ptr %i.ci, @_Py_NoneStruct
  br i1 %i.cn, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.co = load i32, ptr %i.ci, align 8, !tbaa !423 ; 2 uses
  %.not.i83.i = icmp sgt i32 %i.co, -1
  br i1 %.not.i83.i, label %bb.s, label %Py_DECREF.exit84.i

bb.s:                                             ; preds = %bb.r
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.ci, align 8, !tbaa !423
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.t, label %Py_DECREF.exit84.i

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #16, !inline_history !681
  br label %Py_DECREF.exit84.i

bb.u:                                             ; preds = %bb.q
  %i.cr = getelementptr i8, ptr %i.ci, i64 8
  %.val98.i = load ptr, ptr %i.cr, align 8, !tbaa !430 ; 2 uses
  %.not.i102.i = icmp eq ptr %.val98.i, @PyDateTime_DeltaType
  br i1 %.not.i102.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.u
  %i.cs = call i32 @PyType_IsSubtype(ptr noundef %.val98.i, ptr noundef nonnull @PyDateTime_DeltaType) #16, !inline_history !681
  %.not111.i = icmp eq i32 %i.cs, 0
  br i1 %.not111.i, label %bb.v, label %PyObject_TypeCheck.exit.thread.i

bb.v:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.ct = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !429
  %i.cu = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ct, ptr noundef nonnull @.str.238, ptr noundef nonnull %i.ci) #16, !inline_history !681 ; 0 uses
  %i.cv = load i32, ptr %i.ci, align 8, !tbaa !423 ; 2 uses
  %.not.i81.i = icmp sgt i32 %i.cv, -1
  br i1 %.not.i81.i, label %bb.w, label %datetime_datetime_astimezone_impl.exit

bb.w:                                             ; preds = %bb.v
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.ci, align 8, !tbaa !423
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.x, label %datetime_datetime_astimezone_impl.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #16, !inline_history !681
  br label %datetime_datetime_astimezone_impl.exit

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.u
  %i.cy = call fastcc ptr @add_datetime_timedelta(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, i32 noundef -1), !inline_history !681 ; 21 uses
  %i.cz = load i32, ptr %i.ci, align 8, !tbaa !423 ; 2 uses
  %.not.i79.i = icmp sgt i32 %i.cz, -1
  br i1 %.not.i79.i, label %bb.y, label %Py_DECREF.exit80.i

bb.y:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.ci, align 8, !tbaa !423
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.z, label %Py_DECREF.exit80.i

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.ci) #16, !inline_history !681
  br label %Py_DECREF.exit80.i

Py_DECREF.exit80.i:                               ; preds = %bb.z, %bb.y, %PyObject_TypeCheck.exit.thread.i
  %i.dc = icmp eq ptr %i.cy, null
end_hunk_6
