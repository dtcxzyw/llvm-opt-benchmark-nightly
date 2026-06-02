inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@_PyType_GetSubclasses:bb.a
  store i32 %i.al, ptr %.val, align 8, !tbaa !112
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.p, label %Py_DECREF.exit18

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %.val) #21
  br label %Py_DECREF.exit18

Py_DECREF.exit18:                                 ; preds = %bb.f, %.lr.ph, %bb.p, %bb.o, %bb.n
  %i.an = call i32 @PyDict_Next(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.b) #21
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %Py_DECREF.exit18.thread, label %.lr.ph

Py_DECREF.exit18.thread:                          ; preds = %Py_DECREF.exit18, %bb.e, %bb.l, %Py_DECREF.exit20, %bb.m
  %.2 = phi ptr [ null, %bb.l ], [ null, %bb.m ], [ null, %Py_DECREF.exit20 ], [ %i.c, %bb.e ], [ %i.c, %Py_DECREF.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit18.thread, %lookup_tp_subclasses.exit, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %.2, %Py_DECREF.exit18.thread ], [ %i.c, %lookup_tp_subclasses.exit ]
  ret ptr %.4
}

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_PyType_CheckConsistency(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_PyObject_IsFreed(ptr noundef %0) #21
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PyObject_AssertFailed(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 874, ptr noundef nonnull @__func__._PyType_CheckConsistency) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 168
  %i.c = load i64, ptr %i.b, align 8, !tbaa !118  ; 5 uses
  %i.d = and i64 %i.c, 4096
  %.not19 = icmp eq i64 %i.d, 0
  br i1 %.not19, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load i32, ptr %0, align 8, !tbaa !112
  %.not20 = icmp eq i32 %.val, 0
  br i1 %.not20, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 881, ptr noundef nonnull @__func__._PyType_CheckConsistency) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val27 = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.f = getelementptr i8, ptr %.val27, i64 168
  %.val27.val = load i64, ptr %i.f, align 8, !tbaa !118
  %i.g = and i64 %.val27.val, 2147483648
  %.not39 = icmp eq i64 %i.g, 0
  br i1 %.not39, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 882, ptr noundef nonnull @__func__._PyType_CheckConsistency) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = and i64 %i.c, 2
  %.not.i = icmp eq i64 %i.h, 0                   ; 2 uses
  br i1 %.not.i, label %is_readying.exit, label %is_readying.exit.thread

is_readying.exit:                                 ; preds = %bb.h
  %i.i = and i64 %i.c, 8192
  %.not22 = icmp eq i64 %i.i, 0
  br i1 %.not22, label %bb.j, label %bb.i

is_readying.exit.thread:                          ; preds = %bb.h
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 360
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.m = ptrtoint ptr %.val.i.i to i64
  %i.n = add i64 %i.m, -1                         ; 3 uses
  %i.o = getelementptr i8, ptr %i.k, i64 180328
  %i.p = getelementptr [48 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = icmp eq ptr %i.q, %0
  %i.s = icmp ugt i64 %i.n, 10
  %or.cond.i.i = or i1 %i.r, %i.s
  %i.t = getelementptr i8, ptr %i.k, i64 190040
  %i.u = getelementptr [48 x i8], ptr %i.t, i64 %i.n
  %.0.i.i = select i1 %or.cond.i.i, ptr %i.p, ptr %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %.0.i.i, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !127
  %.not2238 = icmp eq i32 %i.w, 0
  br i1 %.not2238, label %.thread, label %bb.i

bb.i:                                             ; preds = %is_readying.exit.thread, %is_readying.exit
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 884, ptr noundef nonnull @__func__._PyType_CheckConsistency) #22
  unreachable

.thread:                                          ; preds = %is_readying.exit.thread
  %i.x = getelementptr i8, ptr %.0.i.i, i64 24
  br label %lookup_tp_dict.exit

bb.j:                                             ; preds = %is_readying.exit
  %i.y = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit

lookup_tp_dict.exit:                              ; preds = %.thread, %bb.j
  %.0.in.i = phi ptr [ %i.x, %.thread ], [ %i.y, %bb.j ]
  %.0.i29 = load ptr, ptr %.0.in.i, align 8, !tbaa !115
  %.not23 = icmp eq ptr %.0.i29, null
  br i1 %.not23, label %bb.k, label %bb.l

bb.k:                                             ; preds = %lookup_tp_dict.exit
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 885, ptr noundef nonnull @__func__._PyType_CheckConsistency) #22
  unreachable

bb.l:                                             ; preds = %lookup_tp_dict.exit
  %i.z = and i64 %i.c, 16384
  %.not24 = icmp eq i64 %i.z, 0
  br i1 %.not24, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr i8, ptr %0, i64 184
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128
  %.not25 = icmp eq ptr %i.ab, null
  br i1 %.not25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 890, ptr noundef nonnull @__func__._PyType_CheckConsistency) #22
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ac = and i64 %i.c, 128
  %.not26 = icmp eq i64 %i.ac, 0
  br i1 %.not26, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr i8, ptr %0, i64 312
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !129
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 894, ptr noundef nonnull @__func__._PyType_CheckConsistency) #22
  unreachable

bb.r:                                             ; preds = %bb.p
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 360
  %.val.i.i.i31 = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.aj = ptrtoint ptr %.val.i.i.i31 to i64
  %i.ak = add i64 %i.aj, -1                       ; 3 uses
  %i.al = getelementptr i8, ptr %i.ah, i64 180328
  %i.am = getelementptr [48 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24
  %i.ao = icmp eq ptr %i.an, %0
  %i.ap = icmp ugt i64 %i.ak, 10
  %or.cond.i.i.i32 = or i1 %i.ao, %i.ap
  %i.aq = getelementptr i8, ptr %i.ah, i64 190040
  %i.ar = getelementptr [48 x i8], ptr %i.aq, i64 %i.ak
  %.0.i.i.i33 = select i1 %or.cond.i.i.i32, ptr %i.am, ptr %i.ar
  %i.as = getelementptr i8, ptr %.0.i.i.i33, i64 24
  br label %lookup_tp_dict.exit36

bb.t:                                             ; preds = %bb.r
  %i.at = getelementptr i8, ptr %0, i64 264
  br label %lookup_tp_dict.exit36

lookup_tp_dict.exit36:                            ; preds = %bb.s, %bb.t
  %.0.in.i34 = phi ptr [ %i.as, %bb.s ], [ %i.at, %bb.t ]
  %.0.i35 = load ptr, ptr %.0.in.i34, align 8, !tbaa !115
  %i.au = tail call i32 @PyDict_Contains(ptr noundef %.0.i35, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016)) #21
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.v, label %bb.u

bb.u:                                             ; preds = %lookup_tp_dict.exit36
  tail call void @_PyObject_AssertFailed(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 895, ptr noundef nonnull @__func__._PyType_CheckConsistency) #22
  unreachable

bb.v:                                             ; preds = %bb.o, %lookup_tp_dict.exit36, %bb.c
  ret i32 1
}

declare i32 @_PyObject_IsFreed(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_PyObject_AssertFailed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @PyDict_Contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyType_GetDocFromInternalDoc(ptr noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_PyType_DocWithoutSignature.exit.thread12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 46) #23 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.a, null
  %i.b = getelementptr i8, ptr %i.a, i64 1
  %spec.select.i.i = select i1 %.not15.i.i, ptr %0, ptr %i.b ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i.i) #23 ; 2 uses
  %i.d = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull %spec.select.i.i, i64 noundef %i.c) #23
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
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.i11.i, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #23
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
  %i.p = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %.0.i9) #21
  br label %_PyType_DocWithoutSignature.exit.thread12

_PyType_DocWithoutSignature.exit.thread12:        ; preds = %bb.a, %_PyType_DocWithoutSignature.exit.thread, %bb.f
  %.0 = phi ptr [ %i.p, %bb.f ], [ @_Py_NoneStruct, %_PyType_DocWithoutSignature.exit.thread ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_PyType_DocWithoutSignature(ptr noundef readonly captures(address) %0, ptr noundef readonly captures(address, ret: address, provenance) %1) unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %find_signature.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 46) #23 ; 2 uses
  %.not15.i = icmp eq ptr %i.a, null
  %i.b = getelementptr i8, ptr %i.a, i64 1
  %spec.select.i = select i1 %.not15.i, ptr %0, ptr %i.b ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #23 ; 2 uses
  %i.d = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull %spec.select.i, i64 noundef %i.c) #23
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
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.i11, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #23
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
define hidden ptr @_PyType_GetTextSignatureFromInternalDoc(ptr noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %skip_signature.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %0, i32 noundef 46) #23 ; 2 uses
  %.not15.i = icmp eq ptr %i.a, null
  %i.b = getelementptr i8, ptr %i.a, i64 1
  %spec.select.i = select i1 %.not15.i, ptr %0, ptr %i.b ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #23 ; 2 uses
  %i.d = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull %spec.select.i, i64 noundef %i.c) #23
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
  %i.h = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.0.i17, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #23
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
  %i.n = and i32 %2, -65
  %switch.tableidx = add i32 %i.n, -4             ; 3 uses
  %i.o = icmp ult i32 %switch.tableidx, 37
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 73015558161, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.o, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %signature_from_flags.exit

switch.lookup:                                    ; preds = %skip_signature.exit.thread
  %i.p = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._PyType_GetTextSignatureFromInternalDoc, i64 %i.p
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.q = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %switch.load) #21
  br label %signature_from_flags.exit

bb.f:                                             ; preds = %skip_signature.exit
  %i.r = getelementptr i8, ptr %.0.i17, i64 1
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %i.e, i64 noundef %i.u) #21
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
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #21
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
end_hunk_0
