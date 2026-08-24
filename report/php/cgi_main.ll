Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/cgi_main?download=true
inline.NumInlined: 41
inline.NumDeleted: 9
begin_hunk_0_@main:bb.a

bb.fb:                                            ; preds = %.preheader
  %i.lk = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 172), align 4, !tbaa !126
  %i.ll = or i32 %i.lk, 3
  store i32 %i.ll, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 172), align 4, !tbaa !126
  br label %.preheader.backedge

bb.fc:                                            ; preds = %.preheader
  %.not338 = icmp eq ptr %.1256, null
  br i1 %.not338, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @_efree(ptr noundef nonnull %.1256) #27
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.lm = load ptr, ptr @php_optarg, align 8, !tbaa !41
  %i.ln = call noalias ptr @_estrdup(ptr noundef %i.lm) #27
  br label %.preheader.backedge

bb.ff:                                            ; preds = %.preheader
  %.not336 = icmp eq ptr %.1256, null
  br i1 %.not336, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_efree(ptr noundef nonnull %.1256) #27
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.lo = call i32 @php_request_startup() #27
  %i.lp = icmp eq i32 %i.lo, -1
  br i1 %i.lp, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store ptr null, ptr @sapi_globals, align 8, !tbaa !14
  call void @php_module_shutdown() #27
  call void @free(ptr noundef %.0248.lcssa546) #27
  br label %bb.im

bb.fj:                                            ; preds = %bb.fh
  %.not337 = icmp eq i32 %.1261, 0
  br i1 %.not337, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 249), align 1, !tbaa !108
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 73), align 1, !tbaa !138
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  call void @php_print_info(i32 noundef -1) #27
  call void @php_request_shutdown(ptr noundef null) #27
  call void @fcgi_shutdown() #27
  br label %bb.in

bb.fm:                                            ; preds = %.preheader
  br label %.preheader.backedge

bb.fn:                                            ; preds = %.preheader
  %.not335 = icmp eq ptr %.1256, null
  br i1 %.not335, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @_efree(ptr noundef nonnull %.1256) #27
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 249), align 1, !tbaa !108
  %i.lq = call i64 (ptr, ...) @php_printf(ptr noundef nonnull @.str.24) #27 ; 0 uses
  call fastcc void @print_modules()
  %i.lr = call i64 (ptr, ...) @php_printf(ptr noundef nonnull @.str.25) #27 ; 0 uses
  call fastcc void @print_extensions()
  %i.ls = call i64 (ptr, ...) @php_printf(ptr noundef nonnull @.str.26) #27 ; 0 uses
  call void @php_output_end_all() #27
  call void @fcgi_shutdown() #27
  br label %bb.in

bb.fq:                                            ; preds = %.preheader
  br label %.preheader.backedge

bb.fr:                                            ; preds = %.preheader
  %.not334 = icmp eq ptr %.1256, null
  br i1 %.not334, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @_efree(ptr noundef nonnull %.1256) #27
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.lt = call i32 @php_request_startup() #27
  %i.lu = icmp eq i32 %i.lt, -1
  br i1 %i.lu, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store ptr null, ptr @sapi_globals, align 8, !tbaa !14
  call void @php_module_shutdown() #27
  call void @free(ptr noundef %.0248.lcssa546) #27
  br label %bb.im

bb.fv:                                            ; preds = %bb.ft
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 249), align 1, !tbaa !108
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 73), align 1, !tbaa !138
  call void @php_print_version(ptr noundef nonnull @cgi_sapi_module) #27
  call void @php_request_shutdown(ptr noundef null) #27
  call void @fcgi_shutdown() #27
  br label %bb.in

bb.fw:                                            ; preds = %.preheader
  br label %.preheader.backedge

bb.fx:                                            ; preds = %.preheader
  %.not344 = icmp eq ptr %.1256, null
  br i1 %.not344, label %._crit_edge489, label %bb.fy

._crit_edge489:                                   ; preds = %bb.fx
  %.pre490 = load i32, ptr @php_optind, align 4, !tbaa !49
  br label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.lv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !109 ; 2 uses
  %.not346 = icmp eq ptr %i.lv, null
  br i1 %.not346, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @_efree(ptr noundef nonnull %i.lv) #27
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  store ptr %.1256, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !109
  %i.lw = load i32, ptr @php_optind, align 4, !tbaa !49 ; 3 uses
  %i.lx = sub i32 %.neg415, %i.lw
  store i32 %i.lx, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 140), align 4, !tbaa !139
  %i.ly = sext i32 %i.lw to i64
  %i.lz = getelementptr [8 x i8], ptr %1, i64 %i.ly
  %i.ma = getelementptr i8, ptr %i.lz, i64 -8     ; 2 uses
  store ptr %i.ma, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 144), align 8, !tbaa !140
  store ptr %.1256, ptr %i.ma, align 8, !tbaa !41
  br label %bb.gf

bb.gb:                                            ; preds = %._crit_edge489, %.thread387
  %i.mb = phi i32 [ %i.pf, %.thread387 ], [ %.pre490, %._crit_edge489 ] ; 3 uses
  %.1204406 = phi i32 [ %.3206, %.thread387 ], [ %.0203, %._crit_edge489 ] ; 2 uses
  %.1214404 = phi i32 [ %spec.select, %.thread387 ], [ %.0213, %._crit_edge489 ] ; 2 uses
  %.4238402 = phi i32 [ %.6240, %.thread387 ], [ %.3237, %._crit_edge489 ] ; 2 uses
  %.3263398 = phi i32 [ %.4264, %.thread387 ], [ %.1261, %._crit_edge489 ] ; 2 uses
  %.5270396 = phi i32 [ 4, %.thread387 ], [ %.3268, %._crit_edge489 ] ; 2 uses
  %i.mc = icmp sgt i32 %0, %i.mb
  br i1 %i.mc, label %bb.gc, label %bb.gf

bb.gc:                                            ; preds = %bb.gb
  %i.md = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !109 ; 2 uses
  %.not345 = icmp eq ptr %i.md, null
  br i1 %.not345, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @_efree(ptr noundef nonnull %i.md) #27
  %.pre491 = load i32, ptr @php_optind, align 4, !tbaa !49
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.me = phi i32 [ %.pre491, %bb.gd ], [ %i.mb, %bb.gc ]
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mf
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !41
  %i.mi = call noalias ptr @_estrdup(ptr noundef %i.mh) #27
  store ptr %i.mi, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !109
  %i.mj = load i32, ptr @php_optind, align 4, !tbaa !49 ; 3 uses
  %i.mk = sub nsw i32 %0, %i.mj
  store i32 %i.mk, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 140), align 4, !tbaa !139
  %i.ml = sext i32 %i.mj to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ml
  store ptr %i.mm, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 144), align 8, !tbaa !140
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gb, %bb.ge, %bb.ga
  %i.mn = phi i32 [ %i.mb, %bb.gb ], [ %i.mj, %bb.ge ], [ %i.lw, %bb.ga ] ; 2 uses
  %.1204405 = phi i32 [ %.1204406, %bb.gb ], [ %.1204406, %bb.ge ], [ %.0203, %bb.ga ]
  %.1214403 = phi i32 [ %.1214404, %bb.gb ], [ %.1214404, %bb.ge ], [ %.0213, %bb.ga ] ; 2 uses
  %.4238401 = phi i32 [ %.4238402, %bb.gb ], [ %.4238402, %bb.ge ], [ %.3237, %bb.ga ] ; 2 uses
  %.3258399 = phi ptr [ null, %bb.gb ], [ null, %bb.ge ], [ %.1256, %bb.ga ] ; 2 uses
  %.3263397 = phi i32 [ %.3263398, %bb.gb ], [ %.3263398, %bb.ge ], [ %.1261, %bb.ga ] ; 3 uses
  %.5270395 = phi i32 [ %.5270396, %bb.gb ], [ %.5270396, %bb.ge ], [ %.3268, %bb.ga ] ; 2 uses
  %.not347 = icmp eq i32 %.3263397, 0
  br i1 %.not347, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 249), align 1, !tbaa !108
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 73), align 1, !tbaa !138
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 16), align 8, !tbaa !112
  %.not348 = icmp eq ptr %i.mo, null
  %i.mp = icmp sgt i32 %0, %i.mn
  %or.cond567 = select i1 %.not348, i1 %i.mp, i1 false
  br i1 %or.cond567, label %bb.gi, label %bb.gn

bb.gi:                                            ; preds = %bb.gh
  %i.mq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 216), align 8, !tbaa !141
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !145
  %i.mt = sext i32 %i.mn to i64
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gj
  %indvars.iv = phi i64 [ %i.mt, %bb.gi ], [ %indvars.iv.next, %bb.gj ] ; 3 uses
  %.0272464 = phi i64 [ 0, %bb.gi ], [ %.1273, %bb.gj ]
  %i.mu = icmp slt i64 %indvars.iv, %i.di
  %i.mv = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !41
  %i.mx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mw) #28
  %i.my = select i1 %i.mu, i64 %i.ms, i64 0
  %.pn = add i64 %i.mx, %i.my
  %.1273 = add i64 %.pn, %.0272464                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.gk, label %bb.gj, !llvm.loop !147

bb.gk:                                            ; preds = %bb.gj
  %i.mz = add i64 %.1273, 2                       ; 3 uses
  %i.na = call noalias ptr @malloc(i64 noundef %i.mz) #29 ; 4 uses
  store i8 0, ptr %i.na, align 1, !tbaa !12
  %11 = load i32, ptr @php_optind, align 4, !tbaa !49 ; 2 uses
  %12 = icmp slt i32 %11, %0
  br i1 %12, label %.lr.ph466.preheader, label %._crit_edge

.lr.ph466.preheader:                              ; preds = %bb.gk
  %13 = sext i32 %11 to i64
  br label %.lr.ph466

.lr.ph466:                                        ; preds = %.lr.ph466.preheader, %bb.gm
  %indvars.iv484 = phi i64 [ %13, %.lr.ph466.preheader ], [ %indvars.iv.next485, %bb.gm ] ; 3 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv484
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !41
  %i.nd = call i64 @strlcat(ptr noundef nonnull %i.na, ptr noundef %i.nc, i64 noundef %i.mz) #27 ; 0 uses
  %i.ne = icmp slt i64 %indvars.iv484, %i.di
  br i1 %i.ne, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %.lr.ph466
  %i.nf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 216), align 8, !tbaa !141
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = call i64 @strlcat(ptr noundef nonnull %i.na, ptr noundef nonnull %i.ng, i64 noundef %i.mz) #27 ; 0 uses
  br label %bb.gm

bb.gm:                                            ; preds = %.lr.ph466, %bb.gl
  %indvars.iv.next485 = add nsw i64 %indvars.iv484, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next485 to i32
  %exitcond487.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond487.not, label %._crit_edge, label %.lr.ph466, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.gm, %bb.gk
  store ptr %i.na, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 16), align 8, !tbaa !112
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gh, %._crit_edge, %init_request_info.exit
  %.6271 = phi i32 [ %.2267, %init_request_info.exit ], [ %.5270395, %._crit_edge ], [ %.5270395, %bb.gh ] ; 4 uses
  %.4264 = phi i32 [ %.0260, %init_request_info.exit ], [ %.3263397, %._crit_edge ], [ %.3263397, %bb.gh ] ; 4 uses
  %.4259 = phi ptr [ %.0255, %init_request_info.exit ], [ %.3258399, %._crit_edge ], [ %.3258399, %bb.gh ] ; 3 uses
  %.5239 = phi i32 [ %.3237, %init_request_info.exit ], [ %.4238401, %._crit_edge ], [ %.4238401, %bb.gh ] ; 6 uses
  %.2215 = phi i32 [ %.0213, %init_request_info.exit ], [ %.1214403, %._crit_edge ], [ %.1214403, %bb.gh ] ; 6 uses
  %.3206 = phi i32 [ %.0203, %init_request_info.exit ], [ 1, %._crit_edge ], [ %.1204405, %bb.gh ] ; 5 uses
  %i.ni = call i32 @php_request_startup() #27
  %i.nj = icmp eq i32 %i.ni, -1
  br i1 %i.nj, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  br i1 %i.bg, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.nk = call i32 @fcgi_finish_request(ptr noundef %.0245, i32 noundef 1) #27 ; 0 uses
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  store ptr null, ptr @sapi_globals, align 8, !tbaa !14
  call void @php_module_shutdown() #27
  br label %bb.im

bb.gr:                                            ; preds = %bb.gn
  %.not339 = icmp eq i32 %.4264, 0
  br i1 %.not339, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 249), align 1, !tbaa !108
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 73), align 1, !tbaa !138
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.nl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8
  %i.nm = icmp ne ptr %i.nl, null
  %or.cond24 = select i1 %or.cond20, i1 true, i1 %i.nm
  br i1 %or.cond24, label %bb.gu, label %bb.hf

bb.gu:                                            ; preds = %bb.gt
  %i.nn = call i32 @php_fopen_primary_script(ptr noundef nonnull %3) #27
  %i.no = icmp eq i32 %i.nn, -1
  br i1 %i.no, label %bb.gv, label %bb.hg

bb.gv:                                            ; preds = %bb.gu
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  store ptr %9, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  %i.nq = call i32 @__sigsetjmp(ptr noundef nonnull %9, i32 noundef 0) #31
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %bb.gw, label %bb.gz

bb.gw:                                            ; preds = %bb.gv
  %i.ns = call ptr @__errno_location() #35
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !49
  %i.nu = icmp eq i32 %i.nt, 13
  br i1 %i.nu, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  store i32 403, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 216), align 8, !tbaa !99
  %i.nv = call i64 @php_output_write(ptr noundef nonnull @.str.27, i64 noundef 15) #27 ; 0 uses
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  store i32 404, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 216), align 8, !tbaa !99
  %i.nw = call i64 @php_output_write(ptr noundef nonnull @.str.28, i64 noundef 25) #27 ; 0 uses
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gv, %bb.gx, %bb.gy
  %i.nx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  %i.ny = icmp eq ptr %i.nx, %9
  call void @llvm.assume(i1 %i.ny)
  store ptr %i.np, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br i1 %i.bg, label %bb.hs, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.nz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !109 ; 2 uses
  %.not340 = icmp eq ptr %i.nz, null
  br i1 %.not340, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_efree(ptr noundef nonnull %i.nz) #27
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !109
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.oa = icmp ne i32 %.3206, 0
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 16), align 8 ; 2 uses
  %i.oc = icmp ne ptr %i.ob, null
  %or.cond26 = select i1 %i.oa, i1 %i.oc, i1 false
  br i1 %or.cond26, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  call void @free(ptr noundef nonnull %i.ob) #27
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 16), align 8, !tbaa !112
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  call void @php_request_shutdown(ptr noundef null) #27
  store ptr null, ptr @sapi_globals, align 8, !tbaa !14
  call void @php_module_shutdown() #27
  call void @sapi_shutdown() #27
  call void @free(ptr noundef %.0248.lcssa546) #27
  br label %bb.im

bb.hf:                                            ; preds = %bb.gt
  %i.od = load ptr, ptr @stdin, align 8, !tbaa !101
  call void @zend_stream_init_fp(ptr noundef nonnull %3, ptr noundef %i.od, ptr noundef nonnull @.str.29) #27
  store i8 1, ptr %i.df, align 1, !tbaa !149
  br label %bb.hg

bb.hg:                                            ; preds = %bb.gu, %bb.hf
  %i.oe = load i8, ptr getelementptr inbounds nuw (i8, ptr @php_cgi_globals, i64 66), align 2, !tbaa !151, !range !73, !noundef !117
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 152), align 8, !tbaa !152
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  switch i32 %.6271, label %.unreachabledefault358 [
    i32 1, label %bb.hj
    i32 4, label %bb.hk
    i32 5, label %bb.hn
    i32 2, label %bb.hp
  ]

bb.hj:                                            ; preds = %bb.hi
  %i.og = call zeroext i1 @php_execute_script(ptr noundef nonnull %3) #27 ; 0 uses
  br label %bb.hs

bb.hk:                                            ; preds = %bb.hi
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 490), align 2, !tbaa !153
  %i.oh = call i32 @php_lint_script(ptr noundef nonnull %3) #27
  %i.oi = icmp eq i32 %i.oh, 0
  %i.oj = load ptr, ptr @zend_printf, align 8, !tbaa !103 ; 2 uses
  %i.ok = load ptr, ptr %i.dg, align 8, !tbaa !154
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24 ; 2 uses
  br i1 %i.oi, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.om = call i64 (ptr, ...) %i.oj(ptr noundef nonnull @.str.30, ptr noundef nonnull %i.ol) #27 ; 0 uses
  br label %bb.hs

bb.hm:                                            ; preds = %bb.hk
  %i.on = call i64 (ptr, ...) %i.oj(ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ol) #27 ; 0 uses
  br label %bb.hs

bb.hn:                                            ; preds = %bb.hi
  %i.oo = call i32 @open_file_for_scanning(ptr noundef nonnull %3) #27
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.ho, label %bb.hs

bb.ho:                                            ; preds = %bb.hn
  call void @zend_strip() #27
  br label %bb.hs

bb.hp:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.oq = call i32 @open_file_for_scanning(ptr noundef nonnull %3) #27
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  call void @php_get_highlight_struct(ptr noundef nonnull %10) #27
  call void @zend_highlight(ptr noundef nonnull %10) #27
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.hs

.unreachabledefault358:                           ; preds = %bb.hi
  unreachable

bb.hs:                                            ; preds = %bb.hj, %bb.hr, %bb.hm, %bb.hl, %bb.ho, %bb.hn, %bb.gz
  %.3216 = phi i32 [ %.2215, %bb.gz ], [ %.2215, %bb.hr ], [ %.2215, %bb.hj ], [ %.2215, %bb.hl ], [ -1, %bb.hm ], [ %.2215, %bb.ho ], [ %.2215, %bb.hn ] ; 2 uses
  call void @zend_destroy_file_handle(ptr noundef nonnull %3) #27
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !109 ; 2 uses
  %.not341 = icmp eq ptr %i.os, null
  br i1 %.not341, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_efree(ptr noundef nonnull %i.os) #27
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 40), align 8, !tbaa !109
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  call void @php_request_shutdown(ptr noundef null) #27
  %i.ot = icmp eq i32 %.3216, 0
  %i.ou = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 448), align 8
  %spec.select = select i1 %i.ot, i32 %i.ou, i32 %.3216 ; 6 uses
  %i.ov = icmp ne i32 %.3206, 0
  %i.ow = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sapi_globals, i64 16), align 8 ; 2 uses
  %i.ox = icmp ne ptr %i.ow, null
  %or.cond28 = select i1 %i.ov, i1 %i.ox, i1 false
end_hunk_0
