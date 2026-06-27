inline.NumInlined: 169
inline.NumDeleted: 61
begin_hunk_0_@add_main_module:bb.a
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %Py_XDECREF.exit

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #23
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  br i1 %.not24, label %Py_DECREF.exit, label %bb.r

bb.r:                                             ; preds = %Py_XDECREF.exit
  %i.au = call ptr @_PyImport_GetImportlibLoader(ptr noundef %1, ptr noundef nonnull @.str.205) #23 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %0, align 8, !tbaa !192
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__.add_main_module, ptr %i.ax, align 8, !tbaa !194
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.206, ptr %i.ay, align 8, !tbaa !195
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.az, align 8, !tbaa !196
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ba, align 4
  br label %.critedge26

bb.t:                                             ; preds = %bb.r
  %i.bb = call i32 @PyDict_SetItemString(ptr noundef %i.i, ptr noundef nonnull @.str.203, ptr noundef nonnull %i.au) #23
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %0, align 8, !tbaa !192
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__.add_main_module, ptr %i.be, align 8, !tbaa !194
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.207, ptr %i.bf, align 8, !tbaa !195
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bg, align 8, !tbaa !196
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.bh, align 4
  br label %.critedge26

bb.v:                                             ; preds = %bb.t
  %i.bi = load i32, ptr %i.au, align 8, !tbaa !188 ; 2 uses
  %.not.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i, label %bb.w, label %Py_DECREF.exit

bb.w:                                             ; preds = %bb.v
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.au, align 8, !tbaa !188
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.x, label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.au) #23
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.x, %bb.w, %bb.v, %Py_XDECREF.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %.critedge26

.critedge26:                                      ; preds = %Py_DECREF.exit, %bb.u, %bb.s, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge26, %bb.i, %bb.g, %bb.b
  ret void
}

declare i32 @PySys_GetOptionalAttrString(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i64 @PyList_Size(ptr noundef) local_unnamed_addr #0

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #0

declare void @_PyErr_Print(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @init_import_site(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 32)) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.208) #23 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @__func__.init_import_site, ptr %i.d, align 8, !tbaa !194
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.209, ptr %i.e, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.g, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !188
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #23
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit, %bb.b
  ret void
}

declare i32 @PyImport_SetLazyImportsMode(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_stderr_warning_for_legacy_locale(i32 %.10640.val) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %.10640.val, 0
  br i1 %.not, label %_Py_LegacyLocaleDetected.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #23 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Py_LegacyLocaleDetected.exit.thread, label %sub_0.i

sub_0.i:                                          ; preds = %bb.b
  %i.c = load i8, ptr %i.a, align 1
  %.not12.i = icmp eq i8 %i.c, 67
  br i1 %.not12.i, label %.tail.i, label %_Py_LegacyLocaleDetected.exit

.tail.i:                                          ; preds = %sub_0.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_Py_LegacyLocaleDetected.exit.thread3, label %_Py_LegacyLocaleDetected.exit

_Py_LegacyLocaleDetected.exit:                    ; preds = %sub_0.i, %.tail.i
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.131) #24
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %_Py_LegacyLocaleDetected.exit.thread3, label %_Py_LegacyLocaleDetected.exit.thread

_Py_LegacyLocaleDetected.exit.thread3:            ; preds = %.tail.i, %_Py_LegacyLocaleDetected.exit
  tail call void (ptr, ...) @PySys_FormatStderr(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211) #23
  br label %_Py_LegacyLocaleDetected.exit.thread

_Py_LegacyLocaleDetected.exit.thread:             ; preds = %bb.b, %_Py_LegacyLocaleDetected.exit.thread3, %_Py_LegacyLocaleDetected.exit, %bb.a
  ret void
}

declare ptr @PyUnicode_FromWideChar(ptr noundef, i64 noundef) local_unnamed_addr #0

declare i32 @PyList_Insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @builtins_dict_watcher(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #18 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.c = getelementptr i8, ptr %i.b, i64 223443   ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !354   ; 2 uses
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i8 %i.d, 1
  store i8 %i.e, ptr %i.c, align 1, !tbaa !354
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

declare i32 @PyDict_Watch(i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @_Py_fstat_noraise(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_stdio(i32 %.224.val, ptr noundef nonnull %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @_Py_IsValidFD(i32 noundef %1) #23
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = icmp eq i32 %.224.val, 0                   ; 3 uses
  %7 = trunc nuw i32 %2 to i1                     ; 3 uses
  %or.cond = and i1 %6, %7                        ; 2 uses
  %not.or.cond = xor i1 %or.cond, true
  %. = sext i1 %not.or.cond to i32
  %.070 = select i1 %7, ptr @.str.190, ptr @.str.191
  %i.c = tail call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 94264), ptr noundef nonnull @.str.192, i32 noundef %1, ptr noundef nonnull %.070, i32 noundef %., ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_FalseStruct) #23 ; 19 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_XDECREF.exit164, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 96752)) #23 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit139, label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.c, align 8, !tbaa !188  ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.c, align 8, !tbaa !188
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %bb.e, %bb.d
  %.0100 = phi ptr [ %i.e, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.f ] ; 9 uses
  %i.j = tail call ptr @PyUnicode_FromString(ptr noundef %3) #23 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Py_DECREF.exit139, label %bb.g

bb.g:                                             ; preds = %_Py_NewRef.exit
  %i.l = tail call i32 @PyObject_SetAttr(ptr noundef nonnull %.0100, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 92600), ptr noundef nonnull %i.j) #23
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit139, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0100, ptr %i.a, align 8, !tbaa !287
  %i.n = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88392), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #23 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %Py_DECREF.exit139, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.n) #23 ; 2 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !188  ; 2 uses
  %.not.i144 = icmp sgt i32 %i.q, -1
  br i1 %.not.i144, label %bb.j, label %Py_DECREF.exit145

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.n, align 8, !tbaa !188
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %Py_DECREF.exit145

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #23
  br label %Py_DECREF.exit145

Py_DECREF.exit145:                                ; preds = %bb.i, %bb.j, %bb.k
  %i.t = icmp eq i32 %i.p, -1
  br i1 %i.t, label %Py_DECREF.exit139, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit145
  %_Py_TrueStruct._Py_FalseStruct = select i1 %6, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br i1 %6, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not123 = icmp eq i32 %i.p, 0
  br i1 %.not123, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !191
  %i.v = call i32 @fileno(ptr noundef %i.u) #23
  %i.w = icmp eq i32 %1, %i.v
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.071 = phi ptr [ @_Py_FalseStruct, %bb.o ], [ @_Py_TrueStruct, %bb.n ], [ @_Py_TrueStruct, %bb.m ]
  %i.x = load i32, ptr %.0100, align 8, !tbaa !188 ; 2 uses
  %.not.i142 = icmp sgt i32 %i.x, -1
  br i1 %.not.i142, label %bb.q, label %Py_DECREF.exit143

bb.q:                                             ; preds = %bb.p
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %.0100, align 8, !tbaa !188
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.r, label %Py_DECREF.exit143

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %.0100) #23
  br label %Py_DECREF.exit143

Py_DECREF.exit143:                                ; preds = %bb.r, %bb.q, %bb.p
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !188 ; 2 uses
  %.not.i140 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i140, label %bb.s, label %Py_DECREF.exit141

bb.s:                                             ; preds = %Py_DECREF.exit143
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.j, align 8, !tbaa !188
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.t, label %Py_DECREF.exit141

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #23
  br label %Py_DECREF.exit141

Py_DECREF.exit141:                                ; preds = %Py_DECREF.exit143, %bb.s, %bb.t
  %i.ad = call ptr @PyUnicode_FromWideChar(ptr noundef %4, i64 noundef -1) #23 ; 8 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.u, label %bb.w

bb.u:                                             ; preds = %Py_DECREF.exit141
  %i.af = load i32, ptr %i.c, align 8, !tbaa !188 ; 2 uses
  %.not.i138 = icmp sgt i32 %i.af, -1
  br i1 %.not.i138, label %bb.v, label %Py_XDECREF.exit164

bb.v:                                             ; preds = %bb.u
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.c, align 8, !tbaa !188
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %Py_XDECREF.exit164.sink.split, label %Py_XDECREF.exit164

bb.w:                                             ; preds = %Py_DECREF.exit141
  %i.ai = call ptr @PyUnicode_FromWideChar(ptr noundef %5, i64 noundef -1) #23 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !188 ; 2 uses
  %.not.i136 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i136, label %bb.y, label %Py_DECREF.exit137

bb.y:                                             ; preds = %bb.x
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %i.c, align 8, !tbaa !188
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.z, label %Py_DECREF.exit137

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #23
  br label %Py_DECREF.exit137

Py_DECREF.exit137:                                ; preds = %bb.x, %bb.y, %bb.z
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !188 ; 2 uses
  %.not.i134 = icmp sgt i32 %i.an, -1
  br i1 %.not.i134, label %bb.aa, label %Py_XDECREF.exit164

bb.aa:                                            ; preds = %Py_DECREF.exit137
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.ad, align 8, !tbaa !188
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %Py_XDECREF.exit164.sink.split, label %Py_XDECREF.exit164

bb.ab:                                            ; preds = %bb.w
  %i.aq = call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 61840), ptr noundef nonnull @.str.193, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.142, ptr noundef nonnull %.071, ptr noundef nonnull %_Py_TrueStruct._Py_FalseStruct) #23 ; 8 uses
  %i.ar = load i32, ptr %i.c, align 8, !tbaa !188 ; 2 uses
  %.not.i132 = icmp sgt i32 %i.ar, -1
  br i1 %.not.i132, label %bb.ac, label %Py_DECREF.exit133

bb.ac:                                            ; preds = %bb.ab
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.c, align 8, !tbaa !188
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.ad, label %Py_DECREF.exit133

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %i.c) #23
  br label %Py_DECREF.exit133

Py_DECREF.exit133:                                ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.au = load i32, ptr %i.ad, align 8, !tbaa !188 ; 2 uses
  %.not.i130 = icmp sgt i32 %i.au, -1
  br i1 %.not.i130, label %bb.ae, label %Py_DECREF.exit131

bb.ae:                                            ; preds = %Py_DECREF.exit133
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.ad, align 8, !tbaa !188
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.af, label %Py_DECREF.exit131

bb.af:                                            ; preds = %bb.ae
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #23
  br label %Py_DECREF.exit131

Py_DECREF.exit131:                                ; preds = %Py_DECREF.exit133, %bb.ae, %bb.af
  %i.ax = load i32, ptr %i.ai, align 8, !tbaa !188 ; 2 uses
  %.not.i128 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i128, label %bb.ag, label %Py_DECREF.exit129

bb.ag:                                            ; preds = %Py_DECREF.exit131
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.ai, align 8, !tbaa !188
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.ah, label %Py_DECREF.exit129

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #23
  br label %Py_DECREF.exit129

Py_DECREF.exit129:                                ; preds = %Py_DECREF.exit131, %bb.ag, %bb.ah
  %i.ba = icmp eq ptr %i.aq, null
  br i1 %i.ba, label %Py_XDECREF.exit164, label %bb.ai

bb.ai:                                            ; preds = %Py_DECREF.exit129
  %.str.194..str.195 = select i1 %7, ptr @.str.194, ptr @.str.195
  %i.bb = call ptr @PyUnicode_FromString(ptr noundef nonnull %.str.194..str.195) #23 ; 8 uses
  %.not125 = icmp eq ptr %i.bb, null
  br i1 %.not125, label %Py_XDECREF.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bc = call i32 @PyObject_SetAttr(ptr noundef nonnull %i.aq, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 91928), ptr noundef nonnull %i.bb) #23
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %Py_XDECREF.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.be = load i32, ptr %i.bb, align 8, !tbaa !188 ; 2 uses
  %.not.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i, label %bb.al, label %Py_DECREF.exit

bb.al:                                            ; preds = %bb.ak
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.bb, align 8, !tbaa !188
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.am, label %Py_DECREF.exit

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %i.bb) #23
  br label %Py_DECREF.exit

Py_DECREF.exit139:                                ; preds = %bb.d, %bb.g, %_Py_NewRef.exit, %bb.h, %Py_DECREF.exit145
  %.1106 = phi ptr [ %i.j, %Py_DECREF.exit145 ], [ null, %bb.d ], [ null, %_Py_NewRef.exit ], [ %i.j, %bb.g ], [ %i.j, %bb.h ] ; 3 uses
  %.2 = phi ptr [ %.0100, %Py_DECREF.exit145 ], [ null, %bb.d ], [ %.0100, %_Py_NewRef.exit ], [ %.0100, %bb.g ], [ %.0100, %bb.h ] ; 3 uses
  %i.bh = load i32, ptr %i.c, align 8, !tbaa !188 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i.i, label %bb.an, label %Py_XDECREF.exit158

bb.an:                                            ; preds = %Py_DECREF.exit139
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.c, align 8, !tbaa !188
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %Py_XDECREF.exit158.sink.split, label %Py_XDECREF.exit158

Py_XDECREF.exit:                                  ; preds = %bb.aj, %bb.ai
  %i.bk = load i32, ptr %i.aq, align 8, !tbaa !188 ; 2 uses
  %.not.i.i157 = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i157, label %bb.ao, label %Py_XDECREF.exit158

bb.ao:                                            ; preds = %Py_XDECREF.exit
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.aq, align 8, !tbaa !188
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %Py_XDECREF.exit158.sink.split, label %Py_XDECREF.exit158

Py_XDECREF.exit158.sink.split:                    ; preds = %bb.ao, %bb.an
  %.sink = phi ptr [ %i.c, %bb.an ], [ %i.aq, %bb.ao ]
  %.1106614.ph = phi ptr [ %.1106, %bb.an ], [ %i.bb, %bb.ao ]
  %.2713.ph = phi ptr [ %.2, %bb.an ], [ null, %bb.ao ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #23
  br label %Py_XDECREF.exit158

Py_XDECREF.exit158:                               ; preds = %Py_XDECREF.exit158.sink.split, %bb.an, %Py_DECREF.exit139, %Py_XDECREF.exit, %bb.ao
  %.1106614 = phi ptr [ %i.bb, %bb.ao ], [ %.1106, %Py_DECREF.exit139 ], [ %i.bb, %Py_XDECREF.exit ], [ %.1106, %bb.an ], [ %.1106614.ph, %Py_XDECREF.exit158.sink.split ] ; 4 uses
  %.2713 = phi ptr [ null, %bb.ao ], [ %.2, %Py_DECREF.exit139 ], [ null, %Py_XDECREF.exit ], [ %.2, %bb.an ], [ %.2713.ph, %Py_XDECREF.exit158.sink.split ] ; 4 uses
  %.not.i159 = icmp eq ptr %.1106614, null
  br i1 %.not.i159, label %Py_XDECREF.exit161, label %bb.ap

bb.ap:                                            ; preds = %Py_XDECREF.exit158
  %i.bn = load i32, ptr %.1106614, align 8, !tbaa !188 ; 2 uses
  %.not.i.i160 = icmp sgt i32 %i.bn, -1
  br i1 %.not.i.i160, label %bb.aq, label %Py_XDECREF.exit161

bb.aq:                                            ; preds = %bb.ap
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %.1106614, align 8, !tbaa !188
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.ar, label %Py_XDECREF.exit161

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %.1106614) #23
  br label %Py_XDECREF.exit161

Py_XDECREF.exit161:                               ; preds = %Py_XDECREF.exit158, %bb.ap, %bb.aq, %bb.ar
  %.not.i162 = icmp eq ptr %.2713, null
  br i1 %.not.i162, label %Py_XDECREF.exit164, label %bb.as

bb.as:                                            ; preds = %Py_XDECREF.exit161
  %i.bq = load i32, ptr %.2713, align 8, !tbaa !188 ; 2 uses
  %.not.i.i163 = icmp sgt i32 %i.bq, -1
  br i1 %.not.i.i163, label %bb.at, label %Py_XDECREF.exit164

bb.at:                                            ; preds = %bb.as
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %.2713, align 8, !tbaa !188
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %Py_XDECREF.exit164.sink.split, label %Py_XDECREF.exit164

Py_XDECREF.exit164.sink.split:                    ; preds = %bb.at, %bb.aa, %bb.v
  %.sink52 = phi ptr [ %i.ad, %bb.aa ], [ %i.c, %bb.v ], [ %.2713, %bb.at ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink52) #23
  br label %Py_XDECREF.exit164

Py_XDECREF.exit164:                               ; preds = %Py_XDECREF.exit164.sink.split, %bb.b, %Py_DECREF.exit129, %bb.u, %bb.v, %Py_DECREF.exit137, %bb.aa, %Py_XDECREF.exit161, %bb.as, %bb.at
  %i.bt = load ptr, ptr @PyExc_OSError, align 8, !tbaa !287
  %i.bu = call i32 @PyErr_ExceptionMatches(ptr noundef %i.bt) #23
  %.not126 = icmp eq i32 %i.bu, 0
  br i1 %.not126, label %Py_DECREF.exit, label %bb.au

bb.au:                                            ; preds = %Py_XDECREF.exit164
  %i.bv = call i32 @_Py_IsValidFD(i32 noundef %1) #23
  %.not127 = icmp eq i32 %i.bv, 0
  br i1 %.not127, label %bb.av, label %Py_DECREF.exit

bb.av:                                            ; preds = %bb.au
  call void @PyErr_Clear() #23
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.am, %bb.al, %bb.ak, %Py_XDECREF.exit164, %bb.au, %bb.a, %bb.av
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.a ], [ @_Py_NoneStruct, %bb.av ], [ null, %Py_XDECREF.exit164 ], [ null, %bb.au ], [ %i.aq, %bb.ak ], [ %i.aq, %bb.al ], [ %i.aq, %bb.am ]
  ret ptr %.0
}

declare i32 @PySys_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @_PySys_SetAttr(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #0

declare ptr @_PyCodec_Lookup(ptr noundef) local_unnamed_addr #0

declare void @_PyErr_Clear(ptr noundef) local_unnamed_addr #0

declare i32 @_Py_IsValidFD(i32 noundef) local_unnamed_addr #0

declare ptr @_PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #0

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #0

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #0

declare void @PyErr_Clear() local_unnamed_addr #0

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @PyImport_AddModuleObject(ptr noundef) local_unnamed_addr #0

declare i32 @PyDict_ContainsString(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @PyDict_SetItemString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @PyDict_GetItemStringRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @_PyImport_GetImportlibLoader(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @PySys_FormatStderr(ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @flush_std_files() unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = call i32 @PySys_GetOptionalAttr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 100896), ptr noundef nonnull %i.a) #23
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread25, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !287  ; 4 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %i.d, @_Py_NoneStruct
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.213) #23 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.g) #23 ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !188  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i.i, label %bb.e, label %Py_DECREF.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.g, align 8, !tbaa !188
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %Py_DECREF.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #23
end_hunk_0
