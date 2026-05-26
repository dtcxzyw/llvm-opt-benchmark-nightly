inline.NumInlined: 55
inline.NumDeleted: 9
begin_hunk_0_@unwind_stack_for_thread:bb.a
  call void @_Py_Dealloc(ptr noundef nonnull %.0124271) #10
  br label %Py_XDECREF.exit229

Py_XDECREF.exit229:                               ; preds = %bb.ac, %bb.k, %bb.e, %_PyErr_Occurred.exit198.thread, %bb.aa, %_PyErr_Occurred.exit201.thread, %bb.h, %_PyErr_Occurred.exit.thread, %bb.i, %bb.b, %bb.z, %bb.c, %Py_XDECREF.exit226, %bb.ci, %bb.cj, %bb.ck
  call void @cleanup_stack_chunks(ptr noundef nonnull %8) #10
  br label %bb.cl

bb.cl:                                            ; preds = %Py_XDECREF.exit229, %bb.cc, %bb.y
  %.0 = phi ptr [ null, %Py_XDECREF.exit229 ], [ null, %bb.y ], [ %i.jl, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret ptr %.0
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #2

declare i32 @copy_stack_chunks(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @collect_frames_with_cache(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyErr_Clear() local_unnamed_addr #2

declare i32 @process_frame_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromLongLong(i64 noundef) local_unnamed_addr #2

declare ptr @RemoteDebugging_GetStateFromObject(ptr noundef) local_unnamed_addr #2

declare ptr @PyStructSequence_New(ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #2

declare void @PyStructSequence_SetItem(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @cleanup_stack_chunks(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Py_RemoteDebug_InitThreadsState(ptr noundef readnone captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_Py_RemoteDebug_StopAllThreads(ptr noundef captures(none) %0, ptr noundef captures(none) initializes((8, 16)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !81
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 64, ptr noundef nonnull @.str.27, i32 noundef %i.f) #10 ; 0 uses
  %i.h = call noalias ptr @opendir(ptr noundef nonnull %i.b) ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr i8, ptr %1, i64 8          ; 6 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__errno_location() #12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.l = load i32, ptr %i.k, align 4, !tbaa !6
  %i.m = and i32 %i.l, -2
  %switch.i = icmp eq i32 %i.m, 2
  br i1 %switch.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @PyExc_ProcessLookupError, align 8, !tbaa !49
  %i.o = load i32, ptr %i.e, align 8, !tbaa !81
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.28, i32 noundef %i.o) #10 ; 0 uses
  br label %read_thread_ids.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !49
  %i.r = call ptr @PyErr_SetFromErrnoWithFilename(ptr noundef %i.q, ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %read_thread_ids.exit.thread

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %i.j, align 8, !tbaa !118
  %i.s = tail call ptr @readdir64(ptr noundef nonnull %i.h) #10 ; 2 uses
  %.not48.i = icmp eq ptr %i.s, null
  br i1 %.not48.i, label %read_thread_ids.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.t = getelementptr i8, ptr %0, i64 33952      ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 33944      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.v = phi ptr [ %i.s, %.lr.ph.i ], [ %i.z, %.backedge.i ]
  %i.w = getelementptr i8, ptr %i.v, i64 19       ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !82
  %i.y = add i8 %i.x, -58
  %or.cond45.i = icmp ult i8 %i.y, -9
  br i1 %or.cond45.i, label %.backedge.i, label %bb.g

.backedge.i:                                      ; preds = %bb.l, %bb.f
  %i.z = call ptr @readdir64(ptr noundef nonnull %i.h) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %read_thread_ids.exit, label %bb.f, !llvm.loop !119

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.aa = call i64 @__isoc23_strtol(ptr noundef nonnull %i.w, ptr noundef nonnull %i.c, i32 noundef 10) #10 ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !82
  %i.ad = icmp ne i8 %i.ac, 0
  %i.ae = icmp slt i64 %i.aa, 1
  %or.cond.i = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond.i, label %bb.l, label %bb.h, !llvm.loop !119

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.j, align 8, !tbaa !118 ; 2 uses
  %i.ag = load i64, ptr %i.t, align 8, !tbaa !121 ; 3 uses
  %.not43.i = icmp ult i64 %i.af, %i.ag
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !122 ; 2 uses
  br i1 %.not43.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = shl i64 %i.ag, 1
  %spec.select.i = select i1 %i.ah, i64 64, i64 %i.ai ; 2 uses
  %i.aj = shl i64 %spec.select.i, 2
  %i.ak = call ptr @PyMem_RawRealloc(ptr noundef %.pre.i, i64 noundef %i.aj) #10 ; 3 uses
  %.not44.i = icmp eq ptr %i.ak, null
  br i1 %.not44.i, label %.thread46.i, label %bb.j

.thread46.i:                                      ; preds = %bb.i
  %i.al = call i32 @closedir(ptr noundef nonnull %i.h) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.am = call ptr @PyErr_NoMemory() #10          ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %read_thread_ids.exit.thread

bb.j:                                             ; preds = %bb.i
  store ptr %i.ak, ptr %i.u, align 8, !tbaa !122
  store i64 %spec.select.i, ptr %i.t, align 8, !tbaa !121
  %.pre49.i = load i64, ptr %i.j, align 8, !tbaa !118
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.an = phi i64 [ %.pre49.i, %bb.j ], [ %i.af, %bb.h ] ; 2 uses
  %i.ao = phi ptr [ %i.ak, %bb.j ], [ %.pre.i, %bb.h ]
  %i.ap = trunc i64 %i.aa to i32
  %i.aq = add i64 %i.an, 1
  store i64 %i.aq, ptr %i.j, align 8, !tbaa !118
  %i.ar = getelementptr [4 x i8], ptr %i.ao, i64 %i.an
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %.backedge.i

read_thread_ids.exit.thread:                      ; preds = %bb.c, %bb.d, %.thread46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread66

read_thread_ids.exit:                             ; preds = %.backedge.i, %bb.e
  %i.as = getelementptr i8, ptr %0, i64 33944
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !122
  store ptr %i.at, ptr %1, align 8, !tbaa !123
  %i.au = call i32 @closedir(ptr noundef nonnull %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.av = load i64, ptr %i.j, align 8, !tbaa !118
  %.not77 = icmp eq i64 %i.av, 0
  br i1 %.not77, label %.thread66, label %.lr.ph

.lr.ph:                                           ; preds = %read_thread_ids.exit, %seize_thread.exit.thread60
  %.02975 = phi i64 [ %i.cs, %seize_thread.exit.thread60 ], [ 0, %read_thread_ids.exit ] ; 6 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !123
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %.02975
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !6  ; 8 uses
  %i.az = call i64 (i32, ...) @ptrace(i32 noundef 16902, i32 noundef %i.ay, ptr noundef null, i32 noundef 0) #10
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.r, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bb = tail call ptr @__errno_location() #12   ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !6  ; 2 uses
  switch i32 %i.bc, label %bb.q [
    i32 3, label %seize_thread.exit.thread60
    i32 1, label %seize_thread.exit.thread60
    i32 22, label %bb.n
    i32 5, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bd = call i64 (i32, ...) @ptrace(i32 noundef 16, i32 noundef %i.ay, ptr noundef null, ptr noundef null) #10
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bf = call i32 @waitpid(i32 noundef %i.ay, ptr noundef nonnull %i.a, i32 noundef 1073741824) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.bb, align 4, !tbaa !6
  %.fr68 = freeze i32 %i.bg                       ; 2 uses
  %i.bh = add i32 %.fr68, -1
  %switch.and.i = and i32 %i.bh, -3
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %seize_thread.exit.thread60, label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.bi = phi i32 [ %i.bc, %bb.m ], [ %.fr68, %bb.p ]
  %.not.i37 = icmp eq i64 %.02975, 0
  br i1 %.not.i37, label %detach_threads.exit, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.q, %.lr.ph.i38
  %.04.i = phi i64 [ %i.bn, %.lr.ph.i38 ], [ 0, %bb.q ] ; 2 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !123
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %.04.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !6
  %i.bm = call i64 (i32, ...) @ptrace(i32 noundef 17, i32 noundef %i.bl, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %i.bn = add nuw i64 %.04.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bn, %.02975
  br i1 %exitcond.not.i, label %detach_threads.exit.loopexit, label %.lr.ph.i38, !llvm.loop !124

detach_threads.exit.loopexit:                     ; preds = %.lr.ph.i38
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !6
  br label %detach_threads.exit

detach_threads.exit:                              ; preds = %detach_threads.exit.loopexit, %bb.q
  %i.bo = phi i32 [ %.pre, %detach_threads.exit.loopexit ], [ %i.bi, %bb.q ]
  %i.bp = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.bq = call ptr @strerror(i32 noundef %i.bo) #10
  %i.br = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bp, ptr noundef nonnull @.str.18, i32 noundef %i.ay, ptr noundef %i.bq) #10 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.thread66

bb.r:                                             ; preds = %bb.o, %.lr.ph
  %i.bs = call i64 (i32, ...) @ptrace(i32 noundef 16903, i32 noundef %i.ay, ptr noundef null, ptr noundef null) #10
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = tail call ptr @__errno_location() #12   ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !6
  %.not = icmp eq i32 %i.bv, 3
  br i1 %.not, label %bb.t, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.s, %.lr.ph.i41
  %.04.i42 = phi i64 [ %i.ca, %.lr.ph.i41 ], [ 0, %bb.s ] ; 3 uses
  %i.bw = load ptr, ptr %1, align 8, !tbaa !123
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %.04.i42
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !6
  %i.bz = call i64 (i32, ...) @ptrace(i32 noundef 17, i32 noundef %i.by, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %i.ca = add nuw i64 %.04.i42, 1
  %exitcond.not.i43 = icmp eq i64 %.04.i42, %.02975
  br i1 %exitcond.not.i43, label %detach_threads.exit45, label %.lr.ph.i41, !llvm.loop !124

detach_threads.exit45:                            ; preds = %.lr.ph.i41
  %i.cb = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.cc = load i32, ptr %i.bu, align 4, !tbaa !6
  %i.cd = call ptr @strerror(i32 noundef %i.cc) #10
  %i.ce = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cb, ptr noundef nonnull @.str.19, i32 noundef %i.ay, ptr noundef %i.cd) #10 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %.thread66

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.cf = call i32 @waitpid(i32 noundef %i.ay, ptr noundef nonnull %i.d, i32 noundef 1073741824) #10
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.u, label %seize_thread.exit.thread63

bb.u:                                             ; preds = %bb.t
  %i.ch = tail call ptr @__errno_location() #12   ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !6
  switch i32 %i.ci, label %.lr.ph.i47 [
    i32 10, label %seize_thread.exit.thread63
    i32 3, label %seize_thread.exit.thread63
  ]

.lr.ph.i47:                                       ; preds = %bb.u, %.lr.ph.i47
  %.04.i48 = phi i64 [ %i.cn, %.lr.ph.i47 ], [ 0, %bb.u ] ; 3 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !123
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %.04.i48
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !6
  %i.cm = call i64 (i32, ...) @ptrace(i32 noundef 17, i32 noundef %i.cl, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %i.cn = add nuw i64 %.04.i48, 1
  %exitcond.not.i49 = icmp eq i64 %.04.i48, %.02975
  br i1 %exitcond.not.i49, label %seize_thread.exit, label %.lr.ph.i47, !llvm.loop !124

seize_thread.exit.thread63:                       ; preds = %bb.u, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %seize_thread.exit.thread60

seize_thread.exit:                                ; preds = %.lr.ph.i47
  %i.co = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !6
  %i.cq = call ptr @strerror(i32 noundef %i.cp) #10
  %i.cr = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.co, ptr noundef nonnull @.str.20, i32 noundef %i.ay, ptr noundef %i.cq) #10 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.thread66

seize_thread.exit.thread60:                       ; preds = %bb.p, %bb.m, %bb.m, %seize_thread.exit.thread63
  %i.cs = add nuw i64 %.02975, 1                  ; 2 uses
  %i.ct = load i64, ptr %i.j, align 8, !tbaa !118
  %i.cu = icmp ult i64 %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph, label %.thread66, !llvm.loop !125

.thread66:                                        ; preds = %seize_thread.exit.thread60, %read_thread_ids.exit, %detach_threads.exit45, %detach_threads.exit, %seize_thread.exit, %read_thread_ids.exit.thread
  %.4 = phi i32 [ -1, %read_thread_ids.exit.thread ], [ -1, %detach_threads.exit45 ], [ -1, %seize_thread.exit ], [ -1, %detach_threads.exit ], [ 0, %read_thread_ids.exit ], [ 0, %seize_thread.exit.thread60 ]
  ret i32 %.4
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @ptrace(i32 noundef, ...) local_unnamed_addr #8

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_Py_RemoteDebug_ResumeAllThreads(ptr noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !123
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.04.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !123
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %.04.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  %i.i = tail call i64 (i32, ...) @ptrace(i32 noundef 17, i32 noundef %i.h, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %i.j = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.d
  br i1 %exitcond.not.i, label %detach_threads.exit, label %.lr.ph.i, !llvm.loop !124

detach_threads.exit:                              ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %detach_threads.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %5 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !110
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @read_remote_memory_fallback(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.036 = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.k ]  ; 6 uses
  %i.f = getelementptr i8, ptr %3, i64 %.036
  store ptr %i.f, ptr %4, align 16, !tbaa !111
  %i.g = sub i64 %2, %.036                        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8, !tbaa !113
  %i.h = add i64 %.036, %1                        ; 3 uses
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %5, align 16, !tbaa !111
  store i64 %i.g, ptr %i.e, align 8, !tbaa !113
  %i.j = load i32, ptr %0, align 8, !tbaa !78
  %i.k = call i64 @process_vm_readv(i32 noundef %i.j, ptr noundef nonnull %4, i64 noundef 1, ptr noundef nonnull %5, i64 noundef 1, i64 noundef 0) #10 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @__errno_location() #12    ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !6
  %i.o = icmp eq i32 %i.n, 38
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = call fastcc i32 @read_remote_memory_fallback(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @PyExc_OSError, align 8, !tbaa !49
  %i.r = call ptr @PyErr_SetFromErrno(ptr noundef %i.q) #10 ; 0 uses
  %i.s = load i32, ptr %i.m, align 4, !tbaa !6
  %i.t = icmp eq i32 %i.s, 3
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_0
