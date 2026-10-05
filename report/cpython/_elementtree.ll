Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_elementtree?download=true
inline.NumInlined: 446
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@treebuilder_new:bb.a
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %Py_DECREF.exit34

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #11
  br label %Py_DECREF.exit34

Py_DECREF.exit34:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !89   ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %.not.i31 = icmp sgt i32 %i.v, -1
  br i1 %.not.i31, label %bb.h, label %Py_DECREF.exit32

bb.h:                                             ; preds = %Py_DECREF.exit34
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !27
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %Py_DECREF.exit32

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #11
  br label %Py_DECREF.exit32

Py_DECREF.exit32:                                 ; preds = %Py_DECREF.exit34, %bb.h, %bb.i
  %i.y = load i32, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %Py_DECREF.exit32
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.c, align 8, !tbaa !27
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #11
  br label %Py_DECREF.exit

bb.l:                                             ; preds = %_Py_NewRef.exit37
  %i.ab = getelementptr i8, ptr %i.c, i64 64
  store i64 0, ptr %i.ab, align 8, !tbaa !101
  %i.ac = getelementptr i8, ptr %i.c, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.ac, i8 0, i64 58, i1 false)
  %i.ad = tail call ptr @PyType_GetModuleByDef(ptr noundef nonnull %0, ptr noundef nonnull @elementtreemodule) #11, !inline_history !0
  %i.ae = tail call ptr @PyModule_GetState(ptr noundef %i.ad) #11, !inline_history !0
  %i.af = getelementptr i8, ptr %i.c, i64 160
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !97
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
define internal ptr @_elementtree_TreeBuilder_start(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.36, i64 noundef %2, i64 noundef 2, i64 noundef 2) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val12 = load i64, ptr %i.e, align 8, !tbaa !47
  %i.f = and i64 %.val12, 536870912
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.c) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !26
  %i.h = tail call fastcc ptr @treebuilder_handle_start(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @_elementtree_TreeBuilder_end(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @treebuilder_handle_end(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_TreeBuilder_comment(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @treebuilder_handle_comment(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_elementtree_TreeBuilder_pi(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.39, i64 noundef %2, i64 noundef 1, i64 noundef 2) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !26
  %i.d = icmp slt i64 %2, 2
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
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
define internal noundef nonnull ptr @_elementtree_TreeBuilder_close(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  %_Py_NoneStruct..i.i = select i1 %.not.i.i, ptr @_Py_NoneStruct, ptr %.val ; 3 uses
  %i.b = load i32, ptr %_Py_NoneStruct..i.i, align 8, !tbaa !27 ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_elementtree_TreeBuilder_close_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %_Py_NoneStruct..i.i, align 8, !tbaa !27
  br label %_elementtree_TreeBuilder_close_impl.exit

_elementtree_TreeBuilder_close_impl.exit:         ; preds = %bb.a, %bb.b
  ret ptr %_Py_NoneStruct..i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @treebuilder_handle_data(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.e = icmp eq ptr %i.d, @_Py_NoneStruct
  br i1 %i.e, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %1, align 8, !tbaa !27
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !91
  br label %Py_DECREF.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %.val38 = load ptr, ptr %i.i, align 8, !tbaa !30 ; 2 uses
  %.not46 = icmp eq ptr %.val38, @PyBytes_Type
  br i1 %.not46, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.val39 = load i32, ptr %i.b, align 8, !tbaa !27
  %.not47 = icmp eq i32 %.val39, 1
  br i1 %.not47, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.j, align 8, !tbaa !30
  %.not48 = icmp eq ptr %.val37, @PyBytes_Type
  br i1 %.not48, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %1, i64 16
  %.val41 = load i64, ptr %i.k, align 8, !tbaa !96
  %i.l = icmp eq i64 %.val41, 1
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr i8, ptr %i.b, i64 16
  %.val40 = load i64, ptr %i.m, align 8, !tbaa !96 ; 2 uses
  %i.n = add i64 %.val40, 1
  %i.o = tail call i32 @_PyBytes_Resize(ptr noundef nonnull %i.a, i64 noundef %i.n) #11
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %Py_DECREF.exit, label %.thread

.thread:                                          ; preds = %bb.i
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %i.u = getelementptr i8, ptr %i.t, i64 %.val40
  store i8 %i.r, ptr %i.u, align 1, !tbaa !27
  br label %Py_DECREF.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.not49 = icmp eq ptr %.val38, @PyList_Type
  br i1 %.not49, label %bb.k, label %.thread56

bb.k:                                             ; preds = %bb.j
  %i.v = tail call i32 @PyList_Append(ptr noundef nonnull %i.b, ptr noundef %1) #11
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %Py_DECREF.exit, label %Py_DECREF.exit.thread

.thread56:                                        ; preds = %bb.j
  %i.x = tail call ptr @PyList_New(i64 noundef 2) #11 ; 3 uses
  %.not36 = icmp eq ptr %i.x, null
  br i1 %.not36, label %Py_DECREF.exit, label %bb.l

bb.l:                                             ; preds = %.thread56
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %_Py_NewRef.exit44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !27
  br label %_Py_NewRef.exit44

_Py_NewRef.exit44:                                ; preds = %bb.l, %bb.m
  %i.ac = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  %.val43 = load ptr, ptr %i.ac, align 8, !tbaa !103 ; 2 uses
  store ptr %i.y, ptr %.val43, align 8, !tbaa !26
  %i.ad = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %_Py_NewRef.exit45, label %bb.n

bb.n:                                             ; preds = %_Py_NewRef.exit44
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr %1, align 8, !tbaa !27
  %.val42.pre = load ptr, ptr %i.ac, align 8, !tbaa !103
  br label %_Py_NewRef.exit45

_Py_NewRef.exit45:                                ; preds = %_Py_NewRef.exit44, %bb.n
  %.val42 = phi ptr [ %.val43, %_Py_NewRef.exit44 ], [ %.val42.pre, %bb.n ]
  %i.ag = getelementptr i8, ptr %.val42, i64 8
  store ptr %1, ptr %i.ag, align 8, !tbaa !26
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !26  ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !26
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp sgt i32 %i.ai, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit.thread

bb.o:                                             ; preds = %_Py_NewRef.exit45
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !27
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %Py_DECREF.exit.thread

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #11
  br label %Py_DECREF.exit.thread

Py_DECREF.exit.thread:                            ; preds = %_Py_NewRef.exit45, %bb.o, %bb.p, %.thread, %bb.k, %_Py_NewRef.exit
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.thread56, %bb.i, %bb.k, %bb.b, %Py_DECREF.exit.thread
  %.2 = phi ptr [ @_Py_NoneStruct, %Py_DECREF.exit.thread ], [ null, %bb.k ], [ @_Py_NoneStruct, %bb.b ], [ null, %bb.i ], [ null, %.thread56 ]
  ret ptr %.2
}

declare i32 @_PyBytes_Resize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @treebuilder_handle_start(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %.not.i79 = icmp eq ptr %i.d, null
  br i1 %.not.i79, label %treebuilder_flush_data.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 3 uses
  %.not16.i = icmp eq ptr %i.f, null
  br i1 %.not16.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = getelementptr i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr i8, ptr %i.b, i64 104
  %.val17.i = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.m = tail call fastcc i32 @treebuilder_extend_element_text_or_tail(ptr %.val17.i, ptr noundef %i.h, ptr noundef nonnull %i.c, ptr noundef %i.i, ptr noundef %i.k)
  br label %treebuilder_flush_data.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.f, i64 32
  %i.o = getelementptr i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = getelementptr i8, ptr %i.b, i64 104
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.r = tail call fastcc i32 @treebuilder_extend_element_text_or_tail(ptr %.val.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef %i.n, ptr noundef %i.p)
  br label %treebuilder_flush_data.exit

treebuilder_flush_data.exit:                      ; preds = %bb.c, %bb.d
  %.1.i = phi i32 [ %i.m, %bb.c ], [ %i.r, %bb.d ]
  %i.s = icmp slt i32 %.1.i, 0
  br i1 %i.s, label %Py_DECREF.exit, label %treebuilder_flush_data.exit.thread

treebuilder_flush_data.exit.thread:               ; preds = %bb.a, %treebuilder_flush_data.exit
  %i.t = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95   ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %treebuilder_flush_data.exit.thread
  %i.v = getelementptr i8, ptr %i.b, i64 104
  %.val = load ptr, ptr %i.v, align 8, !tbaa !21
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
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.aa = tail call ptr (ptr, ...) @PyObject_CallFunctionObjArgs(ptr noundef %i.z, ptr noundef %1, ptr noundef nonnull %i.y, ptr noundef null) #11 ; 3 uses
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !27  ; 2 uses
  %.not.i72 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i72, label %bb.i, label %Py_DECREF.exit73

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.y, align 8, !tbaa !27
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
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88 ; 6 uses
  %i.ah = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 4 uses
  %.not63 = icmp eq ptr %i.ai, null
  br i1 %.not63, label %Py_DECREF.exit71, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ah, align 8, !tbaa !26
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !27 ; 2 uses
  %.not.i70 = icmp sgt i32 %i.aj, -1
  br i1 %.not.i70, label %bb.n, label %Py_DECREF.exit71

bb.n:                                             ; preds = %bb.m
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !27
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
  br i1 %i.an, label %treebuilder_append_event.exit, label %bb.u

bb.q:                                             ; preds = %Py_DECREF.exit71
  %i.ao = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !87
  %.not65 = icmp eq ptr %i.ap, null
  br i1 %.not65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.aq, ptr noundef nonnull @.str.44) #11
  br label %treebuilder_append_event.exit

bb.s:                                             ; preds = %bb.q
  %i.ar = load i32, ptr %.055, align 8, !tbaa !27 ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
end_hunk_0
