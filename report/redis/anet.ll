inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.timeval = type { i64, i64 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"fcntl(F_GETFL): %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"fcntl(F_SETFL,O_NONBLOCK): %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"setsockopt SO_KEEPALIVE: %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"setsockopt TCP_KEEPIDLE: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"setsockopt TCP_KEEPINTVL: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"setsockopt TCP_KEEPCNT: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"setsockopt SO_SNDTIMEO: %s\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"setsockopt SO_RCVTIMEO: %s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"connect: %s\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"unix socket path too long (%zu), must be under %zu\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"/unixsocket\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"setsockopt: %s\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"setsockopt TCP_NODELAY: %s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"bind: %s\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"creating socket: %s\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"setsockopt SO_REUSEADDR: %s\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"unable to bind socket, errno: %d\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"listen: %s\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"accept: %s\00", align 1
@switch.table.anetAcceptFailureNeedsRetry = private unnamed_addr constant [50 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1], align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @anetGetError(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 4, ptr %i.b, align 4, !tbaa !9
  %i.c = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #13
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  %.pre = load i32, ptr %.sink, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.pre
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @anetSetBlock(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 3) #12 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %2, 0                        ; 2 uses
  %i.d = and i32 %i.a, 2048
  %i.e = icmp eq i32 %i.d, 0
  %i.f = xor i1 %i.c, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.a, -2049
  %masksel = select i1 %i.c, i32 2048, i32 0
  %.0 = or disjoint i32 %i.g, %masksel
  %i.h = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 4, i32 noundef %.0) #12
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.a
  %.str.1.sink = phi ptr [ @.str, %bb.a ], [ @.str.1, %bb.c ]
  %i.j = tail call ptr @__errno_location() #13
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = tail call ptr @strerror(i32 noundef %i.k) #12
  tail call void (ptr, ptr, ...) @anetSetError(ptr noundef %0, ptr noundef nonnull %.str.1.sink, ptr noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.010 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ -1, %.sink.split ]
  ret i32 %.010
}

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal void @anetSetError(ptr noundef captures(address_is_null) %0, ptr noundef readonly captures(none) %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @vsnprintf(ptr noundef nonnull %0, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %2) #12 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @anetNonBlock(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 3) #12 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 2048
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %anetSetBlock.exit

bb.c:                                             ; preds = %bb.b
  %.0.i = or disjoint i32 %i.a, 2048
  %i.d = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 4, i32 noundef %.0.i) #12
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.sink.split.i, label %anetSetBlock.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.a
  %.str.1.sink.i = phi ptr [ @.str, %bb.a ], [ @.str.1, %bb.c ]
  %i.f = tail call ptr @__errno_location() #13
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = tail call ptr @strerror(i32 noundef %i.g) #12
  tail call void (ptr, ptr, ...) @anetSetError(ptr noundef %0, ptr noundef nonnull %.str.1.sink.i, ptr noundef %i.h)
  br label %anetSetBlock.exit

anetSetBlock.exit:                                ; preds = %bb.b, %bb.c, %.sink.split.i
  %.010.i = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ -1, %.sink.split.i ]
  ret i32 %.010.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @anetBlock(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 3) #12 ; 3 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 2048
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %anetSetBlock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.a, -2049
  %i.f = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %1, i32 noundef 4, i32 noundef %i.e) #12
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %.sink.split.i, label %anetSetBlock.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.a
  %.str.1.sink.i = phi ptr [ @.str, %bb.a ], [ @.str.1, %bb.c ]
  %i.h = tail call ptr @__errno_location() #13
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #12
  tail call void (ptr, ptr, ...) @anetSetError(ptr noundef %0, ptr noundef nonnull %.str.1.sink.i, ptr noundef %i.j)
  br label %anetSetBlock.exit

anetSetBlock.exit:                                ; preds = %bb.b, %bb.c, %.sink.split.i
  %.010.i = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ -1, %.sink.split.i ]
  ret i32 %.010.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @anetCloexec(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1) #12 ; 4 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.c, label %.critedge14

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #13
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %.critedge2, !llvm.loop !13

.critedge14:                                      ; preds = %bb.b
  %.old = and i32 %i.a, 1
  %.not.old = icmp eq i32 %.old, 0
  br i1 %.not.old, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %.critedge14
  %i.f = or disjoint i32 %i.a, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.g = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 2, i32 noundef %i.f) #12 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #13
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.e, label %.critedge2, !llvm.loop !15

.critedge2:                                       ; preds = %bb.c, %bb.f, %bb.e, %.critedge14
  %.0 = phi i32 [ -1, %bb.f ], [ %i.a, %.critedge14 ], [ %i.g, %bb.e ], [ -1, %bb.c ]
  ret i32 %.0
}

end_hunk_0
begin_hunk_1_@anetFdToString:bb.a
  br i1 %or.cond, label %bb.o, label %.thread66

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %.thread, label %.thread.sink.split

bb.p:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.not55 = icmp eq ptr %1, null
  br i1 %.not55, label %bb.t, label %.thread66

.thread66:                                        ; preds = %bb.n, %bb.f, %bb.j, %bb.p
  %i.v = icmp ugt i64 %2, 1
  br i1 %i.v, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread66
  store i8 63, ptr %1, align 1, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !49
  br label %bb.t

bb.r:                                             ; preds = %.thread66
  %i.x = icmp eq i64 %2, 1
  br i1 %i.x, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %1, align 1, !tbaa !49
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r, %bb.p
  %.not56 = icmp eq ptr %3, null
  br i1 %.not56, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.t, %bb.o, %bb.h, %bb.l
  %.sink.shrunk = phi i16 [ %rev.i60, %bb.l ], [ %rev.i, %bb.h ], [ 0, %bb.o ], [ 0, %bb.t ]
  %.0.ph = phi i32 [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.o ], [ -1, %bb.t ]
  %.sink = zext i16 %.sink.shrunk to i32
  store i32 %.sink, ptr %3, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.k, %bb.g, %bb.t, %bb.o
  %.0 = phi i32 [ 0, %bb.o ], [ -1, %bb.t ], [ 0, %bb.g ], [ 0, %bb.k ], [ %.0.ph, %.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @anetPipe(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, %1
  %i.b = or i32 %i.a, 524288                      ; 2 uses
  %i.c = tail call i32 @pipe2(ptr noundef %0, i32 noundef %i.b) #12
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #13
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  switch i32 %i.e, label %bb.n [
    i32 38, label %bb.d
    i32 22, label %bb.d
  ]

bb.c:                                             ; preds = %bb.a
  %i.f = xor i32 %2, %1
  %i.g = and i32 %i.f, -524289
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.c
  %i.i = xor i32 %i.b, -1                         ; 2 uses
  %i.j = and i32 %1, %i.i
  %i.k = and i32 %2, %i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.l = tail call i32 @pipe(ptr noundef %0) #12
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.n

bb.e:                                             ; preds = %.thread, %bb.d
  %.02645 = phi i32 [ %i.k, %.thread ], [ %2, %bb.d ] ; 2 uses
  %.02744 = phi i32 [ %i.j, %.thread ], [ %1, %bb.d ] ; 2 uses
  %i.m = and i32 %.02744, 524288
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %0, align 4, !tbaa !9
  %i.o = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.n, i32 noundef 2, i32 noundef 1) #12
  %.not35 = icmp eq i32 %i.o, 0
  br i1 %.not35, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = and i32 %.02645, 524288
  %.not36 = icmp eq i32 %i.p, 0
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %i.s = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.r, i32 noundef 2, i32 noundef 1) #12
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = and i32 %.02744, -524289                 ; 2 uses
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr %0, align 4, !tbaa !9
  %i.v = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.u, i32 noundef 4, i32 noundef %i.t) #12
  %.not39 = icmp eq i32 %i.v, 0
  br i1 %.not39, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = and i32 %.02645, -524289                 ; 2 uses
  %.not40 = icmp eq i32 %i.w, 0
  br i1 %.not40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9
  %i.z = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.y, i32 noundef 4, i32 noundef %i.w) #12
  %.not41 = icmp eq i32 %i.z, 0
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f
  %i.aa = load i32, ptr %0, align 4, !tbaa !9
  %i.ab = tail call i32 @close(i32 noundef %i.aa) #12 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = tail call i32 @close(i32 noundef %i.ad) #12 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.d, %bb.c, %bb.b, %bb.m
  %.028 = phi i32 [ -1, %bb.b ], [ 0, %bb.c ], [ -1, %bb.m ], [ -1, %bb.d ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.028
}

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @anetSetSockMarkId(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !9
  %i.b = call i32 @setsockopt(i32 noundef %1, i32 noundef 1, i32 noundef 36, ptr noundef nonnull %i.a, i32 noundef 4) #12
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #13
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = call ptr @strerror(i32 noundef %i.e) #12
  call void (ptr, ptr, ...) @anetSetError(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @anetIsFifo(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = call i32 @stat64(ptr noundef %0, ptr noundef nonnull %1) #12
  %i.b = icmp ne i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 4096
  %narrow = select i1 %i.b, i1 %i.f, i1 false
  %.0 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @anetAcceptFailureNeedsRetry(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %switch.tableidx = add i32 %0, -64              ; 2 uses
  %1 = icmp ult i32 %switch.tableidx, 50
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.anetAcceptFailureNeedsRetry, i64 %2
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %switch.load, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @accept4(i32 noundef, ptr, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !18, i64 0}
!17 = !{!"timeval", !18, i64 0, !18, i64 8}
!18 = !{!"long", !11, i64 0}
!19 = !{!17, !18, i64 8}
!20 = !{!21, !10, i64 0}
!21 = !{!"addrinfo", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !22, i64 24, !24, i64 32, !25, i64 40}
!22 = !{!"p1 _ZTS8sockaddr", !23, i64 0}
!23 = !{!"any pointer", !11, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!"p1 _ZTS8addrinfo", !23, i64 0}
!26 = !{!21, !10, i64 4}
!27 = !{!21, !10, i64 8}
!28 = !{!25, !25, i64 0}
!29 = !{!21, !22, i64 24}
!30 = !{!21, !10, i64 12}
!31 = distinct !{!31, !14}
!32 = !{!21, !10, i64 16}
!33 = distinct !{!33, !14}
!34 = !{!35, !36, i64 0}
!35 = !{!"sockaddr_un", !36, i64 0, !11, i64 2}
!36 = !{!"short", !11, i64 0}
!37 = distinct !{!37, !14}
!38 = !{!39, !36, i64 0}
!39 = !{!"sockaddr", !36, i64 0, !11, i64 2}
!40 = distinct !{!40, !14}
!41 = !{!42, !36, i64 0}
!42 = !{!"sockaddr_storage", !36, i64 0, !11, i64 2, !18, i64 120}
!43 = !{!44, !36, i64 2}
!44 = !{!"sockaddr_in", !36, i64 0, !36, i64 2, !45, i64 4, !11, i64 8}
!45 = !{!"in_addr", !10, i64 0}
!46 = !{!47, !36, i64 2}
!47 = !{!"sockaddr_in6", !36, i64 0, !36, i64 2, !10, i64 4, !48, i64 8, !10, i64 24}
!48 = !{!"in6_addr", !11, i64 0}
!49 = !{!11, !11, i64 0}
end_hunk_1
