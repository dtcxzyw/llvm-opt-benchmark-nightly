Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_test?download=true
inline.NumInlined: 60
inline.NumDeleted: 26
begin_hunk_0_@_select_nodes:bb.a
  %.0.i.i = phi i32 [ -2, %bb.g ], [ %i.br, %bb.h ], [ 1, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_socks_per_node.exit.i
  tail call void @bit_and(ptr noundef %4, ptr noundef nonnull %i.av) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_socks_per_node.exit.i
  %i.bs = tail call i32 @bit_set_count(ptr noundef %4) #9 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 1
  br i1 %i.bt, label %.loopexit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = tail call ptr @copy_core_array(ptr noundef %5) #9 ; 2 uses
  store ptr %i.bu, ptr %i.b, align 8
  %i.bv = load i32, ptr @node_record_count, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = tail call ptr @slurm_xcalloc(i64 noundef %i.bw, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 826, ptr noundef nonnull @__func__._get_one_res) #9 ; 2 uses
  store ptr %i.bx, ptr %i.k, align 8
  store i32 1, ptr %i.ae, align 8
  %i.by = load ptr, ptr %i.n, align 8
  %i.bz = tail call zeroext i1 @gres_sched_init(ptr noundef %i.by) #9
  %i.ca = zext i1 %i.bz to i8
  store i8 %i.ca, ptr %i.z, align 1
  %i.cb = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.cc = and i64 %i.cb, 1
  %.not60.i = icmp eq i64 %i.cc, 0
  br i1 %.not60.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = tail call i32 @get_log_level() #9
  %i.ce = icmp sgt i32 %i.cd, 3
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.72, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_one_res) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cf = zext nneg i32 %i.bs to i64              ; 3 uses
  %i.cg = tail call ptr @slurm_xcalloc(i64 noundef %i.cf, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 833, ptr noundef nonnull @__func__._get_one_res) #9 ; 4 uses
  store ptr %i.cg, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4
  %i.ch = call ptr @next_node_bitmap(ptr noundef %4, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not6176.i = icmp eq ptr %i.ch, null
  br i1 %.not6176.i, label %.lr.ph80.us.preheader.i, label %.lr.ph.i

.lr.ph80.us.preheader.i:                          ; preds = %.lr.ph.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @qsort(ptr noundef %i.cg, i64 noundef %i.cf, i64 noundef 8, ptr noundef nonnull @_cmp_node) #9
  br label %.lr.ph80.us.i

.lr.ph80.us.i:                                    ; preds = %.lr.ph80.us.i.backedge, %.lr.ph80.us.preheader.i
  %indvars.iv88.i = phi i64 [ 0, %.lr.ph80.us.preheader.i ], [ %indvars.iv88.i.be, %.lr.ph80.us.i.backedge ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv88.i ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 216
  %i.cl = load i32, ptr %i.ck, align 8            ; 3 uses
  %i.cm = load ptr, ptr %15, align 8
  %i.cn = load i16, ptr %i.l, align 8
  %i.co = call fastcc ptr @_can_job_run_on_node(ptr noundef %0, ptr noundef %i.cm, i32 noundef %i.cl, i32 noundef %.0.i.i, ptr noundef readonly %6, i16 noundef zeroext %i.cn, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef readonly %10, ptr noundef %13) ; 3 uses
  %i.cp = sext i32 %i.cl to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cp
  store ptr %i.co, ptr %i.cq, align 8
  %.not62.us.i = icmp eq ptr %i.co, null
  br i1 %.not62.us.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.lr.ph80.us.i
  %i.cr = load i16, ptr %i.co, align 8
  %.not63.us.i = icmp eq i16 %i.cr, 0
  br i1 %.not63.us.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ct = and i64 %i.cs, 1
  %.not64.us.i = icmp eq i64 %i.ct, 0
  br i1 %.not64.us.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = call i32 @get_log_level() #9
  %i.cv = icmp sgt i32 %i.cu, 3
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = load ptr, ptr %i.ci, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 280
  %i.cy = load ptr, ptr %i.cx, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.73, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_one_res, ptr noundef %i.cy) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.cz = call i32 @topology_g_eval_node(ptr noundef nonnull %15, i32 noundef %i.cl) #9
  %.not65.us.i = icmp eq i32 %i.cz, 0
  br i1 %.not65.us.i, label %.split83.us.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o, %.lr.ph80.us.i
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next89.i, %i.cf
  br i1 %exitcond.not.i, label %._crit_edge81.us.i, label %.lr.ph80.us.i.backedge

.lr.ph80.us.i.backedge:                           ; preds = %bb.t, %bb.u
  %indvars.iv88.i.be = phi i64 [ %indvars.iv.next89.i, %bb.t ], [ 0, %bb.u ]
  br label %.lr.ph80.us.i, !llvm.loop !46

bb.u:                                             ; preds = %._crit_edge81.us.i
  store i8 0, ptr %i.y, align 8
  %i.da = load ptr, ptr %i.n, align 8
  %i.db = call zeroext i1 @gres_sched_init(ptr noundef %i.da) #9
  %i.dc = zext i1 %i.db to i8
  store i8 %i.dc, ptr %i.z, align 1
  %i.dd = load ptr, ptr %15, align 8
  call void @core_array_or(ptr noundef %i.dd, ptr noundef %i.bu) #9
  br label %.lr.ph80.us.i.backedge

._crit_edge81.us.i:                               ; preds = %bb.t
  %i.de = load i8, ptr %i.y, align 8, !range !8, !noundef !9
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.u, label %.loopexit104

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.n ] ; 2 uses
  %i.dg = phi ptr [ %i.dl, %.lr.ph.i ], [ %i.ch, %bb.n ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i
  store ptr %i.dg, ptr %i.dh, align 8
  %i.di = load i32, ptr %i.c, align 4
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.c, align 4
  %i.dk = load ptr, ptr %i.ag, align 8
  %i.dl = call ptr @next_node_bitmap(ptr noundef %i.dk, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not61.i = icmp eq ptr %i.dl, null
  br i1 %.not61.i, label %.lr.ph80.us.preheader.i, label %.lr.ph.i, !llvm.loop !47

.split83.us.i:                                    ; preds = %bb.s
  %i.dm = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.dn = and i64 %i.dm, 1
  %.not66.i = icmp eq i64 %i.dn, 0
  br i1 %.not66.i, label %.preheader.critedge, label %bb.v

bb.v:                                             ; preds = %.split83.us.i
  %i.do = call i32 @get_log_level() #9
  %i.dp = icmp sgt i32 %i.do, 3
  br i1 %i.dp, label %bb.w, label %.preheader.critedge

bb.w:                                             ; preds = %bb.v
  %i.dq = load ptr, ptr %i.ci, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 280
  %i.ds = load ptr, ptr %i.dr, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.74, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._get_one_res, ptr noundef %i.ds) #9
  br label %.preheader.critedge

bb.x:                                             ; preds = %bb.e, %bb.d
  %.val.i = load ptr, ptr %i.f, align 8           ; 6 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %_socks_per_node.exit.i69, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i, i64 300
  %i.du = load i32, ptr %i.dt, align 4            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i, i64 96
  %i.dw = load i16, ptr %i.dv, align 8
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul i32 %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i, i64 272
  %i.ea = load i32, ptr %i.dz, align 8
  %..i.i67 = tail call i32 @llvm.umax.i32(i32 %i.ea, i32 %i.dy)
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i, i64 288
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = tail call i32 @llvm.umax.i32(i32 %i.ec, i32 1) ; 2 uses
  %i.ee = udiv i32 %..i.i67, %i.ed
  %i.ef = icmp ult i32 %i.ee, 2
  br i1 %i.ef, label %_socks_per_node.exit.i69, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i, i64 248
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = load i16, ptr %i.ei, align 2            ; 2 uses
  %switch.i.i68 = icmp ugt i16 %i.ej, -3
  br i1 %switch.i.i68, label %_socks_per_node.exit.i69, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = zext i16 %i.ej to i32                   ; 2 uses
  %i.el = udiv i32 %i.du, %i.ed
  %i.em = add nsw i32 %i.ek, -1
  %i.en = add i32 %i.em, %i.el
  %i.eo = udiv i32 %i.en, %i.ek
  br label %_socks_per_node.exit.i69

_socks_per_node.exit.i69:                         ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.0.i.i70 = phi i32 [ -2, %bb.x ], [ %i.eo, %bb.aa ], [ 1, %bb.y ], [ -2, %bb.z ]
  %i.ep = load i32, ptr @node_record_count, align 4
  %i.eq = sext i32 %i.ep to i64
  %i.er = tail call ptr @slurm_xcalloc(i64 noundef %i.eq, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.45, i32 noundef 770, ptr noundef nonnull @__func__._get_res_avail) #9 ; 3 uses
  %i.es = tail call i64 @bit_ffs(ptr noundef %4) #9 ; 2 uses
  %i.et = trunc i64 %i.es to i32                  ; 2 uses
  %.not.i71 = icmp eq i32 %i.et, -1
  br i1 %.not.i71, label %_get_res_avail.exit, label %bb.ab

bb.ab:                                            ; preds = %_socks_per_node.exit.i69
  %i.eu = tail call i64 @bit_fls(ptr noundef %4) #9
  %i.ev = trunc i64 %i.eu to i32                  ; 2 uses
  %.not2325.i = icmp slt i32 %i.ev, %i.et
  br i1 %.not2325.i, label %_get_res_avail.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ab
  %sext.i = shl i64 %i.es, 32
  %i.ew = ashr exact i64 %sext.i, 32
  %i.ex = add i32 %i.ev, 1
  br label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %bb.ad, %.lr.ph.preheader.i
  %indvars.iv.i73 = phi i64 [ %i.ew, %.lr.ph.preheader.i ], [ %indvars.iv.next.i74, %bb.ad ] ; 4 uses
  %i.ey = tail call i32 @slurm_bit_test(ptr noundef %4, i64 noundef %indvars.iv.i73) #9
  %.not24.i = icmp eq i32 %i.ey, 0
  br i1 %.not24.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i72
  %i.ez = trunc nsw i64 %indvars.iv.i73 to i32
  %i.fa = tail call fastcc ptr @_can_job_run_on_node(ptr noundef %0, ptr noundef %5, i32 noundef %i.ez, i32 noundef %.0.i.i70, ptr noundef readonly %6, i16 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, ptr noundef readonly %10, ptr noundef %13)
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.er, i64 %indvars.iv.i73
  store ptr %i.fa, ptr %i.fb, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i72
  %indvars.iv.next.i74 = add nsw i64 %indvars.iv.i73, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i74 to i32
  %exitcond.not.i75 = icmp eq i32 %i.ex, %lftr.wideiv.i
  br i1 %exitcond.not.i75, label %_get_res_avail.exit, label %.lr.ph.i72, !llvm.loop !48

_get_res_avail.exit:                              ; preds = %bb.ad, %_socks_per_node.exit.i69, %bb.ab
  store ptr %i.er, ptr %i.k, align 8
  %.not54 = icmp eq ptr %i.er, null
  br i1 %.not54, label %bb.at, label %bb.ae

bb.ae:                                            ; preds = %_get_res_avail.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4
  %i.fc = load ptr, ptr %i.ag, align 8
  %i.fd = call ptr @next_node_bitmap(ptr noundef %i.fc, ptr noundef nonnull %i.d) #9
  %.not5580 = icmp eq ptr %i.fd, null
  br i1 %.not5580, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.fe = load ptr, ptr %i.ag, align 8
  %i.ff = call i32 @bit_set_count(ptr noundef %i.fe) #9
  %i.fg = load i32, ptr %i.ae, align 8
  %i.fh = icmp ult i32 %i.ff, %i.fg
  br i1 %i.fh, label %.thread, label %bb.ai

.lr.ph:                                           ; preds = %bb.ae, %bb.ah
  %i.fi = load ptr, ptr %i.k, align 8
  %i.fj = load i32, ptr %i.d, align 4             ; 2 uses
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %.not61 = icmp eq ptr %i.fm, null
  br i1 %.not61, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %i.fn = load i16, ptr %i.fm, align 8
  %.not62 = icmp eq i16 %i.fn, 0
  br i1 %.not62, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %.lr.ph
  %i.fo = load ptr, ptr %i.ag, align 8
  call void @bit_clear(ptr noundef %i.fo, i64 noundef %i.fk) #9
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.fp = phi i32 [ %i.fj, %bb.af ], [ %.pre, %bb.ag ]
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.d, align 4
  %i.fr = load ptr, ptr %i.ag, align 8
  %i.fs = call ptr @next_node_bitmap(ptr noundef %i.fr, ptr noundef nonnull %i.d) #9
  %.not55 = icmp eq ptr %i.fs, null
  br i1 %.not55, label %._crit_edge, label %.lr.ph, !llvm.loop !49

bb.ai:                                            ; preds = %._crit_edge
  %.not56 = icmp eq ptr %i.i, null
  br i1 %.not56, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ft = load ptr, ptr %i.ag, align 8
  %i.fu = call i32 @bit_super_set(ptr noundef nonnull %i.i, ptr noundef %i.ft) #9
  %.not57 = icmp eq i32 %i.fu, 0
  br i1 %.not57, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fv = load ptr, ptr %i.ag, align 8
  %i.fw = load ptr, ptr %15, align 8
  call void @core_array_log(ptr noundef nonnull @.str.69, ptr noundef %i.fv, ptr noundef %i.fw) #9
  %i.fx = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.fy = load i16, ptr %i.fx, align 8            ; 2 uses
  %i.fz = zext i16 %i.fy to i32                   ; 2 uses
  %.not58 = icmp eq i16 %i.fy, 0
  br i1 %.not58, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 300
  %i.gb = load i32, ptr %i.ga, align 4            ; 2 uses
  %.not59 = icmp eq i32 %i.gb, 0
  br i1 %.not59, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = add nsw i32 %i.fz, -1
  %i.gd = add i32 %i.gc, %i.gb
  %i.ge = udiv i32 %i.gd, %i.fz
  %i.gf = load i32, ptr %i.ae, align 8
  %i.gg = call i32 @llvm.umax.i32(i32 %i.gf, i32 %i.ge)
  store i32 %i.gg, ptr %i.ae, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.gh = call i32 @topology_g_eval_nodes(ptr noundef nonnull %15) #9 ; 2 uses
  %.not60 = icmp eq i32 %i.gh, 0
  br i1 %.not60, label %.preheader, label %.thread

.loopexit104:                                     ; preds = %._crit_edge81.us.i
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  call void @free_core_array(ptr noundef nonnull %i.b) #9
  br label %.loopexit.thread

.preheader.critedge:                              ; preds = %bb.w, %bb.v, %.split83.us.i
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  call void @free_core_array(ptr noundef nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.preheader

.preheader:                                       ; preds = %bb.an, %.preheader.critedge
  %i.gi = load ptr, ptr %i.ag, align 8
  %i.gj = load ptr, ptr %15, align 8
  call void @core_array_log(ptr noundef nonnull @.str.70, ptr noundef %i.gi, ptr noundef %i.gj) #9
  %i.gk = load ptr, ptr %i.ag, align 8
  %i.gl = call i64 @bit_size(ptr noundef %i.gk) #9
  %i.gm = icmp sgt i64 %i.gl, 0
  br i1 %i.gm, label %.lr.ph82, label %.loopexit.thread102

.lr.ph82:                                         ; preds = %.preheader, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.as ], [ 0, %.preheader ] ; 5 uses
  %i.gn = load ptr, ptr %i.k, align 8
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv
  %i.gp = load ptr, ptr %i.go, align 8
  %.not64 = icmp eq ptr %i.gp, null
  br i1 %.not64, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph82
  %i.gq = load ptr, ptr %i.ag, align 8
  %i.gr = call i32 @slurm_bit_test(ptr noundef %i.gq, i64 noundef %indvars.iv) #9
  %.not65 = icmp eq i32 %i.gr, 0
  br i1 %.not65, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.lr.ph82, %bb.ao
  %i.gs = load ptr, ptr %15, align 8              ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8
  %.not66 = icmp eq ptr %i.gu, null
  br i1 %.not66, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @slurm_bit_free(ptr noundef nonnull %i.gt) #9
  %.pre85 = load ptr, ptr %15, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gv = phi ptr [ %.pre85, %bb.aq ], [ %i.gs, %bb.ap ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv
  store ptr null, ptr %i.gw, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gx = load ptr, ptr %i.ag, align 8
  %i.gy = call i64 @bit_size(ptr noundef %i.gx) #9
  %i.gz = icmp sgt i64 %i.gy, %indvars.iv.next
  br i1 %i.gz, label %.lr.ph82, label %.loopexit.thread102, !llvm.loop !50

.loopexit.thread:                                 ; preds = %bb.j, %.loopexit104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ha = load ptr, ptr %i.ag, align 8
  %i.hb = load ptr, ptr %15, align 8
  call void @core_array_log(ptr noundef nonnull @.str.70, ptr noundef %i.ha, ptr noundef %i.hb) #9
  %i.hc = load ptr, ptr %i.ag, align 8
  %i.hd = load ptr, ptr %15, align 8
  call void @core_array_log(ptr noundef nonnull @.str.71, ptr noundef %i.hc, ptr noundef %i.hd) #9
  br label %.thread

.thread:                                          ; preds = %.loopexit.thread, %._crit_edge, %bb.aj, %bb.an
  %.178 = phi i32 [ -1, %.loopexit.thread ], [ -1, %._crit_edge ], [ -1, %bb.aj ], [ %i.gh, %bb.an ]
  store i32 %.178, ptr %14, align 4
  %i.he = load ptr, ptr %i.k, align 8
  call fastcc void @_free_avail_res_array(ptr noundef %i.he)
  br label %bb.at

.loopexit.thread102:                              ; preds = %bb.as, %.preheader
  %i.hf = load ptr, ptr %i.ag, align 8
  %i.hg = load ptr, ptr %15, align 8
  call void @core_array_log(ptr noundef nonnull @.str.71, ptr noundef %i.hf, ptr noundef %i.hg) #9
  %i.hh = load ptr, ptr %i.k, align 8
  br label %bb.at

bb.at:                                            ; preds = %_get_res_avail.exit, %bb.c, %.loopexit.thread102, %.thread
  %.046 = phi ptr [ null, %bb.c ], [ null, %.thread ], [ %i.hh, %.loopexit.thread102 ], [ null, %_get_res_avail.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  ret ptr %.046
}

declare void @bit_copybits(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @free_core_array(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_free_avail_res_array(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  store i32 0, ptr %i.c, align 4
  %i.d = call ptr @next_node(ptr noundef nonnull %i.c) #9
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %._crit_edge, label %.lr.ph
end_hunk_0
