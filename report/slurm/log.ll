Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/log?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
begin_hunk_0_@log_timestamp:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.g = tail call i64 @time(ptr noundef null) #19
  store i64 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.h = call ptr @localtime_r(ptr noundef nonnull %i.e, ptr noundef nonnull %6) #19
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr %i.i) #25 ; 0 uses
  br label %_make_timestamp.exit

bb.d:                                             ; preds = %bb.b
  %i.j = call i64 @strftime(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %6) #19
  br label %_make_timestamp.exit

_make_timestamp.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %_fix_tz.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 66
  %i.l = load i16, ptr %i.k, align 2
  switch i16 %i.l, label %bb.m [
    i16 2, label %bb.f
    i16 3, label %bb.f
    i16 7, label %bb.h
    i16 5, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.m = tail call i64 @time(ptr noundef null) #19
  store i64 %i.m, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.n = call ptr @localtime_r(ptr noundef nonnull %i.d, ptr noundef nonnull %5) #19
  %.not.i17 = icmp eq ptr %i.n, null
  br i1 %.not.i17, label %_make_timestamp.exit20.thread, label %_make_timestamp.exit20

_make_timestamp.exit20.thread:                    ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8
  %fwrite.i19 = call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr %i.o) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %_fix_tz.exit

_make_timestamp.exit20:                           ; preds = %bb.f
  %i.p = call i64 @strftime(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.q = icmp ult i64 %1, 26
  %i.r = icmp ne i64 %i.p, 24
  %or.cond.i = or i1 %i.q, %i.r
  br i1 %or.cond.i, label %_fix_tz.exit, label %bb.g

bb.g:                                             ; preds = %_make_timestamp.exit20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.u, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  store i8 %i.x, ptr %i.t, align 1
  store i8 58, ptr %i.w, align 1
  br label %_fix_tz.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.y = tail call i64 @time(ptr noundef null) #19
  store i64 %i.y, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.z = call ptr @localtime_r(ptr noundef nonnull %i.c, ptr noundef nonnull %4) #19
  %.not.i22 = icmp eq ptr %i.z, null
  br i1 %.not.i22, label %_make_timestamp.exit25.thread, label %_make_timestamp.exit25

_make_timestamp.exit25.thread:                    ; preds = %bb.h
  %i.aa = load ptr, ptr @stderr, align 8
  %fwrite.i24 = call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr %i.aa) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %_fix_tz.exit

_make_timestamp.exit25:                           ; preds = %bb.h
  %i.ab = call i64 @strftime(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ac = icmp ult i64 %1, 26
  %i.ad = icmp ne i64 %i.ab, 24
  %or.cond.i26 = or i1 %i.ac, %i.ad
  br i1 %or.cond.i26, label %_fix_tz.exit, label %bb.i

bb.i:                                             ; preds = %_make_timestamp.exit25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  store i8 %i.aj, ptr %i.af, align 1
  store i8 58, ptr %i.ai, align 1
  br label %_fix_tz.exit

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ak = tail call i64 @time(ptr noundef null) #19
  store i64 %i.ak, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.al = call ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #19
  %.not.i29 = icmp eq ptr %i.al, null
  br i1 %.not.i29, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr @stderr, align 8
  %fwrite.i31 = call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr %i.am) #25 ; 0 uses
  br label %_make_timestamp.exit32

bb.l:                                             ; preds = %bb.j
  %i.an = call i64 @strftime(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #19
  br label %_make_timestamp.exit32

_make_timestamp.exit32:                           ; preds = %bb.k, %bb.l
  %.0.i30 = phi i64 [ %i.an, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_fix_tz.exit

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ao = tail call i64 @time(ptr noundef null) #19
  store i64 %i.ao, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ap = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #19
  %.not.i33 = icmp eq ptr %i.ap, null
  br i1 %.not.i33, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr @stderr, align 8
  %fwrite.i35 = call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr %i.aq) #25 ; 0 uses
  br label %_make_timestamp.exit36

bb.o:                                             ; preds = %bb.m
  %i.ar = call i64 @strftime(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #19
  br label %_make_timestamp.exit36

_make_timestamp.exit36:                           ; preds = %bb.n, %bb.o
  %.0.i34 = phi i64 [ %i.ar, %bb.o ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_fix_tz.exit

_fix_tz.exit:                                     ; preds = %bb.i, %_make_timestamp.exit25, %_make_timestamp.exit25.thread, %bb.g, %_make_timestamp.exit20, %_make_timestamp.exit20.thread, %_make_timestamp.exit36, %_make_timestamp.exit32, %_make_timestamp.exit
  %.0 = phi i64 [ %.0.i34, %_make_timestamp.exit36 ], [ %.0.i, %_make_timestamp.exit ], [ 0, %_make_timestamp.exit20.thread ], [ %.0.i30, %_make_timestamp.exit32 ], [ 25, %bb.g ], [ %i.p, %_make_timestamp.exit20 ], [ 25, %bb.i ], [ %i.ab, %_make_timestamp.exit25 ], [ 0, %_make_timestamp.exit25.thread ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_log_init(ptr noundef %0, ptr nofree noundef readonly byval(%struct.log_options_t) align 8 captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @log, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 72, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.12, i32 noundef 303, ptr noundef nonnull @__func__._log_init) #19 ; 3 uses
  store ptr %i.b, ptr @log, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.c, align 8
  store ptr null, ptr %i.b, align 8
  %i.d = load ptr, ptr @log, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %.b35.pr = load i1, ptr @at_forked, align 1
  br i1 %.b35.pr, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = tail call i32 @pthread_atfork(ptr noundef nonnull @_atfork_prep, ptr noundef nonnull @_atfork_parent, ptr noundef nonnull @_atfork_child) #19 ; 0 uses
  store i1 true, ptr @at_forked, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.b = load i1, ptr @syslog_open, align 1
  br i1 %.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  tail call void @closelog() #19
  store i1 false, ptr @syslog_open, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.not36 = icmp eq ptr %0, null
  %i.h = load ptr, ptr @log, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not37 = icmp eq ptr %i.i, null                ; 2 uses
  br i1 %.not36, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @slurm_xfree(ptr noundef nonnull %i.h) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = tail call ptr @xbasename(ptr noundef nonnull %0) #19
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  br i1 %.not37, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = load ptr, ptr @program_invocation_name, align 8 ; 2 uses
  %i.l = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 47) #26 ; 2 uses
  %.not38 = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.023 = select i1 %.not38, ptr %i.k, ptr %i.m
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.i
  %.023.sink = phi ptr [ %.023, %bb.i ], [ %i.j, %bb.g ]
  %i.n = tail call ptr @xstrdup(ptr noundef %.023.sink) #19
  %i.o = load ptr, ptr @log, align 8
  store ptr %i.n, ptr %i.o, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %i.p = load ptr, ptr @log, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %.not40 = icmp eq ptr %i.r, null
  br i1 %.not40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #19
  %i.t = load ptr, ptr @log, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = phi ptr [ %i.t, %bb.k ], [ %i.p, %bb.j ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.w, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 20, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.y, null
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @cbuf_destroy(ptr noundef nonnull %i.y) #19
  %i.z = load ptr, ptr @log, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr null, ptr %i.aa, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = phi ptr [ %i.z, %bb.m ], [ %i.v, %bb.l ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not42 = icmp eq ptr %i.ad, null
  br i1 %.not42, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @cbuf_destroy(ptr noundef nonnull %i.ad) #19
  %i.ae = load ptr, ptr @log, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr null, ptr %i.af, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ag = phi ptr [ %i.ae, %bb.o ], [ %i.ab, %bb.n ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 57
  %i.ai = load i8, ptr %i.ah, align 1, !range !8, !noundef !9
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call ptr @cbuf_create(i32 noundef 8192, i1 noundef zeroext true) #19
  %i.al = load ptr, ptr @log, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = tail call ptr @cbuf_create(i32 noundef 8192, i1 noundef zeroext true) #19
  %i.ao = load ptr, ptr @log, align 8             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.an, ptr %i.ap, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aq = phi ptr [ %i.ao, %bb.q ], [ %i.ag, %bb.p ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load i32, ptr %i.ar, align 4
  %.not43 = icmp eq i32 %i.as, 0
  br i1 %.not43, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i32 %2, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.aq, align 8
  tail call void @openlog(ptr noundef %i.au, i32 noundef 1, i32 noundef %2) #19
  store i1 true, ptr @syslog_open, align 1
  %.pre54.pre = load ptr, ptr @log, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre54 = phi ptr [ %.pre54.pre, %bb.s ], [ %i.aq, %bb.r ] ; 3 uses
  %.not44 = icmp eq ptr %3, null
  br i1 %.not44, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.pre54, i64 52
  %i.aw = load i32, ptr %i.av, align 4
  %.not45 = icmp eq i32 %i.aw, 0
  br i1 %.not45, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %3, i32 noundef 525377, i32 noundef 384) #19 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, -1                  ; 2 uses
  br i1 %i.ay, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.az = tail call noalias ptr @fdopen(i32 noundef %i.ax, ptr noundef nonnull @.str.38) #19 ; 2 uses
  %.not53 = icmp eq ptr %i.az, null
  br i1 %.not53, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.v, %bb.w
  %i.ba = tail call ptr @__errno_location() #20   ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = tail call ptr @slurm_strerror(i32 noundef %i.bb) #19
  %i.bd = load ptr, ptr @stderr, align 8
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bd, ptr noundef nonnull @.str.39, ptr noundef %0, ptr noundef nonnull @__func__._log_init, ptr noundef nonnull %3, ptr noundef %i.bc) #22 ; 0 uses
  br i1 %i.ay, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.thread
  %i.bf = tail call i32 @close(i32 noundef %i.ax) #19 ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bg = load ptr, ptr @log, align 8             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not46 = icmp eq ptr %i.bi, null
  br i1 %.not46, label %.thread50, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = tail call i32 @fclose(ptr noundef nonnull %i.bi) ; 0 uses
  %.pre = load ptr, ptr @log, align 8
  br label %.thread50

.thread50:                                        ; preds = %bb.y, %bb.z
  %i.bk = phi ptr [ %i.bg, %bb.y ], [ %.pre, %bb.z ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.az, ptr %i.bl, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %.thread, %bb.x
  %i.bm = load i32, ptr %i.ba, align 4
  br label %bb.af

bb.ab:                                            ; preds = %.thread50, %bb.u, %bb.t
  %i.bn = phi ptr [ %i.bk, %.thread50 ], [ %.pre54, %bb.u ], [ %.pre54, %bb.t ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not47 = icmp eq ptr %i.bp, null
  br i1 %.not47, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = tail call i32 @fileno(ptr noundef nonnull %i.bp) #19
  %i.br = icmp slt i32 %i.bq, 0
  %.pre55 = load ptr, ptr @log, align 8           ; 3 uses
  br i1 %i.br, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre55, i64 16
  store ptr null, ptr %i.bs, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.bt = phi ptr [ %.pre55, %bb.ad ], [ %.pre55, %bb.ac ], [ %i.bn, %bb.ab ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 44
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 52
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = load i32, ptr %i.bu, align 4
  %..i = tail call i32 @llvm.umax.i32(i32 %i.bw, i32 %i.by)
  %i.ca = tail call noundef i32 @llvm.umax.i32(i32 %..i, i32 %i.bz)
  store volatile i32 %i.ca, ptr @highest_log_level, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  store i8 1, ptr %i.cb, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %bb.ae
  %.2 = phi i32 [ 0, %bb.ae ], [ %i.bm, %bb.aa ]
  ret i32 %.2
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @sched_log_init(ptr noundef %0, ptr nofree noundef readonly byval(%struct.log_options_t) align 8 captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @log_lock) #19 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #20
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.sched_log_init) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @_sched_log_init(ptr noundef %0, ptr noundef nonnull byval(%struct.log_options_t) align 8 %1, i32 noundef %2, ptr noundef %3)
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @log_lock) #19 ; 2 uses
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #20
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sched_log_init) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.7, ptr noundef %3) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_sched_log_init(ptr noundef %0, ptr nofree noundef readonly byval(%struct.log_options_t) align 8 captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @sched_log, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 72, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.12, i32 noundef 407, ptr noundef nonnull @__func__._sched_log_init) #19
  store ptr %i.b, ptr @sched_log, align 8
  %.b.pr = load i1, ptr @at_forked, align 1
  br i1 %.b.pr, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.c = tail call i32 @pthread_atfork(ptr noundef nonnull @_atfork_prep, ptr noundef nonnull @_atfork_parent, ptr noundef nonnull @_atfork_child) #19 ; 0 uses
  store i1 true, ptr @at_forked, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.not35 = icmp eq ptr %0, null
  %i.d = load ptr, ptr @sched_log, align 8        ; 2 uses
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  tail call void @slurm_xfree(ptr noundef %i.d) #19
  %i.e = tail call ptr @xbasename(ptr noundef nonnull %0) #19
  br label %.sink.split

bb.d:                                             ; preds = %.loopexit
  %i.f = load ptr, ptr %i.d, align 8
  %.not36 = icmp eq ptr %i.f, null
  br i1 %.not36, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @program_invocation_name, align 8 ; 2 uses
  %i.h = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 47) #26 ; 2 uses
  %.not37 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.023 = select i1 %.not37, ptr %i.g, ptr %i.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.023.sink = phi ptr [ %.023, %bb.e ], [ %i.e, %bb.c ]
  %i.j = tail call ptr @xstrdup(ptr noundef %.023.sink) #19
  %i.k = load ptr, ptr @sched_log, align 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.l = load ptr, ptr @sched_log, align 8        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %.not38 = icmp eq ptr %i.n, null
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #19
  %i.p = load ptr, ptr @sched_log, align 8        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.q, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.l, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not39 = icmp eq ptr %i.u, null
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @cbuf_destroy(ptr noundef nonnull %i.u) #19
  %i.v = load ptr, ptr @sched_log, align 8        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr null, ptr %i.w, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = phi ptr [ %i.v, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not40 = icmp eq ptr %i.z, null
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @cbuf_destroy(ptr noundef nonnull %i.z) #19
  %i.aa = load ptr, ptr @sched_log, align 8       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %i.ab, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = phi ptr [ %i.aa, %bb.k ], [ %i.x, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 57
  %i.ae = load i8, ptr %i.ad, align 1, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call ptr @cbuf_create(i32 noundef 8192, i1 noundef zeroext true) #19
  %i.ah = load ptr, ptr @sched_log, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.ag, ptr %i.ai, align 8
  %i.aj = tail call ptr @cbuf_create(i32 noundef 8192, i1 noundef zeroext true) #19
  %i.ak = load ptr, ptr @sched_log, align 8       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.aj, ptr %i.al, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = phi ptr [ %i.ak, %bb.m ], [ %i.ac, %bb.l ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load i32, ptr %i.an, align 4
  %.not41 = icmp eq i32 %i.ao, 0
  br i1 %.not41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 %2, ptr %i.ap, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not42 = icmp eq ptr %3, null
  br i1 %.not42, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %3, i32 noundef 525377, i32 noundef 384) #19 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, -1                  ; 2 uses
  br i1 %i.ar, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.as = tail call noalias ptr @fdopen(i32 noundef %i.aq, ptr noundef nonnull @.str.38) #19 ; 3 uses
  %.not51 = icmp eq ptr %i.as, null
  br i1 %.not51, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.q, %bb.r
  %i.at = tail call ptr @__errno_location() #20   ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call ptr @slurm_strerror(i32 noundef %i.au) #19
  %i.aw = load ptr, ptr @stderr, align 8
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.39, ptr noundef %0, ptr noundef nonnull @__func__._sched_log_init, ptr noundef nonnull %3, ptr noundef %i.av) #22 ; 0 uses
  br i1 %i.ar, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.thread
  %i.ay = tail call i32 @close(i32 noundef %i.aq) #19 ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr @sched_log, align 8       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not43 = icmp eq ptr %i.bb, null
  br i1 %.not43, label %.thread61, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = tail call i32 @fclose(ptr noundef nonnull %i.bb) ; 0 uses
  %.pre = load ptr, ptr @sched_log, align 8
  br label %.thread61

.thread61:                                        ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.az, %bb.t ], [ %.pre, %bb.u ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.as, ptr %i.be, align 8
  br label %bb.x

bb.v:                                             ; preds = %.thread, %bb.s
  %i.bf = load i32, ptr %i.at, align 4
  br label %bb.ac

bb.w:                                             ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.pre52 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.not44 = icmp eq ptr %.pre52, null
  br i1 %.not44, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.thread61, %bb.w
  %i.bg = phi ptr [ %i.as, %.thread61 ], [ %.pre52, %bb.w ]
  %i.bh = tail call i32 @fileno(ptr noundef nonnull %i.bg) #19
  %i.bi = icmp slt i32 %i.bh, 0
  %.pre53 = load ptr, ptr @sched_log, align 8     ; 3 uses
  br i1 %i.bi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre53, i64 16
  store ptr null, ptr %i.bj, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.bk = phi ptr [ %.pre53, %bb.y ], [ %.pre53, %bb.x ], [ %i.am, %bb.w ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = load i32, ptr %i.bl, align 4
  %..i = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bp)
  %i.br = tail call noundef i32 @llvm.umax.i32(i32 %..i, i32 %i.bq)
  store volatile i32 %i.br, ptr @highest_sched_log_level, align 4
  %i.bs = load volatile i32, ptr @highest_sched_log_level, align 4
  %.not45 = icmp eq i32 %i.bs, 0
  br i1 %.not45, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store volatile i32 10, ptr @highest_sched_log_level, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  store i8 1, ptr %i.bt, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.v, %bb.ab
  %.2 = phi i32 [ 0, %bb.ab ], [ %i.bf, %bb.v ]
  ret i32 %.2
}

declare void @closelog() local_unnamed_addr #8

end_hunk_0
