inline.NumInlined: 237
inline.NumDeleted: 55
begin_hunk_0_@add_errors_module:bb.a
bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #8
  br label %add_error.exit

add_error.exit:                                   ; preds = %Py_DECREF.exit28.i, %bb.p, %bb.q
  %i.ag = icmp slt i32 %i.z, 0
  br i1 %i.ag, label %add_error.exit.thread, label %bb.r

bb.r:                                             ; preds = %add_error.exit
  %i.ah = add nuw nsw i64 %.033, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, 45
  br i1 %exitcond.not, label %.loopexit37, label %.preheader.peel.next, !llvm.loop !126

.loopexit37:                                      ; preds = %bb.r
  %i.ai = tail call i32 @PyModule_AddStringConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147) #8
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %add_error.exit.thread, label %bb.s

bb.s:                                             ; preds = %.loopexit37
  %i.ak = tail call i32 @PyModule_Add(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.148, ptr noundef nonnull %i.c) #8
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.am = load i32, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %.not.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i, label %bb.u, label %Py_DECREF.exit

bb.u:                                             ; preds = %bb.t
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.e, align 8, !tbaa !18
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.v, label %Py_DECREF.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #8
  br label %Py_DECREF.exit

bb.w:                                             ; preds = %bb.s
  %i.ap = tail call i32 @PyModule_Add(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.149, ptr noundef nonnull %i.e) #8
  %.lobit = ashr i32 %i.ap, 31
  br label %Py_DECREF.exit

add_error.exit.thread.sink.split:                 ; preds = %bb.l, %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #8
  br label %add_error.exit.thread

add_error.exit.thread:                            ; preds = %bb.f, %bb.e, %add_error.exit, %add_error.exit.thread.sink.split, %bb.l, %bb.k, %bb.i, %bb.h, %bb.c, %.loopexit37
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %.not.i.i25 = icmp sgt i32 %i.aq, -1
  br i1 %.not.i.i25, label %bb.x, label %Py_XDECREF.exit

bb.x:                                             ; preds = %add_error.exit.thread
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.c, align 8, !tbaa !18
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.y, label %Py_XDECREF.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %add_error.exit.thread, %bb.x, %bb.y
  br i1 %i.f, label %Py_DECREF.exit, label %bb.z

bb.z:                                             ; preds = %Py_XDECREF.exit
  %i.at = load i32, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.at, -1
  br i1 %.not.i.i28, label %bb.aa, label %Py_DECREF.exit

bb.aa:                                            ; preds = %bb.z
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.e, align 8, !tbaa !18
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.ab, label %Py_DECREF.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ab, %bb.aa, %bb.z, %Py_XDECREF.exit, %bb.v, %bb.u, %bb.t, %bb.b, %bb.w, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.v ], [ %.lobit, %bb.w ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %Py_XDECREF.exit ], [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.ab ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @add_model_module(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @add_submodule(ptr noundef %0, ptr noundef nonnull @.str.238) ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @PyModule_AddStringConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.239) #8
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.240, i64 noundef 1) #8
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.241, i64 noundef 2) #8
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.242, i64 noundef 3) #8
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.243, i64 noundef 4) #8
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.244, i64 noundef 5) #8
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.245, i64 noundef 6) #8
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.246, i64 noundef 0) #8
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.247, i64 noundef 1) #8
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.248, i64 noundef 2) #8
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @PyModule_AddIntConstant(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.249, i64 noundef 3) #8
  %.lobit = ashr i32 %i.w, 31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.k ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ %.lobit, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_features(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyList_New(i64 noundef 0) #8 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyExpat_XML_GetFeatureList() #8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !128
  %.not30 = icmp eq i32 %i.d, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %Py_DECREF.exit24
  %i.e = add i64 %.02031, 1                       ; 2 uses
  %i.f = getelementptr [24 x i8], ptr %i.c, i64 %i.e
  %i.g = load i32, ptr %i.f, align 8, !tbaa !128
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.02031 = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %i.c, i64 %.02031 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.k = getelementptr i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !132
  %i.m = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.250, ptr noundef %i.j, i64 noundef %i.l) #8 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.o = tail call i32 @PyList_Append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.m) #8
  %i.p = load i32, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %.not.i23 = icmp sgt i32 %i.p, -1
  br i1 %.not.i23, label %bb.e, label %Py_DECREF.exit24

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.m, align 8, !tbaa !18
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %Py_DECREF.exit24

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #8
  br label %Py_DECREF.exit24

Py_DECREF.exit24:                                 ; preds = %bb.d, %bb.e, %bb.f
  %.fr = freeze i32 %i.o
  %i.s = icmp slt i32 %.fr, 0
  br i1 %i.s, label %select.unfold, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.t = tail call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull @.str.251, ptr noundef nonnull %i.a) #8
  br label %Py_DECREF.exit

select.unfold:                                    ; preds = %Py_DECREF.exit24, %.lr.ph
  %i.u = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %select.unfold
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !18
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %select.unfold, %._crit_edge, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.t, %._crit_edge ], [ -1, %select.unfold ], [ -1, %bb.g ], [ -1, %bb.h ]
  ret i32 %.1
}

declare i32 @PyModule_AddIntConstant(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @PyExpat_XML_GetErrorCode(ptr noundef) #1

declare i64 @PyExpat_XML_GetCurrentColumnNumber(ptr noundef) #1

declare i64 @PyExpat_XML_GetCurrentLineNumber(ptr noundef) #1

declare i32 @PyExpat_XML_Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @PyExpat_XML_ParserFree(ptr noundef) #1

declare void @PyExpat_XML_SetElementHandler(ptr noundef, ptr noundef, ptr noundef) #1

declare void @PyExpat_XML_SetNamespaceDeclHandler(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @PyExpat_XML_SetEncoding(ptr noundef, ptr noundef) #1

declare zeroext i8 @PyExpat_XML_SetReparseDeferralEnabled(ptr noundef, i8 noundef zeroext) #1

declare zeroext i8 @PyExpat_XML_SetAllocTrackerActivationThreshold(ptr noundef, i64 noundef) #1

declare zeroext i8 @PyExpat_XML_SetAllocTrackerMaximumAmplification(ptr noundef, float noundef) #1

declare zeroext i8 @PyExpat_XML_SetBillionLaughsAttackProtectionActivationThreshold(ptr noundef, i64 noundef) #1

declare zeroext i8 @PyExpat_XML_SetBillionLaughsAttackProtectionMaximumAmplification(ptr noundef, float noundef) #1

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @pyexpat_capsule_destructor(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.92) #8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.252) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xmlparse_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #8
  %i.a = load ptr, ptr @handler_info, align 16, !tbaa !46
  %.not15.i.i = icmp eq ptr %i.a, null
  br i1 %.not15.i.i, label %clear_handlers.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 80
  %i.c = getelementptr i8, ptr %0, i64 16
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %Py_DECREF.exit.us.i.i, %.lr.ph.i.i
  %.016.us.i.i = phi i64 [ %i.m, %Py_DECREF.exit.us.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.d = getelementptr [64 x i8], ptr @handler_info, i64 %.016.us.i.i
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.016.us.i.i ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  %.not14.us.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.us.i.i, label %Py_DECREF.exit.us.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  store ptr null, ptr %i.f, align 8, !tbaa !19
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not.i.us.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i.us.i.i, label %bb.c, label %Py_DECREF.exit.us.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !18
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %Py_DECREF.exit.us.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #8, !inline_history !81
  br label %Py_DECREF.exit.us.i.i

Py_DECREF.exit.us.i.i:                            ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.split.us.i.i
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.l = getelementptr i8, ptr %i.d, i64 8
  %.val.us.i.i = load ptr, ptr %i.l, align 8, !tbaa !73
  tail call void %.val.us.i.i(ptr noundef %i.k, ptr noundef null) #8, !inline_history !133
  %i.m = add i64 %.016.us.i.i, 1                  ; 2 uses
  %i.n = getelementptr [64 x i8], ptr @handler_info, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !46
  %.not.us.i.i = icmp eq ptr %i.o, null
  br i1 %.not.us.i.i, label %clear_handlers.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !51

clear_handlers.exit.i:                            ; preds = %Py_DECREF.exit.us.i.i, %bb.a
  %i.p = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 4 uses
  %.not.i29 = icmp eq ptr %i.q, null
  br i1 %.not.i29, label %xmlparse_clear.exit, label %bb.e

bb.e:                                             ; preds = %clear_handlers.exit.i
  store ptr null, ptr %i.p, align 8, !tbaa !19
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i, label %bb.f, label %xmlparse_clear.exit

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !18
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %xmlparse_clear.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #8
  br label %xmlparse_clear.exit

xmlparse_clear.exit:                              ; preds = %clear_handlers.exit.i, %bb.e, %bb.f, %bb.g
  %i.u = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %xmlparse_clear.exit
  tail call void @PyExpat_XML_ParserFree(ptr noundef nonnull %i.v) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %xmlparse_clear.exit
  store ptr null, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 4 uses
  %.not23 = icmp eq ptr %i.x, null
  br i1 %.not23, label %Py_DECREF.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.w, align 8, !tbaa !19
  %i.y = load i32, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %.not.i26 = icmp sgt i32 %i.y, -1
  br i1 %.not.i26, label %bb.k, label %Py_DECREF.exit27

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !18
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %Py_DECREF.exit27

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.x) #8
  br label %Py_DECREF.exit27

Py_DECREF.exit27:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ab = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %.not24 = icmp eq ptr %i.ac, null
  br i1 %.not24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit27
  tail call void @PyMem_Free(ptr noundef nonnull %i.ac) #8
  store ptr null, ptr %i.ab, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %Py_DECREF.exit27
  %i.ad = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 2 uses
  %.not25 = icmp eq ptr %i.ae, null
  br i1 %.not25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @PyMem_Free(ptr noundef nonnull %i.ae) #8
  store ptr null, ptr %i.ad, align 8, !tbaa !33
  br label %bb.p
end_hunk_0
begin_hunk_1_@pyexpat_xmlparser_ParseFile:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.i = call ptr @PyType_GetModuleState(ptr noundef %1) #8 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = call i32 @PyObject_GetOptionalAttr(ptr noundef %i.h, ptr noundef %i.k, ptr noundef nonnull %i.a) #8
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %pyexpat_xmlparser_ParseFile_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %get_parse_result.exit.preheader.i

get_parse_result.exit.preheader.i:                ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 16         ; 4 uses
  br label %get_parse_result.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.117) #8
  br label %pyexpat_xmlparser_ParseFile_impl.exit

get_parse_result.exit.i:                          ; preds = %bb.ad, %get_parse_result.exit.preheader.i
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.s = call ptr @PyExpat_XML_GetBuffer(ptr noundef %i.r, i32 noundef 2048) #8 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  br i1 %i.t, label %bb.e, label %bb.j

bb.e:                                             ; preds = %get_parse_result.exit.i
  %.not.i25.i = icmp eq ptr %i.u, null
  br i1 %.not.i25.i, label %Py_XDECREF.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.i.i, label %bb.g, label %Py_XDECREF.exit.i

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !18
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %Py_XDECREF.exit.i

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.u) #8
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.y = call ptr @PyErr_Occurred() #8
  %.not.i26.i = icmp eq ptr %i.y, null
  br i1 %.not.i26.i, label %bb.i, label %pyexpat_xmlparser_ParseFile_impl.exit

bb.i:                                             ; preds = %Py_XDECREF.exit.i
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.aa = call i32 @PyExpat_XML_GetErrorCode(ptr noundef %i.z) #8
  %.val.i.i = load ptr, ptr %i.p, align 8, !tbaa !44 ; 2 uses
  %i.ab = call i64 @PyExpat_XML_GetCurrentLineNumber(ptr noundef %.val.i.i) #8
  %i.ac = call i64 @PyExpat_XML_GetCurrentColumnNumber(ptr noundef %.val.i.i) #8
  call fastcc void @set_xml_error(ptr noundef readonly %i.i, i32 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef null)
  br label %pyexpat_xmlparser_ParseFile_impl.exit

bb.j:                                             ; preds = %get_parse_result.exit.i
  %i.ad = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef %i.u, ptr noundef nonnull @.str.118, i32 noundef 2048) #8 ; 12 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %readinst.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %.val23.i.i = load ptr, ptr %i.af, align 8, !tbaa !24 ; 3 uses
  %i.ag = getelementptr i8, ptr %.val23.i.i, i64 168
  %.val24.i.i = load i64, ptr %i.ag, align 8, !tbaa !25
  %i.ah = and i64 %.val24.i.i, 134217728
  %.not.i27.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i27.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %i.ad, i64 32
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %.not.i28.i.i = icmp eq ptr %.val23.i.i, @PyByteArray_Type
  br i1 %.not.i28.i.i, label %PyObject_TypeCheck.exit.thread.i.i, label %PyObject_TypeCheck.exit.i.i

PyObject_TypeCheck.exit.i.i:                      ; preds = %bb.m
  %i.aj = call i32 @PyType_IsSubtype(ptr noundef %.val23.i.i, ptr noundef nonnull @PyByteArray_Type) #8
  %.not31.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not31.i.i, label %bb.n, label %PyObject_TypeCheck.exit.thread.i.i

PyObject_TypeCheck.exit.thread.i.i:               ; preds = %PyObject_TypeCheck.exit.i.i, %bb.m
  %i.ak = getelementptr i8, ptr %i.ad, i64 40
  %.val26.i.i = load ptr, ptr %i.ak, align 8, !tbaa !140
  br label %bb.o

bb.n:                                             ; preds = %PyObject_TypeCheck.exit.i.i
  %i.al = getelementptr i8, ptr %i.ad, i64 8
  %i.am = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !19
  %.val.i29.i = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = getelementptr i8, ptr %.val.i29.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !142
  %i.ap = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.am, ptr noundef nonnull @.str.119, ptr noundef %i.ao) #8 ; 0 uses
  br label %bb.t

bb.o:                                             ; preds = %PyObject_TypeCheck.exit.thread.i.i, %bb.l
  %.0.i.i = phi ptr [ %i.ai, %bb.l ], [ %.val26.i.i, %PyObject_TypeCheck.exit.thread.i.i ]
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  %.val27.i.i = load i64, ptr %i.aq, align 8, !tbaa !20 ; 4 uses
  %i.ar = icmp sgt i64 %.val27.i.i, 2048
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  %i.at = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.as, ptr noundef nonnull @.str.120, i32 noundef 2048, i64 noundef %.val27.i.i) #8 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %.0.i.i, i64 %.val27.i.i, i1 false)
  %i.au = load i32, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %.not.i.i28.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i.i28.i, label %bb.r, label %readinst.exit.i

bb.r:                                             ; preds = %bb.q
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.ad, align 8, !tbaa !18
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.s, label %readinst.exit.i

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #8
  br label %readinst.exit.i

bb.t:                                             ; preds = %bb.p, %bb.n
  %i.ax = load i32, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i.i.i.i, label %bb.u, label %readinst.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.ad, align 8, !tbaa !18
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.v, label %readinst.exit.thread.i

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #8
  br label %readinst.exit.thread.i

readinst.exit.i:                                  ; preds = %bb.s, %bb.r, %bb.q
  %i.ba = trunc i64 %.val27.i.i to i32            ; 3 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %readinst.exit.thread.i, label %bb.y

readinst.exit.thread.i:                           ; preds = %readinst.exit.i, %bb.j, %bb.v, %bb.u, %bb.t
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bd, -1
  br i1 %.not.i.i, label %bb.w, label %pyexpat_xmlparser_ParseFile_impl.exit

bb.w:                                             ; preds = %readinst.exit.thread.i
  %i.be = add nsw i32 %i.bd, -1                   ; 2 uses
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !18
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.x, label %pyexpat_xmlparser_ParseFile_impl.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #8
  br label %pyexpat_xmlparser_ParseFile_impl.exit

bb.y:                                             ; preds = %readinst.exit.i
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.bh = icmp eq i32 %i.ba, 0                    ; 2 uses
  %i.bi = zext i1 %i.bh to i32
  %i.bj = call i32 @PyExpat_XML_ParseBuffer(ptr noundef %i.bg, i32 noundef %i.ba, i32 noundef %i.bi) #8 ; 2 uses
  %i.bk = call ptr @PyErr_Occurred() #8
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %.not.i30.i = icmp eq ptr %i.bl, null
  br i1 %.not.i30.i, label %pyexpat_xmlparser_ParseFile_impl.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %.not.i.i31.i = icmp sgt i32 %i.bm, -1
  br i1 %.not.i.i31.i, label %bb.ab, label %pyexpat_xmlparser_ParseFile_impl.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !18
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ac, label %pyexpat_xmlparser_ParseFile_impl.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.bl) #8
  br label %pyexpat_xmlparser_ParseFile_impl.exit

bb.ad:                                            ; preds = %bb.y
  %i.bp = icmp eq i32 %i.bj, 0
  %or.cond.i = or i1 %i.bh, %i.bp
  %cond.fr.i = freeze i1 %or.cond.i
  br i1 %cond.fr.i, label %bb.ae, label %get_parse_result.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %.not.i34.i = icmp eq ptr %i.bq, null
  br i1 %.not.i34.i, label %Py_XDECREF.exit37.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %.not.i.i35.i = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i35.i, label %bb.ag, label %Py_XDECREF.exit37.i

bb.ag:                                            ; preds = %bb.af
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !18
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ah, label %Py_XDECREF.exit37.i

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.bq) #8
  br label %Py_XDECREF.exit37.i

Py_XDECREF.exit37.i:                              ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.bu = call fastcc ptr @get_parse_result(ptr noundef %i.i, ptr noundef nonnull %0, i32 noundef %i.bj)
  br label %pyexpat_xmlparser_ParseFile_impl.exit

pyexpat_xmlparser_ParseFile_impl.exit:            ; preds = %.thread, %bb.d, %Py_XDECREF.exit.i, %bb.i, %readinst.exit.thread.i, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab, %bb.ac, %Py_XDECREF.exit37.i
  %.2.i = phi ptr [ %i.bu, %Py_XDECREF.exit37.i ], [ null, %bb.d ], [ null, %.thread ], [ null, %bb.i ], [ null, %bb.x ], [ null, %Py_XDECREF.exit.i ], [ null, %readinst.exit.thread.i ], [ null, %bb.w ], [ null, %bb.z ], [ null, %bb.aa ], [ null, %bb.ab ], [ null, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %pyexpat_xmlparser_ParseFile_impl.exit
  %.0 = phi ptr [ %.2.i, %pyexpat_xmlparser_ParseFile_impl.exit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_SetBase(ptr noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val10 = load i64, ptr %i.c, align 8, !tbaa !25
  %i.d = and i64 %.val10, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull %1) #8
  br label %pyexpat_xmlparser_SetBase_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #8 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %pyexpat_xmlparser_SetBase_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32
  %.not9 = icmp eq i64 %i.g, %i.h
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.7) #8
  br label %pyexpat_xmlparser_SetBase_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val11 = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.k = call i32 @PyExpat_XML_SetBase(ptr noundef %.val11, ptr noundef nonnull %i.e) #8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.g, label %pyexpat_xmlparser_SetBase_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.l = call ptr @PyErr_NoMemory() #8
  br label %pyexpat_xmlparser_SetBase_impl.exit

pyexpat_xmlparser_SetBase_impl.exit:              ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.b ], [ %i.l, %bb.g ], [ @_Py_NoneStruct, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_GetBase(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = tail call ptr @PyExpat_XML_GetBase(ptr noundef %.val) #8 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %pyexpat_xmlparser_GetBase_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #9
  %i.e = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noundef nonnull @.str.42) #8
  br label %pyexpat_xmlparser_GetBase_impl.exit

pyexpat_xmlparser_GetBase_impl.exit:              ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.e, %bb.b ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_GetInputContext(ptr noundef readonly captures(none) %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %pyexpat_xmlparser_GetInputContext_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = call ptr @PyExpat_XML_GetInputContext(ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %i.k = load i32, ptr %i.b, align 4, !tbaa !6
  %i.l = sub i32 %i.k, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.j, i64 noundef %i.m) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.c ], [ @_Py_NoneStruct, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %pyexpat_xmlparser_GetInputContext_impl.exit

pyexpat_xmlparser_GetInputContext_impl.exit:      ; preds = %bb.a, %bb.d
  %.1.i = phi ptr [ %.0.i, %bb.d ], [ @_Py_NoneStruct, %bb.a ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @pyexpat_xmlparser_ExternalEntityParserCreate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = icmp eq ptr %4, null
  %i.e = add i64 %3, -1
  %i.f = icmp ult i64 %i.e, 2
  %or.cond3 = and i1 %i.d, %i.f
  %i.g = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.g, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @pyexpat_xmlparser_ExternalEntityParserCreate._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 4 uses
  %i.k = icmp eq ptr %i.j, @_Py_NoneStruct
  br i1 %i.k, label %bb.i, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val46 = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr i8, ptr %.val46, i64 168
  %.val48 = load i64, ptr %i.m, align 8, !tbaa !25
  %i.n = and i64 %.val48, 268435456
  %.not41 = icmp eq i64 %i.n, 0
  br i1 %.not41, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.o = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.j, ptr noundef nonnull %i.b) #8 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread50, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #9
  %i.r = load i64, ptr %i.b, align 8, !tbaa !32
  %.not42 = icmp eq i64 %i.q, %i.r
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !19
  call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.7) #8
  br label %.thread50

.thread50:                                        ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %pyexpat_xmlparser_ExternalEntityParserCreate_impl.exit

bb.g:                                             ; preds = %bb.e
end_hunk_1
