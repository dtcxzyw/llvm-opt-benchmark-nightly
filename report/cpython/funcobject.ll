inline.NumInlined: 211
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@func_set_kwdefaults:bb.a
  %phi.call = phi ptr [ null, %_PyFunction_ClearVersion.exit32 ], [ %1, %bb.n ], [ %1, %bb.o ]
  store ptr %phi.call, ptr %i.bu, align 8, !tbaa !105
  %.not.i33 = icmp eq ptr %i.bv, null
  br i1 %.not.i33, label %Py_XDECREF.exit, label %bb.y

bb.y:                                             ; preds = %_Py_XNewRef.exit
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !108 ; 2 uses
  %.not.i.i34 = icmp sgt i32 %i.bw, -1
  br i1 %.not.i.i34, label %bb.z, label %Py_XDECREF.exit

bb.z:                                             ; preds = %bb.y
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !108
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.aa, label %Py_XDECREF.exit

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #7
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.aa, %bb.z, %bb.y, %_Py_XNewRef.exit, %.critedge, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %.critedge ], [ -1, %bb.d ], [ 0, %_Py_XNewRef.exit ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @function___annotations___get(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @PyCallable_Check(ptr noundef nonnull %i.e) #7
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call ptr @PyDict_New() #7           ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !157
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %function___annotations___get_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.j = tail call fastcc ptr @func_get_annotation_dict(ptr noundef nonnull %0) ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %function___annotations___get_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %function___annotations___get_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %i.j, align 8, !tbaa !108
  br label %function___annotations___get_impl.exit

function___annotations___get_impl.exit:           ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @function___annotations___set(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, @_Py_NoneStruct
  %.not15.i = icmp eq ptr %1, null
  %.not.i = or i1 %i.a, %.not15.i
  br i1 %.not.i, label %.split13.i, label %bb.b

.split13.i:                                       ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  br label %_Py_XNewRef.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.e = getelementptr i8, ptr %.val.i, i64 168
  %.val18.i = load i64, ptr %i.e, align 8, !tbaa !146
  %i.f = and i64 %.val18.i, 536870912
  %.not16.i = icmp eq i64 %i.f, 0
  br i1 %.not16.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %_Py_XNewRef.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %1, align 8, !tbaa !108
  br label %_Py_XNewRef.exit.i

bb.e:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.51) #7
  br label %function___annotations___set_impl.exit

_Py_XNewRef.exit.i:                               ; preds = %bb.d, %bb.c, %.split13.i
  %i.m = phi ptr [ %i.b, %.split13.i ], [ %i.g, %bb.c ], [ %i.g, %bb.d ]
  %i.n = phi ptr [ %i.c, %.split13.i ], [ %i.h, %bb.c ], [ %i.h, %bb.d ] ; 4 uses
  %phi.call.i = phi ptr [ null, %.split13.i ], [ %1, %bb.c ], [ %1, %bb.d ]
  store ptr %phi.call.i, ptr %i.m, align 8, !tbaa !105
  %.not.i19.i = icmp eq ptr %i.n, null
  br i1 %.not.i19.i, label %Py_XDECREF.exit.i, label %bb.f

bb.f:                                             ; preds = %_Py_XNewRef.exit.i
  %i.o = load i32, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %.not.i.i20.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i20.i, label %bb.g, label %Py_XDECREF.exit.i

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !108
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %Py_XDECREF.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #7
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.h, %bb.g, %bb.f, %_Py_XNewRef.exit.i
  %i.r = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105  ; 4 uses
  %.not17.i = icmp eq ptr %i.s, null
  br i1 %.not17.i, label %function___annotations___set_impl.exit, label %bb.i

bb.i:                                             ; preds = %Py_XDECREF.exit.i
  store ptr null, ptr %i.r, align 8, !tbaa !105
  %i.t = load i32, ptr %i.s, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i, label %bb.j, label %function___annotations___set_impl.exit

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !108
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %function___annotations___set_impl.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #7
  br label %function___annotations___set_impl.exit

function___annotations___set_impl.exit:           ; preds = %bb.e, %Py_XDECREF.exit.i, %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ -1, %bb.e ], [ 0, %Py_XDECREF.exit.i ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @function___annotate___get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.a, align 8, !tbaa !158 ; 5 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %function___annotate___get_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %.val, align 8, !tbaa !108 ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %function___annotate___get_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %.val, align 8, !tbaa !108
  br label %function___annotate___get_impl.exit

function___annotate___get_impl.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.a ], [ %.val, %bb.b ], [ %.val, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @function___annotate___set(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.52) #7
  br label %function___annotate___set_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.c, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 4 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !105
  %.not.i21.i = icmp eq ptr %i.e, null
  br i1 %.not.i21.i, label %function___annotate___set_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i.i, label %bb.f, label %function___annotate___set_impl.exit

bb.f:                                             ; preds = %bb.e
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !108
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %function___annotate___set_impl.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #7
  br label %function___annotate___set_impl.exit

bb.h:                                             ; preds = %bb.c
  %i.i = tail call i32 @PyCallable_Check(ptr noundef nonnull %1) #7
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 4 uses
  %i.l = load i32, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_XNewRef.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %1, align 8, !tbaa !108
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.j, %bb.i
  store ptr %1, ptr %i.j, align 8, !tbaa !105
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %Py_XDECREF.exit25.i, label %bb.k

bb.k:                                             ; preds = %_Py_XNewRef.exit.i
  %i.o = load i32, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %.not.i.i24.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i.i24.i, label %bb.l, label %Py_XDECREF.exit25.i

bb.l:                                             ; preds = %bb.k
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.k, align 8, !tbaa !108
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.m, label %Py_XDECREF.exit25.i

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #7
  br label %Py_XDECREF.exit25.i

Py_XDECREF.exit25.i:                              ; preds = %bb.m, %bb.l, %bb.k, %_Py_XNewRef.exit.i
  %i.r = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !105  ; 4 uses
  %.not20.i = icmp eq ptr %i.s, null
  br i1 %.not20.i, label %function___annotate___set_impl.exit, label %bb.n

bb.n:                                             ; preds = %Py_XDECREF.exit25.i
  store ptr null, ptr %i.r, align 8, !tbaa !105
  %i.t = load i32, ptr %i.s, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i, label %bb.o, label %function___annotate___set_impl.exit

bb.o:                                             ; preds = %bb.n
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !108
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.p, label %function___annotate___set_impl.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #7
  br label %function___annotate___set_impl.exit

bb.q:                                             ; preds = %bb.h
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.53) #7
  br label %function___annotate___set_impl.exit

function___annotate___set_impl.exit:              ; preds = %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %Py_XDECREF.exit25.i, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i32 [ -1, %bb.b ], [ 0, %Py_XDECREF.exit25.i ], [ -1, %bb.q ], [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ]
  ret i32 %.0.i
}

declare ptr @PyObject_GenericGetDict(ptr noundef, ptr noundef) #2

declare i32 @PyObject_GenericSetDict(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @func_get_name(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 8, !tbaa !108
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @func_set_name(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !145
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val9 = load i64, ptr %i.c, align 8, !tbaa !146
  %i.d = and i64 %.val9, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !105
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.54) #7
  br label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 4 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !108    ; 2 uses
  %i.i = icmp ugt i32 %i.h, -1073741825
  br i1 %i.i, label %_Py_NewRef.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add nuw i32 %i.h, 1
  store i32 %i.j, ptr %1, align 8, !tbaa !108
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.e
  store ptr %1, ptr %i.f, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit
  %i.k = load i32, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i, label %bb.g, label %Py_XDECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.g, align 8, !tbaa !108
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %Py_XDECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #7
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.h, %bb.g, %bb.f, %_Py_NewRef.exit, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %_Py_NewRef.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @func_get_qualname(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 8, !tbaa !108
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @func_set_qualname(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !145
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val11 = load i64, ptr %i.c, align 8, !tbaa !146
  %i.d = and i64 %.val11, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
