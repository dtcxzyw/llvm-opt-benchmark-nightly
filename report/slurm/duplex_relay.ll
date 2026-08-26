Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/duplex_relay?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.conmgr_events_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.conmgr_timeouts_t = type { %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }
%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.conmgr_callback_args_s = type { ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"duplex_relay.c\00", align 1
@__func__.duplex_relay_assign = private unnamed_addr constant [20 x i8] c"duplex_relay_assign\00", align 1
@_assign.events = internal constant %struct.conmgr_events_t { ptr null, ptr null, ptr null, ptr @_on_data, ptr null, ptr @_on_finish, ptr null, ptr null, ptr null }, align 8
@_assign.timeouts = internal global %struct.conmgr_timeouts_t { %struct.timespec { i64 -1, i64 0 }, %struct.timespec { i64 -1, i64 0 }, %struct.timespec { i64 -1, i64 0 }, %struct.timespec { i64 -1, i64 0 }, %struct.timespec { i64 -1, i64 0 } }, align 8
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@__func__._assign = private unnamed_addr constant [8 x i8] c"_assign\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: [%s] Failed to set new events on connection\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: [%s] Failed to set mode to RAW\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: [%s] Failed unquiesce connection\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"NET: %s: [%s]<->[%s] duplex relay activated\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"%s: pthread_mutex_lock(): %m\00", align 1
@__func__._on_data = private unnamed_addr constant [9 x i8] c"_on_data\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"NET: %s: [%s] cancelled\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: pthread_mutex_unlock(): %m\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"NET: %s: [%s] cancelled due to closing connection\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"NET: %s: [%s]<->[%s] unable to get incoming data from [%s]\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"NET: %s: [%s]<->[%s] unable to relay %zu bytes to [%s]\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"NET: %s: [%s]<->[%s] relayed %zu bytes to [%s]\00", align 1
@__func__._on_finish = private unnamed_addr constant [11 x i8] c"_on_finish\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"NET: %s: [%s]<->[%s] closing relay\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: pthread_mutex_destroy(): %m\00", align 1
@__func__._free = private unnamed_addr constant [6 x i8] c"_free\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @duplex_relay_assign(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %_assign.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 64, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @__func__.duplex_relay_assign) #7 ; 11 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.3.0..sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.0..sroa_idx, i8 0, i64 36, i1 false)
  store i32 1146441804, ptr %i.d, align 8
  %.sroa.3.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %.sroa.3.0..sroa_idx.a, align 8
  %i.e = tail call ptr @conmgr_con_link(ptr noundef nonnull %0) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = tail call ptr @conmgr_con_link(ptr noundef nonnull %1) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 16), align 8
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 24), align 8
  %i.k = tail call zeroext i1 @timespec_is_infinite(i64 %i.i, i64 %i.j) #7
  %i.l = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8 ; 2 uses
  %i.m = icmp ne i16 %i.l, 0
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext i16 %i.l to i64                     ; 4 uses
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 16), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 24), align 8
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 32), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 40), align 8
  %i.o = shl nuw nsw i64 %i.n, 1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 48), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 56), align 8
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 64), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_assign.timeouts, i64 72), align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = tail call i32 @conmgr_quiesce_con(ptr noundef nonnull %0) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @conmgr_quiesce_con(ptr noundef nonnull %1) #7 ; 2 uses
  %.not36.i = icmp eq i32 %i.q, 0
  br i1 %.not36.i, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @conmgr_con_set_timeouts(ptr noundef nonnull %0, ptr noundef nonnull @_assign.timeouts, ptr noundef nonnull @__func__._assign) #7 ; 2 uses
  %.not37.i = icmp eq i32 %i.r, 0
  br i1 %.not37.i, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.s = tail call i32 @conmgr_con_set_timeouts(ptr noundef nonnull %1, ptr noundef nonnull @_assign.timeouts, ptr noundef nonnull @__func__._assign) #7 ; 2 uses
  %.not38.i = icmp eq i32 %i.s, 0
  br i1 %.not38.i, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @conmgr_con_set_events(ptr noundef nonnull %0, ptr noundef nonnull @_assign.events, ptr noundef nonnull %i.d, ptr noundef nonnull @__func__._assign) #7
  %.not39.i = icmp eq i32 %i.t, 0
  br i1 %.not39.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @conmgr_con_get_name(ptr noundef nonnull %0) #7
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._assign, ptr noundef %i.u) #8
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.v = tail call i32 @conmgr_con_set_events(ptr noundef nonnull %1, ptr noundef nonnull @_assign.events, ptr noundef nonnull %i.d, ptr noundef nonnull @__func__._assign) #7
  %.not40.i = icmp eq i32 %i.v, 0
  br i1 %.not40.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call ptr @conmgr_con_get_name(ptr noundef nonnull %1) #7
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._assign, ptr noundef %i.w) #8
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = tail call i32 @conmgr_con_change_mode(ptr noundef nonnull %0, i32 noundef 2) #7
  %.not41.i = icmp eq i32 %i.x, 0
  br i1 %.not41.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call ptr @conmgr_con_get_name(ptr noundef nonnull %0) #7
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._assign, ptr noundef %i.y) #8
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.z = tail call i32 @conmgr_con_change_mode(ptr noundef nonnull %1, i32 noundef 2) #7
  %.not42.i = icmp eq i32 %i.z, 0
  br i1 %.not42.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call ptr @conmgr_con_get_name(ptr noundef nonnull %1) #7
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._assign, ptr noundef %i.aa) #8
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ab = tail call i32 @conmgr_unquiesce_con(ptr noundef nonnull %0) #7
  %.not43.i = icmp eq i32 %i.ab, 0
  br i1 %.not43.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = tail call ptr @conmgr_con_get_name(ptr noundef nonnull %0) #7
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._assign, ptr noundef %i.ac) #8
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ad = tail call i32 @conmgr_unquiesce_con(ptr noundef nonnull %1) #7
  %.not44.i = icmp eq i32 %i.ad, 0
  br i1 %.not44.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = tail call ptr @conmgr_con_get_name(ptr noundef nonnull %1) #7
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._assign, ptr noundef %i.ae) #8
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ag = and i64 %i.af, 1024
  %.not45.i = icmp eq i64 %i.ag, 0
  br i1 %.not45.i, label %_assign.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = tail call i32 @get_log_level() #7
  %i.ai = icmp sgt i32 %i.ah, 3
  br i1 %i.ai, label %bb.v, label %_assign.exit

bb.v:                                             ; preds = %bb.u
  %i.aj = tail call ptr @conmgr_con_get_name(ptr noundef nonnull %0) #7
  %i.ak = tail call ptr @conmgr_con_get_name(ptr noundef nonnull %1) #7
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__._assign, ptr noundef %i.aj, ptr noundef %i.ak) #7
  br label %_assign.exit

bb.w:                                             ; preds = %bb.g, %bb.d, %bb.e, %bb.f
  %.0.i.ph = phi i32 [ %i.r, %bb.f ], [ %i.q, %bb.e ], [ %i.p, %bb.d ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  store i32 -1146441805, ptr %i.d, align 8
  tail call void @conmgr_con_queue_close_free(ptr noundef nonnull %i.f) #7
  tail call void @conmgr_con_queue_close_free(ptr noundef nonnull %i.h) #7
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.al) #7 ; 2 uses
  %.not.i16 = icmp eq i32 %i.am, 0
  br i1 %.not.i16, label %_free.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = tail call ptr @__errno_location() #9
  store i32 %i.am, ptr %i.an, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__._free) #8
  unreachable

_free.exit:                                       ; preds = %bb.w
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_assign.exit

_assign.exit:                                     ; preds = %bb.v, %bb.u, %bb.t, %_free.exit, %bb.a
  %.0 = phi i32 [ 22, %bb.a ], [ %.0.i.ph, %_free.exit ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @conmgr_con_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal i32 @_on_data(ptr nofree noundef readonly byval(%struct.conmgr_callback_args_s) align 8 captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #7 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #9
  store i32 %i.e, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._on_data) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  tail call void @conmgr_con_queue_close(ptr noundef %i.k) #7
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @conmgr_con_queue_close(ptr noundef %i.m) #7
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.o = and i64 %i.n, 1024
  %.not59 = icmp eq i64 %i.o, 0
end_hunk_0
