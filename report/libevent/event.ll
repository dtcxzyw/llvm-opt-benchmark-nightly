Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event?download=true
inline.NumInlined: 216
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@event_add_nolock_:bb.a

bb.x:                                             ; preds = %bb.v
  %i.cm = and i16 %i.ce, 8
  %.not135 = icmp eq i16 %i.cm, 0
  br i1 %.not135, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = tail call i32 @evmap_signal_add_(ptr noundef nonnull %i.b, i32 noundef %i.co, ptr noundef nonnull %0) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.0113 = phi i32 [ %i.cl, %bb.w ], [ %i.cp, %bb.y ] ; 2 uses
  %cond = icmp eq i32 %.0113, -1
  br i1 %cond, label %evthread_notify_base.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.z
  %.pre = load i16, ptr %i.aq, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.x
  %i.cq = phi i16 [ %.pre, %..thread_crit_edge ], [ %i.cg, %bb.x ]
  %.0113181 = phi i32 [ %.0113, %..thread_crit_edge ], [ 0, %bb.x ] ; 2 uses
  %i.cr = and i16 %i.cq, 16
  %.not.i156 = icmp eq i16 %i.cr, 0
  %i.cs = zext i1 %.not.i156 to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = add nsw i32 %i.cu, %i.cs                ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 212 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %..i = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 %i.cv)
  store i32 %..i, ptr %i.cw, align 4
  %i.cy = load i16, ptr %i.aq, align 8
  %i.cz = or i16 %i.cy, 2
  store i16 %i.cz, ptr %i.aq, align 8
  %i.da = icmp eq i32 %.0113181, 1                ; 2 uses
  %spec.select = select i1 %i.da, i32 0, i32 %.0113181
  %spec.select150 = zext i1 %i.da to i32
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.u, %bb.t
  %.1114 = phi i32 [ 0, %bb.u ], [ 0, %bb.t ], [ %spec.select, %.thread ] ; 6 uses
  %.0 = phi i32 [ 0, %bb.u ], [ 0, %bb.t ], [ %spec.select150, %.thread ] ; 7 uses
  br i1 %i.at, label %bb.ab, label %bb.cc

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp ne i8 %i.dc, 2
  %i.de = icmp ne i32 %2, 0                       ; 3 uses
  %or.cond7 = or i1 %i.de, %i.dd
  br i1 %or.cond7, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dg = load i16, ptr %i.aq, align 8            ; 2 uses
  %i.dh = and i16 %i.dg, 1
  %.not137 = icmp eq i16 %i.dh, 0
  br i1 %.not137, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @event_queue_remove_timeout(ptr noundef nonnull %i.b, ptr noundef nonnull %0)
  %.pre207 = load i16, ptr %i.aq, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.di = phi i16 [ %.pre207, %bb.ae ], [ %i.dg, %bb.ad ] ; 4 uses
  %i.dj = and i16 %i.di, 8
  %.not138 = icmp eq i16 %i.dj, 0
  br i1 %.not138, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = and i16 %i.dl, 1
  %.not139 = icmp eq i16 %i.dm, 0
  br i1 %.not139, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load i16, ptr %i.cd, align 8
  %i.do = and i16 %i.dn, 8
  %.not140 = icmp eq i16 %i.do, 0
  br i1 %.not140, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dq = load i16, ptr %i.dp, align 8
  %.not141 = icmp eq i16 %i.dq, 0
  br i1 %.not141, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not142 = icmp eq ptr %i.ds, null
  br i1 %.not142, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 0, ptr %i.ds, align 2
  %.pre208 = load i16, ptr %i.aq, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.ah
  %i.dt = phi i16 [ %i.di, %bb.ai ], [ %i.di, %bb.aj ], [ %.pre208, %bb.ak ], [ %i.di, %bb.ah ]
  %i.du = lshr i16 %i.dt, 4
  %i.dv = and i16 %i.du, 1
  %sext.i = add nsw i16 %i.dv, -1
  %.neg.i = sext i16 %sext.i to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = add i32 %i.dx, %.neg.i
  store i32 %i.dy, ptr %i.dw, align 8
  %i.dz = load i16, ptr %i.aq, align 8
  %i.ea = and i16 %i.dz, -9
  store i16 %i.ea, ptr %i.aq, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = add nsw i32 %i.ec, -1
  store i32 %i.ed, ptr %i.eb, align 8
  %i.ee = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i157 = icmp eq ptr %i.ee, null
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  br i1 %.not.i157, label %bb.am, label %event_queue_remove_active.exit

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ek = load i8, ptr %i.ej, align 2
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.el
  br label %event_queue_remove_active.exit

event_queue_remove_active.exit:                   ; preds = %bb.al, %bb.am
  %.sink14.i = phi ptr [ %i.em, %bb.am ], [ %i.ee, %bb.al ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store ptr %i.eg, ptr %i.en, align 8
  %i.eo = load ptr, ptr %0, align 8
  store ptr %i.eo, ptr %i.eg, align 8
  br label %bb.an

bb.an:                                            ; preds = %event_queue_remove_active.exit, %bb.ag, %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8
  %.not.i158 = icmp eq i64 %i.eq, 0
  br i1 %.not.i158, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false)
  br label %gettime.exit

bb.ap:                                            ; preds = %bb.an
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.es = call i32 @evutil_gettime_monotonic_(ptr noundef nonnull %i.er, ptr noundef nonnull %5) #25
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %gettime.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add nsw i64 %i.ev, 5
  %i.ex = load i64, ptr %5, align 16
  %i.ey = icmp slt i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ar, label %gettime.exit

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ez = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #25 ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.fb = load <2 x i64>, ptr %4, align 16
  %i.fc = load <2 x i64>, ptr %5, align 16
  %i.fd = load i64, ptr %5, align 16
  %i.fe = sub nsw <2 x i64> %i.fb, %i.fc          ; 3 uses
  %i.ff = extractelement <2 x i64> %i.fe, i64 1
  %i.fg = icmp slt i64 %i.ff, 0
  %i.fh = add nsw <2 x i64> %i.fe, <i64 -1, i64 1000000>
  %storemerge = select i1 %i.fg, <2 x i64> %i.fh, <2 x i64> %i.fe
  store <2 x i64> %storemerge, ptr %i.fa, align 8
  store i64 %i.fd, ptr %i.eu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %gettime.exit

gettime.exit:                                     ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.fi = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %.val = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.fj = and i64 %.val, 4026531840
  %.not.i159 = icmp eq i64 %i.fj, 1342177280
  br i1 %.not.i159, label %is_common_timeout.exit, label %is_common_timeout.exit.thread

is_common_timeout.exit:                           ; preds = %gettime.exit
  %i.fk = trunc i64 %.val to i32
  %i.fl = lshr i32 %i.fk, 20
  %i.fm = and i32 %i.fl, 255
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = icmp sge i32 %i.fm, %i.fo               ; 2 uses
  br i1 %i.de, label %bb.as, label %bb.at

is_common_timeout.exit.thread:                    ; preds = %gettime.exit
  br i1 %i.de, label %bb.as, label %is_common_timeout.exit.thread..thread191_crit_edge

is_common_timeout.exit.thread..thread191_crit_edge: ; preds = %is_common_timeout.exit.thread
  %.pre209 = load i64, ptr %5, align 16
  br label %.thread191

bb.as:                                            ; preds = %is_common_timeout.exit.thread, %is_common_timeout.exit
  %.0.i160190 = phi i1 [ true, %is_common_timeout.exit.thread ], [ %i.fp, %is_common_timeout.exit ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.ay

bb.at:                                            ; preds = %is_common_timeout.exit
  %.pre210 = load i64, ptr %5, align 16           ; 2 uses
  br i1 %i.fp, label %.thread191, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.fr = and i64 %.val, 1048575
  %i.fs = add nsw i64 %.pre210, %.sroa.0.0.copyload ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 %i.fs, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = add nsw i64 %i.fv, %i.fr                ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i64 %i.fw, ptr %i.fx, align 8
  %i.fy = icmp sgt i64 %i.fw, 999999
  br i1 %i.fy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fz = add nsw i64 %i.fs, 1
  store i64 %i.fz, ptr %i.ft, align 8
  %i.ga = add nsw i64 %i.fw, -1000000             ; 2 uses
  store i64 %i.ga, ptr %i.fx, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gb = phi i64 [ %i.ga, %bb.av ], [ %i.fw, %bb.au ]
  %i.gc = load i64, ptr %i.fi, align 8
  %i.gd = and i64 %i.gc, -1048576
  %i.ge = or i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.fx, align 8
  br label %bb.ay

.thread191:                                       ; preds = %is_common_timeout.exit.thread..thread191_crit_edge, %bb.at
  %i.gf = phi i64 [ %.pre209, %is_common_timeout.exit.thread..thread191_crit_edge ], [ %.pre210, %bb.at ]
  %i.gg = load i64, ptr %1, align 8
  %i.gh = add nsw i64 %i.gg, %i.gf                ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 %i.gh, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = load i64, ptr %i.fi, align 8
  %i.gm = add nsw i64 %i.gl, %i.gk                ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 %i.gm, ptr %i.gn, align 8
  %i.go = icmp sgt i64 %i.gm, 999999
  br i1 %i.go, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread191
  %i.gp = add nsw i64 %i.gh, 1
  store i64 %i.gp, ptr %i.gi, align 8
  %i.gq = add nsw i64 %i.gm, -1000000
  store i64 %i.gq, ptr %i.gn, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.as, %.thread191, %bb.ax, %bb.aw
  %.0.i160188 = phi i1 [ %.0.i160190, %bb.as ], [ true, %.thread191 ], [ true, %bb.ax ], [ false, %bb.aw ]
  %i.gr = load i32, ptr @event_debug_logging_mask_, align 4
  %.not144 = icmp eq i32 %i.gr, 0
  br i1 %.not144, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gs = load i64, ptr %1, align 8
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = load i64, ptr %i.fi, align 8
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.26, ptr noundef nonnull %0, i32 noundef %i.gt, i32 noundef %i.gv, ptr noundef %i.gx) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gy = load i16, ptr %i.aq, align 8
  %i.gz = and i16 %i.gy, 16
  %.not.i161 = icmp eq i16 %i.gz, 0
  %i.ha = zext i1 %.not.i161 to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = add nsw i32 %i.hc, %i.ha                ; 2 uses
  store i32 %i.hd, ptr %i.hb, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 212 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4
  %..i162 = call i32 @llvm.smax.i32(i32 %i.hf, i32 %i.hd)
  store i32 %..i162, ptr %i.he, align 4
  %i.hg = load i16, ptr %i.aq, align 8
  %i.hh = or i16 %i.hg, 1
  store i16 %i.hh, ptr %i.aq, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.hj = getelementptr i8, ptr %0, i64 120       ; 3 uses
  %.val.i = load i64, ptr %i.hj, align 8          ; 4 uses
  %i.hk = and i64 %.val.i, 4026531840
  %.not.i.i163 = icmp eq i64 %i.hk, 1342177280
  br i1 %.not.i.i163, label %is_common_timeout.exit.i, label %is_common_timeout.exit.thread.i

is_common_timeout.exit.i:                         ; preds = %bb.ba
  %i.hl = trunc i64 %.val.i to i32
  %i.hm = lshr i32 %i.hl, 20
  %i.hn = and i32 %i.hm, 255
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.hp = load i32, ptr %i.ho, align 8
  %.not28.i = icmp slt i32 %i.hn, %i.hp
  br i1 %.not28.i, label %bb.bb, label %is_common_timeout.exit.thread.i

bb.bb:                                            ; preds = %is_common_timeout.exit.i
  %i.hq = getelementptr i8, ptr %i.b, i64 280
  %.val20.i = load ptr, ptr %i.hq, align 8
  %i.hr = lshr i64 %.val.i, 20
  %i.hs = and i64 %i.hr, 255
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val20.i, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8            ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 3 uses
  %.pn37.i.i = load ptr, ptr %i.hv, align 8
  %.0.in.in38.i.i = getelementptr inbounds nuw i8, ptr %.pn37.i.i, i64 8
  %.0.in39.i.i = load ptr, ptr %.0.in.in38.i.i, align 8
  %.040.i.i = load ptr, ptr %.0.in39.i.i, align 8 ; 2 uses
  %.not41.i.i = icmp eq ptr %.040.i.i, null
  br i1 %.not41.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bb
  %i.hw = load i64, ptr %i.hi, align 8            ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bj, %.lr.ph.i.i
  %.042.i.i = phi ptr [ %.040.i.i, %.lr.ph.i.i ], [ %.0.i22.i, %bb.bj ] ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 112
  %i.hy = load i64, ptr %i.hx, align 8            ; 2 uses
  %i.hz = icmp eq i64 %i.hw, %i.hy
  br i1 %i.hz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ia = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 120
  %i.ib = load i64, ptr %i.ia, align 8
  %.not34.i.i = icmp slt i64 %.val.i, %i.ib
  br i1 %.not34.i.i, label %bb.bj, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %.not33.i.i = icmp slt i64 %i.hw, %i.hy
  br i1 %.not33.i.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ic = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 40 ; 3 uses
  %i.id = load ptr, ptr %i.ic, align 8            ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.id, ptr %i.ie, align 8
  %.not35.i.i = icmp eq ptr %i.id, null
  br i1 %.not35.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  store ptr %i.ie, ptr %i.if, align 8
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  store ptr %i.ie, ptr %i.hv, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store ptr %0, ptr %i.ic, align 8
  br label %insert_common_timeout_inorder.exit.i

bb.bj:                                            ; preds = %bb.be, %bb.bd
  %i.ig = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 48
  %.pn.i.i = load ptr, ptr %i.ig, align 8
  %.0.in.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %.0.in.i.i = load ptr, ptr %.0.in.in.i.i, align 8
  %.0.i22.i = load ptr, ptr %.0.in.i.i, align 8   ; 2 uses
  %.not.i23.i = icmp eq ptr %.0.i22.i, null
  br i1 %.not.i23.i, label %._crit_edge.i.i, label %bb.bc, !llvm.loop !48

._crit_edge.i.i:                                  ; preds = %bb.bj, %bb.bb
  %i.ih = load ptr, ptr %i.hu, align 8            ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.ih, ptr %i.ii, align 8
  %.not32.i.i = icmp eq ptr %i.ih, null
  br i1 %.not32.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  store ptr %i.ii, ptr %i.ij, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i
  store ptr %i.ii, ptr %i.hv, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr %0, ptr %i.hu, align 8
  br label %insert_common_timeout_inorder.exit.i

insert_common_timeout_inorder.exit.i:             ; preds = %bb.bm, %bb.bi
  %.sink.i.i = phi ptr [ %i.hu, %bb.bm ], [ %i.ic, %bb.bi ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink.i.i, ptr %i.ik, align 8
  br label %event_queue_insert_timeout.exit

is_common_timeout.exit.thread.i:                  ; preds = %is_common_timeout.exit.i, %bb.ba
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8            ; 4 uses
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %event_queue_insert_timeout.exit, label %bb.bn

bb.bn:                                            ; preds = %is_common_timeout.exit.thread.i
end_hunk_0
