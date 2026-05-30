inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@_PyType_GetBaseByToken_Borrow:bb.a
bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %0, i64 336
  %.val = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.j = tail call fastcc ptr @get_base_by_token_recursive(ptr noundef %.val, ptr noundef %1) ; 2 uses
  %.not39 = icmp eq ptr %i.j, null
  br i1 %.not39, label %.thread48, label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %i.g, i64 16
  %.val43 = load i64, ptr %i.k, align 8, !tbaa !140 ; 2 uses
  %i.l = icmp sgt i64 %.val43, 1
  br i1 %i.l, label %.lr.ph, label %.thread48

.lr.ph:                                           ; preds = %bb.h
  %i.m = getelementptr i8, ptr %i.g, i64 32
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.02751 = phi i64 [ 1, %.lr.ph ], [ %i.u, %bb.k ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %.02751
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !115  ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 168
  %.val41 = load i64, ptr %i.p, align 8, !tbaa !118
  %i.q = and i64 %.val41, 512
  %.not38 = icmp eq i64 %i.q, 0
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %i.o, i64 904
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !212
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.u = add nuw nsw i64 %.02751, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %.val43
  br i1 %exitcond.not, label %.thread48, label %bb.i, !llvm.loop !233

.thread48:                                        ; preds = %bb.k, %bb.h, %bb.g, %.loopexit, %bb.e, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %.loopexit ], [ 1, %bb.e ], [ 0, %bb.h ], [ 0, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @get_base_by_token_recursive(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(address) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val21 = load i64, ptr %i.a, align 8, !tbaa !140 ; 2 uses
  %i.b = icmp sgt i64 %.val21, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %.01524 = phi i64 [ 0, %.lr.ph ], [ %i.m, %select.unfold ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.01524
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 168
  %.val20 = load i64, ptr %i.f, align 8, !tbaa !118
  %i.g = and i64 %.val20, 512
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.e, i64 904
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !212
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.e, i64 336
  %.val = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.l = tail call fastcc ptr @get_base_by_token_recursive(ptr noundef %.val, ptr noundef %1) ; 2 uses
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.d, %bb.b
  %i.m = add nuw nsw i64 %.01524, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %.val21
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !234

.thread:                                          ; preds = %select.unfold, %bb.d, %bb.c, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.l, %bb.d ], [ %i.e, %bb.c ], [ null, %select.unfold ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @PyType_GetBaseByToken(ptr noundef %0, ptr noundef readnone captures(address) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !142
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.30) #21 ; 0 uses
  br label %Py_INCREF.exit

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val.val = load i64, ptr %i.e, align 8, !tbaa !118
  %i.f = and i64 %.val.val, 2147483648
  %.not17 = icmp eq i64 %i.f, 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.31, ptr noundef nonnull %0) #21 ; 0 uses
  br label %Py_INCREF.exit

bb.g:                                             ; preds = %bb.e
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %2, align 8, !tbaa !142
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr i8, ptr %0, i64 168
  %.val42.i = load i64, ptr %i.i, align 8, !tbaa !118
  %i.j = and i64 %.val42.i, 512
  %.not37.i = icmp eq i64 %i.j, 0
  br i1 %.not37.i, label %Py_INCREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr i8, ptr %0, i64 904
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !212
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %.loopexit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.o, %bb.l, %bb.j
  %.028.i = phi ptr [ %0, %bb.j ], [ %i.r, %bb.l ], [ %i.w, %bb.o ] ; 3 uses
  br i1 %.not, label %Py_INCREF.exit, label %_PyType_GetBaseByToken_Borrow.exit

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr i8, ptr %0, i64 344
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165  ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %0, i64 336
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.r = tail call fastcc ptr @get_base_by_token_recursive(ptr noundef %.val.i, ptr noundef nonnull readnone %1) ; 2 uses
  %.not39.i = icmp eq ptr %i.r, null
  br i1 %.not39.i, label %Py_INCREF.exit, label %.loopexit.i

bb.m:                                             ; preds = %bb.k
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val43.i = load i64, ptr %i.s, align 8, !tbaa !140 ; 2 uses
  %i.t = icmp sgt i64 %.val43.i, 1
  br i1 %i.t, label %.lr.ph.i, label %Py_INCREF.exit

.lr.ph.i:                                         ; preds = %bb.m
  %i.u = getelementptr i8, ptr %i.o, i64 32
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %.02751.i = phi i64 [ 1, %.lr.ph.i ], [ %i.ac, %bb.p ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %.02751.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !115  ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 168
  %.val41.i = load i64, ptr %i.x, align 8, !tbaa !118
  %i.y = and i64 %.val41.i, 512
  %.not38.i = icmp eq i64 %i.y, 0
  br i1 %.not38.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr i8, ptr %i.w, i64 904
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !212
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ac = add nuw nsw i64 %.02751.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %.val43.i
  br i1 %exitcond.not.i, label %Py_INCREF.exit, label %bb.n, !llvm.loop !233

_PyType_GetBaseByToken_Borrow.exit:               ; preds = %.loopexit.i
  store ptr %.028.i, ptr %2, align 8, !tbaa !142
  %i.ad = load i32, ptr %.028.i, align 8, !tbaa !112 ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %Py_INCREF.exit, label %bb.q

bb.q:                                             ; preds = %_PyType_GetBaseByToken_Borrow.exit
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr %.028.i, align 8, !tbaa !112
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.p, %.loopexit.i, %bb.m, %bb.l, %bb.i, %bb.q, %_PyType_GetBaseByToken_Borrow.exit, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ 1, %bb.q ], [ 0, %bb.i ], [ 1, %_PyType_GetBaseByToken_Borrow.exit ], [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %.loopexit.i ], [ 0, %bb.p ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @PyObject_GetTypeData(ptr noundef readnone captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !161
  %i.e = add i64 %i.d, 15
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, -9223372036854775808) i64 @PyType_GetTypeDataSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161
  %i.c = getelementptr i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !161
  %i.g = add i64 %i.f, 15
  %i.h = and i64 %i.g, -16
  %i.i = sub i64 %i.b, %i.h
  %. = tail call i64 @llvm.smax.i64(i64 %i.i, i64 0)
  ret i64 %.
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyObject_GetItemData(ptr noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !126 ; 3 uses
  %i.b = getelementptr i8, ptr %.val6, i64 168
  %.val7 = load i64, ptr %i.b, align 8, !tbaa !118
  %i.c = and i64 %.val7, 8388608
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.e = getelementptr i8, ptr %.val6, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !153
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.32, ptr noundef %i.f) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val6, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !161
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_PyTypes_AfterFork() local_unnamed_addr #14 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyType_LookupRefAndVersion(ptr noundef %0, ptr noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %union._PyStackRef, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = call i32 @_PyType_LookupStackRefAndVersion(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %2, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !112    ; 4 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %PyStackRef_AsPyObjectSteal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = and i64 %i.b, 1
  %.not.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = inttoptr i64 %i.b to ptr
  br label %PyStackRef_AsPyObjectSteal.exit

bb.f:                                             ; preds = %bb.d
  %i.f = and i64 %i.b, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %PyStackRef_AsPyObjectSteal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %i.g, align 8, !tbaa !112
  br label %PyStackRef_AsPyObjectSteal.exit

PyStackRef_AsPyObjectSteal.exit:                  ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_name_in_mro(ptr noundef %0, ptr noundef %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !126
  %.not.i38 = icmp eq ptr %.val.i, @PyUnicode_Type
  br i1 %.not.i38, label %bb.b, label %_PyObject_HashFast.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 24
  %.val8.i = load i64, ptr %i.c, align 8, !tbaa !235 ; 2 uses
  %.not7.not.i = icmp eq i64 %.val8.i, -1
  br i1 %.not7.not.i, label %_PyObject_HashFast.exit, label %_PyObject_HashFast.exit.thread

_PyObject_HashFast.exit:                          ; preds = %bb.a, %bb.b
  %i.d = tail call i64 @PyObject_Hash(ptr noundef nonnull %1) #21 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.c, label %_PyObject_HashFast.exit.thread

bb.c:                                             ; preds = %_PyObject_HashFast.exit
  store i32 -1, ptr %2, align 4, !tbaa !7
  br label %bb.t

_PyObject_HashFast.exit.thread:                   ; preds = %bb.b, %_PyObject_HashFast.exit
  %.1.i44 = phi i64 [ %i.d, %_PyObject_HashFast.exit ], [ %.val8.i, %bb.b ]
  %i.f = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %.val37 = load ptr, ptr %i.f, align 8, !tbaa !165 ; 2 uses
  %i.g = icmp eq ptr %.val37, null
  br i1 %i.g, label %bb.d, label %bb.l

bb.d:                                             ; preds = %_PyObject_HashFast.exit.thread
  %i.h = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !118  ; 6 uses
  %i.j = and i64 %i.i, 2
  %.not.i39 = icmp eq i64 %i.j, 0
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 360
  %.val.i.i = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.n = ptrtoint ptr %.val.i.i to i64
  %i.o = add i64 %i.n, -1                         ; 3 uses
  %i.p = getelementptr i8, ptr %i.l, i64 180328
  %i.q = getelementptr [48 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = icmp eq ptr %i.r, %0
  %i.t = icmp ugt i64 %i.o, 10
  %or.cond.i.i = or i1 %i.s, %i.t
  %i.u = getelementptr i8, ptr %i.l, i64 190040
  %i.v = getelementptr [48 x i8], ptr %i.u, i64 %i.o
  %.0.i.i = select i1 %or.cond.i.i, ptr %i.q, ptr %i.v
  %i.w = getelementptr i8, ptr %.0.i.i, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !127
  br label %is_readying.exit

bb.f:                                             ; preds = %bb.d
  %i.y = trunc i64 %i.i to i32
  %i.z = lshr i32 %i.y, 13
  %i.aa = and i32 %i.z, 1
  br label %is_readying.exit

is_readying.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.x, %bb.e ], [ %i.aa, %bb.f ]
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %is_readying.exit
  %i.ab = and i64 %i.i, 4096
  %.not.i40 = icmp eq i64 %i.ab, 0
  br i1 %.not.i40, label %bb.h, label %PyType_Ready.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = and i64 %i.i, 512
  %.not8.i = icmp eq i64 %i.ac, 0
  br i1 %.not8.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = or i64 %i.i, 256
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !118
  tail call void @_Py_SetImmortalUntracked(ptr noundef nonnull %0) #21, !inline_history !217
  %.pre = load i64, ptr %i.h, align 8, !tbaa !118
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_0
begin_hunk_1_@type_ready:bb.a
  %i.q = or i64 %i.b, 8192                        ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !118
  br label %start_readying.exit

start_readying.exit:                              ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %i.b, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %.val = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.t = icmp eq ptr %.val, null
  br i1 %i.t, label %type_ready_pre_checks.exit.thread, label %type_ready_pre_checks.exit

type_ready_pre_checks.exit.thread:                ; preds = %start_readying.exit
  %i.u = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !115
  %i.v = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.u, ptr noundef nonnull @.str.192) #21 ; 0 uses
  br label %type_ready_set_dict.exit

type_ready_pre_checks.exit:                       ; preds = %start_readying.exit
  %i.w = and i64 %i.r, 2
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %type_ready_pre_checks.exit
  %i.x = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.aa = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ab = add i64 %i.aa, -1                       ; 3 uses
  %i.ac = getelementptr i8, ptr %i.y, i64 180328
  %i.ad = getelementptr [48 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp eq ptr %i.ae, %0
  %i.ag = icmp ugt i64 %i.ab, 10
  %or.cond.i.i.i.i = or i1 %i.af, %i.ag
  %i.ah = getelementptr i8, ptr %i.y, i64 190040
  %i.ai = getelementptr [48 x i8], ptr %i.ah, i64 %i.ab
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, ptr %i.ad, ptr %i.ai
  %i.aj = getelementptr i8, ptr %.0.i.i.i.i, i64 24
  br label %lookup_tp_dict.exit.i

bb.e:                                             ; preds = %type_ready_pre_checks.exit
  %i.ak = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit.i

lookup_tp_dict.exit.i:                            ; preds = %bb.e, %bb.d
  %.0.in.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.ak, %bb.e ]
  %.0.i.i24 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !115
  %.not.i25 = icmp eq ptr %.0.i.i24, null
  br i1 %.not.i25, label %bb.f, label %bb.j

bb.f:                                             ; preds = %lookup_tp_dict.exit.i
  %i.al = tail call ptr @PyDict_New() #21         ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %type_ready_set_dict.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.a, align 8, !tbaa !118 ; 3 uses
  %i.ao = and i64 %i.an, 2
  %.not.i5.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i5.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26 ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i6.i = load ptr, ptr %i.ar, align 8, !tbaa !11
  %i.as = ptrtoint ptr %.val.i.i.i6.i to i64
  %i.at = add i64 %i.as, -1                       ; 3 uses
  %i.au = getelementptr i8, ptr %i.aq, i64 180328
  %i.av = getelementptr [48 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24
  %i.ax = icmp eq ptr %i.aw, %0
  %i.ay = icmp ugt i64 %i.at, 10
  %or.cond.i.i.i7.i = or i1 %i.ax, %i.ay
  %i.az = getelementptr i8, ptr %i.aq, i64 190040
  %i.ba = getelementptr [48 x i8], ptr %i.az, i64 %i.at
  %.0.i.i.i8.i = select i1 %or.cond.i.i.i7.i, ptr %i.av, ptr %i.ba
  %i.bb = getelementptr i8, ptr %.0.i.i.i8.i, i64 24
  store ptr %i.al, ptr %i.bb, align 8, !tbaa !265
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr i8, ptr %0, i64 264
  store ptr %i.al, ptr %i.bc, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %lookup_tp_dict.exit.i, %bb.h, %bb.i
  %i.bd = phi i64 [ %i.r, %lookup_tp_dict.exit.i ], [ %i.an, %bb.h ], [ %i.an, %bb.i ]
  %i.be = getelementptr i8, ptr %0, i64 256       ; 6 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null                 ; 2 uses
  %i.bh = icmp ne ptr %0, @PyBaseObject_Type
  %or.cond.i = and i1 %i.bh, %i.bg
  br i1 %or.cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bi = and i64 %i.bd, 512
  %.not.i27 = icmp eq i64 %i.bi, 0
  br i1 %.not.i27, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load i32, ptr @PyBaseObject_Type, align 8, !tbaa !112 ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, -1073741825
  br i1 %i.bk, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = add nuw i32 %i.bj, 1
  store i32 %i.bl, ptr @PyBaseObject_Type, align 8, !tbaa !112
  br label %.thread.sink.split

bb.n:                                             ; preds = %bb.j
  br i1 %i.bg, label %type_ready_set_type.exit, label %.thread

.thread.sink.split:                               ; preds = %bb.k, %bb.m, %bb.l
  store ptr @PyBaseObject_Type, ptr %i.be, align 8, !tbaa !167
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.n
  %.0.i2689 = phi ptr [ %i.bf, %bb.n ], [ @PyBaseObject_Type, %.thread.sink.split ] ; 6 uses
  %i.bm = getelementptr i8, ptr %.0.i2689, i64 168 ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !118 ; 5 uses
  %i.bo = and i64 %i.bn, 2
  %.not.i.i.i79 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i79, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26 ; 2 uses
  %i.br = getelementptr i8, ptr %.0.i2689, i64 360
  %.val.i.i.i.i.i80 = load ptr, ptr %i.br, align 8, !tbaa !11
  %i.bs = ptrtoint ptr %.val.i.i.i.i.i80 to i64
  %i.bt = add i64 %i.bs, -1                       ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bq, i64 180328
  %i.bv = getelementptr [48 x i8], ptr %i.bu, i64 %i.bt ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = icmp eq ptr %i.bw, %.0.i2689
  %i.by = icmp ugt i64 %i.bt, 10
  %or.cond.i.i.i.i.i81 = or i1 %i.bx, %i.by
  %i.bz = getelementptr i8, ptr %i.bq, i64 190040
  %i.ca = getelementptr [48 x i8], ptr %i.bz, i64 %i.bt
  %.0.i.i.i.i.i82 = select i1 %or.cond.i.i.i.i.i81, ptr %i.bv, ptr %i.ca
  %i.cb = getelementptr i8, ptr %.0.i.i.i.i.i82, i64 24
  br label %_PyType_IsReady.exit

bb.p:                                             ; preds = %.thread
  %i.cc = getelementptr i8, ptr %.0.i2689, i64 264
  br label %_PyType_IsReady.exit

_PyType_IsReady.exit:                             ; preds = %bb.o, %bb.p
  %.0.in.i.i.i83 = phi ptr [ %i.cb, %bb.o ], [ %i.cc, %bb.p ]
  %.0.i.i.i84 = load ptr, ptr %.0.in.i.i.i83, align 8, !tbaa !115
  %.not98 = icmp eq ptr %.0.i.i.i84, null
  %i.cd = and i64 %i.bn, 4096
  %.not.i77 = icmp eq i64 %i.cd, 0
  %or.cond = and i1 %.not.i77, %.not98
  br i1 %or.cond, label %bb.q, label %type_ready_set_base.exit

bb.q:                                             ; preds = %_PyType_IsReady.exit
  %i.ce = and i64 %i.bn, 512
  %.not8.i78 = icmp eq i64 %i.ce, 0
  br i1 %.not8.i78, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = or i64 %i.bn, 256
  store i64 %i.cf, ptr %i.bm, align 8, !tbaa !118
  tail call void @_Py_SetImmortalUntracked(ptr noundef nonnull %.0.i2689) #21, !inline_history !298
  %.pre = load i64, ptr %i.bm, align 8, !tbaa !118
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cg = phi i64 [ %.pre, %bb.r ], [ %i.bn, %bb.q ]
  %i.ch = and i64 %i.cg, 4096
  %.not9.i = icmp eq i64 %i.ch, 0
  br i1 %.not9.i, label %PyType_Ready.exit, label %type_ready_set_base.exit

PyType_Ready.exit:                                ; preds = %bb.s
  %i.ci = tail call fastcc i32 @type_ready(ptr noundef nonnull %.0.i2689, i32 noundef 1), !inline_history !298
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %type_ready_set_dict.exit, label %type_ready_set_base.exit

type_ready_set_base.exit:                         ; preds = %bb.s, %PyType_Ready.exit, %_PyType_IsReady.exit
  %.pr = load ptr, ptr %i.be, align 8, !tbaa !167 ; 4 uses
  %i.ck = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val6.i = load ptr, ptr %i.ck, align 8, !tbaa !126
  %i.cl = icmp eq ptr %.val6.i, null
  %i.cm = icmp ne ptr %.pr, null
  %or.cond.i28 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i28, label %bb.t, label %type_ready_set_type.exit

bb.t:                                             ; preds = %type_ready_set_base.exit
  %i.cn = getelementptr i8, ptr %.pr, i64 8
  %.val.i = load ptr, ptr %i.cn, align 8, !tbaa !126
  store ptr %.val.i, ptr %i.ck, align 8, !tbaa !126
  br label %type_ready_set_type.exit

type_ready_set_type.exit:                         ; preds = %bb.n, %type_ready_set_base.exit, %bb.t
  %i.co = phi ptr [ %.pr, %bb.t ], [ %.pr, %type_ready_set_base.exit ], [ null, %bb.n ] ; 2 uses
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !118 ; 3 uses
  %i.cq = and i64 %i.cp, 2                        ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %2 = icmp ne i32 %1, 0                          ; 4 uses
  %or.cond.i29 = or i1 %2, %i.cr
  br i1 %or.cond.i29, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %type_ready_set_type.exit
  %i.cs = getelementptr i8, ptr %0, i64 336       ; 2 uses
  %.val.i30 = load ptr, ptr %i.cs, align 8, !tbaa !119
  %i.ct = icmp eq ptr %.val.i30, null
  br i1 %i.ct, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.cu = icmp eq ptr %i.co, null
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = tail call ptr @PyTuple_New(i64 noundef 0) #21
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cw = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 1, ptr noundef nonnull %i.co) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.013.i = phi ptr [ %i.cv, %bb.w ], [ %i.cw, %bb.x ] ; 3 uses
  %.not.i31 = icmp eq ptr %.013.i, null
  br i1 %.not.i31, label %type_ready_set_dict.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.cy = and i64 %i.cx, 2
  %.not.i.i32 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i32, label %set_tp_bases.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_SetImmortal(ptr noundef nonnull %.013.i) #21
  %.pre146.pre = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %.pre149 = and i64 %.pre146.pre, 2
  br label %set_tp_bases.exit.i

set_tp_bases.exit.i:                              ; preds = %bb.aa, %bb.z
  %.pre148.pre-phi = phi i64 [ %.pre149, %bb.aa ], [ 0, %bb.z ]
  %.pre146 = phi i64 [ %.pre146.pre, %bb.aa ], [ %i.cx, %bb.z ]
  store ptr %.013.i, ptr %i.cs, align 8, !tbaa !119
  br label %bb.ab

bb.ab:                                            ; preds = %type_ready_set_type.exit, %set_tp_bases.exit.i, %bb.u
  %.pre-phi = phi i64 [ %i.cq, %type_ready_set_type.exit ], [ %.pre148.pre-phi, %set_tp_bases.exit.i ], [ %i.cq, %bb.u ]
  %i.cz = phi i64 [ %i.cp, %type_ready_set_type.exit ], [ %.pre146, %set_tp_bases.exit.i ], [ %i.cp, %bb.u ]
  %i.da = icmp eq i64 %.pre-phi, 0
  %or.cond.i33 = or i1 %2, %i.da
  br i1 %or.cond.i33, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.db = tail call fastcc i32 @mro_internal(ptr noundef nonnull %0, ptr noundef null)
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %type_ready_set_dict.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr i8, ptr %0, i64 344
  %.val28.i = load ptr, ptr %i.dd, align 8, !tbaa !165 ; 2 uses
  %i.de = load i64, ptr %i.a, align 8, !tbaa !118 ; 4 uses
  %i.df = and i64 %i.de, 512
  %.not.i34 = icmp eq i64 %i.df, 0
  br i1 %.not.i34, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr i8, ptr %.val28.i, i64 16
  %.val.i35 = load i64, ptr %i.dg, align 8, !tbaa !140 ; 2 uses
  %.not25.i121 = icmp sgt i64 %.val.i35, 0
  br i1 %.not25.i121, label %.critedge.i.lr.ph, label %.loopexit

.critedge.i.lr.ph:                                ; preds = %bb.ae
  %i.dh = getelementptr i8, ptr %.val28.i, i64 32
  br label %.critedge.i

bb.af:                                            ; preds = %.critedge.i
  %i.di = add nuw nsw i64 %.023.i122, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.di, %.val.i35
  br i1 %exitcond.not, label %.loopexit, label %.critedge.i, !llvm.loop !299

.critedge.i:                                      ; preds = %.critedge.i.lr.ph, %bb.af
  %.023.i122 = phi i64 [ 0, %.critedge.i.lr.ph ], [ %i.di, %bb.af ] ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.dh, i64 %.023.i122
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !115 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 168
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !118
  %i.dn = and i64 %i.dm, 512
  %.not24.i = icmp eq i64 %i.dn, 0
  br i1 %.not24.i, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i
  %i.do = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !115
  %i.dp = load ptr, ptr %i.s, align 8, !tbaa !153
  %i.dq = getelementptr i8, ptr %i.dk, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !153
  %i.ds = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.do, ptr noundef nonnull @.str.193, ptr noundef %i.dp, ptr noundef %i.dr) #21, !inline_history !300 ; 0 uses
  br label %type_ready_set_dict.exit

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ab, %bb.ad
  %i.dt = phi i64 [ %i.de, %bb.ad ], [ %i.de, %bb.ae ], [ %i.cz, %bb.ab ], [ %i.de, %bb.af ] ; 4 uses
  %i.du = load ptr, ptr %i.be, align 8, !tbaa !167 ; 4 uses
  %i.dv = getelementptr i8, ptr %0, i64 312       ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !129 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null                 ; 2 uses
  %i.dy = icmp eq ptr %i.du, @PyBaseObject_Type
  %or.cond.i36 = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond.i36, label %bb.ah, label %._crit_edge.i

bb.ah:                                            ; preds = %.loopexit
  %i.dz = and i64 %i.dt, 512
  %i.ea = icmp eq i64 %i.dz, 0
  %or.cond5.i = and i1 %2, %i.ea
  br i1 %or.cond5.i, label %.thread.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ah, %.loopexit
  %i.eb = and i64 %i.dt, 128
  %.not.i37 = icmp eq i64 %i.eb, 0
  br i1 %.not.i37, label %bb.ai, label %bb.au

.thread.i:                                        ; preds = %bb.ah
  %i.ec = or i64 %i.dt, 128
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !118
  br label %add_tp_new_wrapper.exit.thread30.sink.split.i

bb.ai:                                            ; preds = %._crit_edge.i
  br i1 %i.dx, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ed = icmp eq ptr %i.du, null
  %or.cond3.i = select i1 %2, i1 true, i1 %i.ed
  br i1 %or.cond3.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = getelementptr i8, ptr %i.du, i64 312
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !129
  %.not27.i = icmp eq ptr %i.dw, %i.ef
  br i1 %.not27.i, label %type_ready_set_new.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eg = and i64 %i.dt, 2
  %.not.i13.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i13.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !26 ; 2 uses
  %i.ej = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i.i.i = load ptr, ptr %i.ej, align 8, !tbaa !11
  %i.ek = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.el = add i64 %i.ek, -1                       ; 3 uses
  %i.em = getelementptr i8, ptr %i.ei, i64 180328
  %i.en = getelementptr [48 x i8], ptr %i.em, i64 %i.el ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !24
  %i.ep = icmp eq ptr %i.eo, %0
  %i.eq = icmp ugt i64 %i.el, 10
  %or.cond.i.i.i.i.i = or i1 %i.ep, %i.eq
  %i.er = getelementptr i8, ptr %i.ei, i64 190040
  %i.es = getelementptr [48 x i8], ptr %i.er, i64 %i.el
  %.0.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, ptr %i.en, ptr %i.es
  %i.et = getelementptr i8, ptr %.0.i.i.i.i.i, i64 24
  br label %lookup_tp_dict.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.eu = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit.i.i

lookup_tp_dict.exit.i.i:                          ; preds = %bb.an, %bb.am
  %.0.in.i.i.i = phi ptr [ %i.et, %bb.am ], [ %i.eu, %bb.an ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !115 ; 2 uses
  %i.ev = tail call i32 @PyDict_Contains(ptr noundef %.0.i.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016)) #21, !inline_history !301 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %type_ready_set_new.exit, label %bb.ao

bb.ao:                                            ; preds = %lookup_tp_dict.exit.i.i
  %i.ex = icmp slt i32 %i.ev, 0
  br i1 %i.ex, label %type_ready_set_dict.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = tail call ptr @PyCMethod_New(ptr noundef nonnull @tp_new_methoddef, ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #21, !inline_history !301 ; 6 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %type_ready_set_dict.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_PyObject_SetDeferredRefcount(ptr noundef nonnull %i.ey) #21, !inline_history !301
  %i.fa = tail call i32 @PyDict_SetItem(ptr noundef %.0.i.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016), ptr noundef nonnull %i.ey) #21, !inline_history !301
  %i.fb = load i32, ptr %i.ey, align 8, !tbaa !112 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.fb, -1
  br i1 %.not.i.i.i, label %bb.ar, label %add_tp_new_wrapper.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %i.ey, align 8, !tbaa !112
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.as, label %add_tp_new_wrapper.exit.i

bb.as:                                            ; preds = %bb.ar
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ey) #21, !inline_history !301
  br label %add_tp_new_wrapper.exit.i

add_tp_new_wrapper.exit.i:                        ; preds = %bb.as, %bb.ar, %bb.aq
  %i.fe = icmp slt i32 %i.fa, 0
  br i1 %i.fe, label %type_ready_set_dict.exit, label %type_ready_set_new.exit

bb.at:                                            ; preds = %bb.ai
  %.not26.i = icmp eq i32 %1, 0
  br i1 %.not26.i, label %type_ready_set_new.exit, label %.thread36.i

.thread36.i:                                      ; preds = %bb.at
  %i.ff = getelementptr i8, ptr %i.du, i64 312
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !129
  br label %add_tp_new_wrapper.exit.thread30.sink.split.i

bb.au:                                            ; preds = %._crit_edge.i
  %.not28.i = icmp eq i32 %1, 0
  br i1 %.not28.i, label %type_ready_set_new.exit, label %add_tp_new_wrapper.exit.thread30.sink.split.i

add_tp_new_wrapper.exit.thread30.sink.split.i:    ; preds = %bb.au, %.thread36.i, %.thread.i
  %.sink.i = phi ptr [ %i.fg, %.thread36.i ], [ null, %.thread.i ], [ null, %bb.au ]
  store ptr %.sink.i, ptr %i.dv, align 8, !tbaa !129
  br label %type_ready_set_new.exit

type_ready_set_new.exit:                          ; preds = %add_tp_new_wrapper.exit.thread30.sink.split.i, %bb.au, %bb.at, %add_tp_new_wrapper.exit.i, %lookup_tp_dict.exit.i.i, %bb.ak
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !118
  %i.fi = and i64 %i.fh, 2
  %.not.i44.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i44.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %type_ready_set_new.exit
  %i.fj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !26 ; 2 uses
  %i.fl = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i.i.i39 = load ptr, ptr %i.fl, align 8, !tbaa !11
  %i.fm = ptrtoint ptr %.val.i.i.i.i.i39 to i64
  %i.fn = add i64 %i.fm, -1                       ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fk, i64 180328
  %i.fp = getelementptr [48 x i8], ptr %i.fo, i64 %i.fn ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !24
  %i.fr = icmp eq ptr %i.fq, %0
  %i.fs = icmp ugt i64 %i.fn, 10
  %or.cond.i.i.i.i.i40 = or i1 %i.fr, %i.fs
  %i.ft = getelementptr i8, ptr %i.fk, i64 190040
  %i.fu = getelementptr [48 x i8], ptr %i.ft, i64 %i.fn
  %.0.i.i.i.i.i41 = select i1 %or.cond.i.i.i.i.i40, ptr %i.fp, ptr %i.fu
  %i.fv = getelementptr i8, ptr %.0.i.i.i.i.i41, i64 24
  br label %lookup_tp_dict.exit.i.i42

bb.aw:                                            ; preds = %type_ready_set_new.exit
  %i.fw = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit.i.i42

lookup_tp_dict.exit.i.i42:                        ; preds = %bb.aw, %bb.av
  %.0.in.i.i.i43 = phi ptr [ %i.fv, %bb.av ], [ %i.fw, %bb.aw ]
  %.0.i.i.i44 = load ptr, ptr %.0.in.i.i.i43, align 8, !tbaa !115 ; 3 uses
  %i.fx = load ptr, ptr @slotdefs, align 16, !tbaa !280
  %.not58.i.i = icmp eq ptr %i.fx, null
  br i1 %.not58.i.i, label %add_operators.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %lookup_tp_dict.exit.i.i42
  %i.fy = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.fz = getelementptr i8, ptr %0, i64 200       ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %Py_DECREF.exit42.i.i, %.lr.ph.i.i
  %.03159.i.i = phi ptr [ @slotdefs, %.lr.ph.i.i ], [ %i.ic, %Py_DECREF.exit42.i.i ] ; 5 uses
  %i.ga = getelementptr i8, ptr %.03159.i.i, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !302
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %Py_DECREF.exit42.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gd = getelementptr i8, ptr %.03159.i.i, i64 8
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !303 ; 10 uses
  %i.gf = sext i32 %i.ge to i64                   ; 4 uses
  %i.gg = icmp ugt i32 %i.ge, 839                 ; 2 uses
  br i1 %i.gg, label %.sink.split.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gh = icmp samesign ugt i32 %i.ge, 759
  br i1 %i.gh, label %.sink.split.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gi = icmp samesign ugt i32 %i.ge, 735
  br i1 %i.gi, label %.sink.split.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gj = icmp samesign ugt i32 %i.ge, 447
  br i1 %i.gj, label %.sink.split.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gk = icmp samesign ugt i32 %i.ge, 415
  br i1 %i.gk, label %.sink.split.i.i.i, label %slotptr.exit.i.i

.sink.split.i.i.i:                                ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.sink25.i.i.i = phi i64 [ 160, %bb.ay ], [ 112, %bb.ba ], [ 96, %bb.bb ], [ 104, %bb.az ], [ 80, %bb.bc ]
  %.sink.i.i.i = phi i64 [ -840, %bb.ay ], [ -736, %bb.ba ], [ -448, %bb.bb ], [ -760, %bb.az ], [ -416, %bb.bc ]
  %i.gl = getelementptr i8, ptr %0, i64 %.sink25.i.i.i
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !120
  %i.gn = add nsw i64 %.sink.i.i.i, %i.gf
  br label %slotptr.exit.i.i

slotptr.exit.i.i:                                 ; preds = %.sink.split.i.i.i, %bb.bc
  %.020.i.i.i = phi ptr [ %0, %bb.bc ], [ %i.gm, %.sink.split.i.i.i ] ; 2 uses
  %.0.i45.i.i = phi i64 [ %i.gf, %bb.bc ], [ %i.gn, %.sink.split.i.i.i ]
  %.not.i46.i.i = icmp eq ptr %.020.i.i.i, null
  %i.go = getelementptr i8, ptr %.020.i.i.i, i64 %.0.i45.i.i ; 5 uses
  %.not3656.i.i = icmp eq ptr %i.go, null
  %.not36.i.i = select i1 %.not.i46.i.i, i1 true, i1 %.not3656.i.i
  br i1 %.not36.i.i, label %Py_DECREF.exit42.i.i, label %bb.bd

bb.bd:                                            ; preds = %slotptr.exit.i.i
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !120 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.gp, null
end_hunk_1
