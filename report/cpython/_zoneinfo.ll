inline.NumInlined: 123
inline.NumDeleted: 45
begin_hunk_0_@zoneinfo_ZoneInfo_clear_cache:bb.a
  br label %Py_DECREF.exit45.i

Py_DECREF.exit45.i:                               ; preds = %bb.ba, %bb.az, %Py_DECREF.exit51.i
  %i.cp = load i32, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.cp, -1
  br i1 %.not.i42.i, label %bb.bb, label %clear_strong_cache.exit.i

bb.bb:                                            ; preds = %Py_DECREF.exit45.i
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.ao, align 8, !tbaa !23
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.bc, label %clear_strong_cache.exit.i

bb.bc:                                            ; preds = %bb.bb
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #9
  br label %clear_strong_cache.exit.i

clear_strong_cache.exit.i:                        ; preds = %bb.bc, %bb.bb, %Py_DECREF.exit45.i, %strong_cache_free.exit.i.i, %Py_DECREF.exit59.i
  %i.cs = load i32, ptr %.0.i.i, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cs, -1
  br i1 %.not.i.i, label %bb.bd, label %Py_DECREF.exit.i

bb.bd:                                            ; preds = %clear_strong_cache.exit.i
  %i.ct = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.ct, ptr %.0.i.i, align 8, !tbaa !23
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.be, label %Py_DECREF.exit.i

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #9
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.be, %bb.bd, %clear_strong_cache.exit.i
  %i.cv = call ptr @PyErr_Occurred() #9
  %.not41.i = icmp eq ptr %i.cv, null
  %_Py_NoneStruct..i = select i1 %.not41.i, ptr @_Py_NoneStruct, ptr null
  br label %zoneinfo_ZoneInfo_clear_cache_impl.exit

zoneinfo_ZoneInfo_clear_cache_impl.exit:          ; preds = %Py_DECREF.exit.i, %bb.ab, %bb.aa, %Py_DECREF.exit55.i, %bb.v, %bb.u, %.critedge.i, %bb.c
  %.022 = phi ptr [ null, %bb.c ], [ %_Py_NoneStruct..i, %Py_DECREF.exit.i ], [ null, %bb.v ], [ null, %.critedge.i ], [ null, %bb.u ], [ null, %bb.ab ], [ null, %bb.aa ], [ null, %Py_DECREF.exit55.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define internal ptr @zoneinfo_ZoneInfo_no_cache(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @zoneinfo_ZoneInfo_no_cache._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %zoneinfo_ZoneInfo_no_cache_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.j = call fastcc ptr @zoneinfo_new_instance(ptr noundef readonly %.val.val, ptr noundef %0, ptr noundef %i.g) ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %zoneinfo_ZoneInfo_no_cache_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.k = getelementptr i8, ptr %i.j, i64 201
  store i8 0, ptr %i.k, align 1, !tbaa !101
  br label %zoneinfo_ZoneInfo_no_cache_impl.exit

zoneinfo_ZoneInfo_no_cache_impl.exit:             ; preds = %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @zoneinfo_ZoneInfo_from_file(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !65
  %i.c = add i64 %.val, %3
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %3, -1
  %i.e = icmp ult i64 %i.d, 2
  %i.f = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.f, %i.e
  br i1 %or.cond5, label %.thread32, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.g = phi i64 [ %i.c, %.thread ], [ %3, %bb.b ]
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @zoneinfo_ZoneInfo_from_file._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %zoneinfo_ZoneInfo_from_file_impl.exit, label %.thread32

.thread32:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %3, %bb.b ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %.not29 = icmp eq i64 %i.j, 1
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread32
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %.thread32, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ @_Py_NoneStruct, %.thread32 ] ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 304
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !102
  %i.p = call ptr %i.o(ptr noundef %0, i64 noundef 0) #9, !inline_history !103 ; 9 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %zoneinfo_ZoneInfo_from_file_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call ptr @PyObject_Repr(ptr noundef %i.k) #9 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %1, i64 888
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.u = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.v = call fastcc i32 @load_data(ptr noundef %.val.val.i, ptr noundef %i.p, ptr noundef %i.k)
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.j, label %.split18.i

.split18.i:                                       ; preds = %bb.g
  %i.w = load i32, ptr %i.r, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i.i.i, label %bb.h, label %.split.i

bb.h:                                             ; preds = %.split18.i
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.r, align 8, !tbaa !23
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %.split.i

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #9
  br label %.split.i

bb.j:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.p, i64 201
  store i8 2, ptr %i.z, align 1, !tbaa !101
  %i.aa = getelementptr i8, ptr %i.p, i64 24
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !64
  %i.ab = load i32, ptr %.0, align 8, !tbaa !23   ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %_Py_NewRef.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %.0, align 8, !tbaa !23
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.k, %bb.j
  %i.ae = getelementptr i8, ptr %i.p, i64 16
  store ptr %.0, ptr %i.ae, align 8, !tbaa !56
  br label %zoneinfo_ZoneInfo_from_file_impl.exit

.split.i:                                         ; preds = %bb.i, %bb.h, %.split18.i, %bb.f
  %i.af = load i32, ptr %i.p, align 8, !tbaa !23  ; 2 uses
  %.not.i.i22.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i.i22.i, label %bb.l, label %zoneinfo_ZoneInfo_from_file_impl.exit

bb.l:                                             ; preds = %.split.i
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.p, align 8, !tbaa !23
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %zoneinfo_ZoneInfo_from_file_impl.exit

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %i.p) #9
  br label %zoneinfo_ZoneInfo_from_file_impl.exit

zoneinfo_ZoneInfo_from_file_impl.exit:            ; preds = %bb.m, %bb.l, %.split.i, %_Py_NewRef.exit.i, %bb.e, %bb.c
  %.024 = phi ptr [ null, %bb.c ], [ %i.p, %_Py_NewRef.exit.i ], [ null, %bb.e ], [ null, %.split.i ], [ null, %bb.l ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @zoneinfo_ZoneInfo_utcoffset(ptr noundef captures(address) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @zoneinfo_ZoneInfo_utcoffset._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %zoneinfo_ZoneInfo_utcoffset_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.j = call fastcc ptr @find_ttinfo(ptr noundef %.val.val, ptr noundef %0, ptr noundef %i.g) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %zoneinfo_ZoneInfo_utcoffset_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !73   ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %i.n = icmp ugt i32 %i.m, -1073741825
  br i1 %i.n, label %zoneinfo_ZoneInfo_utcoffset_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %i.l, align 8, !tbaa !23
  br label %zoneinfo_ZoneInfo_utcoffset_impl.exit

zoneinfo_ZoneInfo_utcoffset_impl.exit:            ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ %i.l, %bb.c ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @zoneinfo_ZoneInfo_dst(ptr noundef captures(address) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @zoneinfo_ZoneInfo_dst._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %zoneinfo_ZoneInfo_dst_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.j = call fastcc ptr @find_ttinfo(ptr noundef %.val.val, ptr noundef %0, ptr noundef %i.g) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %zoneinfo_ZoneInfo_dst_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %zoneinfo_ZoneInfo_dst_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !23
  br label %zoneinfo_ZoneInfo_dst_impl.exit

zoneinfo_ZoneInfo_dst_impl.exit:                  ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ %i.m, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @zoneinfo_ZoneInfo_tzname(ptr noundef captures(address) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @zoneinfo_ZoneInfo_tzname._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %zoneinfo_ZoneInfo_tzname_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.j = call fastcc ptr @find_ttinfo(ptr noundef %.val.val, ptr noundef %0, ptr noundef %i.g) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %zoneinfo_ZoneInfo_tzname_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %zoneinfo_ZoneInfo_tzname_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !23
  br label %zoneinfo_ZoneInfo_tzname_impl.exit

zoneinfo_ZoneInfo_tzname_impl.exit:               ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ %i.m, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @zoneinfo_fromutc(ptr noundef readonly captures(address) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @PyDateTimeAPI, align 8, !tbaa !22
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val112 = load ptr, ptr %i.e, align 8, !tbaa !67 ; 2 uses
  %.not.i113 = icmp eq ptr %.val112, %i.d
  br i1 %.not.i113, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val112, ptr noundef %i.d) #9
  %.not123 = icmp eq i32 %i.f, 0
  br i1 %.not123, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.60) #9
  br label %bb.aw

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !105
  %.not86 = icmp eq i8 %i.i, 0
  br i1 %.not86, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.j = getelementptr i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107
  br label %bb.d

bb.d:                                             ; preds = %PyObject_TypeCheck.exit.thread, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ @_Py_NoneStruct, %PyObject_TypeCheck.exit.thread ]
  %.not87 = icmp eq ptr %i.l, %0
  br i1 %.not87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.61) #9
  br label %bb.aw

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.n = call fastcc i32 @get_local_timestamp(ptr noundef nonnull %1, ptr noundef %i.a)
  %.not88 = icmp eq i32 %i.n, 0
  br i1 %.not88, label %bb.g, label %Py_DECREF.exit103.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !109  ; 6 uses
  %cond = icmp eq i64 %i.p, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !110 ; 11 uses
  br i1 %cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69   ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !110
  %i.t = icmp slt i64 %.pre, %i.s
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %i.p
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !110
  %i.z = icmp sgt i64 %.pre, %i.y
  br i1 %i.z, label %bb.k, label %.lr.ph.i

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 184
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !78
  %.not.i114 = icmp eq i8 %i.ac, 0
  br i1 %.not.i114, label %bb.l, label %find_tzrule_ttinfo_fromutc.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %1, i64 25
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !23
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = getelementptr i8, ptr %1, i64 26
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !23
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ag, %i.aj            ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.ao = tail call i64 %i.an(ptr noundef nonnull %i.am, i32 noundef range(i32 0, 65536) %i.ak) #9, !inline_history !113
  %i.ap = getelementptr i8, ptr %0, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112
  %i.as = tail call i64 %i.ar(ptr noundef nonnull %i.aq, i32 noundef range(i32 0, 65536) %i.ak) #9, !inline_history !113
  %i.at = getelementptr i8, ptr %0, i64 120
  %i.au = load i64, ptr %i.at, align 8, !tbaa !114
  %i.av = sub i64 %i.ao, %i.au                    ; 5 uses
  %i.aw = getelementptr i8, ptr %0, i64 152
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !115
  %i.ay = sub i64 %i.as, %i.ax                    ; 5 uses
  %i.az = icmp slt i64 %i.av, %i.ay
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp sge i64 %.pre, %i.av
  %i.bb = icmp slt i64 %.pre, %i.ay
  %i.bc = and i1 %i.ba, %i.bb
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp slt i64 %.pre, %i.ay
  %i.be = icmp sge i64 %.pre, %i.av
  %i.bf = or i1 %i.be, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.023.in.i = phi i1 [ %i.bc, %bb.m ], [ %i.bf, %bb.n ]
  %i.bg = getelementptr i8, ptr %0, i64 160
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !116 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 0                   ; 2 uses
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = add i64 %i.ay, %i.bj
  %i.bl = sext i32 %i.bh to i64
  %i.bm = sub i64 %i.av, %i.bl
  %.022.i = select i1 %i.bi, i64 %i.ay, i64 %i.av
  %.0.i = select i1 %i.bi, i64 %i.bk, i64 %i.bm
  %i.bn = icmp sge i64 %.pre, %.022.i
  %i.bo = icmp slt i64 %.pre, %.0.i
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  %i.bq = zext i1 %i.bp to i8
  %.024.idx.i = select i1 %.023.in.i, i64 32, i64 0
  %.024.i = getelementptr i8, ptr %i.aa, i64 %.024.idx.i
  br label %find_tzrule_ttinfo_fromutc.exit

find_tzrule_ttinfo_fromutc.exit:                  ; preds = %bb.k, %bb.o
  %.1 = phi i8 [ %i.bq, %bb.o ], [ 0, %bb.k ]     ; 3 uses
  %.1.i = phi ptr [ %.024.i, %bb.o ], [ %i.aa, %bb.k ] ; 4 uses
  switch i64 %i.p, label %bb.q [
    i64 0, label %bb.w
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %find_tzrule_ttinfo_fromutc.exit
  %i.br = getelementptr i8, ptr %0, i64 88
  br label %bb.r

bb.q:                                             ; preds = %find_tzrule_ttinfo_fromutc.exit
  %i.bs = getelementptr i8, ptr %0, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.p
  %i.bv = getelementptr i8, ptr %i.bu, i64 -16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.076.in = phi ptr [ %i.br, %bb.p ], [ %i.bv, %bb.q ]
  %.076 = load ptr, ptr %.076.in, align 8, !tbaa !22
  %i.bw = getelementptr i8, ptr %.076, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !117
  %i.by = getelementptr i8, ptr %.1.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !117
  %i.ca = sub i64 %i.bx, %i.bz                    ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr i8, ptr %0, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !69
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %i.p
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !110
  %i.ch = add i64 %i.cg, %i.ca
  %i.ci = icmp slt i64 %.pre, %i.ch
  %spec.select = select i1 %i.ci, i8 1, i8 %.1
  br label %bb.w
end_hunk_0
