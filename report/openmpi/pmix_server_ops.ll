Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_server_ops?download=true
inline.NumInlined: 575
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@pmix_server_connect:bb.a
bb.ao:                                            ; preds = %bb.ak
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 1664
  store ptr %2, ptr %i.ff, align 8, !tbaa !186
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit
  %.0 = phi ptr [ %i.fc, %bb.ao ], [ %i.ez, %.loopexit ] ; 32 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0, i64 1360 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !138 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.df, ptr %i.fg, align 8, !tbaa !138
  %i.fj = getelementptr inbounds nuw i8, ptr %.0, i64 1368
  store i64 %i.de, ptr %i.fj, align 8, !tbaa !139
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fk = phi ptr [ %i.df, %bb.aq ], [ %i.fh, %bb.ap ]
  %.0113 = phi ptr [ null, %bb.aq ], [ %i.df, %bb.ap ] ; 2 uses
  %.0112 = phi i64 [ 0, %bb.aq ], [ %i.de, %bb.ap ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.0, i64 1200
  %i.fm = getelementptr inbounds nuw i8, ptr %.0, i64 1328 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !109 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !109
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 120
  store volatile ptr %0, ptr %i.fp, align 8, !tbaa !106
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.fl, ptr %i.fq, align 8, !tbaa !106
  store ptr %0, ptr %i.fm, align 8, !tbaa !109
  %i.fr = getelementptr inbounds nuw i8, ptr %.0, i64 1344 ; 5 uses
  %i.fs = load volatile i64, ptr %i.fr, align 8, !tbaa !110
  %i.ft = add i64 %i.fs, 1
  store volatile i64 %i.ft, ptr %i.fr, align 8, !tbaa !110
  %i.fu = getelementptr inbounds nuw i8, ptr %.0, i64 1072
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !145, !range !118, !noundef !141
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.as, label %bb.bf

bb.as:                                            ; preds = %bb.ar
  %i.fx = load volatile i64, ptr %i.fr, align 8, !tbaa !110
  %i.fy = getelementptr inbounds nuw i8, ptr %.0, i64 1352
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !146
  %i.ga = zext i32 %i.fz to i64
  %i.gb = icmp eq i64 %i.fx, %i.ga
  br i1 %i.gb, label %bb.at, label %bb.bf

bb.at:                                            ; preds = %bb.as
  %i.gc = getelementptr inbounds nuw i8, ptr %.0, i64 274
  %i.gd = load i8, ptr %i.gc, align 2, !tbaa !147, !range !118, !noundef !141
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gf = getelementptr inbounds nuw i8, ptr %.0, i64 273
  store i8 0, ptr %i.gf, align 1, !tbaa !149
  call void %2(i32 noundef 0, ptr noundef nonnull %.0) #18
  store i32 0, ptr %i.b, align 4, !tbaa !35
  br label %bb.bg

bb.av:                                            ; preds = %bb.at
  %i.gg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_host_server, i64 72), align 8, !tbaa !305 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.gi = call i32 @pthread_mutex_lock(ptr noundef nonnull %.0) #18
  %i.gj = icmp eq i32 %i.gi, 35
  br i1 %i.gj, label %bb.ax, label %pmix_obj_update.exit150

bb.ax:                                            ; preds = %bb.aw
  %i.gk = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.gk, align 4, !tbaa !35
  call void @perror(ptr noundef nonnull @.str.81) #21
  call void @abort() #22
  unreachable

pmix_obj_update.exit150:                          ; preds = %bb.aw
  %i.gl = getelementptr inbounds nuw i8, ptr %.0, i64 48 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !38
  %i.gn = add nsw i32 %i.gm, -1                   ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !38
  %i.go = call i32 @pthread_mutex_unlock(ptr noundef nonnull %.0) #18 ; 0 uses
  %i.gp = icmp eq i32 %i.gn, 0
  br i1 %i.gp, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %pmix_obj_update.exit150
  %i.gq = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !37
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !78 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !40 ; 2 uses
  %.not6.i = icmp eq ptr %i.gu, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ay, %.lr.ph.i
  %i.gv = phi ptr [ %i.gx, %.lr.ph.i ], [ %i.gu, %bb.ay ]
  %.07.i = phi ptr [ %i.gw, %.lr.ph.i ], [ %i.gt, %bb.ay ]
  call void %i.gv(ptr noundef nonnull %.0) #18, !inline_history !2
  %i.gw = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp eq ptr %i.gx, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.ay
  %i.gy = getelementptr inbounds nuw i8, ptr %.0, i64 96
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !79 ; 2 uses
  %.not142 = icmp eq ptr %i.gz, null
  br i1 %.not142, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %pmix_obj_run_destructors.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %.0, i64 56
  call void %i.gz(ptr noundef nonnull %i.ha, ptr noundef nonnull %.0) #18, !inline_history !4
  br label %bb.bb

bb.ba:                                            ; preds = %pmix_obj_run_destructors.exit
  call void @free(ptr noundef nonnull %.0) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %pmix_obj_update.exit150
  store i32 -47, ptr %i.b, align 4, !tbaa !35
  br label %bb.bj

bb.bc:                                            ; preds = %bb.av
  %i.hb = getelementptr inbounds nuw i8, ptr %.0, i64 273 ; 3 uses
  store i8 1, ptr %i.hb, align 1, !tbaa !149
  %i.hc = getelementptr inbounds nuw i8, ptr %.0, i64 560
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !150
  %i.he = getelementptr inbounds nuw i8, ptr %.0, i64 568
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !151
  %i.hg = getelementptr inbounds nuw i8, ptr %.0, i64 1368
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !139
  %i.hi = call i32 %i.gg(ptr noundef %i.hd, i64 noundef %i.hf, ptr noundef nonnull %i.fk, i64 noundef %i.hh, ptr noundef %2, ptr noundef nonnull %.0) #18 ; 3 uses
  store i32 %i.hi, ptr %i.b, align 4, !tbaa !35
  switch i32 %i.hi, label %bb.bd [
    i32 -157, label %bb.be
    i32 0, label %bb.bg
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.hj = load ptr, ptr %i.fq, align 8, !tbaa !106 ; 2 uses
  %i.hk = load ptr, ptr %i.fo, align 8, !tbaa !109 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 120
  store volatile ptr %i.hj, ptr %i.hl, align 8, !tbaa !106
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 128
  store volatile ptr %i.hk, ptr %i.hm, align 8, !tbaa !109
  %i.hn = load volatile i64, ptr %i.fr, align 8, !tbaa !110
  %i.ho = add i64 %i.hn, -1
  store volatile i64 %i.ho, ptr %i.fr, align 8, !tbaa !110
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr null, ptr %i.hp, align 8, !tbaa !148
  store i8 0, ptr %i.hb, align 1, !tbaa !149
  call void %2(i32 noundef %i.hi, ptr noundef nonnull %.0) #18
  %.pre = load i32, ptr %i.b, align 4, !tbaa !35
  %i.hq = icmp eq i32 %.pre, 0
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  store i8 0, ptr %i.hb, align 1, !tbaa !149
  call void %2(i32 noundef 0, ptr noundef nonnull %.0) #18
  store i32 0, ptr %i.b, align 4, !tbaa !35
  br label %bb.bg

bb.bf:                                            ; preds = %bb.as, %bb.ar
  store i32 0, ptr %i.b, align 4, !tbaa !35
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %bb.au, %bb.bd, %bb.be, %bb.bf
  %i.hr = phi i1 [ true, %bb.bc ], [ true, %bb.au ], [ %i.hq, %bb.bd ], [ true, %bb.be ], [ true, %bb.bf ]
  %i.hs = icmp ne i64 %.sroa.0.0, 0
  %or.cond16 = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %or.cond16, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.ht = call i32 @pthread_mutex_lock(ptr noundef nonnull %.0) #18
  %i.hu = icmp eq i32 %i.ht, 35
  br i1 %i.hu, label %bb.bi, label %pmix_obj_update.exit

bb.bi:                                            ; preds = %bb.bh
  %i.hv = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.hv, align 4, !tbaa !35
  call void @perror(ptr noundef nonnull @.str.81) #21
  call void @abort() #22
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.bh
  %i.hw = getelementptr inbounds nuw i8, ptr %.0, i64 48 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !38
  %i.hy = add nsw i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 8, !tbaa !38
  %i.hz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %.0) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ia = getelementptr inbounds nuw i8, ptr %.0, i64 144 ; 2 uses
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 392), align 8, !tbaa !142
  %i.ic = call i32 @pmix_event_assign(ptr noundef nonnull %i.ia, ptr noundef %i.ib, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @connect_timeout, ptr noundef nonnull %.0) #18 ; 0 uses
  %sext = shl nuw i64 %.sroa.0.0, 32
  %i.id = ashr exact i64 %sext, 32                ; 2 uses
  store i64 %i.id, ptr %3, align 8, !tbaa !143
  %i.ie = sub nsw i64 %.sroa.0.0, %i.id
  %4 = sitofp i64 %i.ie to double
  %5 = fmul nnan double %4, 1.000000e+06
  %6 = fptosi double %5 to i64
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %6, ptr %i.if, align 8, !tbaa !144
  fence release
  %i.ig = call i32 @event_add(ptr noundef nonnull %i.ia, ptr noundef nonnull %3) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ih = getelementptr inbounds nuw i8, ptr %.0, i64 272
  store i8 1, ptr %i.ih, align 8, !tbaa !140
  br label %bb.bj

.thread179:                                       ; preds = %bb.aa, %bb.r, %bb.s
  %i.ii = load i64, ptr %i.c, align 8, !tbaa !131
  call void @PMIx_Proc_free(ptr noundef nonnull %i.ay, i64 noundef %i.ii) #18
  br label %.thread174

.thread184:                                       ; preds = %bb.an, %bb.ag, %bb.ah
  %i.ij = load i64, ptr %i.c, align 8, !tbaa !131
  call void @PMIx_Proc_free(ptr noundef nonnull %i.ay, i64 noundef %i.ij) #18
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bb, %bb.bg, %pmix_obj_update.exit
  %i.ik = load i64, ptr %i.c, align 8, !tbaa !131
  call void @PMIx_Proc_free(ptr noundef nonnull %i.ay, i64 noundef %i.ik) #18
  %.not149 = icmp eq ptr %.0113, null
  br i1 %.not149, label %.thread174, label %bb.bk

bb.bk:                                            ; preds = %.thread184, %bb.bj
  %.1.ph189 = phi i64 [ %i.de, %.thread184 ], [ %.0112, %bb.bj ]
  %.1114.ph188 = phi ptr [ %i.df, %.thread184 ], [ %.0113, %bb.bj ]
  call void @PMIx_Info_free(ptr noundef nonnull %.1114.ph188, i64 noundef %.1.ph189) #18
  br label %.thread174

.thread174:                                       ; preds = %bb.m, %bb.k, %bb.h, %bb.i, %.thread179, %bb.bj, %bb.bk, %bb.y, %bb.x
  %.0116 = load i32, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0116
}

; Function Attrs: nounwind uwtable
define internal void @connect_timeout(i32 %0, i16 signext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_server_globals, i64 2668), align 4, !tbaa !187 ; 3 uses
  %or.cond = icmp ult i32 %i.a, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.a, ptr noundef nonnull @.str.95) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1664
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.h(i32 noundef -24, ptr noundef nonnull %2) #18
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 272
  store i8 0, ptr %i.i, align 8, !tbaa !140
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %2) #18
  %i.k = icmp eq i32 %i.j, 35
  br i1 %i.k, label %bb.g, label %pmix_obj_update.exit

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__errno_location() #20
  store i32 35, ptr %i.l, align 4, !tbaa !35
  tail call void @perror(ptr noundef nonnull @.str.81) #21
  tail call void @abort() #22
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !38
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %2) #18 ; 0 uses
  %i.q = icmp eq i32 %i.o, 0
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %pmix_obj_update.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40   ; 2 uses
  %.not6.i = icmp eq ptr %i.v, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.w = phi ptr [ %i.y, %.lr.ph.i ], [ %i.v, %bb.h ]
  %.07.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.u, %bb.h ]
  tail call void %i.w(ptr noundef nonnull %2) #18, !inline_history !2
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79  ; 2 uses
  %.not14 = icmp eq ptr %i.aa, null
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void %i.aa(ptr noundef nonnull %i.ab, ptr noundef nonnull %2) #18, !inline_history !4
  br label %bb.k

bb.j:                                             ; preds = %pmix_obj_run_destructors.exit
  tail call void @free(ptr noundef nonnull %2) #18
  br label %bb.k

bb.k:                                             ; preds = %pmix_obj_update.exit, %bb.j, %bb.i, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_server_register_events(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_server_globals, i64 2700), align 4, !tbaa !188 ; 3 uses
  %or.cond = icmp ult i32 %i.d, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !88
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.d, ptr noundef nonnull @.str.26, ptr noundef %i.m, i32 noundef %i.o) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !35
  %i.p = load i32, ptr @pmix_bfrops_base_output, align 4, !tbaa !35 ; 3 uses
  %or.cond3 = icmp ult i32 %i.p, 64
  br i1 %or.cond3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 480
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = tail call ptr @PMIx_Data_type_string(i16 noundef zeroext 4) #18
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.p, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2193, ptr noundef %i.z, ptr noundef %i.aa) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 472
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !76
  %i.ah = icmp eq i8 %i.ac, %i.ag
  br i1 %i.ah, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !77
  %i.am = call i32 %i.al(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i16 noundef zeroext 4) #18 ; 3 uses
  switch i32 %i.am, label %.thread [
end_hunk_0
