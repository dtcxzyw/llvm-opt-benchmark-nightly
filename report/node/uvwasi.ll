inline.NumInlined: 44
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uvwasi_mem_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.uv_fs_s = type { ptr, i32, [6 x ptr], i32, ptr, ptr, i64, ptr, ptr, %struct.uv_stat_t, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, double, double, %struct.uv__work, [4 x %struct.uv_buf_t] }
%struct.uv_stat_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.uv_timespec_t, %struct.uv_timespec_t, %struct.uv_timespec_t, %struct.uv_timespec_t }
%struct.uv_timespec_t = type { i64, i64 }
%struct.uv__work = type { ptr, ptr, ptr, %struct.uv__queue }
%struct.uv__queue = type { ptr, ptr }
%struct.uv_buf_t = type { ptr, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.uvwasi_filestat_s = type { i64, i64, i8, i64, i64, i64, i64, i64 }
%struct.uvwasi_dirent_s = type { i64, i64, i32, i8 }
%struct.uv_dirent_s = type { ptr, i32 }
%struct.uvwasi_poll_oneoff_state_t = type { ptr, ptr, ptr, %struct.uv_timer_s, i64, %struct.uv_loop_s, i32, i32, i32, i32, i32 }
%struct.uv_timer_s = type { ptr, ptr, i32, ptr, %struct.uv__queue, %union.anon, ptr, i32, ptr, %union.anon.0, i64, i64, i64 }
%union.anon = type { [4 x ptr] }
%union.anon.0 = type { [3 x ptr] }
%struct.uv_loop_s = type { ptr, i32, %struct.uv__queue, %union.anon.1, ptr, i32, i64, i32, %struct.uv__queue, %struct.uv__queue, ptr, i32, i32, %struct.uv__queue, %union.pthread_mutex_t, %struct.uv_async_s, %union.pthread_rwlock_t, ptr, %struct.uv__queue, %struct.uv__queue, %struct.uv__queue, %struct.uv__queue, %struct.uv__queue, ptr, %struct.uv__io_s, i32, %struct.anon, i64, i64, [2 x i32], %struct.uv__io_s, %struct.uv_signal_s, i32, %struct.uv__io_s, ptr, i32 }
%union.anon.1 = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.uv_async_s = type { ptr, ptr, i32, ptr, %struct.uv__queue, %union.anon.2, ptr, i32, ptr, %struct.uv__queue, i32 }
%union.anon.2 = type { [4 x ptr] }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%struct.anon = type { ptr, i32 }
%struct.uv_signal_s = type { ptr, ptr, i32, ptr, %struct.uv__queue, %union.anon.3, ptr, i32, ptr, i32, %struct.anon.4, i32, i32 }
%union.anon.3 = type { [4 x ptr] }
%struct.anon.4 = type { ptr, ptr, ptr, i32 }
%struct.uv__io_s = type { ptr, %struct.uv__queue, %struct.uv__queue, i32, i32, i32 }
%struct.uvwasi_subscription_s = type { i64, i8, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i64, i64, i16 }
%struct.recv_data_s = type { ptr, i64, i64, i32 }
%struct.shutdown_data_s = type { i32, i32 }

@default_allocator = internal constant %struct.uvwasi_mem_s { ptr null, ptr @default_malloc, ptr @default_free, ptr @default_calloc, ptr @default_realloc }, align 8
@.str = private unnamed_addr constant [13 x i8] c"UVWASI_E2BIG\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"UVWASI_EACCES\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"UVWASI_EADDRINUSE\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"UVWASI_EADDRNOTAVAIL\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"UVWASI_EAFNOSUPPORT\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"UVWASI_EAGAIN\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"UVWASI_EALREADY\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"UVWASI_EBADF\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"UVWASI_EBADMSG\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"UVWASI_EBUSY\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"UVWASI_ECANCELED\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"UVWASI_ECHILD\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"UVWASI_ECONNABORTED\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"UVWASI_ECONNREFUSED\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"UVWASI_ECONNRESET\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"UVWASI_EDEADLK\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"UVWASI_EDESTADDRREQ\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"UVWASI_EDOM\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"UVWASI_EDQUOT\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"UVWASI_EEXIST\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"UVWASI_EFAULT\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"UVWASI_EFBIG\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"UVWASI_EHOSTUNREACH\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"UVWASI_EIDRM\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"UVWASI_EILSEQ\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"UVWASI_EINPROGRESS\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"UVWASI_EINTR\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"UVWASI_EINVAL\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"UVWASI_EIO\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"UVWASI_EISCONN\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"UVWASI_EISDIR\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"UVWASI_ELOOP\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"UVWASI_EMFILE\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"UVWASI_EMLINK\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"UVWASI_EMSGSIZE\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"UVWASI_EMULTIHOP\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"UVWASI_ENAMETOOLONG\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"UVWASI_ENETDOWN\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"UVWASI_ENETRESET\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"UVWASI_ENETUNREACH\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"UVWASI_ENFILE\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"UVWASI_ENOBUFS\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"UVWASI_ENODEV\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"UVWASI_ENOENT\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"UVWASI_ENOEXEC\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"UVWASI_ENOLCK\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"UVWASI_ENOLINK\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"UVWASI_ENOMEM\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"UVWASI_ENOMSG\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"UVWASI_ENOPROTOOPT\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"UVWASI_ENOSPC\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"UVWASI_ENOSYS\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"UVWASI_ENOTCONN\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"UVWASI_ENOTDIR\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"UVWASI_ENOTEMPTY\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"UVWASI_ENOTRECOVERABLE\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"UVWASI_ENOTSOCK\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"UVWASI_ENOTSUP\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"UVWASI_ENOTTY\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"UVWASI_ENXIO\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"UVWASI_EOVERFLOW\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"UVWASI_EOWNERDEAD\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"UVWASI_EPERM\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"UVWASI_EPIPE\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"UVWASI_EPROTO\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"UVWASI_EPROTONOSUPPORT\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"UVWASI_EPROTOTYPE\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"UVWASI_ERANGE\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"UVWASI_EROFS\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"UVWASI_ESPIPE\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"UVWASI_ESRCH\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"UVWASI_ESTALE\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"UVWASI_ETIMEDOUT\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"UVWASI_ETXTBSY\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"UVWASI_EXDEV\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"UVWASI_ENOTCAPABLE\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"UVWASI_ESUCCESS\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"UVWASI_UNKNOWN_ERROR\00", align 1
@switch.table.uvwasi_fd_advise = private unnamed_addr constant [6 x i8] c"\00\02\01\03\04\05", align 4
@switch.table.uvwasi_embedder_err_code_to_string = private unnamed_addr constant [77 x ptr] [ptr @.str.76, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], align 8

; Function Attrs: nounwind uwtable
define hidden ptr @uvwasi__malloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.f = tail call ptr %i.d(i64 noundef %1, ptr noundef %i.e) #21
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define hidden void @uvwasi__free(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void %i.e(ptr noundef nonnull %1, ptr noundef %i.f) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @uvwasi__calloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.f = tail call ptr %i.d(i64 noundef %1, i64 noundef %2, ptr noundef %i.e) #21
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define hidden ptr @uvwasi__realloc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.f = tail call ptr %i.d(ptr noundef %1, i64 noundef %2, ptr noundef %i.e) #21
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @on_new_connection(ptr nofree readnone captures(none) %0, i32 %1) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @uvwasi_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.uv_fs_s, align 8            ; 7 uses
  %3 = alloca %struct.uv_fs_s, align 8            ; 6 uses
  %4 = alloca %struct.sockaddr_in, align 4        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !24
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.i = icmp eq ptr %i.g, null
  %spec.select = select i1 %i.i, ptr @default_allocator, ptr %i.g ; 3 uses
  store ptr %spec.select, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31   ; 4 uses
  %.not231 = icmp eq i32 %i.o, 0
  br i1 %.not231, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.q, align 8, !tbaa !33
  br label %.loopexit188

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %wide.trip.count = zext i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0151203 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #22
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %.0151203, 1
  %i.y = add i32 %i.x, %i.w                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.o, ptr %i.z, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !33
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.loopexit188, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = load ptr, ptr %spec.select, align 8, !tbaa !20
  %i.af = tail call ptr %i.ad(i64 noundef %i.ab, ptr noundef %i.ae) #21, !inline_history !38 ; 2 uses
  store ptr %i.af, ptr %i.j, align 8, !tbaa !39
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread177, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.n, align 8, !tbaa !31
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !9   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !20
  %i.an = tail call ptr %i.al(i64 noundef %i.ai, i64 noundef 8, ptr noundef %i.am) #21, !inline_history !40 ; 2 uses
  store ptr %i.an, ptr %i.k, align 8, !tbaa !41
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread177, label %.preheader187

.preheader187:                                    ; preds = %bb.f
  %i.ap = load i32, ptr %i.n, align 8, !tbaa !31
  %.not232 = icmp eq i32 %i.ap, 0
  br i1 %.not232, label %.loopexit188, label %.lr.ph208

.lr.ph208:                                        ; preds = %.preheader187
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph208, %bb.g
  %indvars.iv258 = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next259, %bb.g ] ; 3 uses
  %.0149206 = phi i32 [ 0, %.lr.ph208 ], [ %i.bf, %bb.g ] ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv258
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35 ; 2 uses
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #22
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.ay = zext i32 %.0149206 to i64               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  %i.ba = zext i32 %i.aw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr nonnull align 1 %i.at, i64 %i.ba, i1 false)
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv258
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !35
  %i.bf = add i32 %i.aw, %.0149206
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !31
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next259, %i.bh
  br i1 %i.bi, label %bb.g, label %.loopexit188, !llvm.loop !42

.loopexit188:                                     ; preds = %bb.g, %._crit_edge.thread, %.preheader187, %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43 ; 3 uses
  %.not163 = icmp eq ptr %i.bk, null
  br i1 %.not163, label %.loopexit185.sink.split, label %.preheader186

end_hunk_0
begin_hunk_1_@uvwasi__clock_gettime_process_cputime
declare zeroext i16 @uvwasi__clock_gettime_process_cputime(ptr noundef) local_unnamed_addr #4

declare zeroext i16 @uvwasi__clock_gettime_thread_cputime(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext range(i16 0, 29) i16 @uvwasi_environ_get(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45   ; 3 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %wide.trip.count = zext i32 %i.e to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.i = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.i   ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.g, i64 %i.i
  %scevgep28 = getelementptr i8, ptr %0, i64 56
  %bound0 = icmp ult ptr %1, %scevgep27
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %1, %scevgep28
  %bound130 = icmp ult ptr %i.h, %scevgep
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !47, !alias.scope !99
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.k = ptrtoint <2 x ptr> %broadcast.splat to <2 x i64> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x ptr>, ptr %i.l, align 8, !tbaa !35, !alias.scope !102
  %wide.load32 = load <2 x ptr>, ptr %i.m, align 8, !tbaa !35, !alias.scope !102
  %i.n = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.o = ptrtoint <2 x ptr> %wide.load32 to <2 x i64>
  %i.p = sub <2 x i64> %i.n, %i.k
  %i.q = sub <2 x i64> %i.o, %i.k
  %i.r = getelementptr inbounds i8, ptr %2, <2 x i64> %i.p
  %i.s = getelementptr inbounds i8, ptr %2, <2 x i64> %i.q
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x ptr> %i.r, ptr %i.t, align 8, !tbaa !35, !alias.scope !104, !noalias !106
  store <2 x ptr> %i.s, ptr %i.u, align 8, !tbaa !35, !alias.scope !104, !noalias !106
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !35
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !108

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.am, ptr %i.an, align 8, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store ptr %i.au, ptr %i.av, align 8, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !35
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %2, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !35
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !35
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !46
  %i.bq = zext i32 %i.bp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr align 1 %i.bn, i64 %i.bq, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.018 = phi i16 [ 0, %._crit_edge ], [ 28, %bb.a ]
  ret i16 %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext range(i16 0, 29) i16 @uvwasi_environ_sizes_get(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !45
  store i32 %i.e, ptr %1, align 4, !tbaa !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46
  store i32 %i.g, ptr %2, align 4, !tbaa !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ 0, %bb.b ], [ 28, %bb.a ]
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @uvwasi_fd_advise(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.uv_fs_s, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ult i8 %4, 6
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.uvwasi_fd_advise, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = call zeroext i16 @uvwasi_fd_table_get(ptr noundef %i.e, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 128, i64 noundef 0) #21 ; 2 uses
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %switch.lookup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !81
  %i.j = call i32 @uv_fs_fstat(ptr noundef null, ptr noundef nonnull %5, i32 noundef %i.i, ptr noundef null) #21
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.m = load i64, ptr %i.l, align 8, !tbaa !110
  %i.n = and i64 %i.m, 61440
  %i.o = icmp eq i64 %i.n, 16384
  br i1 %i.o, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !81
  %i.s = call i32 @posix_fadvise64(i32 noundef %i.r, i64 noundef %2, i64 noundef %3, i32 noundef %switch.ext) #21 ; 2 uses
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @uv_translate_sys_error(i32 noundef %i.s) #21
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e
  %.sink = phi i32 [ %i.t, %bb.e ], [ -1, %bb.b ]
  %i.u = call zeroext i16 @uvwasi__translate_uv_error(i32 noundef %.sink) #21
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c, %bb.d
  %.014 = phi i16 [ 8, %bb.c ], [ 0, %bb.d ], [ %i.u, %.sink.split ]
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  call void @uv_mutex_unlock(ptr noundef nonnull %i.w) #21
  call void @uv_fs_req_cleanup(ptr noundef nonnull %5) #21
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup, %bb.a, %bb.f
  %.015 = phi i16 [ %.014, %bb.f ], [ 28, %bb.a ], [ %i.f, %switch.lookup ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i16 %.015
}

declare i32 @uv_fs_fstat(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @posix_fadvise64(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @uv_translate_sys_error(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @uvwasi_fd_allocate(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.uv_fs_s, align 8            ; 6 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !30
  %i.d = call zeroext i16 @uvwasi_fd_table_get(ptr noundef %i.c, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef 0) #21 ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81
  %i.h = call i32 @uv_fs_fstat(ptr noundef null, ptr noundef nonnull %4, i32 noundef %i.g, ptr noundef null) #21 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.j = load i64, ptr %i.i, align 8, !tbaa !111
  call void @uv_fs_req_cleanup(ptr noundef nonnull %4) #21
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.k = add i64 %3, %2                           ; 2 uses
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !81
  %i.p = call i32 @uv_fs_ftruncate(ptr noundef null, ptr noundef nonnull %4, i32 noundef %i.o, i64 noundef %i.k, ptr noundef null) #21 ; 2 uses
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c
  %.sink = phi i32 [ %i.h, %bb.c ], [ %i.p, %bb.e ]
  %i.q = call zeroext i16 @uvwasi__translate_uv_error(i32 noundef %.sink) #21
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.e
  %.0 = phi i16 [ 0, %bb.e ], [ 0, %bb.d ], [ %i.q, %.sink.split ]
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  call void @uv_mutex_unlock(ptr noundef nonnull %i.s) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.015 = phi i16 [ %.0, %bb.f ], [ 28, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i16 %.015
}

declare i32 @uv_fs_ftruncate(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @uvwasi_fd_close(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.uv_fs_s, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !30
  %i.d = tail call zeroext i16 @uvwasi_fd_table_lock(ptr noundef %i.c) #21 ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = call zeroext i16 @uvwasi_fd_table_get_nolock(ptr noundef %i.e, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 0) #21 ; 2 uses
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @free_handle_sync(ptr noundef nonnull %0, ptr noundef nonnull %i.i) #21 ; 2 uses
  %i.l = trunc i32 %i.k to i16
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  call void @uv_mutex_unlock(ptr noundef nonnull %i.n) #21
  %i.o = and i32 %i.k, 65535
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81
  %i.r = call i32 @uv_fs_close(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.q, ptr noundef null) #21 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  call void @uv_mutex_unlock(ptr noundef nonnull %i.t) #21
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #21
  %.not19 = icmp eq i32 %i.r, 0
  br i1 %.not19, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call zeroext i16 @uvwasi__translate_uv_error(i32 noundef %i.r) #21
  br label %bb.g

.thread:                                          ; preds = %bb.d, %bb.e
  %i.v = load ptr, ptr %0, align 8, !tbaa !30
  %i.w = call zeroext i16 @uvwasi_fd_table_remove_nolock(ptr noundef nonnull %0, ptr noundef %i.v, i32 noundef %1) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.b, %.thread, %bb.f
  %.014 = phi i16 [ %i.f, %bb.b ], [ %i.u, %bb.f ], [ %i.w, %.thread ], [ %i.l, %bb.d ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !30
  %i.y = call zeroext i16 @uvwasi_fd_table_unlock(ptr noundef %i.x) #21 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.015 = phi i16 [ %.014, %bb.g ], [ 28, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i16 %.015
}

declare zeroext i16 @uvwasi_fd_table_lock(ptr noundef) local_unnamed_addr #4

declare zeroext i16 @uvwasi_fd_table_get_nolock(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @uv_fs_close(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @free_handle_sync(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i16 @uvwasi_fd_table_remove_nolock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i16 @uvwasi_fd_table_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @uvwasi_fd_datasync(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.uv_fs_s, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !30
  %i.d = call zeroext i16 @uvwasi_fd_table_get(ptr noundef %i.c, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 0) #21 ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81
  %i.h = call i32 @uv_fs_fdatasync(ptr noundef null, ptr noundef nonnull %2, i32 noundef %i.g, ptr noundef null) #21 ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  call void @uv_mutex_unlock(ptr noundef nonnull %i.j) #21
  call void @uv_fs_req_cleanup(ptr noundef nonnull %2) #21
end_hunk_1
