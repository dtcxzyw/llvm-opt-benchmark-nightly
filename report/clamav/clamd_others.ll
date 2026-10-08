Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/clamd_others?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.fd_data = type { ptr, ptr, i64, ptr, i64 }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%union.anon = type { %struct.cmsghdr, [8 x i8] }
%struct.cmsghdr = type { i64, i32, i32, [0 x i8] }
%struct.iovec = type { ptr, i64 }

@.str = private unnamed_addr constant [11 x i8] c"VirusEvent\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"CLAM_VIRUSEVENT_FILENAME\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"CLAM_VIRUSEVENT_VIRUSNAME\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%v\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [139 x i8] c"The filename format character has been disabled due to security concerns, use the 'CLAM_VIRUSEVENT_FILENAME' environment variable instead.\00", align 1
@virusaction_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"VirusEvent: fork failed.\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Number of file descriptors polled: %u fds\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"add_fd: invalid fd passed to add_fd\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"add_fd: Memory allocation failed for fd_buf\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"fds_poll_recv: timeout after %d seconds\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"poll_recv_fds FD mismatch\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Received POLLIN|POLLHUP on fd %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Client disconnected (FD %d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Error condition on fd %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"poll_recv_fds: poll failed: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"add_fd: Memory allocation failed for command buffer\0A\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"realloc_polldata: Memory allocation failed for poll_data\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Closing unclaimed FD: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Message truncated at %d bytes\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"Control message truncated at %d bytes, %d data read\0A\00", align 1
@.str.26 = private unnamed_addr constant [136 x i8] c"Control message truncated, no control data received, %d bytes read(Is SELinux/AppArmor enabled, and blocking file descriptor passing?)\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"Unclaimed file descriptor received. closing: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Received a file descriptor: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @virusaction(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call ptr @optget(ptr noundef %2, ptr noundef nonnull @.str) #21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %xfree.exit95, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @getenv(ptr noundef nonnull @.str.1) #21 ; 2 uses
  %.not83 = icmp eq ptr %i.e, null                ; 3 uses
  br i1 %.not83, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call noalias ptr @strdup(ptr noundef nonnull %i.e) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ] ; 2 uses
  store ptr %i.g, ptr %i.a, align 16, !tbaa !11
  %.not84 = icmp ne ptr %i.g, null                ; 3 uses
  %i.h = zext i1 %.not84 to i64
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.j = add i64 %i.i, 26
  %i.k = call noalias ptr @malloc(i64 noundef %i.j) #23 ; 5 uses
  %.not85 = icmp eq ptr %i.k, null                ; 3 uses
  br i1 %.not85, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %0) #21 ; 0 uses
  %i.m = select i1 %.not84, i64 2, i64 1
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not84, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  store ptr %i.k, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.068 = phi i64 [ %i.m, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.o = add i64 %i.n, 27
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #23 ; 4 uses
  %.not86 = icmp eq ptr %i.p, null                ; 3 uses
  br i1 %.not86, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #21 ; 0 uses
  %i.r = add nuw nsw i64 %.068, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.068
  store ptr %i.p, ptr %i.s, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %i.r, %bb.g ], [ %.068, %bb.f ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1
  store ptr null, ptr %i.t, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36   ; 6 uses
  %i.w = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) @.str.5) #22 ; 2 uses
  %.not87106 = icmp eq ptr %i.w, null
  br i1 %.not87106, label %.preheader105, label %.lr.ph

.preheader105:                                    ; preds = %.lr.ph, %bb.h
  %.067.lcssa = phi i64 [ 0, %bb.h ], [ %i.aa, %.lr.ph ]
  %i.x = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) @.str.6) #22 ; 2 uses
  %.not88108 = icmp eq ptr %i.x, null
  br i1 %.not88108, label %._crit_edge, label %.lr.ph110

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %i.y = phi ptr [ %i.ab, %.lr.ph ], [ %i.w, %bb.h ]
  %.067107 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aa = add i64 %.067107, 1                     ; 2 uses
  %i.ab = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) @.str.5) #22 ; 2 uses
  %.not87 = icmp eq ptr %i.ab, null
  br i1 %.not87, label %.preheader105, label %.lr.ph

.lr.ph110:                                        ; preds = %.preheader105, %.lr.ph110
  %i.ac = phi ptr [ %i.af, %.lr.ph110 ], [ %i.x, %.preheader105 ]
  %.0109 = phi i64 [ %i.ae, %.lr.ph110 ], [ 0, %.preheader105 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = add i64 %.0109, 1                       ; 2 uses
  %i.af = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) @.str.6) #22 ; 2 uses
  %.not88 = icmp eq ptr %i.af, null
  br i1 %.not88, label %._crit_edge.loopexit, label %.lr.ph110

._crit_edge.loopexit:                             ; preds = %.lr.ph110
  %i.ag = mul i64 %i.ae, 138
  %i.ah = or disjoint i64 %i.ag, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader105
  %.0.lcssa = phi i64 [ 1, %.preheader105 ], [ %i.ah, %._crit_edge.loopexit ]
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #22 ; 4 uses
  %i.aj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.ak = mul i64 %i.aj, %.067.lcssa
  %i.al = add i64 %.0.lcssa, %i.ai
  %i.am = add i64 %i.al, %i.ak
  %i.an = call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 1) #24 ; 7 uses
  %.not89 = icmp eq ptr %i.an, null
  br i1 %.not89, label %bb.i, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not116 = icmp eq i64 %i.ai, 0
  br i1 %.not116, label %._crit_edge115, label %.lr.ph114

bb.i:                                             ; preds = %._crit_edge
  br i1 %.not83, label %xfree.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %xfree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.ao) #21
  br label %xfree.exit

xfree.exit:                                       ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not85, label %xfree.exit93, label %bb.l

bb.l:                                             ; preds = %xfree.exit
  call void @free(ptr noundef nonnull %i.k) #21
  br label %xfree.exit93

xfree.exit93:                                     ; preds = %xfree.exit, %bb.l
  br i1 %.not86, label %xfree.exit95, label %xfree.exit95.sink.split

.lr.ph114:                                        ; preds = %.preheader, %bb.p
  %.2113 = phi i64 [ %.3, %bb.p ], [ 0, %.preheader ] ; 2 uses
  %.069112 = phi i64 [ %i.aw, %bb.p ], [ 0, %.preheader ] ; 4 uses
  %i.ap = add nuw i64 %.069112, 1                 ; 4 uses
  %i.aq = icmp ult i64 %i.ap, %i.ai
  br i1 %i.aq, label %3, label %.critedge91

3:                                                ; preds = %.lr.ph114
  %4 = getelementptr inbounds nuw i8, ptr %i.v, i64 %.069112
  %5 = load i8, ptr %4, align 1, !tbaa !12
  %6 = icmp eq i8 %5, 37
  br i1 %6, label %bb.m, label %.critedge91

bb.m:                                             ; preds = %3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  switch i8 %i.as, label %.critedge91 [
    i8 118, label %bb.n
    i8 102, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.at = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) %1) #21 ; 0 uses
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.an)
  %endptr = getelementptr inbounds i8, ptr %i.an, i64 %strlen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(139) %endptr, ptr noundef nonnull align 1 dereferenceable(139) @.str.7, i64 139, i1 false)
  br label %bb.p

.critedge91:                                      ; preds = %bb.m, %3, %.lr.ph114
  %7 = getelementptr inbounds nuw i8, ptr %i.v, i64 %.069112
  %8 = load i8, ptr %7, align 1, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %.2113
  store i8 %8, ptr %i.av, align 1, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %.critedge91, %bb.o
  %.170 = phi i64 [ %i.ap, %bb.n ], [ %i.ap, %bb.o ], [ %.069112, %.critedge91 ]
  %.pn = phi i64 [ %i.au, %bb.n ], [ 138, %bb.o ], [ 1, %.critedge91 ]
  %.3 = add i64 %.pn, %.2113
  %i.aw = add nuw i64 %.170, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ai
  br i1 %i.ax, label %.lr.ph114, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.p, %.preheader
  %i.ay = call i32 @pthread_mutex_lock(ptr noundef nonnull @virusaction_lock) #21 ; 0 uses
  %i.az = call i32 @vfork() #25                   ; 3 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge115
  %i.bb = call i32 (ptr, ptr, ...) @execle(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.an, ptr noundef null, ptr noundef nonnull %i.a) #21
  call void @_exit(i32 noundef %i.bb) #26
  unreachable

bb.r:                                             ; preds = %._crit_edge115
  %i.bc = icmp sgt i32 %i.az, 0
  %i.bd = call i32 @pthread_mutex_unlock(ptr noundef nonnull @virusaction_lock) #21 ; 0 uses
  br i1 %i.bc, label %.preheader135, label %bb.t

.preheader135:                                    ; preds = %bb.r, %bb.s
  %i.be = call i32 @waitpid(i32 noundef %i.az, ptr noundef null, i32 noundef 0) #21
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.preheader135
  %i.bg = call ptr @__errno_location() #27
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !13
  %i.bi = icmp eq i32 %i.bh, 4
  br i1 %i.bi, label %.preheader135, label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.bj = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.11) #21 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.preheader135, %bb.s, %bb.t
  br i1 %.not83, label %xfree.exit99, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.bk = load ptr, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %.not.i96 = icmp eq ptr %i.bk, null
  br i1 %.not.i96, label %xfree.exit99, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.bk) #21
  br label %xfree.exit99

xfree.exit99:                                     ; preds = %bb.v, %bb.u, %.critedge
  call void @free(ptr noundef nonnull %i.an) #21
  br i1 %.not85, label %xfree.exit101, label %bb.w

bb.w:                                             ; preds = %xfree.exit99
  call void @free(ptr noundef nonnull %i.k) #21
  br label %xfree.exit101

xfree.exit101:                                    ; preds = %xfree.exit99, %bb.w
  br i1 %.not86, label %xfree.exit95, label %xfree.exit95.sink.split

xfree.exit95.sink.split:                          ; preds = %xfree.exit101, %xfree.exit93
  call void @free(ptr noundef nonnull %i.p) #21
  br label %xfree.exit95

xfree.exit95:                                     ; preds = %xfree.exit95.sink.split, %xfree.exit101, %xfree.exit93, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @optget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind returns_twice
declare i32 @vfork() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare i32 @execle(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare i32 @logg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @writen(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #14 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.012 = phi i32 [ %2, %bb.a ], [ %.113, %bb.e ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %.1, %bb.e ]     ; 3 uses
  %i.a = zext i32 %.012 to i64
  %i.b = tail call i64 @write(i32 noundef %0, ptr noundef %.0, i64 noundef %i.a) #21 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #27
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = sub i32 %.012, %i.c
  %i.i = and i64 %i.b, 2147483647
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.113 = phi i32 [ %.012, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %.0, %bb.c ], [ %i.j, %bb.d ]
  %.not = icmp eq i32 %.113, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.f:                                             ; preds = %bb.e, %bb.c
  %.014 = phi i32 [ -1, %bb.c ], [ %2, %bb.e ]
  ret i32 %.014
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local i32 @poll_fd(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.fd_data, align 8            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %i.a = call i32 @fds_add(ptr noundef nonnull %3, i32 noundef %0, i32 noundef 1, i32 noundef %1)
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %fds_free.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.c = call i32 @fds_poll_recv(ptr noundef nonnull %3, i32 noundef %1, i32 noundef %2, ptr poison) ; 3 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %i.e = tail call ptr @__errno_location() #27
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %.preheader, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.b
  %.val20.i = load ptr, ptr %3, align 8, !tbaa !18 ; 3 uses
  %.not.i.i = icmp eq ptr %.val20.i, null         ; 2 uses
  br i1 %.not.i.i, label %fds_lock.exit.i, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %.val20.i) #21 ; 0 uses
  br label %fds_lock.exit.i

fds_lock.exit.i:                                  ; preds = %bb.c, %.critedge
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 2 uses
end_hunk_0
