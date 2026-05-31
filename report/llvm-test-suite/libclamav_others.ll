inline.NumInlined: 21
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.cli_md5_ctx = type { i32, i32, i32, i32, i32, i32, [64 x i8], [16 x i32] }
%struct.timeval = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@cli_debug_flag = dso_local local_unnamed_addr global i8 0, align 1
@cli_leavetemps_flag = dso_local local_unnamed_addr global i8 0, align 1
@.str = private unnamed_addr constant [20 x i8] c"LibClamAV Warning: \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"LibClamAV Error: \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"devel-20071218\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"No viruses detected\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Virus(es) detected\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Recursion limit exceeded\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"File size limit exceeded\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Files number limit exceeded\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"RAR module failure\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Zip module failure\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"GZip module failure\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"MS Expand module failure\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"MS CAB module failure\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"OLE2 module failure\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Unable to create temporary file\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Unable to create temporary directory\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Unable to synchronize file <-> disk\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Unable to allocate memory\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Unable to open file or directory\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Malformed database\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Too short pattern detected\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Broken or not a CVD file\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"CVD extraction failure\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"MD5 verification error\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Digital signature verification error\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"Null argument passed while initialized is required\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Input/Output error\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Bad format or broken data\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Not supported data format\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Unable to lock database directory\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"ARJ module failure\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Unknown error code\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"cli_md5file(): Can't read file %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [85 x i8] c"cli_malloc(): Attempt to allocate %u bytes. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"cli_malloc(): Can't allocate memory (%u bytes).\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"malloc_problem\00", align 1
@.str.38 = private unnamed_addr constant [85 x i8] c"cli_calloc(): Attempt to allocate %u bytes. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"cli_calloc(): Can't allocate memory (%u bytes).\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"calloc_problem\00", align 1
@.str.41 = private unnamed_addr constant [86 x i8] c"cli_realloc(): Attempt to allocate %u bytes. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"cli_realloc(): Can't re-allocate memory to %u bytes.\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"realloc_problem\00", align 1
@.str.44 = private unnamed_addr constant [87 x i8] c"cli_realloc2(): Attempt to allocate %u bytes. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"cli_realloc2(): Can't re-allocate memory to %u bytes.\0A\00", align 1
@.str.46 = private unnamed_addr constant [66 x i8] c"cli_strdup(): s == NULL. Please report to http://bugs.clamav.net\0A\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"cli_strdup(): Can't allocate memory (%u bytes).\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"strdup_problem\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"TMPDIR=%s\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"Setting %s as global temporary directory\0A\00", align 1
@.str.51 = private unnamed_addr constant [68 x i8] c"Can't set TMPDIR variable - insufficient space in the environment.\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"cli_gentemp('%s'): out of memory\0A\00", align 1
@name_salt = internal unnamed_addr global [16 x i8] c"\10&a\0C\08\04H\C4\D9\90!|\12\0B\11\FD", align 16
@.str.55 = private unnamed_addr constant [11 x i8] c"%s/clamav-\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"cli_gentempfd: Can't create temporary file %s: %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [53 x i8] c"cli_rmdirs: Can't remove temporary directory %s: %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.61 = private unnamed_addr constant [76 x i8] c"cli_rmdirs: Can't remove some temporary directories due to access problem.\0A\00", align 1
@.str.62 = private unnamed_addr constant [46 x i8] c"cli_rmdirs: Can't remove nested directory %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"cli_rmdirs: Couldn't remove %s: %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"cli_readn: read error: %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"cli_writen: write error: %s\0A\00", align 1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @cli_warnmsg(ptr noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.a, ptr noundef nonnull align 1 dereferenceable(20) @.str, i64 noundef 19, i1 false) #24
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 8173, ptr noundef %0, ptr noundef nonnull %1) #24 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8191
  store i8 0, ptr %i.d, align 1, !tbaa !8
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.f = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.e) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @cli_errmsg(ptr noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [8192 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, i64 noundef 17, i1 false) #24
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.b, i64 noundef 8175, ptr noundef %0, ptr noundef nonnull %1) #24 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8191
  store i8 0, ptr %i.d, align 1, !tbaa !8
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.f = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.e) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cli_dbgmsg(ptr noundef readonly captures(none) %0, ...) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @cli_debug_flag, align 1, !tbaa !8
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cl_debug() local_unnamed_addr #5 {
bb.a:
  store i8 1, ptr @cli_debug_flag, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @cl_retflevel() local_unnamed_addr #6 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @cl_retver() local_unnamed_addr #6 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @cl_strerror(i32 noundef %0) local_unnamed_addr #6 {
  switch i32 %0, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %2
    i32 -100, label %3
    i32 -101, label %4
    i32 -102, label %5
    i32 -103, label %6
    i32 -104, label %7
    i32 -105, label %8
    i32 -108, label %9
    i32 -109, label %10
    i32 -107, label %11
    i32 -112, label %12
    i32 -118, label %13
    i32 -113, label %14
    i32 -114, label %15
    i32 -115, label %16
    i32 -116, label %17
    i32 -117, label %18
    i32 -119, label %19
    i32 -120, label %20
    i32 -121, label %21
    i32 -122, label %22
    i32 -111, label %23
    i32 -123, label %24
    i32 -124, label %25
    i32 -125, label %26
    i32 -126, label %27
    i32 -127, label %bb.a
  ]

2:                                                ; preds = %1
  br label %bb.c

3:                                                ; preds = %1
  br label %bb.c

4:                                                ; preds = %1
  br label %bb.c

5:                                                ; preds = %1
  br label %bb.c

6:                                                ; preds = %1
  br label %bb.c

7:                                                ; preds = %1
  br label %bb.c

8:                                                ; preds = %1
  br label %bb.c

9:                                                ; preds = %1
  br label %bb.c

10:                                               ; preds = %1
  br label %bb.c

11:                                               ; preds = %1
  br label %bb.c

12:                                               ; preds = %1
  br label %bb.c

13:                                               ; preds = %1
  br label %bb.c

14:                                               ; preds = %1
  br label %bb.c

15:                                               ; preds = %1
  br label %bb.c

16:                                               ; preds = %1
  br label %bb.c

17:                                               ; preds = %1
  br label %bb.c

18:                                               ; preds = %1
  br label %bb.c

19:                                               ; preds = %1
  br label %bb.c

20:                                               ; preds = %1
  br label %bb.c

21:                                               ; preds = %1
  br label %bb.c

22:                                               ; preds = %1
  br label %bb.c

23:                                               ; preds = %1
  br label %bb.c

24:                                               ; preds = %1
  br label %bb.c

25:                                               ; preds = %1
  br label %bb.c

26:                                               ; preds = %1
  br label %bb.c

27:                                               ; preds = %1
  br label %bb.c

bb.a:                                             ; preds = %1
  br label %bb.c

bb.b:                                             ; preds = %1
  br label %bb.c

bb.c:                                             ; preds = %1, %bb.b, %bb.a, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %.0 = phi ptr [ @.str.31, %bb.b ], [ @.str.30, %bb.a ], [ @.str.4, %2 ], [ @.str.5, %3 ], [ @.str.6, %4 ], [ @.str.7, %5 ], [ @.str.8, %6 ], [ @.str.9, %7 ], [ @.str.10, %8 ], [ @.str.11, %9 ], [ @.str.12, %10 ], [ @.str.13, %11 ], [ @.str.14, %12 ], [ @.str.15, %13 ], [ @.str.16, %14 ], [ @.str.17, %15 ], [ @.str.18, %16 ], [ @.str.19, %17 ], [ @.str.20, %18 ], [ @.str.21, %19 ], [ @.str.22, %20 ], [ @.str.23, %21 ], [ @.str.24, %22 ], [ @.str.25, %23 ], [ @.str.26, %24 ], [ @.str.27, %25 ], [ @.str.28, %26 ], [ @.str.29, %27 ], [ @.str.3, %1 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cli_md5digest(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %1 = alloca %struct.cli_md5_ctx, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %cli_malloc.exit.thread, label %cli_malloc.exit

cli_malloc.exit.thread:                           ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef 16)
  tail call void @perror(ptr noundef nonnull @.str.37) #25
  br label %bb.i

cli_malloc.exit:                                  ; preds = %bb.a
  call void @cli_md5_init(ptr noundef nonnull %1) #24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %cli_malloc.exit
  %.015.i = phi i32 [ 8192, %cli_malloc.exit ], [ %.015.i.be, %.backedge ] ; 5 uses
  %.0.i7 = phi ptr [ %i.a, %cli_malloc.exit ], [ %.0.i7.be, %.backedge ] ; 3 uses
  %i.c = zext i32 %.015.i to i64
  %i.d = call i64 @read(i32 noundef %0, ptr noundef %.0.i7, i64 noundef %i.c) #24 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %cli_readn.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #27
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @strerror(i32 noundef %i.i) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.64, ptr noundef %i.k)
  br label %cli_readn.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.l = sub i32 %.015.i, %i.e
  %i.m = and i64 %i.d, 2147483647
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i7, i64 %i.m
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.116.i = phi i32 [ %.015.i, %bb.d ], [ %i.l, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.0.i7, %bb.d ], [ %i.n, %bb.f ]
  %.not.i8 = icmp eq i32 %.116.i, 0
  br i1 %.not.i8, label %cli_readn.exit.thread, label %.backedge

.backedge:                                        ; preds = %bb.g, %cli_readn.exit.thread
  %.015.i.be = phi i32 [ %.116.i, %bb.g ], [ 8192, %cli_readn.exit.thread ]
  %.0.i7.be = phi ptr [ %.1.i, %bb.g ], [ %i.a, %cli_readn.exit.thread ]
  br label %bb.b, !llvm.loop !12

cli_readn.exit:                                   ; preds = %bb.b
  %i.o = sub i32 8192, %.015.i
  %.not6 = icmp eq i32 %.015.i, 8192
  br i1 %.not6, label %bb.h, label %cli_readn.exit.thread

cli_readn.exit.thread:                            ; preds = %bb.g, %bb.e, %cli_readn.exit
  %.017.i13 = phi i32 [ %i.o, %cli_readn.exit ], [ -1, %bb.e ], [ 8192, %bb.g ]
  %i.p = sext i32 %.017.i13 to i64
  call void @cli_md5_update(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.p) #24
  br label %.backedge

bb.h:                                             ; preds = %cli_readn.exit
  call void @cli_md5_final(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #24
  br label %bb.i

bb.i:                                             ; preds = %cli_malloc.exit.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @cli_malloc(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %0, -184549377
  %or.cond = icmp ult i64 %i.a, -184549376
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35, i64 noundef %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @malloc(i64 noundef %0) #26 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.36, i64 noundef %0)
  tail call void @perror(ptr noundef nonnull @.str.37) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.b, %bb.c ]
  ret ptr %.0
}

declare void @cli_md5_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @cli_readn(i32 noundef %0, ptr noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.015 = phi i32 [ %2, %bb.a ], [ %.116, %bb.h ] ; 4 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %.1, %bb.h ]     ; 3 uses
  %i.a = zext i32 %.015 to i64
  %i.b = tail call i64 @read(i32 noundef %0, ptr noundef %.0, i64 noundef %i.a) #24 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sub i32 %2, %.015
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.c, 0
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @__errno_location() #27
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = icmp eq i32 %i.h, 4
  br i1 %i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @strerror(i32 noundef %i.h) #24
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.64, ptr noundef %i.j)
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.k = sub i32 %.015, %i.c
  %i.l = and i64 %i.b, 2147483647
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 %i.l
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.116 = phi i32 [ %.015, %bb.e ], [ %i.k, %bb.g ] ; 2 uses
  %.1 = phi ptr [ %.0, %bb.e ], [ %i.m, %bb.g ]
  %.not = icmp eq i32 %.116, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !14

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.c
  %.017 = phi i32 [ %i.e, %bb.c ], [ -1, %bb.f ], [ %2, %bb.h ]
  ret i32 %.017
}

declare void @cli_md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @cli_md5_final(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @cli_md5stream(ptr noundef captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 20 uses
  %i.b = alloca [8192 x i8], align 16             ; 5 uses
  %2 = alloca %struct.cli_md5_ctx, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @cli_md5_init(ptr noundef nonnull %2) #24
  %i.c = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 8192, ptr noundef %0) ; 2 uses
  %i.d = and i64 %i.c, 4294967295
  %.not20 = icmp eq i64 %i.d, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi i64 [ %i.g, %.lr.ph ], [ %i.c, %bb.a ]
  %sext = shl i64 %i.e, 32
  %i.f = ashr exact i64 %sext, 32
  call void @cli_md5_update(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i64 noundef %i.f) #24
  %i.g = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 8192, ptr noundef %0) ; 2 uses
  %i.h = and i64 %i.g, 4294967295
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @cli_md5_final(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #24
  %i.i = call noalias dereferenceable_or_null(33) ptr @calloc(i64 noundef 33, i64 noundef 1) #28 ; 18 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %cli_calloc.exit.thread, label %cli_calloc.exit.preheader

cli_calloc.exit.preheader:                        ; preds = %._crit_edge
  %i.j = load i8, ptr %i.a, align 16, !tbaa !8
end_hunk_0
