Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/eval_nodes_torus3d?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0_@eval_nodes_torus3d:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 392
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call i32 @bit_super_set(ptr noundef %i.bw, ptr noundef nonnull %i.bt) #4
  %.not112 = icmp eq i32 %i.bx, 0
  br i1 %.not112, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.by = tail call i32 @get_log_level() #4
  %i.bz = icmp sgt i32 %i.by, 2
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.eval_nodes_torus3d, ptr noundef nonnull %i.i) #4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.ca, align 4
  br label %.thread122

bb.x:                                             ; preds = %bb.t, %bb.s
  %i.cb = load ptr, ptr %i.j, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 392
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 @bit_set_count(ptr noundef %i.cd) #4 ; 4 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cg = tail call i32 @get_log_level() #4
  %i.ch = icmp sgt i32 %i.cg, 2
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.eval_nodes_torus3d, ptr noundef nonnull %i.i) #4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.ci, align 4
  br label %.thread122

bb.ab:                                            ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = icmp ugt i32 %i.ce, %i.ck
  br i1 %i.cl, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.cm = tail call i32 @get_log_level() #4
  %i.cn = icmp sgt i32 %i.cm, 2
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.co = load i32, ptr %i.cj, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.eval_nodes_torus3d, ptr noundef nonnull %i.i, i32 noundef %i.ce, i32 noundef %i.co) #4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.cp, align 4
  br label %.thread122

bb.af:                                            ; preds = %bb.ab
  %i.cq = icmp sgt i32 %.093, 1
  br i1 %i.cq, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.cr = icmp ugt i32 %i.m, %i.ce
  br i1 %i.cr, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cs = tail call i32 @get_log_level() #4
  %i.ct = icmp sgt i32 %i.cs, 2
  br i1 %i.ct, label %bb.ai, label %.thread122

bb.ai:                                            ; preds = %bb.ah
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.eval_nodes_torus3d, ptr noundef nonnull %i.i) #4
  br label %.thread122

bb.aj:                                            ; preds = %bb.ag
  %i.cu = load ptr, ptr %i.bn, align 8
  %i.cv = load ptr, ptr %i.j, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 392
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void @bit_and(ptr noundef %i.cu, ptr noundef %i.cx) #4
  %i.cy = load ptr, ptr %i.j, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 392 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  store ptr null, ptr %i.cz, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af, %.thread116
  %.2 = phi ptr [ null, %.thread116 ], [ %i.da, %bb.aj ], [ null, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.db = load ptr, ptr %i.h, align 8             ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 256
  %i.dd = load ptr, ptr %i.dc, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store ptr null, ptr %i.f, align 8
  %i.de = load ptr, ptr %i.n, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call i64 @bit_ffs(ptr noundef %i.di) #4
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dl = tail call i32 @get_log_level() #4
  %i.dm = icmp sgt i32 %i.dl, 4
  br i1 %i.dm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.8, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._select_placements, ptr noundef nonnull %i.db) #4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.dn, align 4
  br label %bb.ce

bb.ao:                                            ; preds = %bb.ak
  %i.do = load i32, ptr @node_record_count, align 4
  %i.dp = sext i32 %i.do to i64
  %i.dq = tail call ptr @slurm_xcalloc(i64 noundef %i.dp, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.9, i32 noundef 226, ptr noundef nonnull @__func__._select_placements) #4
  store ptr %i.dq, ptr %i.d, align 8
  %i.dr = load i32, ptr @node_record_count, align 4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = tail call ptr @bit_alloc(i64 noundef %i.ds) #4
  store ptr %i.dt, ptr %i.e, align 8
  %i.du = load i32, ptr @node_record_count, align 4
  %i.dv = sext i32 %i.du to i64
  %i.dw = tail call ptr @bit_alloc(i64 noundef %i.dv) #4
  store ptr %i.dw, ptr %i.f, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.db, i64 344
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 448
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dd, i64 440
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dd, i64 272
  %i.ee = tail call i64 @eval_nodes_get_rem_max_cpus(ptr noundef %i.dd, i32 noundef %.098) #4 ; 2 uses
  %i.ef = tail call i64 @eval_nodes_set_max_tasks(ptr noundef nonnull %i.db, i64 noundef %i.ee, i32 noundef %.098) #4
  store i64 %i.ef, ptr %i.c, align 8
  %i.eg = load i32, ptr %i.dx, align 8
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i.preheader, label %._crit_edge.thread.i

.lr.ph.i.preheader:                               ; preds = %bb.ao, %bb.cd
  %i.ei = phi i64 [ %i.li, %bb.cd ], [ %i.ee, %bb.ao ]
  %.054.i138 = phi i32 [ %i.lc, %bb.cd ], [ %.093, %bb.ao ] ; 2 uses
  %.055.i137 = phi i8 [ %.156.i, %bb.cd ], [ 0, %bb.ao ] ; 2 uses
  %.061.i136 = phi i32 [ %i.lh, %bb.cd ], [ %.099, %bb.ao ] ; 2 uses
  %.064.i135 = phi i32 [ %i.lf, %bb.cd ], [ %.098, %bb.ao ] ; 5 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_check_torus.exit.i
  %i.ej = trunc nuw i8 %.sroa.21.6.i to i1
  br i1 %i.ej, label %bb.bu, label %._crit_edge.thread.i.loopexit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_check_torus.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_check_torus.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.26.0117.i = phi i64 [ %.sroa.26.6.i, %_check_torus.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.21.0116.i = phi i8 [ %.sroa.21.6.i, %_check_torus.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.19.0115.i = phi i32 [ %.sroa.19.6.i, %_check_torus.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.0114.i = phi ptr [ %.sroa.16.6.i, %_check_torus.exit.i ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.11.0113.i = phi ptr [ %.sroa.11.6.i, %_check_torus.exit.i ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.6.0112.i = phi i32 [ %.sroa.6.8.i, %_check_torus.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.0111.i = phi ptr [ %.sroa.0.6.i, %_check_torus.exit.i ], [ null, %.lr.ph.i.preheader ] ; 2 uses
  %i.ek = load ptr, ptr %i.dy, align 8
  %i.el = getelementptr inbounds nuw [56 x i8], ptr %i.ek, i64 %indvars.iv.i ; 3 uses
  %i.em = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.en = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.eo = load ptr, ptr %i.dh, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call i32 @bit_overlap(ptr noundef %i.eo, ptr noundef %i.eq) #4 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8            ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph59.i.i, label %_check_torus.exit.i

.lr.ph59.i.i:                                     ; preds = %.lr.ph.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.i.i, %.lr.ph59.i.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0111.i, %.lr.ph59.i.i ], [ %.sroa.0.2.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.6.1.i = phi i32 [ %.sroa.6.0112.i, %.lr.ph59.i.i ], [ %.sroa.6.2.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0113.i, %.lr.ph59.i.i ], [ %.sroa.11.2.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.16.1.i = phi ptr [ %.sroa.16.0114.i, %.lr.ph59.i.i ], [ %.sroa.16.2.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.19.1.i = phi i32 [ %.sroa.19.0115.i, %.lr.ph59.i.i ], [ %.sroa.19.2.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.21.1.i = phi i8 [ %.sroa.21.0116.i, %.lr.ph59.i.i ], [ %.sroa.21.2.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.26.1.i = phi i64 [ %.sroa.26.0117.i, %.lr.ph59.i.i ], [ %.sroa.26.2.i, %.loopexit.i.i ] ; 3 uses
  %i.ew = phi i32 [ %i.et, %.lr.ph59.i.i ], [ %i.jh, %.loopexit.i.i ] ; 4 uses
  %indvars.iv67.i.i = phi i64 [ 0, %.lr.ph59.i.i ], [ %i.fb, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph59.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ex = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ey = getelementptr inbounds nuw [80 x i8], ptr %i.ex, i64 %indvars.iv67.i.i ; 8 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 44 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %.not.i.i = icmp eq i32 %i.fa, %.064.i135
  %i.fb = add nuw nsw i64 %indvars.iv67.i.i, 1    ; 3 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.ap
  %i.fc = sext i32 %i.ew to i64
  %i.fd = icmp slt i64 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i, label %.critedge.preheader.i.i

.critedge.preheader.loopexit.i.i:                 ; preds = %.lr.ph.i.i
  %spec.select.i.i = select i1 %i.fm, ptr null, ptr %i.fj
  br label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %.critedge.preheader.loopexit.i.i, %.preheader.i.i
  %.031.lcssa.i.i = phi ptr [ null, %.preheader.i.i ], [ %spec.select.i.i, %.critedge.preheader.loopexit.i.i ] ; 5 uses
  %.not34.lcssa.i.i = phi i1 [ true, %.preheader.i.i ], [ %i.fm, %.critedge.preheader.loopexit.i.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph57.i.i, label %.loopexit.i.i

.lr.ph57.i.i:                                     ; preds = %.critedge.preheader.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.031.lcssa.i.i, i64 8 ; 4 uses
  br label %bb.aq

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [80 x i8], ptr %i.ex, i64 %indvars.iv61.i.i ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 44
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = icmp ule i32 %i.fl, %.064.i135          ; 3 uses
  %indvars.iv.next62.i.i = add nuw nsw i64 %indvars.iv61.i.i, 1 ; 2 uses
  %1 = trunc nuw i64 %indvars.iv.next62.i.i to i32
  %2 = icmp sgt i32 %i.ew, %1
  %or.cond.i.i = select i1 %2, i1 %i.fm, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.preheader.loopexit.i.i, !llvm.loop !12

bb.aq:                                            ; preds = %_check_anchor.exit.i.i, %.lr.ph57.i.i
  %.sroa.0.3.i = phi ptr [ %.sroa.0.1.i, %.lr.ph57.i.i ], [ %.sroa.0.4.i, %_check_anchor.exit.i.i ] ; 8 uses
  %.sroa.6.3.i = phi i32 [ %.sroa.6.1.i, %.lr.ph57.i.i ], [ %.sroa.6.4.i, %_check_anchor.exit.i.i ] ; 8 uses
  %.sroa.11.3.i = phi ptr [ %.sroa.11.1.i, %.lr.ph57.i.i ], [ %.sroa.11.4.i, %_check_anchor.exit.i.i ] ; 8 uses
  %.sroa.16.3.i = phi ptr [ %.sroa.16.1.i, %.lr.ph57.i.i ], [ %.sroa.16.4.i, %_check_anchor.exit.i.i ] ; 8 uses
  %.sroa.19.3.i = phi i32 [ %.sroa.19.1.i, %.lr.ph57.i.i ], [ %.sroa.19.4.i, %_check_anchor.exit.i.i ] ; 8 uses
  %.sroa.21.3.i = phi i8 [ %.sroa.21.1.i, %.lr.ph57.i.i ], [ %.sroa.21.4.i, %_check_anchor.exit.i.i ] ; 6 uses
  %.sroa.26.3.i = phi i64 [ %.sroa.26.1.i, %.lr.ph57.i.i ], [ %.sroa.26.4.i, %_check_anchor.exit.i.i ] ; 10 uses
  %indvars.iv64.i.i = phi i64 [ 0, %.lr.ph57.i.i ], [ %indvars.iv.next65.i.i, %_check_anchor.exit.i.i ] ; 3 uses
  %i.fn = load ptr, ptr %i.h, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  %i.fo = load ptr, ptr %i.ey, align 8
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv64.i.i
  %i.fq = load ptr, ptr %i.fp, align 8            ; 7 uses
  %i.fr = load ptr, ptr %i.fh, align 8
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv64.i.i
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = load i32, ptr %i.ez, align 4
  %.not.i.i.i = icmp eq i32 %i.ft, %i.fu
  br i1 %.not.i.i.i, label %bb.ar, label %_check_anchor.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 256
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 392
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not45.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fz = call i32 @bit_super_set(ptr noundef nonnull %i.fy, ptr noundef %i.fq) #4
  %.not46.i.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not46.i.i.i, label %_check_anchor.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4
  %i.ga = call ptr @next_node_bitmap(ptr noundef %i.fq, ptr noundef nonnull %i.b) #4
  %.not4762.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not4762.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 344
  %i.gc = trunc nuw i8 %.sroa.21.3.i to i1
  br label %bb.au

bb.au:                                            ; preds = %bb.bc, %.lr.ph.i.i.i
  %.03963.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %bb.bc ]
  %i.gd = load ptr, ptr @node_record_table_ptr, align 8
  %i.ge = load i32, ptr %i.b, align 4
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = load ptr, ptr %i.dh, align 8
  %i.gj = call i32 @slurm_bit_test(ptr noundef %i.gi, i64 noundef %i.gf) #4
  %.not48.i.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not48.i.i.i, label %.thread55.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.gc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 472
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = icmp ugt i64 %i.gl, %.sroa.26.3.i
  br i1 %i.gm, label %.thread55.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.gn = load i32, ptr %i.b, align 4
  %i.go = sext i32 %i.gn to i64
  %i.gp = call i32 @slurm_bit_test(ptr noundef %i.en, i64 noundef %i.go) #4
  %.not49.i.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not49.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gq = load i32, ptr %i.b, align 4
  call void @eval_nodes_select_cores(ptr noundef nonnull %0, i32 noundef %i.gq, i32 noundef %.064.i135) #4
  %i.gr = load i16, ptr %i.z, align 8
  %i.gs = zext i16 %i.gr to i32
  %i.gt = load i32, ptr %i.b, align 4
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.gu
  store i32 %i.gs, ptr %i.gv, align 4
  call void @bit_set(ptr noundef %i.en, i64 noundef %i.gu) #4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.gw = load i32, ptr %i.b, align 4             ; 2 uses
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4
  %.not50.i.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not50.i.i.i, label %.thread55.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ha = load i8, ptr %i.af, align 1, !range !13, !noundef !14
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hc = load ptr, ptr %i.gb, align 8
  %i.hd = load ptr, ptr %i.dz, align 8
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.gx
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8
  call void @gres_sched_consec(ptr noundef nonnull %i.a, ptr noundef %i.hc, ptr noundef %i.hh) #4
  %.pre.i.i.i = load i32, ptr %i.b, align 4
  br label %bb.bc

.thread55.i.i.i:                                  ; preds = %bb.az, %bb.aw, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %_is_better_candidate.exit.thread59.i.i.i

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hi = phi i32 [ %.pre.i.i.i, %bb.bb ], [ %i.gw, %bb.ba ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gh, i64 472
  %i.hk = load i64, ptr %i.hj, align 8
  %spec.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.hk, i64 %.03963.i.i.i) ; 2 uses
  %i.hl = add nsw i32 %i.hi, 1
  store i32 %i.hl, ptr %i.b, align 4
  %i.hm = call ptr @next_node_bitmap(ptr noundef %i.fq, ptr noundef nonnull %i.b) #4
  %.not47.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not47.i.i.i, label %._crit_edge.i.i.i, label %bb.au, !llvm.loop !15

._crit_edge.i.i.i:                                ; preds = %bb.bc, %bb.at
  %.039.lcssa.i.i.i = phi i64 [ 0, %bb.at ], [ %spec.select.i.i.i, %bb.bc ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.hn = load i8, ptr %i.af, align 1, !range !13, !noundef !14
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fn, i64 344
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = load ptr, ptr %i.a, align 8
  %i.hs = call zeroext i1 @gres_sched_sufficient(ptr noundef %i.hq, ptr noundef %i.hr) #4
  br i1 %i.hs, label %bb.be, label %_is_better_candidate.exit.thread59.i.i.i

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i.i.i
  %i.ht = load ptr, ptr %i.dh, align 8            ; 4 uses
  %i.hu = trunc nuw i8 %.sroa.21.3.i to i1
  %i.hv = icmp uge i64 %.039.lcssa.i.i.i, %.sroa.26.3.i
  %or.cond103.not.i = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %or.cond103.not.i, label %bb.bf, label %_is_better_candidate.exit.thread59.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.hw = icmp ugt i64 %.039.lcssa.i.i.i, %.sroa.26.3.i
  br i1 %i.hw, label %_is_better_candidate.exit.thread59.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hx = icmp eq ptr %i.ey, %.sroa.16.3.i
  br i1 %i.hx, label %bb.bh, label %_is_better_candidate.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.hy = icmp slt i32 %.sroa.6.3.i, 0
  br i1 %i.hy, label %bb.bi, label %_get_frag_cost.exit51.i.i

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not34.lcssa.i.i, label %_is_better_candidate.exit.i.i.i, label %.preheader.i40.i.i

.preheader.i40.i.i:                               ; preds = %bb.bi
  %i.hz = load i32, ptr %i.fi, align 8
  %i.ia = icmp sgt i32 %i.hz, 0
  br i1 %i.ia, label %.lr.ph.i43.i.i, label %_is_better_candidate.exit.i.i.i

.lr.ph.i43.i.i:                                   ; preds = %.preheader.i40.i.i, %bb.bk
  %indvars.iv.i44.i.i = phi i64 [ %indvars.iv.next.i50.i.i, %bb.bk ], [ 0, %.preheader.i40.i.i ] ; 3 uses
  %.01317.i45.i.i = phi i32 [ %.1.i49.i.i, %bb.bk ], [ 0, %.preheader.i40.i.i ] ; 2 uses
  %i.ib = load ptr, ptr %.031.lcssa.i.i, align 8
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.i44.i.i
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = call i32 @bit_overlap_any(ptr noundef %i.id, ptr noundef %.sroa.11.3.i) #4
  %.not15.i46.i.i = icmp eq i32 %i.ie, 0
  br i1 %.not15.i46.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i43.i.i
  %i.if = load ptr, ptr %.031.lcssa.i.i, align 8
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i44.i.i
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = call i32 @bit_super_set(ptr noundef %i.ih, ptr noundef %.sroa.0.3.i) #4
  %.not16.i47.i.i = icmp ne i32 %i.ii, 0
  %i.ij = zext i1 %.not16.i47.i.i to i32
  %spec.select.i48.i.i = add nsw i32 %.01317.i45.i.i, %i.ij
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.lr.ph.i43.i.i
  %.1.i49.i.i = phi i32 [ %.01317.i45.i.i, %.lr.ph.i43.i.i ], [ %spec.select.i48.i.i, %bb.bj ] ; 2 uses
  %indvars.iv.next.i50.i.i = add nuw nsw i64 %indvars.iv.i44.i.i, 1 ; 2 uses
  %i.ik = load i32, ptr %i.fi, align 8
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp slt i64 %indvars.iv.next.i50.i.i, %i.il
  br i1 %i.im, label %.lr.ph.i43.i.i, label %_get_frag_cost.exit51.i.i, !llvm.loop !16

_get_frag_cost.exit51.i.i:                        ; preds = %bb.bk, %bb.bh
  %.sroa.6.7.i = phi i32 [ %.sroa.6.3.i, %bb.bh ], [ %.1.i49.i.i, %bb.bk ] ; 4 uses
  br i1 %.not34.lcssa.i.i, label %_get_frag_cost.exit.i.i, label %.preheader.i.i.i
end_hunk_0
