Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/graph?download=true
inline.NumInlined: 133
inline.NumDeleted: 40
begin_hunk_0_@graph_update:bb.a
  br i1 %.not76.i, label %bb.u, label %._crit_edge138.i

bb.t:                                             ; preds = %bb.r
  %i.cy = load ptr, ptr %i.at, align 8, !tbaa !90
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %indvars.iv151.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.168.i = phi i32 [ %.067133.i, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.064.in.i = phi ptr [ %i.cz, %bb.t ], [ %0, %bb.s ]
  %.064.i = load ptr, ptr %.064.in.i, align 8, !tbaa !117 ; 4 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !82    ; 2 uses
  %i.db = icmp eq ptr %.064.i, %i.da
  br i1 %i.db, label %bb.v, label %bb.aw

bb.v:                                             ; preds = %bb.u
  %i.dc = trunc nuw nsw i64 %indvars.iv151.i to i32 ; 2 uses
  store i32 %i.dc, ptr %i.aq, align 4, !tbaa !107
  store i32 -1, ptr %i.cu, align 4, !tbaa !118
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !97 ; 5 uses
  %.not.i78.i = icmp eq ptr %i.de, null
  br i1 %.not.i78.i, label %._crit_edge130.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !102 ; 2 uses
  %.val.i.i27 = load ptr, ptr %i.cr, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %.val.i.i27, null
  br i1 %.not.i.i.i28, label %graph_is_interesting.exit.i.i35, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i27, i64 332
  %i.dh = load i64, ptr %i.dg, align 4
  %i.di = and i64 %i.dh, 12582912
  %.not6.i.i.i29 = icmp eq i64 %i.di, 0
  br i1 %.not6.i.i.i29, label %graph_is_interesting.exit.i.i35, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = load i64, ptr %i.df, align 8
  %i.dk = and i64 %i.dj, 274877906944
  %.not7.i.i.i30 = icmp eq i64 %i.dk, 0
  br i1 %.not7.i.i.i30, label %graph_is_interesting.exit.i.i35, label %.lr.ph129.i

graph_is_interesting.exit.i.i35:                  ; preds = %bb.y, %bb.x, %bb.w
  %i.dl = tail call i32 @get_commit_action(ptr noundef %.val.i.i27, ptr noundef %i.df) #16
  %.not14.i.i = icmp eq i32 %i.dl, 1
  br i1 %.not14.i.i, label %.lr.ph129.i, label %bb.z

bb.z:                                             ; preds = %graph_is_interesting.exit.i.i35
  %i.dm = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 332
  %i.do = load i64, ptr %i.dn, align 4
  %i.dp = and i64 %i.do, 549755813888
  %.not.i10.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i10.i.i, label %.preheader.i.i.i, label %._crit_edge130.i

.preheader.i.i.i:                                 ; preds = %bb.z, %graph_is_interesting.exit.i.i.i
  %.pn.i.i.i = phi ptr [ %.0.i11.i.i, %graph_is_interesting.exit.i.i.i ], [ %i.de, %bb.z ]
  %.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  %.0.i11.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !104 ; 5 uses
  %.not9.i.i.i = icmp eq ptr %.0.i11.i.i, null
  br i1 %.not9.i.i.i, label %._crit_edge130.i, label %bb.aa

bb.aa:                                            ; preds = %.preheader.i.i.i
  %i.dq = load ptr, ptr %.0.i11.i.i, align 8, !tbaa !102 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %graph_is_interesting.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 332
  %i.ds = load i64, ptr %i.dr, align 4
  %i.dt = and i64 %i.ds, 12582912
  %.not6.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not6.i.i.i.i, label %graph_is_interesting.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = load i64, ptr %i.dq, align 8
  %i.dv = and i64 %i.du, 274877906944
  %.not7.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not7.i.i.i.i, label %graph_is_interesting.exit.i.i.i, label %.lr.ph129.i

graph_is_interesting.exit.i.i.i:                  ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.dw = tail call i32 @get_commit_action(ptr noundef %.val.i.i.i, ptr noundef %i.dq) #16
  %.not13.i.i.i = icmp eq i32 %i.dw, 1
  br i1 %.not13.i.i.i, label %.lr.ph129.i, label %.preheader.i.i.i, !llvm.loop !105

.lr.ph129.i:                                      ; preds = %graph_is_interesting.exit.i.i.i, %bb.ac, %graph_is_interesting.exit.i.i35, %bb.y
  %.0.i.ph.i = phi ptr [ %i.de, %graph_is_interesting.exit.i.i35 ], [ %i.de, %bb.y ], [ %.0.i11.i.i, %bb.ac ], [ %.0.i11.i.i, %graph_is_interesting.exit.i.i.i ]
  %i.dx = icmp ne i32 %.168.i, 0
  br label %bb.ad

bb.ad:                                            ; preds = %next_interesting_parent.exit.i, %.lr.ph129.i
  %.065128.i = phi ptr [ %.0.i.ph.i, %.lr.ph129.i ], [ %.0.i82.i, %next_interesting_parent.exit.i ] ; 2 uses
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !88  ; 3 uses
  %i.dz = icmp slt i32 %i.dy, 2
  %or.cond.i = select i1 %i.dz, i1 %i.dx, i1 false
  br i1 %or.cond.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = load i16, ptr %i.cs, align 8, !tbaa !89
  %i.eb = zext i16 %i.ea to i32
  %i.ec = add nuw nsw i32 %i.eb, 1
  %i.ed = load i16, ptr @column_colors_max, align 2, !tbaa !16
  %i.ee = zext i16 %i.ed to i32
  %i.ef = urem i32 %i.ec, %i.ee
  %i.eg = trunc nuw i32 %i.ef to i16
  store i16 %i.eg, ptr %i.cs, align 8, !tbaa !89
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eh = load ptr, ptr %.065128.i, align 8, !tbaa !102 ; 3 uses
  %i.ei = load i32, ptr %i.aw, align 8, !tbaa !109 ; 5 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  %i.ek = load ptr, ptr %i.au, align 8, !tbaa !92 ; 3 uses
  br i1 %i.ej, label %.lr.ph.i.i.i, label %graph_find_new_column_by_commit.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.af
  %wide.trip.count.i.i.i = zext nneg i32 %i.ei to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ah ] ; 3 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !119
  %i.en = icmp eq ptr %i.em, %i.eh
  br i1 %i.en, label %graph_find_new_column_by_commit.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %graph_find_new_column_by_commit.exit.thread.i.i, label %bb.ag, !llvm.loop !121

graph_find_new_column_by_commit.exit.i.i:         ; preds = %bb.ag
  %i.eo = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %bb.al

graph_find_new_column_by_commit.exit.thread.i.i:  ; preds = %bb.ah, %bb.af
  %i.ep = add nsw i32 %i.ei, 1
  store i32 %i.ep, ptr %i.aw, align 8, !tbaa !109
  %i.eq = sext i32 %i.ei to i64                   ; 2 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ek, i64 %i.eq
  store ptr %i.eh, ptr %i.er, align 8, !tbaa !119
  %i.es = load i32, ptr %i.ay, align 4, !tbaa !110 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i42.i.i, label %._crit_edge.i.i.i

.lr.ph.i42.i.i:                                   ; preds = %graph_find_new_column_by_commit.exit.thread.i.i
  %i.eu = load ptr, ptr %i.at, align 8, !tbaa !90
  %wide.trip.count.i43.i.i = zext nneg i32 %i.es to i64
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next.i45.i.i = add nuw nsw i64 %indvars.iv.i44.i.i, 1 ; 2 uses
  %exitcond.not.i46.i.i = icmp eq i64 %indvars.iv.next.i45.i.i, %wide.trip.count.i43.i.i
  br i1 %exitcond.not.i46.i.i, label %._crit_edge.i.i.i, label %bb.aj, !llvm.loop !122

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i42.i.i
  %indvars.iv.i44.i.i = phi i64 [ 0, %.lr.ph.i42.i.i ], [ %indvars.iv.next.i45.i.i, %bb.ai ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %indvars.iv.i44.i.i ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !119
  %i.ex = icmp eq ptr %i.ew, %i.eh
  br i1 %i.ex, label %bb.ak, label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br label %graph_find_commit_color.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ai, %graph_find_new_column_by_commit.exit.thread.i.i
  %i.ez = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1768
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !123
  %i.fc = tail call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.fb) #16
  %.0.in.i.i.i.i = select i1 %i.fc, ptr %i.cs, ptr @column_colors_max
  %.pre54.i.i = load ptr, ptr %i.au, align 8, !tbaa !92
  %.pre154.pre.i = load i32, ptr %i.a, align 8, !tbaa !88
  br label %graph_find_commit_color.exit.i.i

graph_find_commit_color.exit.i.i:                 ; preds = %._crit_edge.i.i.i, %bb.ak
  %.pre154.i = phi i32 [ %i.dy, %bb.ak ], [ %.pre154.pre.i, %._crit_edge.i.i.i ]
  %i.fd = phi ptr [ %i.ek, %bb.ak ], [ %.pre54.i.i, %._crit_edge.i.i.i ]
  %.09.in.i.i.i = phi ptr [ %i.ey, %bb.ak ], [ %.0.in.i.i.i.i, %._crit_edge.i.i.i ]
  %.09.i.i.i = load i16, ptr %.09.in.i.i.i, align 2, !tbaa !16
  %i.fe = getelementptr inbounds [16 x i8], ptr %i.fd, i64 %i.eq
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i16 %.09.i.i.i, ptr %i.ff, align 8, !tbaa !124
  br label %bb.al

bb.al:                                            ; preds = %graph_find_commit_color.exit.i.i, %graph_find_new_column_by_commit.exit.i.i
  %i.fg = phi i32 [ %.pre154.i, %graph_find_commit_color.exit.i.i ], [ %i.dy, %graph_find_new_column_by_commit.exit.i.i ] ; 2 uses
  %.0.i79.i = phi i32 [ %i.ei, %graph_find_commit_color.exit.i.i ], [ %i.eo, %graph_find_new_column_by_commit.exit.i.i ] ; 3 uses
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fi = load i32, ptr %i.cu, align 4, !tbaa !118
  %i.fj = icmp eq i32 %i.fi, -1
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fk = sub nsw i32 %i.dc, %.0.i79.i            ; 4 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  %i.fm = shl i32 %i.fk, 1
  %.neg48.i.i = sub i32 3, %i.fm
  %.neg49.i.i = select i1 %i.fl, i32 %.neg48.i.i, i32 -1
  %i.fn = icmp slt i32 %i.fk, 1                   ; 2 uses
  %i.fo = zext i1 %i.fn to i32                    ; 2 uses
  store i32 %i.fo, ptr %i.cu, align 4, !tbaa !118
  %i.fp = add nsw i32 %i.fg, -2
  %i.fq = add nuw nsw i32 %i.fp, %i.fo
  store i32 %i.fq, ptr %i.cn, align 8, !tbaa !115
  %i.fr = load i32, ptr %i.cm, align 4, !tbaa !114 ; 2 uses
  %not..i.i = icmp sgt i32 %i.fk, 0
  %i.fs = select i1 %not..i.i, i32 %.neg49.i.i, i32 0
  %i.ft = add nsw i32 %i.fr, %i.fs
  %i.fu = select i1 %i.fn, i32 2, i32 0
  %i.fv = add nsw i32 %i.fr, %i.fu
  store i32 %i.fv, ptr %i.cm, align 4, !tbaa !114
  br label %graph_insert_into_new_columns.exit.i

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.fw = load i32, ptr %i.cn, align 8, !tbaa !115
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %bb.ap, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ao
  %.pre56.i.i = load i32, ptr %i.cm, align 4, !tbaa !114
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fy = load ptr, ptr %i.ct, align 8, !tbaa !93
  %i.fz = load i32, ptr %i.cm, align 4, !tbaa !114 ; 2 uses
  %i.ga = add nsw i32 %i.fz, -2                   ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !77
  %i.ge = icmp eq i32 %.0.i79.i, %i.gd
  br i1 %i.ge, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 -1, ptr %i.cn, align 8, !tbaa !115
  br label %graph_insert_into_new_columns.exit.i

bb.ar:                                            ; preds = %bb.ap, %._crit_edge.i.i
  %i.gf = phi i32 [ %.pre56.i.i, %._crit_edge.i.i ], [ %i.fz, %bb.ap ] ; 2 uses
  %i.gg = add nsw i32 %i.gf, 2
  store i32 %i.gg, ptr %i.cm, align 4, !tbaa !114
  br label %graph_insert_into_new_columns.exit.i

graph_insert_into_new_columns.exit.i:             ; preds = %bb.ar, %bb.aq, %bb.an
  %.039.i.i = phi i32 [ %i.ft, %bb.an ], [ %i.ga, %bb.aq ], [ %i.gf, %bb.ar ]
  %i.gh = load ptr, ptr %i.ct, align 8, !tbaa !93
  %i.gi = sext i32 %.039.i.i to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gi
  store i32 %.0.i79.i, ptr %i.gj, align 4, !tbaa !77
  %i.gk = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 332
  %i.gm = load i64, ptr %i.gl, align 4
  %i.gn = and i64 %i.gm, 549755813888
  %.not.i80.i = icmp eq i64 %i.gn, 0
  br i1 %.not.i80.i, label %.preheader.i81.i, label %._crit_edge130.i

.preheader.i81.i:                                 ; preds = %graph_insert_into_new_columns.exit.i, %graph_is_interesting.exit.i87.i
  %.pn.i.i31 = phi ptr [ %.0.i82.i, %graph_is_interesting.exit.i87.i ], [ %.065128.i, %graph_insert_into_new_columns.exit.i ]
  %.0.in.i.i32 = getelementptr inbounds nuw i8, ptr %.pn.i.i31, i64 8
  %.0.i82.i = load ptr, ptr %.0.in.i.i32, align 8, !tbaa !104 ; 4 uses
  %.not9.i.i33 = icmp eq ptr %.0.i82.i, null
  br i1 %.not9.i.i33, label %._crit_edge130.i, label %bb.as

bb.as:                                            ; preds = %.preheader.i81.i
  %i.go = load ptr, ptr %.0.i82.i, align 8, !tbaa !102 ; 2 uses
  %.val.i83.i = load ptr, ptr %i.cr, align 8, !tbaa !87 ; 3 uses
  %.not.i.i84.i = icmp eq ptr %.val.i83.i, null
  br i1 %.not.i.i84.i, label %graph_is_interesting.exit.i87.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i83.i, i64 332
  %i.gq = load i64, ptr %i.gp, align 4
  %i.gr = and i64 %i.gq, 12582912
  %.not6.i.i85.i = icmp eq i64 %i.gr, 0
  br i1 %.not6.i.i85.i, label %graph_is_interesting.exit.i87.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gs = load i64, ptr %i.go, align 8
  %i.gt = and i64 %i.gs, 274877906944
  %.not7.i.i86.i = icmp eq i64 %i.gt, 0
  br i1 %.not7.i.i86.i, label %graph_is_interesting.exit.i87.i, label %next_interesting_parent.exit.i

graph_is_interesting.exit.i87.i:                  ; preds = %bb.au, %bb.at, %bb.as
  %i.gu = tail call i32 @get_commit_action(ptr noundef %.val.i83.i, ptr noundef %i.go) #16
  %.not13.i.i34 = icmp eq i32 %i.gu, 1
  br i1 %.not13.i.i34, label %next_interesting_parent.exit.i, label %.preheader.i81.i, !llvm.loop !105

next_interesting_parent.exit.i:                   ; preds = %graph_is_interesting.exit.i87.i, %bb.au
  br label %bb.ad, !llvm.loop !125

._crit_edge130.i:                                 ; preds = %.preheader.i.i.i, %graph_insert_into_new_columns.exit.i, %.preheader.i81.i, %bb.z, %bb.v
  %i.gv = load i32, ptr %i.a, align 8, !tbaa !88
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %._crit_edge130.i
  %i.gx = load i32, ptr %i.cm, align 4, !tbaa !114
  %i.gy = add nsw i32 %i.gx, 2
  store i32 %i.gy, ptr %i.cm, align 4, !tbaa !114
  br label %bb.bg

bb.aw:                                            ; preds = %bb.u
  %i.gz = load i32, ptr %i.aw, align 8, !tbaa !109 ; 5 uses
  %i.ha = icmp sgt i32 %i.gz, 0
  %i.hb = load ptr, ptr %i.au, align 8, !tbaa !92 ; 3 uses
  br i1 %i.ha, label %.lr.ph.i.i107.i, label %graph_find_new_column_by_commit.exit.thread.i88.i

.lr.ph.i.i107.i:                                  ; preds = %bb.aw
  %wide.trip.count.i.i108.i = zext nneg i32 %i.gz to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i.i107.i
  %indvars.iv.i.i109.i = phi i64 [ 0, %.lr.ph.i.i107.i ], [ %indvars.iv.next.i.i110.i, %bb.ay ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %indvars.iv.i.i109.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !119
  %i.he = icmp eq ptr %i.hd, %.064.i
  br i1 %i.he, label %graph_find_new_column_by_commit.exit.i112.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next.i.i110.i = add nuw nsw i64 %indvars.iv.i.i109.i, 1 ; 2 uses
  %exitcond.not.i.i111.i = icmp eq i64 %indvars.iv.next.i.i110.i, %wide.trip.count.i.i108.i
  br i1 %exitcond.not.i.i111.i, label %graph_find_new_column_by_commit.exit.thread.i88.i, label %bb.ax, !llvm.loop !121

graph_find_new_column_by_commit.exit.i112.i:      ; preds = %bb.ax
  %i.hf = trunc nuw nsw i64 %indvars.iv.i.i109.i to i32
  br label %bb.bc

graph_find_new_column_by_commit.exit.thread.i88.i: ; preds = %bb.ay, %bb.aw
  %i.hg = add nsw i32 %i.gz, 1
  store i32 %i.hg, ptr %i.aw, align 8, !tbaa !109
  %i.hh = sext i32 %i.gz to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [16 x i8], ptr %i.hb, i64 %i.hh
  store ptr %.064.i, ptr %i.hi, align 8, !tbaa !119
  %i.hj = icmp sgt i32 %i.cv, 0
  br i1 %i.hj, label %.lr.ph.i42.i102.i, label %._crit_edge.i.i89.i

.lr.ph.i42.i102.i:                                ; preds = %graph_find_new_column_by_commit.exit.thread.i88.i
  %i.hk = load ptr, ptr %i.at, align 8, !tbaa !90
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %indvars.iv.next.i45.i105.i = add nuw nsw i64 %indvars.iv.i44.i104.i, 1 ; 2 uses
  %exitcond.not.i46.i106.i = icmp eq i64 %indvars.iv.next.i45.i105.i, %i.cw
  br i1 %exitcond.not.i46.i106.i, label %._crit_edge.i.i89.i, label %bb.ba, !llvm.loop !122

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i42.i102.i
  %indvars.iv.i44.i104.i = phi i64 [ 0, %.lr.ph.i42.i102.i ], [ %indvars.iv.next.i45.i105.i, %bb.az ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv.i44.i104.i ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !119
  %i.hn = icmp eq ptr %i.hm, %.064.i
  br i1 %i.hn, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  br label %graph_find_commit_color.exit.i92.i

._crit_edge.i.i89.i:                              ; preds = %bb.az, %graph_find_new_column_by_commit.exit.thread.i88.i
  %i.hp = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1768
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !123
  %i.hs = tail call zeroext i1 @want_color_fd(i32 noundef 1, i32 noundef %i.hr) #16
  %.0.in.i.i.i90.i = select i1 %i.hs, ptr %i.cs, ptr @column_colors_max
  %.pre54.i91.i = load ptr, ptr %i.au, align 8, !tbaa !92
  br label %graph_find_commit_color.exit.i92.i

graph_find_commit_color.exit.i92.i:               ; preds = %._crit_edge.i.i89.i, %bb.bb
  %i.ht = phi ptr [ %i.hb, %bb.bb ], [ %.pre54.i91.i, %._crit_edge.i.i89.i ]
  %.09.in.i.i93.i = phi ptr [ %i.ho, %bb.bb ], [ %.0.in.i.i.i90.i, %._crit_edge.i.i89.i ]
  %.09.i.i94.i = load i16, ptr %.09.in.i.i93.i, align 2, !tbaa !16
  %i.hu = getelementptr inbounds [16 x i8], ptr %i.ht, i64 %i.hh
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i16 %.09.i.i94.i, ptr %i.hv, align 8, !tbaa !124
  br label %bb.bc

bb.bc:                                            ; preds = %graph_find_commit_color.exit.i92.i, %graph_find_new_column_by_commit.exit.i112.i
  %.0.i95.i = phi i32 [ %i.gz, %graph_find_commit_color.exit.i92.i ], [ %i.hf, %graph_find_new_column_by_commit.exit.i112.i ] ; 2 uses
  %i.hw = load i32, ptr %i.cn, align 8, !tbaa !115
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.bd, label %._crit_edge.i96.i

._crit_edge.i96.i:                                ; preds = %bb.bc
  %.pre56.i98.i = load i32, ptr %i.cm, align 4, !tbaa !114
  %.pre.pre.i = load ptr, ptr %i.ct, align 8, !tbaa !93
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.hy = load ptr, ptr %i.ct, align 8, !tbaa !93 ; 3 uses
  %i.hz = load i32, ptr %i.cm, align 4, !tbaa !114 ; 2 uses
  %i.ia = add nsw i32 %i.hz, -2
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !77
  %i.ie = icmp eq i32 %.0.i95.i, %i.id
  br i1 %i.ie, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 -1, ptr %i.cn, align 8, !tbaa !115
  br label %graph_insert_into_new_columns.exit113.i

bb.bf:                                            ; preds = %bb.bd, %._crit_edge.i96.i
  %.pre.i = phi ptr [ %.pre.pre.i, %._crit_edge.i96.i ], [ %i.hy, %bb.bd ]
  %i.if = phi i32 [ %.pre56.i98.i, %._crit_edge.i96.i ], [ %i.hz, %bb.bd ] ; 2 uses
  %i.ig = add nsw i32 %i.if, 2
  store i32 %i.ig, ptr %i.cm, align 4, !tbaa !114
  %.pre157.i = sext i32 %i.if to i64
  br label %graph_insert_into_new_columns.exit113.i

graph_insert_into_new_columns.exit113.i:          ; preds = %bb.bf, %bb.be
end_hunk_0
