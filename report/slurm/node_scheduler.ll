Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/node_scheduler?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
begin_hunk_0_@_get_req_features:bb.a
  %i.at = call i32 @job_test_resv(ptr noundef nonnull %3, ptr noundef nonnull %i.j, i1 noundef zeroext false, ptr noundef nonnull %i.e, ptr noundef nonnull %12, ptr noundef nonnull %i.f, i1 noundef zeroext true) #13 ; 0 uses
  %i.au = load ptr, ptr %i.e, align 8
  %.not333 = icmp eq ptr %i.au, null
  br i1 %.not333, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v
  %.0304 = phi i1 [ %i.ar, %.thread ], [ false, %bb.v ]
  %.2291 = phi ptr [ %.1290, %.thread ], [ null, %bb.v ] ; 2 uses
  br i1 %11, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.f, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not344 = icmp eq ptr %.2291, null
  br i1 %.not344, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.av = load ptr, ptr @avail_node_bitmap, align 8
  %i.aw = call ptr @bit_copy(ptr noundef %i.av) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.3292 = phi ptr [ %.2291, %bb.y ], [ %i.aw, %bb.z ] ; 2 uses
  %i.ax = load ptr, ptr @share_node_bitmap, align 8
  %i.ay = call ptr @bit_copy(ptr noundef %i.ax) #13 ; 2 uses
  %i.az = load ptr, ptr @share_node_bitmap, align 8
  call void @filter_by_node_owner(ptr noundef nonnull %3, ptr noundef %i.az)
  %.not = xor i1 %10, true
  %or.cond3 = or i1 %8, %.not
  br i1 %or.cond3, label %_filter_by_node_feature.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_filter_by_node_feature.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nsw i64 %i.be, %i.bh
  %i.bj = call i64 @time(ptr noundef null) #13
  %.not12.i = icmp sgt i64 %i.bi, %i.bj
  %i.bk = icmp sgt i32 %1, 0
  %or.cond.i = and i1 %i.bk, %.not12.i
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_filter_by_node_feature.exit

bb.ae:                                            ; preds = %bb.ac
  %.old.i = icmp sgt i32 %1, 0
  br i1 %.old.i, label %.lr.ph.preheader.i, label %_filter_by_node_feature.exit

.lr.ph.preheader.i:                               ; preds = %bb.ae, %bb.ad
  %wide.trip.count.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ag ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, 2
  %.not13.i = icmp eq i32 %i.bo, 0
  br i1 %.not13.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i
  %i.bp = load ptr, ptr @avail_node_bitmap, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  call void @bit_and_not(ptr noundef %i.bp, ptr noundef %i.br) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_filter_by_node_feature.exit, label %.lr.ph.i, !llvm.loop !38

_filter_by_node_feature.exit:                     ; preds = %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.aa
  br i1 %8, label %.critedge388, label %bb.ah

bb.ah:                                            ; preds = %_filter_by_node_feature.exit
  %i.bs = call i32 @slurm_mcs_get_select(ptr noundef nonnull %3) #13
  %i.bt = load ptr, ptr @share_node_bitmap, align 8
  call void @filter_by_node_mcs(ptr noundef nonnull %3, i32 noundef %i.bs, ptr noundef %i.bt)
  %i.bu = load ptr, ptr @avail_node_bitmap, align 8
  %i.bv = call i32 @hres_filter(ptr noundef nonnull %3, ptr noundef %i.bu) #13 ; 0 uses
  br label %.critedge388

.critedge388:                                     ; preds = %_filter_by_node_feature.exit, %bb.ah
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 27 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 288
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 392
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not345 = icmp eq ptr %i.cb, null
  br i1 %.not345, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge388
  store ptr %i.cb, ptr %i.d, align 8
  %i.cc = call ptr @bit_copy(ptr noundef nonnull %i.cb) #13
  %i.cd = load ptr, ptr %i.bw, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 392
  store ptr null, ptr %i.ce, align 8
  %.pre = load ptr, ptr %i.bw, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge388
  %i.cf = phi ptr [ %.pre, %bb.ai ], [ %i.bx, %.critedge388 ]
  %.0305 = phi ptr [ %i.cc, %bb.ai ], [ null, %.critedge388 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 272 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8            ; 3 uses
  store i32 1, ptr %i.cg, align 8
  %i.ci = shl nsw i32 %1, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = call ptr @slurm_xcalloc(i64 noundef %i.cj, i64 noundef 64, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 1146, ptr noundef nonnull @__func__._get_req_features) #13 ; 3 uses
  store ptr %i.ck, ptr %i.b, align 8
  %i.cl = call ptr @slurm_find_preemptable_jobs(ptr noundef nonnull %3) #13 ; 4 uses
  %i.cm = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 200
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not346 = icmp eq ptr %i.co, null
  br i1 %.not346, label %bb.cv, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  store ptr null, ptr %i.k, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 320
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = call ptr @list_iterator_create(ptr noundef nonnull %i.co) #13 ; 3 uses
  %i.cs = call ptr @list_next(ptr noundef %i.cr) #13 ; 2 uses
  %.not347422 = icmp eq ptr %i.cs, null
  br i1 %.not347422, label %.thread394, label %.lr.ph431

.lr.ph431:                                        ; preds = %bb.ak
  %i.ct = icmp sgt i32 %1, 0
  %.not6 = xor i1 %8, true
  %or.cond8 = and i1 %10, %.not6
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph431, %bb.cr
  %i.cu = phi ptr [ %i.ck, %.lr.ph431 ], [ %i.km, %bb.cr ] ; 5 uses
  %i.cv = phi ptr [ %i.ck, %.lr.ph431 ], [ %i.kn, %bb.cr ] ; 5 uses
  %i.cw = phi ptr [ %i.cs, %.lr.ph431 ], [ %i.ko, %bb.cr ] ; 11 uses
  %.0268429 = phi i8 [ 0, %.lr.ph431 ], [ %.2, %bb.cr ] ; 2 uses
  %.0270428 = phi i64 [ -1, %.lr.ph431 ], [ %.2272, %bb.cr ] ; 7 uses
  %.0274427 = phi i32 [ 1, %.lr.ph431 ], [ %.2276, %bb.cr ] ; 2 uses
  %.0277.shrunk426 = phi i16 [ 0, %.lr.ph431 ], [ %.2279.shrunk, %bb.cr ] ; 2 uses
  %.0282425 = phi i8 [ 0, %.lr.ph431 ], [ %.3, %bb.cr ] ; 7 uses
  %.0285424 = phi i8 [ 0, %.lr.ph431 ], [ %.3288, %bb.cr ] ; 8 uses
  %.0309423 = phi i32 [ %7, %.lr.ph431 ], [ %.1310, %bb.cr ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 3 uses
  %i.cy = load i16, ptr %i.cx, align 8
  %i.cz = icmp ult i16 %.0277.shrunk426, %i.cy
  br i1 %i.cz, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.da = load ptr, ptr %i.k, align 8
  %.not370.a = icmp eq ptr %i.da, null
  br i1 %.not370.a, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = load ptr, ptr %i.bw, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 216
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__._get_req_features, i32 noundef 1167, ptr noundef nonnull %3, ptr noundef %i.dd) #13 ; 0 uses
  %i.df = load ptr, ptr %i.k, align 8
  %.not371.a = icmp eq ptr %i.df, null
  br i1 %.not371.a, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store ptr null, ptr %i.k, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  %i.dh = load i8, ptr %i.dg, align 2, !range !10, !noundef !11
  %i.di = or i8 %i.dh, %.0268429
  %13 = icmp ne i8 %i.di, 0
  %14 = zext i1 %13 to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call ptr @bit_copy(ptr noundef %i.dk) #13
  store ptr %i.dl, ptr %i.k, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 14
  %i.dn = load i8, ptr %i.dm, align 2
  %i.do = zext i8 %i.dn to i32
  %i.dp = load i16, ptr %i.cx, align 8
  br label %bb.cr, !llvm.loop !39

bb.ar:                                            ; preds = %bb.al
  %.not372.a = icmp eq i16 %.0277.shrunk426, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  %i.dr = load i8, ptr %i.dq, align 2, !range !10, !noundef !11 ; 2 uses
  br i1 %.not372.a, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ds = or i8 %i.dr, %.0268429
  %15 = icmp ne i8 %i.ds, 0
  %16 = zext i1 %15 to i8                         ; 2 uses
  %i.dt = icmp eq i32 %.0274427, 1
  %i.du = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  br i1 %i.dt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @bit_and(ptr noundef %i.du, ptr noundef %i.dw) #13
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  call void @bit_or(ptr noundef %i.du, ptr noundef %i.dw) #13
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cw, i64 14
  %i.dy = load i8, ptr %i.dx, align 2
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  %i.ea = load i16, ptr %i.cx, align 8            ; 2 uses
  %.not348 = icmp eq i16 %i.ea, 0
  br i1 %.not348, label %bb.ax, label %bb.cr, !llvm.loop !39

bb.aw:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.1275 = phi i32 [ %.0274427, %bb.aw ], [ %i.dz, %bb.av ] ; 4 uses
  %.0273.in = phi ptr [ %i.eb, %bb.aw ], [ %i.k, %bb.av ]
  %.1269 = phi i8 [ %i.dr, %bb.aw ], [ %16, %bb.av ] ; 6 uses
  %.0273 = load ptr, ptr %.0273.in, align 8       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 3 uses
  %i.ed = load i16, ptr %i.ec, align 4
  %i.ee = icmp eq i16 %i.ed, 0
  br i1 %i.ee, label %bb.ay, label %.preheader408

.preheader408:                                    ; preds = %bb.ax
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader408
  %i.ef = trunc nuw i8 %.0282425 to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.eh = load ptr, ptr %i.k, align 8
  %.not369 = icmp eq ptr %i.eh, null
  br i1 %.not369, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #13
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store ptr null, ptr %i.k, align 8
  br label %bb.cr, !llvm.loop !39

bb.bb:                                            ; preds = %.lr.ph, %bb.bl
  %i.ei = phi ptr [ %i.cu, %.lr.ph ], [ %i.hn, %bb.bl ]
  %i.ej = phi ptr [ %i.cv, %.lr.ph ], [ %i.ho, %bb.bl ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bl ] ; 2 uses
  %.0413 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.bl ] ; 5 uses
  %.0302411 = phi i32 [ 0, %.lr.ph ], [ %.1303, %bb.bl ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call i32 @bit_overlap_any(ptr noundef %i.em, ptr noundef %.0273) #13
  %.not363.a = icmp eq i32 %i.en, 0
  br i1 %.not363.a, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load i16, ptr %i.ek, align 8
  %i.ep = sext i32 %.0302411 to i64               ; 2 uses
  %i.eq = getelementptr inbounds [64 x i8], ptr %i.ej, i64 %i.ep
  store i16 %i.eo, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 48 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8
  %i.et = load ptr, ptr %i.b, align 8             ; 8 uses
  %i.eu = getelementptr inbounds [64 x i8], ptr %i.et, i64 %i.ep ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store i64 %i.es, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 44
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 44
  store i32 %i.ex, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  store i64 %i.fa, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 4 uses
  store i32 %i.fd, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call ptr @xstrdup(ptr noundef %i.fg) #13
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.fh, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = call ptr @bit_copy(ptr noundef %i.fk) #13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %i.fl, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.el, align 8
  %i.fo = call ptr @bit_copy(ptr noundef %i.fn) #13 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 7 uses
  store ptr %i.fo, ptr %i.fp, align 8
  call void @bit_and(ptr noundef %i.fo, ptr noundef %.0273) #13
  %i.fq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.fr = icmp ne ptr %i.fq, null
  %or.cond5 = select i1 %i.fr, i1 %i.ef, i1 false
  br i1 %or.cond5, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fs = load ptr, ptr %i.fp, align 8
  call void @bit_and_not(ptr noundef %i.fs, ptr noundef nonnull %i.fq) #13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ft = load ptr, ptr %i.fp, align 8
  %i.fu = call i32 @bit_set_count(ptr noundef %i.ft) #13
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eu, i64 40 ; 2 uses
  store i32 %i.fu, ptr %i.fv, align 8
  %i.fw = add nsw i32 %.0302411, 1                ; 7 uses
  br i1 %or.cond8, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.fx = load i32, ptr %i.fe, align 8
  %i.fy = and i32 %i.fx, 2
  %.not364.a = icmp eq i32 %i.fy, 0
  br i1 %.not364.a, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.fz = load ptr, ptr %i.el, align 8
  %i.ga = call ptr @bit_copy(ptr noundef %i.fz) #13 ; 2 uses
  store ptr %i.ga, ptr %i.a, align 8
  %i.gb = load ptr, ptr %i.eg, align 8
  call void @bit_and_not(ptr noundef %i.ga, ptr noundef %i.gb) #13
  %i.gc = load ptr, ptr %i.a, align 8
  %i.gd = call i64 @bit_ffs(ptr noundef %i.gc) #13
  %i.ge = icmp eq i64 %i.gd, -1
  br i1 %i.ge, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gf = load ptr, ptr %i.a, align 8
  %.not368 = icmp eq ptr %i.gf, null
  br i1 %.not368, label %.sink.split, label %.sink.split.sink.split

bb.bi:                                            ; preds = %bb.bg
  %i.gg = load ptr, ptr %i.fp, align 8
  %i.gh = load ptr, ptr %i.a, align 8
  %i.gi = call i32 @bit_equal(ptr noundef %i.gg, ptr noundef %i.gh) #13
  %.not365.a = icmp eq i32 %i.gi, 0
  br i1 %.not365.a, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gj = load i32, ptr %i.fe, align 8
  %i.gk = or i32 %i.gj, 2
  store i32 %i.gk, ptr %i.fe, align 8
  %i.gl = load ptr, ptr %i.a, align 8
  %.not367 = icmp eq ptr %i.gl, null
  br i1 %.not367, label %.sink.split, label %.sink.split.sink.split

bb.bk:                                            ; preds = %bb.bi
  %i.gm = load i16, ptr %i.ek, align 8
  %i.gn = sext i32 %i.fw to i64
  %i.go = getelementptr inbounds [64 x i8], ptr %i.et, i64 %i.gn ; 7 uses
  store i16 %i.gm, ptr %i.go, align 8
  %i.gp = load i64, ptr %i.er, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  store i64 %i.gp, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 24 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = or i32 %i.gs, 2
  store i32 %i.gt, ptr %i.gr, align 8
  %i.gu = load ptr, ptr %i.ff, align 8
  %i.gv = call ptr @xstrdup(ptr noundef %i.gu) #13
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gv, ptr %i.gw, align 8
  %i.gx = load ptr, ptr %i.fj, align 8
  %i.gy = call ptr @bit_copy(ptr noundef %i.gx) #13
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store ptr %i.gy, ptr %i.gz, align 8
  %i.ha = load ptr, ptr %i.fp, align 8
  %i.hb = call ptr @bit_copy(ptr noundef %i.ha) #13 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 32 ; 2 uses
  store ptr %i.hb, ptr %i.hc, align 8
  %i.hd = load ptr, ptr %i.a, align 8
  call void @bit_and(ptr noundef %i.hb, ptr noundef %i.hd) #13
  %i.he = load ptr, ptr %i.hc, align 8
  %i.hf = call i32 @bit_set_count(ptr noundef %i.he) #13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  store i32 %i.hf, ptr %i.hg, align 8
  %i.hh = load ptr, ptr %i.fp, align 8
  %i.hi = load ptr, ptr %i.a, align 8
  call void @bit_and_not(ptr noundef %i.hh, ptr noundef %i.hi) #13
  %i.hj = load ptr, ptr %i.fp, align 8
  %i.hk = call i32 @bit_set_count(ptr noundef %i.hj) #13
  store i32 %i.hk, ptr %i.fv, align 8
  %i.hl = add nsw i32 %.0302411, 2                ; 2 uses
  %i.hm = load ptr, ptr %i.a, align 8
  %.not366 = icmp eq ptr %i.hm, null
  br i1 %.not366, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.bk, %bb.bj, %bb.bh
  %.1303.ph.ph = phi i32 [ %i.fw, %bb.bj ], [ %i.fw, %bb.bh ], [ %i.hl, %bb.bk ]
  %.1.ph.ph = phi i1 [ true, %bb.bj ], [ %.0413, %bb.bh ], [ true, %bb.bk ]
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #13
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.bk, %bb.bj, %bb.bh
  %.1303.ph = phi i32 [ %i.fw, %bb.bj ], [ %i.fw, %bb.bh ], [ %i.hl, %bb.bk ], [ %.1303.ph.ph, %.sink.split.sink.split ]
  %.1.ph = phi i1 [ true, %bb.bj ], [ %.0413, %bb.bh ], [ true, %bb.bk ], [ %.1.ph.ph, %.sink.split.sink.split ]
  store ptr null, ptr %i.a, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split, %bb.be, %bb.bf, %bb.bb
  %i.hn = phi ptr [ %i.et, %bb.bf ], [ %i.ei, %bb.bb ], [ %i.et, %bb.be ], [ %i.et, %.sink.split ] ; 2 uses
  %i.ho = phi ptr [ %i.et, %bb.bf ], [ %i.ej, %bb.bb ], [ %i.et, %bb.be ], [ %i.et, %.sink.split ] ; 2 uses
  %.1303 = phi i32 [ %i.fw, %bb.bf ], [ %.0302411, %bb.bb ], [ %i.fw, %bb.be ], [ %.1303.ph, %.sink.split ] ; 2 uses
  %.1 = phi i1 [ %.0413, %bb.bf ], [ %.0413, %bb.bb ], [ %.0413, %bb.be ], [ %.1.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bb, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.bl, %.preheader408
  %i.hp = phi ptr [ %i.cu, %.preheader408 ], [ %i.hn, %bb.bl ]
  %i.hq = phi ptr [ %i.cv, %.preheader408 ], [ %i.ho, %bb.bl ] ; 2 uses
  %.0302.lcssa = phi i32 [ 0, %.preheader408 ], [ %.1303, %bb.bl ] ; 6 uses
  %.0.lcssa = phi i1 [ false, %.preheader408 ], [ %.1, %bb.bl ]
end_hunk_0
begin_hunk_1_@_get_req_features:bb.a
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %._crit_edge
  store ptr null, ptr %i.k, align 8
  store ptr null, ptr %i.c, align 8
  %i.hs = load i16, ptr %i.ec, align 4
  %i.ht = zext i16 %i.hs to i32                   ; 9 uses
  %i.hu = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 300
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 288
  store i32 %i.ht, ptr %i.hx, align 8
  %i.hy = load i16, ptr %i.ec, align 4
  %i.hz = zext i16 %i.hy to i32
  %i.ia = load ptr, ptr %i.bw, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 272
  store i32 %i.hz, ptr %i.ib, align 8
  %i.ic = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 296
  %i.ie = load i16, ptr %i.id, align 8            ; 2 uses
  %.not350 = icmp eq i16 %i.ie, 0
  br i1 %.not350, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.if = zext i16 %i.ie to i32
  %i.ig = mul nuw i32 %i.if, %i.ht
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 300
  store i32 %i.ig, ptr %i.ih, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.ii = load ptr, ptr %9, align 8               ; 2 uses
  %.not351 = icmp eq ptr %i.ii, null
  br i1 %.not351, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @list_destroy(ptr noundef nonnull %i.ii) #13
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store ptr null, ptr %9, align 8
  %i.ij = load ptr, ptr %i.bw, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 320
  store i64 %i.cq, ptr %i.ik, align 8
  br i1 %.0.lcssa, label %.preheader, label %bb.bu

.preheader:                                       ; preds = %bb.br
  %i.il = icmp sgt i32 %.0302.lcssa, 0
  br i1 %i.il, label %.lr.ph416.preheader, label %._crit_edge417

.lr.ph416.preheader:                              ; preds = %.preheader
  %wide.trip.count444 = zext nneg i32 %.0302.lcssa to i64
  br label %.lr.ph416

.lr.ph416:                                        ; preds = %.lr.ph416.preheader, %_set_sched_weight.exit
  %indvars.iv441 = phi i64 [ 0, %.lr.ph416.preheader ], [ %indvars.iv.next442, %_set_sched_weight.exit ] ; 2 uses
  %i.im = getelementptr inbounds nuw [64 x i8], ptr %i.hq, i64 %indvars.iv441 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 44
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = shl i32 %i.io, 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 56 ; 2 uses
  %i.ir = or disjoint i32 %i.ip, 255
  %i.is = zext i32 %i.ir to i64                   ; 2 uses
  store i64 %i.is, ptr %i.iq, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.iu = load i32, ptr %i.it, align 8
  %i.iv = zext i32 %i.iu to i64                   ; 3 uses
  %i.iw = and i64 %i.iv, 10
  %or.cond.i390 = icmp eq i64 %i.iw, 0
  br i1 %or.cond.i390, label %bb.bs, label %.sink.split.i

bb.bs:                                            ; preds = %.lr.ph416
  %i.ix = and i64 %i.iv, 16
  %.not12.i391 = icmp eq i64 %i.ix, 0
  br i1 %.not12.i391, label %bb.bt, label %.sink.split.i

bb.bt:                                            ; preds = %bb.bs
  %i.iy = and i64 %i.iv, 4
  %.not13.i392 = icmp eq i64 %i.iy, 0
  br i1 %.not13.i392, label %_set_sched_weight.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bt, %bb.bs, %.lr.ph416
  %.sink14.i = phi i64 [ 3298534883328, %.lr.ph416 ], [ 2199023255552, %bb.bs ], [ 1099511627776, %bb.bt ]
  %i.iz = or disjoint i64 %.sink14.i, %i.is
  store i64 %i.iz, ptr %i.iq, align 8
  br label %_set_sched_weight.exit

_set_sched_weight.exit:                           ; preds = %bb.bt, %.sink.split.i
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next442, %wide.trip.count444
  br i1 %exitcond445.not, label %._crit_edge417, label %.lr.ph416, !llvm.loop !41

._crit_edge417:                                   ; preds = %_set_sched_weight.exit, %.preheader
  %i.ja = sext i32 %.0302.lcssa to i64
  call void @qsort(ptr noundef %i.hq, i64 noundef %i.ja, i64 noundef 64, ptr noundef nonnull @_sort_node_set) #13
  %.pre451 = load ptr, ptr %i.b, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge417, %bb.br
  %i.jb = phi ptr [ %.pre451, %._crit_edge417 ], [ %i.hp, %bb.br ] ; 3 uses
  %i.jc = load i8, ptr %i.f, align 1, !range !10, !noundef !11
  %i.jd = trunc nuw i8 %i.jc to i1
  %i.je = call fastcc i32 @_pick_best_nodes(ptr noundef %i.jb, i32 noundef %.0302.lcssa, ptr noundef %i.c, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %i.ht, i32 noundef %6, i32 noundef %i.ht, i1 noundef zeroext %8, ptr noundef %i.cl, ptr noundef %9, i1 noundef zeroext false, ptr noundef %12, i1 noundef zeroext %i.jd) ; 2 uses
  %i.jf = load ptr, ptr %i.bw, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 300
  store i32 %i.hw, ptr %i.jg, align 4
  %i.jh = load ptr, ptr %i.bw, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 320 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8            ; 3 uses
  %.not352 = icmp eq i64 %i.jj, 0
  br i1 %.not352, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jk = icmp ult i64 %i.jj, %.0270428
  br i1 %i.jk, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i64 %.0270428, ptr %i.ji, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bu
  %.1271 = phi i64 [ %.0270428, %bb.bu ], [ %.0270428, %bb.bw ], [ %i.jj, %bb.bv ] ; 3 uses
  %i.jl = icmp sgt i32 %.0302.lcssa, 0
  br i1 %i.jl, label %.lr.ph420.preheader, label %._crit_edge421

.lr.ph420.preheader:                              ; preds = %bb.bx
  %wide.trip.count449 = zext nneg i32 %.0302.lcssa to i64
  br label %.lr.ph420

.lr.ph420:                                        ; preds = %.lr.ph420.preheader, %bb.cb
  %i.jm = phi ptr [ %i.jb, %.lr.ph420.preheader ], [ %i.jp, %bb.cb ]
  %indvars.iv446 = phi i64 [ 0, %.lr.ph420.preheader ], [ %indvars.iv.next447, %bb.cb ] ; 3 uses
  %i.jn = getelementptr inbounds nuw [64 x i8], ptr %i.jm, i64 %indvars.iv446
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  call void @slurm_xfree(ptr noundef nonnull %i.jo) #13
  %i.jp = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.jq = getelementptr inbounds nuw [64 x i8], ptr %i.jp, i64 %indvars.iv446 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 3 uses
  %i.js = load ptr, ptr %i.jr, align 8
  %.not361 = icmp eq ptr %i.js, null
  br i1 %.not361, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph420
  call void @slurm_bit_free(ptr noundef nonnull %i.jr) #13
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph420
  store ptr null, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 32 ; 3 uses
  %i.ju = load ptr, ptr %i.jt, align 8
  %.not362 = icmp eq ptr %i.ju, null
  br i1 %.not362, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @slurm_bit_free(ptr noundef nonnull %i.jt) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr null, ptr %i.jt, align 8
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %wide.trip.count449
  br i1 %exitcond450.not, label %._crit_edge421, label %.lr.ph420, !llvm.loop !42

._crit_edge421:                                   ; preds = %bb.cb, %bb.bx
  %i.jv = phi ptr [ %i.jb, %bb.bx ], [ %i.jp, %bb.cb ] ; 6 uses
  %.not353 = icmp eq i32 %i.je, 0
  %i.jw = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not354 = icmp eq ptr %i.jw, null              ; 2 uses
  br i1 %.not353, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge421
  br i1 %.not354, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #13
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  store ptr null, ptr %i.c, align 8
  br label %.thread394

bb.cf:                                            ; preds = %._crit_edge421
  br i1 %.not354, label %bb.cr, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jx = getelementptr inbounds nuw i8, ptr %i.cw, i64 14
  %i.jy = load i8, ptr %i.jx, align 2
  %i.jz = icmp eq i8 %i.jy, 3
  %spec.select = select i1 %i.jz, i8 1, i8 %.0282425 ; 3 uses
  %i.ka = trunc nuw i8 %spec.select to i1
  br i1 %i.ka, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.kb = trunc nuw i8 %.0285424 to i1
  %i.kc = trunc nuw i8 %.1269 to i1
  %or.cond10 = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond10, label %.thread394, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.mask356357 = or i8 %.1269, %.0285424
  %17 = icmp ne i8 %.mask356357, 0
  %18 = zext i1 %17 to i8
  br label %bb.cm

bb.cj:                                            ; preds = %bb.cg
  %i.kd = load ptr, ptr %i.bw, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 392
  %i.kf = load ptr, ptr %i.ke, align 8            ; 2 uses
  %.not355 = icmp eq ptr %i.kf, null
  br i1 %.not355, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @bit_or(ptr noundef nonnull %i.kf, ptr noundef nonnull %i.jw) #13
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.kg = call ptr @bit_copy(ptr noundef nonnull %i.jw) #13
  %i.kh = load ptr, ptr %i.bw, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 392
  store ptr %i.kg, ptr %i.ki, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %bb.ci
  %.1286 = phi i8 [ %18, %bb.ci ], [ %.0285424, %bb.ck ], [ %.0285424, %bb.cl ] ; 2 uses
  %i.kj = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not358 = icmp eq ptr %i.kj, null
  %i.kk = load ptr, ptr %i.c, align 8             ; 2 uses
  br i1 %.not358, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @bit_or(ptr noundef nonnull %i.kj, ptr noundef %i.kk) #13
  %i.kl = load ptr, ptr %i.c, align 8
  %.not359 = icmp eq ptr %i.kl, null
  br i1 %.not359, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @slurm_bit_free(ptr noundef nonnull %i.c) #13
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  store ptr null, ptr %i.c, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cm
  store ptr %i.kk, ptr %i.d, align 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cf, %bb.cq, %bb.cp, %bb.av, %bb.ba, %bb.aq
  %i.km = phi ptr [ %i.cu, %bb.aq ], [ %i.jv, %bb.cq ], [ %i.cu, %bb.ba ], [ %i.jv, %bb.cf ], [ %i.cu, %bb.av ], [ %i.jv, %bb.cp ]
  %i.kn = phi ptr [ %i.cv, %bb.aq ], [ %i.jv, %bb.cq ], [ %i.cv, %bb.ba ], [ %i.jv, %bb.cf ], [ %i.cv, %bb.av ], [ %i.jv, %bb.cp ]
  %.1310 = phi i32 [ %.0309423, %bb.aq ], [ %i.ht, %bb.cq ], [ %.0309423, %bb.ba ], [ %i.ht, %bb.cf ], [ %.0309423, %bb.av ], [ %i.ht, %bb.cp ] ; 2 uses
  %.3288 = phi i8 [ %.0285424, %bb.aq ], [ %.1286, %bb.cq ], [ %.0285424, %bb.ba ], [ %.0285424, %bb.cf ], [ %.0285424, %bb.av ], [ %.1286, %bb.cp ]
  %.3 = phi i8 [ %.0282425, %bb.aq ], [ %spec.select, %bb.cq ], [ %.0282425, %bb.ba ], [ %.0282425, %bb.cf ], [ %.0282425, %bb.av ], [ %spec.select, %bb.cp ] ; 2 uses
  %.2279.shrunk = phi i16 [ %i.dp, %bb.aq ], [ 0, %bb.cq ], [ 0, %bb.ba ], [ 0, %bb.cf ], [ %i.ea, %bb.av ], [ 0, %bb.cp ]
  %.2276 = phi i32 [ %i.do, %bb.aq ], [ %.1275, %bb.cq ], [ %.1275, %bb.ba ], [ %.1275, %bb.cf ], [ %i.dz, %bb.av ], [ %.1275, %bb.cp ]
  %.2272 = phi i64 [ %.0270428, %bb.aq ], [ %.1271, %bb.cq ], [ %.0270428, %bb.ba ], [ %.1271, %bb.cf ], [ %.0270428, %bb.av ], [ %.1271, %bb.cp ]
  %.2 = phi i8 [ %14, %bb.aq ], [ %.1269, %bb.cq ], [ %.1269, %bb.ba ], [ %.1269, %bb.cf ], [ %16, %bb.av ], [ %.1269, %bb.cp ]
  %i.ko = call ptr @list_next(ptr noundef %i.cr) #13 ; 2 uses
  %.not347 = icmp eq ptr %i.ko, null
  br i1 %.not347, label %.thread394, label %bb.al

.thread394:                                       ; preds = %bb.cr, %bb.ch, %bb.ak, %bb.ce
  %.2311 = phi i32 [ %i.ht, %bb.ce ], [ %7, %bb.ak ], [ %.1310, %bb.cr ], [ %i.ht, %bb.ch ]
  %.2298 = phi i32 [ %i.je, %bb.ce ], [ 0, %bb.ak ], [ 0, %bb.cr ], [ 2121, %bb.ch ]
  %.4 = phi i8 [ %.0282425, %bb.ce ], [ 0, %bb.ak ], [ %.3, %bb.cr ], [ 1, %bb.ch ]
  call void @list_iterator_destroy(ptr noundef %i.cr) #13
  %i.kp = load ptr, ptr %i.k, align 8
  %.not373.a = icmp eq ptr %i.kp, null
  br i1 %.not373.a, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.thread394
  %i.kq = load ptr, ptr %i.bw, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 216
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__._get_req_features, i32 noundef 1386, ptr noundef nonnull %3, ptr noundef %i.ks) #13 ; 0 uses
  %i.ku = load ptr, ptr %i.k, align 8
  %.not374.a = icmp eq ptr %i.ku, null
  br i1 %.not374.a, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #13
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct, %.thread394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  %i.kv = trunc nuw i8 %.4 to i1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.aj
  %.3312 = phi i32 [ %.2311, %bb.cu ], [ %7, %bb.aj ]
  %.3299 = phi i32 [ %.2298, %bb.cu ], [ 0, %bb.aj ] ; 2 uses
  %.5 = phi i1 [ %i.kv, %bb.cu ], [ false, %bb.aj ]
  %.not375.a = icmp eq ptr %.0305, null
  br i1 %.not375.a, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kw = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 392 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8
  %.not376.a = icmp eq ptr %i.ky, null
  br i1 %.not376.a, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @slurm_bit_free(ptr noundef nonnull %i.kx) #13
  %.pre452.a = load ptr, ptr %i.bw, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.kz = phi ptr [ %.pre452.a, %bb.cx ], [ %i.kw, %bb.cw ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 392
  store ptr null, ptr %i.la, align 8
  %i.lb = call ptr @bit_copy(ptr noundef nonnull %.0305) #13
  %i.lc = load ptr, ptr %i.bw, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 392
  store ptr %i.lb, ptr %i.ld, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cv
  %i.le = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not377 = icmp eq ptr %i.le, null
  %i.lf = load ptr, ptr %i.bw, align 8            ; 2 uses
  br i1 %.not377, label %bb.de, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 392 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8            ; 2 uses
  %.not378.a = icmp eq ptr %i.lh, null
  br i1 %.not378.a, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @bit_or(ptr noundef nonnull %i.lh, ptr noundef nonnull %i.le) #13
  call void @slurm_bit_free(ptr noundef nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store ptr %i.le, ptr %i.lg, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.li = load ptr, ptr %i.bw, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 392
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = call i32 @bit_set_count(ptr noundef %i.lk) #13 ; 2 uses
  %i.lm = call i32 @llvm.umax.i32(i32 %i.ch, i32 %i.ll)
  %i.ln = load ptr, ptr %i.bw, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 272
  store i32 %i.lm, ptr %i.lo, align 8
  %i.lp = call i32 @llvm.umax.i32(i32 %5, i32 %i.ll) ; 3 uses
  %i.lq = load ptr, ptr %i.bw, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 288
  store i32 %i.lp, ptr %i.lr, align 8
  %i.ls = call i32 @llvm.umax.i32(i32 %i.lp, i32 %.3312) ; 2 uses
  %i.lt = icmp ugt i32 %i.ls, %6
  br i1 %i.lt, label %.thread404, label %bb.df

bb.de:                                            ; preds = %bb.cz
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lf, i64 272
  store i32 %i.ch, ptr %i.lu, align 8
  %i.lv = load ptr, ptr %i.bw, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 288
  store i32 %i.bz, ptr %i.lw, align 8
  br label %bb.df

.thread404:                                       ; preds = %bb.dd
  call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  br label %bb.dj

bb.df:                                            ; preds = %bb.dd, %bb.de
  %.4313 = phi i32 [ %i.ls, %bb.dd ], [ %7, %bb.de ]
  %.0308 = phi i32 [ %i.lp, %bb.dd ], [ %5, %bb.de ]
  call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  %i.lx = icmp eq i32 %.3299, 0
  br i1 %i.lx, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.ly = load ptr, ptr %9, align 8               ; 2 uses
  %.not380.a = icmp eq ptr %i.ly, null
  br i1 %.not380.a, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @list_destroy(ptr noundef nonnull %i.ly) #13
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  store ptr null, ptr %9, align 8
  %i.lz = load i8, ptr %i.f, align 1, !range !10, !noundef !11
  %i.ma = trunc nuw i8 %i.lz to i1
  %i.mb = call fastcc i32 @_pick_best_nodes(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %.0308, i32 noundef %6, i32 noundef %.4313, i1 noundef zeroext %8, ptr noundef %i.cl, ptr noundef %9, i1 noundef zeroext %.5, ptr noundef %12, i1 noundef zeroext %i.ma)
  br label %bb.dj

bb.dj:                                            ; preds = %.thread404, %bb.di, %bb.df
  %.6 = phi i32 [ %i.mb, %bb.di ], [ %.3299, %bb.df ], [ 2014, %.thread404 ] ; 2 uses
  %i.mc = icmp eq i32 %.6, 2068
  %or.cond12 = select i1 %.0304, i1 %i.mc, i1 false
  %spec.store.select = select i1 %or.cond12, i32 2118, i32 %.6
  %.not381.a = icmp eq ptr %i.cl, null
  br i1 %.not381.a, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @list_destroy(ptr noundef nonnull %i.cl) #13
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.md = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 392 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8
  %.not382.a = icmp eq ptr %i.mf, null
  br i1 %.not382.a, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @slurm_bit_free(ptr noundef nonnull %i.me) #13
  %.pre454 = load ptr, ptr %i.bw, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.mg = phi ptr [ %.pre454, %bb.dm ], [ %i.md, %bb.dl ]
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 392
  store ptr null, ptr %i.mh, align 8
  %i.mi = load ptr, ptr %i.bw, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 392
  store ptr %.0305, ptr %i.mj, align 8
  %i.mk = load ptr, ptr %i.bw, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 272
  store i32 %i.ch, ptr %i.ml, align 8
  %i.mm = load ptr, ptr %i.bw, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 288
  store i32 %i.bz, ptr %i.mn, align 8
  %.not383.a = icmp eq ptr %.3292, null
  br i1 %.not383.a, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mo = load ptr, ptr @avail_node_bitmap, align 8
  %.not384.a = icmp eq ptr %i.mo, null
  br i1 %.not384.a, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @slurm_bit_free(ptr noundef nonnull @avail_node_bitmap) #13
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  store ptr %.3292, ptr @avail_node_bitmap, align 8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dn
  %.not385 = icmp eq ptr %i.ay, null
  br i1 %.not385, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.mp = load ptr, ptr @share_node_bitmap, align 8
  %.not386 = icmp eq ptr %i.mp, null
  br i1 %.not386, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @slurm_bit_free(ptr noundef nonnull @share_node_bitmap) #13
  br label %bb.du

end_hunk_1
