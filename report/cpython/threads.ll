inline.NumInlined: 55
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iovec = type { ptr, i64 }
%struct.StackChunkList = type { ptr, i64 }
%struct.FrameWalkContext = type { i64, i64, i64, i64, ptr, i32, ptr, ptr, i64, i64, i64, i32 }

@PyExc_PermissionError = external local_unnamed_addr global ptr, align 8
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"Failed to read main thread state\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to read thread ID\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to read next thread state\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to read interpreter state address\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"No interpreter state found\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Interpreter state is NULL\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to read main thread state address\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to read current frame pointer\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"/proc/%d/task/%lu/stat\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to read thread state\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Failed to read GC state\00", align 1
@PyExc_MemoryError = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to create frame info list\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Failed to copy stack chunks\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Failed to collect frames\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to process frame chain\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Failed to create thread ID\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Failed to create ThreadInfo\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Failed to create thread status\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Failed to seize thread %d: %s\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Failed to interrupt thread %d: %s\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"waitpid failed for thread %d: %s\00", align 1
@.str.21 = private unnamed_addr constant [88 x i8] c"Cannot allocate %zu bytes for page cache entry during read from PID %d at address 0x%lx\00", align 1
@PyExc_OSError = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [91 x i8] c"process_vm_readv failed for PID %d at address 0x%lx (size %zu, partial read %zd bytes): %s\00", align 1
@.str.23 = private unnamed_addr constant [81 x i8] c"preadv failed for PID %d at address 0x%lx (size %zu, partial read %zd bytes): %s\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"/proc/%d/mem\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"failed to open file %s: %s\00", align 1
@.str.26 = private unnamed_addr constant [93 x i8] c"process_vm_writev failed for PID %d at address 0x%lx (size %zu, partial write %zd bytes): %s\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"/proc/%d/task\00", align 1
@PyExc_ProcessLookupError = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [26 x i8] c"Process %d has terminated\00", align 1
@switch.table.get_thread_status = private unnamed_addr constant [23 x i32] [i32 1, i32 3, i32 3, i32 3, i32 3, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 1], align 4

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @iterate_threads(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 0, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 33744
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr i8, ptr %0, i64 32888
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = add i64 %i.g, %i.e
  %i.i = call fastcc i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef %i.c, i64 noundef %i.h, i64 noundef 8, ptr noundef nonnull %i.a)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 33048
  %i.l = getelementptr i8, ptr %0, i64 33000
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 33776
  %i.n = load i32, ptr %i.m, align 8, !tbaa !48
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !49
  %i.p = call i32 @PyErr_ExceptionMatches(ptr noundef %i.o) #10
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 128
  %.val32 = load ptr, ptr %i.r, align 8, !tbaa !51 ; 2 uses
  %i.s = icmp eq ptr %.val32, null
  br i1 %i.s, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.val32, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !64
  %.not30 = icmp eq ptr %.val.i, null
  br i1 %.not30, label %_PyErr_Occurred.exit.thread, label %bb.e

_PyErr_Occurred.exit.thread:                      ; preds = %bb.d, %_PyErr_Occurred.exit
  %i.u = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.v = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.q, ptr noundef %i.u, ptr noundef nonnull @.str) #10 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %_PyErr_Occurred.exit
  %i.w = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.x = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.w, ptr noundef nonnull @.str) #10 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %.preheader, %bb.m
  %.021 = phi i64 [ %i.ac, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp samesign ult i64 %.021, 8192
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i64 %.021, 1
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !65
  %i.ae = add i64 %i.ad, %i.y
  %i.af = call fastcc i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef %i.c, i64 noundef %i.ae, i64 noundef 8, ptr noundef nonnull %i.b)
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %0, i64 33776
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !48
  %.not25 = icmp eq i32 %i.ai, 0
  br i1 %.not25, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !49
  %i.ak = call i32 @PyErr_ExceptionMatches(ptr noundef %i.aj) #10
  %.not26 = icmp eq i32 %i.ak, 0
  br i1 %.not26, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.al = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 128
  %.val31 = load ptr, ptr %i.am, align 8, !tbaa !51 ; 2 uses
  %i.an = icmp eq ptr %.val31, null
  br i1 %i.an, label %_PyErr_Occurred.exit35.thread, label %_PyErr_Occurred.exit35

_PyErr_Occurred.exit35:                           ; preds = %bb.j
  %i.ao = getelementptr i8, ptr %.val31, i64 8
  %.val.i33 = load ptr, ptr %i.ao, align 8, !tbaa !64
  %.not27 = icmp eq ptr %.val.i33, null
  br i1 %.not27, label %_PyErr_Occurred.exit35.thread, label %bb.k

_PyErr_Occurred.exit35.thread:                    ; preds = %bb.j, %_PyErr_Occurred.exit35
  %i.ap = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.aq = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.al, ptr noundef %i.ap, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %_PyErr_Occurred.exit35
  %i.ar = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.as = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.ar, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.at = load i64, ptr %i.a, align 8, !tbaa !10
  %i.au = load i64, ptr %i.b, align 8, !tbaa !10
  %i.av = call i32 %1(ptr noundef nonnull %0, i64 noundef %i.at, i64 noundef %i.au, ptr noundef %2) #10
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !66
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = call fastcc i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef %i.c, i64 noundef %i.az, i64 noundef 8, ptr noundef nonnull %i.a)
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %bb.f, !llvm.loop !67

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %0, i64 33776
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !48
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !49
  %i.bf = call i32 @PyErr_ExceptionMatches(ptr noundef %i.be) #10
  %.not23 = icmp eq i32 %i.bf, 0
  br i1 %.not23, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bg = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 128
  %.val = load ptr, ptr %i.bh, align 8, !tbaa !51 ; 2 uses
  %i.bi = icmp eq ptr %.val, null
  br i1 %i.bi, label %_PyErr_Occurred.exit38.thread, label %_PyErr_Occurred.exit38

_PyErr_Occurred.exit38:                           ; preds = %bb.p
  %i.bj = getelementptr i8, ptr %.val, i64 8
  %.val.i36 = load ptr, ptr %i.bj, align 8, !tbaa !64
  %.not24 = icmp eq ptr %.val.i36, null
  br i1 %.not24, label %_PyErr_Occurred.exit38.thread, label %bb.q

_PyErr_Occurred.exit38.thread:                    ; preds = %bb.p, %_PyErr_Occurred.exit38
  %i.bk = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.bl = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.bg, ptr noundef %i.bk, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %_PyErr_Occurred.exit38
  %i.bm = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.bn = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.bm, ptr noundef nonnull @.str.2) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.l, %bb.n, %bb.o, %bb.q, %_PyErr_Occurred.exit38.thread, %bb.h, %bb.i, %bb.k, %_PyErr_Occurred.exit35.thread, %bb.b, %bb.c, %bb.e, %_PyErr_Occurred.exit.thread
  %.0 = phi i32 [ -1, %bb.n ], [ -1, %bb.b ], [ -1, %bb.h ], [ -1, %bb.o ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %_PyErr_Occurred.exit35.thread ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %_PyErr_Occurred.exit38.thread ], [ -1, %bb.q ], [ 0, %bb.f ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32776
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 6 uses
  %i.c = sub i64 0, %i.b
  %i.d = and i64 %1, %i.c                         ; 5 uses
  %i.e = sub i64 %1, %i.d                         ; 3 uses
  %i.f = add i64 %i.e, %2
  %i.g = icmp ugt i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8          ; 6 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc i32 @_Py_RemoteDebug_ReadRemoteMemory(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3)
  br label %.thread81

bb.c:                                             ; preds = %bb.g, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %i.j = getelementptr [32 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !70
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.j, align 8, !tbaa !74
end_hunk_0
begin_hunk_1_@populate_initial_state_data:bb.a
bb.e:                                             ; preds = %_PyErr_Occurred.exit
  %i.r = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.s = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.r, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.t = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.4) #10
  %i.w = getelementptr i8, ptr %1, i64 33776
  %i.x = load i32, ptr %i.w, align 8, !tbaa !48
  %.not25 = icmp eq i32 %i.x, 0
  br i1 %.not25, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !49
  %i.z = call i32 @PyErr_ExceptionMatches(ptr noundef %i.y) #10
  %.not26 = icmp eq i32 %i.z, 0
  br i1 %.not26, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.aa = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 128
  %.val31 = load ptr, ptr %i.ab, align 8, !tbaa !51 ; 2 uses
  %i.ac = icmp eq ptr %.val31, null
  br i1 %i.ac, label %_PyErr_Occurred.exit35.thread, label %_PyErr_Occurred.exit35

_PyErr_Occurred.exit35:                           ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %.val31, i64 8
  %.val.i33 = load ptr, ptr %i.ad, align 8, !tbaa !64
  %.not27 = icmp eq ptr %.val.i33, null
  br i1 %.not27, label %_PyErr_Occurred.exit35.thread, label %bb.j

_PyErr_Occurred.exit35.thread:                    ; preds = %bb.i, %_PyErr_Occurred.exit35
  %i.ae = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.af = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.aa, ptr noundef %i.ae, ptr noundef nonnull @.str.5) #10 ; 0 uses
  br label %bb.r

bb.j:                                             ; preds = %_PyErr_Occurred.exit35
  %i.ag = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.ah = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.ag, ptr noundef nonnull @.str.5) #10 ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.f
  store i64 %i.t, ptr %3, align 8, !tbaa !10
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %4, align 8, !tbaa !10
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %1, i64 32888
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47
  %i.ak = add i64 %i.aj, %i.t
  %i.al = call fastcc i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef %i.d, i64 noundef %i.ak, i64 noundef 8, ptr noundef %4)
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %1, i64 33776
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !48
  %.not22 = icmp eq i32 %i.ao, 0
  br i1 %.not22, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !49
  %i.aq = call i32 @PyErr_ExceptionMatches(ptr noundef %i.ap) #10
  %.not23 = icmp eq i32 %i.aq, 0
  br i1 %.not23, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ar = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 128
  %.val = load ptr, ptr %i.as, align 8, !tbaa !51 ; 2 uses
  %i.at = icmp eq ptr %.val, null
  br i1 %i.at, label %_PyErr_Occurred.exit38.thread, label %_PyErr_Occurred.exit38

_PyErr_Occurred.exit38:                           ; preds = %bb.p
  %i.au = getelementptr i8, ptr %.val, i64 8
  %.val.i36 = load ptr, ptr %i.au, align 8, !tbaa !64
  %.not24 = icmp eq ptr %.val.i36, null
  br i1 %.not24, label %_PyErr_Occurred.exit38.thread, label %bb.q

_PyErr_Occurred.exit38.thread:                    ; preds = %bb.p, %_PyErr_Occurred.exit38
  %i.av = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.aw = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.ar, ptr noundef %i.av, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %_PyErr_Occurred.exit38
  %i.ax = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.ay = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.ax, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_PyErr_Occurred.exit38.thread, %bb.q, %bb.o, %bb.n, %bb.m, %bb.g, %bb.h, %bb.j, %_PyErr_Occurred.exit35.thread, %bb.b, %bb.c, %bb.e, %_PyErr_Occurred.exit.thread, %bb.l
  %.1 = phi i32 [ -1, %bb.g ], [ -1, %bb.b ], [ 0, %bb.l ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %_PyErr_Occurred.exit35.thread ], [ -1, %bb.j ], [ -1, %bb.h ], [ -1, %bb.n ], [ -1, %_PyErr_Occurred.exit38.thread ], [ -1, %bb.q ], [ -1, %bb.o ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @find_running_frame(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 33016
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = add i64 %i.b, %1
  %i.d = tail call i32 @read_ptr(ptr noundef %0, i64 noundef %i.c, ptr noundef %2) #10
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 33776
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !49
  %i.h = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.g) #10
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 128
  %.val = load ptr, ptr %i.j, align 8, !tbaa !51  ; 2 uses
  %i.k = icmp eq ptr %.val, null
  br i1 %i.k, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !64
  %.not13 = icmp eq ptr %.val.i, null
  br i1 %.not13, label %_PyErr_Occurred.exit.thread, label %bb.f

_PyErr_Occurred.exit.thread:                      ; preds = %bb.e, %_PyErr_Occurred.exit
  %i.m = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.n = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.i, ptr noundef %i.m, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %_PyErr_Occurred.exit
  %i.o = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.p = tail call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.o, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %_PyErr_Occurred.exit.thread, %bb.f, %bb.d, %bb.c, %bb.b, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ -1, %bb.c ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.f ], [ -1, %bb.d ], [ 0, %bb.b ]
  ret i32 %.1
}

declare i32 @read_ptr(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @get_thread_status(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [2048 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.b, i8 0, i64 2048, i1 false)
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %i.d, i64 noundef %1) #10 ; 0 uses
  %i.f = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.a, i32 noundef 0) #10 ; 3 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i64 @read(i32 noundef %i.f, ptr noundef nonnull %i.b, i64 noundef 2047) #10
  %i.i = icmp eq i64 %i.h, 0
  %i.j = tail call i32 @close(i32 noundef %i.f) #10 ; 0 uses
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 41) #11 ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.k, i64 2        ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !82
  %i.n = icmp eq i8 %i.m, 32
  %i.o = getelementptr i8, ptr %i.k, i64 3
  %spec.select = select i1 %i.n, ptr %i.o, ptr %i.l
  %i.p = load i8, ptr %spec.select, align 1, !tbaa !82
  %switch.tableidx = add i8 %i.p, -68             ; 2 uses
  %3 = icmp ult i8 %switch.tableidx, 23
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %4 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.get_thread_status, i64 %4
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.a
  %.1 = phi i32 [ 3, %bb.a ], [ %switch.load, %bb.e ], [ 3, %bb.b ], [ 3, %bb.c ], [ 3, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @unwind_stack_for_thread(ptr noundef %0, ptr noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %5 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %6 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %7 = alloca [1 x %struct.iovec], align 16       ; 5 uses
  %8 = alloca %struct.StackChunkList, align 8     ; 7 uses
  %i.a = alloca [848 x i8], align 16              ; 14 uses
  %i.b = alloca [280 x i8], align 16
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [1024 x i64], align 16
  %9 = alloca %struct.FrameWalkContext, align 8   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !10
  %i.g = getelementptr i8, ptr %0, i64 32984      ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !83
  %i.i = call fastcc i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef %i.e, i64 noundef %i.f, i64 noundef %i.h, ptr noundef nonnull %i.a)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 33776
  %i.l = load i32, ptr %i.k, align 8, !tbaa !48
  %.not184 = icmp eq i32 %i.l, 0
  br i1 %.not184, label %Py_XDECREF.exit229, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !49
  %i.n = call i32 @PyErr_ExceptionMatches(ptr noundef %i.m) #10
  %.not185 = icmp eq i32 %i.n, 0
  br i1 %.not185, label %bb.d, label %Py_XDECREF.exit229

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 128
  %.val195 = load ptr, ptr %i.p, align 8, !tbaa !51 ; 2 uses
  %i.q = icmp eq ptr %.val195, null
  br i1 %i.q, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.val195, i64 8
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !64
  %.not186 = icmp eq ptr %.val.i, null
  br i1 %.not186, label %_PyErr_Occurred.exit.thread, label %bb.e

_PyErr_Occurred.exit.thread:                      ; preds = %bb.d, %_PyErr_Occurred.exit
  %i.s = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.t = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.o, ptr noundef %i.s, ptr noundef nonnull @.str.9) #10 ; 0 uses
  br label %Py_XDECREF.exit229

bb.e:                                             ; preds = %_PyErr_Occurred.exit
  %i.u = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.v = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.u, ptr noundef nonnull @.str.9) #10 ; 0 uses
  br label %Py_XDECREF.exit229

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %0, i64 33808      ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !84
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 33880      ; 2 uses
  %i.z = load i64, ptr %i.g, align 8, !tbaa !83
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !tbaa !10
  %i.ab = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.z, i64 1
  %i.ac = add <2 x i64> %i.aa, %i.ab
  store <2 x i64> %i.ac, ptr %i.y, align 8, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.ad = getelementptr i8, ptr %0, i64 33048
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !65
  %i.af = getelementptr i8, ptr %i.a, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !10 ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 33008
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !85
  %i.aj = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 1, !tbaa !10
  %i.al = getelementptr i8, ptr %0, i64 32896
  %i.am = load i64, ptr %i.al, align 8, !tbaa !86
  %i.an = add i64 %i.am, %i.ak
  %i.ao = getelementptr i8, ptr %0, i64 33512     ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !87
  %i.aq = call fastcc i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef %i.e, i64 noundef %i.an, i64 noundef %i.ap, ptr noundef nonnull %i.b)
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.thread
  %i.as = getelementptr i8, ptr %0, i64 33776
  %i.at = load i32, ptr %i.as, align 8, !tbaa !48
  %.not181 = icmp eq i32 %i.at, 0
  br i1 %.not181, label %Py_XDECREF.exit229, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !49
  %i.av = call i32 @PyErr_ExceptionMatches(ptr noundef %i.au) #10
  %.not182 = icmp eq i32 %i.av, 0
  br i1 %.not182, label %bb.j, label %Py_XDECREF.exit229

bb.j:                                             ; preds = %bb.i
  %i.aw = call ptr @_PyThreadState_GetCurrent() #10 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 128
  %.val194 = load ptr, ptr %i.ax, align 8, !tbaa !51 ; 2 uses
  %i.ay = icmp eq ptr %.val194, null
  br i1 %i.ay, label %_PyErr_Occurred.exit198.thread, label %_PyErr_Occurred.exit198

_PyErr_Occurred.exit198:                          ; preds = %bb.j
  %i.az = getelementptr i8, ptr %.val194, i64 8
  %.val.i196 = load ptr, ptr %i.az, align 8, !tbaa !64
  %.not183 = icmp eq ptr %.val.i196, null
  br i1 %.not183, label %_PyErr_Occurred.exit198.thread, label %bb.k

_PyErr_Occurred.exit198.thread:                   ; preds = %bb.j, %_PyErr_Occurred.exit198
  %i.ba = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.bb = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.aw, ptr noundef %i.ba, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %Py_XDECREF.exit229

bb.k:                                             ; preds = %_PyErr_Occurred.exit198
  %i.bc = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !49
  %i.bd = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.bc, ptr noundef nonnull @.str.10) #10 ; 0 uses
  br label %Py_XDECREF.exit229

bb.l:                                             ; preds = %.thread
  %i.be = load i32, ptr %i.w, align 8, !tbaa !84
  %.not143 = icmp eq i32 %i.be, 0
  br i1 %.not143, label %.thread234, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr i8, ptr %0, i64 33880     ; 2 uses
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !87
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %i.bi = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bg, i64 1
  %i.bj = add <2 x i64> %i.bh, %i.bi
  store <2 x i64> %i.bj, ptr %i.bf, align 8, !tbaa !10
  br label %.thread234

.thread234:                                       ; preds = %bb.l, %bb.m
  %i.bk = getelementptr i8, ptr %0, i64 33072
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !88
  %i.bm = getelementptr i8, ptr %i.a, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !6
  %i.bo = getelementptr i8, ptr %0, i64 33080
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !89 ; 2 uses
  %.not145 = icmp eq i64 %i.bp, 0
  br i1 %.not145, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread234
  %i.bq = getelementptr i8, ptr %i.a, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !6
  %.not282 = icmp eq i32 %i.br, 0
  %i.bs = select i1 %.not282, i32 0, i32 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread234
  %.0126 = phi i32 [ %i.bs, %bb.n ], [ 0, %.thread234 ]
  %i.bt = icmp eq i32 %i.bn, 0
  %.1 = select i1 %i.bt, i32 %.0126, i32 1        ; 3 uses
  %i.bu = getelementptr i8, ptr %0, i64 33088
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !90
  %i.bw = getelementptr i8, ptr %i.a, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 1, !tbaa !10
  %.not147 = icmp eq i64 %i.bx, 0
  br i1 %.not147, label %bb.p, label %.thread235

.thread235:                                       ; preds = %bb.o
  %i.by = or disjoint i32 %.1, 16
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr i8, ptr %0, i64 33096
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !91
  %i.cb = getelementptr i8, ptr %0, i64 33104
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !92
end_hunk_1
