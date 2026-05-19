inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@_PyType_CheckConsistency:bb.a
bb.u:                                             ; preds = %lookup_tp_dict.exit36
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 895, ptr noundef nonnull @__func__._PyType_CheckConsistency) #25
  unreachable

bb.v:                                             ; preds = %bb.o, %lookup_tp_dict.exit36, %bb.c
  ret i32 1
}

declare i32 @_PyObject_IsFreed(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_PyObject_AssertFailed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @PyDict_Contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyType_GetDocFromInternalDoc(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_PyType_DocWithoutSignature.exit.thread12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 46) #26 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.a, null
  %i.b = getelementptr i8, ptr %i.a, i64 1
  %spec.select.i.i = select i1 %.not15.i.i, ptr %0, ptr %i.b ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i.i) #26 ; 2 uses
  %i.d = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull %spec.select.i.i, i64 noundef %i.c) #26
  %.not16.i.i = icmp eq i32 %i.d, 0
  br i1 %.not16.i.i, label %bb.c, label %_PyType_DocWithoutSignature.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 %i.c       ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !112
  %.not17.i.not.i = icmp eq i8 %i.f, 40
  br i1 %.not17.i.not.i, label %.preheader.i, label %_PyType_DocWithoutSignature.exit.thread

.preheader.i:                                     ; preds = %bb.c, %.thread.i.i
  %i.g = phi i8 [ %.pr.i, %.thread.i.i ], [ 40, %bb.c ]
  %.0.i11.i = phi ptr [ %i.l, %.thread.i.i ], [ %i.e, %bb.c ] ; 4 uses
  switch i8 %i.g, label %.thread.i.i [
    i8 0, label %_PyType_DocWithoutSignature.exit
    i8 41, label %bb.d
    i8 10, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader.i
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.i11.i, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #26
  %.not10.i.i = icmp eq i32 %i.h, 0
  br i1 %.not10.i.i, label %skip_signature.exit.i, label %.thread.i.i

bb.e:                                             ; preds = %.preheader.i
  %i.i = getelementptr i8, ptr %.0.i11.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !112
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %_PyType_DocWithoutSignature.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d, %.preheader.i
  %i.l = getelementptr i8, ptr %.0.i11.i, i64 1   ; 2 uses
  %.pr.i = load i8, ptr %i.l, align 1, !tbaa !112
  br label %.preheader.i, !llvm.loop !130

skip_signature.exit.i:                            ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.0.i11.i, i64 6   ; 2 uses
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %_PyType_DocWithoutSignature.exit, label %_PyType_DocWithoutSignature.exit.thread

_PyType_DocWithoutSignature.exit:                 ; preds = %.preheader.i, %bb.e, %skip_signature.exit.i
  br label %_PyType_DocWithoutSignature.exit.thread

_PyType_DocWithoutSignature.exit.thread:          ; preds = %_PyType_DocWithoutSignature.exit, %bb.c, %bb.b, %skip_signature.exit.i
  %.0.i9 = phi ptr [ %i.m, %skip_signature.exit.i ], [ %1, %_PyType_DocWithoutSignature.exit ], [ %1, %bb.b ], [ %1, %bb.c ] ; 2 uses
  %i.n = load i8, ptr %.0.i9, align 1, !tbaa !112
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %_PyType_DocWithoutSignature.exit.thread12, label %bb.f

bb.f:                                             ; preds = %_PyType_DocWithoutSignature.exit.thread
  %i.p = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %.0.i9) #24
  br label %_PyType_DocWithoutSignature.exit.thread12

_PyType_DocWithoutSignature.exit.thread12:        ; preds = %bb.a, %_PyType_DocWithoutSignature.exit.thread, %bb.f
  %.0 = phi ptr [ %i.p, %bb.f ], [ @_Py_NoneStruct, %_PyType_DocWithoutSignature.exit.thread ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_PyType_DocWithoutSignature(ptr noundef readonly %0, ptr noundef readonly captures(address, ret: address, provenance) %1) unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %find_signature.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 46) #26 ; 2 uses
  %.not15.i = icmp eq ptr %i.a, null
  %i.b = getelementptr i8, ptr %i.a, i64 1
  %spec.select.i = select i1 %.not15.i, ptr %0, ptr %i.b ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #26 ; 2 uses
  %i.d = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull %spec.select.i, i64 noundef %i.c) #26
  %.not16.i = icmp eq i32 %i.d, 0
  br i1 %.not16.i, label %bb.c, label %find_signature.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 %i.c       ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !112
  %.not17.i.not = icmp eq i8 %i.f, 40
  br i1 %.not17.i.not, label %.preheader, label %find_signature.exit.thread

.preheader:                                       ; preds = %bb.c, %.thread.i
  %i.g = phi i8 [ %.pr, %.thread.i ], [ 40, %bb.c ]
  %.0.i11 = phi ptr [ %i.l, %.thread.i ], [ %i.e, %bb.c ] ; 4 uses
  switch i8 %i.g, label %.thread.i [
    i8 0, label %find_signature.exit.thread
    i8 41, label %bb.d
    i8 10, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.i11, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #26
  %.not10.i = icmp eq i32 %i.h, 0
  br i1 %.not10.i, label %skip_signature.exit, label %.thread.i

bb.e:                                             ; preds = %.preheader
  %i.i = getelementptr i8, ptr %.0.i11, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !112
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %find_signature.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %.preheader
  %i.l = getelementptr i8, ptr %.0.i11, i64 1     ; 2 uses
  %.pr = load i8, ptr %i.l, align 1, !tbaa !112
  br label %.preheader, !llvm.loop !130

skip_signature.exit:                              ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.0.i11, i64 6     ; 2 uses
  %.not10 = icmp eq ptr %i.m, null
  br i1 %.not10, label %find_signature.exit.thread, label %bb.f

find_signature.exit.thread:                       ; preds = %.preheader, %bb.e, %bb.b, %bb.c, %bb.a, %skip_signature.exit
  br label %bb.f

bb.f:                                             ; preds = %skip_signature.exit, %find_signature.exit.thread
  %.0 = phi ptr [ %1, %find_signature.exit.thread ], [ %i.m, %skip_signature.exit ]
  ret ptr %.0
}

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyType_GetTextSignatureFromInternalDoc(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %skip_signature.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 46) #26 ; 2 uses
  %.not15.i = icmp eq ptr %i.a, null
  %i.b = getelementptr i8, ptr %i.a, i64 1
  %spec.select.i = select i1 %.not15.i, ptr %0, ptr %i.b ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #26 ; 2 uses
  %i.d = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull %spec.select.i, i64 noundef %i.c) #26
  %.not16.i = icmp eq i32 %i.d, 0
  br i1 %.not16.i, label %bb.c, label %skip_signature.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 %i.c       ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !112
  %.not17.i.not = icmp eq i8 %i.f, 40
  br i1 %.not17.i.not, label %.preheader, label %skip_signature.exit.thread

.preheader:                                       ; preds = %bb.c, %.thread.i
  %i.g = phi i8 [ %.pr, %.thread.i ], [ 40, %bb.c ]
  %.0.i17 = phi ptr [ %i.l, %.thread.i ], [ %i.e, %bb.c ] ; 5 uses
  switch i8 %i.g, label %.thread.i [
    i8 0, label %skip_signature.exit.thread
    i8 41, label %bb.d
    i8 10, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.i17, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #26
  %.not10.i = icmp eq i32 %i.h, 0
  br i1 %.not10.i, label %skip_signature.exit, label %.thread.i

bb.e:                                             ; preds = %.preheader
  %i.i = getelementptr i8, ptr %.0.i17, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !112
  %i.k = icmp eq i8 %i.j, 10
  br i1 %i.k, label %skip_signature.exit.thread, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %.preheader
  %i.l = getelementptr i8, ptr %.0.i17, i64 1     ; 2 uses
  %.pr = load i8, ptr %i.l, align 1, !tbaa !112
  br label %.preheader, !llvm.loop !130

skip_signature.exit:                              ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.0.i17, i64 6
  %.not15 = icmp eq ptr %i.m, null
  br i1 %.not15, label %skip_signature.exit.thread, label %bb.f

skip_signature.exit.thread:                       ; preds = %.preheader, %bb.e, %bb.b, %bb.c, %bb.a, %skip_signature.exit
  %i.n = and i32 %2, -65                          ; 2 uses
  %3 = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 30)
  %switch.tableidx = add i32 %3, -1               ; 3 uses
  %i.o = icmp ult i32 %switch.tableidx, 10
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 819, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.o, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %signature_from_flags.exit

switch.lookup:                                    ; preds = %skip_signature.exit.thread
  %i.p = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._PyType_GetTextSignatureFromInternalDoc, i64 %i.p
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.q = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %switch.load) #24
  br label %signature_from_flags.exit

bb.f:                                             ; preds = %skip_signature.exit
  %i.r = getelementptr i8, ptr %.0.i17, i64 1
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %i.e, i64 noundef %i.u) #24
  br label %signature_from_flags.exit

signature_from_flags.exit:                        ; preds = %skip_signature.exit.thread, %bb.f, %switch.lookup
  %.012 = phi ptr [ %i.v, %bb.f ], [ %i.q, %switch.lookup ], [ @_Py_NoneStruct, %skip_signature.exit.thread ]
  ret ptr %.012
}

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_PyType_InitCache(ptr noundef writeonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 82016      ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.c, %bb.a
  %.07 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.c ]    ; 5 uses
  %i.b = getelementptr [24 x i8], ptr %i.a, i64 %.07 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !131
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store <2 x ptr> <ptr @_Py_NoneStruct, ptr null>, ptr %i.c, align 8, !tbaa !115
  %i.d = getelementptr [24 x i8], ptr %i.a, i64 %.07 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !131
  %i.f = getelementptr i8, ptr %i.d, i64 32
  store <2 x ptr> <ptr @_Py_NoneStruct, ptr null>, ptr %i.f, align 8, !tbaa !115
  %i.g = getelementptr [24 x i8], ptr %i.a, i64 %.07 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 48
  store i32 0, ptr %i.h, align 8, !tbaa !131
  %i.i = getelementptr i8, ptr %i.g, i64 56
  store <2 x ptr> <ptr @_Py_NoneStruct, ptr null>, ptr %i.i, align 8, !tbaa !115
  %i.j = getelementptr [24 x i8], ptr %i.a, i64 %.07 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 72
  store i32 0, ptr %i.k, align 8, !tbaa !131
  %i.l = getelementptr i8, ptr %i.j, i64 80
  store <2 x ptr> <ptr @_Py_NoneStruct, ptr null>, ptr %i.l, align 8, !tbaa !115
  %i.m = add nuw nsw i64 %.07, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.m, 4096
  br i1 %exitcond.not.3, label %bb.b, label %bb.c, !llvm.loop !133
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PyType_ClearCache() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 82016
  br label %.split.i.i

.split.i.i:                                       ; preds = %Py_XDECREF.exit.i.i, %bb.a
  %.011.i.i = phi i64 [ %i.n, %Py_XDECREF.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr [24 x i8], ptr %i.c, i64 %.011.i.i ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 4 uses
  %i.g = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !112 ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_XNewRef.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.split.i.i
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr @_Py_NoneStruct, align 8, !tbaa !112
  br label %_Py_XNewRef.exit.i.i

_Py_XNewRef.exit.i.i:                             ; preds = %bb.b, %.split.i.i
  store ptr @_Py_NoneStruct, ptr %i.e, align 8, !tbaa !115
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %Py_XDECREF.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_Py_XNewRef.exit.i.i
  %i.j = load i32, ptr %i.f, align 8, !tbaa !112  ; 2 uses
  %.not.i.i10.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i10.i.i, label %bb.d, label %Py_XDECREF.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.f, align 8, !tbaa !112
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %Py_XDECREF.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #24
  br label %Py_XDECREF.exit.i.i

Py_XDECREF.exit.i.i:                              ; preds = %bb.e, %bb.d, %bb.c, %_Py_XNewRef.exit.i.i
  %i.m = getelementptr i8, ptr %i.d, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !134
  %i.n = add nuw nsw i64 %.011.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.n, 4096
  br i1 %exitcond.not.i.i, label %_PyType_ClearCache.exit, label %.split.i.i, !llvm.loop !135

_PyType_ClearCache.exit:                          ; preds = %Py_XDECREF.exit.i.i
  %i.o = getelementptr i8, ptr %i.b, i64 82008
  %i.p = load i32, ptr %i.o, align 8, !tbaa !136
  %i.q = add i32 %i.p, -1
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define hidden void @_PyTypes_Fini(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 82016
  br label %_Py_XNewRef.exit.us.i

_Py_XNewRef.exit.us.i:                            ; preds = %Py_XDECREF.exit.us.i, %bb.a
  %.011.us.i = phi i64 [ %i.i, %Py_XDECREF.exit.us.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [24 x i8], ptr %i.a, i64 %.011.us.i ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !131
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !115
  %.not.i.us.i = icmp eq ptr %i.d, null
  br i1 %.not.i.us.i, label %Py_XDECREF.exit.us.i, label %bb.b

bb.b:                                             ; preds = %_Py_XNewRef.exit.us.i
  %i.e = load i32, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %.not.i.i10.us.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i.i10.us.i, label %bb.c, label %Py_XDECREF.exit.us.i

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !112
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_XDECREF.exit.us.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #24
  br label %Py_XDECREF.exit.us.i

Py_XDECREF.exit.us.i:                             ; preds = %bb.d, %bb.c, %bb.b, %_Py_XNewRef.exit.us.i
  %i.h = getelementptr i8, ptr %i.b, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !134
  %i.i = add nuw nsw i64 %.011.us.i, 1            ; 2 uses
  %exitcond15.not.i = icmp eq i64 %i.i, 4096
  br i1 %exitcond15.not.i, label %type_cache_clear.exit.preheader, label %_Py_XNewRef.exit.us.i, !llvm.loop !135

type_cache_clear.exit.preheader:                  ; preds = %Py_XDECREF.exit.us.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 8) i32 @PyType_AddWatcher(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 10968
  %i.d = getelementptr i8, ptr %i.b, i64 10976
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0914.lcssa.wide = phi i64 [ 1, %bb.a ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ] ; 2 uses
  %i.f = trunc nuw nsw i64 %.0914.lcssa.wide to i32
  %i.g = getelementptr [8 x i8], ptr %i.c, i64 %.0914.lcssa.wide
  store ptr %0, ptr %i.g, align 8, !tbaa !120
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 10984
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120
  %.not.1 = icmp eq ptr %i.i, null
  br i1 %.not.1, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 10992
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !120
  %.not.2 = icmp eq ptr %i.k, null
  br i1 %.not.2, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.b, i64 11000
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120
  %.not.3 = icmp eq ptr %i.m, null
  br i1 %.not.3, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.b, i64 11008
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120
  %.not.4 = icmp eq ptr %i.o, null
  br i1 %.not.4, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.b, i64 11016
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120
  %.not.5 = icmp eq ptr %i.q, null
end_hunk_0
