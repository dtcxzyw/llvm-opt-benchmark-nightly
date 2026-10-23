Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/sliceobject?download=true
inline.NumInlined: 55
inline.NumDeleted: 23
begin_hunk_0_@_PySlice_GetLongIndices:bb.a

Py_XDECREF.exit186:                               ; preds = %Py_XDECREF.exit.thread, %Py_XDECREF.exit, %bb.ba, %bb.bb, %bb.bc
  %.177220230 = phi ptr [ %.177.ph, %Py_XDECREF.exit.thread ], [ %.076, %Py_XDECREF.exit ], [ %.076, %bb.ba ], [ %.076, %bb.bb ], [ %.076, %bb.bc ] ; 4 uses
  %.175221229 = phi ptr [ %.175.ph, %Py_XDECREF.exit.thread ], [ %.074, %Py_XDECREF.exit ], [ %.074, %bb.ba ], [ %.074, %bb.bb ], [ %.074, %bb.bc ] ; 4 uses
  %.1222228 = phi ptr [ %.1.ph, %Py_XDECREF.exit.thread ], [ %.073203, %Py_XDECREF.exit ], [ %.073203, %bb.ba ], [ %.073203, %bb.bb ], [ %.073203, %bb.bc ] ; 4 uses
  %.not.i187 = icmp eq ptr %.1222228, null
  br i1 %.not.i187, label %Py_XDECREF.exit189, label %bb.bd

bb.bd:                                            ; preds = %Py_XDECREF.exit186
  %i.dg = load i32, ptr %.1222228, align 8, !tbaa !18 ; 2 uses
  %.not.i.i188 = icmp sgt i32 %i.dg, -1
  br i1 %.not.i.i188, label %bb.be, label %Py_XDECREF.exit189

bb.be:                                            ; preds = %bb.bd
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %.1222228, align 8, !tbaa !18
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.bf, label %Py_XDECREF.exit189

bb.bf:                                            ; preds = %bb.be
  call void @_Py_Dealloc(ptr noundef nonnull %.1222228) #6
  br label %Py_XDECREF.exit189

Py_XDECREF.exit189:                               ; preds = %Py_XDECREF.exit186, %bb.bd, %bb.be, %bb.bf
  %.not.i190 = icmp eq ptr %.175221229, null
  br i1 %.not.i190, label %Py_XDECREF.exit192, label %bb.bg

bb.bg:                                            ; preds = %Py_XDECREF.exit189
  %i.dj = load i32, ptr %.175221229, align 8, !tbaa !18 ; 2 uses
  %.not.i.i191 = icmp sgt i32 %i.dj, -1
  br i1 %.not.i.i191, label %bb.bh, label %Py_XDECREF.exit192

bb.bh:                                            ; preds = %bb.bg
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %.175221229, align 8, !tbaa !18
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.bi, label %Py_XDECREF.exit192

bb.bi:                                            ; preds = %bb.bh
  call void @_Py_Dealloc(ptr noundef nonnull %.175221229) #6
  br label %Py_XDECREF.exit192

Py_XDECREF.exit192:                               ; preds = %Py_XDECREF.exit189, %bb.bg, %bb.bh, %bb.bi
  %.not.i193 = icmp eq ptr %.177220230, null
  br i1 %.not.i193, label %Py_DECREF.exit, label %bb.bj

bb.bj:                                            ; preds = %Py_XDECREF.exit192
  %i.dm = load i32, ptr %.177220230, align 8, !tbaa !18 ; 2 uses
  %.not.i.i194 = icmp sgt i32 %i.dm, -1
  br i1 %.not.i.i194, label %bb.bk, label %Py_DECREF.exit

bb.bk:                                            ; preds = %bb.bj
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %.177220230, align 8, !tbaa !18
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %Py_DECREF.exit.sink.split, label %Py_DECREF.exit

Py_DECREF.exit.sink.split:                        ; preds = %bb.bk, %bb.aw
  %.177220230.sink = phi ptr [ %.076, %bb.aw ], [ %.177220230, %bb.bk ]
  %.0.ph = phi i32 [ 0, %bb.aw ], [ -1, %bb.bk ]
  call void @_Py_Dealloc(ptr noundef nonnull %.177220230.sink) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit.sink.split, %bb.bk, %bb.bj, %Py_XDECREF.exit192, %bb.aw, %Py_DECREF.exit139
  %.0 = phi i32 [ -1, %bb.bk ], [ 0, %Py_DECREF.exit139 ], [ 0, %bb.aw ], [ -1, %Py_XDECREF.exit192 ], [ -1, %bb.bj ], [ %.0.ph, %Py_DECREF.exit.sink.split ]
  ret i32 %.0
}

declare i32 @PyLong_GetSign(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_RichCompareBool(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @slice_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #6
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not.i8 = icmp sgt i32 %i.c, -1
  br i1 %.not.i8, label %bb.b, label %Py_DECREF.exit9

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !18
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %Py_DECREF.exit9

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit9

Py_DECREF.exit9:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not.i6 = icmp sgt i32 %i.h, -1
  br i1 %.not.i6, label %bb.d, label %Py_DECREF.exit7

bb.d:                                             ; preds = %Py_DECREF.exit9
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !18
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %Py_DECREF.exit7

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #6
  br label %Py_DECREF.exit7

Py_DECREF.exit7:                                  ; preds = %Py_DECREF.exit9, %bb.d, %bb.e
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %Py_DECREF.exit7
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit7, %bb.f, %bb.g
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 11624    ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !24
  %or.cond.i.i = icmp eq i64 %i.s, 0
  br i1 %or.cond.i.i, label %_PyFreeList_Push.exit.i, label %bb.h

_PyFreeList_Push.exit.i:                          ; preds = %Py_DECREF.exit
  %i.t = getelementptr i8, ptr %i.q, i64 11616    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  store ptr %i.u, ptr %0, align 8, !tbaa !23
  store ptr %0, ptr %i.t, align 8, !tbaa !22
  store i64 1, ptr %i.r, align 8, !tbaa !24
  br label %_PyFreeList_Free.exit

bb.h:                                             ; preds = %Py_DECREF.exit
  tail call void @PyObject_GC_Del(ptr noundef nonnull %0) #6
  br label %_PyFreeList_Free.exit

_PyFreeList_Free.exit:                            ; preds = %_PyFreeList_Push.exit.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @slice_repr(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.8, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #6
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal i64 @slice_hash(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = tail call i64 @PyObject_Hash(ptr noundef %i.b) #6 ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = tail call i64 @PyObject_Hash(ptr noundef %i.e) #6 ; 2 uses
  %.not38 = icmp eq i64 %i.f, -1
  br i1 %.not38, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = tail call i64 @PyObject_Hash(ptr noundef %i.h) #6 ; 2 uses
  %.not39 = icmp eq i64 %i.i, -1
  br i1 %.not39, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = mul i64 %i.c, -4417276706812531889
  %i.k = add i64 %i.j, 2870177450012600261        ; 2 uses
  %i.l = tail call i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 31)
  %i.m = mul i64 %i.l, -7046029288634856825
  %i.n = mul i64 %i.f, -4417276706812531889
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = tail call i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 31)
  %i.q = mul i64 %i.p, -7046029288634856825
  %i.r = mul i64 %i.i, -4417276706812531889
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = tail call i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 31)
  %i.u = mul i64 %i.t, -7046029288634856825       ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  %..231 = select i1 %i.v, i64 1546275796, i64 %i.u
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.3 = phi i64 [ %..231, %bb.d ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @slice_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #6 ; 2 uses
  %.not32 = icmp eq i32 %i.c, 0
  br i1 %.not32, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #6 ; 2 uses
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not35 = icmp eq ptr %i.h, null
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #6 ; 2 uses
  %.not36 = icmp eq i32 %i.i, 0
  br i1 %.not36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.5 = phi i32 [ 0, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal ptr @slice_richcompare(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq ptr %.val35, @PySlice_Type
  br i1 %.not, label %bb.b, label %_Py_NewRef.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !30
  %.not37 = icmp eq ptr %.val, @PySlice_Type
  br i1 %.not37, label %bb.c, label %_Py_NewRef.exit

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %.split [
    i32 2, label %.split23
    i32 1, label %.split23
    i32 5, label %.split23
  ]

.split23:                                         ; preds = %bb.d, %bb.d, %bb.d
  %i.d = load i32, ptr @_Py_TrueStruct, align 8, !tbaa !18 ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %.split23
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr @_Py_TrueStruct, align 8, !tbaa !18
  br label %_Py_NewRef.exit

.split:                                           ; preds = %bb.d
  %i.g = load i32, ptr @_Py_FalseStruct, align 8, !tbaa !18 ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr @_Py_FalseStruct, align 8, !tbaa !18
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.o) #6 ; 8 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_Py_NewRef.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 3, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w) #6 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %.not.i31 = icmp sgt i32 %i.z, -1
  br i1 %.not.i31, label %bb.j, label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.p, align 8, !tbaa !18
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %_Py_NewRef.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #6
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %bb.h
  %i.ac = tail call ptr @PyObject_RichCompare(ptr noundef nonnull %i.p, ptr noundef nonnull %i.x, i32 noundef %2) #6 ; 3 uses
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !18  ; 2 uses
  %.not.i29 = icmp sgt i32 %i.ad, -1
  br i1 %.not.i29, label %bb.m, label %Py_DECREF.exit30

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.p, align 8, !tbaa !18
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.n, label %Py_DECREF.exit30

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #6
  br label %Py_DECREF.exit30

Py_DECREF.exit30:                                 ; preds = %bb.l, %bb.m, %bb.n
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  %.not.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i, label %bb.o, label %_Py_NewRef.exit

bb.o:                                             ; preds = %Py_DECREF.exit30
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.x, align 8, !tbaa !18
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %_Py_NewRef.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #6
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.p, %bb.o, %Py_DECREF.exit30, %bb.k, %bb.j, %bb.i, %bb.f, %.split, %bb.e, %.split23, %bb.g, %bb.a, %bb.b
  %.2 = phi ptr [ @_Py_NotImplementedStruct, %bb.a ], [ null, %bb.k ], [ @_Py_NotImplementedStruct, %bb.b ], [ @_Py_TrueStruct, %bb.e ], [ null, %bb.g ], [ @_Py_FalseStruct, %bb.f ], [ @_Py_TrueStruct, %.split23 ], [ @_Py_FalseStruct, %.split ], [ null, %bb.i ], [ null, %bb.j ], [ %i.ac, %Py_DECREF.exit30 ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @slice_new(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr null, ptr %i.c, align 8, !tbaa !17
  store ptr null, ptr %i.b, align 8, !tbaa !17
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.2, i64 noundef 1, i64 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  br i1 %i.h, label %bb.e, label %bb.f

end_hunk_0
