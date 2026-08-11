inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon = type { i64, ptr, i32, [40 x i8] }
%struct.release_t = type { ptr, ptr, i64 }
%struct.cpu_set_t = type { [16 x i64] }

@get_num_procs.nums = internal unnamed_addr global i32 0, align 4
@blas_cpu_number = local_unnamed_addr global i32 0, align 4
@blas_num_threads = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"OpenBLAS Warning ... cannot install fork handler. You may meet hang after fork.\0A\00", align 1
@hugetlb_allocated = local_unnamed_addr global i32 0, align 4
@__const.blas_memory_alloc.memoryalloc = private unnamed_addr constant [3 x ptr] [ptr @alloc_mmap, ptr @alloc_malloc, ptr null], align 16
@memory_initialized = internal global i32 0, align 4
@alloc_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@memory = internal unnamed_addr global [128 x %struct.anon] zeroinitializer, align 16
@memory_overflowed = internal unnamed_addr global i1 false, align 4
@newmemory = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"OpenBLAS error: Memory allocation still failed after 10 retries, giving up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"OpenBLAS warning: precompiled NUM_THREADS exceeded, adding auxiliary array for thread metadata.\0A\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"Note that your application may still crash, if it is calling OpenBLAS from multiple threads in parallel\0A\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"To avoid this warning, please rebuild your copy of OpenBLAS with a larger NUM_THREADS setting\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"or set the environment variable OPENBLAS_NUM_THREADS to %d or lower\0A\00", align 1
@new_release_info = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [85 x i8] c"This library was built to support a maximum of %d threads - either rebuild OpenBLAS\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"BLAS : Bad memory unallocation! : %4d  %p\0A\00", align 1
@release_pos = internal global i32 0, align 4
@release_info = internal global [128 x %struct.release_t] zeroinitializer, align 16
@gotoblas_initialized = internal unnamed_addr global i1 false, align 4
@blas_server_avail = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"OpenBLAS : munmap failed:\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"error code=%d,\09release->address=%p\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @gotoblas_init, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @gotoblas_quit, ptr null }]
@str = private unnamed_addr constant [89 x i8] c"OpenBLAS : Program is Terminated. Because you tried to allocate too many memory regions.\00", align 1
@str.1 = private unnamed_addr constant [88 x i8] c"with a larger NUM_THREADS value or set the environment variable OPENBLAS_NUM_THREADS to\00", align 1
@str.2 = private unnamed_addr constant [90 x i8] c"a sufficiently small number. This error typically occurs when the software that relies on\00", align 1
@str.3 = private unnamed_addr constant [92 x i8] c"OpenBLAS calls BLAS functions from many threads in parallel, or when your computer has more\00", align 1
@str.4 = private unnamed_addr constant [55 x i8] c"cpu cores than what OpenBLAS was configured to handle.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @get_num_procs() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.cpu_set_t, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.a = load i32, ptr @get_num_procs.nums, align 4, !tbaa !8 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @sysconf(i32 noundef 83) #17
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  store i32 %i.c, ptr @get_num_procs.nums, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1023
  br i1 %i.e, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i32 %i.d to i64
  %i.g = tail call ptr @__sched_cpualloc(i64 noundef %i.f) #17 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = load i32, ptr @get_num_procs.nums, align 4, !tbaa !8 ; 2 uses
  br i1 %i.h, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, 63
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 2305843009213693944        ; 2 uses
  %i.n = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef %i.m, ptr noundef nonnull %i.g) #17
  %.not20 = icmp eq i32 %i.n, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__sched_cpufree(ptr noundef nonnull %i.g) #17
  %i.o = load i32, ptr @get_num_procs.nums, align 4, !tbaa !8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.p = tail call i32 @__sched_cpucount(i64 noundef %i.m, ptr noundef nonnull %i.g) #17 ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = load i32, ptr @get_num_procs.nums, align 4
  %i.s = icmp slt i32 %i.p, %i.r
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.p, ptr @get_num_procs.nums, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @__sched_cpufree(ptr noundef nonnull %i.g) #17
  %i.t = load i32, ptr @get_num_procs.nums, align 4, !tbaa !8
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  %i.u = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %0) #17
  %.not19 = icmp eq i32 %i.u, 0
  br i1 %.not19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr @get_num_procs.nums, align 4, !tbaa !8
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.w = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %0) #17 ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = load i32, ptr @get_num_procs.nums, align 4 ; 2 uses
  %i.z = icmp slt i32 %i.w, %i.y
  %or.cond23 = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.w, ptr @get_num_procs.nums, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.d, %bb.k, %bb.i, %bb.f
  %.sink30 = phi i32 [ %i.i, %bb.d ], [ %i.v, %bb.k ], [ %i.t, %bb.i ], [ %i.o, %bb.f ], [ %i.w, %bb.m ], [ %i.y, %bb.l ] ; 2 uses
  %i.aa = icmp sgt i32 %.sink30, 0
  %i.ab = select i1 %i.aa, i32 %.sink30, i32 2
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret i32 %i.ab
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__sched_cpufree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i32 @goto_get_num_procs() local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @openblas_fork_handler() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_atfork(ptr noundef nonnull @blas_thread_shutdown_, ptr noundef null, ptr noundef null) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @openblas_warning(i32 noundef 0, ptr noundef nonnull @.str) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @blas_thread_shutdown_() #4

declare void @openblas_warning(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @blas_get_cpu_number() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @blas_num_threads, align 4, !tbaa !8 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @get_num_procs()           ; 2 uses
  %i.c = tail call i32 @openblas_num_threads_env() #17 ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @openblas_goto_num_threads_env() #17
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %spec.store.select1, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %0 = tail call i32 @openblas_omp_num_threads_env() #17 ; 2 uses
  %spec.store.select2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %.not16 = icmp eq i32 %.0, 0
  %.not17 = icmp slt i32 %0, 1
  %.spec.store.select2 = select i1 %.not17, i32 64, i32 %spec.store.select2
  %spec.store.select2.sink = select i1 %.not16, i32 %.spec.store.select2, i32 %.0 ; 3 uses
  %i.f = icmp sgt i32 %spec.store.select2.sink, %i.b
  %i.g = tail call i32 @llvm.smin.i32(i32 %spec.store.select2.sink, i32 %i.b) ; 2 uses
  %i.h = icmp sgt i32 %i.g, 64
  %i.i = or i1 %i.f, %i.h
  %simplifycfg.merge = tail call i32 @llvm.smin.i32(i32 %i.g, i32 64)
  %storemerge = select i1 %i.i, i32 %simplifycfg.merge, i32 %spec.store.select2.sink ; 3 uses
  store i32 %storemerge, ptr @blas_num_threads, align 4, !tbaa !8
  store atomic i32 %storemerge, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.013 = phi i32 [ %storemerge, %bb.d ], [ %i.a, %bb.a ]
  ret i32 %.013
}

declare i32 @openblas_num_threads_env() local_unnamed_addr #4

declare i32 @openblas_goto_num_threads_env() local_unnamed_addr #4

declare i32 @openblas_omp_num_threads_env() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @openblas_get_num_procs() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @get_num_procs()
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @openblas_get_num_threads() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @blas_num_threads, align 4, !tbaa !8
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %blas_get_cpu_number.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @get_num_procs()           ; 2 uses
  %i.c = tail call i32 @openblas_num_threads_env() #17 ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @openblas_goto_num_threads_env() #17
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %spec.store.select1.i, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %0 = tail call i32 @openblas_omp_num_threads_env() #17 ; 2 uses
  %spec.store.select2.i = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %.not16.i = icmp eq i32 %.0.i, 0
  %.not17.i = icmp slt i32 %0, 1
  %.spec.store.select2.i = select i1 %.not17.i, i32 64, i32 %spec.store.select2.i
  %spec.store.select2.sink.i = select i1 %.not16.i, i32 %.spec.store.select2.i, i32 %.0.i ; 3 uses
  %i.f = icmp sgt i32 %spec.store.select2.sink.i, %i.b
  %i.g = tail call i32 @llvm.smin.i32(i32 %spec.store.select2.sink.i, i32 %i.b) ; 2 uses
  %i.h = icmp sgt i32 %i.g, 64
  %i.i = or i1 %i.f, %i.h
  %simplifycfg.merge.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 64)
  %storemerge.i = select i1 %i.i, i32 %simplifycfg.merge.i, i32 %spec.store.select2.sink.i ; 2 uses
  store i32 %storemerge.i, ptr @blas_num_threads, align 4, !tbaa !8
  store atomic i32 %storemerge.i, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  br label %blas_get_cpu_number.exit

blas_get_cpu_number.exit:                         ; preds = %bb.a, %bb.d
  %i.j = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define ptr @blas_memory_alloc(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i32, ptr @memory_initialized, align 4, !tbaa !8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @alloc_lock) #17 ; 0 uses
  %i.c = load volatile i32, ptr @memory_initialized, align 4, !tbaa !8
  %.not52 = icmp eq i32 %i.c, 0
  br i1 %.not52, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @blas_num_threads, align 4, !tbaa !8
  %.not53 = icmp eq i32 %i.d, 0
  br i1 %.not53, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @get_num_procs()           ; 2 uses
  %i.f = tail call i32 @openblas_num_threads_env() #17 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %blas_get_cpu_number.exit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @openblas_goto_num_threads_env() #17
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  br label %blas_get_cpu_number.exit

blas_get_cpu_number.exit:                         ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %spec.store.select1.i, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %1 = tail call i32 @openblas_omp_num_threads_env() #17 ; 2 uses
  %spec.store.select2.i = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %.not16.i = icmp eq i32 %.0.i, 0
  %.not17.i = icmp slt i32 %1, 1
  %.spec.store.select2.i = select i1 %.not17.i, i32 64, i32 %spec.store.select2.i
  %spec.store.select2.sink.i = select i1 %.not16.i, i32 %.spec.store.select2.i, i32 %.0.i ; 3 uses
  %i.i = icmp sgt i32 %spec.store.select2.sink.i, %i.e
  %i.j = tail call i32 @llvm.smin.i32(i32 %spec.store.select2.sink.i, i32 %i.e) ; 2 uses
  %i.k = icmp sgt i32 %i.j, 64
  %i.l = or i1 %i.i, %i.k
  %simplifycfg.merge.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 64)
  %storemerge.i = select i1 %i.l, i32 %simplifycfg.merge.i, i32 %spec.store.select2.sink.i ; 3 uses
  store i32 %storemerge.i, ptr @blas_num_threads, align 4, !tbaa !8
  store atomic i32 %storemerge.i, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  store atomic i32 %storemerge.i, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %blas_get_cpu_number.exit, %bb.c
  tail call void @blas_set_parameter() #17
  store volatile i32 1, ptr @memory_initialized, align 4, !tbaa !8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @alloc_lock) #17 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.n = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @alloc_lock) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.q, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.7, %bb.q ] ; 9 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load atomic i32, ptr %i.p seq_cst, align 16, !tbaa !11
  %.not54 = icmp eq i32 %i.q, 0
  br i1 %.not54, label %.split.loop.exit224, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load atomic i32, ptr %i.s seq_cst, align 16, !tbaa !11
  %.not54.1 = icmp eq i32 %i.t, 0
  br i1 %.not54.1, label %.split.loop.exit222, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load atomic i32, ptr %i.v seq_cst, align 16, !tbaa !11
  %.not54.2 = icmp eq i32 %i.w, 0
  br i1 %.not54.2, label %.split.loop.exit220, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  %i.z = load atomic i32, ptr %i.y seq_cst, align 16, !tbaa !11
  %.not54.3 = icmp eq i32 %i.z, 0
  br i1 %.not54.3, label %.split.loop.exit218, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  %i.ac = load atomic i32, ptr %i.ab seq_cst, align 16, !tbaa !11
  %.not54.4 = icmp eq i32 %i.ac, 0
  br i1 %.not54.4, label %.split.loop.exit216, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 336
  %i.af = load atomic i32, ptr %i.ae seq_cst, align 16, !tbaa !11
  %.not54.5 = icmp eq i32 %i.af, 0
  br i1 %.not54.5, label %.split.loop.exit214, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 400
  %i.ai = load atomic i32, ptr %i.ah seq_cst, align 16, !tbaa !11
  %.not54.6 = icmp eq i32 %i.ai, 0
  br i1 %.not54.6, label %.split.loop.exit212, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 464
  %i.al = load atomic i32, ptr %i.ak seq_cst, align 16, !tbaa !11
  %.not54.7 = icmp eq i32 %i.al, 0
  br i1 %.not54.7, label %.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 128
  br i1 %exitcond.not.7, label %bb.r, label %bb.i, !llvm.loop !13

bb.r:                                             ; preds = %bb.q
  %.b51 = load i1, ptr @memory_overflowed, align 4
  br i1 %.b51, label %.preheader61, label %.loopexit63

.preheader61:                                     ; preds = %bb.r, %bb.s
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.7, %bb.s ], [ 128, %bb.r ] ; 10 uses
  %i.am = load ptr, ptr @newmemory, align 8, !tbaa !15
  %i.an = getelementptr [64 x i8], ptr %i.am, i64 %indvars.iv88
  %i.ao = getelementptr i8, ptr %i.an, i64 -8176
  %i.ap = load atomic i32, ptr %i.ao seq_cst, align 4, !tbaa !18
  %.not56 = icmp eq i32 %i.ap, 0
  br i1 %.not56, label %.loopexit.loopexit77, label %.preheader61.1

.preheader61.1:                                   ; preds = %.preheader61
  %indvars.iv.next89 = or disjoint i64 %indvars.iv88, 1 ; 2 uses
  %i.aq = load ptr, ptr @newmemory, align 8, !tbaa !15
  %i.ar = getelementptr [64 x i8], ptr %i.aq, i64 %indvars.iv.next89
  %i.as = getelementptr i8, ptr %i.ar, i64 -8176
  %i.at = load atomic i32, ptr %i.as seq_cst, align 4, !tbaa !18
  %.not56.1 = icmp eq i32 %i.at, 0
  br i1 %.not56.1, label %.loopexit.loopexit77, label %.preheader61.2

.preheader61.2:                                   ; preds = %.preheader61.1
  %indvars.iv.next89.1 = or disjoint i64 %indvars.iv88, 2 ; 2 uses
  %i.au = load ptr, ptr @newmemory, align 8, !tbaa !15
  %i.av = getelementptr [64 x i8], ptr %i.au, i64 %indvars.iv.next89.1
  %i.aw = getelementptr i8, ptr %i.av, i64 -8176
  %i.ax = load atomic i32, ptr %i.aw seq_cst, align 4, !tbaa !18
  %.not56.2 = icmp eq i32 %i.ax, 0
  br i1 %.not56.2, label %.loopexit.loopexit77, label %.preheader61.3

.preheader61.3:                                   ; preds = %.preheader61.2
  %indvars.iv.next89.2 = or disjoint i64 %indvars.iv88, 3 ; 2 uses
  %i.ay = load ptr, ptr @newmemory, align 8, !tbaa !15
  %i.az = getelementptr [64 x i8], ptr %i.ay, i64 %indvars.iv.next89.2
  %i.ba = getelementptr i8, ptr %i.az, i64 -8176
  %i.bb = load atomic i32, ptr %i.ba seq_cst, align 4, !tbaa !18
  %.not56.3 = icmp eq i32 %i.bb, 0
  br i1 %.not56.3, label %.loopexit.loopexit77, label %.preheader61.4

.preheader61.4:                                   ; preds = %.preheader61.3
  %indvars.iv.next89.3 = or disjoint i64 %indvars.iv88, 4 ; 2 uses
  %i.bc = load ptr, ptr @newmemory, align 8, !tbaa !15
  %i.bd = getelementptr [64 x i8], ptr %i.bc, i64 %indvars.iv.next89.3
  %i.be = getelementptr i8, ptr %i.bd, i64 -8176
  %i.bf = load atomic i32, ptr %i.be seq_cst, align 4, !tbaa !18
  %.not56.4 = icmp eq i32 %i.bf, 0
  br i1 %.not56.4, label %.loopexit.loopexit77, label %.preheader61.5

.preheader61.5:                                   ; preds = %.preheader61.4
  %indvars.iv.next89.4 = or disjoint i64 %indvars.iv88, 5 ; 2 uses
  %i.bg = load ptr, ptr @newmemory, align 8, !tbaa !15
  %i.bh = getelementptr [64 x i8], ptr %i.bg, i64 %indvars.iv.next89.4
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8176
  %i.bj = load atomic i32, ptr %i.bi seq_cst, align 4, !tbaa !18
  %.not56.5 = icmp eq i32 %i.bj, 0
  br i1 %.not56.5, label %.loopexit.loopexit77, label %.preheader61.6

.preheader61.6:                                   ; preds = %.preheader61.5
  %indvars.iv.next89.5 = or disjoint i64 %indvars.iv88, 6 ; 2 uses
  %i.bk = load ptr, ptr @newmemory, align 8, !tbaa !15
  %i.bl = getelementptr [64 x i8], ptr %i.bk, i64 %indvars.iv.next89.5
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8176
  %i.bn = load atomic i32, ptr %i.bm seq_cst, align 4, !tbaa !18
  %.not56.6 = icmp eq i32 %i.bn, 0
  br i1 %.not56.6, label %.loopexit.loopexit77, label %.preheader61.7

.preheader61.7:                                   ; preds = %.preheader61.6
  %indvars.iv.next89.6 = or disjoint i64 %indvars.iv88, 7 ; 2 uses
  %i.bo = load ptr, ptr @newmemory, align 8, !tbaa !15
  %i.bp = getelementptr [64 x i8], ptr %i.bo, i64 %indvars.iv.next89.6
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8176
  %i.br = load atomic i32, ptr %i.bq seq_cst, align 4, !tbaa !18
  %.not56.7 = icmp eq i32 %i.br, 0
  br i1 %.not56.7, label %.loopexit.loopexit77, label %bb.s

bb.s:                                             ; preds = %.preheader61.7
  %indvars.iv.next89.7 = add nuw nsw i64 %indvars.iv88, 8 ; 2 uses
  %exitcond91.not.7 = icmp eq i64 %indvars.iv.next89.7, 640
  br i1 %exitcond91.not.7, label %.loopexit63, label %.preheader61, !llvm.loop !20

.loopexit63:                                      ; preds = %bb.s, %bb.r
  %.2 = phi i64 [ 128, %bb.r ], [ 640, %bb.s ]
  %i.bs = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @alloc_lock) #17 ; 0 uses
  %i.bt = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @alloc_lock) #17 ; 0 uses
  %.b = load i1, ptr @memory_overflowed, align 4
  br i1 %.b, label %bb.ak, label %bb.ag

.split.loop.exit:                                 ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 448
  br label %.split.loop.exit224

.split.loop.exit212:                              ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 384
  br label %.split.loop.exit224

.split.loop.exit214:                              ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 320
  br label %.split.loop.exit224

.split.loop.exit216:                              ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  br label %.split.loop.exit224

.split.loop.exit218:                              ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  br label %.split.loop.exit224

.split.loop.exit220:                              ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  br label %.split.loop.exit224

.split.loop.exit222:                              ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  br label %.split.loop.exit224

.split.loop.exit224:                              ; preds = %bb.i, %.split.loop.exit222, %.split.loop.exit220, %.split.loop.exit218, %.split.loop.exit216, %.split.loop.exit214, %.split.loop.exit212, %.split.loop.exit
  %.lcssa188 = phi ptr [ %i.ca, %.split.loop.exit222 ], [ %i.bz, %.split.loop.exit220 ], [ %i.by, %.split.loop.exit218 ], [ %i.bx, %.split.loop.exit216 ], [ %i.bw, %.split.loop.exit214 ], [ %i.bv, %.split.loop.exit212 ], [ %i.bu, %.split.loop.exit ], [ %i.o, %bb.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.lcssa188, i64 16
end_hunk_0
begin_hunk_1_@blas_shutdown:bb.a
.lr.ph:                                           ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.e = icmp samesign ult i64 %indvars.iv, 128
  br i1 %i.e, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw [24 x i8], ptr @release_info, i64 %indvars.iv ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  tail call void %i.h(ptr noundef nonnull %i.f) #17
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr @new_release_info, align 8, !tbaa !27
  %i.j = getelementptr [24 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -3072
  %i.l = getelementptr i8, ptr %i.j, i64 -3064
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  tail call void %i.m(ptr noundef %i.k) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load atomic i32, ptr @release_pos seq_cst, align 4, !tbaa !9
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %.preheader17.preheader, !llvm.loop !42

.preheader17.preheader:                           ; preds = %bb.d, %bb.a
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17, %.preheader17.preheader
  %indvars.iv22 = phi i64 [ 0, %.preheader17.preheader ], [ %indvars.iv.next23.7, %.preheader17 ] ; 9 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv22 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store atomic ptr null, ptr %i.r seq_cst, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store atomic i32 0, ptr %i.s seq_cst, align 16, !tbaa !11
  store atomic i64 0, ptr %i.q seq_cst, align 16, !tbaa !43
  %i.t = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv22 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store atomic ptr null, ptr %i.v seq_cst, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store atomic i32 0, ptr %i.w seq_cst, align 16, !tbaa !11
  store atomic i64 0, ptr %i.u seq_cst, align 16, !tbaa !43
  %i.x = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv22 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  store atomic ptr null, ptr %i.z seq_cst, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  store atomic i32 0, ptr %i.aa seq_cst, align 16, !tbaa !11
  store atomic i64 0, ptr %i.y seq_cst, align 16, !tbaa !43
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv22 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  store atomic ptr null, ptr %i.ad seq_cst, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  store atomic i32 0, ptr %i.ae seq_cst, align 16, !tbaa !11
  store atomic i64 0, ptr %i.ac seq_cst, align 16, !tbaa !43
  %i.af = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv22 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 264
  store atomic ptr null, ptr %i.ah seq_cst, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 272
  store atomic i32 0, ptr %i.ai seq_cst, align 16, !tbaa !11
  store atomic i64 0, ptr %i.ag seq_cst, align 16, !tbaa !43
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv22 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 328
  store atomic ptr null, ptr %i.al seq_cst, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 336
  store atomic i32 0, ptr %i.am seq_cst, align 16, !tbaa !11
  store atomic i64 0, ptr %i.ak seq_cst, align 16, !tbaa !43
  %i.an = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv22 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 384
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 392
  store atomic ptr null, ptr %i.ap seq_cst, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 400
  store atomic i32 0, ptr %i.aq seq_cst, align 16, !tbaa !11
  store atomic i64 0, ptr %i.ao seq_cst, align 16, !tbaa !43
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr @memory, i64 %indvars.iv22 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 448
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 456
  store atomic ptr null, ptr %i.at seq_cst, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 464
  store atomic i32 0, ptr %i.au seq_cst, align 16, !tbaa !11
  store atomic i64 0, ptr %i.as seq_cst, align 16, !tbaa !43
  %indvars.iv.next23.7 = add nuw nsw i64 %indvars.iv22, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next23.7, 128
  br i1 %exitcond.not.7, label %bb.e, label %.preheader17, !llvm.loop !44

bb.e:                                             ; preds = %.preheader17
  %.b = load i1, ptr @memory_overflowed, align 4
  br i1 %.b, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %bb.e
  %.pre = load ptr, ptr @newmemory, align 8, !tbaa !15 ; 9 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %indvars.iv25 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next26.7, %.preheader ] ; 9 uses
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv25 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store atomic ptr null, ptr %i.aw seq_cst, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store atomic i32 0, ptr %i.ax seq_cst, align 8, !tbaa !18
  store atomic i64 0, ptr %i.av seq_cst, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv25 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  store atomic ptr null, ptr %i.ba seq_cst, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store atomic i32 0, ptr %i.bb seq_cst, align 8, !tbaa !18
  store atomic i64 0, ptr %i.az seq_cst, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv25 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  store atomic ptr null, ptr %i.be seq_cst, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  store atomic i32 0, ptr %i.bf seq_cst, align 8, !tbaa !18
  store atomic i64 0, ptr %i.bd seq_cst, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv25 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  store atomic ptr null, ptr %i.bi seq_cst, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  store atomic i32 0, ptr %i.bj seq_cst, align 8, !tbaa !18
  store atomic i64 0, ptr %i.bh seq_cst, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv25 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 264
  store atomic ptr null, ptr %i.bm seq_cst, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 272
  store atomic i32 0, ptr %i.bn seq_cst, align 8, !tbaa !18
  store atomic i64 0, ptr %i.bl seq_cst, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv25 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 320
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 328
  store atomic ptr null, ptr %i.bq seq_cst, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 336
  store atomic i32 0, ptr %i.br seq_cst, align 8, !tbaa !18
  store atomic i64 0, ptr %i.bp seq_cst, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv25 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 384
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 392
  store atomic ptr null, ptr %i.bu seq_cst, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 400
  store atomic i32 0, ptr %i.bv seq_cst, align 8, !tbaa !18
  store atomic i64 0, ptr %i.bt seq_cst, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %.pre, i64 %indvars.iv25 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 448
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 456
  store atomic ptr null, ptr %i.by seq_cst, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 464
  store atomic i32 0, ptr %i.bz seq_cst, align 8, !tbaa !18
  store atomic i64 0, ptr %i.bx seq_cst, align 8, !tbaa !30
  %indvars.iv.next26.7 = add nuw nsw i64 %indvars.iv25, 8 ; 2 uses
  %exitcond28.not.7 = icmp eq i64 %indvars.iv.next26.7, 512
  br i1 %exitcond28.not.7, label %bb.f, label %.preheader, !llvm.loop !45

bb.f:                                             ; preds = %.preheader
  tail call void @free(ptr noundef nonnull %.pre) #17
  store ptr null, ptr @newmemory, align 8, !tbaa !15
  store i1 false, ptr @memory_overflowed, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ca = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @alloc_lock) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @gotoblas_init() #0 {
bb.a:
  %.b = load i1, ptr @gotoblas_initialized, align 4
  br i1 %.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @pthread_atfork(ptr noundef nonnull @blas_thread_shutdown_, ptr noundef null, ptr noundef null) #17
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %openblas_fork_handler.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @openblas_warning(i32 noundef 0, ptr noundef nonnull @.str) #17
  br label %openblas_fork_handler.exit

openblas_fork_handler.exit:                       ; preds = %bb.b, %bb.c
  tail call void @openblas_read_env() #17
  %i.b = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i32, ptr @blas_num_threads, align 4
  %.not.i1 = icmp eq i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 %.not.i1, i1 false
  br i1 %or.cond, label %bb.d, label %blas_get_cpu_number.exit

bb.d:                                             ; preds = %openblas_fork_handler.exit
  %i.e = tail call i32 @get_num_procs()           ; 2 uses
  %i.f = tail call i32 @openblas_num_threads_env() #17 ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @openblas_goto_num_threads_env() #17
  %spec.store.select1.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %spec.store.select1.i, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %0 = tail call i32 @openblas_omp_num_threads_env() #17 ; 2 uses
  %spec.store.select2.i = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %.not16.i = icmp eq i32 %.0.i, 0
  %.not17.i = icmp slt i32 %0, 1
  %.spec.store.select2.i = select i1 %.not17.i, i32 64, i32 %spec.store.select2.i
  %spec.store.select2.sink.i = select i1 %.not16.i, i32 %.spec.store.select2.i, i32 %.0.i ; 3 uses
  %i.i = icmp sgt i32 %spec.store.select2.sink.i, %i.e
  %i.j = tail call i32 @llvm.smin.i32(i32 %spec.store.select2.sink.i, i32 %i.e) ; 2 uses
  %i.k = icmp sgt i32 %i.j, 64
  %i.l = or i1 %i.i, %i.k
  %simplifycfg.merge.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 64)
  %storemerge.i = select i1 %i.l, i32 %simplifycfg.merge.i, i32 %spec.store.select2.sink.i ; 2 uses
  store i32 %storemerge.i, ptr @blas_num_threads, align 4, !tbaa !8
  store atomic i32 %storemerge.i, ptr @blas_cpu_number seq_cst, align 4, !tbaa !9
  br label %blas_get_cpu_number.exit

blas_get_cpu_number.exit:                         ; preds = %bb.f, %openblas_fork_handler.exit
  %i.m = load i32, ptr @blas_server_avail, align 4, !tbaa !8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %blas_get_cpu_number.exit
  %i.o = tail call i32 @blas_thread_init() #17    ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %blas_get_cpu_number.exit
  store i1 true, ptr @gotoblas_initialized, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare void @openblas_read_env() local_unnamed_addr #4

declare i32 @blas_thread_init() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @gotoblas_quit() #0 {
bb.a:
  %.b = load i1, ptr @gotoblas_initialized, align 4
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @blas_shutdown()
  store i1 false, ptr @gotoblas_initialized, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @alloc_mmap_free(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @munmap(ptr noundef nonnull %i.a, i64 noundef 134217728) #17
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #22
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  tail call void @perror(ptr noundef nonnull @.str.13) #18
  %i.e = load ptr, ptr %0, align 8, !tbaa !34
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.d, ptr noundef %i.e) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @alloc_malloc_free(ptr nofree noundef readonly captures(none) %0) #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.a) #17
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{i64 2150395986}
!11 = !{!12, !6, i64 16}
!12 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 20}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS12newmemstruct", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!19, !6, i64 16}
!19 = !{!"newmemstruct", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 20}
!20 = distinct !{!20, !14}
!21 = !{!12, !6, i64 8}
!22 = !{!17, !17, i64 0}
!23 = distinct !{!23, !14}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!26 = !{i64 2150396666}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS9release_t", !17, i64 0}
!29 = !{!19, !6, i64 8}
!30 = !{!19, !6, i64 0}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!35, !17, i64 0}
!35 = !{!"release_t", !17, i64 0, !17, i64 8, !36, i64 16}
!36 = !{!"long", !6, i64 0}
!37 = !{!35, !17, i64 8}
!38 = distinct !{!38, !14}
!39 = !{i64 2150397985}
!40 = distinct !{!40, !14}
!41 = !{i64 2150398287}
!42 = distinct !{!42, !14}
!43 = !{!12, !6, i64 0}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
end_hunk_1
