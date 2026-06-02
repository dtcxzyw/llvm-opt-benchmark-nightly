inline.NumInlined: 64
inline.NumDeleted: 26
begin_hunk_0_@pymain_run_file:bb.a
  tail call void @PyErr_Clear() #13
  %i.v = tail call ptr @__errno_location() #17
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 2 uses
  %i.x = tail call ptr @strerror(i32 noundef %i.w) #13
  tail call void (ptr, ...) @PySys_FormatStderr(ptr noundef nonnull @.str.21, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, i32 noundef %i.w, ptr noundef %i.x) #13
  br label %pymain_run_file_obj.exit

bb.m:                                             ; preds = %bb.k
  %.not.i19 = icmp eq i32 %i.o, 0
  br i1 %.not.i19, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %.preheader.i
  %i.y = tail call i32 @getc(ptr noundef nonnull %i.t)
  switch i32 %i.y, label %.preheader.i [
    i32 -1, label %.loopexit.i
    i32 10, label %bb.n
  ]

bb.n:                                             ; preds = %.preheader.i
  %i.z = tail call i32 @ungetc(i32 noundef 10, ptr noundef nonnull %i.t) ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.aa = tail call i32 @fileno(ptr noundef nonnull %i.t) #13
  %i.ab = call i32 @_Py_fstat_noraise(i32 noundef %i.aa, ptr noundef nonnull %1) #13
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.loopexit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !220
  %i.af = and i32 %i.ae, 61440
  %i.ag = icmp eq i32 %i.af, 16384
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @PySys_FormatStderr(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e) #13
  %i.ah = call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.o, %.loopexit.i
  %i.ai = call i32 @Py_MakePendingCalls() #13
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.al = call i32 @_Py_HandleSystemExitAndKeyboardInterrupt(ptr noundef nonnull %i.a) #13
  %.not.i.i21.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i21.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load i32, ptr %i.a, align 4, !tbaa !7
  br label %pymain_exit_err_print.exit23.i

bb.t:                                             ; preds = %bb.r
  call void @PyErr_Print() #13
  br label %pymain_exit_err_print.exit23.i

pymain_exit_err_print.exit23.i:                   ; preds = %bb.t, %bb.s
  %.0.i22.i = phi i32 [ 1, %bb.t ], [ %i.am, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 64424509440, ptr %2, align 8
  %i.an = call i32 @_PyRun_AnyFileObject(ptr noundef nonnull %i.t, ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull %2) #13
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %pymain_exit_err_print.exit23.i, %bb.p
  %.0.i = phi i32 [ 1, %bb.p ], [ %.0.i22.i, %pymain_exit_err_print.exit23.i ], [ %i.ap, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %pymain_run_file_obj.exit

pymain_run_file_obj.exit:                         ; preds = %pymain_exit_err_print.exit.i, %bb.l, %bb.v
  %.2.i = phi i32 [ %.0.i.i, %pymain_exit_err_print.exit.i ], [ 2, %bb.l ], [ %.0.i, %bb.v ] ; 3 uses
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !191 ; 2 uses
  %.not.i13 = icmp sgt i32 %i.aq, -1
  br i1 %.not.i13, label %bb.w, label %Py_DECREF.exit14

bb.w:                                             ; preds = %pymain_run_file_obj.exit
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !191
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.x, label %Py_DECREF.exit14

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #13
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %pymain_run_file_obj.exit, %bb.w, %bb.x
  %i.at = load i32, ptr %i.i, align 8, !tbaa !191 ; 2 uses
  %.not.i = icmp sgt i32 %i.at, -1
  br i1 %.not.i, label %bb.y, label %Py_DECREF.exit

bb.y:                                             ; preds = %Py_DECREF.exit14
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.i, align 8, !tbaa !191
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.i) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.z, %bb.y, %Py_DECREF.exit14, %Py_DECREF.exit16, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %Py_DECREF.exit16 ], [ %.2.i, %Py_DECREF.exit14 ], [ %.2.i, %bb.y ], [ %.2.i, %bb.z ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pymain_run_stdin(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.PyCompilerFlags, align 8    ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.PyCompilerFlags, align 8    ; 4 uses
  %i.e = load ptr, ptr @stdin, align 8, !tbaa !196
  %i.f = tail call i32 @fileno(ptr noundef %i.e) #13
  %i.g = tail call i32 @isatty(i32 noundef %i.f) #13
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %stdin_is_interactive.exit, label %stdin_is_interactive.exit.thread

stdin_is_interactive.exit:                        ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 192
  %i.i = load i32, ptr %i.h, align 8, !tbaa !203
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.o, label %stdin_is_interactive.exit.thread

stdin_is_interactive.exit.thread:                 ; preds = %bb.a, %stdin_is_interactive.exit
  %i.j = getelementptr i8, ptr %0, i64 188
  store i32 0, ptr %i.j, align 4, !tbaa !193
  store i32 0, ptr @Py_InspectFlag, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.k, align 8, !tbaa !205 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %.not.i12 = icmp eq i32 %.val, 0
  br i1 %.not.i12, label %pymain_run_startup.exit.thread, label %bb.b

bb.b:                                             ; preds = %stdin_is_interactive.exit.thread
  %i.l = tail call ptr @_Py_GetEnv(i32 noundef %.val, ptr noundef nonnull @.str.26) #13 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %pymain_run_startup.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef nonnull %i.l) #13 ; 10 uses
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  br i1 %i.o, label %.split19.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.n) #13
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.split19.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @Py_fopen(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.28) #13 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__errno_location() #17    ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  tail call void @PyErr_Clear() #13
  tail call void (ptr, ...) @PySys_WriteStderr(ptr noundef nonnull @.str.29) #13
  store i32 %i.u, ptr %i.t, align 4, !tbaa !7
  %i.v = load ptr, ptr @PyExc_OSError, align 8, !tbaa !197
  %i.w = tail call ptr @PyErr_SetFromErrnoWithFilenameObjects(ptr noundef %i.v, ptr noundef nonnull %i.n, ptr noundef null) #13 ; 0 uses
  br label %.split19.i

bb.g:                                             ; preds = %bb.e
  store i64 64424509440, ptr %1, align 8
  %i.x = call i32 @_PyRun_SimpleFileObject(ptr noundef nonnull %i.r, ptr noundef nonnull %i.n, i32 noundef 0, ptr noundef nonnull %1) #13 ; 0 uses
  call void @PyErr_Clear() #13
  %i.y = call i32 @fclose(ptr noundef nonnull %i.r) ; 0 uses
  %i.z = load i32, ptr %i.n, align 8, !tbaa !191  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.i.i, label %bb.h, label %pymain_run_startup.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !191
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %Py_XDECREF.exit.sink.split.i, label %pymain_run_startup.exit.thread

.split19.i:                                       ; preds = %bb.f, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ac = call i32 @_Py_HandleSystemExitAndKeyboardInterrupt(ptr noundef nonnull %i.c) #13
  %.not.i24.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i24.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.split19.i
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !7
  store i32 %i.ad, ptr %i.d, align 4, !tbaa !7
  br label %pymain_err_print.exit.i

bb.j:                                             ; preds = %.split19.i
  call void @PyErr_Print() #13
  br label %pymain_err_print.exit.i

pymain_err_print.exit.i:                          ; preds = %bb.j, %bb.i
  %.0.i.i = phi i32 [ 1, %bb.i ], [ 0, %bb.j ]    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br i1 %i.o, label %pymain_run_startup.exit, label %bb.k

bb.k:                                             ; preds = %pymain_err_print.exit.i
  %i.ae = load i32, ptr %i.n, align 8, !tbaa !191 ; 2 uses
  %.not.i.i26.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i26.i, label %bb.l, label %pymain_run_startup.exit

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.n, align 8, !tbaa !191
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %Py_XDECREF.exit.sink.split.i, label %pymain_run_startup.exit

Py_XDECREF.exit.sink.split.i:                     ; preds = %bb.l, %bb.h
  %.1.ph.i = phi i32 [ 0, %bb.h ], [ %.0.i.i, %bb.l ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #13
  br label %pymain_run_startup.exit

pymain_run_startup.exit.thread:                   ; preds = %stdin_is_interactive.exit.thread, %bb.b, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.m

pymain_run_startup.exit:                          ; preds = %pymain_err_print.exit.i, %bb.k, %bb.l, %Py_XDECREF.exit.sink.split.i
  %.1.i = phi i32 [ %.1.ph.i, %Py_XDECREF.exit.sink.split.i ], [ %.0.i.i, %pymain_err_print.exit.i ], [ %.0.i.i, %bb.l ], [ %.0.i.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not7 = icmp eq i32 %.1.i, 0
  br i1 %.not7, label %bb.m, label %.thread

bb.m:                                             ; preds = %pymain_run_startup.exit.thread, %pymain_run_startup.exit
  %i.ah = call fastcc i32 @pymain_run_interactive_hook(ptr noundef %i.d)
  %.not8 = icmp eq i32 %i.ah, 0
  br i1 %.not8, label %bb.n, label %.thread

.thread:                                          ; preds = %pymain_run_startup.exit, %bb.m
  %.0.ph = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.aa

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %stdin_is_interactive.exit
  %i.ai = call i32 @Py_MakePendingCalls() #13
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ak = call i32 @_Py_HandleSystemExitAndKeyboardInterrupt(ptr noundef nonnull %i.b) #13
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.b, align 4, !tbaa !7
  br label %pymain_exit_err_print.exit

bb.r:                                             ; preds = %bb.p
  call void @PyErr_Print() #13
  br label %pymain_exit_err_print.exit

pymain_exit_err_print.exit:                       ; preds = %bb.q, %bb.r
  %.0.i = phi i32 [ 1, %bb.r ], [ %i.al, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.aa

bb.s:                                             ; preds = %bb.o
  %i.am = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.23, ptr noundef null) #13
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ao = call i32 @_Py_HandleSystemExitAndKeyboardInterrupt(ptr noundef nonnull %i.a) #13
  %.not.i.i14 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i14, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !7
  br label %pymain_exit_err_print.exit17

bb.v:                                             ; preds = %bb.t
  call void @PyErr_Print() #13
  br label %pymain_exit_err_print.exit17

pymain_exit_err_print.exit17:                     ; preds = %bb.u, %bb.v
  %.0.i16 = phi i32 [ 1, %bb.v ], [ %i.ap, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.aa

bb.w:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr @stdin, align 8, !tbaa !196
  %i.ar = call i32 @fileno(ptr noundef %i.aq) #13
  %i.as = call i32 @isatty(i32 noundef %i.ar) #13
  %.not9 = icmp eq i32 %i.as, 0
  br i1 %.not9, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = getelementptr i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !205
  %i.av = call ptr @_Py_GetEnv(i32 noundef %i.au, ptr noundef nonnull @.str.24) #13
  %.not10 = icmp eq ptr %i.av, null
  br i1 %.not10, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 64424509440, ptr %2, align 8
  %i.aw = load ptr, ptr @stdin, align 8, !tbaa !196
  %i.ax = call i32 @PyRun_AnyFileExFlags(ptr noundef %i.aw, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull %2) #13
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ba = call fastcc i32 @pymain_start_pyrepl(i32 noundef 0)
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z, %bb.y, %pymain_exit_err_print.exit17, %pymain_exit_err_print.exit
  %.1 = phi i32 [ %.0.i, %pymain_exit_err_print.exit ], [ %.0.i16, %pymain_exit_err_print.exit17 ], [ %i.az, %bb.y ], [ %i.ba, %bb.z ], [ %.0.ph, %.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pymain_exit_err_print() unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @_Py_HandleSystemExitAndKeyboardInterrupt(ptr noundef nonnull %i.a) #13
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  br label %pymain_err_print.exit

bb.c:                                             ; preds = %bb.a
  call void @PyErr_Print() #13
  br label %pymain_err_print.exit

pymain_err_print.exit:                            ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ %i.c, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare void @_PyInterpreterState_SetNotRunningMain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

declare ptr @PyUnicode_FromWideChar(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyImport_GetImporter(ptr noundef) local_unnamed_addr #2

declare void @PySys_WriteStderr(ptr noundef, ...) local_unnamed_addr #2

declare i32 @_Py_HandleSystemExitAndKeyboardInterrupt(ptr noundef) local_unnamed_addr #2

declare void @PyErr_Print() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #2

declare void @PyErr_Clear() local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

declare ptr @PyDict_GetItemWithError(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyList_Insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @Py_GetVersion() local_unnamed_addr #2

declare ptr @Py_GetPlatform() local_unnamed_addr #2

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @_PyUnicode_Dedent(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsUTF8String(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @_PyRun_SimpleStringFlagsWithName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #2

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #2

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Py_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PySys_FormatStderr(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @_Py_fstat_noraise(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @Py_MakePendingCalls() local_unnamed_addr #2

declare i32 @_PyRun_AnyFileObject(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pymain_run_interactive_hook(ptr noundef nonnull writeonly captures(none) %0) unnamed_addr #0 {
bb.a:
end_hunk_0
