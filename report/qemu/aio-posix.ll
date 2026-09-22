Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aio-posix?download=true
inline.NumInlined: 40
inline.NumDeleted: 28
begin_hunk_0_@aio_poll:bb.a
  %.not3.i.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not3.i.i.i.i, label %trace_poll_remove.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef nonnull %0, ptr noundef nonnull %.02941.i.i.i, i32 noundef %i.ci) #9
  br label %trace_poll_remove.exit.i.i.i

trace_poll_remove.exit.i.i.i:                     ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  store i64 0, ptr %i.cf, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.02941.i.i.i, i64 120 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %.not35.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not35.i.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %trace_poll_remove.exit.i.i.i
  %i.cp = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not36.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not36.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 120
  store ptr %i.co, ptr %i.cq, align 8
  %.pre.i.i.i = load ptr, ptr %i.ca, align 8
  %.pre43.i.i.i = load ptr, ptr %i.cn, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cr = phi ptr [ %.pre43.i.i.i, %bb.ap ], [ %i.co, %bb.ao ]
  %i.cs = phi ptr [ %.pre.i.i.i, %bb.ap ], [ null, %bb.ao ]
  store ptr %i.cs, ptr %i.cr, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %trace_poll_remove.exit.i.i.i
  %i.ct = load i8, ptr %i.ac, align 8, !range !11, !noundef !12
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %bb.ar
  %i.cv = getelementptr inbounds nuw i8, ptr %.02941.i.i.i, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not37.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not37.i.i.i, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = getelementptr inbounds nuw i8, ptr %.02941.i.i.i, i64 56 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cw(ptr noundef %i.cy) #9, !inline_history !24
  %i.cz = getelementptr inbounds nuw i8, ptr %.02941.i.i.i, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = load ptr, ptr %i.cx, align 8
  %i.dc = call zeroext i1 %i.da(ptr noundef %i.db) #9, !inline_history !24
  br i1 %i.dc, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.dd = getelementptr inbounds nuw i8, ptr %.02941.i.i.i, i64 136
  %i.de = getelementptr inbounds nuw i8, ptr %.02941.i.i.i, i64 80 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02941.i.i.i, i64 88 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 3 uses
  %.not.i38.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i38.i.i.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dh = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not18.i.i48.i.i = icmp eq ptr %i.dh, null
  br i1 %.not18.i.i48.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  store ptr %i.dg, ptr %i.di, align 8
  %.pre.i.i49.i.i = load ptr, ptr %i.de, align 8
  %.pre20.i.i50.i.i = load ptr, ptr %i.df, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dj = phi ptr [ %.pre20.i.i50.i.i, %bb.aw ], [ %i.dg, %bb.av ]
  %i.dk = phi ptr [ %.pre.i.i49.i.i, %bb.aw ], [ null, %bb.av ]
  store ptr %i.dk, ptr %i.dj, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  store i8 1, ptr %i.dd, align 8
  %i.dl = load ptr, ptr %2, align 8               ; 3 uses
  store ptr %i.dl, ptr %i.de, align 8
  %.not19.i.i51.i.i = icmp eq ptr %i.dl, null
  br i1 %.not19.i.i51.i.i, label %.thread99.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  store ptr %i.de, ptr %i.dm, align 8
  br label %.thread99.i.i

bb.ba:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aj, %bb.ai
  %.not.i46.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i46.i.i, label %remove_idle_poll_handlers.exit.i.i, label %bb.ai, !llvm.loop !25

.thread99.i.i:                                    ; preds = %bb.az, %bb.ay
  store ptr %.02941.i.i.i, ptr %2, align 8
  store ptr %2, ptr %i.df, align 8
  %.not.i46101.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i46101.i.i, label %.thread.i.i, label %.outer.i.i, !llvm.loop !25

remove_idle_poll_handlers.exit.i.i:               ; preds = %bb.ba
  br i1 %.042.i.ph.i.i, label %.thread.i.i, label %remove_idle_poll_handlers.exit.thread.i.i

remove_idle_poll_handlers.exit.thread.i.i:        ; preds = %remove_idle_poll_handlers.exit.i.i, %bb.ah, %.loopexit.i.i
  %.not40.i.i = icmp eq i64 %.7, -1
  br i1 %.not40.i.i, label %bb.bb, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread99.i.i, %remove_idle_poll_handlers.exit.thread.i.i, %remove_idle_poll_handlers.exit.i.i
  %.03760.i.i = phi i1 [ %.011.lcssa.i.i.i, %remove_idle_poll_handlers.exit.thread.i.i ], [ true, %remove_idle_poll_handlers.exit.i.i ], [ true, %.thread99.i.i ]
  %i.dn = phi i64 [ %.7, %remove_idle_poll_handlers.exit.thread.i.i ], [ 0, %remove_idle_poll_handlers.exit.i.i ], [ 0, %.thread99.i.i ] ; 2 uses
  %i.do = call i64 @llvm.smin.i64(i64 %i.dn, i64 %i.bq)
  %i.dp = sub i64 %i.dn, %i.do
  br label %bb.bb

bb.bb:                                            ; preds = %.thread.i.i, %remove_idle_poll_handlers.exit.thread.i.i
  %.8 = phi i64 [ -1, %remove_idle_poll_handlers.exit.thread.i.i ], [ %i.dp, %.thread.i.i ] ; 3 uses
  %.03761.i.i = phi i1 [ %.011.lcssa.i.i.i, %remove_idle_poll_handlers.exit.thread.i.i ], [ %.03760.i.i, %.thread.i.i ] ; 2 uses
  %i.dq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i53.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i53.i.i, label %trace_run_poll_handlers_end.exit.i.i, label %bb.bc, !prof !13

bb.bc:                                            ; preds = %bb.bb
  %i.dr = load i16, ptr @_TRACE_RUN_POLL_HANDLERS_END_DSTATE, align 2
  %.not2.i54.i.i = icmp eq i16 %i.dr, 0
  br i1 %.not2.i54.i.i, label %trace_run_poll_handlers_end.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ds = load i32, ptr @qemu_loglevel, align 4
  %i.dt = and i32 %i.ds, 32768
  %.not3.i55.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not3.i55.i.i, label %trace_run_poll_handlers_end.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.du = zext i1 %.03761.i.i to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, ptr noundef nonnull %0, i32 noundef %i.du, i64 noundef %.8) #9
  br label %trace_run_poll_handlers_end.exit.i.i

trace_run_poll_handlers_end.exit.i.i:             ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.dv = call ptr @get_ptr_rcu_reader() #9       ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %trace_run_poll_handlers_end.exit.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #11
  unreachable

bb.bg:                                            ; preds = %trace_run_poll_handlers_end.exit.i.i
  %i.dy = add i32 %i.dx, -1                       ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 4
  %.not8.i.i.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not8.i.i.i.i.i.i, label %bb.bh, label %run_poll_handlers.exit.i

bb.bh:                                            ; preds = %bb.bg
  store atomic i64 0, ptr %i.dv release, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !28
  fence seq_cst
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ea = load atomic i8, ptr %i.dz monotonic, align 8, !range !11, !noundef !12
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.bi, label %run_poll_handlers.exit.i, !prof !29

bb.bi:                                            ; preds = %bb.bh
  store atomic i8 0, ptr %i.dz monotonic, align 8
  call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #9
  br label %run_poll_handlers.exit.i

run_poll_handlers.exit.i:                         ; preds = %bb.bi, %bb.bh, %bb.bg
  br i1 %.03761.i.i, label %bb.bj, label %.thread92

.thread92:                                        ; preds = %bb.h, %bb.j, %bb.i, %run_poll_handlers.exit.i
  %.10.ph = phi i64 [ %i.q, %bb.h ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %.8, %run_poll_handlers.exit.i ] ; 2 uses
  %.not125 = icmp eq i64 %.10.ph, 0
  br i1 %.not125, label %.thread100, label %bb.bl

bb.bj:                                            ; preds = %run_poll_handlers.exit.i
  %.not124 = icmp eq i64 %.8, 0
  br i1 %.not124, label %.thread100, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 684, ptr noundef nonnull @__PRETTY_FUNCTION__.aio_poll) #11
  unreachable

bb.bl:                                            ; preds = %.thread92, %.thread
  %.0809098 = phi i64 [ %i.n, %.thread ], [ %.10.ph, %.thread92 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ed = load atomic i32, ptr %i.ec monotonic, align 8
  %i.ee = add i32 %i.ed, 2
  store atomic i32 %i.ee, ptr %i.ec monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !30
  fence seq_cst
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.eg = load atomic i8, ptr %i.ef monotonic, align 8, !range !11, !noundef !12
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.thread100.thread, label %.thread110

.thread100:                                       ; preds = %bb.bj, %.thread92, %.thread, %.thread121
  %.09196105 = phi i8 [ 0, %.thread121 ], [ 0, %.thread92 ], [ 0, %.thread ], [ 1, %bb.bj ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call zeroext i1 %i.el(ptr noundef %0) #9
  br i1 %i.em, label %.split, label %bb.bx

.thread100.thread:                                ; preds = %bb.bl
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call zeroext i1 %i.eq(ptr noundef nonnull %0) #9
  br i1 %i.er, label %.thread202.sink.split, label %.thread202

.thread110:                                       ; preds = %bb.bl
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.et = load i8, ptr %i.es, align 8, !range !11, !noundef !12
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %.split.thread, label %bb.bm

bb.bm:                                            ; preds = %.thread110
  store i8 0, ptr %i.es, align 8
  call void @qemu_lockcnt_inc(ptr noundef nonnull %i.j) #9
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.02327.i = load ptr, ptr %i.ev, align 8        ; 2 uses
  %.not28.i = icmp eq ptr %.02327.i, null
  br i1 %.not28.i, label %poll_set_started.exit.thread117, label %.lr.ph.split.i.outer

.lr.ph.split.i.outer:                             ; preds = %bb.bm, %.thread192
  %.02330.i.ph = phi ptr [ %.023.i194, %.thread192 ], [ %.02327.i, %bb.bm ]
  %.02229.i.ph = phi i1 [ true, %.thread192 ], [ false, %bb.bm ]
  br label %.lr.ph.split.i

poll_set_started.exit.thread117:                  ; preds = %bb.bm
  call void @qemu_lockcnt_dec(ptr noundef nonnull %i.j) #9
  br label %.thread202.sink.split

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.outer, %bb.bw
  %.02330.i = phi ptr [ %.023.i, %bb.bw ], [ %.02330.i.ph, %.lr.ph.split.i.outer ] ; 11 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02330.i, i64 104
  %i.ex = load ptr, ptr %i.ew, align 8
  %.not25.i = icmp eq ptr %i.ex, null
  br i1 %.not25.i, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %.lr.ph.split.i
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.02330.i, i64 48
  %.0.i64 = load ptr, ptr %.0.in.i, align 8       ; 2 uses
  %.not26.i = icmp eq ptr %.0.i64, null
  br i1 %.not26.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ey = getelementptr inbounds nuw i8, ptr %.02330.i, i64 56
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %.0.i64(ptr noundef %i.ez) #9, !inline_history !1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.fa = getelementptr inbounds nuw i8, ptr %.02330.i, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.02330.i, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = call zeroext i1 %i.fb(ptr noundef %i.fd) #9, !inline_history !1
  br i1 %i.fe, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.ff = getelementptr inbounds nuw i8, ptr %.02330.i, i64 80 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.02330.i, i64 88 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8            ; 3 uses
  %.not.i.i65 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i65, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fi = load ptr, ptr %i.ff, align 8            ; 2 uses
  %.not18.i.i = icmp eq ptr %i.fi, null
  br i1 %.not18.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  store ptr %i.fh, ptr %i.fj, align 8
  %.pre.i.i = load ptr, ptr %i.ff, align 8
  %.pre20.i.i = load ptr, ptr %i.fg, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.fk = phi ptr [ %.pre20.i.i, %bb.bs ], [ %i.fh, %bb.br ]
  %i.fl = phi ptr [ %.pre.i.i, %bb.bs ], [ null, %bb.br ]
  store ptr %i.fl, ptr %i.fk, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  %i.fm = getelementptr inbounds nuw i8, ptr %.02330.i, i64 136
  store i8 1, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %2, align 8               ; 3 uses
  store ptr %i.fn, ptr %i.ff, align 8
  %.not19.i.i = icmp eq ptr %i.fn, null
  br i1 %.not19.i.i, label %.thread192, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 88
  store ptr %i.ff, ptr %i.fo, align 8
  br label %.thread192

bb.bw:                                            ; preds = %bb.bp, %.lr.ph.split.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.02330.i, i64 112
  %.023.i = load ptr, ptr %i.fp, align 8          ; 2 uses
  %.not.i63 = icmp eq ptr %.023.i, null
  br i1 %.not.i63, label %poll_set_started.exit, label %.lr.ph.split.i, !llvm.loop !2

.thread192:                                       ; preds = %bb.bu, %bb.bv
  store ptr %.02330.i, ptr %2, align 8
  store ptr %2, ptr %i.fg, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.02330.i, i64 112
  %.023.i194 = load ptr, ptr %i.fq, align 8       ; 2 uses
  %.not.i63195 = icmp eq ptr %.023.i194, null
  br i1 %.not.i63195, label %poll_set_started.exit.thread, label %.lr.ph.split.i.outer, !llvm.loop !2

poll_set_started.exit.thread:                     ; preds = %.thread192
  call void @qemu_lockcnt_dec(ptr noundef nonnull %i.j) #9
  br label %.thread202.sink.split

poll_set_started.exit:                            ; preds = %bb.bw
  call void @qemu_lockcnt_dec(ptr noundef nonnull %i.j) #9
  br i1 %.02229.i.ph, label %.thread202.sink.split, label %.split.thread

.split.thread:                                    ; preds = %poll_set_started.exit, %.thread110
  br label %.thread202.sink.split

.split:                                           ; preds = %.thread100
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call i32 %i.fu(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 0) #9 ; 0 uses
  br label %bb.bx

.thread202.sink.split:                            ; preds = %poll_set_started.exit, %poll_set_started.exit.thread, %.thread100.thread, %poll_set_started.exit.thread117, %.split.thread
  %.sink = phi i64 [ %.0809098, %poll_set_started.exit.thread117 ], [ %.0809098, %.split.thread ], [ 0, %.thread100.thread ], [ 0, %poll_set_started.exit.thread ], [ 0, %poll_set_started.exit ]
  %.2120.ph = phi i8 [ 0, %poll_set_started.exit.thread117 ], [ 0, %.split.thread ], [ 0, %.thread100.thread ], [ 1, %poll_set_started.exit.thread ], [ 1, %poll_set_started.exit ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call i32 %i.fz(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %.sink) #9 ; 0 uses
  br label %.thread202

.thread202:                                       ; preds = %.thread202.sink.split, %.thread100.thread
  %.2120 = phi i8 [ 0, %.thread100.thread ], [ %.2120.ph, %.thread202.sink.split ]
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.gc = load atomic i32, ptr %i.gb monotonic, align 8
  %i.gd = add i32 %i.gc, -2
  store atomic i32 %i.gd, ptr %i.gb release, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %.split, %.thread100, %.thread202
  %.2119 = phi i8 [ %.09196105, %.split ], [ %.2120, %.thread202 ], [ %.09196105, %.thread100 ] ; 2 uses
  call void @aio_notify_accept(ptr noundef nonnull %0) #9
  %i.ge = load i64, ptr %i.k, align 8
  %.not59 = icmp eq i64 %i.ge, 0
  br i1 %.not59, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gf = call i64 @qemu_clock_get_ns(i32 noundef 0) #9 ; 2 uses
  %i.gg = sub i64 %i.gf, %.051
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.053 = phi i64 [ %i.gf, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  %.052 = phi i64 [ %i.gg, %bb.by ], [ 0, %bb.bx ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not60 = icmp eq ptr %i.gk, null
  br i1 %.not60, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gl = call zeroext i1 %i.gk(ptr noundef nonnull %0) #9
  %3 = zext i1 %i.gl to i8
  %4 = or i8 %.2119, %3
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.3 = phi i8 [ %6, %bb.ca ], [ %.2119, %bb.bz ]
  %i.gm = call i32 @aio_bh_poll(ptr noundef nonnull %0) #9
  %i.gn = call fastcc zeroext i1 @aio_dispatch_ready_handlers(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %.053)
  call fastcc void @aio_free_deleted_handlers(ptr noundef nonnull %0)
  %i.go = load i64, ptr %i.k, align 8
  %.not61 = icmp eq i64 %i.go, 0
  br i1 %.not61, label %update_handler_poll_times.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.037.i = load ptr, ptr %i.gp, align 8          ; 2 uses
  %.not38.i = icmp eq ptr %.037.i, null
  br i1 %.not38.i, label %update_handler_poll_times.exit, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.cc
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cj, %.lr.ph.i66
  %.040.i = phi ptr [ %.037.i, %.lr.ph.i66 ], [ %.0.i67, %bb.cj ] ; 3 uses
  %.03139.i = phi i64 [ -1, %.lr.ph.i66 ], [ %.1.i, %bb.cj ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.040.i, i64 128
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = icmp eq i64 %i.gs, %.053
  %i.gu = getelementptr inbounds nuw i8, ptr %.040.i, i64 144 ; 5 uses
  %i.gv = load i64, ptr %i.gu, align 8            ; 4 uses
  %.not35.i = icmp eq i64 %i.gv, 0                ; 2 uses
  br i1 %i.gt, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not35.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gw = load i64, ptr %i.gq, align 8            ; 2 uses
  %i.gx = ashr i64 %i.gv, %i.gw
  %i.gy = sub i64 %i.gv, %i.gx
  %i.gz = ashr i64 %.052, %i.gw
  %i.ha = add i64 %i.gy, %i.gz
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.hb = phi i64 [ %i.ha, %bb.cf ], [ %.052, %bb.ce ] ; 3 uses
  store i64 %i.hb, ptr %i.gu, align 8
  %i.hc = load i64, ptr %i.k, align 8
  %i.hd = icmp sgt i64 %i.hb, %i.hc
  %spec.store.select.i = select i1 %i.hd, i64 0, i64 %i.hb ; 2 uses
  store i64 %spec.store.select.i, ptr %i.gu, align 8
  %i.he = call i64 @llvm.smax.i64(i64 %.03139.i, i64 %spec.store.select.i)
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cd
  br i1 %.not35.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hf = add i64 %i.gv, %.052                    ; 3 uses
  store i64 %i.hf, ptr %i.gu, align 8
  %i.hg = load i64, ptr %i.k, align 8
  %i.hh = icmp sgt i64 %i.hf, %i.hg
  %spec.store.select36.i = select i1 %i.hh, i64 0, i64 %i.hf
  store i64 %spec.store.select36.i, ptr %i.gu, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.1.i = phi i64 [ %i.he, %bb.cg ], [ %.03139.i, %bb.ch ], [ %.03139.i, %bb.ci ] ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.040.i, i64 112
  %.0.i67 = load ptr, ptr %i.hi, align 8          ; 2 uses
  %.not.i68 = icmp eq ptr %.0.i67, null
  br i1 %.not.i68, label %._crit_edge.i69, label %bb.cd, !llvm.loop !26

._crit_edge.i69:                                  ; preds = %bb.cj
  %i.hj = icmp sgt i64 %.1.i, -1
  br i1 %i.hj, label %bb.ck, label %update_handler_poll_times.exit

bb.ck:                                            ; preds = %._crit_edge.i69
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.hl = load i64, ptr %i.hk, align 8            ; 5 uses
  %i.hm = icmp sgt i64 %.1.i, %i.hl
  br i1 %i.hm, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = mul i64 %i.ho, %i.hl
  %..i.i = call i64 @llvm.smax.i64(i64 range(i64 0, -9223372036854775808) %.1.i, i64 %i.hp)
  %i.hq = load i64, ptr %i.k, align 8
  %spec.store.select.i.i = call i64 @llvm.smin.i64(i64 %..i.i, i64 %i.hq) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.hk, align 8
  %i.hr = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i70 = icmp eq i32 %i.hr, 0
  br i1 %.not.i.i.i70, label %update_handler_poll_times.exit, label %bb.cm, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.hs = load i16, ptr @_TRACE_POLL_GROW_DSTATE, align 2
  %.not2.i.i.i71 = icmp eq i16 %i.hs, 0
  br i1 %.not2.i.i.i71, label %update_handler_poll_times.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ht = load i32, ptr @qemu_loglevel, align 4
  %i.hu = and i32 %i.ht, 32768
  %.not3.i.i.i72 = icmp eq i32 %i.hu, 0
  br i1 %.not3.i.i.i72, label %update_handler_poll_times.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, ptr noundef nonnull %0, i64 noundef range(i64 -9223372036854775808, 9223372036854775807) %i.hl, i64 noundef %spec.store.select.i.i) #9
  br label %update_handler_poll_times.exit

bb.cp:                                            ; preds = %bb.ck
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = sdiv i64 %i.hl, %i.hw                   ; 3 uses
  %i.hy = icmp slt i64 %.1.i, %i.hx
  br i1 %i.hy, label %bb.cq, label %update_handler_poll_times.exit

bb.cq:                                            ; preds = %bb.cp
  store i64 %i.hx, ptr %i.hk, align 8
  %i.hz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i30.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not.i30.i.i, label %update_handler_poll_times.exit, label %bb.cr, !prof !13

bb.cr:                                            ; preds = %bb.cq
  %i.ia = load i16, ptr @_TRACE_POLL_SHRINK_DSTATE, align 2
  %.not2.i31.i.i = icmp eq i16 %i.ia, 0
  br i1 %.not2.i31.i.i, label %update_handler_poll_times.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ib = load i32, ptr @qemu_loglevel, align 4
  %i.ic = and i32 %i.ib, 32768
  %.not3.i32.i.i = icmp eq i32 %i.ic, 0
  br i1 %.not3.i32.i.i, label %update_handler_poll_times.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, ptr noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %i.hl, i64 noundef range(i64 1, -9223372036854775808) %i.hx) #9
  br label %update_handler_poll_times.exit

update_handler_poll_times.exit:                   ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %._crit_edge.i69, %bb.cc, %bb.cb
  %7 = zext nneg i8 %.3 to i32
  %i.id = or i32 %i.gm, %7
  %i.ie = icmp ne i32 %i.id, 0
  %i.if = or i1 %i.gn, %i.ie
  call void @qemu_lockcnt_dec(ptr noundef nonnull %i.j) #9
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ih = call zeroext i1 @timerlistgroup_run_timers(ptr noundef nonnull %i.ig) #9
  %i.ii = or i1 %i.if, %i.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i1 %i.ii
}

declare ptr @iohandler_get_aio_context() local_unnamed_addr #4

declare ptr @qemu_get_aio_context() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #4

declare i64 @aio_compute_timeout(ptr noundef) local_unnamed_addr #4

declare void @aio_notify_accept(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @aio_context_setup(ptr noundef initializes((348, 368)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr @fdmon_poll_ops, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 -1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.c, align 8
  tail call void @fdmon_epoll_setup(ptr noundef %0) #9
  ret i1 true
}

declare void @fdmon_epoll_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aio_context_destroy(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  tail call void @qemu_lockcnt_lock(ptr noundef nonnull %i.a) #9
  tail call void @fdmon_epoll_disable(ptr noundef %0) #9
  tail call void @qemu_lockcnt_unlock(ptr noundef nonnull %i.a) #9
  tail call fastcc void @aio_free_deleted_handlers(ptr noundef %0)
  ret void
}

declare void @fdmon_epoll_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aio_context_set_poll_params(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  tail call void @qemu_lockcnt_inc(ptr noundef nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.021 = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not22 = icmp eq ptr %.021, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi ptr [ %.0, %.lr.ph ], [ %.021, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.023, i64 144
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.023, i64 64
  %.0 = load ptr, ptr %i.d, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @qemu_lockcnt_dec(ptr noundef nonnull %i.a) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %1, ptr %i.e, align 8
  %.not18 = icmp eq i64 %2, 0
  %i.f = select i1 %.not18, i64 2, i64 %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %i.f, ptr %i.g, align 8
  %.not19 = icmp eq i64 %3, 0
  %i.h = select i1 %.not19, i64 2, i64 %3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.h, ptr %i.i, align 8
  %.not20 = icmp eq i64 %4, 0
  %i.j = select i1 %.not20, i64 3, i64 %4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.l, align 8
  tail call void @aio_notify(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @aio_context_set_aio_params(ptr noundef initializes((328, 336)) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %1, ptr %i.a, align 8
  tail call void @aio_notify(ptr noundef %0) #9
  ret void
}

declare i32 @qemu_lockcnt_count(ptr noundef) local_unnamed_addr #4

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #4

declare zeroext i1 @qemu_lockcnt_dec_if_lock(ptr noundef) local_unnamed_addr #4

declare void @qemu_lockcnt_inc_and_unlock(ptr noundef) local_unnamed_addr #4

declare ptr @qemu_get_current_aio_context() local_unnamed_addr #4

declare zeroext i1 @bql_locked() local_unnamed_addr #4

declare ptr @get_ptr_rcu_reader() local_unnamed_addr #4

declare void @qemu_event_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { mustprogress norecurse nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !10}
!1 = distinct !{null}
!2 = distinct !{!2, !10}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = distinct !{null}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{i64 2151998569}
!18 = distinct !{null}
!19 = distinct !{null, null}
!20 = distinct !{null, null, null}
!21 = distinct !{!21, !10}
!22 = distinct !{null, null}
!23 = distinct !{!23, !10}
!24 = distinct !{null, null, null}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{i64 2151841977}
!28 = !{i64 2151842791}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{i64 2152010300}
!31 = distinct !{!31, !10}
end_hunk_0
