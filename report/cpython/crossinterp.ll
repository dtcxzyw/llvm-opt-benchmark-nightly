Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/crossinterp?download=true
inline.NumInlined: 270
inline.NumDeleted: 99
begin_hunk_0_@_fill_sharedns:bb.a
_propagate_not_shareable_error.exit:              ; preds = %bb.f, %bb.g, %bb.h
  %.not48 = icmp eq i64 %.01944, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %_propagate_not_shareable_error.exit, %.lr.ph47
  %.046 = phi i64 [ %i.ae, %.lr.ph47 ], [ 0, %_propagate_not_shareable_error.exit ] ; 2 uses
  %i.ab = getelementptr [16 x i8], ptr %i.c, i64 %.046
  tail call fastcc void @_sharednsitem_clear_value(ptr noundef %i.ab)
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !182
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !182
  %i.ae = add nuw i64 %.046, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %.01944
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph47, !llvm.loop !237

_sharednsitem_copy_from_ns.exit.thread24:         ; preds = %bb.d, %_sharednsitem_copy_from_ns.exit
  %i.af = load i64, ptr %i.d, align 8, !tbaa !182
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !182
  %i.ah = add nuw nsw i64 %.01944, 1              ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !tbaa !176
  %.not = icmp slt i64 %i.ah, %i.ai
  br i1 %.not, label %bb.b, label %.loopexit, !llvm.loop !238

.loopexit:                                        ; preds = %_sharednsitem_copy_from_ns.exit.thread24, %.lr.ph47, %bb.a, %_propagate_not_shareable_error.exit
  %.not30 = phi i32 [ -1, %_propagate_not_shareable_error.exit ], [ -1, %.lr.ph47 ], [ 0, %bb.a ], [ 0, %_sharednsitem_copy_from_ns.exit.thread24 ]
  ret i32 %.not30
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_destroy_sharedns(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !182
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_sharedns_free(ptr noundef nonnull %0)
  br label %_Py_CallInInterpreter.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.d, align 8, !tbaa !181 ; 2 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_sharedns_free(ptr noundef nonnull %0)
  br label %_Py_CallInInterpreter.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !143
  %i.h = tail call ptr @_PyInterpreterState_LookUpID(i64 noundef %i.g) #14 ; 3 uses
  %i.i = tail call ptr @PyInterpreterState_Get() #14
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_sharedns_free(ptr noundef nonnull %0)
  br label %_Py_CallInInterpreter.exit

bb.g:                                             ; preds = %bb.e
  %i.k = tail call ptr @PyInterpreterState_Get() #14
  %i.l = icmp eq ptr %i.h, %i.k
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_sharedns_free(ptr noundef nonnull %0)
  br label %_Py_CallInInterpreter.exit

bb.i:                                             ; preds = %bb.g
  %i.m = tail call i32 @_PyEval_AddPendingCall(ptr noundef %i.h, ptr noundef nonnull @_sharedns_free_pending, ptr noundef nonnull %0, i32 noundef 0) #14 ; 0 uses
  br label %_Py_CallInInterpreter.exit

_Py_CallInInterpreter.exit:                       ; preds = %bb.d, %bb.f, %bb.h, %bb.i, %bb.b
  ret void
}

declare i32 @_PyInterpreterState_SetRunningMain(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_ensure_main_ns(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173
  %i.e = tail call ptr @_Py_GetMainModule(ptr noundef %i.d) #14 ; 9 uses
  %i.f = tail call i32 @_Py_CheckMainModule(ptr noundef %i.e) #14
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.not.i21 = icmp eq ptr %i.e, null
  br i1 %.not.i21, label %Py_XDECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.e, align 8, !tbaa !40
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %Py_XDECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.o, label %bb.g

bb.g:                                             ; preds = %Py_XDECREF.exit
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.33.0..sroa_idx, i8 0, i64 20, i1 false)
  store i32 -5, ptr %1, align 8, !tbaa !15
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyModule_GetDict(ptr noundef %i.e) #14 ; 4 uses
  %i.l = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !40
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.i, %bb.j
  %i.o = icmp eq ptr %i.k, null
  br i1 %i.o, label %bb.k, label %bb.m

bb.k:                                             ; preds = %Py_DECREF.exit
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.3.0..sroa_idx, i8 0, i64 20, i1 false)
  store i32 -5, ptr %1, align 8, !tbaa !15
  br label %bb.o

bb.m:                                             ; preds = %Py_DECREF.exit
  %i.p = load i32, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %_Py_NewRef.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr %i.k, align 8, !tbaa !40
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.m, %bb.n
  store ptr %i.k, ptr %i.a, align 8, !tbaa !172
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %Py_XDECREF.exit, %bb.k, %bb.l, %_Py_NewRef.exit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -1, %Py_XDECREF.exit ], [ -1, %bb.g ], [ 0, %_Py_NewRef.exit ], [ -1, %bb.l ], [ -1, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_apply_sharedns(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i64, ptr %0, align 8, !tbaa !176
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread

bb.b:                                             ; preds = %_sharednsitem_apply.exit
  %i.d = add nuw nsw i64 %.084, 1                 ; 2 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !176
  %i.f = icmp slt i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %.thread, !llvm.loop !239

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.084 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.g = getelementptr [16 x i8], ptr %i.a, i64 %.084 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180
  %i.i = tail call ptr @PyUnicode_FromString(ptr noundef %i.h) #14 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !181, !nonnull !241, !noundef !241 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !145
  %i.o = tail call ptr %i.n(ptr noundef nonnull %i.l) #14, !inline_history !240 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_Py_NewRef.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %.not.i19.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i19.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.i, align 8, !tbaa !40
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %Py_DECREF.exit20.sink.split.i, label %.thread

_Py_NewRef.exit.i:                                ; preds = %bb.c
  %i.t = tail call i32 @PyDict_SetItem(ptr noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.o) #14 ; 3 uses
  %i.u = load i32, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %.not.i17.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i17.i, label %bb.f, label %Py_DECREF.exit18.i

bb.f:                                             ; preds = %_Py_NewRef.exit.i
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.i, align 8, !tbaa !40
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %Py_DECREF.exit18.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #14
  br label %Py_DECREF.exit18.i

Py_DECREF.exit18.i:                               ; preds = %bb.g, %bb.f, %_Py_NewRef.exit.i
  %i.x = load i32, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i, label %bb.h, label %_sharednsitem_apply.exit

bb.h:                                             ; preds = %Py_DECREF.exit18.i
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.o, align 8, !tbaa !40
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %Py_DECREF.exit20.sink.split.i, label %_sharednsitem_apply.exit

Py_DECREF.exit20.sink.split.i:                    ; preds = %bb.h, %bb.e
  %.sink.i = phi ptr [ %i.i, %bb.e ], [ %i.o, %bb.h ]
  %.1.ph.i = phi i32 [ -1, %bb.e ], [ %i.t, %bb.h ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #14
  br label %_sharednsitem_apply.exit

_sharednsitem_apply.exit:                         ; preds = %Py_DECREF.exit18.i, %bb.h, %Py_DECREF.exit20.sink.split.i
  %.1.i = phi i32 [ %.1.ph.i, %Py_DECREF.exit20.sink.split.i ], [ %i.t, %bb.h ], [ %i.t, %Py_DECREF.exit18.i ]
  %.not = icmp eq i32 %.1.i, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.b, %_sharednsitem_apply.exit, %.lr.ph, %bb.d, %bb.e, %bb.a
  %i.aa = phi i32 [ 0, %bb.a ], [ -1, %_sharednsitem_apply.exit ], [ -1, %.lr.ph ], [ -1, %bb.d ], [ -1, %bb.e ], [ 0, %bb.b ]
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @capture_session_error(ptr %.16.val, ptr noundef nonnull %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !167
  %i.b = icmp eq i32 %i.a, -1
  %spec.store.select = select i1 %i.b, ptr null, ptr %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ %spec.store.select, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.c = tail call ptr @_PyErr_GetRaisedException(ptr noundef %.16.val) #14 ; 8 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  %i.e = icmp eq ptr %.019, null                  ; 2 uses
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %xi_error_resolve_current_exc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %.019, align 8, !tbaa !167
  %cond.i = icmp eq i32 %i.f, -4
  br i1 %cond.i, label %bb.e, label %xi_error_resolve_current_exc.exit.thread3

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i.i, label %bb.f, label %xi_error_resolve_current_exc.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !40
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %xi_error_resolve_current_exc.exit.thread

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #14
  br label %xi_error_resolve_current_exc.exit.thread

xi_error_resolve_current_exc.exit:                ; preds = %bb.c
  br i1 %i.d, label %xi_error_resolve_current_exc.exit.thread, label %xi_error_resolve_current_exc.exit.thread3

xi_error_resolve_current_exc.exit.thread3:        ; preds = %bb.d, %xi_error_resolve_current_exc.exit
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = tail call fastcc ptr @_PyXI_excinfo_InitFromException(ptr noundef %i.j, ptr noundef nonnull %i.c) ; 5 uses
  %.not.i24 = icmp eq ptr %i.k, null
  br i1 %.not.i24, label %xi_error_set_exc.exit, label %bb.h

bb.h:                                             ; preds = %xi_error_resolve_current_exc.exit.thread3
  %i.l = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !39
  %i.m = tail call i32 @_PyErr_ExceptionMatches(ptr noundef %.16.val, ptr noundef %i.l) #14
  %.not9.i = icmp eq i32 %i.m, 0
  %.sroa.5.0..sroa_idx.i10.i = getelementptr i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i10.i, i8 0, i64 20, i1 false)
  %i.n = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !185
  %..i = select i1 %.not9.i, i32 -2, i32 -3
  store i32 %..i, ptr %i.n, align 8, !tbaa !15
  %storemerge.in.i = getelementptr i8, ptr %.16.val, i64 16
  %storemerge.i = load ptr, ptr %storemerge.in.i, align 8, !tbaa !31
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !186
  tail call void @PyErr_Clear() #14
  br label %xi_error_set_exc.exit

xi_error_set_exc.exit:                            ; preds = %xi_error_resolve_current_exc.exit.thread3, %bb.h
  %i.p = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %xi_error_set_exc.exit
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.c, align 8, !tbaa !40
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %xi_error_set_exc.exit, %bb.i, %bb.j
  %i.s = getelementptr i8, ptr %.16.val, i64 128
  %.val = load ptr, ptr %i.s, align 8, !tbaa !148 ; 2 uses
  %i.t = icmp eq ptr %.val, null
  br i1 %i.t, label %xi_error_resolve_current_exc.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %Py_DECREF.exit
  %i.u = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !116
  %.not23 = icmp eq ptr %.val.i, null
  br i1 %.not23, label %xi_error_resolve_current_exc.exit.thread, label %bb.k

bb.k:                                             ; preds = %_PyErr_Occurred.exit
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef %i.k) #14
  br label %xi_error_resolve_current_exc.exit.thread

xi_error_resolve_current_exc.exit.thread:         ; preds = %Py_DECREF.exit, %bb.g, %bb.f, %bb.e, %_PyErr_Occurred.exit, %bb.k, %xi_error_resolve_current_exc.exit
  %.0 = phi ptr [ %i.k, %bb.k ], [ %i.k, %_PyErr_Occurred.exit ], [ null, %xi_error_resolve_current_exc.exit ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.f ], [ %i.k, %Py_DECREF.exit ] ; 2 uses
  %i.v = icmp ne ptr %.0, null
  %or.cond.not = or i1 %i.v, %i.e
  br i1 %or.cond.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %xi_error_resolve_current_exc.exit.thread
  %i.w = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(24) %.019, i64 24, i1 false), !tbaa.struct !187
  %i.y = getelementptr i8, ptr %0, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !166
  %i.z = getelementptr i8, ptr %.16.val, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  store ptr %i.aa, ptr %0, align 8, !tbaa !186
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %xi_error_resolve_current_exc.exit.thread
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_exit_session(ptr nofree noundef captures(none) initializes((0, 8), (24, 28)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_DECREF.exit26, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8, !tbaa !39
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40   ; 2 uses
  %.not.i25 = icmp sgt i32 %i.e, -1
  br i1 %.not.i25, label %bb.c, label %Py_DECREF.exit26

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !40
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit26

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #14
  br label %Py_DECREF.exit26

Py_DECREF.exit26:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 4 uses
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit26
  store ptr null, ptr %i.h, align 8, !tbaa !39
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !40
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit26
  %i.m = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !171
  %.not23 = icmp eq i32 %i.n, 0
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit
  %i.o = getelementptr i8, ptr %i.b, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  tail call void @_PyInterpreterState_SetNotRunningMain(ptr noundef %i.p) #14
  store i32 0, ptr %i.m, align 4, !tbaa !171
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %Py_DECREF.exit
  %i.q = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !188
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !173
  %.not24 = icmp eq ptr %i.r, %i.s
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.t, align 8, !tbaa !242
  tail call void @PyThreadState_Clear(ptr noundef %i.b) #14
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !188
  %i.v = tail call ptr @PyThreadState_Swap(ptr noundef %i.u) #14 ; 0 uses
  tail call void @PyThreadState_Delete(ptr noundef %i.b) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_PyXI_ApplyError(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyThreadState_Get() #14   ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @xi_error_clear(ptr noundef %0)
  br label %Py_XDECREF.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 3 uses
  %.not31 = icmp eq ptr %i.c, null
  br i1 %.not31, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %i.c, align 8, !tbaa !167  ; 2 uses
  switch i32 %i.d, label %bb.w [
    i32 -1, label %.thread
    i32 -9, label %bb.e
    i32 -2, label %bb.p
    i32 -3, label %bb.q
    i32 -4, label %bb.r
    i32 -5, label %bb.s
    i32 -6, label %bb.t
    i32 -7, label %bb.u
    i32 -8, label %bb.v
  ]

.thread:                                          ; preds = %bb.d, %bb.c
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = tail call fastcc ptr @_PyXI_excinfo_AsObject(ptr noundef %i.e)
  br label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = getelementptr i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %excinfo_is_set.exit, label %excinfo_is_set.exit.thread

excinfo_is_set.exit:                              ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !161
  %.not42 = icmp eq ptr %i.k, null
  br i1 %.not42, label %bb.f, label %excinfo_is_set.exit.thread

excinfo_is_set.exit.thread:                       ; preds = %bb.e, %excinfo_is_set.exit
  %i.l = load ptr, ptr @PyExc_Exception, align 8, !tbaa !39
  tail call fastcc void @_PyXI_excinfo_Apply(ptr noundef %i.g, ptr noundef %i.l)
  %i.m = tail call ptr @_PyErr_GetRaisedException(ptr noundef %i.a) #14
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !185
  br label %bb.f

bb.f:                                             ; preds = %excinfo_is_set.exit.thread, %excinfo_is_set.exit
  %i.n = phi ptr [ %.pre, %excinfo_is_set.exit.thread ], [ %i.c, %excinfo_is_set.exit ] ; 2 uses
  %.027 = phi ptr [ %i.m, %excinfo_is_set.exit.thread ], [ null, %excinfo_is_set.exit ] ; 6 uses
  %.not34 = icmp eq ptr %i.n, null
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr i8, ptr %0, i64 72
  %.in = select i1 %.not34, ptr %i.p, ptr %i.o
  %i.q = load ptr, ptr %.in, align 8, !tbaa !43   ; 2 uses
  %.not.i35 = icmp eq ptr %i.q, null
  br i1 %.not.i35, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.q) #14 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_set_xid_lookup_failure.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ensure_notshareableerror(ptr noundef %i.a, ptr noundef %.027, i32 noundef 0, ptr noundef %i.r)
  %i.t = load i32, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i.i.i, label %bb.i, label %_set_xid_lookup_failure.exit

bb.i:                                             ; preds = %bb.h
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.r, align 8, !tbaa !40
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_set_xid_lookup_failure.exit.sink.split, label %_set_xid_lookup_failure.exit

bb.j:                                             ; preds = %bb.f
  %i.w = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.33) #14 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_set_xid_lookup_failure.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_ensure_notshareableerror(ptr noundef %i.a, ptr noundef %.027, i32 noundef 0, ptr noundef %i.w)
  %i.y = load i32, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %.not.i.i13.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i.i13.i, label %bb.l, label %_set_xid_lookup_failure.exit

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.w, align 8, !tbaa !40
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_set_xid_lookup_failure.exit.sink.split, label %_set_xid_lookup_failure.exit

_set_xid_lookup_failure.exit.sink.split:          ; preds = %bb.l, %bb.i
  %.sink = phi ptr [ %i.r, %bb.i ], [ %i.w, %bb.l ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #14
  br label %_set_xid_lookup_failure.exit

_set_xid_lookup_failure.exit:                     ; preds = %_set_xid_lookup_failure.exit.sink.split, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.not.i36 = icmp eq ptr %.027, null
  br i1 %.not.i36, label %Py_XDECREF.exit, label %bb.m

bb.m:                                             ; preds = %_set_xid_lookup_failure.exit
  %i.ab = load i32, ptr %.027, align 8, !tbaa !40 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i.i, label %bb.n, label %Py_XDECREF.exit

bb.n:                                             ; preds = %bb.m
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.027, align 8, !tbaa !40
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.o, label %Py_XDECREF.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.027) #14
  br label %Py_XDECREF.exit

bb.p:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr @PyExc_InterpreterError, align 8, !tbaa !39
  tail call void @PyErr_SetNone(ptr noundef %i.ae) #14
  br label %_PyXI_ApplyErrorCode.exit

bb.q:                                             ; preds = %bb.d
  %i.af = tail call ptr @PyErr_NoMemory() #14     ; 0 uses
  br label %_PyXI_ApplyErrorCode.exit

bb.r:                                             ; preds = %bb.d
  tail call void @_PyErr_SetInterpreterAlreadyRunning() #14
  br label %_PyXI_ApplyErrorCode.exit

bb.s:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr @PyExc_InterpreterError, align 8, !tbaa !39
  tail call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.81) #14
  br label %_PyXI_ApplyErrorCode.exit

bb.t:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr @PyExc_InterpreterError, align 8, !tbaa !39
  tail call void @PyErr_SetString(ptr noundef %i.ah, ptr noundef nonnull @.str.82) #14
  br label %_PyXI_ApplyErrorCode.exit

bb.u:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr @PyExc_InterpreterError, align 8, !tbaa !39
  tail call void @PyErr_SetString(ptr noundef %i.ai, ptr noundef nonnull @.str.83) #14
  br label %_PyXI_ApplyErrorCode.exit

bb.v:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr @PyExc_InterpreterError, align 8, !tbaa !39
  tail call void @PyErr_SetString(ptr noundef %i.aj, ptr noundef nonnull @.str.84) #14
  br label %_PyXI_ApplyErrorCode.exit

bb.w:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !39
  %i.al = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ak, ptr noundef nonnull @.str.85, i32 noundef range(i32 0, -1) %i.d) #14 ; 0 uses
  br label %_PyXI_ApplyErrorCode.exit

_PyXI_ApplyErrorCode.exit:                        ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %i.am = getelementptr i8, ptr %0, i64 40
  %i.an = getelementptr i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !163
  %.not.i37 = icmp eq ptr %i.ao, null
  br i1 %.not.i37, label %excinfo_is_set.exit38, label %excinfo_is_set.exit38.thread

excinfo_is_set.exit38:                            ; preds = %_PyXI_ApplyErrorCode.exit
  %i.ap = getelementptr i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !161
  %.not43 = icmp eq ptr %i.aq, null
  br i1 %.not43, label %Py_XDECREF.exit, label %excinfo_is_set.exit38.thread

excinfo_is_set.exit38.thread:                     ; preds = %_PyXI_ApplyErrorCode.exit, %excinfo_is_set.exit38
  %i.ar = tail call ptr @_PyErr_GetRaisedException(ptr noundef %i.a) #14 ; 2 uses
  %i.as = load ptr, ptr @PyExc_InterpreterError, align 8, !tbaa !39
  tail call fastcc void @_PyXI_excinfo_Apply(ptr noundef %i.am, ptr noundef %i.as)
  %i.at = tail call ptr @_PyErr_GetRaisedException(ptr noundef %i.a) #14
  tail call void @PyException_SetContext(ptr noundef %i.ar, ptr noundef %i.at) #14
  tail call void @_PyErr_SetRaisedException(ptr noundef %i.a, ptr noundef %i.ar) #14
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.o, %bb.n, %bb.m, %_set_xid_lookup_failure.exit, %.thread, %excinfo_is_set.exit38.thread, %excinfo_is_set.exit38, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.f, %.thread ], [ null, %excinfo_is_set.exit38 ], [ null, %excinfo_is_set.exit38.thread ], [ null, %_set_xid_lookup_failure.exit ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ]
  ret ptr %.1
}
end_hunk_0
begin_hunk_1_@runpy_run_path:bb.a
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #14
  br label %Py_DECREF.exit16

Py_DECREF.exit16:                                 ; preds = %Py_DECREF.exit16.sink.split, %bb.h, %Py_DECREF.exit14, %bb.d, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.h, %bb.h ], [ null, %bb.c ], [ null, %bb.d ], [ %i.h, %Py_DECREF.exit14 ], [ %.1.ph, %Py_DECREF.exit16.sink.split ]
  ret ptr %.1
}

declare i32 @PyDict_Update(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyImport_SetModule(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyException_SetContext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_PyModule_GetFilenameUTF8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_Py_SourceAsString(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyObject_SupportedAsScript(ptr noundef) local_unnamed_addr #1

declare ptr @_PyErr_Format(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @Py_CompileStringExFlags(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_PyEval_GetBuiltins(ptr noundef) local_unnamed_addr #1

declare i32 @_PyCode_VerifyStateless(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyCode_ReturnsOnlyNone(ptr noundef) local_unnamed_addr #1

declare ptr @_PyInterpreterState_LookUpID(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_call_clear_xidata(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %.not12.i = icmp eq ptr %i.c, null
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.c(ptr noundef nonnull %i.a) #14, !inline_history !2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !142
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %.not13.i = icmp eq ptr %i.e, null
  br i1 %.not13.i, label %_xidata_clear.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.d, align 8, !tbaa !39
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i.i, label %bb.g, label %_xidata_clear.exit

bb.g:                                             ; preds = %bb.f
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !40
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %_xidata_clear.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #14
  br label %_xidata_clear.exit

_xidata_clear.exit:                               ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @PyType_GetName(ptr noundef) local_unnamed_addr #1

declare ptr @PyType_GetQualName(ptr noundef) local_unnamed_addr #1

declare ptr @PyType_GetModuleName(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #1

declare ptr @PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyUnicode_Join(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #1

declare ptr @_PyNamespace_New(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

declare i64 @PySequence_Size(ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_sharednsitem_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 -1, ptr %i.a, align 8, !tbaa !41
  %i.b = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %1, ptr noundef nonnull %i.a) #14 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_copy_string_obj_raw.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15
  %.not.i = icmp eq i64 %i.d, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !39
  call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.76) #14
  br label %_copy_string_obj_raw.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.g = add i64 %i.d, 1
  %i.h = call ptr @PyMem_RawMalloc(i64 noundef %i.g) #14 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = call ptr @PyErr_NoMemory() #14           ; 0 uses
  br label %_copy_string_obj_raw.exit.thread

_copy_string_obj_raw.exit.thread:                 ; preds = %bb.a, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %0, align 8, !tbaa !180
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.b) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr %i.h, ptr %0, align 8, !tbaa !180
  %i.l = getelementptr i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !181
  br label %bb.g

bb.g:                                             ; preds = %_copy_string_obj_raw.exit.thread, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %_copy_string_obj_raw.exit.thread ]
  ret i32 %.0
}

declare i32 @PySequence_Check(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_sharedns_free(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !182
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_sharednsitem_clear.exit
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.g, %_sharednsitem_clear.exit ] ; 2 uses
  %i.e = getelementptr [16 x i8], ptr %i.d, i64 %.015 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_sharednsitem_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.f) #14
  store ptr null, ptr %i.e, align 8, !tbaa !180
  br label %_sharednsitem_clear.exit

_sharednsitem_clear.exit:                         ; preds = %bb.b, %bb.c
  tail call fastcc void @_sharednsitem_clear_value(ptr noundef nonnull %i.e)
  %i.g = add nuw nsw i64 %.015, 1                 ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !182
  %i.i = icmp slt i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %.loopexit, !llvm.loop !243

.loopexit:                                        ; preds = %_sharednsitem_clear.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.g, %_sharednsitem_clear.exit ] ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !177
  %i.l = icmp slt i64 %.1, %i.k
  br i1 %i.l, label %.lr.ph17, label %._crit_edge

.lr.ph17:                                         ; preds = %.loopexit
  %i.m = getelementptr i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph17, %_sharednsitem_clear.exit14
  %.216 = phi i64 [ %.1, %.lr.ph17 ], [ %i.p, %_sharednsitem_clear.exit14 ] ; 2 uses
  %i.n = getelementptr [16 x i8], ptr %i.m, i64 %.216 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180  ; 2 uses
  %.not.i13 = icmp eq ptr %i.o, null
  br i1 %.not.i13, label %_sharednsitem_clear.exit14, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.o) #14
  store ptr null, ptr %i.n, align 8, !tbaa !180
  br label %_sharednsitem_clear.exit14

_sharednsitem_clear.exit14:                       ; preds = %bb.d, %bb.e
  tail call fastcc void @_sharednsitem_clear_value(ptr noundef nonnull %i.n)
  %i.p = add nuw nsw i64 %.216, 1                 ; 2 uses
  %i.q = load i64, ptr %i.j, align 8, !tbaa !177
  %i.r = icmp slt i64 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %._crit_edge, !llvm.loop !244

._crit_edge:                                      ; preds = %_sharednsitem_clear.exit14, %.loopexit
  tail call void @PyMem_RawFree(ptr noundef nonnull %0) #14
  ret void
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_sharednsitem_clear_value(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !181
  %i.c = tail call ptr @PyErr_GetRaisedException() #14
  %i.d = tail call fastcc range(i32 -1, 1) i32 @_xidata_release(ptr noundef nonnull %i.b, i32 noundef 1)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_release_xid_data.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not12.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.h(ptr noundef nonnull %i.f) #14, !inline_history !245
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.b, align 8, !tbaa !142
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.i = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 4 uses
  %.not13.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not13.i.i.i, label %_PyXIData_Clear.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.i, align 8, !tbaa !39
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i.i.i, label %bb.i, label %_PyXIData_Clear.exit.i

bb.i:                                             ; preds = %bb.h
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !40
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %_PyXIData_Clear.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #14
  br label %_PyXIData_Clear.exit.i

_PyXIData_Clear.exit.i:                           ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  tail call void @PyErr_Clear() #14
  br label %_release_xid_data.exit

_release_xid_data.exit:                           ; preds = %bb.b, %_PyXIData_Clear.exit.i
  tail call void @PyErr_SetRaisedException(ptr noundef %i.c) #14
  br label %bb.k

bb.k:                                             ; preds = %_release_xid_data.exit, %bb.a
  ret void
}

declare ptr @PyDict_GetItemString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_sharedns_free_pending(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @_sharedns_free(ptr noundef %0)
  ret i32 0
}

declare void @_PyInterpreterState_SetNotRunningMain(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_PyXI_excinfo_Apply(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.b) #14 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @PyErr_Clear() #14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @PyErr_SetObject(ptr noundef %1, ptr noundef nonnull %i.c) #14
  %i.e = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.c, align 8, !tbaa !40
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %Py_DECREF.exit.sink.split, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.h = tail call ptr @_PyXI_excinfo_format(ptr noundef nonnull %0) ; 5 uses
  tail call void @PyErr_SetObject(ptr noundef %1, ptr noundef %i.h) #14
  %.not.i17 = icmp eq ptr %i.h, null
  br i1 %.not.i17, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !40
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %Py_DECREF.exit.sink.split, label %Py_DECREF.exit

Py_DECREF.exit.sink.split:                        ; preds = %bb.h, %bb.e
  %.sink = phi ptr [ %i.c, %bb.e ], [ %i.h, %bb.h ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit.sink.split, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetNone(ptr noundef) local_unnamed_addr #1

declare void @_PyErr_SetInterpreterAlreadyRunning() local_unnamed_addr #1

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #1

declare ptr @PyModule_GetDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @_none_shared(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 40)) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i64 -1, ptr %i.d, align 8, !tbaa !143
  store ptr null, ptr %2, align 8, !tbaa !142
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_PyXIData_Init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.b) #14
  br label %_PyXIData_Init.exit

_PyXIData_Init.exit:                              ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  store i64 %i.f, ptr %i.d, align 8, !tbaa !143
  %i.g = getelementptr i8, ptr %2, i64 24
  store ptr @_new_none_object, ptr %i.g, align 8, !tbaa !145
  ret i32 0
}

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_long_shared(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #14 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !39
  %i.e = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.d) #14
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !39
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.94) #14
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %i.i = inttoptr i64 %i.a to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %i.k = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i64 -1, ptr %i.k, align 8, !tbaa !143
  store ptr %i.i, ptr %2, align 8, !tbaa !142
  %.not12.i = icmp eq ptr %i.h, null
  br i1 %.not12.i, label %_PyXIData_Init.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.h) #14
  br label %_PyXIData_Init.exit

_PyXIData_Init.exit:                              ; preds = %bb.e, %bb.f
  %i.m = phi i64 [ %i.l, %bb.f ], [ -1, %bb.e ]
  store i64 %i.m, ptr %i.k, align 8, !tbaa !143
  %i.n = getelementptr i8, ptr %2, i64 24
  store ptr @_new_long_object, ptr %i.n, align 8, !tbaa !145
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %_PyXIData_Init.exit
  %.0 = phi i32 [ 0, %_PyXIData_Init.exit ], [ -1, %bb.d ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_str_shared(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 40)) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i64 -1, ptr %i.d, align 8, !tbaa !143
  store ptr null, ptr %2, align 8, !tbaa !142
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.f = icmp ugt i32 %i.e, -1073741825
  br i1 %i.f, label %_Py_NewRef.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %1, align 8, !tbaa !40
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.c, %bb.b
  store ptr %1, ptr %i.c, align 8, !tbaa !144
  br label %bb.d

bb.d:                                             ; preds = %_Py_NewRef.exit.i.i, %bb.a
  %.not12.i.i = icmp eq ptr %i.b, null
  br i1 %.not12.i.i, label %_PyXIData_Init.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.b) #14
  br label %_PyXIData_Init.exit.i

_PyXIData_Init.exit.i:                            ; preds = %bb.e, %bb.d
  %i.i = phi i64 [ %i.h, %bb.e ], [ -1, %bb.d ]
  store i64 %i.i, ptr %i.d, align 8, !tbaa !143
  %i.j = getelementptr i8, ptr %2, i64 24
  store ptr @_new_str_object, ptr %i.j, align 8, !tbaa !145
  %i.k = tail call ptr @PyMem_RawCalloc(i64 noundef 1, i64 noundef 24) #14 ; 5 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !142
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_PyXIData_InitWithSize.exit.thread, label %bb.f

bb.f:                                             ; preds = %_PyXIData_Init.exit.i
  %i.m = getelementptr i8, ptr %2, i64 32
  store ptr @PyMem_RawFree, ptr %i.m, align 8, !tbaa !146
  %i.n = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = lshr i32 %i.o, 2
  %i.q = and i32 %i.p, 7
  store i32 %i.q, ptr %i.k, align 8, !tbaa !203
  %.val.i = load i32, ptr %i.n, align 8           ; 2 uses
  %i.r = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = and i32 %.val.i, 64
  %.not.i.i10 = icmp eq i32 %i.s, 0
  %.0.v.i.i = select i1 %.not.i.i10, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %1, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %1, i64 56
  %.val4.i = load ptr, ptr %i.t, align 8, !tbaa !40
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i11 = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  %i.u = getelementptr i8, ptr %i.k, i64 8
  store ptr %.0.i11, ptr %i.u, align 8, !tbaa !204
  %i.v = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.v, align 8, !tbaa !248
  %i.w = getelementptr i8, ptr %i.k, i64 16
  store i64 %.val, ptr %i.w, align 8, !tbaa !205
  br label %_PyXIData_InitWithSize.exit.thread

_PyXIData_InitWithSize.exit.thread:               ; preds = %_PyXIData_Init.exit.i, %_PyUnicode_DATA.exit
  %.0 = phi i32 [ 0, %_PyUnicode_DATA.exit ], [ -1, %_PyXIData_Init.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_bool_shared(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) initializes((0, 40)) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq ptr %1, @_Py_TrueStruct
  %i.d = zext i1 %i.c to i64
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i64 -1, ptr %i.g, align 8, !tbaa !143
  store ptr %i.e, ptr %2, align 8, !tbaa !142
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %_PyXIData_Init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.b) #14
  br label %_PyXIData_Init.exit

_PyXIData_Init.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]
  store i64 %i.i, ptr %i.g, align 8, !tbaa !143
  %i.j = getelementptr i8, ptr %2, i64 24
  store ptr @_new_bool_object, ptr %i.j, align 8, !tbaa !145
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_float_shared(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 40)) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr i8, ptr %2, i64 16         ; 2 uses
  store i64 -1, ptr %i.d, align 8, !tbaa !143
  store ptr null, ptr %2, align 8, !tbaa !142
  %.not12.i.i = icmp eq ptr %i.b, null
  br i1 %.not12.i.i, label %_PyXIData_Init.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.b) #14
  br label %_PyXIData_Init.exit.i

_PyXIData_Init.exit.i:                            ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %i.e, %bb.b ], [ -1, %bb.a ]
  store i64 %i.f, ptr %i.d, align 8, !tbaa !143
  %i.g = getelementptr i8, ptr %2, i64 24
  store ptr @_new_float_object, ptr %i.g, align 8, !tbaa !145
  %i.h = tail call ptr @PyMem_RawCalloc(i64 noundef 1, i64 noundef 8) #14 ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !142
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_PyXIData_InitWithSize.exit.thread, label %bb.c

bb.c:                                             ; preds = %_PyXIData_Init.exit.i
  %i.j = getelementptr i8, ptr %2, i64 32
  store ptr @PyMem_RawFree, ptr %i.j, align 8, !tbaa !146
  %i.k = tail call double @PyFloat_AsDouble(ptr noundef %1) #14
  store double %i.k, ptr %i.h, align 8, !tbaa !207
  br label %_PyXIData_InitWithSize.exit.thread

_PyXIData_InitWithSize.exit.thread:               ; preds = %_PyXIData_Init.exit.i, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %_PyXIData_Init.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_tuple_shared(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !250 ; 3 uses
  %i.b = icmp slt i64 %.val, 0
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyMem_RawMalloc(i64 noundef 16) #14 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyErr_NoMemory() #14      ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  store i64 %.val, ptr %i.c, align 8, !tbaa !210
  %i.f = tail call ptr @PyMem_Calloc(i64 noundef %.val, i64 noundef 8) #14 ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8        ; 5 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !211
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.i = load i64, ptr %i.c, align 8, !tbaa !210
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr i8, ptr %1, i64 32
  %i.l = getelementptr i8, ptr %0, i64 952
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyErr_NoMemory() #14      ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %.03349 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.g ] ; 3 uses
  %i.n = tail call ptr @PyMem_RawCalloc(i64 noundef 1, i64 noundef 40) #14 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_PyXIData_New.exit.thread, label %_PyXIData_New.exit

_PyXIData_New.exit.thread:                        ; preds = %bb.f
  %i.p = tail call ptr @PyErr_NoMemory() #14      ; 0 uses
  br label %bb.k

_PyXIData_New.exit:                               ; preds = %bb.f
  %i.q = getelementptr [8 x i8], ptr %i.k, i64 %.03349
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  %.val.i = load i64, ptr %i.l, align 8, !tbaa !251 ; 2 uses
  %i.s = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = icmp ule i64 %.val.i, %i.t
  %i.v = add i64 %.val.i, -32768
  %i.w = icmp ugt i64 %i.v, %i.t
  %narrow.i.not.i = or i1 %i.u, %i.w
  br i1 %narrow.i.not.i, label %_Py_EnterRecursiveCallTstate.exit.thread, label %_Py_EnterRecursiveCallTstate.exit

_Py_EnterRecursiveCallTstate.exit:                ; preds = %_PyXIData_New.exit
  %i.x = tail call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %0, ptr noundef nonnull @.str.95) #14
  %.not46 = icmp eq i32 %i.x, 0
  br i1 %.not46, label %_Py_EnterRecursiveCallTstate.exit.thread, label %.critedge

_Py_EnterRecursiveCallTstate.exit.thread:         ; preds = %_PyXIData_New.exit, %_Py_EnterRecursiveCallTstate.exit
  %i.y = tail call i32 @_PyObject_GetXIData(ptr noundef nonnull %0, ptr noundef %i.r, i32 noundef %2, ptr noundef nonnull %i.n)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.critedge, label %bb.g

.critedge:                                        ; preds = %_Py_EnterRecursiveCallTstate.exit, %_Py_EnterRecursiveCallTstate.exit.thread
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.n) #14
  br label %bb.k

bb.g:                                             ; preds = %_Py_EnterRecursiveCallTstate.exit.thread
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !211
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %.03349
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !212
  %i.ac = add nuw nsw i64 %.03349, 1              ; 2 uses
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !210
  %i.ae = icmp slt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %._crit_edge, !llvm.loop !249

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.af = getelementptr i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  %i.ai = getelementptr i8, ptr %3, i64 16        ; 2 uses
  store i64 -1, ptr %i.ai, align 8, !tbaa !143
  store ptr %i.c, ptr %3, align 8, !tbaa !142
  %i.aj = load i32, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, -1073741825
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.al = add nuw i32 %i.aj, 1
  store i32 %i.al, ptr %1, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  store ptr %1, ptr %i.ah, align 8, !tbaa !144
  %.not12.i = icmp eq ptr %i.ag, null
  br i1 %.not12.i, label %_PyXIData_Init.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = tail call i64 @PyInterpreterState_GetID(ptr noundef nonnull %i.ag) #14
  br label %_PyXIData_Init.exit

_PyXIData_Init.exit:                              ; preds = %bb.i, %bb.j
  %i.an = phi i64 [ %i.am, %bb.j ], [ -1, %bb.i ]
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !143
  %i.ao = getelementptr i8, ptr %3, i64 24
  store ptr @_new_tuple_object, ptr %i.ao, align 8, !tbaa !145
  %i.ap = getelementptr i8, ptr %3, i64 32
  store ptr @_tuple_shared_free, ptr %i.ap, align 8, !tbaa !146
  br label %bb.n

bb.k:                                             ; preds = %.critedge, %_PyXIData_New.exit.thread
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !211 ; 2 uses
  br i1 %i.ar, label %.lr.ph.i, label %_tuple_shared_free.exit

.lr.ph.i:                                         ; preds = %bb.k, %bb.m
  %i.as = phi i64 [ %i.bc, %bb.m ], [ %i.aq, %bb.k ]
  %i.at = phi ptr [ %i.bd, %bb.m ], [ %.pre.i, %bb.k ] ; 2 uses
  %.014.i = phi i64 [ %i.be, %bb.m ], [ 0, %bb.k ] ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %.014.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !212 ; 2 uses
  %.not.i40 = icmp eq ptr %i.av, null
  br i1 %.not.i40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aw = tail call fastcc range(i32 -1, 1) i32 @_xidata_release(ptr noundef nonnull %i.av, i32 noundef 0) ; 0 uses
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !211
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %.014.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !212
  tail call void @PyMem_RawFree(ptr noundef %i.az) #14
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !211 ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %.014.i
  store ptr null, ptr %i.bb, align 8, !tbaa !212
  %.pre15.i = load i64, ptr %i.c, align 8, !tbaa !210
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bc = phi i64 [ %i.as, %.lr.ph.i ], [ %.pre15.i, %bb.l ] ; 2 uses
  %i.bd = phi ptr [ %i.at, %.lr.ph.i ], [ %i.ba, %bb.l ] ; 2 uses
  %i.be = add nuw nsw i64 %.014.i, 1              ; 2 uses
  %i.bf = icmp slt i64 %i.be, %i.bc
  br i1 %i.bf, label %.lr.ph.i, label %_tuple_shared_free.exit, !llvm.loop !4

_tuple_shared_free.exit:                          ; preds = %bb.m, %bb.k
  %i.bg = phi ptr [ %.pre.i, %bb.k ], [ %i.bd, %bb.m ]
  tail call void @PyMem_Free(ptr noundef %i.bg) #14
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.c) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.e, %_PyXIData_Init.exit, %_tuple_shared_free.exit, %bb.a
  %.136 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %_tuple_shared_free.exit ], [ 0, %_PyXIData_Init.exit ]
  ret i32 %.136
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef nonnull ptr @_new_none_object(ptr nofree readnone captures(none) %0) #12 {
bb.a:
  %i.a = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !40 ; 2 uses
  %i.b = icmp ugt i32 %i.a, -1073741825
  br i1 %i.b, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw i32 %i.a, 1
  store i32 %i.c, ptr @_Py_NoneStruct, align 8, !tbaa !40
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  ret ptr @_Py_NoneStruct
}

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_new_long_object(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.b) #14
  ret ptr %i.c
}

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_new_str_object(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !203
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !205
  %i.g = tail call ptr @PyUnicode_FromKindAndData(i32 noundef %i.b, ptr noundef %i.d, i64 noundef %i.f) #14
  ret ptr %i.g
}

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal nonnull ptr @_new_bool_object(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142
  %.not = icmp eq ptr %i.a, null
  %_Py_FalseStruct._Py_TrueStruct = select i1 %.not, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  ret ptr %_Py_FalseStruct._Py_TrueStruct
}

; Function Attrs: nounwind uwtable
define internal ptr @_new_float_object(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142
  %i.b = load double, ptr %i.a, align 8, !tbaa !207
  %i.c = tail call ptr @PyFloat_FromDouble(double noundef %i.b) #14
  ret ptr %i.c
}

declare double @PyFloat_AsDouble(ptr noundef) local_unnamed_addr #1

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_new_tuple_object(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !210
  %i.c = tail call ptr @PyTuple_New(i64 noundef %i.b) #14 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !210
  %.not2223 = icmp sgt i64 %i.e, 0
  br i1 %.not2223, label %.lr.ph, label %Py_DECREF.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = getelementptr i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.024 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.f ] ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !211
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %.024
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !212  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.m = tail call ptr %i.l(ptr noundef %i.j) #14, !inline_history !253 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !40
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %Py_DECREF.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #14
  br label %Py_DECREF.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %.024
  store ptr %i.m, ptr %i.q, align 8, !tbaa !39
  %i.r = add nuw nsw i64 %.024, 1                 ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !210
  %.not22 = icmp slt i64 %i.r, %i.s
  br i1 %.not22, label %bb.b, label %Py_DECREF.exit.thread, !llvm.loop !252

Py_DECREF.exit.thread:                            ; preds = %bb.f, %.preheader, %bb.e, %bb.d, %bb.c, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ %i.c, %.preheader ], [ %i.c, %bb.f ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal void @_tuple_shared_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !210    ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  %i.c = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !211 ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.d = phi ptr [ %.pre, %bb.a ], [ %i.p, %bb.c ]
  tail call void @PyMem_Free(ptr noundef %i.d) #14
  tail call void @PyMem_RawFree(ptr noundef nonnull %0) #14
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi i64 [ %i.o, %bb.c ], [ %i.a, %bb.a ]
  %i.f = phi ptr [ %i.p, %bb.c ], [ %.pre, %bb.a ] ; 2 uses
  %.014 = phi i64 [ %i.q, %bb.c ], [ 0, %bb.a ]   ; 4 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.014
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !212  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = tail call fastcc range(i32 -1, 1) i32 @_xidata_release(ptr noundef nonnull %i.h, i32 noundef 0) ; 0 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !211
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %.014
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !212
  tail call void @PyMem_RawFree(ptr noundef %i.l) #14
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !211  ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %.014
  store ptr null, ptr %i.n, align 8, !tbaa !212
  %.pre15 = load i64, ptr %0, align 8, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = phi i64 [ %i.e, %.lr.ph ], [ %.pre15, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.f, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.q = add nuw nsw i64 %.014, 1                 ; 2 uses
  %i.r = icmp slt i64 %i.q, %i.o
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !4
}

declare i32 @_Py_CheckRecursiveCall(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #13

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare i32 @_PyStaticType_InitBuiltin(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyStaticType_FiniBuiltin(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyInterpreterState_Main() local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !134}
!1 = distinct !{ptr @_PyXIData_Clear, null}
!2 = distinct !{null}
!3 = distinct !{!3, !134}
!4 = distinct !{!4, !134}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !13, i64 0}
!17 = !{!"p1 _ZTS3_ts", !16, i64 0}
!18 = !{!"p1 _ZTS3_is", !16, i64 0}
!19 = !{!"long", !13, i64 0}
!20 = !{!"", !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0}
!21 = !{!"p1 _ZTS19_PyInterpreterFrame", !16, i64 0}
!22 = !{!"p1 _ZTS7_object", !16, i64 0}
!23 = !{!"p1 _ZTS14_err_stackitem", !16, i64 0}
!24 = !{!"p1 _ZTS12_stack_chunk", !16, i64 0}
!25 = !{!"any p2 pointer", !16, i64 0}
!26 = !{!"p2 _ZTS7_object", !25, i64 0}
!27 = !{!"_err_stackitem", !22, i64 0, !23, i64 8}
!28 = !{!"p1 _ZTS11_PyExitData", !16, i64 0}
!29 = !{!"", !14, i64 0, !13, i64 4}
!30 = !{!"_ts", !17, i64 0, !17, i64 8, !18, i64 16, !19, i64 24, !20, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !21, i64 72, !21, i64 80, !21, i64 88, !16, i64 96, !16, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !23, i64 136, !22, i64 144, !14, i64 152, !22, i64 160, !19, i64 168, !19, i64 176, !22, i64 184, !19, i64 192, !14, i64 200, !22, i64 208, !22, i64 216, !22, i64 224, !19, i64 232, !19, i64 240, !24, i64 248, !26, i64 256, !26, i64 264, !27, i64 272, !22, i64 288, !28, i64 296, !19, i64 304, !22, i64 312, !22, i64 320, !29, i64 328}
!31 = !{!30, !18, i64 16}
!32 = !{!"PyMutex", !13, i64 0}
!33 = !{!"p1 _ZTS12_xid_regitem", !16, i64 0}
!34 = !{!"", !14, i64 0, !14, i64 4, !32, i64 8, !33, i64 16}
!35 = !{!"_xid_lookup_state", !34, i64 0}
!36 = !{!"xi_exceptions", !22, i64 0, !22, i64 8, !22, i64 16}
!37 = !{!"", !35, i64 0, !36, i64 24}
!38 = !{!37, !22, i64 40}
!39 = !{!22, !22, i64 0}
!40 = !{!13, !13, i64 0}
!41 = !{!19, !19, i64 0}
!42 = !{!"p1 omnipotent char", !16, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTS18_gil_runtime_state", !16, i64 0}
!45 = !{!"_pending_calls", !17, i64 0, !32, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !13, i64 24, !14, i64 7224, !14, i64 7228}
!46 = !{!"_ceval_state", !19, i64 0, !14, i64 8, !44, i64 16, !14, i64 24, !45, i64 32}
!47 = !{!"p1 _ZTS18_PyThreadStateImpl", !16, i64 0}
!48 = !{!"pythreads", !19, i64 0, !17, i64 8, !47, i64 16, !17, i64 24, !19, i64 32, !19, i64 40}
!49 = !{!"p1 _ZTS14pyruntimestate", !16, i64 0}
!50 = !{!"", !19, i64 0, !19, i64 8}
!51 = !{!"gc_generation", !50, i64 0, !14, i64 16, !14, i64 20}
!52 = !{!"_gc_runtime_state", !14, i64 0, !14, i64 4, !51, i64 8, !13, i64 32, !51, i64 80, !13, i64 104, !14, i64 224, !21, i64 232, !22, i64 240, !22, i64 248, !19, i64 256, !19, i64 264, !14, i64 272, !14, i64 276}
!53 = !{!"long long", !13, i64 0}
!54 = !{!"", !32, i64 0, !53, i64 8, !19, i64 16}
!55 = !{!"", !14, i64 0, !19, i64 8, !14, i64 16}
!56 = !{!"_import_state", !22, i64 0, !22, i64 8, !22, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !22, i64 40, !22, i64 48, !14, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !54, i64 88, !55, i64 112}
!57 = !{!"_gil_runtime_state", !19, i64 0, !17, i64 8, !14, i64 16, !19, i64 24, !13, i64 32, !13, i64 80, !13, i64 120, !13, i64 168}
!58 = !{!"codecs_state", !22, i64 0, !22, i64 8, !22, i64 16, !14, i64 24}
!59 = !{!"p1 int", !16, i64 0}
!60 = !{!"p2 int", !25, i64 0}
!61 = !{!"", !19, i64 0, !60, i64 8}
!62 = !{!"PyConfig", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !19, i64 24, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !59, i64 64, !14, i64 72, !14, i64 76, !59, i64 80, !59, i64 88, !59, i64 96, !14, i64 104, !61, i64 112, !61, i64 128, !61, i64 144, !61, i64 160, !14, i64 176, !14, i64 180, !14, i64 184, !14, i64 188, !14, i64 192, !14, i64 196, !14, i64 200, !14, i64 204, !14, i64 208, !14, i64 212, !14, i64 216, !14, i64 220, !14, i64 224, !59, i64 232, !59, i64 240, !59, i64 248, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268, !14, i64 272, !14, i64 276, !14, i64 280, !14, i64 284, !59, i64 288, !59, i64 296, !59, i64 304, !59, i64 312, !14, i64 320, !61, i64 328, !59, i64 344, !59, i64 352, !59, i64 360, !59, i64 368, !59, i64 376, !59, i64 384, !59, i64 392, !14, i64 400, !59, i64 408, !59, i64 416, !59, i64 424, !59, i64 432, !14, i64 440, !14, i64 444, !14, i64 448}
!63 = !{!"_warnings_runtime_state", !22, i64 0, !22, i64 8, !22, i64 16, !54, i64 24, !19, i64 48, !22, i64 56}
!64 = !{!"p1 _ZTS15atexit_callback", !16, i64 0}
!65 = !{!"atexit_state", !64, i64 0, !22, i64 8}
!66 = !{!"_Bool", !13, i64 0}
!67 = !{!"", !13, i64 0}
!68 = !{!"_stoptheworld_state", !32, i64 0, !66, i64 1, !66, i64 2, !66, i64 3, !67, i64 4, !19, i64 8, !17, i64 16}
!69 = !{!"p1 _ZTS9_qsbr_pad", !16, i64 0}
!70 = !{!"p1 _ZTS18_qsbr_thread_state", !16, i64 0}
!71 = !{!"_qsbr_shared", !19, i64 0, !19, i64 8, !69, i64 16, !16, i64 24, !19, i64 32, !32, i64 40, !70, i64 48}
!72 = !{!"p1 _ZTS10llist_node", !16, i64 0}
!73 = !{!"llist_node", !72, i64 0, !72, i64 8}
!74 = !{!"p1 _ZTS15_obmalloc_state", !16, i64 0}
!75 = !{!"_Py_freelist", !16, i64 0, !19, i64 8}
!76 = !{!"_Py_freelists", !75, i64 0, !75, i64 16, !75, i64 32, !13, i64 48, !75, i64 368, !75, i64 384, !75, i64 400, !75, i64 416, !75, i64 432, !75, i64 448, !75, i64 464, !75, i64 480, !75, i64 496, !75, i64 512, !75, i64 528, !75, i64 544, !75, i64 560, !75, i64 576, !75, i64 592, !75, i64 608, !75, i64 624, !75, i64 640}
!77 = !{!"_py_object_state", !76, i64 0, !14, i64 656}
!78 = !{!"_Py_unicode_fs_codec", !42, i64 0, !14, i64 8, !42, i64 16, !14, i64 24}
!79 = !{!"_Py_unicode_ids", !19, i64 0, !26, i64 8}
!80 = !{!"_Py_unicode_state", !78, i64 0, !16, i64 32, !79, i64 40}
!81 = !{!"_Py_long_state", !14, i64 0}
!82 = !{!"p1 double", !16, i64 0}
!83 = !{!"_dtoa_state", !13, i64 0, !13, i64 64, !13, i64 128, !82, i64 2432}
!84 = !{!"_py_func_state", !14, i64 0, !13, i64 8}
!85 = !{!"p1 _ZTS15_Py_hashtable_t", !16, i64 0}
!86 = !{!"_py_code_state", !32, i64 0, !85, i64 8}
!87 = !{!"_Py_dict_state", !14, i64 0, !13, i64 8}
!88 = !{!"_Py_exc_state", !22, i64 0, !16, i64 8, !14, i64 16, !22, i64 24}
!89 = !{!"_Py_mem_interp_free_queue", !14, i64 0, !32, i64 4, !73, i64 8}
!90 = !{!"ast_state", !67, i64 0, !14, i64 4, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !22, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !22, i64 136, !22, i64 144, !22, i64 152, !22, i64 160, !22, i64 168, !22, i64 176, !22, i64 184, !22, i64 192, !22, i64 200, !22, i64 208, !22, i64 216, !22, i64 224, !22, i64 232, !22, i64 240, !22, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !22, i64 280, !22, i64 288, !22, i64 296, !22, i64 304, !22, i64 312, !22, i64 320, !22, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !22, i64 376, !22, i64 384, !22, i64 392, !22, i64 400, !22, i64 408, !22, i64 416, !22, i64 424, !22, i64 432, !22, i64 440, !22, i64 448, !22, i64 456, !22, i64 464, !22, i64 472, !22, i64 480, !22, i64 488, !22, i64 496, !22, i64 504, !22, i64 512, !22, i64 520, !22, i64 528, !22, i64 536, !22, i64 544, !22, i64 552, !22, i64 560, !22, i64 568, !22, i64 576, !22, i64 584, !22, i64 592, !22, i64 600, !22, i64 608, !22, i64 616, !22, i64 624, !22, i64 632, !22, i64 640, !22, i64 648, !22, i64 656, !22, i64 664, !22, i64 672, !22, i64 680, !22, i64 688, !22, i64 696, !22, i64 704, !22, i64 712, !22, i64 720, !22, i64 728, !22, i64 736, !22, i64 744, !22, i64 752, !22, i64 760, !22, i64 768, !22, i64 776, !22, i64 784, !22, i64 792, !22, i64 800, !22, i64 808, !22, i64 816, !22, i64 824, !22, i64 832, !22, i64 840, !22, i64 848, !22, i64 856, !22, i64 864, !22, i64 872, !22, i64 880, !22, i64 888, !22, i64 896, !22, i64 904, !22, i64 912, !22, i64 920, !22, i64 928, !22, i64 936, !22, i64 944, !22, i64 952, !22, i64 960, !22, i64 968, !22, i64 976, !22, i64 984, !22, i64 992, !22, i64 1000, !22, i64 1008, !22, i64 1016, !22, i64 1024, !22, i64 1032, !22, i64 1040, !22, i64 1048, !22, i64 1056, !22, i64 1064, !22, i64 1072, !22, i64 1080, !22, i64 1088, !22, i64 1096, !22, i64 1104, !22, i64 1112, !22, i64 1120, !22, i64 1128, !22, i64 1136, !22, i64 1144, !22, i64 1152, !22, i64 1160, !22, i64 1168, !22, i64 1176, !22, i64 1184, !22, i64 1192, !22, i64 1200, !22, i64 1208, !22, i64 1216, !22, i64 1224, !22, i64 1232, !22, i64 1240, !22, i64 1248, !22, i64 1256, !22, i64 1264, !22, i64 1272, !22, i64 1280, !22, i64 1288, !22, i64 1296, !22, i64 1304, !22, i64 1312, !22, i64 1320, !22, i64 1328, !22, i64 1336, !22, i64 1344, !22, i64 1352, !22, i64 1360, !22, i64 1368, !22, i64 1376, !22, i64 1384, !22, i64 1392, !22, i64 1400, !22, i64 1408, !22, i64 1416, !22, i64 1424, !22, i64 1432, !22, i64 1440, !22, i64 1448, !22, i64 1456, !22, i64 1464, !22, i64 1472, !22, i64 1480, !22, i64 1488, !22, i64 1496, !22, i64 1504, !22, i64 1512, !22, i64 1520, !22, i64 1528, !22, i64 1536, !22, i64 1544, !22, i64 1552, !22, i64 1560, !22, i64 1568, !22, i64 1576, !22, i64 1584, !22, i64 1592, !22, i64 1600, !22, i64 1608, !22, i64 1616, !22, i64 1624, !22, i64 1632, !22, i64 1640, !22, i64 1648, !22, i64 1656, !22, i64 1664, !22, i64 1672, !22, i64 1680, !22, i64 1688, !22, i64 1696, !22, i64 1704, !22, i64 1712, !22, i64 1720, !22, i64 1728, !22, i64 1736, !22, i64 1744, !22, i64 1752, !22, i64 1760, !22, i64 1768, !22, i64 1776, !22, i64 1784, !22, i64 1792, !22, i64 1800, !22, i64 1808, !22, i64 1816, !22, i64 1824, !22, i64 1832, !22, i64 1840, !22, i64 1848, !22, i64 1856, !22, i64 1864, !22, i64 1872, !22, i64 1880, !22, i64 1888, !22, i64 1896, !22, i64 1904, !22, i64 1912, !22, i64 1920, !22, i64 1928, !22, i64 1936, !22, i64 1944, !22, i64 1952, !22, i64 1960, !22, i64 1968, !22, i64 1976}
!91 = !{!"type_cache", !13, i64 0}
!92 = !{!"", !19, i64 0, !13, i64 8}
!93 = !{!"", !19, i64 0, !19, i64 8, !13, i64 16}
!94 = !{!"types_state", !14, i64 0, !91, i64 8, !92, i64 98312, !93, i64 108016, !32, i64 108512, !13, i64 108520}
!95 = !{!"callable_cache", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24}
!96 = !{!"short", !13, i64 0}
!97 = !{!"_PyOptimizationConfig", !96, i64 0, !96, i64 2, !96, i64 4, !96, i64 6, !66, i64 8, !66, i64 9}
!98 = !{!"p1 _ZTS17_PyExecutorObject", !16, i64 0}
!99 = !{!"_rare_events", !13, i64 0, !13, i64 1, !13, i64 2, !13, i64 3, !13, i64 4}
!100 = !{!"_Py_GlobalMonitors", !13, i64 0}
!101 = !{!"p1 _ZTS11_typeobject", !16, i64 0}
!102 = !{!"_Py_interp_cached_objects", !22, i64 0, !22, i64 8, !101, i64 16, !101, i64 24, !101, i64 32, !101, i64 40, !101, i64 48, !101, i64 56, !101, i64 64, !22, i64 72, !22, i64 80}
!103 = !{!"_object", !13, i64 0, !101, i64 8}
!104 = !{!"", !103, i64 0, !16, i64 16, !22, i64 24, !19, i64 32}
!105 = !{!"", !103, i64 0, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !13, i64 64}
!106 = !{!"", !14, i64 0, !50, i64 8, !104, i64 24, !105, i64 64}
!107 = !{!"_Py_interp_static_objects", !106, i64 0}
!108 = !{!"p1 _ZTS6_frame", !16, i64 0}
!109 = !{!"p1 _ZTS11_PyStackRef", !16, i64 0}
!110 = !{!"_PyInterpreterFrame", !13, i64 0, !21, i64 8, !13, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !108, i64 48, !16, i64 56, !109, i64 64, !96, i64 72, !13, i64 74, !13, i64 75, !13, i64 80}
!111 = !{!"_PyThreadStateImpl", !30, i64 0, !110, i64 848, !19, i64 936, !19, i64 944, !19, i64 952, !19, i64 960, !19, i64 968, !19, i64 976, !22, i64 984, !22, i64 992, !14, i64 1000, !73, i64 1008, !70, i64 1024, !73, i64 1032}
!112 = !{!"_is", !46, i64 0, !18, i64 7264, !19, i64 7272, !19, i64 7280, !14, i64 7288, !19, i64 7296, !14, i64 7304, !14, i64 7308, !14, i64 7312, !19, i64 7320, !48, i64 7328, !49, i64 7376, !17, i64 7384, !19, i64 7392, !52, i64 7400, !22, i64 7680, !22, i64 7688, !56, i64 7696, !57, i64 7832, !19, i64 8040, !58, i64 8048, !62, i64 8080, !19, i64 8536, !22, i64 8544, !22, i64 8552, !22, i64 8560, !16, i64 8568, !13, i64 8576, !13, i64 8640, !19, i64 8648, !13, i64 8656, !37, i64 10696, !22, i64 10744, !22, i64 10752, !22, i64 10760, !63, i64 10768, !65, i64 10832, !68, i64 10848, !71, i64 10872, !73, i64 10928, !32, i64 10944, !74, i64 10952, !22, i64 10960, !13, i64 10968, !13, i64 11032, !13, i64 11096, !13, i64 11160, !13, i64 11161, !77, i64 11168, !80, i64 11832, !81, i64 11888, !83, i64 11896, !84, i64 14336, !86, i64 79880, !87, i64 79896, !88, i64 79968, !89, i64 80000, !90, i64 80024, !94, i64 82008, !95, i64 223296, !13, i64 223328, !66, i64 223384, !66, i64 223385, !97, i64 223386, !98, i64 223400, !98, i64 223408, !98, i64 223416, !98, i64 223424, !19, i64 223432, !99, i64 223440, !16, i64 223448, !100, i64 223456, !67, i64 223472, !67, i64 223473, !19, i64 223480, !19, i64 223488, !13, i64 223496, !13, i64 224712, !13, i64 224776, !102, i64 224840, !107, i64 224928, !19, i64 225064, !111, i64 225072}
!113 = !{!112, !49, i64 7376}
!114 = !{!"p1 _ZTS17_xid_lookup_state", !16, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!103, !101, i64 8}
!117 = !{!"PyVarObject", !103, i64 0, !19, i64 16}
!118 = !{!"p1 _ZTS11PyMethodDef", !16, i64 0}
!119 = !{!"p1 _ZTS11PyMemberDef", !16, i64 0}
!120 = !{!"p1 _ZTS11PyGetSetDef", !16, i64 0}
!121 = !{!"_typeobject", !117, i64 0, !42, i64 24, !19, i64 32, !19, i64 40, !16, i64 48, !19, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !19, i64 168, !42, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !19, i64 208, !16, i64 216, !16, i64 224, !118, i64 232, !119, i64 240, !120, i64 248, !101, i64 256, !22, i64 264, !16, i64 272, !16, i64 280, !19, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !22, i64 336, !22, i64 344, !22, i64 352, !16, i64 360, !22, i64 368, !16, i64 376, !14, i64 384, !16, i64 392, !16, i64 400, !13, i64 408, !96, i64 410}
!122 = !{!121, !19, i64 168}
!123 = !{!34, !14, i64 0}
!124 = !{!34, !33, i64 16}
!125 = !{!"", !16, i64 0, !16, i64 8}
!126 = !{!"_xid_regitem", !33, i64 0, !33, i64 8, !101, i64 16, !22, i64 24, !19, i64 32, !125, i64 40}
!127 = !{!126, !22, i64 24}
!128 = !{!"p1 _ZTS16_PyWeakReference", !16, i64 0}
!129 = !{!"_PyWeakReference", !103, i64 0, !22, i64 16, !22, i64 24, !19, i64 32, !128, i64 40, !128, i64 48, !16, i64 56}
!130 = !{!129, !22, i64 16}
!131 = !{!126, !33, i64 8}
!132 = !{!126, !33, i64 0}
!133 = !{!126, !101, i64 16}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!16, !16, i64 0}
!136 = !{!126, !19, i64 32}
!137 = !{!101, !101, i64 0}
!138 = !{!"", !42, i64 0, !19, i64 8}
!139 = !{!138, !42, i64 0}
!140 = !{!138, !19, i64 8}
!141 = !{!"_xidata", !16, i64 0, !22, i64 8, !19, i64 16, !16, i64 24, !16, i64 32}
!142 = !{!141, !16, i64 0}
!143 = !{!141, !19, i64 16}
!144 = !{!141, !22, i64 8}
!145 = !{!141, !16, i64 24}
!146 = !{!141, !16, i64 32}
!147 = !{!17, !17, i64 0}
!148 = !{!30, !22, i64 128}
!149 = !{!"", !103, i64 0, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !22, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !16, i64 136, !14, i64 144}
!150 = !{!149, !22, i64 48}
!151 = !{!"", !42, i64 0, !19, i64 8, !13, i64 16}
!152 = !{!"_pickle_xid_context", !151, i64 0}
!153 = !{!"sync_module_result", !22, i64 0, !22, i64 8, !22, i64 16}
!154 = !{!"sync_module", !42, i64 0, !13, i64 8, !153, i64 4112}
!155 = !{!154, !22, i64 4128}
!156 = !{!"_excinfo_type", !101, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!157 = !{!156, !42, i64 8}
!158 = !{!156, !42, i64 24}
!159 = !{!156, !42, i64 16}
!160 = !{!"_excinfo", !156, i64 0, !42, i64 32, !42, i64 40}
!161 = !{!160, !42, i64 32}
!162 = !{!160, !42, i64 40}
!163 = !{!160, !42, i64 8}
!164 = !{!"xi_failure", !14, i64 0, !42, i64 8, !14, i64 16}
!165 = !{!164, !42, i64 8}
!166 = !{!164, !14, i64 16}
!167 = !{!164, !14, i64 0}
!168 = !{!"", !22, i64 0, !22, i64 8, !14, i64 16}
!169 = !{!168, !14, i64 16}
!170 = !{!"xi_session", !14, i64 0, !14, i64 4, !17, i64 8, !17, i64 16, !14, i64 24, !14, i64 28, !22, i64 32, !22, i64 40}
!171 = !{!170, !14, i64 28}
!172 = !{!170, !22, i64 32}
!173 = !{!170, !17, i64 16}
!174 = !{!168, !22, i64 8}
!175 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16, !13, i64 24}
!176 = !{!175, !19, i64 0}
!177 = !{!175, !19, i64 8}
!178 = !{!"p1 _ZTS7_xidata", !16, i64 0}
!179 = !{!"_sharednsitem", !42, i64 0, !178, i64 8}
!180 = !{!179, !42, i64 0}
!181 = !{!179, !178, i64 8}
!182 = !{!175, !19, i64 16}
!183 = !{!"p1 _ZTS10xi_failure", !16, i64 0}
!184 = !{!"", !18, i64 0, !183, i64 8, !164, i64 16, !160, i64 40}
!185 = !{!184, !183, i64 8}
!186 = !{!184, !18, i64 0}
!187 = !{i64 0, i64 4, !15, i64 8, i64 8, !43, i64 16, i64 4, !15}
!188 = !{!170, !17, i64 8}
!189 = !{!170, !22, i64 40}
!190 = !{!168, !22, i64 0}
!191 = !{!170, !14, i64 0}
!192 = !{!34, !14, i64 4}
!193 = !{!121, !101, i64 256}
!194 = !{!36, !22, i64 0}
!195 = !{!36, !22, i64 8}
!196 = !{!36, !22, i64 16}
!197 = !{!"", !14, i64 0, !42, i64 8, !42, i64 16, !14, i64 24}
!198 = !{!197, !14, i64 0}
!199 = !{!197, !42, i64 8}
!200 = !{!197, !42, i64 16}
!201 = !{!197, !14, i64 24}
!202 = !{!"_shared_str_data", !14, i64 0, !16, i64 8, !19, i64 16}
!203 = !{!202, !14, i64 0}
!204 = !{!202, !16, i64 8}
!205 = !{!202, !19, i64 16}
!206 = !{!"double", !13, i64 0}
!207 = !{!206, !206, i64 0}
!208 = !{!"p2 _ZTS7_xidata", !25, i64 0}
!209 = !{!"_shared_tuple_data", !19, i64 0, !208, i64 8}
!210 = !{!209, !19, i64 0}
!211 = !{!209, !208, i64 8}
!212 = !{!178, !178, i64 0}
!213 = !{!152, !42, i64 0}
!214 = !{!152, !19, i64 8}
!215 = !{!"_shared_pickle_data", !138, i64 0, !152, i64 16}
!216 = !{!215, !42, i64 0}
!217 = !{!215, !19, i64 8}
!218 = !{!"_unpickle_context", !17, i64 0, !154, i64 8}
!219 = !{!218, !17, i64 0}
!220 = !{!215, !42, i64 16}
!221 = !{!154, !42, i64 0}
!222 = !{!"", !103, i64 0, !22, i64 16, !16, i64 24, !22, i64 32, !22, i64 40, !66, i64 48, !19, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96}
!223 = !{!222, !22, i64 16}
!224 = !{!"p1 _ZTS19_PyCoMonitoringData", !16, i64 0}
!225 = !{!"PyCodeObject", !117, i64 0, !22, i64 24, !22, i64 32, !22, i64 40, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !22, i64 96, !22, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !22, i64 136, !22, i64 144, !16, i64 152, !16, i64 160, !19, i64 168, !224, i64 176, !19, i64 184, !14, i64 192, !16, i64 200, !13, i64 208}
!226 = !{!225, !14, i64 52}
!227 = !{!225, !14, i64 56}
!228 = !{!225, !14, i64 60}
!229 = !{!225, !14, i64 48}
!230 = distinct !{ptr @_call_clear_xidata, ptr @_Py_CallInInterpreterAndRawFree, null}
!231 = distinct !{ptr @_call_clear_xidata, ptr @_Py_CallInInterpreter, null}
!232 = !{!156, !101, i64 0}
!233 = !{!160, !42, i64 16}
!234 = !{!160, !42, i64 24}
!235 = distinct !{!235, !134}
!236 = distinct !{!236, !134}
!237 = distinct !{!237, !134}
!238 = distinct !{!238, !134}
!239 = distinct !{!239, !134}
!240 = distinct !{null, ptr @_PyXIData_NewObject}
!241 = !{}
!242 = !{!170, !14, i64 24}
!243 = distinct !{!243, !134}
!244 = distinct !{!244, !134}
!245 = distinct !{null, ptr @_PyXIData_Clear, null}
!246 = !{!"_PyUnicodeObject_state", !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0, !14, i64 0}
!247 = !{!"", !103, i64 0, !19, i64 16, !19, i64 24, !246, i64 32}
!248 = !{!247, !19, i64 16}
!249 = distinct !{!249, !134}
!250 = !{!117, !19, i64 16}
!251 = !{!111, !19, i64 952}
!252 = distinct !{!252, !134}
!253 = !{ptr @_PyXIData_NewObject}
end_hunk_1
