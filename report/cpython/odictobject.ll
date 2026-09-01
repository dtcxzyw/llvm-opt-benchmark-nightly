Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/odictobject?download=true
inline.NumInlined: 122
inline.NumDeleted: 53
begin_hunk_0_@OrderedDict_move_to_end:bb.a
bb.s:                                             ; preds = %_odict_remove_node.exit.i
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !27
  br label %_odict_add_tail.exit.i

bb.t:                                             ; preds = %_odict_remove_node.exit.i
  %i.bg = getelementptr i8, ptr %i.bd, i64 16
  store ptr %i.aj, ptr %i.bg, align 8, !tbaa !28
  br label %_odict_add_tail.exit.i

_odict_add_tail.exit.i:                           ; preds = %bb.t, %bb.s
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !54
  %i.bh = add i64 %i.bc, 2
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !33
  br label %OrderedDict_move_to_end_impl.exit

bb.u:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !27
  %.not28.i = icmp eq ptr %i.aj, %i.bi
  br i1 %.not28.i, label %OrderedDict_move_to_end_impl.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr i8, ptr %i.aj, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !53 ; 4 uses
  %.not.i31.i = icmp eq ptr %i.bk, null
  br i1 %.not.i31.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr i8, ptr %i.aj, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bo = getelementptr i8, ptr %0, i64 56        ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.bq = icmp eq ptr %i.bp, %i.aj
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr %i.bk, ptr %i.bo, align 8, !tbaa !54
  br label %_odict_remove_node.exit33.i

bb.z:                                             ; preds = %bb.x
  %i.br = getelementptr i8, ptr %i.aj, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28 ; 2 uses
  %.not19.i32.i = icmp eq ptr %i.bs, null
  br i1 %.not19.i32.i, label %_odict_remove_node.exit33.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  store ptr %i.bk, ptr %i.bt, align 8, !tbaa !53
  br label %_odict_remove_node.exit33.i

_odict_remove_node.exit33.i:                      ; preds = %bb.aa, %bb.z, %bb.y
  %i.bu = getelementptr i8, ptr %i.aj, i64 16     ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 88        ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !33
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !27  ; 3 uses
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !28
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_odict_remove_node.exit33.i
  store ptr %i.aj, ptr %i.bo, align 8, !tbaa !54
  br label %_odict_add_head.exit.i

bb.ac:                                            ; preds = %_odict_remove_node.exit33.i
  %i.bz = getelementptr i8, ptr %i.bx, i64 24
  store ptr %i.aj, ptr %i.bz, align 8, !tbaa !53
  br label %_odict_add_head.exit.i

_odict_add_head.exit.i:                           ; preds = %bb.ac, %bb.ab
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !27
  %i.ca = add i64 %i.bw, 2
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !33
  br label %OrderedDict_move_to_end_impl.exit

OrderedDict_move_to_end_impl.exit:                ; preds = %_odict_add_head.exit.i, %bb.u, %_odict_add_tail.exit.i, %bb.m, %bb.k, %_odict_find_node.exit.thread.i, %bb.h, %bb.f, %bb.d, %bb.c
  %.024 = phi ptr [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.f ], [ null, %_odict_find_node.exit.thread.i ], [ null, %bb.k ], [ @_Py_NoneStruct, %_odict_add_tail.exit.i ], [ @_Py_NoneStruct, %bb.m ], [ @_Py_NoneStruct, %_odict_add_head.exit.i ], [ @_Py_NoneStruct, %bb.u ], [ @_Py_NoneStruct, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.024
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyDict_FromKeys(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare i64 @_PyDict_SizeOf_LockHeld(ptr noundef) local_unnamed_addr #1

declare ptr @_PyObject_GetState(ptr noundef) local_unnamed_addr #1

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_GetItemWithError(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PySequence_Contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_odict_popkey_hash(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null, ret: address, provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_odict_find_node_hash.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @_odict_get_index(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %3) ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %_odict_find_node_hash.exit.thread.thread, label %_odict_find_node_hash.exit

_odict_find_node_hash.exit:                       ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_odict_find_node_hash.exit.thread.thread, label %bb.c

bb.c:                                             ; preds = %_odict_find_node_hash.exit
  %i.k = tail call fastcc i32 @_odict_clear_node(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef %1, i64 noundef %3)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @_PyDict_Pop_KnownHash(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.a) #6
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.p = icmp ugt i32 %i.o, -1073741825
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw i32 %i.o, 1
  store i32 %i.q, ptr %2, align 8, !tbaa !24
  br label %_Py_NewRef.exit

_odict_find_node_hash.exit.thread.thread:         ; preds = %_odict_find_node_hash.exit, %bb.b, %bb.a
  %i.r = tail call ptr @PyErr_Occurred() #6
  %.not20 = icmp eq ptr %i.r, null
  br i1 %.not20, label %bb.g, label %_Py_NewRef.exit

bb.g:                                             ; preds = %_odict_find_node_hash.exit.thread.thread
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %_Py_NewRef.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %2, align 8, !tbaa !24
  br label %_Py_NewRef.exit

bb.j:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @PyExc_KeyError, align 8, !tbaa !47
  tail call void @PyErr_SetObject(ptr noundef %i.v, ptr noundef %1) #6
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %._crit_edge, %bb.c, %bb.j, %_odict_find_node_hash.exit.thread.thread
  %i.w = phi ptr [ %.pre, %._crit_edge ], [ null, %_odict_find_node_hash.exit.thread.thread ], [ null, %bb.c ], [ null, %bb.j ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %bb.h ], [ %2, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %i.w
}

declare i32 @_PyDict_Pop_KnownHash(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @_odict_get_index(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %i.d, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !24 ; 2 uses
  %.pre16 = zext nneg i8 %.pre to i64             ; 2 uses
  %.pre17 = shl nuw i64 1, %.pre16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr i8, ptr %i.d, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !24    ; 2 uses
  %i.k = zext nneg i8 %i.j to i64                 ; 2 uses
  %i.l = shl nuw i64 1, %i.k                      ; 2 uses
  %.not13 = icmp eq i64 %i.h, %i.l
  br i1 %.not13, label %bb.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi18 = phi i64 [ %.pre17, %._crit_edge ], [ %i.l, %bb.b ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre16, %._crit_edge ], [ %i.k, %bb.b ]
  %i.m = phi i8 [ %.pre, %._crit_edge ], [ %i.j, %bb.b ]
  %i.n = icmp ugt i8 %i.m, 59
  br i1 %i.n, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw nsw i64 8, %.pre-phi
  %i.p = tail call ptr @PyMem_Malloc(i64 noundef %i.o) #6 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread.i, label %._crit_edge.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.r = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %_odict_resize.exit.thread

._crit_edge.i:                                    ; preds = %bb.d
  %smax.i = tail call i64 @llvm.smax.i64(i64 %.pre-phi18, i64 1)
  %3 = shl nuw i64 %smax.i, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, i8 0, i64 %3, i1 false), !tbaa !44
  %i.s = getelementptr i8, ptr %0, i64 48
  %.033.i = load ptr, ptr %i.s, align 8, !tbaa !44 ; 2 uses
  %.not34.i = icmp eq ptr %.033.i, null
  br i1 %.not34.i, label %_odict_resize.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %._crit_edge.i, %bb.h
  %.035.i = phi ptr [ %.0.i, %bb.h ], [ %.033.i, %._crit_edge.i ] ; 4 uses
  %i.t = load ptr, ptr %.035.i, align 8, !tbaa !30
  %i.u = getelementptr i8, ptr %.035.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !47
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.x = call i64 @_Py_dict_lookup(ptr noundef nonnull %0, ptr noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %i.b) #6 ; 2 uses
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  %i.z = getelementptr i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !97
  br label %_odict_get_index_raw.exit.i

bb.f:                                             ; preds = %.lr.ph37.i
  %..i.i = call i64 @llvm.smax.i64(i64 %i.x, i64 -1)
  br label %_odict_get_index_raw.exit.i

_odict_get_index_raw.exit.i:                      ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.aa, %bb.e ], [ %..i.i, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.ab = icmp slt i64 %.0.i.i, 0
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_odict_get_index_raw.exit.i
  call void @PyMem_Free(ptr noundef nonnull %i.p) #6
  br label %_odict_resize.exit.thread

bb.h:                                             ; preds = %_odict_get_index_raw.exit.i
  %i.ac = getelementptr [8 x i8], ptr %i.p, i64 %.0.i.i
  store ptr %.035.i, ptr %i.ac, align 8, !tbaa !44
  %i.ad = getelementptr i8, ptr %.035.i, i64 16
  %.0.i = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_odict_resize.exit, label %.lr.ph37.i, !llvm.loop !98

_odict_resize.exit:                               ; preds = %bb.h, %._crit_edge.i
  %i.ae = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  call void @PyMem_Free(ptr noundef %i.af) #6
  store ptr %i.p, ptr %i.ae, align 8, !tbaa !26
  %i.ag = getelementptr i8, ptr %0, i64 72
  store i64 %.pre-phi18, ptr %i.ag, align 8, !tbaa !87
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !95  ; 2 uses
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !96
  br label %bb.i

bb.i:                                             ; preds = %_odict_resize.exit, %bb.b
  %i.ai = phi ptr [ %i.ah, %_odict_resize.exit ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !47
  %i.aj = call i64 @_Py_dict_lookup(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !97
  br label %_odict_get_index_raw.exit

bb.k:                                             ; preds = %bb.i
  %..i = call i64 @llvm.smax.i64(i64 %i.aj, i64 -1)
  br label %_odict_get_index_raw.exit

_odict_get_index_raw.exit:                        ; preds = %bb.j, %bb.k
  %.0.i14 = phi i64 [ %i.am, %bb.j ], [ %..i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_odict_resize.exit.thread

_odict_resize.exit.thread:                        ; preds = %bb.g, %.thread.i, %_odict_get_index_raw.exit
  %.1 = phi i64 [ %.0.i14, %_odict_get_index_raw.exit ], [ -1, %.thread.i ], [ -1, %bb.g ]
  ret i64 %.1
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare i64 @_Py_dict_lookup(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare ptr @_PyDictView_New(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_PyDict_Clear_LockHeld(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_PyODict_SetItem_KnownHash_LockHeld(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_PyDict_SetItem_KnownHash_LockHeld(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #6 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_odict_add_new_node.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %Py_INCREF.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %1, align 8, !tbaa !24
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.c, %bb.b
  %i.f = tail call fastcc i64 @_odict_get_index(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %3) ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.i

bb.d:                                             ; preds = %Py_INCREF.exit.i
  %i.h = tail call ptr @PyErr_Occurred() #6
  %.not23.i = icmp eq ptr %i.h, null
  br i1 %.not23.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_KeyError, align 8, !tbaa !47
  tail call void @PyErr_SetObject(ptr noundef %i.i, ptr noundef nonnull %1) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %.not.i26.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i26.i, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %1, align 8, !tbaa !24
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #6
  br label %bb.t

bb.i:                                             ; preds = %Py_INCREF.exit.i
  %i.m = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.f
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %.not.i24.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i24.i, label %bb.k, label %_odict_add_new_node.exit

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %1, align 8, !tbaa !24
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.l, label %_odict_add_new_node.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #6
  br label %_odict_add_new_node.exit

bb.m:                                             ; preds = %bb.i
  %i.t = tail call ptr @PyMem_Malloc(i64 noundef 32) #6 ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.v = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i, label %bb.o, label %Py_DECREF.exit.i

bb.o:                                             ; preds = %bb.n
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %1, align 8, !tbaa !24
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.p, label %Py_DECREF.exit.i

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.p, %bb.o, %bb.n
  %i.y = tail call ptr @PyErr_NoMemory() #6       ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  store ptr %1, ptr %i.t, align 8, !tbaa !30
  %i.z = getelementptr i8, ptr %i.t, i64 8
  store i64 %3, ptr %i.z, align 8, !tbaa !89
  %i.aa = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !53
  %i.ad = getelementptr i8, ptr %i.t, i64 16
  store ptr null, ptr %i.ad, align 8, !tbaa !28
end_hunk_0
