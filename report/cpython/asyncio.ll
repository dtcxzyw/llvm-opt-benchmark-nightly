Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/asyncio?download=true
inline.NumInlined: 172
inline.NumDeleted: 14
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.iovec = type { ptr, i64 }

@.str = private unnamed_addr constant [13 x i8] c"AsyncioDebug\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"python\00", align 1
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed to find the AsyncioDebug section in the process.\00", align 1
@PyExc_PermissionError = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to get AsyncioDebug address\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to read AsyncioDebug offsets\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"AsyncioDebug section not available\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"AsyncioDebug section unavailable - asyncio module may not be loaded in target process\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to read set object\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Invalid set object (corrupted remote memory)\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to read set entry key\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed to read set entry ref count\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed to read task object\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to read task name object\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Failed to read task name type object\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Task name PyLong parsing failed\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Task-%d\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Invalid task name object\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"Task name object is neither long nor unicode\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Failed to read generator object in coro chain\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Failed to parse frame object in coro chain\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Failed to append frame to coro chain\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Failed to read is_task flag\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Failed to create task result\00", align 1
@PyExc_MemoryError = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [32 x i8] c"Failed to create empty CoroInfo\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Failed to create empty list\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Failed to create task name\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"Failed to append task result to render list\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"Failed to parse task name in single task node\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"Failed to create awaited_by list in single task node\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"Failed to create coroutine stack list in single task node\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"Failed to parse task coroutine stack in single task node\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Failed to create task ID in single task node\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"Failed to create TaskInfo in single task node\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"Failed to append result item in single task node\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"Failed to parse awaited_by in single task node\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"Failed to read running loop address\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Failed to read running task address\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Running task coro read failed\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Running task coro is NULL\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"Running task coro address is NULL\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"Failed to read running task code object\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"Running task code object is NULL\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"Running task code object address is NULL\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Running frame search failed in async chain\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"Async frame object parsing failed in chain\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"Failed to append frame info to async chain\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"Failed to create thread ID object\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"Failed to create awaited_by thread list\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"Failed to create AwaitedInfo\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"Failed to append awaited_by result item\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"Failed to append awaited_by for thread\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"Failed to create task list for thread\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"Failed to process running task chain\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"Failed to create thread ID\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"Failed to append AwaitedInfo to result\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"/proc/%d/maps\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PyExc_OSError = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [71 x i8] c"Cannot open process memory map file '%s' for PID %d section search: %s\00", align 1
@.str.58 = private unnamed_addr constant [57 x i8] c"Cannot allocate memory for reading process map file '%s'\00", align 1
@.str.59 = private unnamed_addr constant [83 x i8] c"Cannot reallocate memory while reading process map file '%s' (attempted size: %zu)\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"%lx-%*x %*s %*s %*s %*s %ln\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"Failed to close process map file '%s': %s\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"Cannot open ELF file '%s' for section '%s' search: %s\00", align 1
@.str.63 = private unnamed_addr constant [70 x i8] c"Cannot get file size for ELF file '%s' during section '%s' search: %s\00", align 1
@.str.64 = private unnamed_addr constant [79 x i8] c"Cannot memory map ELF file '%s' (size: %lld bytes) for section '%s' search: %s\00", align 1
@.str.65 = private unnamed_addr constant [65 x i8] c"Invalid ELF file '%s': string table index %u >= section count %u\00", align 1
@.str.66 = private unnamed_addr constant [72 x i8] c"No PT_LOAD segment found in ELF file '%s' (%u program headers examined)\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"Failed to close ELF file '%s': %s\00", align 1
@.str.68 = private unnamed_addr constant [88 x i8] c"Cannot allocate %zu bytes for page cache entry during read from PID %d at address 0x%lx\00", align 1
@.str.69 = private unnamed_addr constant [91 x i8] c"process_vm_readv failed for PID %d at address 0x%lx (size %zu, partial read %zd bytes): %s\00", align 1
@.str.70 = private unnamed_addr constant [81 x i8] c"preadv failed for PID %d at address 0x%lx (size %zu, partial read %zd bytes): %s\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"/proc/%d/mem\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"failed to open file %s: %s\00", align 1
@.str.73 = private unnamed_addr constant [55 x i8] c"Failed to read interpreter frame in yield_from handler\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"generator doesn't own its frame \\_o_/\00", align 1
@.str.75 = private unnamed_addr constant [39 x i8] c"Frame ownership mismatch in yield_from\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"Failed to read gi_await address\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"Failed to read gi_await type address\00", align 1
@.str.78 = private unnamed_addr constant [46 x i8] c"Failed to parse coroutine chain in yield_from\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"Failed to create call stack list\00", align 1
@.str.80 = private unnamed_addr constant [35 x i8] c"Failed to create task name/address\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"Failed to read task object for coro chain\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"Failed to parse coroutine chain\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"Failed to reverse call stack\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"Failed to create CoroInfo\00", align 1
@.str.85 = private unnamed_addr constant [30 x i8] c"Failed to read task node head\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"Task list appears corrupted\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"Task list iteration limit exceeded\00", align 1
@.str.88 = private unnamed_addr constant [52 x i8] c"Invalid linked list structure reading remote memory\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"NULL pointer in task linked list\00", align 1
@.str.90 = private unnamed_addr constant [42 x i8] c"Failed to process task node in awaited_by\00", align 1
@.str.91 = private unnamed_addr constant [44 x i8] c"Failed to read next task node in awaited_by\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"Coro chain is not a single item\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"Failed to clear coroutine chain\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef i64 @_Py_RemoteDebug_GetAsyncioDebugAddress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = load i32, ptr %0, align 8, !tbaa !10
  %i.e = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %i.d) #8 ; 0 uses
  %i.f = call noalias ptr @fopen64(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.56) ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @PyExc_OSError, align 8, !tbaa !13
  %i.i = load i32, ptr %0, align 8, !tbaa !10
  %i.j = tail call ptr @__errno_location() #9
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = tail call ptr @strerror(i32 noundef %i.k) #8
  %i.m = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.a, i32 noundef %i.i, ptr noundef %i.l) #8 ; 0 uses
  br label %search_linux_map_for_section.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.n = tail call ptr @PyMem_Malloc(i64 noundef 4096) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.outer.i

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.q = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !13
  %i.r = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.q) #8
  %.not74.i = icmp eq i32 %i.r, 0
  br i1 %.not74.i, label %bb.e, label %search_linux_map_for_section.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 128
  %.val87.i = load ptr, ptr %i.t, align 8, !tbaa !16 ; 2 uses
  %i.u = icmp eq ptr %.val87.i, null
  br i1 %i.u, label %_PyErr_Occurred.exit.thread.i, label %_PyErr_Occurred.exit.i

_PyErr_Occurred.exit.i:                           ; preds = %bb.e
  %i.v = getelementptr i8, ptr %.val87.i, i64 8
  %.val.i.i = load ptr, ptr %i.v, align 8, !tbaa !29
  %.not75.i = icmp eq ptr %.val.i.i, null
  br i1 %.not75.i, label %_PyErr_Occurred.exit.thread.i, label %bb.f

_PyErr_Occurred.exit.thread.i:                    ; preds = %_PyErr_Occurred.exit.i, %bb.e
  %i.w = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !13
  %i.x = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.s, ptr noundef %i.w, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %search_linux_map_for_section.exit.thread

bb.f:                                             ; preds = %_PyErr_Occurred.exit.i
  %i.y = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !13
  %i.z = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.y, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.a) #8 ; 0 uses
  br label %search_linux_map_for_section.exit.thread

bb.g:                                             ; preds = %bb.ad, %.lr.ph.i
  %i.aa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.054.ph.i) #10 ; 2 uses
  %i.ab = getelementptr i8, ptr %.054.ph.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !32
  %.not77.i = icmp eq i8 %i.ad, 10
  br i1 %.not77.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = shl i64 %.056.ph.i, 1                   ; 4 uses
  %i.af = call ptr @PyMem_Realloc(ptr noundef nonnull %.054.ph.i, i64 noundef %i.ae) #8 ; 2 uses
  %.not83.not.i = icmp eq ptr %i.af, null
  br i1 %.not83.not.i, label %bb.i, label %.outer.i, !llvm.loop !33

.outer.i:                                         ; preds = %bb.h, %.preheader.i
  %.057.ph.i = phi i64 [ 0, %.preheader.i ], [ %i.aa, %bb.h ] ; 2 uses
  %.056.ph.i = phi i64 [ 4096, %.preheader.i ], [ %i.ae, %bb.h ] ; 3 uses
  %.054.ph.i = phi ptr [ %i.n, %.preheader.i ], [ %i.af, %bb.h ] ; 9 uses
  %i.ag = getelementptr i8, ptr %.054.ph.i, i64 %.057.ph.i
  %i.ah = sub i64 %.056.ph.i, %.057.ph.i
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = call ptr @fgets(ptr noundef %i.ag, i32 noundef %i.ai, ptr noundef nonnull %i.f)
  %.not7625.i = icmp eq ptr %i.aj, null
  br i1 %.not7625.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.i
  %i.ak = trunc i64 %.056.ph.i to i32
  br label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @PyMem_Free(ptr noundef nonnull %.054.ph.i) #8
  %i.al = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.am = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !13
  %i.an = call i32 @PyErr_ExceptionMatches(ptr noundef %i.am) #8
  %.not84.i = icmp eq i32 %i.an, 0
  br i1 %.not84.i, label %bb.j, label %search_linux_map_for_section.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ao = call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 128
  %.val.i = load ptr, ptr %i.ap, align 8, !tbaa !16 ; 2 uses
  %i.aq = icmp eq ptr %.val.i, null
  br i1 %i.aq, label %_PyErr_Occurred.exit90.thread.i, label %_PyErr_Occurred.exit90.i

_PyErr_Occurred.exit90.i:                         ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %.val.i, i64 8
  %.val.i88.i = load ptr, ptr %i.ar, align 8, !tbaa !29
  %.not85.i = icmp eq ptr %.val.i88.i, null
  br i1 %.not85.i, label %_PyErr_Occurred.exit90.thread.i, label %bb.k

_PyErr_Occurred.exit90.thread.i:                  ; preds = %_PyErr_Occurred.exit90.i, %bb.j
  %i.as = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !13
  %i.at = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.ao, ptr noundef %i.as, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.a, i64 noundef %i.ae) #8 ; 0 uses
  br label %search_linux_map_for_section.exit.thread

bb.k:                                             ; preds = %_PyErr_Occurred.exit90.i
  %i.au = load ptr, ptr @PyExc_MemoryError, align 8, !tbaa !13
  %i.av = call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.au, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.a, i64 noundef %i.ae) #8 ; 0 uses
  br label %search_linux_map_for_section.exit.thread

bb.l:                                             ; preds = %bb.g
  store i8 0, ptr %i.ac, align 1, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 0, ptr %i.b, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !35
  %i.aw = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.054.ph.i, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8 ; 0 uses
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %.not78.i = icmp eq i64 %i.ax, 0
  br i1 %.not78.i, label %bb.ad, label %bb.m, !llvm.loop !33

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %.054.ph.i, i64 %i.ax ; 12 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !32
  %i.ba = icmp eq i8 %i.az, 91
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #10
  %i.bc = getelementptr i8, ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !32
  %i.bf = icmp eq i8 %i.be, 93
  br i1 %i.bf, label %bb.ad, label %bb.o, !llvm.loop !33

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.ay, i32 noundef 47) #10 ; 2 uses
  %.not79.i = icmp eq ptr %i.bg, null
  %i.bh = getelementptr i8, ptr %i.bg, i64 1
  %.0.i = select i1 %.not79.i, ptr %i.ay, ptr %i.bh
  %i.bi = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %.not80.i = icmp eq ptr %i.bi, null
  br i1 %.not80.i, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %search_elf_file_for_section.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.ay, i32 noundef 0) #8 ; 4 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.thread10.thread16.i.i, label %bb.r

.thread10.thread16.i.i:                           ; preds = %bb.q
  %i.bn = load ptr, ptr @PyExc_OSError, align 8, !tbaa !13
  %i.bo = tail call ptr @__errno_location() #9
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !6
  %i.bq = call ptr @strerror(i32 noundef %i.bp) #8
  %i.br = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bn, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.ay, ptr noundef nonnull @.str, ptr noundef %i.bq) #8 ; 0 uses
  br label %search_elf_file_for_section.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bs = call i32 @fstat64(i32 noundef %i.bl, ptr noundef nonnull %1) #8
  %.not.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i, label %bb.s, label %.thread10.thread.i.i

.thread10.thread.i.i:                             ; preds = %bb.r
  %i.bt = load ptr, ptr @PyExc_OSError, align 8, !tbaa !13
  %i.bu = tail call ptr @__errno_location() #9
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !6
  %i.bw = call ptr @strerror(i32 noundef %i.bv) #8
  %i.bx = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bt, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.ay, ptr noundef nonnull @.str, ptr noundef %i.bw) #8 ; 0 uses
  br label %.thread10.i.i

bb.s:                                             ; preds = %bb.r
  %i.by = load i64, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.bz = call ptr @mmap64(ptr noundef null, i64 noundef %i.by, i32 noundef 1, i32 noundef 2, i32 noundef %i.bl, i64 noundef 0) #8 ; 11 uses
  %i.ca = icmp eq ptr %i.bz, inttoptr (i64 -1 to ptr)
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr @PyExc_OSError, align 8, !tbaa !13
  %i.cc = tail call ptr @__errno_location() #9
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !6
  %i.ce = call ptr @strerror(i32 noundef %i.cd) #8
  %i.cf = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cb, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.ay, i64 noundef %i.by, ptr noundef nonnull @.str, ptr noundef %i.ce) #8 ; 0 uses
  br label %.thread2.i.i

bb.u:                                             ; preds = %bb.s
  %i.cg = getelementptr i8, ptr %i.bz, i64 62
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !39 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.bz, i64 60
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !42 ; 3 uses
  %.not76.i.i = icmp ult i16 %i.ch, %i.cj
  br i1 %.not76.i.i, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr i8, ptr %i.bz, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !43
  %i.cm = getelementptr i8, ptr %i.bz, i64 %i.cl  ; 2 uses
  %i.cn = zext i16 %i.ch to i64
  %i.co = getelementptr [64 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !44
  %i.cr = getelementptr i8, ptr %i.bz, i64 %i.cq
  %wide.trip.count.i.i = zext i16 %i.cj to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread2.i.i, label %bb.x, !llvm.loop !46

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.i.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next.i.i, %bb.w ] ; 2 uses
  %i.cs = getelementptr [64 x i8], ptr %i.cm, i64 %indvars.iv.i.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !47
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr i8, ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  %i.cx = call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str, ptr noundef nonnull dereferenceable(1) %i.cw) #10
  %.not77.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not77.i.i, label %bb.y, label %bb.w

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr i8, ptr %i.bz, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !48
  %i.da = getelementptr i8, ptr %i.bz, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.bz, i64 56
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !49 ; 3 uses
  %i.dd = zext i16 %i.dc to i32
  %.not23.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not23.i.i, label %.thread.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.y
  %wide.trip.count29.i.i = zext i16 %i.dc to i64
  br label %.lr.ph.i.i

bb.z:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond30.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, %wide.trip.count29.i.i
  br i1 %exitcond30.not.i.i, label %.thread.i.i, label %.lr.ph.i.i, !llvm.loop !50

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.preheader.i.i
  %indvars.iv26.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next27.i.i, %bb.z ] ; 2 uses
  %i.de = getelementptr [56 x i8], ptr %i.da, i64 %indvars.iv26.i.i ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !51
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.aa, label %bb.z

.thread.i.i:                                      ; preds = %bb.z, %bb.y
  %i.dh = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !13
  %i.di = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dh, ptr noundef nonnull @.str.66, ptr noundef nonnull %i.ay, i32 noundef %i.dd) #8 ; 0 uses
  br label %.thread2.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.dj = getelementptr i8, ptr %i.de, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !53 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.de, i64 48
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !54
  %i.dn = urem i64 %i.dk, %i.dm
  %i.do = getelementptr i8, ptr %i.cs, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !55
  %i.dq = sub i64 %i.bj, %i.dk
  %.neg.i.i = add i64 %i.dq, %i.dn
  %i.dr = add i64 %.neg.i.i, %i.dp
  %2 = freeze i64 %i.dr
  br label %.thread2.i.i

bb.ab:                                            ; preds = %bb.u
  %i.ds = zext i16 %i.cj to i32
  %i.dt = zext i16 %i.ch to i32
  %i.du = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !13
  %i.dv = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.du, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.ay, i32 noundef %i.dt, i32 noundef %i.ds) #8 ; 0 uses
  %.not78.i.i = icmp eq ptr %i.bz, null
  br i1 %.not78.i.i, label %.thread10.i.i, label %.thread2.i.i

.thread2.i.i:                                     ; preds = %bb.w, %bb.ab, %bb.aa, %.thread.i.i, %bb.t
  %.0637.i.i = phi i64 [ 0, %bb.ab ], [ %2, %bb.aa ], [ 0, %.thread.i.i ], [ 0, %bb.t ], [ 0, %bb.w ]
  %i.dw = call i32 @munmap(ptr noundef nonnull %i.bz, i64 noundef %i.by) #8 ; 0 uses
  br label %.thread10.i.i

.thread10.i.i:                                    ; preds = %.thread2.i.i, %bb.ab, %.thread10.thread.i.i
  %.063815.i.i = phi i64 [ 0, %.thread10.thread.i.i ], [ %.0637.i.i, %.thread2.i.i ], [ 0, %bb.ab ] ; 2 uses
  %i.dx = call i32 @close(i32 noundef %i.bl) #8
  %.not79.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not79.i.i, label %search_elf_file_for_section.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.thread10.i.i
  %i.dy = load ptr, ptr @PyExc_OSError, align 8, !tbaa !13
  %i.dz = tail call ptr @__errno_location() #9
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !6
  %i.eb = call ptr @strerror(i32 noundef %i.ea) #8
  %i.ec = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dy, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.ay, ptr noundef %i.eb) #8 ; 0 uses
  br label %search_elf_file_for_section.exit.thread.i

search_elf_file_for_section.exit.thread.i:        ; preds = %bb.ac, %.thread10.thread16.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.ad

search_elf_file_for_section.exit.i:               ; preds = %.thread10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not81.i = icmp eq i64 %.063815.i.i, 0
  br i1 %.not81.i, label %bb.ad, label %.thread11.i

.thread11.i:                                      ; preds = %search_elf_file_for_section.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.loopexit.i

bb.ad:                                            ; preds = %search_elf_file_for_section.exit.i, %search_elf_file_for_section.exit.thread.i, %bb.o, %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.ed = call ptr @fgets(ptr noundef nonnull %.054.ph.i, i32 noundef %i.ak, ptr noundef nonnull %i.f)
  %.not76.i = icmp eq ptr %i.ed, null
  br i1 %.not76.i, label %.loopexit.i, label %bb.g

.loopexit.i:                                      ; preds = %.outer.i, %bb.ad, %.thread11.i
  %.5.i = phi i64 [ %.063815.i.i, %.thread11.i ], [ 0, %bb.ad ], [ 0, %.outer.i ] ; 2 uses
  call void @PyMem_Free(ptr noundef nonnull %.054.ph.i) #8
  %i.ee = call i32 @fclose(ptr noundef nonnull %i.f)
  %.not82.i = icmp eq i32 %i.ee, 0
  br i1 %.not82.i, label %search_linux_map_for_section.exit, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i
  %i.ef = load ptr, ptr @PyExc_OSError, align 8, !tbaa !13
  %i.eg = tail call ptr @__errno_location() #9
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !6
  %i.ei = call ptr @strerror(i32 noundef %i.eh) #8
  %i.ej = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ef, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.a, ptr noundef %i.ei) #8 ; 0 uses
  br label %search_linux_map_for_section.exit.thread

search_linux_map_for_section.exit.thread:         ; preds = %bb.b, %bb.d, %_PyErr_Occurred.exit.thread.i, %bb.f, %bb.ae, %bb.i, %bb.k, %_PyErr_Occurred.exit90.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.af

search_linux_map_for_section.exit:                ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ek = icmp eq i64 %.5.i, 0
  br i1 %i.ek, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %search_linux_map_for_section.exit.thread, %search_linux_map_for_section.exit
  %i.el = call ptr @PyErr_GetRaisedException() #8
  %i.em = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !13
  call void @PyErr_SetString(ptr noundef %i.em, ptr noundef nonnull @.str.2) #8
  call void @_PyErr_ChainExceptions1(ptr noundef %i.el) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %search_linux_map_for_section.exit
  %.466.i4 = phi i64 [ 0, %bb.af ], [ %.5.i, %search_linux_map_for_section.exit ]
  ret i64 %.466.i4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_PyErr_ChainExceptions1(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @read_async_debug(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = tail call i64 @_Py_RemoteDebug_GetAsyncioDebugAddress(ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 33776
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !13
  %i.f = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.e) #8
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 128
  %.val21 = load ptr, ptr %i.h, align 8, !tbaa !16 ; 2 uses
  %i.i = icmp eq ptr %.val21, null
  br i1 %i.i, label %_PyErr_Occurred.exit.thread, label %_PyErr_Occurred.exit

_PyErr_Occurred.exit:                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.val21, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !29
  %.not17 = icmp eq ptr %.val.i, null
  br i1 %.not17, label %_PyErr_Occurred.exit.thread, label %bb.e

_PyErr_Occurred.exit.thread:                      ; preds = %bb.d, %_PyErr_Occurred.exit
  %i.k = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !13
  %i.l = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.g, ptr noundef %i.k, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %_PyErr_Occurred.exit
  %i.m = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !13
  %i.n = tail call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.m, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 33640
  %i.p = tail call fastcc i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr noundef %i.a, i64 noundef %i.b, i64 noundef 104, ptr noundef %i.o)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %0, i64 33776
  %i.s = load i32, ptr %i.r, align 8, !tbaa !56
  %.not18 = icmp eq i32 %i.s, 0
  br i1 %.not18, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @PyExc_PermissionError, align 8, !tbaa !13
  %i.u = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.t) #8
  %.not19 = icmp eq i32 %i.u, 0
  br i1 %.not19, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @_PyThreadState_GetCurrent() #8 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 128
  %.val = load ptr, ptr %i.w, align 8, !tbaa !16  ; 2 uses
  %i.x = icmp eq ptr %.val, null
  br i1 %i.x, label %_PyErr_Occurred.exit24.thread, label %_PyErr_Occurred.exit24

_PyErr_Occurred.exit24:                           ; preds = %bb.i
  %i.y = getelementptr i8, ptr %.val, i64 8
  %.val.i22 = load ptr, ptr %i.y, align 8, !tbaa !29
  %.not20 = icmp eq ptr %.val.i22, null
  br i1 %.not20, label %_PyErr_Occurred.exit24.thread, label %bb.j

_PyErr_Occurred.exit24.thread:                    ; preds = %bb.i, %_PyErr_Occurred.exit24
  %i.z = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !13
  %i.aa = tail call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %i.v, ptr noundef %i.z, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %_PyErr_Occurred.exit24
  %i.ab = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !13
  %i.ac = tail call ptr (ptr, ptr, ...) @_PyErr_FormatFromCause(ptr noundef %i.ab, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.j, %_PyErr_Occurred.exit24.thread, %bb.b, %bb.c, %bb.e, %_PyErr_Occurred.exit.thread
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %_PyErr_Occurred.exit.thread ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %_PyErr_Occurred.exit24.thread ], [ -1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.h ], [ 0, %bb.f ]
  ret i32 %.0
}

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #2

declare ptr @_PyErr_Format(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @_PyErr_FormatFromCause(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_Py_RemoteDebug_PagedReadRemoteMemory(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32776
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87   ; 6 uses
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
end_hunk_0
