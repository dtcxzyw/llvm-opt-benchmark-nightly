inline.NumInlined: 446
inline.NumDeleted: 84
begin_hunk_0_@treebuilder_new:bb.a
  %i.y = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %Py_DECREF.exit32
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.c, align 8, !tbaa !26
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #11
  br label %Py_DECREF.exit

bb.l:                                             ; preds = %_Py_NewRef.exit37
  %i.ab = getelementptr i8, ptr %i.c, i64 64
  store i64 0, ptr %i.ab, align 8, !tbaa !110
  %i.ac = getelementptr i8, ptr %i.c, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.ac, i8 0, i64 58, i1 false)
  %i.ad = tail call ptr @PyType_GetModuleByDef(ptr noundef nonnull %0, ptr noundef nonnull @elementtreemodule) #11, !inline_history !111
  %i.ae = tail call ptr @PyModule_GetState(ptr noundef %i.ad) #11, !inline_history !111
  %i.af = getelementptr i8, ptr %i.c, i64 160
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !106
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %Py_DECREF.exit32, %bb.a, %bb.l
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.l ], [ null, %Py_DECREF.exit32 ], [ null, %bb.j ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_elementtree_TreeBuilder_data(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @treebuilder_handle_data(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_TreeBuilder_start(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.36, i64 noundef %2, i64 noundef 2, i64 noundef 2) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.e, align 8, !tbaa !48
  %i.f = and i64 %.val12, 536870912
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.c) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !25
  %i.h = tail call fastcc ptr @treebuilder_handle_start(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_elementtree_TreeBuilder_end(ptr noundef captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @treebuilder_handle_end(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_TreeBuilder_comment(ptr noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @treebuilder_handle_comment(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_TreeBuilder_pi(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.39, i64 noundef %2, i64 noundef 1, i64 noundef 2) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !25
  %i.d = icmp slt i64 %2, 2
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.f, %bb.d ]
  %i.g = tail call fastcc ptr @treebuilder_handle_pi(ptr noundef %0, ptr noundef %i.c, ptr noundef %.0)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.010 = phi ptr [ %i.g, %bb.e ], [ null, %bb.b ]
  ret ptr %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull ptr @_elementtree_TreeBuilder_close(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  %_Py_NoneStruct..i.i = select i1 %.not.i.i, ptr @_Py_NoneStruct, ptr %.val ; 3 uses
  %i.b = load i32, ptr %_Py_NoneStruct..i.i, align 8, !tbaa !26 ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_elementtree_TreeBuilder_close_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %_Py_NoneStruct..i.i, align 8, !tbaa !26
  br label %_elementtree_TreeBuilder_close_impl.exit

_elementtree_TreeBuilder_close_impl.exit:         ; preds = %bb.a, %bb.b
  ret ptr %_Py_NoneStruct..i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @treebuilder_handle_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.e, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %1, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !100
  br label %Py_DECREF.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %.val39 = load ptr, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %.not47 = icmp eq ptr %.val39, @PyBytes_Type
  br i1 %.not47, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.val40 = load i32, ptr %i.b, align 8, !tbaa !26
  %.not48 = icmp eq i32 %.val40, 1
  br i1 %.not48, label %bb.g, label %.thread57

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.j, align 8, !tbaa !30
  %.not49 = icmp eq ptr %.val38, @PyBytes_Type
  br i1 %.not49, label %bb.h, label %.thread57

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %1, i64 16
  %.val42 = load i64, ptr %i.k, align 8, !tbaa !105
  %i.l = icmp eq i64 %.val42, 1
  br i1 %i.l, label %bb.i, label %.thread57

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr i8, ptr %i.b, i64 16
  %.val41 = load i64, ptr %i.m, align 8, !tbaa !105 ; 2 uses
  %i.n = add i64 %.val41, 1
  %i.o = tail call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.n) #11
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %Py_DECREF.exit, label %.thread

.thread:                                          ; preds = %bb.i
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load i8, ptr %i.q, align 1, !tbaa !26
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = getelementptr i8, ptr %i.t, i64 %.val41
  store i8 %i.r, ptr %i.u, align 1, !tbaa !26
  br label %Py_DECREF.exit.thread

bb.j:                                             ; preds = %bb.e
  %.not50 = icmp eq ptr %.val39, @PyList_Type
  br i1 %.not50, label %bb.k, label %.thread57

bb.k:                                             ; preds = %bb.j
  %i.v = tail call i32 @PyList_Append(ptr noundef nonnull %i.b, ptr noundef %1) #11
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %Py_DECREF.exit, label %Py_DECREF.exit.thread

.thread57:                                        ; preds = %bb.f, %bb.g, %bb.h, %bb.j
  %i.x = tail call ptr @PyList_New(i64 noundef 2) #11 ; 3 uses
  %.not36 = icmp eq ptr %i.x, null
  br i1 %.not36, label %Py_DECREF.exit, label %bb.l

bb.l:                                             ; preds = %.thread57
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !100  ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %_Py_NewRef.exit45, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !26
  br label %_Py_NewRef.exit45

_Py_NewRef.exit45:                                ; preds = %bb.l, %bb.m
  %i.ac = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  %.val44 = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 2 uses
  store ptr %i.y, ptr %.val44, align 8, !tbaa !25
  %i.ad = load i32, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %_Py_NewRef.exit46, label %bb.n

bb.n:                                             ; preds = %_Py_NewRef.exit45
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr %1, align 8, !tbaa !26
  %.val43.pre = load ptr, ptr %i.ac, align 8, !tbaa !112
  br label %_Py_NewRef.exit46

_Py_NewRef.exit46:                                ; preds = %_Py_NewRef.exit45, %bb.n
  %.val43 = phi ptr [ %.val44, %_Py_NewRef.exit45 ], [ %.val43.pre, %bb.n ]
  %i.ag = getelementptr i8, ptr %.val43, i64 8
  store ptr %1, ptr %i.ag, align 8, !tbaa !25
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !25
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit.thread

bb.o:                                             ; preds = %_Py_NewRef.exit46
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !26
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %Py_DECREF.exit.thread

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #11
  br label %Py_DECREF.exit.thread

Py_DECREF.exit.thread:                            ; preds = %_Py_NewRef.exit46, %bb.o, %bb.p, %.thread, %bb.k, %_Py_NewRef.exit
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.thread57, %bb.i, %bb.k, %bb.b, %Py_DECREF.exit.thread
  %.2 = phi ptr [ @_Py_NoneStruct, %Py_DECREF.exit.thread ], [ null, %bb.k ], [ @_Py_NoneStruct, %bb.b ], [ null, %bb.i ], [ null, %.thread57 ]
  ret ptr %.2
}

declare i32 @_PyBytes_Resize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @treebuilder_handle_start(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %.not.i79 = icmp eq ptr %i.d, null
  br i1 %.not.i79, label %treebuilder_flush_data.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99   ; 3 uses
  %.not16.i = icmp eq ptr %i.f, null
  br i1 %.not16.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = getelementptr i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = getelementptr i8, ptr %i.b, i64 104
  %.val17.i = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.m = tail call fastcc i32 @treebuilder_extend_element_text_or_tail(ptr %.val17.i, ptr noundef %i.h, ptr noundef nonnull %i.c, ptr noundef %i.i, ptr noundef %i.k)
  br label %treebuilder_flush_data.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.f, i64 32
  %i.o = getelementptr i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr i8, ptr %i.b, i64 104
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.r = tail call fastcc i32 @treebuilder_extend_element_text_or_tail(ptr %.val.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef %i.n, ptr noundef %i.p)
  br label %treebuilder_flush_data.exit

treebuilder_flush_data.exit:                      ; preds = %bb.c, %bb.d
  %.1.i = phi i32 [ %i.m, %bb.c ], [ %i.r, %bb.d ]
  %i.s = icmp slt i32 %.1.i, 0
  br i1 %i.s, label %Py_DECREF.exit, label %treebuilder_flush_data.exit.thread

treebuilder_flush_data.exit.thread:               ; preds = %bb.a, %treebuilder_flush_data.exit
  %i.t = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %treebuilder_flush_data.exit.thread
  %i.v = getelementptr i8, ptr %i.b, i64 104
  %.val = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.w = tail call fastcc ptr @create_new_element(ptr %.val, ptr noundef %1, ptr noundef %2)
  br label %Py_DECREF.exit73

bb.f:                                             ; preds = %treebuilder_flush_data.exit.thread
  %i.x = icmp eq ptr %2, null
  br i1 %i.x, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @PyDict_New() #11          ; 5 uses
  %.not61 = icmp eq ptr %i.y, null
  br i1 %.not61, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !104
  %i.aa = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.z, ptr noundef %1, ptr noundef nonnull %i.y, ptr noundef null) #11 ; 3 uses
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !26  ; 2 uses
  %.not.i72 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i72, label %bb.i, label %Py_DECREF.exit73

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.y, align 8, !tbaa !26
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %Py_DECREF.exit73

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #11
  br label %Py_DECREF.exit73

bb.k:                                             ; preds = %bb.f
  %i.ae = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef nonnull %i.u, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null) #11
  br label %Py_DECREF.exit73

Py_DECREF.exit73:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.k, %bb.e
  %.055 = phi ptr [ %i.w, %bb.e ], [ %i.ae, %bb.k ], [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ %i.aa, %bb.j ] ; 19 uses
  %.not62 = icmp eq ptr %.055, null
  br i1 %.not62, label %Py_DECREF.exit, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit73
  %i.af = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97 ; 6 uses
  %i.ah = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25 ; 4 uses
  %.not63 = icmp eq ptr %i.ai, null
  br i1 %.not63, label %Py_DECREF.exit71, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ah, align 8, !tbaa !25
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  %.not.i70 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i70, label %bb.n, label %Py_DECREF.exit71

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !26
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.o, label %Py_DECREF.exit71

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #11
  br label %Py_DECREF.exit71

Py_DECREF.exit71:                                 ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.not64 = icmp eq ptr %i.ag, @_Py_NoneStruct
  br i1 %.not64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %Py_DECREF.exit71
  %i.am = tail call fastcc i32 @treebuilder_add_subelement(ptr noundef %i.b, ptr noundef %i.ag, ptr noundef %.055)
  %i.an = icmp slt i32 %i.am, 0
end_hunk_0
begin_hunk_1_@_elementtree_Element_remove:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = add i64 %.0335381.i, %index             ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.at, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = getelementptr i8, ptr %i.bc, i64 24
  %wide.load = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !25
  %wide.load67 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !25
  %i.bf = getelementptr [8 x i8], ptr %i.at, i64 %i.bb ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store <2 x ptr> %wide.load, ptr %i.bf, align 8, !tbaa !25
  store <2 x ptr> %wide.load67, ptr %i.bg, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph64.i.preheader68

.lr.ph64.i.preheader68:                           ; preds = %.lr.ph64.i.preheader, %middle.block
  %.13463.i.ph = phi i64 [ %.0335381.i, %.lr.ph64.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.preheader68, %.lr.ph64.i
  %.13463.i = phi i64 [ %i.bi, %.lr.ph64.i ], [ %.13463.i.ph, %.lr.ph64.i.preheader68 ] ; 2 uses
  %i.bi = add nsw i64 %.13463.i, 1                ; 3 uses
  %i.bj = getelementptr [8 x i8], ptr %i.at, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bl = getelementptr [8 x i8], ptr %i.at, i64 %.13463.i
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !25
  %exitcond.not.i = icmp eq i64 %i.bi, %i.aw
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph64.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %.lr.ph64.i, %middle.block, %bb.h
  %i.bm = load i32, ptr %i.av, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i.i, label %bb.i, label %_elementtree_Element_remove_impl.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.av, align 8, !tbaa !26
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.j, label %_elementtree_Element_remove_impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.av) #11
  br label %_elementtree_Element_remove_impl.exit

_elementtree_Element_remove_impl.exit:            ; preds = %Py_DECREF.exit46.i, %bb.j, %bb.i, %._crit_edge.i, %.critedge.thread.thread.i, %.critedge.thread.i, %.critedge.thread77.i, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.critedge.thread77.i ], [ @_Py_NoneStruct, %bb.j ], [ @_Py_NoneStruct, %.critedge.thread.i ], [ @_Py_NoneStruct, %.critedge.thread.thread.i ], [ @_Py_NoneStruct, %._crit_edge.i ], [ @_Py_NoneStruct, %bb.i ], [ null, %Py_DECREF.exit46.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_Element_iter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !105
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %3, 2
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %i.c
  br i1 %or.cond5, label %.thread30, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.e = phi i64 [ %.val, %.thread ], [ 0, %bb.b ]
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_elementtree_Element_iter._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not26 = icmp eq ptr %i.f, null
  br i1 %.not26, label %bb.t, label %.thread30

.thread30:                                        ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %2, %bb.b ]
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %i.i = sub i64 0, %i.h
  %.not27 = icmp eq i64 %3, %i.i
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread30
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %.thread30, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ @_Py_NoneStruct, %.thread30 ] ; 16 uses
  %i.k = getelementptr i8, ptr %.0, i64 8
  %.val12.i = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr i8, ptr %.val12.i, i64 168
  %.val14.i = load i64, ptr %i.l, align 8, !tbaa !48 ; 2 uses
  %i.m = and i64 %.val14.i, 268435456
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %.0, i64 16
  %.val16.i = load i64, ptr %i.n, align 8, !tbaa !143
  %i.o = icmp eq i64 %.val16.i, 1
  br i1 %i.o, label %bb.g, label %_elementtree_Element_iter_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.0, i64 32
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = and i32 %i.r, 7
  %i.t = and i32 %i.q, 32
  %.not.i19.i.i = icmp eq i32 %i.t, 0             ; 3 uses
  switch i32 %i.s, label %bb.n [
    i32 1, label %bb.h
    i32 2, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i19.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = and i32 %i.q, 64
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %.0, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %.0, i64 56
  %.val4.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !26
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.i ], [ %.val4.i.i.i, %bb.j ]
  %i.w = load i8, ptr %.0.i.i.i, align 1, !tbaa !26
  %i.x = zext i8 %i.w to i32
  br label %PyUnicode_READ_CHAR.exit.i

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i19.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = and i32 %i.q, 64
  %.not.i.i12.i.i = icmp eq i32 %i.y, 0
  %.0.v.i.i13.i.i = select i1 %.not.i.i12.i.i, i64 56, i64 40
  %.0.i.i14.i.i = getelementptr i8, ptr %.0, i64 %.0.v.i.i13.i.i
  br label %_PyUnicode_DATA.exit17.i.i

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %.0, i64 56
  %.val4.i16.i.i = load ptr, ptr %i.z, align 8, !tbaa !26
  br label %_PyUnicode_DATA.exit17.i.i

_PyUnicode_DATA.exit17.i.i:                       ; preds = %bb.m, %bb.l
  %.0.i15.i.i = phi ptr [ %.0.i.i14.i.i, %bb.l ], [ %.val4.i16.i.i, %bb.m ]
  %i.aa = load i16, ptr %.0.i15.i.i, align 2, !tbaa !146
  %i.ab = zext i16 %i.aa to i32
  br label %PyUnicode_READ_CHAR.exit.i

bb.n:                                             ; preds = %bb.g
  br i1 %.not.i19.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = and i32 %i.q, 64
  %.not.i.i20.i.i = icmp eq i32 %i.ac, 0
  %.0.v.i.i21.i.i = select i1 %.not.i.i20.i.i, i64 56, i64 40
  %.0.i.i22.i.i = getelementptr i8, ptr %.0, i64 %.0.v.i.i21.i.i
  br label %_PyUnicode_DATA.exit25.i.i

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr i8, ptr %.0, i64 56
  %.val4.i24.i.i = load ptr, ptr %i.ad, align 8, !tbaa !26
  br label %_PyUnicode_DATA.exit25.i.i

_PyUnicode_DATA.exit25.i.i:                       ; preds = %bb.p, %bb.o
  %.0.i23.i.i = phi ptr [ %.0.i.i22.i.i, %bb.o ], [ %.val4.i24.i.i, %bb.p ]
  %i.ae = load i32, ptr %.0.i23.i.i, align 4, !tbaa !6
  br label %PyUnicode_READ_CHAR.exit.i

PyUnicode_READ_CHAR.exit.i:                       ; preds = %_PyUnicode_DATA.exit25.i.i, %_PyUnicode_DATA.exit17.i.i, %_PyUnicode_DATA.exit.i.i
  %.0.i.i = phi i32 [ %i.x, %_PyUnicode_DATA.exit.i.i ], [ %i.ab, %_PyUnicode_DATA.exit17.i.i ], [ %i.ae, %_PyUnicode_DATA.exit25.i.i ]
  %i.af = icmp eq i32 %.0.i.i, 42
  %spec.select.i = select i1 %i.af, ptr @_Py_NoneStruct, ptr %.0
  br label %_elementtree_Element_iter_impl.exit

bb.q:                                             ; preds = %bb.e
  %i.ag = and i64 %.val14.i, 134217728
  %.not10.i = icmp eq i64 %i.ag, 0
  br i1 %.not10.i, label %_elementtree_Element_iter_impl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr i8, ptr %.0, i64 16
  %.val15.i = load i64, ptr %i.ah, align 8, !tbaa !105
  %i.ai = icmp eq i64 %.val15.i, 1
  br i1 %i.ai, label %bb.s, label %_elementtree_Element_iter_impl.exit

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr i8, ptr %.0, i64 32
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = icmp eq i8 %i.ak, 42
  %spec.select11.i = select i1 %i.al, ptr @_Py_NoneStruct, ptr %.0
  br label %_elementtree_Element_iter_impl.exit

_elementtree_Element_iter_impl.exit:              ; preds = %bb.f, %PyUnicode_READ_CHAR.exit.i, %bb.q, %bb.r, %bb.s
  %.0.i = phi ptr [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.f ], [ %spec.select.i, %PyUnicode_READ_CHAR.exit.i ], [ %spec.select11.i, %bb.s ]
  %i.am = call ptr @PyType_GetModuleState(ptr noundef %1) #11
  %i.an = getelementptr i8, ptr %i.am, i64 112
  %.val17.i = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ao = call fastcc ptr @create_elementiter(ptr %.val17.i, ptr noundef %0, ptr noundef %.0.i, i32 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %_elementtree_Element_iter_impl.exit
  %.022 = phi ptr [ %i.ao, %_elementtree_Element_iter_impl.exit ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.022
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_Element_itertext(ptr noundef %0, ptr noundef %1, ptr readnone captures(none) %2, i64 noundef %3, ptr noundef readonly captures(address_is_null) %4) #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !105
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !25
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.85) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call ptr @PyType_GetModuleState(ptr noundef %1) #11
  %i.d = getelementptr i8, ptr %i.c, i64 112
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.e = tail call fastcc ptr @create_elementiter(ptr %.val.i, ptr noundef %0, ptr noundef nonnull @_Py_NoneStruct, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.e, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_Element_iterfind(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !105
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
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_elementtree_Element_iterfind._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.f, label %.thread32

.thread32:                                        ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.c ], [ %2, %bb.b ]   ; 2 uses
  %i.j = phi i64 [ %i.g, %bb.c ], [ %3, %bb.b ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !25
  %.not29 = icmp eq i64 %i.j, 1
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread32
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %.thread32, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ @_Py_NoneStruct, %.thread32 ]
  %i.n = call ptr @PyType_GetModuleState(ptr noundef %1) #11 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr i8, ptr %i.n, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69
  %i.s = call ptr (ptr, ptr, ...) @PyObject_CallMethodObjArgs(ptr noundef %i.p, ptr noundef %i.r, ptr noundef %0, ptr noundef %i.k, ptr noundef %.0, ptr noundef null) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.024 = phi ptr [ %i.s, %bb.e ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_Element_items(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %.val, align 8, !tbaa !57  ; 2 uses
  %.not6.i = icmp eq ptr %i.b, null
  br i1 %.not6.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @PyList_New(i64 noundef 0) #11
  br label %_elementtree_Element_items_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @PyDict_Items(ptr noundef nonnull %i.b) #11
  br label %_elementtree_Element_items_impl.exit

_elementtree_Element_items_impl.exit:             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_Element_keys(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %.val, align 8, !tbaa !57  ; 2 uses
  %.not6.i = icmp eq ptr %i.b, null
  br i1 %.not6.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @PyList_New(i64 noundef 0) #11
  br label %_elementtree_Element_keys_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call ptr @PyDict_Keys(ptr noundef nonnull %i.b) #11
  br label %_elementtree_Element_keys_impl.exit

_elementtree_Element_keys_impl.exit:              ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_Element_makeelement(ptr readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 2
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_elementtree_Element_makeelement._parser, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_elementtree_Element_makeelement_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %.val, i64 168
  %.val25 = load i64, ptr %i.k, align 8, !tbaa !48
  %i.l = and i64 %.val25, 536870912
  %.not24 = icmp eq i64 %i.l, 0
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.i) #11
  br label %_elementtree_Element_makeelement_impl.exit

bb.d:                                             ; preds = %.thread
  %i.m = call ptr @PyDict_Copy(ptr noundef nonnull %i.i) #11 ; 5 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_elementtree_Element_makeelement_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @PyType_GetModuleState(ptr noundef %1) #11
  %i.o = getelementptr i8, ptr %i.n, i64 104
end_hunk_1
begin_hunk_2_@checkpath:bb.a
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr i8, ptr %.0.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32
  br label %PyUnicode_READ.exit82

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %.0.i, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !146
  %i.w = zext i16 %i.v to i32
  br label %PyUnicode_READ.exit82

bb.l:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %.0.i, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !6
  br label %PyUnicode_READ.exit82

PyUnicode_READ.exit82:                            ; preds = %bb.j, %bb.k, %bb.l
  %.0.i81 = phi i32 [ %i.t, %bb.j ], [ %i.w, %bb.k ], [ %i.y, %bb.l ]
  %i.z = icmp eq i32 %.0.i81, 125
  br i1 %i.z, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %PyUnicode_READ.exit82
  switch i32 %i.j, label %bb.p [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr i8, ptr %.0.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ac = zext i8 %i.ab to i32
  br label %PyUnicode_READ.exit84

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %.0.i, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !146
  %i.af = zext i16 %i.ae to i32
  br label %PyUnicode_READ.exit84

bb.p:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %.0.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6
  br label %PyUnicode_READ.exit84

PyUnicode_READ.exit84:                            ; preds = %bb.n, %bb.o, %bb.p
  %.0.i83 = phi i32 [ %i.ac, %bb.n ], [ %i.af, %bb.o ], [ %i.ah, %bb.p ]
  %i.ai = icmp eq i32 %.0.i83, 42
  br i1 %i.ai, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %PyUnicode_READ.exit84
  switch i32 %i.j, label %bb.t [
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr i8, ptr %.0.i, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = zext i8 %i.ak to i32
  br label %PyUnicode_READ.exit86

bb.s:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %.0.i, i64 4
  %i.an = load i16, ptr %i.am, align 2, !tbaa !146
  %i.ao = zext i16 %i.an to i32
  br label %PyUnicode_READ.exit86

bb.t:                                             ; preds = %bb.q
  %i.ap = getelementptr i8, ptr %.0.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !6
  br label %PyUnicode_READ.exit86

PyUnicode_READ.exit86:                            ; preds = %bb.r, %bb.s, %bb.t
  %.0.i85 = phi i32 [ %i.al, %bb.r ], [ %i.ao, %bb.s ], [ %i.aq, %bb.t ]
  %i.ar = icmp eq i32 %.0.i85, 125
  br i1 %i.ar, label %.loopexit, label %.lr.ph

bb.u:                                             ; preds = %_PyUnicode_DATA.exit
  %i.as = icmp sgt i64 %.val79, 0
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %PyUnicode_READ.exit, %PyUnicode_READ.exit84, %PyUnicode_READ.exit86, %bb.u
  switch i32 %i.j, label %PyUnicode_READ.exit88 [
    i32 1, label %PyUnicode_READ.exit88.us
    i32 2, label %PyUnicode_READ.exit88.us114
  ]

PyUnicode_READ.exit88.us:                         ; preds = %.lr.ph, %bb.y
  %.06195.us = phi i64 [ %i.av, %bb.y ], [ 0, %.lr.ph ] ; 2 uses
  %.06394.us = phi i32 [ %.164.us, %bb.y ], [ %i.j, %.lr.ph ]
  %i.at = getelementptr i8, ptr %.0.i, i64 %.06195.us
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26  ; 2 uses
  switch i8 %i.au, label %bb.w [
    i8 123, label %bb.y
    i8 125, label %bb.v
  ]

bb.v:                                             ; preds = %PyUnicode_READ.exit88.us
  br label %bb.y

bb.w:                                             ; preds = %PyUnicode_READ.exit88.us
  %.not74.us = icmp eq i32 %.06394.us, 0
  br i1 %.not74.us, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  switch i8 %i.au, label %bb.y [
    i8 91, label %.loopexit
    i8 64, label %.loopexit
    i8 47, label %.loopexit
    i8 46, label %.loopexit
    i8 42, label %.loopexit
  ]

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %PyUnicode_READ.exit88.us
  %.164.us = phi i32 [ 0, %bb.w ], [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %PyUnicode_READ.exit88.us ]
  %i.av = add nuw nsw i64 %.06195.us, 1           ; 2 uses
  %exitcond150.not = icmp eq i64 %i.av, %.val79
  br i1 %exitcond150.not, label %.loopexit, label %PyUnicode_READ.exit88.us, !llvm.loop !151

PyUnicode_READ.exit88.us114:                      ; preds = %.lr.ph, %bb.ac
  %.06195.us112 = phi i64 [ %i.ay, %bb.ac ], [ 0, %.lr.ph ] ; 2 uses
  %.06394.us113 = phi i32 [ %.164.us117, %bb.ac ], [ 1, %.lr.ph ]
  %i.aw = getelementptr [2 x i8], ptr %.0.i, i64 %.06195.us112
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !146 ; 2 uses
  switch i16 %i.ax, label %bb.aa [
    i16 123, label %bb.ac
    i16 125, label %bb.z
  ]

bb.z:                                             ; preds = %PyUnicode_READ.exit88.us114
  br label %bb.ac

bb.aa:                                            ; preds = %PyUnicode_READ.exit88.us114
  %.not74.us116 = icmp eq i32 %.06394.us113, 0
  br i1 %.not74.us116, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  switch i16 %i.ax, label %bb.ac [
    i16 91, label %.loopexit
    i16 64, label %.loopexit
    i16 47, label %.loopexit
    i16 46, label %.loopexit
    i16 42, label %.loopexit
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %PyUnicode_READ.exit88.us114
  %.164.us117 = phi i32 [ 0, %bb.aa ], [ 1, %bb.z ], [ 1, %bb.ab ], [ 0, %PyUnicode_READ.exit88.us114 ]
  %i.ay = add nuw nsw i64 %.06195.us112, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %.val79
  br i1 %exitcond.not, label %.loopexit, label %PyUnicode_READ.exit88.us114, !llvm.loop !151

PyUnicode_READ.exit88:                            ; preds = %.lr.ph, %bb.ag
  %.06195 = phi i64 [ %i.bb, %bb.ag ], [ 0, %.lr.ph ] ; 2 uses
  %.06394 = phi i32 [ %.164, %bb.ag ], [ 1, %.lr.ph ]
  %i.az = getelementptr [4 x i8], ptr %.0.i, i64 %.06195
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !6  ; 2 uses
  switch i32 %i.ba, label %bb.ae [
    i32 123, label %bb.ag
    i32 125, label %bb.ad
  ]

bb.ad:                                            ; preds = %PyUnicode_READ.exit88
  br label %bb.ag

bb.ae:                                            ; preds = %PyUnicode_READ.exit88
  %.not74 = icmp eq i32 %.06394, 0
  br i1 %.not74, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  switch i32 %i.ba, label %bb.ag [
    i32 91, label %.loopexit
    i32 64, label %.loopexit
    i32 47, label %.loopexit
    i32 46, label %.loopexit
    i32 42, label %.loopexit
  ]

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %PyUnicode_READ.exit88, %bb.af
  %.164 = phi i32 [ 0, %bb.ae ], [ 1, %bb.ad ], [ 1, %bb.af ], [ 0, %PyUnicode_READ.exit88 ]
  %i.bb = add nuw nsw i64 %.06195, 1              ; 2 uses
  %exitcond151.not = icmp eq i64 %i.bb, %.val79
  br i1 %exitcond151.not, label %.loopexit, label %PyUnicode_READ.exit88, !llvm.loop !151

bb.ah:                                            ; preds = %bb.a
  %i.bc = and i64 %.val77, 134217728
  %.not72 = icmp eq i64 %i.bc, 0
  br i1 %.not72, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bd = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.be = getelementptr i8, ptr %0, i64 16
  %.val78 = load i64, ptr %i.be, align 8, !tbaa !105 ; 3 uses
  %i.bf = icmp sgt i64 %.val78, 2
  br i1 %i.bf, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !26
  %i.bh = icmp eq i8 %i.bg, 123
  br i1 %i.bh, label %bb.ak, label %.lr.ph132.preheader

bb.ak:                                            ; preds = %bb.aj
  %i.bi = getelementptr i8, ptr %0, i64 33
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !26
  switch i8 %i.bj, label %.lr.ph132.preheader [
    i8 125, label %.loopexit
    i8 42, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.bk = getelementptr i8, ptr %0, i64 34
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !26
  %i.bm = icmp eq i8 %i.bl, 125
  br i1 %i.bm, label %.loopexit, label %.lr.ph132.preheader

bb.am:                                            ; preds = %bb.ai
  %i.bn = icmp sgt i64 %.val78, 0
  br i1 %i.bn, label %.lr.ph132.preheader, label %.loopexit

.lr.ph132.preheader:                              ; preds = %bb.aj, %bb.al, %bb.ak, %bb.am
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %bb.aq
  %.162131 = phi i64 [ %i.bq, %bb.aq ], [ 0, %.lr.ph132.preheader ] ; 2 uses
  %.366130 = phi i32 [ %.467, %bb.aq ], [ 1, %.lr.ph132.preheader ]
  %i.bo = getelementptr i8, ptr %i.bd, i64 %.162131
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !26  ; 2 uses
  switch i8 %i.bp, label %bb.ao [
    i8 123, label %bb.aq
    i8 125, label %bb.an
  ]

bb.an:                                            ; preds = %.lr.ph132
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph132
  %.not73 = icmp eq i32 %.366130, 0
  br i1 %.not73, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  switch i8 %i.bp, label %bb.aq [
    i8 47, label %.loopexit
    i8 42, label %.loopexit
    i8 91, label %.loopexit
    i8 64, label %.loopexit
    i8 46, label %.loopexit
  ]

bb.aq:                                            ; preds = %bb.ap, %.lr.ph132, %bb.ao, %bb.an
  %.467 = phi i32 [ 0, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.ap ], [ 0, %.lr.ph132 ]
  %i.bq = add nuw nsw i64 %.162131, 1             ; 2 uses
  %exitcond152.not = icmp eq i64 %i.bq, %.val78
  br i1 %exitcond152.not, label %.loopexit, label %.lr.ph132, !llvm.loop !152

.loopexit:                                        ; preds = %bb.ac, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.y, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.ag, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.aq, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.u, %bb.am, %bb.ah, %bb.ak, %bb.al, %PyUnicode_READ.exit86, %PyUnicode_READ.exit82
  %.4 = phi i32 [ 1, %bb.al ], [ 1, %bb.ak ], [ 1, %PyUnicode_READ.exit82 ], [ 1, %bb.ah ], [ 1, %PyUnicode_READ.exit86 ], [ 1, %bb.x ], [ 0, %bb.am ], [ 1, %bb.ap ], [ 0, %bb.u ], [ 1, %bb.af ], [ 0, %bb.aq ], [ 1, %bb.ap ], [ 1, %bb.ap ], [ 1, %bb.ap ], [ 1, %bb.ap ], [ 0, %bb.ag ], [ 1, %bb.af ], [ 1, %bb.af ], [ 1, %bb.af ], [ 1, %bb.af ], [ 1, %bb.x ], [ 1, %bb.x ], [ 1, %bb.x ], [ 1, %bb.x ], [ 0, %bb.y ], [ 1, %bb.ab ], [ 0, %bb.ac ], [ 1, %bb.ab ], [ 1, %bb.ab ], [ 1, %bb.ab ], [ 1, %bb.ab ]
  ret i32 %.4
}

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyType_GetModuleState(ptr noundef) local_unnamed_addr #1

declare ptr @PySequence_Fast(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_elementiter(ptr %.112.val, ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef %.112.val) #11 ; 12 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %1, align 8, !tbaa !26
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  %i.e = getelementptr i8, ptr %i.a, i64 48
  store ptr %1, ptr %i.e, align 8, !tbaa !81
  %i.f = getelementptr i8, ptr %i.a, i64 56
  store i32 %2, ptr %i.f, align 8, !tbaa !86
  %i.g = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit16, label %bb.d

bb.d:                                             ; preds = %_Py_NewRef.exit
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %0, align 8, !tbaa !26
  br label %_Py_NewRef.exit16

_Py_NewRef.exit16:                                ; preds = %_Py_NewRef.exit, %bb.d
  %i.j = getelementptr i8, ptr %i.a, i64 40
  store ptr %0, ptr %i.j, align 8, !tbaa !82
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef 128) #11 ; 2 uses
  %i.l = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !76
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_Py_NewRef.exit16
  %i.n = load i32, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !26
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #11
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.f, %bb.g
  %i.q = tail call ptr @PyErr_NoMemory() #11      ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %_Py_NewRef.exit16
  %i.r = getelementptr i8, ptr %i.a, i64 24
  store i64 0, ptr %i.r, align 8, !tbaa !73
  %i.s = getelementptr i8, ptr %i.a, i64 32
  store i64 8, ptr %i.s, align 8, !tbaa !87
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %Py_DECREF.exit
  %.0 = phi ptr [ null, %Py_DECREF.exit ], [ %i.a, %bb.h ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @PyDict_Items(ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_Keys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_elementtree_Element___deepcopy___impl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.b = tail call ptr @PyType_GetModuleByDef(ptr noundef %.val, ptr noundef nonnull @elementtreemodule) #11, !inline_history !111
  %i.c = tail call ptr @PyModule_GetState(ptr noundef %i.b) #11, !inline_history !111 ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call fastcc ptr @deepcopy(ptr noundef %i.c, ptr noundef %i.e, ptr noundef %1) ; 8 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %Py_DECREF.exit122, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 40         ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.not97 = icmp eq ptr %i.h, null
  br i1 %.not97, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %.not98 = icmp eq ptr %i.i, null
  br i1 %.not98, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc ptr @deepcopy(ptr noundef %i.c, ptr noundef nonnull %i.i, ptr noundef %1) ; 2 uses
  %.not99 = icmp eq ptr %i.j, null
  br i1 %.not99, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not.i121 = icmp sgt i32 %i.k, -1
  br i1 %.not.i121, label %bb.f, label %Py_DECREF.exit122

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.f, align 8, !tbaa !26
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit122.sink.split, label %Py_DECREF.exit122

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.082 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 5 uses
  %i.n = getelementptr i8, ptr %i.c, i64 104      ; 2 uses
  %.val129 = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.o = tail call fastcc ptr @create_new_element(ptr %.val129, ptr noundef nonnull %i.f, ptr noundef %.082) ; 12 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not.i119 = icmp sgt i32 %i.p, -1
  br i1 %.not.i119, label %bb.h, label %Py_DECREF.exit120

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.f, align 8, !tbaa !26
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit120

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #11
  br label %Py_DECREF.exit120

Py_DECREF.exit120:                                ; preds = %bb.g, %bb.h, %bb.i
  %.not.i131 = icmp eq ptr %.082, null
  br i1 %.not.i131, label %Py_XDECREF.exit, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit120
  %i.s = load i32, ptr %.082, align 8, !tbaa !26  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i, label %bb.k, label %Py_XDECREF.exit
end_hunk_2
