Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_iof?download=true
inline.NumInlined: 292
inline.NumDeleted: 18
loop-unroll.NumUnrolled: 6
begin_hunk_0_@PMIx_IOF_push:bb.a
  br label %pmix_obj_new_tma.exit358

bb.er:                                            ; preds = %pmix_obj_run_destructors.exit407
  call void @free(ptr noundef nonnull %i.pq) #18
  br label %pmix_obj_new_tma.exit358

bb.es:                                            ; preds = %bb.as
  %i.tf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_host_server, i64 192), align 8, !tbaa !146 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %pmix_obj_new_tma.exit358, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.th = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ti = load i64, ptr %i.b, align 8, !tbaa !15
  %i.tj = tail call i32 %i.tf(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4), ptr noundef %0, i64 noundef %i.th, ptr noundef %3, i64 noundef %i.ti, ptr noundef nonnull %2, ptr noundef %5, ptr noundef %6) #18
  br label %pmix_obj_new_tma.exit358

pmix_obj_new_tma.exit358:                         ; preds = %pmix_iof_stdin_check.exit, %._crit_edge, %.preheader, %bb.av, %bb.es, %bb.ek, %bb.el, %bb.eq, %bb.er, %pmix_obj_update.exit, %pmix_obj_update.exit334, %bb.dx, %bb.dw, %pmix_obj_update.exit335, %bb.dr, %bb.dq, %pmix_obj_update.exit336, %bb.df, %bb.de, %pmix_obj_update.exit337, %bb.cs, %bb.cr, %pmix_obj_update.exit338, %bb.cg, %bb.cf, %pmix_obj_update.exit339, %bb.bt, %bb.bs, %pmix_obj_update.exit340, %bb.bh, %bb.bg, %bb.et
  %.0267 = phi i32 [ -31, %._crit_edge ], [ %i.tj, %bb.et ], [ -32, %bb.av ], [ -47, %bb.es ], [ %.0266412, %pmix_obj_update.exit340 ], [ %.1416, %pmix_obj_update.exit339 ], [ %.2420, %pmix_obj_update.exit338 ], [ %.3424, %pmix_obj_update.exit337 ], [ %.4428, %pmix_obj_update.exit336 ], [ %.5432, %pmix_obj_update.exit335 ], [ -32, %pmix_obj_update.exit334 ], [ %i.sl, %pmix_obj_update.exit ], [ %.0266412, %bb.bg ], [ %.0266412, %bb.bh ], [ %.1416, %bb.bs ], [ %.1416, %bb.bt ], [ %.2420, %bb.cf ], [ %.2420, %bb.cg ], [ %.3424, %bb.cr ], [ %.3424, %bb.cs ], [ %.4428, %bb.de ], [ %.4428, %bb.df ], [ %.5432, %bb.dq ], [ %.5432, %bb.dr ], [ -32, %bb.dw ], [ -32, %bb.dx ], [ -25, %bb.ek ], [ 0, %bb.el ], [ %i.sl, %bb.eq ], [ %i.sl, %bb.er ], [ -157, %.preheader ], [ -157, %pmix_iof_stdin_check.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret i32 %.0267
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #6

declare zeroext i1 @PMIx_Check_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMIx_Info_true(ptr noundef) local_unnamed_addr #2

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @pmix_iof_stdin_cb(i32 %0, i16 signext %1, ptr noundef %2) #0 {
bb.a:
  fence acquire
  %i.a = tail call i32 @isatty(i32 noundef 0) #18
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @getpgrp() #18
  %i.c = tail call i32 @tcgetpgrp(i32 noundef 0) #18
  %.not2.i = icmp eq i32 %i.b, %i.c
  br i1 %.not2.i, label %bb.c, label %pmix_iof_stdin_check.exit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 268
  store i8 1, ptr %i.d, align 4, !tbaa !139
  fence release
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.f = load i8, ptr %i.e, align 8, !tbaa !138, !range !28, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 248
  %spec.select = select i1 %i.g, ptr %i.h, ptr null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.j = tail call i32 @event_add(ptr noundef nonnull %i.i, ptr noundef %spec.select) #18
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @PMIx_Error_string(i32 noundef -27) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.k, ptr noundef nonnull @.str.2, i32 noundef 1906) #18
  br label %bb.e

pmix_iof_stdin_check.exit:                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.m = tail call i32 @event_del(ptr noundef nonnull %i.l) #18 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 268
  store i8 0, ptr %i.n, align 4, !tbaa !139
  fence release
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %pmix_iof_stdin_check.exit
  ret void
}

declare ptr @PMIx_Info_create(i64 noundef) local_unnamed_addr #2

declare i32 @PMIx_Info_xfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i1 @pmix_iof_fd_always_ready(i32 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call zeroext i1 @pmix_fd_is_regular(i32 noundef %0) #18
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @pmix_fd_is_chardev(i32 noundef %0) #18
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @isatty(i32 noundef %0) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call zeroext i1 @pmix_fd_is_blkdev(i32 noundef %0) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.e = phi i1 [ true, %bb.c ], [ true, %bb.a ], [ %i.d, %bb.d ]
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define void @pmix_iof_read_local_handler(i32 %0, i16 signext %1, ptr noundef initializes((268, 269)) %2) #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %struct.pmix_byte_object, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 23, ptr %i.b, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 6 uses
  fence acquire
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stdin, align 8, !tbaa !131
  %i.i = tail call i32 @fileno(ptr noundef %i.h) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0210 = phi i32 [ %i.i, %bb.b ], [ %i.f, %bb.a ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %i.j = call i64 @read(i32 noundef %.0210, ptr noundef nonnull %i.a, i64 noundef 8192) #18 ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 268 ; 3 uses
  store i8 0, ptr %i.l, align 4, !tbaa !139
  %i.m = icmp slt i32 %i.k, 0
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__errno_location() #20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !72
  switch i32 %i.o, label %bb.g [
    i32 11, label %bb.e
    i32 4, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i8 1, ptr %i.l, align 4, !tbaa !139
  fence release
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.q = load i8, ptr %i.p, align 8, !tbaa !138, !range !28, !noundef !29
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 248
  %spec.select = select i1 %i.r, ptr %i.s, ptr null
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.u = tail call i32 @event_add(ptr noundef nonnull %i.t, ptr noundef %spec.select) #18
  %.not266.a = icmp eq i32 %i.u, 0
  br i1 %.not266.a, label %pmix_obj_new_tma.exit284, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @PMIx_Error_string(i32 noundef -27) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.v, ptr noundef nonnull @.str.2, i32 noundef 1992) #18
  br label %pmix_obj_new_tma.exit284

bb.g:                                             ; preds = %bb.d
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_client_globals, i64 768), align 8, !tbaa !43 ; 3 uses
  %or.cond = icmp ult i32 %i.w, 64
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !46
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !148
  %i.af = tail call ptr @PMIx_IOF_channel_string(i16 noundef zeroext %i.ae) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.w, ptr noundef nonnull @.str.59, ptr noundef %i.ac, ptr noundef %i.af) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  store ptr %i.a, ptr %3, align 8, !tbaa !150
  %i.ag = and i64 %i.j, 2147483647
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !151
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0212 = phi i32 [ 0, %bb.j ], [ %i.k, %bb.k ]  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !148 ; 2 uses
  switch i16 %i.aj, label %bb.aa [
    i16 2, label %bb.o
    i16 4, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink394 = phi i64 [ 1464, %bb.n ], [ 1456, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink394
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 284
  %i.an = call i32 @pmix_iof_write_output(ptr noundef nonnull %i.am, i16 noundef zeroext %i.aj, ptr noundef nonnull %3) ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = icmp ne i32 %i.an, -2
  %or.cond24 = and i1 %i.ao, %i.ap
  br i1 %or.cond24, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = call ptr @PMIx_Error_string(i32 noundef %i.an) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.aq, ptr noundef nonnull @.str.2, i32 noundef 2021) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %4 = icmp eq i32 %.0212, 0
  br i1 %4, label %bb.r, label %.thread343

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 536
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !214, !range !28, !noundef !29
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.s, label %pmix_obj_new_tma.exit284

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 1456
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !215 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 268
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !139, !range !28, !noundef !29
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %pmix_obj_new_tma.exit284, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 1464
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !216 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 268
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !139, !range !28, !noundef !29
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %pmix_obj_new_tma.exit284, label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_pfexec_cmpl_caddy_t_class, i64 56), align 8, !tbaa !71
  %i.bh = call noalias noundef ptr @malloc(i64 noundef %i.bg) #19 ; 10 uses
  %i.bi = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !72
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_pfexec_cmpl_caddy_t_class, i64 32), align 8, !tbaa !73
  %.not.i = icmp eq i32 %i.bi, %i.bj
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_pfexec_cmpl_caddy_t_class) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not22.i = icmp eq ptr %i.bh, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = call i32 @pthread_mutex_init(ptr noundef nonnull %i.bh, ptr noundef null) #18 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store ptr @pmix_pfexec_cmpl_caddy_t_class, ptr %i.bl, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i32 1, ptr %i.bm, align 8, !tbaa !75
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pfexec_cmpl_caddy_t_class, i64 40), align 8, !tbaa !76 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !77 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bq, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.br = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %i.bq, %bb.z ]
  %.07.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %i.bp, %bb.z ]
  call void %i.br(ptr noundef nonnull %i.bh) #18, !inline_history !0
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !1

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.y, %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 248
  store ptr %i.d, ptr %i.bu, align 8, !tbaa !218
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 120 ; 2 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 392), align 8, !tbaa !87
  %i.bx = call i32 @pmix_event_assign(ptr noundef nonnull %i.bv, ptr noundef %i.bw, i32 noundef -1, i16 noundef signext 4, ptr noundef nonnull @pmix_pfexec_check_complete, ptr noundef %i.bh) #18 ; 0 uses
  fence release
  call void @event_active(ptr noundef nonnull %i.bv, i32 noundef 4, i16 noundef signext 1) #18
  br label %pmix_obj_new_tma.exit284

bb.aa:                                            ; preds = %bb.m, %bb.l
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !59
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !69 ; 3 uses
  %i.cb = and i32 %i.ca, 268435456
  %.not237 = icmp ne i32 %i.cb, 0
  %i.cc = load ptr, ptr @stdinev_global, align 8
  %i.cd = icmp eq ptr %2, %i.cc
  %or.cond269 = select i1 %.not237, i1 %i.cd, i1 false
  br i1 %or.cond269, label %bb.ab, label %.loopexit344

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 552 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !134
  %.not238 = icmp eq ptr %i.cf, null
  %.0209346 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pfexec_globals, i64 256), align 8 ; 2 uses
  %.not239347 = icmp eq ptr %.0209346, getelementptr inbounds nuw (i8, ptr @pmix_pfexec_globals, i64 136)
  %or.cond349 = select i1 %.not238, i1 true, i1 %.not239347
  br i1 %or.cond349, label %.loopexit344, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab, %bb.ad
  %.0209348 = phi ptr [ %.0209, %bb.ad ], [ %.0209346, %bb.ab ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0209348, i64 272 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !134
  %i.ci = call zeroext i1 @PMIx_Check_procid(ptr noundef nonnull %i.cg, ptr noundef %i.ch) #18
  br i1 %i.ci, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph
  %i.cj = getelementptr inbounds nuw i8, ptr %.0209348, i64 992
  %i.ck = call fastcc i32 @write_output_line(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cj, ptr noundef null, i16 noundef zeroext 1, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %3) ; 0 uses
  br label %bb.dt

bb.ad:                                            ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.0209348, i64 120
  %.0209 = load ptr, ptr %i.cl, align 8, !tbaa !118 ; 2 uses
  %.not239 = icmp eq ptr %.0209, getelementptr inbounds nuw (i8, ptr @pmix_pfexec_globals, i64 136)
  br i1 %.not239, label %.loopexit344.loopexit, label %.lr.ph, !llvm.loop !211

.loopexit344.loopexit:                            ; preds = %bb.ad
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 136
  %.pre352 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %.loopexit344

.loopexit344:                                     ; preds = %.loopexit344.loopexit, %bb.ab, %bb.aa
  %i.cm = phi i32 [ %.pre352, %.loopexit344.loopexit ], [ %i.ca, %bb.ab ], [ %i.ca, %bb.aa ] ; 3 uses
  %i.cn = and i32 %i.cm, 268435456
  %.not240 = icmp eq i32 %i.cn, 0
  br i1 %.not240, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit344
  %i.co = and i32 %i.cm, 4
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 1648), align 8, !range !28
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond3 = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %or.cond3, label %bb.al, label %bb.ag

bb.af:                                            ; preds = %.loopexit344
  %.old = load i8, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 1648), align 8, !tbaa !88, !range !28, !noundef !29
  %.old2 = trunc nuw i8 %.old to i1
  br i1 %.old2, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cs = and i32 %i.cm, 2
  %.not241 = icmp eq i32 %i.cs, 0
  br i1 %.not241, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_host_server, i64 192), align 8, !tbaa !146
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %pmix_obj_new_tma.exit284, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cv = call ptr @PMIx_Byte_object_create(i64 noundef 1) #18 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !151 ; 4 uses
  %.not242 = icmp eq i64 %i.cx, 0
  br i1 %.not242, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = call noalias ptr @malloc(i64 noundef %i.cx) #19 ; 2 uses
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !150
  %i.cz = load ptr, ptr %3, align 8, !tbaa !150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %i.cz, i64 %i.cx, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cx, ptr %i.da, align 8, !tbaa !151
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_host_server, i64 192), align 8, !tbaa !146
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !134
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 560
  %i.df = load i64, ptr %i.de, align 8, !tbaa !133
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !135
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !136
  %i.dk = call i32 %i.db(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4), ptr noundef %i.dd, i64 noundef %i.df, ptr noundef %i.dh, i64 noundef %i.dj, ptr noundef %i.cv, ptr noundef nonnull @opcbfn, ptr noundef %i.cv) #18 ; 0 uses
  br label %bb.dt

bb.al:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 56), align 8, !tbaa !71
  %i.dm = call noalias noundef ptr @malloc(i64 noundef %i.dl) #19 ; 50 uses
  %i.dn = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !72
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 32), align 8, !tbaa !73
  %.not.i278 = icmp eq i32 %i.dn, %i.do
  br i1 %.not.i278, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_buffer_t_class) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not22.i279 = icmp eq ptr %i.dm, null
  br i1 %.not22.i279, label %pmix_obj_new_tma.exit284, label %bb.ao

bb.ao:                                            ; preds = %bb.an
end_hunk_0
begin_hunk_1_@pmix_iof_read_local_handler:bb.a
  br i1 %or.cond21, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !46
  %i.mv = icmp sgt i32 %i.mu, 1
  br i1 %i.mv, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.mw = load ptr, ptr @pmix_client_globals, align 8, !tbaa !97
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 120
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !98
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 480
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !102
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !104
  %i.nc = call ptr @PMIx_Data_type_string(i16 noundef zeroext 27) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.mq, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 2128, ptr noundef %i.nb, ptr noundef %i.nc) #18
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %i.nd = load i8, ptr %i.em, align 8, !tbaa !106 ; 2 uses
  %i.ne = icmp eq i8 %i.nd, 0
  %i.nf = load ptr, ptr @pmix_client_globals, align 8, !tbaa !97
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 120
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !98 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 472
  %i.nj = load i8, ptr %i.ni, align 8, !tbaa !107 ; 2 uses
  br i1 %i.ne, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i8 %i.nj, ptr %i.em, align 8, !tbaa !106
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.nk = icmp eq i8 %i.nd, %i.nj
  br i1 %i.nk, label %bb.de, label %.thread337

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 480
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !102
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !108
  %i.np = call i32 %i.no(ptr noundef nonnull %i.dm, ptr noundef nonnull %3, i32 noundef 1, i16 noundef zeroext 27) #18 ; 2 uses
  switch i32 %i.np, label %.thread337 [
    i32 0, label %bb.dk
    i32 -2, label %bb.df
  ]

.thread337:                                       ; preds = %bb.dd, %bb.de
  %.6339 = phi i32 [ %i.np, %bb.de ], [ -22, %bb.dd ]
  %i.nq = call ptr @PMIx_Error_string(i32 noundef %.6339) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.nq, ptr noundef nonnull @.str.2, i32 noundef 2130) #18
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.thread337
  %i.nr = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dm) #18
  %i.ns = icmp eq i32 %i.nr, 35
  br i1 %i.ns, label %bb.dg, label %pmix_obj_update.exit272

bb.dg:                                            ; preds = %bb.df
  %i.nt = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.nt, align 4, !tbaa !72
  call void @perror(ptr noundef nonnull @.str.65) #21
  call void @abort() #22
  unreachable

pmix_obj_update.exit272:                          ; preds = %bb.df
  %i.nu = load i32, ptr %i.dr, align 8, !tbaa !75
  %i.nv = add nsw i32 %i.nu, -1                   ; 2 uses
  store i32 %i.nv, ptr %i.dr, align 8, !tbaa !75
  %i.nw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dm) #18 ; 0 uses
  %i.nx = icmp eq i32 %i.nv, 0
  br i1 %i.nx, label %bb.dh, label %pmix_obj_new_tma.exit284

bb.dh:                                            ; preds = %pmix_obj_update.exit272
  %i.ny = load ptr, ptr %i.dq, align 8, !tbaa !74
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !95 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !77 ; 2 uses
  %.not6.i311 = icmp eq ptr %i.ob, null
  br i1 %.not6.i311, label %pmix_obj_run_destructors.exit315, label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %bb.dh, %.lr.ph.i312
  %i.oc = phi ptr [ %i.oe, %.lr.ph.i312 ], [ %i.ob, %bb.dh ]
  %.07.i313 = phi ptr [ %i.od, %.lr.ph.i312 ], [ %i.oa, %bb.dh ]
  call void %i.oc(ptr noundef nonnull %i.dm) #18, !inline_history !2
  %i.od = getelementptr inbounds nuw i8, ptr %.07.i313, i64 8 ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !77 ; 2 uses
  %.not.i314 = icmp eq ptr %i.oe, null
  br i1 %.not.i314, label %pmix_obj_run_destructors.exit315, label %.lr.ph.i312, !llvm.loop !3

pmix_obj_run_destructors.exit315:                 ; preds = %.lr.ph.i312, %bb.dh
  %i.of = load ptr, ptr %i.dt, align 8, !tbaa !96 ; 2 uses
  %.not254 = icmp eq ptr %i.of, null
  br i1 %.not254, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %pmix_obj_run_destructors.exit315
  call void %i.of(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dm) #18, !inline_history !4
  br label %pmix_obj_new_tma.exit284

bb.dj:                                            ; preds = %pmix_obj_run_destructors.exit315
  call void @free(ptr noundef nonnull %i.dm) #18
  br label %pmix_obj_new_tma.exit284

bb.dk:                                            ; preds = %bb.de
  %i.og = load ptr, ptr @pmix_client_globals, align 8, !tbaa !97 ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 160
  %i.oi = load i8, ptr %i.oh, align 8, !tbaa !109, !range !28, !noundef !29
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ok = call fastcc ptr @pmix_obj_new_tma(ptr noundef nonnull @pmix_ptl_sr_t_class) ; 6 uses
  %i.ol = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.og) #18
  %i.om = icmp eq i32 %i.ol, 35
  br i1 %i.om, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.on = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.on, align 4, !tbaa !72
  call void @perror(ptr noundef nonnull @.str.65) #21
  call void @abort() #22
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 48 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !75
  %i.oq = add nsw i32 %i.op, 1
  store i32 %i.oq, ptr %i.oo, align 8, !tbaa !75
  %i.or = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.og) #18 ; 0 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 256
  store ptr %i.og, ptr %i.os, align 8, !tbaa !111
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ok, i64 272
  store ptr %i.dm, ptr %i.ot, align 8, !tbaa !112
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ok, i64 280
  store ptr @iof_stdin_cbfunc, ptr %i.ou, align 8, !tbaa !113
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ok, i64 288
  store ptr %2, ptr %i.ov, align 8, !tbaa !114
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ok, i64 128 ; 2 uses
  %i.ox = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 392), align 8, !tbaa !87
  %i.oy = call i32 @pmix_event_assign(ptr noundef nonnull %i.ow, ptr noundef %i.ox, i32 noundef -1, i16 noundef signext 4, ptr noundef nonnull @pmix_ptl_base_send_recv, ptr noundef %i.ok) #18 ; 0 uses
  fence release
  call void @event_active(ptr noundef nonnull %i.ow, i32 noundef 4, i16 noundef signext 1) #18
  br label %bb.dt

bb.do:                                            ; preds = %bb.dk
  %i.oz = call ptr @PMIx_Error_string(i32 noundef -25) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.oz, ptr noundef nonnull @.str.2, i32 noundef 2138) #18
  %i.pa = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dm) #18
  %i.pb = icmp eq i32 %i.pa, 35
  br i1 %i.pb, label %bb.dp, label %pmix_obj_update.exit

bb.dp:                                            ; preds = %bb.do
  %i.pc = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.pc, align 4, !tbaa !72
  call void @perror(ptr noundef nonnull @.str.65) #21
  call void @abort() #22
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.do
  %i.pd = load i32, ptr %i.dr, align 8, !tbaa !75
  %i.pe = add nsw i32 %i.pd, -1                   ; 2 uses
  store i32 %i.pe, ptr %i.dr, align 8, !tbaa !75
  %i.pf = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dm) #18 ; 0 uses
  %i.pg = icmp eq i32 %i.pe, 0
  br i1 %i.pg, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %pmix_obj_update.exit
  %i.ph = load ptr, ptr %i.dq, align 8, !tbaa !74
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 48
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !95 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !77 ; 2 uses
  %.not6.i317 = icmp eq ptr %i.pk, null
  br i1 %.not6.i317, label %pmix_obj_run_destructors.exit321, label %.lr.ph.i318

.lr.ph.i318:                                      ; preds = %bb.dq, %.lr.ph.i318
  %i.pl = phi ptr [ %i.pn, %.lr.ph.i318 ], [ %i.pk, %bb.dq ]
  %.07.i319 = phi ptr [ %i.pm, %.lr.ph.i318 ], [ %i.pj, %bb.dq ]
  call void %i.pl(ptr noundef nonnull %i.dm) #18, !inline_history !2
  %i.pm = getelementptr inbounds nuw i8, ptr %.07.i319, i64 8 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !77 ; 2 uses
  %.not.i320 = icmp eq ptr %i.pn, null
  br i1 %.not.i320, label %pmix_obj_run_destructors.exit321, label %.lr.ph.i318, !llvm.loop !3

pmix_obj_run_destructors.exit321:                 ; preds = %.lr.ph.i318, %bb.dq
  %i.po = load ptr, ptr %i.dt, align 8, !tbaa !96 ; 2 uses
  %.not252 = icmp eq ptr %i.po, null
  br i1 %.not252, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %pmix_obj_run_destructors.exit321
  call void %i.po(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dm) #18, !inline_history !4
  br label %bb.dt

bb.ds:                                            ; preds = %pmix_obj_run_destructors.exit321
  call void @free(ptr noundef nonnull %i.dm) #18
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dn, %pmix_obj_update.exit, %bb.ds, %bb.dr, %bb.ak, %bb.ac
  %5 = icmp sgt i32 %.0212, 0
  br i1 %5, label %.thread343, label %pmix_obj_new_tma.exit284

.thread343:                                       ; preds = %bb.q, %bb.dt
  store i8 1, ptr %i.l, align 4, !tbaa !139
  fence release
  %i.pp = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.pq = load i8, ptr %i.pp, align 8, !tbaa !138, !range !28, !noundef !29
  %i.pr = trunc nuw i8 %i.pq to i1
  %i.ps = getelementptr inbounds nuw i8, ptr %2, i64 248
  %spec.select270 = select i1 %i.pr, ptr %i.ps, ptr null
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.pu = call i32 @event_add(ptr noundef nonnull %i.pt, ptr noundef %spec.select270) #18
  %.not265 = icmp eq i32 %i.pu, 0
  br i1 %.not265, label %pmix_obj_new_tma.exit284, label %bb.du

bb.du:                                            ; preds = %.thread343
  %i.pv = call ptr @PMIx_Error_string(i32 noundef -27) #18
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %i.pv, ptr noundef nonnull @.str.2, i32 noundef 2144) #18
  br label %pmix_obj_new_tma.exit284

pmix_obj_new_tma.exit284:                         ; preds = %bb.an, %bb.dt, %bb.du, %.thread343, %pmix_obj_update.exit272, %bb.dj, %bb.di, %pmix_obj_update.exit273.a, %bb.cx, %bb.cw, %pmix_obj_update.exit274.a, %bb.ck, %bb.cj, %pmix_obj_update.exit275.a, %bb.by, %bb.bx, %pmix_obj_update.exit276.a, %bb.bl, %bb.bk, %pmix_obj_update.exit277.a, %bb.az, %bb.ay, %bb.ah, %bb.r, %bb.t, %bb.v, %pmix_obj_new_tma.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @pmix_iof_stdin_check(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @isatty(i32 noundef %0) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @getpgrp() #18
  %i.c = tail call i32 @tcgetpgrp(i32 noundef %0) #18
  %.not2 = icmp eq i32 %i.b, %i.c
  br i1 %.not2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare i32 @event_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @myopcb(i32 noundef %0, ptr noundef initializes((472, 476)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 472
  store i32 %0, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #18 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 464
  store volatile i8 0, ptr %i.d, align 8, !tbaa !143
  fence release
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.f = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.e) #18 ; 0 uses
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.b) #18 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stdincbfunc(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.d = load i64, ptr %i.c, align 8, !tbaa !219
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !220
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !221
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !142
  tail call void %i.l(i32 noundef -49, ptr noundef %i.n) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @free(ptr noundef nonnull %3) #18
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  store i32 1, ptr %i.a, align 4, !tbaa !72
  %i.o = load i32, ptr @pmix_bfrops_base_output, align 4, !tbaa !72 ; 3 uses
  %or.cond = icmp ult i32 %i.o, 64
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 480
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !104
  %i.z = tail call ptr @PMIx_Data_type_string(i16 noundef zeroext 20) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.o, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.2, i32 noundef 530, ptr noundef %i.y, ptr noundef %i.z) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !98 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 472
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !107
  %i.ag = icmp eq i8 %i.ab, %i.af
  br i1 %i.ag, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 480
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.al = call i32 %i.ak(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i16 noundef zeroext 20) #18 ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %.026 = phi i32 [ %i.al, %bb.j ], [ -20, %bb.i ]
  store i32 %.026, ptr %i.b, align 4, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !141 ; 2 uses
  %.not22 = icmp eq ptr %i.an, null
  br i1 %.not22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !72
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !142
  call void %i.an(i32 noundef %i.ao, ptr noundef %i.aq) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @free(ptr noundef nonnull %3) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define void @pmix_iof_check_flags(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @PMIx_Check_key(ptr noundef %0, ptr noundef nonnull @.str.12) #18
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @PMIx_Check_key(ptr noundef %0, ptr noundef nonnull @.str.13) #18
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call i32 @PMIx_Info_true(ptr noundef %0) #18
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 1, !tbaa !152
  store i8 1, ptr %1, align 8, !tbaa !153
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @PMIx_Check_key(ptr noundef %0, ptr noundef nonnull @.str.14) #18
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @PMIx_Info_true(ptr noundef %0) #18
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = zext i1 %i.i to i8
end_hunk_1
