Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/callerid?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.callerid_conn_t = type { i32, i32, %struct.in6_addr, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [14 x i8] c"/proc/net/tcp\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/net/tcp6\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"find_pid_by_inode: unable to open %s: %m\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/proc/self/fd\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: opendir failed for %s: %m\00", align 1
@__func__.callerid_get_own_netinfo = private unnamed_addr constant [25 x i8] c"callerid_get_own_netinfo\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s: checking %s\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"stat failed for %s: %m\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%s: checking socket %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"%*s %[0-9A-Z]:%x %[0-9A-Z]:%x %*s %*s %*s %*s %*s %*s %lu\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"network_callerid matched %s:%lu => %s:%lu with inode %lu\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"_match_conn matched inode %lu\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"_match_inode matched\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"/proc/%d/fd\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"_find_inode_in_fddir: found %lu at %s\00", align 1

@slurm_callerid_get_own_netinfo = dso_local alias i32 (ptr), ptr @callerid_get_own_netinfo

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @callerid_get_own_netinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 7 uses
  %1 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.c = tail call noalias ptr @opendir(ptr noundef nonnull @.str.4) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = tail call ptr @readdir(ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.callerid_get_own_netinfo, ptr noundef nonnull @.str.4) #9 ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.i = phi ptr [ %i.e, %.lr.ph ], [ %i.s, %.backedge ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 19 ; 2 uses
  %i.k = call i32 @xstrncmp(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.6, i64 noundef 1) #9
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %.backedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.j) #9
  %i.m = icmp sgt i32 %i.l, 4095
  br i1 %i.m, label %.backedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i32 @get_log_level() #9
  %i.o = icmp sgt i32 %i.n, 6
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.callerid_get_own_netinfo, ptr noundef nonnull %i.b) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = call i32 @stat(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #9
  %.not16 = icmp eq i32 %i.p, 0
  br i1 %.not16, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = call i32 @get_log_level() #9
  %i.r = icmp sgt i32 %i.q, 6
  br i1 %i.r, label %bb.i, label %.backedge

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.b) #9
  br label %.backedge

.backedge:                                        ; preds = %bb.j, %callerid_find_conn_by_inode.exit, %bb.h, %bb.i, %bb.c, %bb.d
  %i.s = call ptr @readdir(ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !9

bb.j:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.f, align 8
  %i.u = and i32 %i.t, 61440
  %i.v = icmp eq i32 %i.u, 49152
  br i1 %i.v, label %bb.k, label %.backedge

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @get_log_level() #9
  %i.x = icmp sgt i32 %i.w, 6
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.callerid_get_own_netinfo, ptr noundef nonnull %i.b) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.y = load i64, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.y, ptr %i.a, align 8
  %i.z = call fastcc i32 @_find_match_in_tcp_file(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @_match_inode)
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %callerid_find_conn_by_inode.exit.thread, label %callerid_find_conn_by_inode.exit

callerid_find_conn_by_inode.exit.thread:          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

callerid_find_conn_by_inode.exit:                 ; preds = %bb.m
  %i.ab = call fastcc i32 @_find_match_in_tcp_file(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef nonnull @.str.1, ptr noundef nonnull @_match_inode)
  %.not18 = icmp eq i32 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not18, label %.loopexit, label %.backedge

.loopexit:                                        ; preds = %.backedge, %callerid_find_conn_by_inode.exit, %.preheader, %callerid_find_conn_by_inode.exit.thread
  %.2 = phi i32 [ 0, %callerid_find_conn_by_inode.exit.thread ], [ -1, %.preheader ], [ -1, %.backedge ], [ 0, %callerid_find_conn_by_inode.exit ]
  %i.ac = call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.b
  %.011 = phi i32 [ -1, %bb.b ], [ %.2, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @callerid_find_inode_by_conn(ptr noundef byval(%struct.callerid_conn_t) align 8 %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = call fastcc i32 @_find_match_in_tcp_file(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @_match_conn)
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i32 @_find_match_in_tcp_file(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 10, ptr noundef nonnull @.str.1, ptr noundef nonnull @_match_conn)
  %i.d = icmp ne i32 %i.c, 0
  %. = sext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_find_match_in_tcp_file(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 2, 11) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [47 x i8], align 16               ; 4 uses
  %i.b = alloca [47 x i8], align 16               ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.callerid_conn_t, align 4    ; 7 uses
  %i.e = alloca [46 x i8], align 16               ; 4 uses
  %i.f = alloca [46 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.g = icmp eq i32 %2, 2
  %i.h = select i1 %i.g, i32 4, i32 16            ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.k = tail call noalias ptr @fopen(ptr noundef %3, ptr noundef nonnull @.str.11) ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.m = lshr exact i32 %i.h, 2
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %.outer

.outer:                                           ; preds = %.preheader, %middle.block
  %.030.ph = phi i32 [ -1, %.preheader ], [ %i.y, %middle.block ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %i.n = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 1024, ptr noundef nonnull %i.k)
  %.not35 = icmp eq ptr %i.n, null
  br i1 %.not35, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, ptr noundef nonnull %i.d) #9
  switch i32 %i.o, label %bb.d [
    i32 -1, label %.loopexit
    i32 0, label %bb.b
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @inet_nsap_addr(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, i32 noundef %i.h) #9 ; 0 uses
  %i.q = call i32 @inet_nsap_addr(ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, i32 noundef %i.h) #9 ; 0 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %bb.d, %scalar.ph
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %scalar.ph ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = call noundef i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = call noundef i32 @llvm.bswap.i32(i32 %i.v)
  store i32 %i.w, ptr %i.u, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %middle.block, label %scalar.ph, !llvm.loop !10

middle.block:                                     ; preds = %scalar.ph
  %i.x = load i64, ptr %i.d, align 8
  %i.y = call i32 %4(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i64 noundef %i.x, i32 noundef %2) #9, !callees !13 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %.outer, !llvm.loop !11

bb.e:                                             ; preds = %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = call ptr @inet_ntop(i32 noundef %2, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.e, i32 noundef 46) #9 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = call ptr @inet_ntop(i32 noundef %2, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.f, i32 noundef 46) #9 ; 0 uses
  %i.ae = call i32 @get_log_level() #9
  %i.af = icmp sgt i32 %i.ae, 4
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load i32, ptr %0, align 4
  %i.ak = zext i32 %i.aj to i64
  %i.al = ptrtoint ptr %1 to i64
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.e, i64 noundef %i.ai, ptr noundef nonnull %i.f, i64 noundef %i.ak, i64 noundef %i.al) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ %.030.ph, %bb.b ], [ %.030.ph, %bb.c ]
  %i.am = call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.loopexit
  %.031 = phi i32 [ %.1, %.loopexit ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_match_conn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = icmp eq i32 %4, 2
  %i.b = select i1 %i.a, i64 4, i64 16            ; 2 uses
  %i.c = load i32, ptr %0, align 4
  %i.d = load i32, ptr %2, align 4
  %.not = icmp eq i32 %i.c, %i.d
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %.not14 = icmp eq i32 %i.f, %i.h
  br i1 %.not14, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.i, ptr noundef nonnull dereferenceable(4) %i.j, i64 %i.b)
  %.not15 = icmp eq i32 %bcmp, 0
  br i1 %.not15, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %bcmp16 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.k, ptr noundef nonnull dereferenceable(4) %i.l, i64 %i.b)
  %.not17 = icmp eq i32 %bcmp16, 0
  br i1 %.not17, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @get_log_level() #9
  %i.n = icmp sgt i32 %i.m, 6
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.14, i64 noundef %3) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %3, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @callerid_find_conn_by_inode(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = call fastcc i32 @_find_match_in_tcp_file(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @_match_inode)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @_find_match_in_tcp_file(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 10, ptr noundef nonnull @.str.1, ptr noundef nonnull @_match_inode)
  %i.e = icmp ne i32 %i.d, 0
  %. = sext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_match_inode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, %3
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = load i32, ptr %2, align 4
  store i32 %i.j, ptr %0, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %4, ptr %i.k, align 4
  %i.l = tail call i32 @get_log_level() #9
  %i.m = icmp sgt i32 %i.l, 6
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.15) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @find_pid_by_inode(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.c = tail call noalias ptr @opendir(ptr noundef nonnull @.str.2) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = tail call ptr @readdir(ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = tail call ptr @__ctype_b_loc() #10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #9 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.i = phi ptr [ %i.e, %.lr.ph ], [ %i.q, %.backedge ]
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 19 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.l to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2
  %i.p = and i16 %i.o, 2048
  %.not16 = icmp eq i16 %i.p, 0
  br i1 %.not16, label %.backedge, label %bb.d

.backedge.sink.split:                             ; preds = %bb.d, %bb.e, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.c
  %i.q = call ptr @readdir(ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !14

bb.d:                                             ; preds = %bb.c
  %i.r = call i64 @__isoc23_strtol(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 10) #9, !inline_history !15
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.16, i32 noundef %i.s) #9
  %i.u = icmp sgt i32 %i.t, 1023
  br i1 %i.u, label %.backedge.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call noalias ptr @opendir(ptr noundef nonnull %i.a) ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.backedge.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.x = call ptr @readdir(ptr noundef nonnull %i.v) #9 ; 2 uses
  %.not15.i = icmp eq ptr %i.x, null
  br i1 %.not15.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.backedge.i
  %i.y = phi ptr [ %i.ab, %.backedge.i ], [ %i.x, %.preheader.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 19 ; 2 uses
  %i.aa = call i32 @xstrncmp(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.6, i64 noundef 1) #9
  %.not11.i = icmp eq i32 %i.aa, 0
  br i1 %.not11.i, label %.backedge.i, label %bb.f

.backedge.i:                                      ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.ab = call ptr @readdir(ptr noundef nonnull %i.v) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !16

bb.f:                                             ; preds = %.lr.ph.i
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, ptr noundef nonnull %i.z) #9
  %i.ad = icmp ugt i32 %i.ac, 4095
  br i1 %i.ad, label %.backedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @stat(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #9
  %.not12.i = icmp eq i32 %i.ae, 0
  %i.af = load i64, ptr %i.g, align 8
  %i.ag = icmp eq i64 %i.af, %1
  %or.cond.i = select i1 %.not12.i, i1 %i.ag, i1 false
  br i1 %or.cond.i, label %bb.h, label %.backedge.i

bb.h:                                             ; preds = %bb.g
  %i.ah = call i32 @get_log_level() #9
  %i.ai = icmp sgt i32 %i.ah, 6
  br i1 %i.ai, label %bb.i, label %.critedge17

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.17, i64 noundef %1, ptr noundef nonnull %i.b) #9
  br label %.critedge17

.loopexit.i:                                      ; preds = %.backedge.i, %.preheader.i
  %i.aj = call i32 @closedir(ptr noundef nonnull %i.v) ; 0 uses
  br label %.backedge.sink.split

.critedge17:                                      ; preds = %bb.i, %bb.h
  %i.ak = call i32 @closedir(ptr noundef nonnull %i.v) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store i32 %i.s, ptr %0, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %.preheader, %.critedge17
  %.1 = phi i32 [ 0, %.critedge17 ], [ -1, %.preheader ], [ -1, %.backedge ]
  %i.al = call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.b
  %.012 = phi i32 [ -1, %bb.b ], [ %.1, %.loopexit ]
  ret i32 %.012
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @xstrncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #3

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @inet_nsap_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !12, !8}
!11 = distinct !{!11, !12, !8}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{ptr @_match_conn, ptr @_match_inode}
!14 = distinct !{!14, !8}
!15 = distinct !{null}
!16 = distinct !{!16, !8}
end_hunk_0
