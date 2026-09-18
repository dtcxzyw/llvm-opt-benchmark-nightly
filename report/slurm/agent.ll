Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/agent?download=true
inline.NumInlined: 35
inline.NumDeleted: 21
begin_hunk_0_@agent:bb.a
_valid_agent_arg.exit.thread.thread184:           ; preds = %bb.bn
  %i.jg = getelementptr inbounds nuw i8, ptr %.pre157, i64 88
  %i.jh = load i32, ptr %i.jg, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre157, i64 92
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre157, i64 96
  %i.jl = load i16, ptr %i.jk, align 8
  %.not94 = icmp eq i16 %i.jl, 0
  %i.jm = select i1 %.not94, i32 70, i32 84
  %i.jn = getelementptr inbounds nuw i8, ptr %.pre157, i64 112
  %i.jo = load i8, ptr %i.jn, align 8, !range !9, !noundef !10
  %i.jp = trunc nuw i8 %i.jo to i1
  %i.jq = select i1 %i.jp, i32 84, i32 70
  %i.jr = load i32, ptr %i.bo, align 4
  %i.js = trunc i32 %i.jr to i16
  %i.jt = call ptr @rpc_num2string(i16 noundef zeroext %i.js) #14
  %i.ju = getelementptr inbounds nuw i8, ptr %.pre157, i64 138
  %i.jv = load i16, ptr %i.ju, align 2
  %i.jw = zext i16 %i.jv to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.agent, i32 noundef %i.jh, i32 noundef %i.jj, i32 noundef %i.jm, i32 noundef %i.jq, ptr noundef %i.jt, i32 noundef %i.jw) #14
  call void @purge_agent_args(ptr noundef nonnull %0) #14
  br label %bb.bo

_valid_agent_arg.exit.thread.thread:              ; preds = %bb.l, %bb.n, %bb.p, %bb.k
  tail call void @purge_agent_args(ptr noundef nonnull %0) #14
  br label %bb.bp

_valid_agent_arg.exit.thread:                     ; preds = %._valid_agent_arg.exit.thread_crit_edge, %bb.bn
  %i.jx = phi ptr [ %.pre156, %._valid_agent_arg.exit.thread_crit_edge ], [ %.pre157, %bb.bn ] ; 2 uses
  call void @purge_agent_args(ptr noundef nonnull %0) #14
  %.not101 = icmp eq ptr %i.jx, null
  br i1 %.not101, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_valid_agent_arg.exit.thread.thread184, %_valid_agent_arg.exit.thread
  %i.jy = phi ptr [ %.pre157, %_valid_agent_arg.exit.thread.thread184 ], [ %i.jx, %_valid_agent_arg.exit.thread ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 104
  call void @slurm_xfree(ptr noundef nonnull %i.jz) #14
  call void @slurm_xfree(ptr noundef nonnull %i.c) #14
  br label %bb.bp

bb.bp:                                            ; preds = %_valid_agent_arg.exit.thread.thread, %_valid_agent_arg.exit.thread, %bb.bo
  %i.ka = call i32 @pthread_mutex_lock(ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not102 = icmp eq i32 %i.ka, 0
  br i1 %.not102, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kb = tail call ptr @__errno_location() #15
  store i32 %i.ka, ptr %i.kb, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.agent) #16
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.kc = load i32, ptr @agent_cnt, align 4       ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ke = add nsw i32 %i.kc, -1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.kf = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.11) #14 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %storemerge = phi i32 [ 0, %bb.bt ], [ %i.ke, %bb.bs ]
  store i32 %storemerge, ptr @agent_cnt, align 4
  %i.kg = load i32, ptr @agent_thread_cnt, align 4 ; 2 uses
  %.not103 = icmp slt i32 %i.kg, %spec.select
  br i1 %.not103, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kh = sub nuw nsw i32 %i.kg, %spec.select
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.ki = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.12) #14 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %storemerge104 = phi i32 [ 0, %bb.bw ], [ %i.kh, %bb.bv ] ; 2 uses
  store i32 %storemerge104, ptr @agent_thread_cnt, align 4
  %i.kj = icmp samesign ult i32 %storemerge104, 244
  %i.kk = call i32 @pthread_cond_broadcast(ptr noundef nonnull @agent_cnt_cond) #14 ; 2 uses
  %.not105 = icmp eq i32 %i.kk, 0
  br i1 %.not105, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kl = tail call ptr @__errno_location() #15
  store i32 %i.kk, ptr %i.kl, align 4
  %i.km = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef 398, ptr noundef nonnull @__func__.agent) #14 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.kn = call i32 @pthread_mutex_unlock(ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not106 = icmp eq i32 %i.kn, 0
  br i1 %.not106, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ko = tail call ptr @__errno_location() #15
  store i32 %i.kn, ptr %i.ko, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.agent) #16
  unreachable

bb.cb:                                            ; preds = %bb.bz
  br i1 %i.kj, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @agent_trigger(i32 noundef 60, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @rpc_num2string(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @retry_list_size() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @retry_list, align 8       ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @list_count(ptr noundef nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

declare i32 @threadpool_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_wdog(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.slurm_step_id_t, align 8    ; 9 uses
  %.sroa.10.i = alloca [12 x i8], align 4         ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  switch i32 %i.e, label %bb.c [
    i32 7004, label %bb.b
    i32 7008, label %bb.b
    i32 7007, label %bb.b
    i32 7009, label %bb.b
    i32 7003, label %bb.b
    i32 7001, label %bb.b
    i32 7002, label %bb.b
    i32 7005, label %bb.b
    i32 4002, label %bb.b
    i32 4026, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.060 = phi i1 [ true, %bb.b ], [ false, %bb.a ]
  %i.f = icmp eq i32 %i.e, 1006
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.y, %bb.c
  %.sroa.25.0 = phi i32 [ 0, %bb.c ], [ %.sroa.25.3, %bb.y ] ; 2 uses
  %.0 = phi i32 [ 5000, %bb.c ], [ %3, %bb.y ]    ; 2 uses
  %i.h = tail call i64 @time(ptr noundef null) #14 ; 2 uses
  %i.i = tail call i32 @usleep(i32 noundef %.0) #14 ; 0 uses
  %2 = shl nuw nsw i32 %.0, 1
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 1000000)
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #14 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.k = load i32, ptr %i.g, align 8
  %.not133 = icmp eq i32 %i.k, 0
  br i1 %.not133, label %._crit_edge125.thread, label %.lr.ph124

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @__errno_location() #15
  store i32 %i.j, ptr %i.l, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #16
  unreachable

.lr.ph124:                                        ; preds = %.preheader, %_update_wdog_state.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_update_wdog_state.exit ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0.0122 = phi i1 [ %.sroa.0.2, %_update_wdog_state.exit ], [ true, %.preheader ] ; 5 uses
  %.sroa.25.1118 = phi i32 [ %.sroa.25.3, %_update_wdog_state.exit ], [ %.sroa.25.0, %.preheader ] ; 8 uses
  %i.m = phi <2 x i32> [ %i.bg, %_update_wdog_state.exit ], [ zeroinitializer, %.preheader ] ; 8 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %indvars.iv ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not75 = icmp eq ptr %i.p, null
  br i1 %.not75, label %bb.f, label %bb.o

bb.f:                                             ; preds = %.lr.ph124
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val77 = load i32, ptr %i.q, align 8
  switch i32 %.val77, label %_update_wdog_state.exit [
    i32 1, label %bb.g
    i32 0, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8
  %.not.i = icmp sgt i64 %i.s, %i.h
  br i1 %.not.i, label %_update_wdog_state.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.u = and i64 %i.t, 4503599627370496
  %.not15.i = icmp eq i64 %i.u, 0
  br i1 %.not15.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @get_log_level() #14
  %i.w = icmp sgt i32 %i.v, 3
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.n, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__._update_wdog_state, i64 noundef %i.x) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.y = load i64, ptr %i.n, align 8
  %i.z = tail call i32 @pthread_kill(i64 noundef %i.y, i32 noundef 10) #14 ; 0 uses
  %i.aa = load i16, ptr @message_timeout, align 2
  %i.ab = zext i16 %i.aa to i64
  %i.ac = load i64, ptr %i.r, align 8
  %i.ad = add nsw i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %i.r, align 8
  br label %_update_wdog_state.exit

bb.l:                                             ; preds = %bb.f
  br label %_update_wdog_state.exit

bb.m:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = trunc i64 %i.af to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.sroa.25.1118, i32 %i.ag)
  br label %_update_wdog_state.exit

bb.n:                                             ; preds = %bb.f
  %i.ah = add nsw <2 x i32> %i.m, splat (i32 1)
  br label %_update_wdog_state.exit

bb.o:                                             ; preds = %.lr.ph124
  %i.ai = tail call ptr @list_iterator_create(ptr noundef nonnull %i.p) #14 ; 3 uses
  %i.aj = tail call ptr @list_next(ptr noundef %i.ai) #14 ; 2 uses
  %.not76108 = icmp eq ptr %i.aj, null
  br i1 %.not76108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_update_wdog_state.exit80
  %i.al = phi ptr [ %i.aj, %.lr.ph ], [ %i.be, %_update_wdog_state.exit80 ]
  %.sroa.0.1113 = phi i1 [ %.sroa.0.0122, %.lr.ph ], [ %.sroa.0.4, %_update_wdog_state.exit80 ] ; 3 uses
  %.sroa.25.2109 = phi i32 [ %.sroa.25.1118, %.lr.ph ], [ %.sroa.25.5, %_update_wdog_state.exit80 ] ; 6 uses
  %i.am = phi <2 x i32> [ %i.m, %.lr.ph ], [ %i.bd, %_update_wdog_state.exit80 ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.val = load i32, ptr %i.an, align 4
  switch i32 %.val, label %_update_wdog_state.exit80 [
    i32 1, label %bb.q
    i32 0, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %i.ak, align 8
  %.not.i78 = icmp sgt i64 %i.ao, %i.h
  br i1 %.not.i78, label %_update_wdog_state.exit80, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aq = and i64 %i.ap, 4503599627370496
  %.not15.i79 = icmp eq i64 %i.aq, 0
  br i1 %.not15.i79, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = tail call i32 @get_log_level() #14
  %i.as = icmp sgt i32 %i.ar, 3
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = load i64, ptr %i.n, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__._update_wdog_state, i64 noundef %i.at) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.au = load i64, ptr %i.n, align 8
  %i.av = tail call i32 @pthread_kill(i64 noundef %i.au, i32 noundef 10) #14 ; 0 uses
  %i.aw = load i16, ptr @message_timeout, align 2
  %i.ax = zext i16 %i.aw to i64
  %i.ay = load i64, ptr %i.ak, align 8
  %i.az = add nsw i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.ak, align 8
  br label %_update_wdog_state.exit80

bb.v:                                             ; preds = %bb.p
  br label %_update_wdog_state.exit80

bb.w:                                             ; preds = %bb.p
  %i.ba = load i64, ptr %i.ak, align 8
  %i.bb = trunc i64 %i.ba to i32
  %spec.select95 = tail call i32 @llvm.smax.i32(i32 %.sroa.25.2109, i32 %i.bb)
  br label %_update_wdog_state.exit80

bb.x:                                             ; preds = %bb.p
  %i.bc = add nsw <2 x i32> %i.am, splat (i32 1)
  br label %_update_wdog_state.exit80

_update_wdog_state.exit80:                        ; preds = %bb.w, %bb.p, %bb.q, %bb.u, %bb.v, %bb.x
  %.sroa.25.5 = phi i32 [ %.sroa.25.2109, %bb.p ], [ %.sroa.25.2109, %bb.q ], [ %.sroa.25.2109, %bb.u ], [ %.sroa.25.2109, %bb.v ], [ %.sroa.25.2109, %bb.x ], [ %spec.select95, %bb.w ] ; 2 uses
  %.sroa.0.4 = phi i1 [ %.sroa.0.1113, %bb.p ], [ false, %bb.q ], [ false, %bb.u ], [ false, %bb.v ], [ %.sroa.0.1113, %bb.x ], [ %.sroa.0.1113, %bb.w ] ; 2 uses
  %i.bd = phi <2 x i32> [ %i.am, %bb.p ], [ %i.am, %bb.q ], [ %i.am, %bb.u ], [ %i.am, %bb.v ], [ %i.bc, %bb.x ], [ %i.am, %bb.w ] ; 2 uses
  %i.be = tail call ptr @list_next(ptr noundef %i.ai) #14 ; 2 uses
  %.not76 = icmp eq ptr %i.be, null
  br i1 %.not76, label %._crit_edge, label %bb.p, !llvm.loop !18

._crit_edge:                                      ; preds = %_update_wdog_state.exit80, %bb.o
  %.sroa.25.2.lcssa = phi i32 [ %.sroa.25.1118, %bb.o ], [ %.sroa.25.5, %_update_wdog_state.exit80 ]
  %.sroa.0.1.lcssa = phi i1 [ %.sroa.0.0122, %bb.o ], [ %.sroa.0.4, %_update_wdog_state.exit80 ]
  %i.bf = phi <2 x i32> [ %i.m, %bb.o ], [ %i.bd, %_update_wdog_state.exit80 ]
  tail call void @list_iterator_destroy(ptr noundef %i.ai) #14
  br label %_update_wdog_state.exit

_update_wdog_state.exit:                          ; preds = %bb.m, %bb.n, %bb.l, %bb.k, %bb.g, %bb.f, %._crit_edge
  %.sroa.25.3 = phi i32 [ %.sroa.25.2.lcssa, %._crit_edge ], [ %.sroa.25.1118, %bb.f ], [ %.sroa.25.1118, %bb.g ], [ %.sroa.25.1118, %bb.k ], [ %.sroa.25.1118, %bb.l ], [ %.sroa.25.1118, %bb.n ], [ %spec.select, %bb.m ] ; 3 uses
  %.sroa.0.2 = phi i1 [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.0122, %bb.f ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.l ], [ %.sroa.0.0122, %bb.n ], [ %.sroa.0.0122, %bb.m ] ; 2 uses
  %i.bg = phi <2 x i32> [ %i.bf, %._crit_edge ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.k ], [ %i.m, %bb.l ], [ %i.ah, %bb.n ], [ %i.m, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.g, align 8
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph124, label %._crit_edge125, !llvm.loop !19

._crit_edge125:                                   ; preds = %_update_wdog_state.exit
  br i1 %.sroa.0.2, label %._crit_edge125.thread.split.loop.exit186, label %bb.y

bb.y:                                             ; preds = %._crit_edge125
  %i.bk = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #14 ; 2 uses
  %.not68 = icmp eq i32 %i.bk, 0
  br i1 %.not68, label %bb.d, label %bb.z, !llvm.loop !20

bb.z:                                             ; preds = %bb.y
  %i.bl = tail call ptr @__errno_location() #15
  store i32 %i.bk, ptr %i.bl, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16
  unreachable

._crit_edge125.thread.split.loop.exit186:         ; preds = %._crit_edge125
  %i.bm = extractelement <2 x i32> %i.bg, i64 1
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = extractelement <2 x i32> %i.bg, i64 0
  br label %._crit_edge125.thread

._crit_edge125.thread:                            ; preds = %.preheader, %._crit_edge125.thread.split.loop.exit186
  %.sroa.13.0.lcssa178 = phi i1 [ %i.bn, %._crit_edge125.thread.split.loop.exit186 ], [ true, %.preheader ]
  %.sroa.19.0.lcssa177 = phi i32 [ %i.bo, %._crit_edge125.thread.split.loop.exit186 ], [ 0, %.preheader ] ; 4 uses
  %.sroa.25.1.lcssa176 = phi i32 [ %.sroa.25.3, %._crit_edge125.thread.split.loop.exit186 ], [ %.sroa.25.0, %.preheader ] ; 2 uses
  br i1 %i.f, label %bb.aa, label %bb.ac
end_hunk_0
begin_hunk_1_@_mail_proc:bb.a
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i32 @slurmscriptd_run_mail(ptr noundef %i.d, i32 noundef 5, ptr noundef nonnull %i.c, ptr noundef %i.l, i32 noundef 120, ptr noundef nonnull %i.b) #14
  %.not = icmp eq i32 %i.m, 0
  %i.n = load ptr, ptr %i.b, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.71, ptr noundef %i.n) #14 ; 0 uses
  br label %_mail_free.exit

bb.c:                                             ; preds = %bb.a
  %.not21 = icmp eq ptr %i.n, null
  br i1 %.not21, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %char0 = load i8, ptr %i.n, align 1
  %.not22 = icmp eq i8 %char0, 0
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 @get_log_level() #14
  %i.q = icmp sgt i32 %i.p, 4
  br i1 %i.q, label %bb.f, label %_mail_free.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.72, ptr noundef %i.r) #14
  br label %_mail_free.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.s = call i32 @get_log_level() #14
  %i.t = icmp sgt i32 %i.s, 5
  br i1 %i.t, label %bb.h, label %_mail_free.exit

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.73, i32 noundef 0) #14
  br label %_mail_free.exit

_mail_free.exit:                                  ; preds = %bb.f, %bb.e, %bb.h, %bb.g, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %0, ptr %i.a, align 8
  call void @slurm_xfree(ptr noundef nonnull %0) #14
  call void @slurm_xfree(ptr noundef nonnull %i.g) #14
  %i.u = load ptr, ptr %i.k, align 8
  call void @env_array_free(ptr noundef %i.u) #14
  call void @slurm_xfree(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.v = call i32 @pthread_mutex_lock(ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not23 = icmp eq i32 %i.v, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_mail_free.exit
  %i.w = tail call ptr @__errno_location() #15
  store i32 %i.v, ptr %i.w, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.69) #16
  unreachable

bb.j:                                             ; preds = %_mail_free.exit
  %i.x = call i32 @pthread_mutex_lock(ptr noundef nonnull @mail_mutex) #14 ; 2 uses
  %.not24 = icmp eq i32 %i.x, 0
  br i1 %.not24, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @__errno_location() #15
  store i32 %i.x, ptr %i.y, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.69) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = load i32, ptr @agent_thread_cnt, align 4 ; 2 uses
  %.not25 = icmp eq i32 %i.z, 0
  br i1 %.not25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr @agent_thread_cnt, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ab = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.12) #14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ac = load i32, ptr @mail_thread_cnt, align 4 ; 2 uses
  %.not26 = icmp eq i32 %i.ac, 0
  br i1 %.not26, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr @mail_thread_cnt, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ae = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.74) #14 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.af = call i32 @pthread_mutex_unlock(ptr noundef nonnull @mail_mutex) #14 ; 2 uses
  %.not27 = icmp eq i32 %i.af, 0
  br i1 %.not27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call ptr @__errno_location() #15
  store i32 %i.af, ptr %i.ag, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.69) #16
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ah = call i32 @pthread_mutex_unlock(ptr noundef nonnull @agent_cnt_mutex) #14 ; 2 uses
  %.not28 = icmp eq i32 %i.ah, 0
  br i1 %.not28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = tail call ptr @__errno_location() #15
  store i32 %i.ah, ptr %i.ai, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.69) #16
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret ptr null
}

declare i32 @slurmscriptd_run_mail(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @list_delete_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_node_did_resp(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  tail call void @node_did_resp(ptr noundef %0) #14
  ret i32 1
}

declare void @ping_nodes_update() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_srun_response(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  tail call void @srun_response(ptr noundef %0) #14
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_srun_no_resp(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call ptr @find_job(ptr noundef nonnull %i.a) #14 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1016 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8
  store i64 %i.e, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 1
}

declare void @srun_response(ptr noundef) local_unnamed_addr #2

declare ptr @job_common_env_vars(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @setenvf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @job_state_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @secs2time_str(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #11

declare void @env_array_free(ptr noundef) local_unnamed_addr #2

declare i32 @job_node_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hostlist_deranged_string_xmalloc(ptr noundef) local_unnamed_addr #2

declare i32 @pick_batch_host(ptr noundef) local_unnamed_addr #2

declare ptr @bitmap2node_name(ptr noundef) local_unnamed_addr #2

declare void @job_config_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }

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
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !11, !8}
!14 = distinct !{!14, !11, !8}
!15 = distinct !{!15, !11, !8}
!16 = distinct !{!16, !11, !8}
!17 = distinct !{!17, !11, !8}
!18 = distinct !{!18, !11, !8}
!19 = distinct !{!19, !11, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !11, !8}
!22 = distinct !{!22, !11, !8}
!23 = distinct !{!23, !11, !8}
!24 = distinct !{!24, !11, !8}
!25 = distinct !{!25, !11, !8}
!26 = distinct !{!26, !11, !8}
!27 = distinct !{!27, !11, !8}
!28 = distinct !{!28, !11, !8}
!29 = distinct !{!29, !11, !8}
!30 = distinct !{!30, !11, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !11, !8}
!35 = distinct !{!35, !11, !8}
!36 = distinct !{!36, !11, !8}
!37 = distinct !{!37, !11, !8}
!38 = distinct !{!38, !11, !8}
!39 = distinct !{!39, !11, !8}
end_hunk_1
