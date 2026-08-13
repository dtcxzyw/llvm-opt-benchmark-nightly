inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@read_color_map:bb.a
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !38
  tail call void %i.bm(ptr noundef nonnull %0) #2, !inline_history !44
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = tail call i32 @getc(ptr noundef %1)
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bp = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i32 1043, ptr %i.bq, align 8, !tbaa !34
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !38
  tail call void %i.br(ptr noundef nonnull %0) #2, !inline_history !44
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bs = tail call i32 @getc(ptr noundef %1)
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bu = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i32 1043, ptr %i.bv, align 8, !tbaa !34
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !38
  tail call void %i.bw(ptr noundef nonnull %0) #2, !inline_history !44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bx = icmp ne i32 %i.p, 73
  %i.by = icmp ne i32 %i.u, 70
  %or.cond.i = or i1 %i.bx, %i.by
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store i32 1043, ptr %i.ca, align 8, !tbaa !34
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !38
  tail call void %i.cb(ptr noundef nonnull %0) #2, !inline_history !44
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cc = and i32 %i.bi, 128
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ce = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store i32 1043, ptr %i.cf, align 8, !tbaa !34
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !38
  tail call void %i.cg(ptr noundef nonnull %0) #2, !inline_history !44
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ch = and i32 %i.bi, 7
  %i.ci = shl nuw nsw i32 2, %i.ch
  br label %bb.ag

bb.ag:                                            ; preds = %add_map_entry.exit.i, %bb.af
  %.135.i = phi i32 [ 0, %bb.af ], [ %i.eb, %add_map_entry.exit.i ]
  %i.cj = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.ck = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.cl = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.cm = icmp eq i32 %i.cj, -1
  %i.cn = icmp eq i32 %i.ck, -1
  %or.cond4.i = or i1 %i.cm, %i.cn
  %i.co = icmp eq i32 %i.cl, -1
  %or.cond6.i = or i1 %or.cond4.i, %i.co
  br i1 %or.cond6.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cp = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store i32 1043, ptr %i.cq, align 8, !tbaa !34
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !38
  tail call void %i.cr(ptr noundef nonnull %0) #2, !inline_history !44
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !42  ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !45 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !45 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !45 ; 2 uses
  %i.cy = load i32, ptr %i.n, align 4, !tbaa !43  ; 4 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.preheader.i.i, label %._crit_edge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ai
  %wide.trip.count.i.i = zext nneg i32 %i.cy to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.al, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.al ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.i.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !37
  %i.dc = zext i8 %i.db to i32
  %i.dd = icmp eq i32 %i.cj, %i.dc
  br i1 %i.dd, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv.i.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !37
  %i.dg = zext i8 %i.df to i32
  %i.dh = icmp eq i32 %i.ck, %i.dg
  br i1 %i.dh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.i.i
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !37
  %i.dk = zext i8 %i.dj to i32
  %i.dl = icmp eq i32 %i.cl, %i.dk
  br i1 %i.dl, label %add_map_entry.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !46

._crit_edge.i.i:                                  ; preds = %bb.al
  %i.dm = icmp sgt i32 %i.cy, 255
  br i1 %i.dm, label %bb.am, label %._crit_edge.thread.i.i

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.dn = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store i32 59, ptr %i.do, align 8, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 44
  store i32 256, ptr %i.dp, align 4, !tbaa !37
  %i.dq = load ptr, ptr %0, align 8, !tbaa !33
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !38
  tail call void %i.dr(ptr noundef nonnull %0) #2, !inline_history !48
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.am, %._crit_edge.i.i, %bb.ai
  %i.ds = trunc i32 %i.cj to i8
  %i.dt = sext i32 %i.cy to i64                   ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %i.ct, i64 %i.dt
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !37
  %i.dv = trunc i32 %i.ck to i8
  %i.dw = getelementptr inbounds i8, ptr %i.cv, i64 %i.dt
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !37
  %i.dx = trunc i32 %i.cl to i8
  %i.dy = getelementptr inbounds i8, ptr %i.cx, i64 %i.dt
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !37
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !43
  %i.ea = add nsw i32 %i.dz, 1
  store i32 %i.ea, ptr %i.n, align 4, !tbaa !43
  br label %add_map_entry.exit.i

add_map_entry.exit.i:                             ; preds = %bb.ak, %._crit_edge.thread.i.i
  %i.eb = add nuw nsw i32 %.135.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.eb, %i.ci
  br i1 %exitcond.not.i, label %read_gif_map.exit, label %bb.ag, !llvm.loop !49

bb.an:                                            ; preds = %bb.c
  %i.ec = tail call i32 @getc(ptr noundef %1)
  %i.ed = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %i.ee = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %i.ef = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %i.eg = icmp eq i32 %i.ed, 0                    ; 3 uses
  %i.eh = icmp eq i32 %i.ee, 0                    ; 3 uses
  %or.cond.i18 = select i1 %i.eg, i1 true, i1 %i.eh
  %i.ei = icmp eq i32 %i.ef, 0
  %or.cond3.i = select i1 %or.cond.i18, i1 true, i1 %i.ei
  br i1 %or.cond3.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ej = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  store i32 1043, ptr %i.ek, align 8, !tbaa !34
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !38
  tail call void %i.el(ptr noundef nonnull %0) #2, !inline_history !50
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not.i = icmp eq i32 %i.ef, 255
  br i1 %.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store i32 1043, ptr %i.en, align 8, !tbaa !34
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !38
  tail call void %i.eo(ptr noundef nonnull %0) #2, !inline_history !50
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  switch i32 %i.ec, label %read_gif_map.exit.sink.split [
    i32 51, label %.preheader97.i
    i32 54, label %.preheader99.i
  ]

.preheader99.i:                                   ; preds = %bb.ar
  %brmerge = or i1 %i.eg, %i.eh
  br i1 %brmerge, label %read_gif_map.exit, label %.preheader98.lr.ph.split.i

.preheader98.lr.ph.split.i:                       ; preds = %.preheader99.i
  %2 = zext i32 %i.ed to i64
  %3 = zext i32 %i.ee to i64
  %flatten.tripcount.i = mul nuw i64 %3, %2
  br label %bb.bl

.preheader97.i:                                   ; preds = %bb.ar
  %brmerge29 = or i1 %i.eg, %i.eh
  br i1 %brmerge29, label %read_gif_map.exit, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %.preheader97.i
  %4 = zext i32 %i.ed to i64
  %5 = zext i32 %i.ee to i64
  %flatten.tripcount126.i = mul nuw i64 %5, %4
  br label %.critedge.i.preheader.i

.critedge.i.preheader.i:                          ; preds = %._crit_edge118.i, %.preheader.i.a
  %indvar124.i = phi i64 [ 0, %.preheader.i.a ], [ %indvar.next125.i, %._crit_edge118.i ]
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %.critedge.i.preheader.i
  %i.ep = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 35
  br i1 %i.eq, label %.preheader.i.i.i, label %pbm_getc.exit.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i, %.preheader.i.i.i
  %i.er = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.er, label %.preheader.i.i.i [
    i32 -1, label %pbm_getc.exit.i.i
    i32 10, label %pbm_getc.exit.i.i
  ]

pbm_getc.exit.i.i:                                ; preds = %.preheader.i.i.i, %.preheader.i.i.i, %.critedge.i.i
  %.0.i.i.i = phi i32 [ %i.ep, %.critedge.i.i ], [ %i.er, %.preheader.i.i.i ], [ %i.er, %.preheader.i.i.i ] ; 3 uses
  switch i32 %.0.i.i.i, label %bb.as [
    i32 -1, label %.thread.i.i
    i32 32, label %.critedge.i.i.backedge
    i32 13, label %.critedge.i.i.backedge
    i32 10, label %.critedge.i.i.backedge
    i32 9, label %.critedge.i.i.backedge
  ]

.critedge.i.i.backedge:                           ; preds = %pbm_getc.exit.i.i, %pbm_getc.exit.i.i, %pbm_getc.exit.i.i, %pbm_getc.exit.i.i
  br label %.critedge.i.i

.thread.i.i:                                      ; preds = %pbm_getc.exit.i.i
  %i.es = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store i32 1043, ptr %i.et, align 8, !tbaa !34
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !38
  tail call void %i.eu(ptr noundef nonnull %0) #2, !inline_history !51
  br label %bb.at

bb.as:                                            ; preds = %pbm_getc.exit.i.i
  %i.ev = add i32 %.0.i.i.i, -58
  %or.cond5.i.i = icmp ult i32 %i.ev, -10
  br i1 %or.cond5.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %.thread.i.i
  %i.ew = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i32 1043, ptr %i.ex, align 8, !tbaa !34
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !38
  tail call void %i.ey(ptr noundef nonnull %0) #2, !inline_history !51
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ez = add nsw i32 %.0.i.i.i, -48
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.0.i.i = phi i32 [ %i.ez, %bb.au ], [ %i.fg, %bb.aw ] ; 3 uses
  %i.fa = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 35
  br i1 %i.fb, label %.preheader.i30.i.i, label %pbm_getc.exit31.i.i

.preheader.i30.i.i:                               ; preds = %bb.av, %.preheader.i30.i.i
  %i.fc = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.fc, label %.preheader.i30.i.i [
    i32 -1, label %pbm_getc.exit31.i.i
    i32 10, label %pbm_getc.exit31.i.i
  ]

pbm_getc.exit31.i.i:                              ; preds = %.preheader.i30.i.i, %.preheader.i30.i.i, %bb.av
  %.0.i29.i.i = phi i32 [ %i.fa, %bb.av ], [ %i.fc, %.preheader.i30.i.i ], [ %i.fc, %.preheader.i30.i.i ]
  %i.fd = add i32 %.0.i29.i.i, -48                ; 2 uses
  %i.fe = icmp ult i32 %i.fd, 10
  br i1 %i.fe, label %bb.aw, label %.critedge.i64.i

bb.aw:                                            ; preds = %pbm_getc.exit31.i.i
  %i.ff = mul i32 %.0.i.i, 10
  %i.fg = add i32 %i.fd, %i.ff
  br label %bb.av, !llvm.loop !52

.critedge.i64.i:                                  ; preds = %pbm_getc.exit31.i.i, %.critedge.i64.i.backedge
  %i.fh = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 35
  br i1 %i.fi, label %.preheader.i.i74.i, label %pbm_getc.exit.i65.i

.preheader.i.i74.i:                               ; preds = %.critedge.i64.i, %.preheader.i.i74.i
  %i.fj = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.fj, label %.preheader.i.i74.i [
    i32 -1, label %pbm_getc.exit.i65.i
    i32 10, label %pbm_getc.exit.i65.i
  ]

pbm_getc.exit.i65.i:                              ; preds = %.preheader.i.i74.i, %.preheader.i.i74.i, %.critedge.i64.i
  %.0.i.i66.i = phi i32 [ %i.fh, %.critedge.i64.i ], [ %i.fj, %.preheader.i.i74.i ], [ %i.fj, %.preheader.i.i74.i ] ; 3 uses
  switch i32 %.0.i.i66.i, label %bb.ax [
    i32 -1, label %.thread.i68.i
    i32 32, label %.critedge.i64.i.backedge
    i32 13, label %.critedge.i64.i.backedge
    i32 10, label %.critedge.i64.i.backedge
    i32 9, label %.critedge.i64.i.backedge
  ]

.critedge.i64.i.backedge:                         ; preds = %pbm_getc.exit.i65.i, %pbm_getc.exit.i65.i, %pbm_getc.exit.i65.i, %pbm_getc.exit.i65.i
  br label %.critedge.i64.i

.thread.i68.i:                                    ; preds = %pbm_getc.exit.i65.i
  %i.fk = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store i32 1043, ptr %i.fl, align 8, !tbaa !34
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !38
  tail call void %i.fm(ptr noundef nonnull %0) #2, !inline_history !51
  br label %bb.ay

bb.ax:                                            ; preds = %pbm_getc.exit.i65.i
  %i.fn = add i32 %.0.i.i66.i, -58
  %or.cond5.i73.i = icmp ult i32 %i.fn, -10
  br i1 %or.cond5.i73.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %.thread.i68.i
  %i.fo = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i32 1043, ptr %i.fp, align 8, !tbaa !34
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !38
  tail call void %i.fq(ptr noundef nonnull %0) #2, !inline_history !51
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fr = add nsw i32 %.0.i.i66.i, -48
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %.0.i69.i = phi i32 [ %i.fr, %bb.az ], [ %i.fy, %bb.bb ] ; 3 uses
  %i.fs = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 35
  br i1 %i.ft, label %.preheader.i30.i72.i, label %pbm_getc.exit31.i70.i

.preheader.i30.i72.i:                             ; preds = %bb.ba, %.preheader.i30.i72.i
  %i.fu = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.fu, label %.preheader.i30.i72.i [
    i32 -1, label %pbm_getc.exit31.i70.i
    i32 10, label %pbm_getc.exit31.i70.i
  ]

pbm_getc.exit31.i70.i:                            ; preds = %.preheader.i30.i72.i, %.preheader.i30.i72.i, %bb.ba
  %.0.i29.i71.i = phi i32 [ %i.fs, %bb.ba ], [ %i.fu, %.preheader.i30.i72.i ], [ %i.fu, %.preheader.i30.i72.i ]
  %i.fv = add i32 %.0.i29.i71.i, -48              ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 10
  br i1 %i.fw, label %bb.bb, label %.critedge.i76.i

bb.bb:                                            ; preds = %pbm_getc.exit31.i70.i
  %i.fx = mul i32 %.0.i69.i, 10
  %i.fy = add i32 %i.fv, %i.fx
  br label %bb.ba, !llvm.loop !52

.critedge.i76.i:                                  ; preds = %pbm_getc.exit31.i70.i, %.critedge.i76.i.backedge
  %i.fz = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 35
  br i1 %i.ga, label %.preheader.i.i86.i, label %pbm_getc.exit.i77.i

.preheader.i.i86.i:                               ; preds = %.critedge.i76.i, %.preheader.i.i86.i
  %i.gb = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.gb, label %.preheader.i.i86.i [
    i32 -1, label %pbm_getc.exit.i77.i
    i32 10, label %pbm_getc.exit.i77.i
  ]

pbm_getc.exit.i77.i:                              ; preds = %.preheader.i.i86.i, %.preheader.i.i86.i, %.critedge.i76.i
  %.0.i.i78.i = phi i32 [ %i.fz, %.critedge.i76.i ], [ %i.gb, %.preheader.i.i86.i ], [ %i.gb, %.preheader.i.i86.i ] ; 3 uses
  switch i32 %.0.i.i78.i, label %bb.bc [
    i32 -1, label %.thread.i80.i
    i32 32, label %.critedge.i76.i.backedge
    i32 13, label %.critedge.i76.i.backedge
    i32 10, label %.critedge.i76.i.backedge
    i32 9, label %.critedge.i76.i.backedge
  ]

.critedge.i76.i.backedge:                         ; preds = %pbm_getc.exit.i77.i, %pbm_getc.exit.i77.i, %pbm_getc.exit.i77.i, %pbm_getc.exit.i77.i
  br label %.critedge.i76.i

.thread.i80.i:                                    ; preds = %pbm_getc.exit.i77.i
  %i.gc = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store i32 1043, ptr %i.gd, align 8, !tbaa !34
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !38
  tail call void %i.ge(ptr noundef nonnull %0) #2, !inline_history !51
  br label %bb.bd

bb.bc:                                            ; preds = %pbm_getc.exit.i77.i
  %i.gf = add i32 %.0.i.i78.i, -58
  %or.cond5.i85.i = icmp ult i32 %i.gf, -10
  br i1 %or.cond5.i85.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.thread.i80.i
  %i.gg = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  store i32 1043, ptr %i.gh, align 8, !tbaa !34
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !38
  tail call void %i.gi(ptr noundef nonnull %0) #2, !inline_history !51
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gj = add nsw i32 %.0.i.i78.i, -48
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %.0.i81.i = phi i32 [ %i.gj, %bb.be ], [ %i.gq, %bb.bg ] ; 3 uses
  %i.gk = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.gl = icmp eq i32 %i.gk, 35
  br i1 %i.gl, label %.preheader.i30.i84.i, label %pbm_getc.exit31.i82.i

.preheader.i30.i84.i:                             ; preds = %bb.bf, %.preheader.i30.i84.i
  %i.gm = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.gm, label %.preheader.i30.i84.i [
    i32 -1, label %pbm_getc.exit31.i82.i
    i32 10, label %pbm_getc.exit31.i82.i
  ]

pbm_getc.exit31.i82.i:                            ; preds = %.preheader.i30.i84.i, %.preheader.i30.i84.i, %bb.bf
  %.0.i29.i83.i = phi i32 [ %i.gk, %bb.bf ], [ %i.gm, %.preheader.i30.i84.i ], [ %i.gm, %.preheader.i30.i84.i ]
  %i.gn = add i32 %.0.i29.i83.i, -48              ; 2 uses
  %i.go = icmp ult i32 %i.gn, 10
  br i1 %i.go, label %bb.bg, label %read_pbm_integer.exit87.i

bb.bg:                                            ; preds = %pbm_getc.exit31.i82.i
  %i.gp = mul i32 %.0.i81.i, 10
  %i.gq = add i32 %i.gn, %i.gp
  br label %bb.bf, !llvm.loop !52

read_pbm_integer.exit87.i:                        ; preds = %pbm_getc.exit31.i82.i
  %i.gr = load ptr, ptr %i.m, align 8, !tbaa !42  ; 3 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !45 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !45 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !45 ; 2 uses
  %i.gx = load i32, ptr %i.n, align 4, !tbaa !43  ; 4 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph.preheader.i.i22, label %._crit_edge.thread.i.i20

.lr.ph.preheader.i.i22:                           ; preds = %read_pbm_integer.exit87.i
  %wide.trip.count.i.i23 = zext nneg i32 %i.gx to i64
  br label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.bj, %.lr.ph.preheader.i.i22
  %indvars.iv.i.i25 = phi i64 [ 0, %.lr.ph.preheader.i.i22 ], [ %indvars.iv.next.i.i26, %bb.bj ] ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 %indvars.iv.i.i25
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !37
  %i.hb = zext i8 %i.ha to i32
  %i.hc = icmp eq i32 %.0.i.i, %i.hb
  br i1 %i.hc, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i.i24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv.i.i25
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !37
  %i.hf = zext i8 %i.he to i32
  %i.hg = icmp eq i32 %.0.i69.i, %i.hf
  br i1 %i.hg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i.i25
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !37
  %i.hj = zext i8 %i.hi to i32
  %i.hk = icmp eq i32 %.0.i81.i, %i.hj
  br i1 %i.hk, label %._crit_edge118.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %.lr.ph.i.i24
  %indvars.iv.next.i.i26 = add nuw nsw i64 %indvars.iv.i.i25, 1 ; 2 uses
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i23
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i28, label %.lr.ph.i.i24, !llvm.loop !46

._crit_edge.i.i28:                                ; preds = %bb.bj
  %i.hl = icmp sgt i32 %i.gx, 255
  br i1 %i.hl, label %bb.bk, label %._crit_edge.thread.i.i20

bb.bk:                                            ; preds = %._crit_edge.i.i28
  %i.hm = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  store i32 59, ptr %i.hn, align 8, !tbaa !34
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 44
  store i32 256, ptr %i.ho, align 4, !tbaa !37
  %i.hp = load ptr, ptr %0, align 8, !tbaa !33
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !38
  tail call void %i.hq(ptr noundef nonnull %0) #2, !inline_history !53
  br label %._crit_edge.thread.i.i20

._crit_edge.thread.i.i20:                         ; preds = %bb.bk, %._crit_edge.i.i28, %read_pbm_integer.exit87.i
  %i.hr = trunc i32 %.0.i.i to i8
  %i.hs = sext i32 %i.gx to i64                   ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %i.gs, i64 %i.hs
  store i8 %i.hr, ptr %i.ht, align 1, !tbaa !37
  %i.hu = trunc i32 %.0.i69.i to i8
  %i.hv = getelementptr inbounds i8, ptr %i.gu, i64 %i.hs
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !37
  %i.hw = trunc i32 %.0.i81.i to i8
  %i.hx = getelementptr inbounds i8, ptr %i.gw, i64 %i.hs
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !37
  %i.hy = load i32, ptr %i.n, align 4, !tbaa !43
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.n, align 4, !tbaa !43
  br label %._crit_edge118.i

._crit_edge118.i:                                 ; preds = %bb.bi, %._crit_edge.thread.i.i20
  %indvar.next125.i = add nuw i64 %indvar124.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvar.next125.i, %flatten.tripcount126.i
  br i1 %exitcond141.not.i, label %read_gif_map.exit, label %.critedge.i.preheader.i, !llvm.loop !54

bb.bl:                                            ; preds = %._crit_edge.i, %.preheader98.lr.ph.split.i
  %indvar117.i = phi i64 [ 0, %.preheader98.lr.ph.split.i ], [ %indvar.next118.i, %._crit_edge.i ]
  %i.ia = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.ib = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.ic = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.id = icmp eq i32 %i.ia, -1
  %i.ie = icmp eq i32 %i.ib, -1
  %or.cond5.i = or i1 %i.id, %i.ie
  %i.if = icmp eq i32 %i.ic, -1
  %or.cond7.i = or i1 %or.cond5.i, %i.if
  br i1 %or.cond7.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ig = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  store i32 1043, ptr %i.ih, align 8, !tbaa !34
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !38
  tail call void %i.ii(ptr noundef nonnull %0) #2, !inline_history !50
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ij = load ptr, ptr %i.m, align 8, !tbaa !42  ; 3 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !45 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !45 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !45 ; 2 uses
  %i.ip = load i32, ptr %i.n, align 4, !tbaa !43  ; 4 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph.preheader.i89.i, label %._crit_edge.thread.i88.i

.lr.ph.preheader.i89.i:                           ; preds = %bb.bn
  %wide.trip.count.i90.i = zext nneg i32 %i.ip to i64
  br label %.lr.ph.i91.i

.lr.ph.i91.i:                                     ; preds = %bb.bq, %.lr.ph.preheader.i89.i
  %indvars.iv.i92.i = phi i64 [ 0, %.lr.ph.preheader.i89.i ], [ %indvars.iv.next.i93.i, %bb.bq ] ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv.i92.i
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !37
  %i.it = zext i8 %i.is to i32
  %i.iu = icmp eq i32 %i.ia, %i.it
  br i1 %i.iu, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %.lr.ph.i91.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv.i92.i
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !37
  %i.ix = zext i8 %i.iw to i32
  %i.iy = icmp eq i32 %i.ib, %i.ix
  br i1 %i.iy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.iz = getelementptr inbounds nuw i8, ptr %i.io, i64 %indvars.iv.i92.i
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !37
  %i.jb = zext i8 %i.ja to i32
  %i.jc = icmp eq i32 %i.ic, %i.jb
  br i1 %i.jc, label %._crit_edge.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %.lr.ph.i91.i
  %indvars.iv.next.i93.i = add nuw nsw i64 %indvars.iv.i92.i, 1 ; 2 uses
  %exitcond.not.i94.i = icmp eq i64 %indvars.iv.next.i93.i, %wide.trip.count.i90.i
  br i1 %exitcond.not.i94.i, label %._crit_edge.i95.i, label %.lr.ph.i91.i, !llvm.loop !46

._crit_edge.i95.i:                                ; preds = %bb.bq
  %i.jd = icmp sgt i32 %i.ip, 255
  br i1 %i.jd, label %bb.br, label %._crit_edge.thread.i88.i

bb.br:                                            ; preds = %._crit_edge.i95.i
  %i.je = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  store i32 59, ptr %i.jf, align 8, !tbaa !34
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 44
  store i32 256, ptr %i.jg, align 4, !tbaa !37
  %i.jh = load ptr, ptr %0, align 8, !tbaa !33
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !38
  tail call void %i.ji(ptr noundef nonnull %0) #2, !inline_history !53
  br label %._crit_edge.thread.i88.i

._crit_edge.thread.i88.i:                         ; preds = %bb.br, %._crit_edge.i95.i, %bb.bn
  %i.jj = trunc i32 %i.ia to i8
  %i.jk = sext i32 %i.ip to i64                   ; 3 uses
  %i.jl = getelementptr inbounds i8, ptr %i.ik, i64 %i.jk
  store i8 %i.jj, ptr %i.jl, align 1, !tbaa !37
  %i.jm = trunc i32 %i.ib to i8
  %i.jn = getelementptr inbounds i8, ptr %i.im, i64 %i.jk
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !37
  %i.jo = trunc i32 %i.ic to i8
  %i.jp = getelementptr inbounds i8, ptr %i.io, i64 %i.jk
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !37
  %i.jq = load i32, ptr %i.n, align 4, !tbaa !43
  %i.jr = add nsw i32 %i.jq, 1
  store i32 %i.jr, ptr %i.n, align 4, !tbaa !43
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bp, %._crit_edge.thread.i88.i
  %indvar.next118.i = add nuw i64 %indvar117.i, 1 ; 2 uses
  %exitcond139.not.i = icmp eq i64 %indvar.next118.i, %flatten.tripcount.i
  br i1 %exitcond139.not.i, label %read_gif_map.exit, label %bb.bl, !llvm.loop !55

read_gif_map.exit.sink.split:                     ; preds = %bb.c, %bb.ar
  %i.js = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store i32 1043, ptr %i.jt, align 8, !tbaa !34
  %i.ju = load ptr, ptr %i.js, align 8, !tbaa !38
  tail call void %i.ju(ptr noundef nonnull %0) #2
  br label %read_gif_map.exit

read_gif_map.exit:                                ; preds = %._crit_edge.i, %._crit_edge118.i, %add_map_entry.exit.i, %read_gif_map.exit.sink.split, %.preheader97.i, %.preheader99.i
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_pbm_integer(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.a = tail call i32 @getc(ptr noundef %1)      ; 2 uses
  %i.b = icmp eq i32 %i.a, 35
  br i1 %i.b, label %.preheader.i, label %pbm_getc.exit

.preheader.i:                                     ; preds = %.critedge, %.preheader.i
  %i.c = tail call i32 @getc(ptr noundef %1)      ; 3 uses
  switch i32 %i.c, label %.preheader.i [
    i32 -1, label %pbm_getc.exit
    i32 10, label %pbm_getc.exit
  ]

pbm_getc.exit:                                    ; preds = %.preheader.i, %.preheader.i, %.critedge
  %.0.i = phi i32 [ %i.a, %.critedge ], [ %i.c, %.preheader.i ], [ %i.c, %.preheader.i ] ; 3 uses
  switch i32 %.0.i, label %bb.b [
    i32 -1, label %.thread
    i32 32, label %.critedge.backedge
    i32 13, label %.critedge.backedge
    i32 10, label %.critedge.backedge
    i32 9, label %.critedge.backedge
  ]

.critedge.backedge:                               ; preds = %pbm_getc.exit, %pbm_getc.exit, %pbm_getc.exit, %pbm_getc.exit
  br label %.critedge

.thread:                                          ; preds = %pbm_getc.exit
  %i.d = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 1043, ptr %i.e, align 8, !tbaa !34
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !38
  tail call void %i.f(ptr noundef nonnull %0) #2
  br label %bb.c

bb.b:                                             ; preds = %pbm_getc.exit
  %i.g = add i32 %.0.i, -58
  %or.cond5 = icmp ult i32 %i.g, -10
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1043, ptr %i.i, align 8, !tbaa !34
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !38
  tail call void %i.j(ptr noundef nonnull %0) #2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = add nsw i32 %.0.i, -48
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ %i.r, %bb.f ]  ; 2 uses
  %i.l = tail call i32 @getc(ptr noundef %1)      ; 2 uses
  %i.m = icmp eq i32 %i.l, 35
  br i1 %i.m, label %.preheader.i30, label %pbm_getc.exit31

.preheader.i30:                                   ; preds = %bb.e, %.preheader.i30
  %i.n = tail call i32 @getc(ptr noundef %1)      ; 3 uses
  switch i32 %i.n, label %.preheader.i30 [
    i32 -1, label %pbm_getc.exit31
    i32 10, label %pbm_getc.exit31
  ]

pbm_getc.exit31:                                  ; preds = %.preheader.i30, %.preheader.i30, %bb.e
  %.0.i29 = phi i32 [ %i.l, %bb.e ], [ %i.n, %.preheader.i30 ], [ %i.n, %.preheader.i30 ]
  %i.o = add i32 %.0.i29, -48                     ; 2 uses
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %pbm_getc.exit31
  %i.q = mul i32 %.0, 10
  %i.r = add i32 %i.o, %i.q
  br label %bb.e, !llvm.loop !52

bb.g:                                             ; preds = %pbm_getc.exit31
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 296}
!9 = !{!"jpeg_decompress_struct", !10, i64 0, !12, i64 8, !13, i64 16, !11, i64 24, !5, i64 32, !5, i64 36, !14, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !15, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !16, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !18, i64 192, !6, i64 200, !6, i64 232, !6, i64 264, !5, i64 296, !11, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !6, i64 324, !6, i64 340, !6, i64 356, !5, i64 372, !5, i64 376, !6, i64 380, !6, i64 381, !6, i64 382, !19, i64 384, !19, i64 386, !5, i64 388, !6, i64 392, !5, i64 396, !20, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !21, i64 432, !5, i64 440, !6, i64 448, !5, i64 480, !5, i64 484, !5, i64 488, !6, i64 492, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !18, i64 552, !5, i64 560, !5, i64 564, !22, i64 568, !23, i64 576, !24, i64 584, !25, i64 592, !26, i64 600, !27, i64 608, !28, i64 616, !29, i64 624, !30, i64 632, !31, i64 640, !32, i64 648}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !11, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !11, i64 0}
!14 = !{!"p1 _ZTS15jpeg_source_mgr", !11, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"p2 omnipotent char", !17, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!"p1 _ZTS18jpeg_marker_struct", !11, i64 0}
!21 = !{!"p1 omnipotent char", !11, i64 0}
!22 = !{!"p1 _ZTS18jpeg_decomp_master", !11, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_main_controller", !11, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_coef_controller", !11, i64 0}
!25 = !{!"p1 _ZTS22jpeg_d_post_controller", !11, i64 0}
!26 = !{!"p1 _ZTS21jpeg_input_controller", !11, i64 0}
!27 = !{!"p1 _ZTS18jpeg_marker_reader", !11, i64 0}
!28 = !{!"p1 _ZTS20jpeg_entropy_decoder", !11, i64 0}
!29 = !{!"p1 _ZTS16jpeg_inverse_dct", !11, i64 0}
!30 = !{!"p1 _ZTS14jpeg_upsampler", !11, i64 0}
!31 = !{!"p1 _ZTS22jpeg_color_deconverter", !11, i64 0}
!32 = !{!"p1 _ZTS20jpeg_color_quantizer", !11, i64 0}
!33 = !{!9, !10, i64 0}
!34 = !{!35, !5, i64 40}
!35 = !{!"jpeg_error_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !6, i64 44, !5, i64 124, !36, i64 128, !16, i64 136, !5, i64 144, !16, i64 152, !5, i64 160, !5, i64 164}
!36 = !{!"long", !6, i64 0}
!37 = !{!6, !6, i64 0}
!38 = !{!35, !11, i64 0}
!39 = !{!9, !12, i64 8}
!40 = !{!41, !11, i64 16}
!41 = !{!"jpeg_memory_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !36, i64 88, !36, i64 96}
!42 = !{!9, !16, i64 160}
!43 = !{!9, !5, i64 156}
!44 = distinct !{null}
!45 = !{!21, !21, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{null, null}
!49 = distinct !{!49, !47}
!50 = distinct !{null}
!51 = distinct !{null, ptr @read_pbm_integer}
!52 = distinct !{!52, !47}
!53 = distinct !{null, null}
!54 = distinct !{!54, !47}
!55 = distinct !{!55, !47}
end_hunk_0
