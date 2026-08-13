inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@read_color_map_12:bb.a
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
  %.135.i = phi i32 [ 0, %bb.af ], [ %i.ee, %add_map_entry.exit.i ]
  %i.cj = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.ck = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.cl = tail call i32 @getc(ptr noundef %1)     ; 2 uses
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
  %i.cs = shl i32 %i.cj, 4                        ; 2 uses
  %i.ct = shl i32 %i.ck, 4                        ; 2 uses
  %i.cu = shl i32 %i.cl, 4                        ; 2 uses
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !42  ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !45 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !45 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !45 ; 2 uses
  %i.db = load i32, ptr %i.n, align 4, !tbaa !43  ; 6 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.preheader.i.i, label %._crit_edge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ai
  %wide.trip.count.i.i = zext nneg i32 %i.db to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.al, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.al ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %indvars.iv.i.i
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !47
  %i.df = sext i16 %i.de to i32
  %i.dg = icmp eq i32 %i.cs, %i.df
  br i1 %i.dg, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %indvars.iv.i.i
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !47
  %i.dj = sext i16 %i.di to i32
  %i.dk = icmp eq i32 %i.ct, %i.dj
  br i1 %i.dk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv.i.i
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !47
  %i.dn = sext i16 %i.dm to i32
  %i.do = icmp eq i32 %i.cu, %i.dn
  br i1 %i.do, label %add_map_entry.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !48

._crit_edge.i.i:                                  ; preds = %bb.al
  %i.dp = icmp sgt i32 %i.db, 4095
  br i1 %i.dp, label %bb.am, label %._crit_edge.thread.i.i

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.dq = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  store i32 59, ptr %i.dr, align 8, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 44
  store i32 4096, ptr %i.ds, align 4, !tbaa !37
  %i.dt = load ptr, ptr %0, align 8, !tbaa !33
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !38
  tail call void %i.du(ptr noundef nonnull %0) #2, !inline_history !50
  %.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !43
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.am, %._crit_edge.i.i, %bb.ai
  %i.dv = phi i32 [ %.pre.i.i, %bb.am ], [ %i.db, %._crit_edge.i.i ], [ %i.db, %bb.ai ]
  %i.dw = trunc i32 %i.cs to i16
  %i.dx = sext i32 %i.db to i64                   ; 3 uses
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.dx
  store i16 %i.dw, ptr %i.dy, align 2, !tbaa !47
  %i.dz = trunc i32 %i.ct to i16
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.dx
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !47
  %i.eb = trunc i32 %i.cu to i16
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.dx
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !47
  %i.ed = add nsw i32 %i.dv, 1
  store i32 %i.ed, ptr %i.n, align 4, !tbaa !43
  br label %add_map_entry.exit.i

add_map_entry.exit.i:                             ; preds = %bb.ak, %._crit_edge.thread.i.i
  %i.ee = add nuw nsw i32 %.135.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ee, %i.ci
  br i1 %exitcond.not.i, label %read_gif_map.exit, label %bb.ag, !llvm.loop !51

bb.an:                                            ; preds = %bb.c
  %i.ef = tail call i32 @getc(ptr noundef %1)
  %i.eg = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %i.eh = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %i.ei = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %i.ej = icmp eq i32 %i.eg, 0                    ; 3 uses
  %i.ek = icmp eq i32 %i.eh, 0                    ; 3 uses
  %or.cond.i18 = select i1 %i.ej, i1 true, i1 %i.ek
  %i.el = icmp eq i32 %i.ei, 0
  %or.cond3.i = select i1 %or.cond.i18, i1 true, i1 %i.el
  br i1 %or.cond3.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.em = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store i32 1043, ptr %i.en, align 8, !tbaa !34
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !38
  tail call void %i.eo(ptr noundef nonnull %0) #2, !inline_history !52
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not.i = icmp eq i32 %i.ei, 4095
  br i1 %.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ep = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store i32 1043, ptr %i.eq, align 8, !tbaa !34
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !38
  tail call void %i.er(ptr noundef nonnull %0) #2, !inline_history !52
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  switch i32 %i.ef, label %read_gif_map.exit.sink.split [
    i32 51, label %.preheader98.i
    i32 54, label %.preheader100.i
  ]

.preheader100.i:                                  ; preds = %bb.ar
  %brmerge = or i1 %i.ej, %i.ek
  br i1 %brmerge, label %read_gif_map.exit, label %.preheader99.lr.ph.split.i

.preheader99.lr.ph.split.i:                       ; preds = %.preheader100.i
  %2 = zext i32 %i.eg to i64
  %3 = zext i32 %i.eh to i64
  %flatten.tripcount.i = mul nuw i64 %3, %2
  br label %bb.bl

.preheader98.i:                                   ; preds = %bb.ar
  %brmerge30 = or i1 %i.ej, %i.ek
  br i1 %brmerge30, label %read_gif_map.exit, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %.preheader98.i
  %4 = zext i32 %i.eg to i64
  %5 = zext i32 %i.eh to i64
  %flatten.tripcount127.i = mul nuw i64 %5, %4
  br label %.critedge.i.preheader.i

.critedge.i.preheader.i:                          ; preds = %._crit_edge119.i, %.preheader.i.a
  %indvar125.i = phi i64 [ 0, %.preheader.i.a ], [ %indvar.next126.i, %._crit_edge119.i ]
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %.critedge.i.preheader.i
  %i.es = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.et = icmp eq i32 %i.es, 35
  br i1 %i.et, label %.preheader.i.i.i, label %pbm_getc.exit.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i, %.preheader.i.i.i
  %i.eu = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.eu, label %.preheader.i.i.i [
    i32 -1, label %pbm_getc.exit.i.i
    i32 10, label %pbm_getc.exit.i.i
  ]

pbm_getc.exit.i.i:                                ; preds = %.preheader.i.i.i, %.preheader.i.i.i, %.critedge.i.i
  %.0.i.i.i = phi i32 [ %i.es, %.critedge.i.i ], [ %i.eu, %.preheader.i.i.i ], [ %i.eu, %.preheader.i.i.i ] ; 3 uses
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
  %i.ev = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  store i32 1043, ptr %i.ew, align 8, !tbaa !34
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !38
  tail call void %i.ex(ptr noundef nonnull %0) #2, !inline_history !53
  br label %bb.at

bb.as:                                            ; preds = %pbm_getc.exit.i.i
  %i.ey = add i32 %.0.i.i.i, -58
  %or.cond5.i.i = icmp ult i32 %i.ey, -10
  br i1 %or.cond5.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %.thread.i.i
  %i.ez = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store i32 1043, ptr %i.fa, align 8, !tbaa !34
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !38
  tail call void %i.fb(ptr noundef nonnull %0) #2, !inline_history !53
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fc = add nsw i32 %.0.i.i.i, -48
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.0.i.i = phi i32 [ %i.fc, %bb.au ], [ %i.fj, %bb.aw ] ; 3 uses
  %i.fd = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 35
  br i1 %i.fe, label %.preheader.i30.i.i, label %pbm_getc.exit31.i.i

.preheader.i30.i.i:                               ; preds = %bb.av, %.preheader.i30.i.i
  %i.ff = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.ff, label %.preheader.i30.i.i [
    i32 -1, label %pbm_getc.exit31.i.i
    i32 10, label %pbm_getc.exit31.i.i
  ]

pbm_getc.exit31.i.i:                              ; preds = %.preheader.i30.i.i, %.preheader.i30.i.i, %bb.av
  %.0.i29.i.i = phi i32 [ %i.fd, %bb.av ], [ %i.ff, %.preheader.i30.i.i ], [ %i.ff, %.preheader.i30.i.i ]
  %i.fg = add i32 %.0.i29.i.i, -48                ; 2 uses
  %i.fh = icmp ult i32 %i.fg, 10
  br i1 %i.fh, label %bb.aw, label %.critedge.i64.i

bb.aw:                                            ; preds = %pbm_getc.exit31.i.i
  %i.fi = mul i32 %.0.i.i, 10
  %i.fj = add i32 %i.fg, %i.fi
  br label %bb.av, !llvm.loop !54

.critedge.i64.i:                                  ; preds = %pbm_getc.exit31.i.i, %.critedge.i64.i.backedge
  %i.fk = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 35
  br i1 %i.fl, label %.preheader.i.i74.i, label %pbm_getc.exit.i65.i

.preheader.i.i74.i:                               ; preds = %.critedge.i64.i, %.preheader.i.i74.i
  %i.fm = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.fm, label %.preheader.i.i74.i [
    i32 -1, label %pbm_getc.exit.i65.i
    i32 10, label %pbm_getc.exit.i65.i
  ]

pbm_getc.exit.i65.i:                              ; preds = %.preheader.i.i74.i, %.preheader.i.i74.i, %.critedge.i64.i
  %.0.i.i66.i = phi i32 [ %i.fk, %.critedge.i64.i ], [ %i.fm, %.preheader.i.i74.i ], [ %i.fm, %.preheader.i.i74.i ] ; 3 uses
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
  %i.fn = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  store i32 1043, ptr %i.fo, align 8, !tbaa !34
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !38
  tail call void %i.fp(ptr noundef nonnull %0) #2, !inline_history !53
  br label %bb.ay

bb.ax:                                            ; preds = %pbm_getc.exit.i65.i
  %i.fq = add i32 %.0.i.i66.i, -58
  %or.cond5.i73.i = icmp ult i32 %i.fq, -10
  br i1 %or.cond5.i73.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %.thread.i68.i
  %i.fr = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store i32 1043, ptr %i.fs, align 8, !tbaa !34
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !38
  tail call void %i.ft(ptr noundef nonnull %0) #2, !inline_history !53
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fu = add nsw i32 %.0.i.i66.i, -48
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %.0.i69.i = phi i32 [ %i.fu, %bb.az ], [ %i.gb, %bb.bb ] ; 3 uses
  %i.fv = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 35
  br i1 %i.fw, label %.preheader.i30.i72.i, label %pbm_getc.exit31.i70.i

.preheader.i30.i72.i:                             ; preds = %bb.ba, %.preheader.i30.i72.i
  %i.fx = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.fx, label %.preheader.i30.i72.i [
    i32 -1, label %pbm_getc.exit31.i70.i
    i32 10, label %pbm_getc.exit31.i70.i
  ]

pbm_getc.exit31.i70.i:                            ; preds = %.preheader.i30.i72.i, %.preheader.i30.i72.i, %bb.ba
  %.0.i29.i71.i = phi i32 [ %i.fv, %bb.ba ], [ %i.fx, %.preheader.i30.i72.i ], [ %i.fx, %.preheader.i30.i72.i ]
  %i.fy = add i32 %.0.i29.i71.i, -48              ; 2 uses
  %i.fz = icmp ult i32 %i.fy, 10
  br i1 %i.fz, label %bb.bb, label %.critedge.i76.i

bb.bb:                                            ; preds = %pbm_getc.exit31.i70.i
  %i.ga = mul i32 %.0.i69.i, 10
  %i.gb = add i32 %i.fy, %i.ga
  br label %bb.ba, !llvm.loop !54

.critedge.i76.i:                                  ; preds = %pbm_getc.exit31.i70.i, %.critedge.i76.i.backedge
  %i.gc = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 35
  br i1 %i.gd, label %.preheader.i.i86.i, label %pbm_getc.exit.i77.i

.preheader.i.i86.i:                               ; preds = %.critedge.i76.i, %.preheader.i.i86.i
  %i.ge = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.ge, label %.preheader.i.i86.i [
    i32 -1, label %pbm_getc.exit.i77.i
    i32 10, label %pbm_getc.exit.i77.i
  ]

pbm_getc.exit.i77.i:                              ; preds = %.preheader.i.i86.i, %.preheader.i.i86.i, %.critedge.i76.i
  %.0.i.i78.i = phi i32 [ %i.gc, %.critedge.i76.i ], [ %i.ge, %.preheader.i.i86.i ], [ %i.ge, %.preheader.i.i86.i ] ; 3 uses
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
  %i.gf = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  store i32 1043, ptr %i.gg, align 8, !tbaa !34
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !38
  tail call void %i.gh(ptr noundef nonnull %0) #2, !inline_history !53
  br label %bb.bd

bb.bc:                                            ; preds = %pbm_getc.exit.i77.i
  %i.gi = add i32 %.0.i.i78.i, -58
  %or.cond5.i85.i = icmp ult i32 %i.gi, -10
  br i1 %or.cond5.i85.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %.thread.i80.i
  %i.gj = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  store i32 1043, ptr %i.gk, align 8, !tbaa !34
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !38
  tail call void %i.gl(ptr noundef nonnull %0) #2, !inline_history !53
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gm = add nsw i32 %.0.i.i78.i, -48
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %bb.be
  %.0.i81.i = phi i32 [ %i.gm, %bb.be ], [ %i.gt, %bb.bg ] ; 3 uses
  %i.gn = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.go = icmp eq i32 %i.gn, 35
  br i1 %i.go, label %.preheader.i30.i84.i, label %pbm_getc.exit31.i82.i

.preheader.i30.i84.i:                             ; preds = %bb.bf, %.preheader.i30.i84.i
  %i.gp = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.gp, label %.preheader.i30.i84.i [
    i32 -1, label %pbm_getc.exit31.i82.i
    i32 10, label %pbm_getc.exit31.i82.i
  ]

pbm_getc.exit31.i82.i:                            ; preds = %.preheader.i30.i84.i, %.preheader.i30.i84.i, %bb.bf
  %.0.i29.i83.i = phi i32 [ %i.gn, %bb.bf ], [ %i.gp, %.preheader.i30.i84.i ], [ %i.gp, %.preheader.i30.i84.i ]
  %i.gq = add i32 %.0.i29.i83.i, -48              ; 2 uses
  %i.gr = icmp ult i32 %i.gq, 10
  br i1 %i.gr, label %bb.bg, label %read_pbm_integer.exit87.i

bb.bg:                                            ; preds = %pbm_getc.exit31.i82.i
  %i.gs = mul i32 %.0.i81.i, 10
  %i.gt = add i32 %i.gq, %i.gs
  br label %bb.bf, !llvm.loop !54

read_pbm_integer.exit87.i:                        ; preds = %pbm_getc.exit31.i82.i
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !42  ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !45 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !45 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !45 ; 2 uses
  %i.ha = load i32, ptr %i.n, align 4, !tbaa !43  ; 6 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph.preheader.i.i22, label %._crit_edge.thread.i.i20

.lr.ph.preheader.i.i22:                           ; preds = %read_pbm_integer.exit87.i
  %wide.trip.count.i.i23 = zext nneg i32 %i.ha to i64
  br label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.bj, %.lr.ph.preheader.i.i22
  %indvars.iv.i.i25 = phi i64 [ 0, %.lr.ph.preheader.i.i22 ], [ %indvars.iv.next.i.i26, %bb.bj ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %indvars.iv.i.i25
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !47
  %i.he = sext i16 %i.hd to i32
  %i.hf = icmp eq i32 %.0.i.i, %i.he
  br i1 %i.hf, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i.i24
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %indvars.iv.i.i25
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !47
  %i.hi = sext i16 %i.hh to i32
  %i.hj = icmp eq i32 %.0.i69.i, %i.hi
  br i1 %i.hj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %indvars.iv.i.i25
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !47
  %i.hm = sext i16 %i.hl to i32
  %i.hn = icmp eq i32 %.0.i81.i, %i.hm
  br i1 %i.hn, label %._crit_edge119.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %.lr.ph.i.i24
  %indvars.iv.next.i.i26 = add nuw nsw i64 %indvars.iv.i.i25, 1 ; 2 uses
  %exitcond.not.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %wide.trip.count.i.i23
  br i1 %exitcond.not.i.i27, label %._crit_edge.i.i28, label %.lr.ph.i.i24, !llvm.loop !48

._crit_edge.i.i28:                                ; preds = %bb.bj
  %i.ho = icmp sgt i32 %i.ha, 4095
  br i1 %i.ho, label %bb.bk, label %._crit_edge.thread.i.i20

bb.bk:                                            ; preds = %._crit_edge.i.i28
  %i.hp = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  store i32 59, ptr %i.hq, align 8, !tbaa !34
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 44
  store i32 4096, ptr %i.hr, align 4, !tbaa !37
  %i.hs = load ptr, ptr %0, align 8, !tbaa !33
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !38
  tail call void %i.ht(ptr noundef nonnull %0) #2, !inline_history !55
  %.pre.i.i29 = load i32, ptr %i.n, align 4, !tbaa !43
  br label %._crit_edge.thread.i.i20

._crit_edge.thread.i.i20:                         ; preds = %bb.bk, %._crit_edge.i.i28, %read_pbm_integer.exit87.i
  %i.hu = phi i32 [ %.pre.i.i29, %bb.bk ], [ %i.ha, %._crit_edge.i.i28 ], [ %i.ha, %read_pbm_integer.exit87.i ]
  %i.hv = trunc i32 %.0.i.i to i16
  %i.hw = sext i32 %i.ha to i64                   ; 3 uses
  %i.hx = getelementptr inbounds [2 x i8], ptr %i.gv, i64 %i.hw
  store i16 %i.hv, ptr %i.hx, align 2, !tbaa !47
  %i.hy = trunc i32 %.0.i69.i to i16
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.gx, i64 %i.hw
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !47
  %i.ia = trunc i32 %.0.i81.i to i16
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.hw
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !47
  %i.ic = add nsw i32 %i.hu, 1
  store i32 %i.ic, ptr %i.n, align 4, !tbaa !43
  br label %._crit_edge119.i

._crit_edge119.i:                                 ; preds = %bb.bi, %._crit_edge.thread.i.i20
  %indvar.next126.i = add nuw i64 %indvar125.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvar.next126.i, %flatten.tripcount127.i
  br i1 %exitcond142.not.i, label %read_gif_map.exit, label %.critedge.i.preheader.i, !llvm.loop !56

bb.bl:                                            ; preds = %._crit_edge.i, %.preheader99.lr.ph.split.i
  %indvar118.i = phi i64 [ 0, %.preheader99.lr.ph.split.i ], [ %indvar.next119.i, %._crit_edge.i ]
  %i.id = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.ie = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.if = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.ig = icmp eq i32 %i.id, -1
  %i.ih = icmp eq i32 %i.ie, -1
  %or.cond5.i = or i1 %i.ig, %i.ih
  %i.ii = icmp eq i32 %i.if, -1
  %or.cond7.i = or i1 %or.cond5.i, %i.ii
  br i1 %or.cond7.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ij = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  store i32 1043, ptr %i.ik, align 8, !tbaa !34
  %i.il = load ptr, ptr %i.ij, align 8, !tbaa !38
  tail call void %i.il(ptr noundef nonnull %0) #2, !inline_history !52
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.im = load ptr, ptr %i.m, align 8, !tbaa !42  ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !45 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !45 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !45 ; 2 uses
  %i.is = load i32, ptr %i.n, align 4, !tbaa !43  ; 6 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph.preheader.i89.i, label %._crit_edge.thread.i88.i

.lr.ph.preheader.i89.i:                           ; preds = %bb.bn
  %wide.trip.count.i90.i = zext nneg i32 %i.is to i64
  br label %.lr.ph.i91.i

.lr.ph.i91.i:                                     ; preds = %bb.bq, %.lr.ph.preheader.i89.i
  %indvars.iv.i92.i = phi i64 [ 0, %.lr.ph.preheader.i89.i ], [ %indvars.iv.next.i93.i, %bb.bq ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %indvars.iv.i92.i
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !47
  %i.iw = sext i16 %i.iv to i32
  %i.ix = icmp eq i32 %i.id, %i.iw
  br i1 %i.ix, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %.lr.ph.i91.i
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ip, i64 %indvars.iv.i92.i
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !47
  %i.ja = sext i16 %i.iz to i32
  %i.jb = icmp eq i32 %i.ie, %i.ja
  br i1 %i.jb, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %indvars.iv.i92.i
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !47
  %i.je = sext i16 %i.jd to i32
  %i.jf = icmp eq i32 %i.if, %i.je
  br i1 %i.jf, label %._crit_edge.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %.lr.ph.i91.i
  %indvars.iv.next.i93.i = add nuw nsw i64 %indvars.iv.i92.i, 1 ; 2 uses
  %exitcond.not.i94.i = icmp eq i64 %indvars.iv.next.i93.i, %wide.trip.count.i90.i
  br i1 %exitcond.not.i94.i, label %._crit_edge.i95.i, label %.lr.ph.i91.i, !llvm.loop !48

._crit_edge.i95.i:                                ; preds = %bb.bq
  %i.jg = icmp sgt i32 %i.is, 4095
  br i1 %i.jg, label %bb.br, label %._crit_edge.thread.i88.i

bb.br:                                            ; preds = %._crit_edge.i95.i
  %i.jh = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store i32 59, ptr %i.ji, align 8, !tbaa !34
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 44
  store i32 4096, ptr %i.jj, align 4, !tbaa !37
  %i.jk = load ptr, ptr %0, align 8, !tbaa !33
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !38
  tail call void %i.jl(ptr noundef nonnull %0) #2, !inline_history !55
  %.pre.i96.i = load i32, ptr %i.n, align 4, !tbaa !43
  br label %._crit_edge.thread.i88.i

._crit_edge.thread.i88.i:                         ; preds = %bb.br, %._crit_edge.i95.i, %bb.bn
  %i.jm = phi i32 [ %.pre.i96.i, %bb.br ], [ %i.is, %._crit_edge.i95.i ], [ %i.is, %bb.bn ]
  %i.jn = trunc i32 %i.id to i16
  %i.jo = sext i32 %i.is to i64                   ; 3 uses
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.in, i64 %i.jo
  store i16 %i.jn, ptr %i.jp, align 2, !tbaa !47
  %i.jq = trunc i32 %i.ie to i16
  %i.jr = getelementptr inbounds [2 x i8], ptr %i.ip, i64 %i.jo
  store i16 %i.jq, ptr %i.jr, align 2, !tbaa !47
  %i.js = trunc i32 %i.if to i16
  %i.jt = getelementptr inbounds [2 x i8], ptr %i.ir, i64 %i.jo
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !47
  %i.ju = add nsw i32 %i.jm, 1
  store i32 %i.ju, ptr %i.n, align 4, !tbaa !43
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bp, %._crit_edge.thread.i88.i
  %indvar.next119.i = add nuw i64 %indvar118.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvar.next119.i, %flatten.tripcount.i
  br i1 %exitcond140.not.i, label %read_gif_map.exit, label %bb.bl, !llvm.loop !57

read_gif_map.exit.sink.split:                     ; preds = %bb.c, %bb.ar
  %i.jv = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  store i32 1043, ptr %i.jw, align 8, !tbaa !34
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !38
  tail call void %i.jx(ptr noundef nonnull %0) #2
  br label %read_gif_map.exit

read_gif_map.exit:                                ; preds = %._crit_edge.i, %._crit_edge119.i, %add_map_entry.exit.i, %read_gif_map.exit.sink.split, %.preheader98.i, %.preheader100.i
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
  br label %bb.e, !llvm.loop !54

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
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 short", !11, i64 0}
!47 = !{!19, !19, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{null, null}
!51 = distinct !{!51, !49}
!52 = distinct !{null}
!53 = distinct !{null, ptr @read_pbm_integer}
!54 = distinct !{!54, !49}
!55 = distinct !{null, null}
!56 = distinct !{!56, !49}
!57 = distinct !{!57, !49}
end_hunk_0
