inline.NumInlined: 130
inline.NumDeleted: 19
begin_hunk_0_@test_audit_tuple:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.333, ptr noundef nonnull @.str.202, i32 noundef 1352) ; 0 uses
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.e = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.334, i32 noundef 444) #19 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @PySys_AuditTuple(ptr noundef nonnull @.str.325, ptr noundef nonnull %i.e) #19
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.333, ptr noundef nonnull @.str.202, i32 noundef 1359) ; 0 uses
  br label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.j = call ptr @PyErr_Occurred() #19
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.333, ptr noundef nonnull @.str.202, i32 noundef 1360) ; 0 uses
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.l = load i64, ptr %i.a, align 8, !tbaa !84
  %i.m = icmp eq i64 %i.l, 444
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.333, ptr noundef nonnull @.str.202, i32 noundef 1361) ; 0 uses
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  %i.o = load i32, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %.not.i11 = icmp sgt i32 %i.o, -1
  br i1 %.not.i11, label %bb.k, label %Py_DECREF.exit12

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.e, align 8, !tbaa !11
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.l, label %Py_DECREF.exit12

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #19
  br label %Py_DECREF.exit12

Py_DECREF.exit12:                                 ; preds = %bb.j, %bb.k, %bb.l
  %i.r = call ptr @PyLong_FromLong(i64 noundef 555) #19 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.x, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit12
  %i.t = call i32 @PySys_AuditTuple(ptr noundef nonnull @.str.325, ptr noundef nonnull %i.r) #19
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.333, ptr noundef nonnull @.str.202, i32 noundef 1369) ; 0 uses
  br label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.w = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !21
  %i.x = call i32 @PyErr_ExceptionMatches(ptr noundef %i.w) #19
  %.not9 = icmp eq i32 %i.x, 0
  br i1 %.not9, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.333, ptr noundef nonnull @.str.202, i32 noundef 1370) ; 0 uses
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  call void @PyErr_Clear() #19
  %i.z = load i32, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !11
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.r) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.r, %bb.s
  %i.ac = call i32 @PySys_AuditTuple(ptr noundef nonnull @.str.335, ptr noundef null) #19
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.u, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.333, ptr noundef nonnull @.str.202, i32 noundef 1375) ; 0 uses
  br label %bb.y

bb.u:                                             ; preds = %Py_DECREF.exit
  %i.af = call ptr @PyErr_Occurred() #19
  %.not10 = icmp eq ptr %i.af, null
  br i1 %.not10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.333, ptr noundef nonnull @.str.202, i32 noundef 1376) ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  call void @Py_Finalize() #19
  br label %bb.y

bb.x:                                             ; preds = %Py_DECREF.exit12, %bb.c
  call void @PyErr_Print() #19
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %bb.g, %bb.i, %bb.n, %bb.p, %bb.t, %bb.v, %bb.w, %bb.x, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 1, %bb.x ], [ 11, %bb.g ], [ 31, %bb.v ], [ 0, %bb.w ], [ 30, %bb.t ], [ 21, %bb.p ], [ 20, %bb.n ], [ 12, %bb.i ], [ 10, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @test_audit_subinterpreter() #0 {
bb.a:
  store i32 0, ptr @Py_IgnoreEnvironmentFlag, align 4, !tbaa !7
  %i.a = tail call i32 @PySys_AddAuditHook(ptr noundef nonnull @_audit_subinterpreter_hook, ptr noundef null) #19 ; 0 uses
  tail call fastcc void @_testembed_initialize()
  %i.b = tail call ptr @PyThreadState_Get() #19   ; 3 uses
  %i.c = tail call ptr @Py_NewInterpreter() #19
  tail call void @Py_EndInterpreter(ptr noundef %i.c) #19
  %i.d = tail call ptr @PyThreadState_Swap(ptr noundef %i.b) #19 ; 0 uses
  %i.e = tail call ptr @Py_NewInterpreter() #19
  tail call void @Py_EndInterpreter(ptr noundef %i.e) #19
  %i.f = tail call ptr @PyThreadState_Swap(ptr noundef %i.b) #19 ; 0 uses
  %i.g = tail call ptr @Py_NewInterpreter() #19
  tail call void @Py_EndInterpreter(ptr noundef %i.g) #19
  %i.h = tail call ptr @PyThreadState_Swap(ptr noundef %i.b) #19 ; 0 uses
  tail call void @Py_Finalize() #19
  %i.i = load volatile i32, ptr @_audit_subinterpreter_interpreter_count, align 4, !tbaa !7
  switch i32 %i.i, label %bb.c [
    i32 3, label %bb.d
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load volatile i32, ptr @_audit_subinterpreter_interpreter_count, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.03 = phi i32 [ %i.j, %bb.c ], [ -1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.03
}

; Function Attrs: nounwind uwtable
define internal i32 @test_audit_run_command() #0 {
bb.a:
  %0 = alloca %struct.AuditRunCommandTest, align 8 ; 4 uses
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_audit_run_command.test, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.test_audit_run_command.argv, i64 24, i1 false)
  store i32 0, ptr @Py_IgnoreEnvironmentFlag, align 4, !tbaa !7
  %i.b = call i32 @PySys_AddAuditHook(ptr noundef nonnull @_audit_hook_run, ptr noundef nonnull %0) #19 ; 0 uses
  %i.c = call i32 @Py_Main(i32 noundef 3, ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @test_audit_run_file() #0 {
bb.a:
  %0 = alloca %struct.AuditRunCommandTest, align 8 ; 4 uses
  %i.a = alloca [2 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_audit_run_file.test, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.test_audit_run_file.argv, i64 16, i1 false)
  store i32 0, ptr @Py_IgnoreEnvironmentFlag, align 4, !tbaa !7
  %i.b = call i32 @PySys_AddAuditHook(ptr noundef nonnull @_audit_hook_run, ptr noundef nonnull %0) #19 ; 0 uses
  %i.c = call i32 @Py_Main(i32 noundef 2, ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i32 @test_audit_run_interactivehook() #0 {
bb.a:
  %0 = alloca %struct.PyConfig, align 8           ; 12 uses
  %1 = alloca %struct.PyStatus, align 8           ; 5 uses
  %2 = alloca %struct.AuditRunCommandTest, align 8 ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_audit_run_interactivehook.test, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 ptrtoint (ptr @.str.95 to i64), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @PyConfig_InitPythonConfig(ptr noundef nonnull %0) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 1, ptr %i.b, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.a, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.d, align 8, !tbaa !59
  %3 = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %3, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 1, ptr %i.i, align 4, !tbaa !67
  %i.j = call i32 @PySys_AddAuditHook(ptr noundef nonnull @_audit_hook_run, ptr noundef nonnull %2) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @Py_InitializeFromConfig(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %1, ptr noundef nonnull %0) #19
  %i.k = call i32 @PyStatus_Exception(ptr noundef nonnull byval(%struct.PyStatus) align 8 %1) #19
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %run_audit_run_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @Py_ExitStatusException(ptr noundef nonnull byval(%struct.PyStatus) align 8 %1) #24
  unreachable

run_audit_run_test.exit:                          ; preds = %bb.a
  %i.l = call i32 @Py_RunMain() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal i32 @test_audit_run_startup() #0 {
bb.a:
  %0 = alloca %struct.PyConfig, align 8           ; 12 uses
  %1 = alloca %struct.PyStatus, align 8           ; 5 uses
  %2 = alloca %struct.AuditRunCommandTest, align 8 ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_audit_run_startup.test, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 ptrtoint (ptr @.str.95 to i64), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @PyConfig_InitPythonConfig(ptr noundef nonnull %0) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 1, ptr %i.b, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.a, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.d, align 8, !tbaa !59
  %3 = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %3, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 1, ptr %i.i, align 4, !tbaa !67
  %i.j = call i32 @PySys_AddAuditHook(ptr noundef nonnull @_audit_hook_run, ptr noundef nonnull %2) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @Py_InitializeFromConfig(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %1, ptr noundef nonnull %0) #19
  %i.k = call i32 @PyStatus_Exception(ptr noundef nonnull byval(%struct.PyStatus) align 8 %1) #19
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %run_audit_run_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @Py_ExitStatusException(ptr noundef nonnull byval(%struct.PyStatus) align 8 %1) #24
  unreachable

run_audit_run_test.exit:                          ; preds = %bb.a
  %i.l = call i32 @Py_RunMain() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal i32 @test_audit_run_stdin() #0 {
bb.a:
  %0 = alloca %struct.PyConfig, align 8           ; 12 uses
  %1 = alloca %struct.PyStatus, align 8           ; 5 uses
  %2 = alloca %struct.AuditRunCommandTest, align 8 ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.test_audit_run_stdin.test, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 ptrtoint (ptr @.str.95 to i64), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @PyConfig_InitPythonConfig(ptr noundef nonnull %0) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 1, ptr %i.b, align 8, !tbaa !88
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.a, ptr %i.c, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.d, align 8, !tbaa !59
  %3 = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %3, ptr %i.e, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.h, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 1, ptr %i.i, align 4, !tbaa !67
  %i.j = call i32 @PySys_AddAuditHook(ptr noundef nonnull @_audit_hook_run, ptr noundef nonnull %2) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @Py_InitializeFromConfig(ptr dead_on_unwind nonnull writable sret(%struct.PyStatus) align 8 %1, ptr noundef nonnull %0) #19
  %i.k = call i32 @PyStatus_Exception(ptr noundef nonnull byval(%struct.PyStatus) align 8 %1) #19
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %run_audit_run_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @Py_ExitStatusException(ptr noundef nonnull byval(%struct.PyStatus) align 8 %1) #24
  unreachable

run_audit_run_test.exit:                          ; preds = %bb.a
  %i.l = call i32 @Py_RunMain() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @test_unicode_id_init() #0 {
bb.a:
  tail call fastcc void @_testembed_initialize()
  tail call void @Py_Finalize() #19
  tail call fastcc void @_testembed_initialize()
  %i.a = tail call ptr @_PyUnicode_FromId(ptr noundef nonnull @test_unicode_id_init.PyId_test_unicode_id_init) #19 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %Py_DECREF.exit.1, %Py_DECREF.exit, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.202, i32 noundef 2163, ptr noundef nonnull @__PRETTY_FUNCTION__.test_unicode_id_init) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not9 = icmp sgt i32 %i.b, -1
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.r, %bb.l, %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.202, i32 noundef 2164, ptr noundef nonnull @__PRETTY_FUNCTION__.test_unicode_id_init) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.85) #19 ; 5 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.s, %bb.m, %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.202, i32 noundef 2167, ptr noundef nonnull @__PRETTY_FUNCTION__.test_unicode_id_init) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.d = tail call i32 @PyUnicode_Compare(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #19
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.t, %bb.n, %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.202, i32 noundef 2169, ptr noundef nonnull @__PRETTY_FUNCTION__.test_unicode_id_init) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.f = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.c, align 8, !tbaa !11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #19
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.j, %bb.k
  tail call void @Py_Finalize() #19
  tail call fastcc void @_testembed_initialize()
  %i.i = tail call ptr @_PyUnicode_FromId(ptr noundef nonnull @test_unicode_id_init.PyId_test_unicode_id_init) #19 ; 3 uses
  %.not.1 = icmp eq ptr %i.i, null
  br i1 %.not.1, label %bb.b, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit
  %i.j = load i32, ptr %i.i, align 8, !tbaa !11
  %.not9.1 = icmp sgt i32 %i.j, -1
  br i1 %.not9.1, label %bb.d, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.k = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.85) #19 ; 5 uses
  %.not10.1 = icmp eq ptr %i.k, null
  br i1 %.not10.1, label %bb.f, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.l = tail call i32 @PyUnicode_Compare(ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #19
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.o, label %bb.h

bb.o:                                             ; preds = %bb.n
  %i.n = load i32, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %.not.i.1 = icmp sgt i32 %i.n, -1
  br i1 %.not.i.1, label %bb.p, label %Py_DECREF.exit.1

bb.p:                                             ; preds = %bb.o
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.k, align 8, !tbaa !11
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.q, label %Py_DECREF.exit.1

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #19
  br label %Py_DECREF.exit.1

Py_DECREF.exit.1:                                 ; preds = %bb.q, %bb.p, %bb.o
  tail call void @Py_Finalize() #19
  tail call fastcc void @_testembed_initialize()
  %i.q = tail call ptr @_PyUnicode_FromId(ptr noundef nonnull @test_unicode_id_init.PyId_test_unicode_id_init) #19 ; 3 uses
  %.not.2 = icmp eq ptr %i.q, null
  br i1 %.not.2, label %bb.b, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit.1
  %i.r = load i32, ptr %i.q, align 8, !tbaa !11
  %.not9.2 = icmp sgt i32 %i.r, -1
  br i1 %.not9.2, label %bb.d, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.85) #19 ; 5 uses
  %.not10.2 = icmp eq ptr %i.s, null
  br i1 %.not10.2, label %bb.f, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = tail call i32 @PyUnicode_Compare(ptr noundef nonnull %i.q, ptr noundef nonnull %i.s) #19
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.u, label %bb.h

bb.u:                                             ; preds = %bb.t
  %i.v = load i32, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %.not.i.2 = icmp sgt i32 %i.v, -1
  br i1 %.not.i.2, label %bb.v, label %Py_DECREF.exit.2

bb.v:                                             ; preds = %bb.u
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.s, align 8, !tbaa !11
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.w, label %Py_DECREF.exit.2

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #19
  br label %Py_DECREF.exit.2

Py_DECREF.exit.2:                                 ; preds = %bb.w, %bb.v, %bb.u
  tail call void @Py_Finalize() #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @test_frozenmain() #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const.test_frozenmain.argv, i64 32, i1 false)
  store ptr @test_frozenmain.frozen_modules, ptr @PyImport_FrozenModules, align 8, !tbaa !91
  %i.b = call i32 @Py_FrozenMain(i32 noundef 4, ptr noundef nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @test_get_incomplete_frame() #0 {
bb.a:
  %0 = alloca %struct.PyMemAllocatorEx, align 8   ; 8 uses
  %1 = alloca %struct.PyMemAllocatorEx, align 8   ; 5 uses
  tail call fastcc void @_testembed_initialize()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @PyMem_GetAllocator(i32 noundef 2, ptr noundef nonnull %1) #19, !inline_history !93
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  store ptr %1, ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @malloc_wrapper, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @calloc_wrapper, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @realloc_wrapper, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @free_wrapper, ptr %i.d, align 8, !tbaa !99
  call void @PyMem_SetAllocator(i32 noundef 2, ptr noundef nonnull %0) #19, !inline_history !93
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.e = call i32 @PyRun_SimpleStringFlags(ptr noundef nonnull @.str.354, ptr noundef null) #19
  call void @PyMem_SetAllocator(i32 noundef 2, ptr noundef nonnull %1) #19
  call void @Py_Finalize() #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i32 %i.e
end_hunk_0
