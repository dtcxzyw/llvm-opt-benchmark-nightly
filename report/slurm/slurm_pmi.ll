Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_pmi?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }
%struct.slurm_msg = type { %struct.sockaddr_storage, ptr, i32, i32, i32, i8, i32, i8, i32, ptr, ptr, ptr, ptr, i16, i8, ptr, ptr, i8, i16, i16, %struct.forward, ptr, %struct.sockaddr_storage, ptr }
%struct.forward = type { %struct.slurm_node_alias_addrs_t, i16, i16, ptr, i32, i16, i16 }
%struct.slurm_node_alias_addrs_t = type { i64, ptr, ptr, i32, ptr }
%struct.timeval = type { i64, i64 }
%struct.kvs_get_msg = type { i32, i32, i16, ptr, ptr }
%struct.slurm_step_id_t = type { i64, i32, i32, i32 }

@pmi_fd = dso_local local_unnamed_addr global i32 -1, align 4
@pmi_time = dso_local local_unnamed_addr global i32 0, align 4
@srun_port = dso_local local_unnamed_addr global i16 0, align 2
@srun_addr = dso_local global %struct.sockaddr_storage zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"SLURM_SRUN_TLS_CERT\00", align 1
@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"slurm_send_kvs_comm_set: %m\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"send_kvs retry %d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"_get_addr: %m\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"slurm_init_msg_engine_port: %m\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"slurm_get_stream_addr: %m\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"SLURM_PMI_RESP_IFHN\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"slurm_get_kvs_comm_set: %m\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"get kvs retry %d\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"slurm_get_kvs_comm_set error_code=%d\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"slurm_accept_msg_conn: %m\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"slurm_receive_msg: %m\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"slurm_get_kvs_comm_set msg_type=%s\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"slurm_send_rc_msg: %m\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"SLURM_SRUN_COMM_HOST\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"SLURM_SRUN_COMM_PORT\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"PMI_TIME\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Invalid PMI_TIME: %s\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Could not forward msg to %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @slurm_pmi_send_kvs_comm_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.slurm_msg, align 8          ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %_get_addr.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_init(ptr noundef null) #8
  %i.d = load i16, ptr @srun_port, align 2
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.14) #8 ; 2 uses
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.15) #8 ; 2 uses
  %i.g = icmp ne ptr %i.e, null
  %i.h = icmp ne ptr %i.f, null
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.d, label %_get_addr.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.f, ptr noundef null, i32 noundef 10) #8, !inline_history !0
  %i.j = trunc i64 %i.i to i16                    ; 2 uses
  store i16 %i.j, ptr @srun_port, align 2
  tail call void @slurm_set_addr(ptr noundef nonnull @srun_addr, i16 noundef zeroext %i.j, ptr noundef nonnull %i.e) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.k = load i32, ptr @pmi_time, align 4
  %.not.i18 = icmp eq i32 %i.k, 0
  br i1 %.not.i18, label %bb.f, label %_set_pmi_time.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str.16) #8 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call i64 @strtol(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i32 noundef 10) #8
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  store i32 %i.o, ptr @pmi_time, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load i8, ptr %i.q, align 1
  %.not3.i = icmp eq i8 %i.r, 0
  br i1 %.not3.i, label %_set_pmi_time.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.l) #8 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.f
  store i32 500, ptr @pmi_time, align 4
  br label %_set_pmi_time.exit

_set_pmi_time.exit:                               ; preds = %bb.e, %bb.h, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @slurm_msg_t_init(ptr noundef nonnull %3) #8
  call void @slurm_msg_set_r_uid(ptr noundef nonnull %3, i32 noundef -1) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) @srun_addr, i64 128, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 226
  store i16 7201, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %0, ptr %i.u, align 8
  %i.v = call ptr @getenv(ptr noundef nonnull @.str) #8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %i.v, ptr %i.w, align 8
  call fastcc void @_delay_rpc(i32 noundef %1, i32 noundef %2)
  %i.x = icmp sgt i32 %2, 4000
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_set_pmi_time.exit
  %i.y = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.z = zext i16 %i.y to i32
  %i.aa = mul nuw nsw i32 %i.z, 24000
  br label %bb.q

bb.k:                                             ; preds = %_set_pmi_time.exit
  %i.ab = icmp sgt i32 %2, 1000
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.ad = zext i16 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 12000
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.af = icmp sgt i32 %2, 100
  br i1 %i.af, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.ah = zext i16 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 5000
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp sgt i32 %2, 10
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.al = zext i16 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 2000
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.o, %bb.p, %bb.n, %bb.j
  %.0 = phi i32 [ %i.aa, %bb.j ], [ %i.ae, %bb.l ], [ %i.ai, %bb.n ], [ %i.am, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.an = call i32 @slurm_send_recv_rc_msg_only_one(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef %.0) #8
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t
  %i.ap = add nuw nsw i32 %i.ar, 1
  %exitcond = icmp eq i32 %i.ar, 6
  br i1 %exitcond, label %bb.r, label %.lr.ph.preheader, !llvm.loop !11

bb.r:                                             ; preds = %.lr.ph
  %i.aq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %_get_addr.exit

.lr.ph.preheader:                                 ; preds = %bb.q, %.lr.ph
  %i.ar = phi i32 [ %i.ap, %.lr.ph ], [ 1, %bb.q ] ; 3 uses
  %i.as = call i32 @get_log_level() #8
  %i.at = icmp sgt i32 %i.as, 4
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.preheader
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %i.ar) #8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.preheader, %bb.s
  call fastcc void @_delay_rpc(i32 noundef %1, i32 noundef %2)
  %i.au = call i32 @slurm_send_recv_rc_msg_only_one(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef %.0) #8
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.t, %bb.q
  %i.aw = load i32, ptr %i.b, align 4
  br label %_get_addr.exit

_get_addr.exit:                                   ; preds = %bb.c, %bb.a, %._crit_edge, %bb.r
  %.014 = phi i32 [ %i.aw, %._crit_edge ], [ 22, %bb.a ], [ -1, %bb.r ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @slurm_init(ptr noundef) local_unnamed_addr #2

declare void @slurm_msg_t_init(ptr noundef) local_unnamed_addr #2

declare void @slurm_msg_set_r_uid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_delay_rpc(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.timeval, align 8            ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.b = icmp eq i32 %0, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = load i32, ptr @pmi_time, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %_set_pmi_time.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.16) #8 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i64 @strtol(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 10) #8
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  store i32 %i.g, ptr @pmi_time, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = load i8, ptr %i.i, align 1
  %.not3.i = icmp eq i8 %i.j, 0
  br i1 %.not3.i, label %_set_pmi_time.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.d) #8 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.c
  store i32 500, ptr @pmi_time, align 4
  br label %_set_pmi_time.exit

_set_pmi_time.exit:                               ; preds = %bb.b, %bb.e, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.k, %_set_pmi_time.exit
  %.0.ph = phi i32 [ %i.at, %bb.k ], [ 0, %_set_pmi_time.exit ] ; 2 uses
  %i.n = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #8
  %.not38 = icmp eq i32 %i.n, 0
  br i1 %.not38, label %.lr.ph, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %bb.i
  %i.o = load i32, ptr @pmi_time, align 4
  %i.p = mul nsw i32 %i.o, %0
  %i.q = tail call i32 @usleep(i32 noundef %i.p) #8 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.outer, %bb.i
  %i.r = load i64, ptr %2, align 8                ; 2 uses
  %i.s = srem i64 %i.r, 1000
  %i.t = mul nsw i64 %i.s, 1000000
  %i.u = load i64, ptr %i.l, align 8              ; 2 uses
  %i.v = add nsw i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = load i32, ptr @pmi_time, align 4         ; 2 uses
  %i.y = mul nsw i32 %i.x, %1                     ; 2 uses
  %i.z = urem i32 %i.w, %i.y                      ; 2 uses
  %i.aa = mul nsw i32 %i.x, %0                    ; 2 uses
  %i.ab = icmp ult i32 %i.aa, %i.z
  %i.ac = sub i32 %i.aa, %i.z
  %i.ad = select i1 %i.ab, i32 %i.y, i32 0
  %.025 = add i32 %i.ad, %i.ac                    ; 4 uses
  %i.ae = tail call i32 @usleep(i32 noundef %.025) #8
  %.not33 = icmp eq i32 %i.ae, 0
  br i1 %.not33, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.af = tail call ptr @__errno_location() #9
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 22
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i32 @usleep(i32 noundef 900000) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #8
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %.lr.ph, label %.outer._crit_edge

bb.j:                                             ; preds = %.lr.ph
  %i.ak = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #8
  %.not34 = icmp eq i32 %i.ak, 0
  br i1 %.not34, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.al = load i64, ptr %3, align 8
  %i.am = sub nsw i64 %i.al, %i.r
  %4 = mul i64 %i.am, 1000000
  %5 = load i64, ptr %i.m, align 8
  %i.an = sub i64 %5, %i.u
  %i.ao = add i64 %i.an, %4
  %i.ap = trunc i64 %i.ao to i32                  ; 3 uses
  %.not35 = icmp ugt i32 %.025, %i.ap
  %6 = sub nuw i32 %i.ap, %.025
  %7 = sub nuw i32 %.025, %i.ap
  %.024 = select i1 %.not35, i32 %7, i32 %6
  %i.aq = load i32, ptr @pmi_time, align 4
  %i.ar = mul nsw i32 %i.aq, 15
  %i.as = icmp ugt i32 %.024, %i.ar
  %i.at = add nuw nsw i32 %.0.ph, 1
  %i.au = icmp samesign ult i32 %.0.ph, 2
  %or.cond = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond, label %.outer, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.a, %.outer._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

declare i32 @slurm_send_recv_rc_msg_only_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @slurm_pmi_get_kvs_comm_set(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %3 = alloca %struct.slurm_msg, align 8          ; 10 uses
  %4 = alloca %struct.slurm_msg, align 8          ; 8 uses
  %5 = alloca %struct.sockaddr_storage, align 8   ; 4 uses
  %6 = alloca %struct.sockaddr_storage, align 8   ; 3 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %7 = alloca %struct.kvs_get_msg, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_init(ptr noundef null) #8
  store ptr null, ptr %0, align 8
  %i.e = load i16, ptr @srun_port, align 2
  %.not.i = icmp eq i16 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.14) #8 ; 2 uses
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str.15) #8 ; 2 uses
  %i.h = icmp ne ptr %i.f, null
  %i.i = icmp ne ptr %i.g, null
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.g, ptr noundef null, i32 noundef 10) #8, !inline_history !0
  %i.k = trunc i64 %i.j to i16                    ; 2 uses
  store i16 %i.k, ptr @srun_port, align 2
  tail call void @slurm_set_addr(ptr noundef nonnull @srun_addr, i16 noundef zeroext %i.k, ptr noundef nonnull %i.f) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.aq

bb.f:                                             ; preds = %bb.b, %bb.d
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.m = load i32, ptr @pmi_time, align 4
  %.not.i37 = icmp eq i32 %i.m, 0
  br i1 %.not.i37, label %bb.g, label %_set_pmi_time.exit

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr @getenv(ptr noundef nonnull @.str.16) #8 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 @strtol(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, i32 noundef 10) #8
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  store i32 %i.q, ptr @pmi_time, align 4
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i8, ptr %i.s, align 1
  %.not3.i = icmp eq i8 %i.t, 0
  br i1 %.not3.i, label %_set_pmi_time.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.n) #8 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.g
  store i32 500, ptr @pmi_time, align 4
  br label %_set_pmi_time.exit

_set_pmi_time.exit:                               ; preds = %bb.f, %bb.i, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.v = load i32, ptr @pmi_fd, align 4           ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_set_pmi_time.exit
  %i.x = tail call i32 @slurm_init_msg_engine_port(i16 noundef zeroext 0) #8 ; 3 uses
  store i32 %i.x, ptr @pmi_fd, align 4
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %bb.aq

bb.m:                                             ; preds = %bb.k
  tail call void @fd_set_blocking(i32 noundef %i.x) #8
  %.pre = load i32, ptr @pmi_fd, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_set_pmi_time.exit
  %i.aa = phi i32 [ %.pre, %bb.m ], [ %i.v, %_set_pmi_time.exit ]
  %i.ab = call i32 @slurm_get_stream_addr(i32 noundef %i.aa, ptr noundef nonnull %5) #8
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.aq

bb.p:                                             ; preds = %bb.n
  %i.ae = call ptr @getenv(ptr noundef nonnull @.str.6) #8 ; 2 uses
  %.not31 = icmp eq ptr %i.ae, null
  br i1 %.not31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 64) #8 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ag = call i32 @gethostname_short(ptr noundef nonnull %i.c, i64 noundef 64) #8 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ah, align 8
  store i32 %1, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %2, ptr %i.ai, align 4
  %i.aj = call zeroext i16 @slurm_get_port(ptr noundef nonnull %5) #8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.c, ptr %i.al, align 8
  %i.am = call ptr @conn_g_get_own_public_cert() #8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.an, align 8
  call void @slurm_msg_t_init(ptr noundef nonnull %3) #8
  call void @slurm_msg_set_r_uid(ptr noundef nonnull %3, i32 noundef -1) #8
  call void @slurm_msg_t_init(ptr noundef nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) @srun_addr, i64 128, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 226
  store i16 7203, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %7, ptr %i.ap, align 8
  %i.aq = call ptr @getenv(ptr noundef nonnull @.str) #8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %i.aq, ptr %i.ar, align 8
  call fastcc void @_delay_rpc(i32 noundef %1, i32 noundef %2)
  %i.as = icmp sgt i32 %2, 4000
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.au = zext i16 %i.at to i32
  %i.av = mul nuw nsw i32 %i.au, 24000
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.aw = icmp sgt i32 %2, 1000
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.ay = zext i16 %i.ax to i32
  %i.az = mul nuw nsw i32 %i.ay, 12000
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.ba = icmp sgt i32 %2, 100
  br i1 %i.ba, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bb = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.bc = zext i16 %i.bb to i32
  %i.bd = mul nuw nsw i32 %i.bc, 6000
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.be = icmp sgt i32 %2, 10
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bf = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.bg = zext i16 %i.bf to i32
  %i.bh = mul nuw nsw i32 %i.bg, 2000
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.y, %bb.z, %bb.x, %bb.t
  %.0 = phi i32 [ %i.av, %bb.t ], [ %i.az, %bb.v ], [ %i.bd, %bb.x ], [ %i.bh, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.bi = call i32 @slurm_send_recv_rc_msg_only_one(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef %.0) #8
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad
  %i.bk = add nuw nsw i32 %i.bm, 1
  %exitcond = icmp eq i32 %i.bm, 6
  br i1 %exitcond, label %bb.ab, label %.lr.ph.preheader, !llvm.loop !12

bb.ab:                                            ; preds = %.lr.ph
  %i.bl = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7) #8 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.an) #8
  br label %bb.aq

.lr.ph.preheader:                                 ; preds = %bb.aa, %.lr.ph
  %i.bm = phi i32 [ %i.bk, %.lr.ph ], [ 1, %bb.aa ] ; 3 uses
  %i.bn = call i32 @get_log_level() #8
  %i.bo = icmp sgt i32 %i.bn, 4
  br i1 %i.bo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.preheader
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.8, i32 noundef %i.bm) #8
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.preheader, %bb.ac
  call fastcc void @_delay_rpc(i32 noundef %1, i32 noundef %2)
  %i.bp = call i32 @slurm_send_recv_rc_msg_only_one(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef %.0) #8
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.ad, %bb.aa
  call void @slurm_xfree(ptr noundef nonnull %i.an) #8
  %i.br = load i32, ptr %i.b, align 4             ; 2 uses
  %.not32 = icmp eq i32 %i.br, 0
  br i1 %.not32, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.bs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %i.br) #8 ; 0 uses
  %i.bt = load i32, ptr %i.b, align 4
  br label %bb.aq

bb.af:                                            ; preds = %._crit_edge
  %i.bu = load i32, ptr @pmi_fd, align 4
  %i.bv = call ptr @slurm_accept_msg_conn(i32 noundef %i.bu, ptr noundef nonnull %6) #8 ; 5 uses
  %.not33 = icmp eq ptr %i.bv, null
  br i1 %.not33, label %bb.ag, label %.preheader

bb.ag:                                            ; preds = %bb.af
  %i.bw = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.10) #8 ; 0 uses
  %i.bx = tail call ptr @__errno_location() #9
  %i.by = load i32, ptr %i.bx, align 4
  br label %bb.aq

.preheader:                                       ; preds = %bb.af, %bb.ah
  %i.bz = call i32 @slurm_receive_msg(ptr noundef nonnull %i.bv, ptr noundef nonnull %4, i32 noundef %.0) #8 ; 2 uses
  store i32 %i.bz, ptr %i.b, align 4
  %.not34 = icmp eq i32 %i.bz, 0
  br i1 %.not34, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.preheader
  %i.ca = tail call ptr @__errno_location() #9    ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp eq i32 %i.cb, 4
  br i1 %i.cc, label %.preheader, label %bb.ai, !llvm.loop !13

bb.ai:                                            ; preds = %bb.ah
  %i.cd = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.11) #8 ; 0 uses
  call void @conn_g_destroy(ptr noundef nonnull %i.bv, i1 noundef zeroext true) #8
  %i.ce = load i32, ptr %i.ca, align 4
  br label %bb.aq

bb.aj:                                            ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.cg, null
  br i1 %.not35, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @auth_g_destroy(ptr noundef nonnull %i.cg) #8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 226
  %i.ci = load i16, ptr %i.ch, align 2            ; 2 uses
  %.not36 = icmp eq i16 %i.ci, 7204
  br i1 %.not36, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cj = call ptr @rpc_num2string(i16 noundef zeroext %i.ci) #8
  %i.ck = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.12, ptr noundef %i.cj) #8 ; 0 uses
  call void @conn_g_destroy(ptr noundef nonnull %i.bv, i1 noundef zeroext true) #8
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.cl = call i32 @slurm_send_rc_msg(ptr noundef nonnull %4, i32 noundef 0) #8
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cn = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13) #8 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @conn_g_destroy(ptr noundef nonnull %i.bv, i1 noundef zeroext true) #8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  store ptr %i.cp, ptr %0, align 8
  %i.cq = call fastcc i32 @_forward_comm_set(ptr noundef %i.cp)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %bb.ap, %bb.am, %bb.ai, %bb.ag, %bb.ae, %bb.ab, %bb.o, %bb.l, %bb.e
  %.024 = phi i32 [ %i.by, %bb.ag ], [ -1, %bb.e ], [ -1, %bb.l ], [ -1, %bb.o ], [ -1, %bb.ab ], [ %i.bt, %bb.ae ], [ %i.ce, %bb.ai ], [ 1000, %bb.am ], [ %i.cq, %bb.ap ], [ 22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.024
}

declare i32 @slurm_init_msg_engine_port(i16 noundef zeroext) local_unnamed_addr #2

declare void @fd_set_blocking(i32 noundef) local_unnamed_addr #2

declare i32 @slurm_get_stream_addr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @gethostname_short(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i16 @slurm_get_port(ptr noundef) local_unnamed_addr #2

declare ptr @conn_g_get_own_public_cert() local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare ptr @slurm_accept_msg_conn(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare i32 @slurm_receive_msg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @conn_g_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @auth_g_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @rpc_num2string(i16 noundef zeroext) local_unnamed_addr #2

declare i32 @slurm_send_rc_msg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -2147483648) i32 @_forward_comm_set(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.slurm_msg, align 8          ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i16, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i16 0, ptr %0, align 8
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.trip.count = zext i16 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %.025 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ]  ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i16, ptr %i.i, align 4
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @slurm_msg_t_init(ptr noundef nonnull %1) #8
  call void @slurm_msg_set_r_uid(ptr noundef nonnull %1, i32 noundef -1) #8
  store i16 7204, ptr %i.d, align 2
  store ptr %0, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load i16, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void @slurm_set_addr(ptr noundef nonnull %1, i16 noundef zeroext %i.q, ptr noundef %i.s) #8
  %i.t = call i32 @slurm_send_recv_rc_msg_only_one(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 0) #8
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %._crit_edge27

._crit_edge27:                                    ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.18, ptr noundef %i.y) #8 ; 0 uses
  store i32 1, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge27, %bb.d
  %i.aa = phi i32 [ %.pre, %._crit_edge27 ], [ 1, %bb.d ]
  %i.ab = call i32 @llvm.smax.i32(i32 %.025, i32 %i.aa)
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @slurm_xfree(ptr noundef nonnull %i.ae) #8
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @slurm_xfree(ptr noundef nonnull %i.ah) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %.025, %bb.b ], [ %i.ab, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @slurm_xfree(ptr noundef nonnull %i.ai) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @slurm_pmi_free_kvs_comm_set(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @slurm_free_kvs_comm_set(ptr noundef %0) #8
  ret void
}

declare void @slurm_free_kvs_comm_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @slurm_pmi_finalize() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @pmi_fd, align 4           ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @close(i32 noundef %i.a) #8 ; 0 uses
  store i32 -1, ptr @pmi_fd, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i16 0, ptr @srun_port, align 2
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @slurm_pmi_kill_job_step(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.slurm_step_id_t, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i64 0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 -2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.d, align 4
  %i.e = call i32 @slurm_kill_job_step(ptr noundef nonnull %3, i16 noundef zeroext %2, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %i.e
}

declare i32 @slurm_kill_job_step(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare void @slurm_set_addr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @usleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
end_hunk_0
