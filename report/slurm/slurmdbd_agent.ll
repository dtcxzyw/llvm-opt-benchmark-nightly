Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurmdbd_agent?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
begin_hunk_0_@slurmdbd_agent_send_recv:bb.a
  %i.d = tail call i32 @pthread_cond_signal(ptr noundef nonnull @slurmdbd_cond) #13 ; 2 uses
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__errno_location() #14
  store i32 %i.d, ptr %i.e, align 4
  %i.f = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1037, ptr noundef nonnull @__func__.slurmdbd_agent_send_recv) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slurmdbd_lock) #13 ; 2 uses
  %.not26 = icmp eq i32 %i.g, 0
  br i1 %.not26, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @__errno_location() #14
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.slurmdbd_agent_send_recv) #15
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %.not27 = icmp eq ptr %i.i, null
  %.not28 = icmp eq ptr %i.i, %i.c
  %or.cond = or i1 %.not27, %.not28
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.5) #13 ; 0 uses
  %.pre = load ptr, ptr @slurmdbd_conn, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.k = phi ptr [ %.pre, %bb.i ], [ %i.c, %bb.h ]
  store ptr %i.k, ptr %1, align 8
  %i.l = tail call i32 @dbd_conn_send_recv_direct(i16 noundef zeroext %0, ptr noundef nonnull %1, ptr noundef %2) #13
  %i.m = tail call i32 @pthread_cond_signal(ptr noundef nonnull @slurmdbd_cond) #13 ; 2 uses
  %.not29 = icmp eq i32 %i.m, 0
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = tail call ptr @__errno_location() #14
  store i32 %i.m, ptr %i.n, align 4
  %i.o = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 1049, ptr noundef nonnull @__func__.slurmdbd_agent_send_recv) #13 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @slurmdbd_lock) #13 ; 2 uses
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = tail call ptr @__errno_location() #14
  store i32 %i.p, ptr %i.q, align 4
  tail call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.slurmdbd_agent_send_recv) #15
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.f
  %.0 = phi i32 [ 7008, %bb.f ], [ %i.l, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #3

declare i32 @dbd_conn_send_recv_direct(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurmdbd_agent_send(i16 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.c = and i64 %i.b, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @slurm_get_log_level() #13
  %i.e = icmp sgt i32 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i16, ptr %i.f, align 8
  %i.h = zext i16 %i.g to i32
  %i.i = tail call ptr @slurmdbd_msg_type_2_str(i32 noundef %i.h, i32 noundef 1) #13
  %i.j = load ptr, ptr @agent_list, align 8
  %i.k = tail call i32 @slurm_list_count(ptr noundef %i.j) #13
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.slurmdbd_agent_send, ptr noundef %i.i, i32 noundef %i.k) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.l = tail call ptr @slurm_pack_slurmdbd_msg(ptr noundef %1, i16 noundef zeroext 11520) #13 ; 4 uses
  %.not51 = icmp eq ptr %i.l, null
  br i1 %.not51, label %bb.at, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @agent_lock) #13 ; 2 uses
  %.not52 = icmp eq i32 %i.m, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__errno_location() #14
  store i32 %i.m, ptr %i.n, align 4
  tail call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.slurmdbd_agent_send) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = load i64, ptr @slurmdbd_shutdown, align 8
  %.not53 = icmp eq i64 %i.o, 0
  br i1 %.not53, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr @agent_tid, align 8        ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = load ptr, ptr @agent_list, align 8       ; 2 uses
  %i.s = icmp eq ptr %i.r, null                   ; 2 uses
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = tail call ptr @slurm_list_create(ptr noundef nonnull @slurm_slurmdbd_free_buffer) #13
  store ptr %i.t, ptr @agent_list, align 8
  tail call fastcc void @_load_dbd_state()
  %.pre = load i64, ptr @agent_tid, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = phi i64 [ %.pre, %bb.j ], [ %i.p, %bb.i ]
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.l, label %_create_agent.exit

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @slurm_threadpool_create(ptr noundef nonnull @_agent, ptr noundef nonnull @.str.15, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @agent_tid, ptr noundef nonnull @__func__._create_agent) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %._create_agent.exit_crit_edge, label %bb.m

._create_agent.exit_crit_edge:                    ; preds = %bb.l
  %.pre69 = load i64, ptr @agent_tid, align 8
  %i.x = icmp eq i64 %.pre69, 0
  br label %_create_agent.exit

bb.m:                                             ; preds = %bb.l
  %i.y = tail call ptr @slurm_strerror(i32 noundef %i.w) #13
  tail call void (ptr, ...) @slurm_fatal(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__._create_agent, ptr noundef %i.y) #15
  unreachable

_create_agent.exit:                               ; preds = %._create_agent.exit_crit_edge, %bb.k
  %i.z = phi i1 [ %i.x, %._create_agent.exit_crit_edge ], [ false, %bb.k ]
  %i.aa = load ptr, ptr @agent_list, align 8      ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  %or.cond3 = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond3, label %bb.n, label %.thread

bb.n:                                             ; preds = %_create_agent.exit
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @agent_lock) #13 ; 2 uses
  %.not54 = icmp eq i32 %i.ac, 0
  br i1 %.not54, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = tail call ptr @__errno_location() #14
  store i32 %i.ac, ptr %i.ad, align 4
  tail call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.slurmdbd_agent_send) #15
  unreachable

bb.p:                                             ; preds = %bb.g
  %.pr = load ptr, ptr @agent_list, align 8       ; 2 uses
  %.not55 = icmp eq ptr %.pr, null
  br i1 %.not55, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ae = tail call i32 @slurm_get_log_level() #13
  %i.af = icmp sgt i32 %i.ae, 4
  br i1 %i.af, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = zext i16 %i.ah to i32
  %i.aj = tail call ptr @slurmdbd_msg_type_2_str(i32 noundef %i.ai, i32 noundef 1) #13
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 5, ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.slurmdbd_agent_send, ptr noundef nonnull @__func__.slurmdbd_agent_send, ptr noundef %i.aj) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @agent_lock) #13 ; 2 uses
  %.not56 = icmp eq i32 %i.ak, 0
  br i1 %.not56, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = tail call ptr @__errno_location() #14
  store i32 %i.ak, ptr %i.al, align 4
  tail call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.slurmdbd_agent_send) #15
  unreachable

.thread:                                          ; preds = %_create_agent.exit, %bb.h, %bb.p
  %i.am = phi ptr [ %.pr, %bb.p ], [ %i.aa, %_create_agent.exit ], [ %i.r, %bb.h ]
  %i.an = tail call i32 @slurm_list_count(ptr noundef nonnull %i.am) #13 ; 7 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 696), align 8
  %i.ap = lshr i32 %i.ao, 1
  %.not57 = icmp ult i32 %i.an, %i.ap
  br i1 %.not57, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.aq = tail call i64 @time(ptr noundef null) #13
  %i.ar = load i64, ptr @slurmdbd_agent_send.syslog_time, align 8
  %i.as = tail call double @difftime(i64 noundef %i.aq, i64 noundef %i.ar) #14
  %i.at = fcmp ogt double %i.as, 1.200000e+02
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.au = tail call i64 @time(ptr noundef null) #13
  store i64 %i.au, ptr @slurmdbd_agent_send.syslog_time, align 8
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 696), align 8
  %i.aw = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.8, i32 noundef %i.an, i32 noundef %i.av) #13 ; 0 uses
  tail call void (i32, ptr, ...) @syslog(i32 noundef 2, ptr noundef nonnull @.str.9) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.thread
  %.037 = phi i1 [ true, %bb.v ], [ false, %bb.u ], [ false, %.thread ] ; 2 uses
  %.b.i = load i1, ptr @max_dbd_msg_action, align 4
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 696), align 8 ; 3 uses
  br i1 %.b.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ay = icmp ult i32 %i.an, %i.ax
  br i1 %i.ay, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @_save_dbd_state()
  tail call void (ptr, ...) @slurm_fatal(ptr noundef nonnull @.str.63, i32 noundef %i.an) #15
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.az = add i32 %i.ax, -1
  %.not.i63 = icmp ult i32 %i.an, %i.az
  br i1 %.not.i63, label %_max_dbd_msg_action.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i16 1442, ptr %i.a, align 2
  %i.ba = load ptr, ptr @agent_list, align 8
  %i.bb = call i32 @slurm_list_delete_all(ptr noundef %i.ba, ptr noundef nonnull @_purge_agent_list_req, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.bc = sub i32 %i.an, %i.bb
  %i.bd = call i32 @slurm_get_log_level() #13
  %i.be = icmp sgt i32 %i.bd, 2
  br i1 %i.be, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.64, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._max_dbd_msg_action, i32 noundef %i.bb) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.pre70 = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 696), align 8
  br label %_max_dbd_msg_action.exit

_max_dbd_msg_action.exit:                         ; preds = %bb.z, %bb.ac
  %2 = phi i32 [ %.pre70, %bb.ac ], [ %i.ax, %bb.z ]
  %.0 = phi i32 [ %i.bc, %bb.ac ], [ %i.an, %bb.z ] ; 2 uses
  %.not87 = icmp ult i32 %.0, %2
  br i1 %.not87, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.x, %_max_dbd_msg_action.exit
  %i.bf = load ptr, ptr @agent_list, align 8
  call void @slurm_list_enqueue(ptr noundef %i.bf, ptr noundef nonnull %i.l) #13
  br label %bb.af

bb.ae:                                            ; preds = %_max_dbd_msg_action.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 8
  %i.bi = zext i16 %i.bh to i32
  %i.bj = call ptr @slurmdbd_msg_type_2_str(i32 noundef %i.bi, i32 noundef 1) #13
  %i.bk = load i16, ptr %i.bg, align 8
  %i.bl = zext i16 %i.bk to i32
  %i.bm = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.10, i32 noundef %.0, ptr noundef %i.bj, i32 noundef %i.bl) #13 ; 0 uses
  call void @slurm_free_buf(ptr noundef nonnull %i.l) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %3 = phi i1 [ false, %bb.ad ], [ true, %bb.ae ] ; 2 uses
  %.038 = phi i32 [ 0, %bb.ad ], [ -1, %bb.ae ]   ; 2 uses
  %i.bn = call i32 @pthread_cond_broadcast(ptr noundef nonnull @agent_cond) #13 ; 2 uses
  %.not58 = icmp eq i32 %i.bn, 0
  br i1 %.not58, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = tail call ptr @__errno_location() #14
  store i32 %i.bn, ptr %i.bo, align 4
  %i.bp = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1127, ptr noundef nonnull @__func__.slurmdbd_agent_send) #13 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bq = call i32 @pthread_mutex_unlock(ptr noundef nonnull @agent_lock) #13 ; 2 uses
  %.not59 = icmp eq i32 %i.bq, 0
  br i1 %.not59, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = tail call ptr @__errno_location() #14
  store i32 %i.bq, ptr %i.br, align 4
  call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.slurmdbd_agent_send) #15
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %or.cond5 = or i1 %.037, %3
  br i1 %or.cond5, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.bs = call i32 @pthread_mutex_lock(ptr noundef nonnull @slurmdbd_lock) #13 ; 2 uses
  %.not60 = icmp eq i32 %i.bs, 0
  br i1 %.not60, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bt = tail call ptr @__errno_location() #14
  store i32 %i.bs, ptr %i.bt, align 4
  call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.slurmdbd_agent_send) #15
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.bu = load ptr, ptr @slurmdbd_conn, align 8   ; 2 uses
  %.not61 = icmp eq ptr %i.bu, null
  br i1 %.not61, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.037, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8
  call void (...) %i.bw() #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %3, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bx = load ptr, ptr @slurmdbd_conn, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  %i.bz = load ptr, ptr %i.by, align 8
  call void (...) %i.bz() #13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.am, %bb.aq, %bb.ap
  %i.ca = call i32 @pthread_mutex_unlock(ptr noundef nonnull @slurmdbd_lock) #13 ; 2 uses
  %.not62 = icmp eq i32 %i.ca, 0
  br i1 %.not62, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cb = tail call ptr @__errno_location() #14
  store i32 %i.ca, ptr %i.cb, align 4
  call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.slurmdbd_agent_send) #15
  unreachable

.sink.split:                                      ; preds = %bb.s, %bb.n
  tail call void @slurm_free_buf(ptr noundef nonnull %i.l) #13
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.aj, %bb.ar, %bb.d
  %.039 = phi i32 [ -1, %bb.d ], [ %.038, %bb.ar ], [ %.038, %bb.aj ], [ -1, %.sink.split ]
  ret i32 %.039
}

declare i32 @slurm_get_log_level() local_unnamed_addr #1

declare void @slurm_log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @slurmdbd_msg_type_2_str(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slurm_list_count(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_pack_slurmdbd_msg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare void @slurm_free_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

declare void @syslog(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @slurm_list_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @slurmdbd_conn_active() local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conn, align 8    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %.not2 = icmp ne ptr %i.c, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.not2, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @slurmdbd_agent_queue_count() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @agent_list, align 8
  %i.b = tail call i32 @slurm_list_count(ptr noundef %i.a) #13
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @slurmdbd_agent_config_setup() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 696), align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 700), align 4
  %i.d = shl i32 %i.c, 1
  %i.e = load i32, ptr @node_record_count, align 4
  %i.f = shl nsw i32 %i.e, 2
  %i.g = add i32 %i.f, %i.d
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.g, i32 10000)
  store i32 %spec.select, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 696), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1336), align 8
  %i.i = tail call ptr @slurm_xstrcasestr(ptr noundef %i.h, ptr noundef nonnull @.str.11) #13 ; 2 uses
  %.not5 = icmp eq ptr %i.i, null
  br i1 %.not5, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 19
  %i.k = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.j) #13 ; 5 uses
  store ptr %i.k, ptr %i.a, align 8
  %i.l = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 44) #16 ; 2 uses
  %.not6 = icmp eq ptr %i.l, null
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.l, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = tail call i32 @slurm_xstrcasecmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.12) #13
  %.not7 = icmp ne i32 %i.m, 0                    ; 2 uses
  br i1 %.not7, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @slurm_xstrcasecmp(ptr noundef nonnull %i.k, ptr noundef nonnull @.str.13) #13
  %.not8 = icmp eq i32 %i.n, 0
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @slurm_fatal(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.k) #15
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  store i1 %.not7, ptr @max_dbd_msg_action, align 4
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  store i1 false, ptr @max_dbd_msg_action, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare ptr @slurm_xstrcasestr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7
end_hunk_0
