inline.NumInlined: 86
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@sfnt_get_ps_name:bb.a
bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !361
  %i.bo = icmp eq i16 %i.bn, 1033
  %.0..0..0..0..0.256.i = load i32, ptr %i.g, align 4
  %i.bp = icmp eq i32 %.0..0..0..0..0.256.i, -1
  %or.cond287.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond287.i, label %.thread.sink.split.i221.i, label %.thread.i216.i

bb.s:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !568
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.t, label %.thread.i216.i

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !361
  %i.bv = icmp eq i16 %i.bu, 0
  %.0..0..0..0..0.249.i = load i32, ptr %i.h, align 4
  %i.bw = icmp eq i32 %.0..0..0..0..0.249.i, -1
  %or.cond288.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond288.i, label %.thread.sink.split.i221.i, label %.thread.i216.i

.thread.sink.split.i221.i:                        ; preds = %bb.t, %bb.r
  %.sink28.i222.i = phi ptr [ %i.g, %bb.r ], [ %i.h, %bb.t ]
  %i.bx = trunc nuw nsw i64 %indvars.iv.i215.i to i32
  store i32 %i.bx, ptr %.sink28.i222.i, align 4, !tbaa !3
  br label %.thread.i216.i

.thread.i216.i:                                   ; preds = %.thread.sink.split.i221.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next.i217.i = add nuw nsw i64 %indvars.iv.i215.i, 1 ; 2 uses
  %exitcond.not.i218.i = icmp eq i64 %indvars.iv.next.i217.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i218.i, label %._crit_edge.i219.i, label %bb.n, !llvm.loop !572

._crit_edge.i219.i:                               ; preds = %.thread.i216.i
  %.0..0..0..0..0.255.pr.i = load i32, ptr %i.g, align 4, !tbaa !3 ; 3 uses
  %i.by = icmp sgt i32 %.0..0..0..0..0.255.pr.i, -1
  %.0..0..0..0..0..pre.pre331.i = load i32, ptr %i.h, align 4 ; 3 uses
  br i1 %i.by, label %.critedge188.thread.i, label %sfnt_get_name_id.exit224.i

sfnt_get_name_id.exit224.i:                       ; preds = %._crit_edge.i219.i
  %i.bz = icmp slt i32 %.0..0..0..0..0..pre.pre331.i, 0
  br i1 %i.bz, label %.critedge.i, label %.critedge188.i

.critedge.i:                                      ; preds = %sfnt_get_name_id.exit224.i
  store i32 -1, ptr %i.g, align 4, !tbaa !3
  store i32 -1, ptr %i.h, align 4, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %.thread.i229.i, %.critedge.i
  %indvars.iv.i228.i = phi i64 [ 0, %.critedge.i ], [ %indvars.iv.next.i230.i, %.thread.i229.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %indvars.iv.i228.i ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !566
  %i.cd = icmp eq i16 %i.cc, 1
  br i1 %i.cd, label %bb.v, label %.thread.i229.i

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !358
  %.not.i233.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i233.i, label %.thread.i229.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = load i16, ptr %i.ca, align 8, !tbaa !567
  switch i16 %i.cg, label %.thread.i229.i [
    i16 3, label %bb.x
    i16 1, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !568
  %switch.i236.i = icmp ult i16 %i.ci, 2
  br i1 %switch.i236.i, label %bb.y, label %.thread.i229.i

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !361
  %i.cl = icmp eq i16 %i.ck, 1033
  %.0..0..0..0..0.258.i = load i32, ptr %i.g, align 4
  %i.cm = icmp eq i32 %.0..0..0..0..0.258.i, -1
  %or.cond289.i = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond289.i, label %.thread.sink.split.i234.i, label %.thread.i229.i

bb.z:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !568
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.aa, label %.thread.i229.i

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !361
  %i.cs = icmp eq i16 %i.cr, 0
  %.0..0..0..0..0.251.i = load i32, ptr %i.h, align 4
  %i.ct = icmp eq i32 %.0..0..0..0..0.251.i, -1
  %or.cond290.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond290.i, label %.thread.sink.split.i234.i, label %.thread.i229.i

.thread.sink.split.i234.i:                        ; preds = %bb.aa, %bb.y
  %.sink28.i235.i = phi ptr [ %i.g, %bb.y ], [ %i.h, %bb.aa ]
  %i.cu = trunc nuw nsw i64 %indvars.iv.i228.i to i32
  store i32 %i.cu, ptr %.sink28.i235.i, align 4, !tbaa !3
  br label %.thread.i229.i

.thread.i229.i:                                   ; preds = %.thread.sink.split.i234.i, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %indvars.iv.next.i230.i = add nuw nsw i64 %indvars.iv.i228.i, 1 ; 2 uses
  %exitcond.not.i231.i = icmp eq i64 %indvars.iv.next.i230.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i231.i, label %._crit_edge.i232.i, label %bb.u, !llvm.loop !572

._crit_edge.i232.i:                               ; preds = %.thread.i229.i
  %.0..0..0..0..0.257.pr.i = load i32, ptr %i.g, align 4, !tbaa !3 ; 3 uses
  %i.cv = icmp sgt i32 %.0..0..0..0..0.257.pr.i, -1
  %.0..0..0..0..0..pre.pre.i = load i32, ptr %i.h, align 4 ; 3 uses
  br i1 %i.cv, label %.critedge188.thread.i, label %sfnt_get_name_id.exit237.i

sfnt_get_name_id.exit237.i:                       ; preds = %._crit_edge.i232.i
  %i.cw = icmp slt i32 %.0..0..0..0..0..pre.pre.i, 0
  br i1 %i.cw, label %sfnt_get_var_ps_name.exit, label %.critedge188.i

.critedge188.i:                                   ; preds = %sfnt_get_name_id.exit237.i, %sfnt_get_name_id.exit224.i, %sfnt_get_name_id.exit.i
  %.0..0.323.i = phi i32 [ %.0..0..0..0..0..pre.pre332.i, %sfnt_get_name_id.exit.i ], [ %.0..0..0..0..0..pre.pre.i, %sfnt_get_name_id.exit237.i ], [ %.0..0..0..0..0..pre.pre331.i, %sfnt_get_name_id.exit224.i ] ; 2 uses
  %.0..0.252.pr.i = phi i32 [ %.0..0..0..0..0.253.pr.i, %sfnt_get_name_id.exit.i ], [ %.0..0..0..0..0.257.pr.i, %sfnt_get_name_id.exit237.i ], [ %.0..0..0..0..0.255.pr.i, %sfnt_get_name_id.exit224.i ] ; 2 uses
  %.not175.i = icmp eq i32 %.0..0.252.pr.i, -1
  br i1 %.not175.i, label %bb.ab, label %.critedge188.thread.i

.critedge188.thread.i:                            ; preds = %.critedge188.i, %._crit_edge.i232.i, %._crit_edge.i219.i, %._crit_edge.i.i
  %.0..0..pre.i = phi i32 [ %.0..0..0..0..0..pre.pre.i, %._crit_edge.i232.i ], [ %.0..0..0..0..0..pre.pre331.i, %._crit_edge.i219.i ], [ %.0..0..0..0..0..pre.pre332.i, %._crit_edge.i.i ], [ %.0..0.323.i, %.critedge188.i ]
  %.0.252270.i = phi i32 [ %.0..0..0..0..0.257.pr.i, %._crit_edge.i232.i ], [ %.0..0..0..0..0.255.pr.i, %._crit_edge.i219.i ], [ %.0..0..0..0..0.253.pr.i, %._crit_edge.i.i ], [ %.0..0.252.pr.i, %.critedge188.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !570
  %i.cz = sext i32 %.0.252270.i to i64
  %i.da = getelementptr inbounds [32 x i8], ptr %i.af, i64 %i.cz
  %i.db = tail call fastcc ptr @get_win_string(ptr noundef %i.x, ptr noundef %i.cy, ptr noundef %i.da, ptr noundef nonnull @sfnt_is_alphanumeric)
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge188.thread.i, %.critedge188.i
  %.0..0..i = phi i32 [ %.0..0..pre.i, %.critedge188.thread.i ], [ %.0..0.323.i, %.critedge188.i ] ; 2 uses
  %.0142.i = phi ptr [ %i.db, %.critedge188.thread.i ], [ null, %.critedge188.i ] ; 2 uses
  %i.dc = icmp eq ptr %.0142.i, null
  %i.dd = icmp ne i32 %.0..0..i, -1
  %or.cond.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.w, align 8, !tbaa !212
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !570
  %i.dh = load ptr, ptr %i.ae, align 8, !tbaa !565
  %i.di = sext i32 %.0..0..i to i64
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.dh, i64 %i.di
  %i.dk = tail call fastcc ptr @get_apple_string(ptr noundef %i.de, ptr noundef %i.dg, ptr noundef %i.dj, ptr noundef nonnull @sfnt_is_alphanumeric)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1143.i = phi ptr [ %i.dk, %bb.ac ], [ %.0142.i, %bb.ab ] ; 4 uses
  %.not176.i = icmp eq ptr %.1143.i, null
  br i1 %.not176.i, label %sfnt_get_var_ps_name.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1143.i) #29
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, 91
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %.1143.i, i64 91
  store i8 0, ptr %i.do, align 1, !tbaa !16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0150.i = phi i32 [ 91, %bb.af ], [ %i.dm, %bb.ae ]
  store ptr %.1143.i, ptr %i.aa, align 8, !tbaa !335
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i32 %.0150.i, ptr %i.dp, align 8, !tbaa !681
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.e
  %i.dq = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !682
  %i.ds = call i32 %i.dr(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.f) #26, !inline_history !683 ; 0 uses
  %i.dt = load i64, ptr %i.q, align 8, !tbaa !680
  %i.du = and i64 %i.dt, 2147418112               ; 2 uses
  %.not177.i = icmp eq i64 %i.du, 0
  br i1 %.not177.i, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !262
  %i.dx = and i64 %i.dw, 32768
  %.not178.i = icmp eq i64 %i.dx, 0
  br i1 %.not178.i, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !170 ; 2 uses
  %i.ea = lshr exact i64 %i.du, 16
  %i.eb = add nsw i64 %i.ea, -1                   ; 2 uses
  %i.ec = load ptr, ptr %i.f, align 8, !tbaa !684 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !686
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.ee, i64 %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !690 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store ptr null, ptr %i.i, align 8, !tbaa !429
  %i.ei = icmp eq i32 %i.eh, 6
  %i.ej = add i32 %i.eh, -256
  %or.cond4.i = icmp ult i32 %i.ej, 32512
  %or.cond191.i = or i1 %i.ei, %or.cond4.i
  br i1 %or.cond191.i, label %bb.ak, label %.thread271.i

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 328
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !692
  %i.em = trunc nuw nsw i32 %i.eh to i16
  %i.en = call i32 %i.el(ptr noundef nonnull %0, i16 noundef zeroext %i.em, ptr noundef nonnull %i.i) #26, !inline_history !683 ; 0 uses
  %.pr.i = load ptr, ptr %i.i, align 8, !tbaa !429 ; 4 uses
  %.not179.i = icmp eq ptr %.pr.i, null
  br i1 %.not179.i, label %..thread271_crit_edge.i, label %.thread273.i

..thread271_crit_edge.i:                          ; preds = %bb.ak
  %.pre324.i = load ptr, ptr %i.f, align 8, !tbaa !684
  br label %.thread271.i

.thread273.i:                                     ; preds = %bb.ak
  %i.eo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pr.i) #29
  %i.ep = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.bt

.thread271.i:                                     ; preds = %..thread271_crit_edge.i, %bb.aj
  %i.er = phi ptr [ %.pre324.i, %..thread271_crit_edge.i ], [ %i.ec, %bb.aj ]
  %1 = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %2 = load ptr, ptr %1, align 8, !tbaa !686
  %i.es = getelementptr inbounds [16 x i8], ptr %2, i64 %i.eb
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 328
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !692
  %i.ex = trunc i32 %i.eu to i16
  %i.ey = call i32 %i.ew(ptr noundef nonnull %0, i16 noundef zeroext %i.ex, ptr noundef nonnull %i.j) #26, !inline_history !683 ; 0 uses
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !429 ; 2 uses
  %.not180.i = icmp eq ptr %i.ez, null
  br i1 %.not180.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %.thread271.i
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !681
  %i.fc = add i32 %i.fb, 1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ez) #29
  %i.ff = add i64 %i.fe, 1
  %i.fg = add i64 %i.ff, %i.fd
  %i.fh = call ptr @ft_mem_qalloc(ptr noundef %i.x, i64 noundef %i.fg, ptr noundef nonnull %i.c) #26 ; 3 uses
  %i.fi = load i32, ptr %i.c, align 4, !tbaa !3
  %.not181.i = icmp eq i32 %i.fi, 0
  br i1 %.not181.i, label %bb.am, label %.thread277.i

.thread277.i:                                     ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %sfnt_get_var_ps_name.exit

bb.am:                                            ; preds = %bb.al
  %i.fj = load ptr, ptr %i.aa, align 8, !tbaa !335
  %i.fk = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.fh, ptr noundef nonnull dereferenceable(1) %i.fj) #26 ; 0 uses
  %i.fl = load i32, ptr %i.fa, align 8, !tbaa !681
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 2 uses
  store i8 45, ptr %i.fn, align 1, !tbaa !16
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !429 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !16  ; 2 uses
  %.not182297.i = icmp eq i8 %i.fq, 0
  br i1 %.not182297.i, label %.thread281.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %bb.ao
  %i.fr = phi i8 [ %i.gb, %bb.ao ], [ %i.fq, %bb.am ] ; 2 uses
  %.0136299.i = phi ptr [ %i.ga, %bb.ao ], [ %i.fp, %bb.am ]
  %.0151298.i = phi ptr [ %.1152.i, %bb.ao ], [ %i.fo, %bb.am ] ; 3 uses
  %i.fs = sext i8 %i.fr to i32                    ; 3 uses
  %i.ft = add nsw i32 %i.fs, -48
  %i.fu = icmp ult i32 %i.ft, 10
  %i.fv = add nsw i32 %i.fs, -65
  %i.fw = icmp ult i32 %i.fv, 26
  %or.cond193.i = select i1 %i.fu, i1 true, i1 %i.fw
  %i.fx = add nsw i32 %i.fs, -97
  %i.fy = icmp ult i32 %i.fx, 26
  %or.cond195.i = select i1 %or.cond193.i, i1 true, i1 %i.fy
  br i1 %or.cond195.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.0151298.i, i64 1
  store i8 %i.fr, ptr %.0151298.i, align 1, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i
  %.1152.i = phi ptr [ %i.fz, %bb.an ], [ %.0151298.i, %.lr.ph.i ] ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0136299.i, i64 1 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !16  ; 2 uses
  %.not182.i = icmp eq i8 %i.gb, 0
  br i1 %.not182.i, label %.thread281.i, label %.lr.ph.i, !llvm.loop !694

.thread281.i:                                     ; preds = %bb.ao, %bb.am
  %.0151.lcssa.i = phi ptr [ %i.fo, %bb.am ], [ %.1152.i, %bb.ao ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0151.lcssa.i, i64 1
  store i8 0, ptr %.0151.lcssa.i, align 1, !tbaa !16
  %i.gd = load ptr, ptr %i.j, align 8, !tbaa !429
  call void @ft_mem_free(ptr noundef %i.x, ptr noundef %i.gd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.bt

bb.ap:                                            ; preds = %.thread271.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ai, %bb.ah
  %i.ge = load ptr, ptr %i.f, align 8, !tbaa !684
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !695
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !681
  %i.gj = load i32, ptr %i.d, align 4, !tbaa !3
  %i.gk = mul i32 %i.gj, 17
  %i.gl = add i32 %i.gi, 1
  %i.gm = add i32 %i.gl, %i.gk
  %i.gn = zext i32 %i.gm to i64
  %i.go = call ptr @ft_mem_qalloc(ptr noundef %i.x, i64 noundef %i.gn, ptr noundef nonnull %i.c) #26 ; 3 uses
  %i.gp = load i32, ptr %i.c, align 4, !tbaa !3
  %.not183.i = icmp eq i32 %i.gp, 0
  br i1 %.not183.i, label %bb.ar, label %sfnt_get_var_ps_name.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load ptr, ptr %i.aa, align 8, !tbaa !335
  %i.gr = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.go, ptr noundef nonnull dereferenceable(1) %i.gq) #26 ; 0 uses
  %i.gs = load i32, ptr %i.gh, align 8, !tbaa !681
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.d, align 4, !tbaa !3
  %.not311.i = icmp eq i32 %i.gv, 0
  br i1 %.not311.i, label %._crit_edge.i, label %.lr.ph303.preheader.i

.lr.ph303.preheader.i:                            ; preds = %bb.ar
  %.pre327.i.a = load ptr, ptr %i.e, align 8, !tbaa !696
  br label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %bb.bs, %.lr.ph303.preheader.i
  %i.gw = phi ptr [ %i.ma, %bb.bs ], [ %.pre327.i.a, %.lr.ph303.preheader.i ]
  %.0135302.i = phi ptr [ %i.mb, %bb.bs ], [ %i.gg, %.lr.ph303.preheader.i ] ; 3 uses
  %.0139301.i = phi i32 [ %i.ly, %bb.bs ], [ 0, %.lr.ph303.preheader.i ]
  %.4155300.i = phi ptr [ %.9.i, %bb.bs ], [ %i.gu, %.lr.ph303.preheader.i ] ; 5 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !160
  %i.gy = getelementptr inbounds nuw i8, ptr %.0135302.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !697
  %i.ha = icmp eq i64 %i.gx, %i.gz
  br i1 %i.ha, label %bb.bs, label %bb.as

bb.as:                                            ; preds = %.lr.ph303.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.4155300.i, i64 1 ; 3 uses
  store i8 95, ptr %.4155300.i, align 1, !tbaa !16
  %i.hc = load ptr, ptr %i.e, align 8, !tbaa !696
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !160
  %i.he = trunc i64 %i.hd to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hg = getelementptr inbounds nuw i8, ptr %.4155300.i, i64 2
  store i8 48, ptr %i.hb, align 1, !tbaa !16
  br label %fixed2float.exit.i

bb.au:                                            ; preds = %bb.as
  %i.hh = icmp slt i32 %i.he, 0
  br i1 %i.hh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hi = getelementptr inbounds nuw i8, ptr %.4155300.i, i64 2
  store i8 45, ptr %i.hb, align 1, !tbaa !16
  %i.hj = sub i32 0, %i.he
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.050.i.i = phi i32 [ %i.hj, %bb.av ], [ %i.he, %bb.au ] ; 2 uses
  %.047.i.i = phi ptr [ %i.hi, %bb.av ], [ %i.hb, %bb.au ] ; 10 uses
  %i.hk = lshr i32 %.050.i.i, 16                  ; 2 uses
  %i.hl = and i32 %.050.i.i, 65535                ; 2 uses
  %.not75.i.i = icmp eq i32 %i.hk, 0
  br i1 %.not75.i.i, label %._crit_edge.i240.i, label %.lr.ph.i238.i

.preheader.i.i:                                   ; preds = %.lr.ph.i238.i
  %i.hm = icmp ugt ptr %i.ii, %i.a
  br i1 %i.hm, label %iter.check, label %._crit_edge.i240.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.hn = ptrtoaddr ptr %i.ii to i64
  %i.ho = sub i64 %i.hn, %i.b                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ho, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.hp = ptrtoaddr ptr %i.ii to i64
  %i.hq = sub i64 %i.hp, %i.b
  %scevgep = getelementptr i8, ptr %.047.i.i, i64 %i.hq
  %bound0 = icmp ult ptr %.047.i.i, %i.ii
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph80.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check102 = icmp ult i64 %i.ho, 32
  br i1 %min.iters.check102, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ho, 24
  %n.vec = and i64 %i.ho, -32                     ; 5 uses
  %i.hr = sub i64 0, %n.vec
  %i.hs = getelementptr i8, ptr %i.ii, i64 %i.hr
  %i.ht = getelementptr i8, ptr %.047.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hu = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.ii, i64 %i.hu ; 2 uses
  %next.gep103 = getelementptr i8, ptr %.047.i.i, i64 %index ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.hw = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <16 x i8>, ptr %i.hv, align 1, !tbaa !16, !alias.scope !699
  %wide.load104 = load <16 x i8>, ptr %i.hw, align 1, !tbaa !16, !alias.scope !699
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse105 = shufflevector <16 x i8> %wide.load104, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
end_hunk_0
