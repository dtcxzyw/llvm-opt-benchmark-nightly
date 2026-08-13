inline.NumInlined: 13
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@read_color_map:bb.a
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !40
  tail call void %i.bf(ptr noundef nonnull %0) #2, !inline_history !41
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = tail call i32 @getc(ptr noundef %1)
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bi = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i32 1038, ptr %i.bj, align 8, !tbaa !38
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !40
  tail call void %i.bk(ptr noundef nonnull %0) #2, !inline_history !41
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bl = tail call i32 @getc(ptr noundef %1)
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bn = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i32 1038, ptr %i.bo, align 8, !tbaa !38
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !40
  tail call void %i.bp(ptr noundef nonnull %0) #2, !inline_history !41
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bq = icmp ne i32 %i.i, 73
  %i.br = icmp ne i32 %i.n, 70
  %or.cond.i = or i1 %i.bq, %i.br
  br i1 %or.cond.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 1038, ptr %i.bt, align 8, !tbaa !38
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !40
  tail call void %i.bu(ptr noundef nonnull %0) #2, !inline_history !41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bv = and i32 %i.bb, 128
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i32 1038, ptr %i.by, align 8, !tbaa !38
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !40
  tail call void %i.bz(ptr noundef nonnull %0) #2, !inline_history !41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ca = and i32 %i.bb, 7
  %i.cb = shl nuw nsw i32 2, %i.ca
  br label %bb.ae

bb.ae:                                            ; preds = %add_map_entry.exit.i, %bb.ad
  %.135.i = phi i32 [ 0, %bb.ad ], [ %i.du, %add_map_entry.exit.i ]
  %i.cc = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.cd = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.ce = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  %i.cf = icmp eq i32 %i.cc, -1
  %i.cg = icmp eq i32 %i.cd, -1
  %or.cond4.i = or i1 %i.cf, %i.cg
  %i.ch = icmp eq i32 %i.ce, -1
  %or.cond6.i = or i1 %or.cond4.i, %i.ch
  br i1 %or.cond6.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ci = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  store i32 1038, ptr %i.cj, align 8, !tbaa !38
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !40
  tail call void %i.ck(ptr noundef nonnull %0) #2, !inline_history !41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !35  ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !42 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !42 ; 2 uses
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !36  ; 4 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.preheader.i.i, label %._crit_edge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ag
  %wide.trip.count.i.i = zext nneg i32 %i.cr to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aj ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !43
  %i.cv = zext i8 %i.cu to i32
  %i.cw = icmp eq i32 %i.cc, %i.cv
  br i1 %i.cw, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.i.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !43
  %i.cz = zext i8 %i.cy to i32
  %i.da = icmp eq i32 %i.cd, %i.cz
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !43
  %i.dd = zext i8 %i.dc to i32
  %i.de = icmp eq i32 %i.ce, %i.dd
  br i1 %i.de, label %add_map_entry.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !44

._crit_edge.i.i:                                  ; preds = %bb.aj
  %i.df = icmp sgt i32 %i.cr, 255
  br i1 %i.df, label %bb.ak, label %._crit_edge.thread.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.dg = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 56, ptr %i.dh, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  store i32 256, ptr %i.di, align 4, !tbaa !43
  %i.dj = load ptr, ptr %0, align 8, !tbaa !37
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40
  tail call void %i.dk(ptr noundef nonnull %0) #2, !inline_history !46
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ak, %._crit_edge.i.i, %bb.ag
  %i.dl = trunc i32 %i.cc to i8
  %i.dm = sext i32 %i.cr to i64                   ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %i.cm, i64 %i.dm
  store i8 %i.dl, ptr %i.dn, align 1, !tbaa !43
  %i.do = trunc i32 %i.cd to i8
  %i.dp = getelementptr inbounds i8, ptr %i.co, i64 %i.dm
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !43
  %i.dq = trunc i32 %i.ce to i8
  %i.dr = getelementptr inbounds i8, ptr %i.cq, i64 %i.dm
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !43
  %i.ds = load i32, ptr %i.g, align 4, !tbaa !36
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.g, align 4, !tbaa !36
  br label %add_map_entry.exit.i

add_map_entry.exit.i:                             ; preds = %bb.ai, %._crit_edge.thread.i.i
  %i.du = add nuw nsw i32 %.135.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.du, %i.cb
  br i1 %exitcond.not.i, label %read_gif_map.exit, label %bb.ae, !llvm.loop !47

bb.al:                                            ; preds = %bb.a
  %i.dv = tail call i32 @getc(ptr noundef %1)
  %i.dw = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %i.dx = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %i.dy = tail call fastcc i32 @read_pbm_integer(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %i.dz = icmp eq i32 %i.dw, 0                    ; 3 uses
  %i.ea = icmp eq i32 %i.dx, 0                    ; 3 uses
  %or.cond.i12 = select i1 %i.dz, i1 true, i1 %i.ea
  %i.eb = icmp eq i32 %i.dy, 0
  %or.cond3.i = select i1 %or.cond.i12, i1 true, i1 %i.eb
  br i1 %or.cond3.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ec = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i32 1038, ptr %i.ed, align 8, !tbaa !38
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !40
  tail call void %i.ee(ptr noundef nonnull %0) #2, !inline_history !48
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not.i = icmp eq i32 %i.dy, 255
  br i1 %.not.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store i32 1038, ptr %i.eg, align 8, !tbaa !38
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !40
  tail call void %i.eh(ptr noundef nonnull %0) #2, !inline_history !48
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  switch i32 %i.dv, label %read_gif_map.exit.sink.split [
    i32 51, label %.preheader104.i
    i32 54, label %.preheader106.i
  ]

.preheader106.i:                                  ; preds = %bb.ap
  %brmerge = or i1 %i.dz, %i.ea
  br i1 %brmerge, label %read_gif_map.exit, label %.preheader105.lr.ph.split.i

.preheader105.lr.ph.split.i:                      ; preds = %.preheader106.i
  %2 = zext i32 %i.dw to i64
  %3 = zext i32 %i.dx to i64
  %flatten.tripcount.i = mul nuw i64 %3, %2
  br label %bb.bj

.preheader104.i:                                  ; preds = %bb.ap
  %brmerge23 = or i1 %i.dz, %i.ea
  br i1 %brmerge23, label %read_gif_map.exit, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %.preheader104.i
  %4 = zext i32 %i.dw to i64
  %5 = zext i32 %i.dx to i64
  %flatten.tripcount136.i = mul nuw i64 %5, %4
  br label %.critedge.i.preheader.i

.critedge.i.preheader.i:                          ; preds = %._crit_edge128.i, %.preheader.i.a
  %indvar134.i = phi i64 [ 0, %.preheader.i.a ], [ %indvar.next135.i, %._crit_edge128.i ]
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %.critedge.i.preheader.i
  %i.ei = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 35
  br i1 %i.ej, label %.preheader.i.i.i, label %pbm_getc.exit.i.i

.preheader.i.i.i:                                 ; preds = %.critedge.i.i, %.preheader.i.i.i
  %i.ek = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.ek, label %.preheader.i.i.i [
    i32 -1, label %pbm_getc.exit.i.i
    i32 10, label %pbm_getc.exit.i.i
  ]

pbm_getc.exit.i.i:                                ; preds = %.preheader.i.i.i, %.preheader.i.i.i, %.critedge.i.i
  %.0.i.i.i = phi i32 [ %i.ei, %.critedge.i.i ], [ %i.ek, %.preheader.i.i.i ], [ %i.ek, %.preheader.i.i.i ] ; 3 uses
  switch i32 %.0.i.i.i, label %bb.aq [
    i32 -1, label %.thread.i.i
    i32 32, label %.critedge.i.i.backedge
    i32 13, label %.critedge.i.i.backedge
    i32 10, label %.critedge.i.i.backedge
    i32 9, label %.critedge.i.i.backedge
  ]

.critedge.i.i.backedge:                           ; preds = %pbm_getc.exit.i.i, %pbm_getc.exit.i.i, %pbm_getc.exit.i.i, %pbm_getc.exit.i.i
  br label %.critedge.i.i

.thread.i.i:                                      ; preds = %pbm_getc.exit.i.i
  %i.el = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  store i32 1038, ptr %i.em, align 8, !tbaa !38
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !40
  tail call void %i.en(ptr noundef nonnull %0) #2, !inline_history !49
  br label %bb.ar

bb.aq:                                            ; preds = %pbm_getc.exit.i.i
  %i.eo = add i32 %.0.i.i.i, -58
  %or.cond5.i.i = icmp ult i32 %i.eo, -10
  br i1 %or.cond5.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.thread.i.i
  %i.ep = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store i32 1038, ptr %i.eq, align 8, !tbaa !38
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !40
  tail call void %i.er(ptr noundef nonnull %0) #2, !inline_history !49
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.es = add nsw i32 %.0.i.i.i, -48
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %.0.i.i = phi i32 [ %i.es, %bb.as ], [ %i.ez, %bb.au ] ; 3 uses
  %i.et = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.eu = icmp eq i32 %i.et, 35
  br i1 %i.eu, label %.preheader.i30.i.i, label %pbm_getc.exit31.i.i

.preheader.i30.i.i:                               ; preds = %bb.at, %.preheader.i30.i.i
  %i.ev = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.ev, label %.preheader.i30.i.i [
    i32 -1, label %pbm_getc.exit31.i.i
    i32 10, label %pbm_getc.exit31.i.i
  ]

pbm_getc.exit31.i.i:                              ; preds = %.preheader.i30.i.i, %.preheader.i30.i.i, %bb.at
  %.0.i29.i.i = phi i32 [ %i.et, %bb.at ], [ %i.ev, %.preheader.i30.i.i ], [ %i.ev, %.preheader.i30.i.i ]
  %i.ew = add i32 %.0.i29.i.i, -48                ; 2 uses
  %i.ex = icmp ult i32 %i.ew, 10
  br i1 %i.ex, label %bb.au, label %.critedge.i64.i

bb.au:                                            ; preds = %pbm_getc.exit31.i.i
  %i.ey = mul i32 %.0.i.i, 10
  %i.ez = add i32 %i.ew, %i.ey
  br label %bb.at, !llvm.loop !50

.critedge.i64.i:                                  ; preds = %pbm_getc.exit31.i.i, %.critedge.i64.i.backedge
  %i.fa = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 35
  br i1 %i.fb, label %.preheader.i.i74.i, label %pbm_getc.exit.i65.i

.preheader.i.i74.i:                               ; preds = %.critedge.i64.i, %.preheader.i.i74.i
  %i.fc = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.fc, label %.preheader.i.i74.i [
    i32 -1, label %pbm_getc.exit.i65.i
    i32 10, label %pbm_getc.exit.i65.i
  ]

pbm_getc.exit.i65.i:                              ; preds = %.preheader.i.i74.i, %.preheader.i.i74.i, %.critedge.i64.i
  %.0.i.i66.i = phi i32 [ %i.fa, %.critedge.i64.i ], [ %i.fc, %.preheader.i.i74.i ], [ %i.fc, %.preheader.i.i74.i ] ; 3 uses
  switch i32 %.0.i.i66.i, label %bb.av [
    i32 -1, label %.thread.i68.i
    i32 32, label %.critedge.i64.i.backedge
    i32 13, label %.critedge.i64.i.backedge
    i32 10, label %.critedge.i64.i.backedge
    i32 9, label %.critedge.i64.i.backedge
  ]

.critedge.i64.i.backedge:                         ; preds = %pbm_getc.exit.i65.i, %pbm_getc.exit.i65.i, %pbm_getc.exit.i65.i, %pbm_getc.exit.i65.i
  br label %.critedge.i64.i

.thread.i68.i:                                    ; preds = %pbm_getc.exit.i65.i
  %i.fd = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  store i32 1038, ptr %i.fe, align 8, !tbaa !38
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !40
  tail call void %i.ff(ptr noundef nonnull %0) #2, !inline_history !49
  br label %bb.aw

bb.av:                                            ; preds = %pbm_getc.exit.i65.i
  %i.fg = add i32 %.0.i.i66.i, -58
  %or.cond5.i73.i = icmp ult i32 %i.fg, -10
  br i1 %or.cond5.i73.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %.thread.i68.i
  %i.fh = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store i32 1038, ptr %i.fi, align 8, !tbaa !38
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !40
  tail call void %i.fj(ptr noundef nonnull %0) #2, !inline_history !49
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fk = add nsw i32 %.0.i.i66.i, -48
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.0.i69.i = phi i32 [ %i.fk, %bb.ax ], [ %i.fr, %bb.az ] ; 3 uses
  %i.fl = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 35
  br i1 %i.fm, label %.preheader.i30.i72.i, label %pbm_getc.exit31.i70.i

.preheader.i30.i72.i:                             ; preds = %bb.ay, %.preheader.i30.i72.i
  %i.fn = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.fn, label %.preheader.i30.i72.i [
    i32 -1, label %pbm_getc.exit31.i70.i
    i32 10, label %pbm_getc.exit31.i70.i
  ]

pbm_getc.exit31.i70.i:                            ; preds = %.preheader.i30.i72.i, %.preheader.i30.i72.i, %bb.ay
  %.0.i29.i71.i = phi i32 [ %i.fl, %bb.ay ], [ %i.fn, %.preheader.i30.i72.i ], [ %i.fn, %.preheader.i30.i72.i ]
  %i.fo = add i32 %.0.i29.i71.i, -48              ; 2 uses
  %i.fp = icmp ult i32 %i.fo, 10
  br i1 %i.fp, label %bb.az, label %.critedge.i76.i

bb.az:                                            ; preds = %pbm_getc.exit31.i70.i
  %i.fq = mul i32 %.0.i69.i, 10
  %i.fr = add i32 %i.fo, %i.fq
  br label %bb.ay, !llvm.loop !50

.critedge.i76.i:                                  ; preds = %pbm_getc.exit31.i70.i, %.critedge.i76.i.backedge
  %i.fs = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 35
  br i1 %i.ft, label %.preheader.i.i86.i, label %pbm_getc.exit.i77.i

.preheader.i.i86.i:                               ; preds = %.critedge.i76.i, %.preheader.i.i86.i
  %i.fu = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.fu, label %.preheader.i.i86.i [
    i32 -1, label %pbm_getc.exit.i77.i
    i32 10, label %pbm_getc.exit.i77.i
  ]

pbm_getc.exit.i77.i:                              ; preds = %.preheader.i.i86.i, %.preheader.i.i86.i, %.critedge.i76.i
  %.0.i.i78.i = phi i32 [ %i.fs, %.critedge.i76.i ], [ %i.fu, %.preheader.i.i86.i ], [ %i.fu, %.preheader.i.i86.i ] ; 3 uses
  switch i32 %.0.i.i78.i, label %bb.ba [
    i32 -1, label %.thread.i80.i
    i32 32, label %.critedge.i76.i.backedge
    i32 13, label %.critedge.i76.i.backedge
    i32 10, label %.critedge.i76.i.backedge
    i32 9, label %.critedge.i76.i.backedge
  ]

.critedge.i76.i.backedge:                         ; preds = %pbm_getc.exit.i77.i, %pbm_getc.exit.i77.i, %pbm_getc.exit.i77.i, %pbm_getc.exit.i77.i
  br label %.critedge.i76.i

.thread.i80.i:                                    ; preds = %pbm_getc.exit.i77.i
  %i.fv = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  store i32 1038, ptr %i.fw, align 8, !tbaa !38
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !40
  tail call void %i.fx(ptr noundef nonnull %0) #2, !inline_history !49
  br label %bb.bb

bb.ba:                                            ; preds = %pbm_getc.exit.i77.i
  %i.fy = add i32 %.0.i.i78.i, -58
  %or.cond5.i85.i = icmp ult i32 %i.fy, -10
  br i1 %or.cond5.i85.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %.thread.i80.i
  %i.fz = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  store i32 1038, ptr %i.ga, align 8, !tbaa !38
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !40
  tail call void %i.gb(ptr noundef nonnull %0) #2, !inline_history !49
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gc = add nsw i32 %.0.i.i78.i, -48
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %.0.i81.i = phi i32 [ %i.gc, %bb.bc ], [ %i.gj, %bb.be ] ; 3 uses
  %i.gd = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 35
  br i1 %i.ge, label %.preheader.i30.i84.i, label %pbm_getc.exit31.i82.i

.preheader.i30.i84.i:                             ; preds = %bb.bd, %.preheader.i30.i84.i
  %i.gf = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.gf, label %.preheader.i30.i84.i [
    i32 -1, label %pbm_getc.exit31.i82.i
    i32 10, label %pbm_getc.exit31.i82.i
  ]

pbm_getc.exit31.i82.i:                            ; preds = %.preheader.i30.i84.i, %.preheader.i30.i84.i, %bb.bd
  %.0.i29.i83.i = phi i32 [ %i.gd, %bb.bd ], [ %i.gf, %.preheader.i30.i84.i ], [ %i.gf, %.preheader.i30.i84.i ]
  %i.gg = add i32 %.0.i29.i83.i, -48              ; 2 uses
  %i.gh = icmp ult i32 %i.gg, 10
  br i1 %i.gh, label %bb.be, label %read_pbm_integer.exit87.i

bb.be:                                            ; preds = %pbm_getc.exit31.i82.i
  %i.gi = mul i32 %.0.i81.i, 10
  %i.gj = add i32 %i.gg, %i.gi
  br label %bb.bd, !llvm.loop !50

read_pbm_integer.exit87.i:                        ; preds = %pbm_getc.exit31.i82.i
  %i.gk = load ptr, ptr %i.f, align 8, !tbaa !35  ; 3 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !42 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !42 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !42 ; 2 uses
  %i.gq = load i32, ptr %i.g, align 4, !tbaa !36  ; 4 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph.preheader.i.i16, label %._crit_edge.thread.i.i14

.lr.ph.preheader.i.i16:                           ; preds = %read_pbm_integer.exit87.i
  %wide.trip.count.i.i17 = zext nneg i32 %i.gq to i64
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.bh, %.lr.ph.preheader.i.i16
  %indvars.iv.i.i19 = phi i64 [ 0, %.lr.ph.preheader.i.i16 ], [ %indvars.iv.next.i.i20, %bb.bh ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv.i.i19
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !43
  %i.gu = zext i8 %i.gt to i32
  %i.gv = icmp eq i32 %.0.i.i, %i.gu
  br i1 %i.gv, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.lr.ph.i.i18
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv.i.i19
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !43
  %i.gy = zext i8 %i.gx to i32
  %i.gz = icmp eq i32 %.0.i69.i, %i.gy
  br i1 %i.gz, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv.i.i19
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !43
  %i.hc = zext i8 %i.hb to i32
  %i.hd = icmp eq i32 %.0.i81.i, %i.hc
  br i1 %i.hd, label %._crit_edge128.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %.lr.ph.i.i18
  %indvars.iv.next.i.i20 = add nuw nsw i64 %indvars.iv.i.i19, 1 ; 2 uses
  %exitcond.not.i.i21 = icmp eq i64 %indvars.iv.next.i.i20, %wide.trip.count.i.i17
  br i1 %exitcond.not.i.i21, label %._crit_edge.i.i22, label %.lr.ph.i.i18, !llvm.loop !44

._crit_edge.i.i22:                                ; preds = %bb.bh
  %i.he = icmp sgt i32 %i.gq, 255
  br i1 %i.he, label %bb.bi, label %._crit_edge.thread.i.i14

bb.bi:                                            ; preds = %._crit_edge.i.i22
  %i.hf = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  store i32 56, ptr %i.hg, align 8, !tbaa !38
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 44
  store i32 256, ptr %i.hh, align 4, !tbaa !43
  %i.hi = load ptr, ptr %0, align 8, !tbaa !37
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !40
  tail call void %i.hj(ptr noundef nonnull %0) #2, !inline_history !51
  br label %._crit_edge.thread.i.i14

._crit_edge.thread.i.i14:                         ; preds = %bb.bi, %._crit_edge.i.i22, %read_pbm_integer.exit87.i
  %i.hk = trunc i32 %.0.i.i to i8
  %i.hl = sext i32 %i.gq to i64                   ; 3 uses
  %i.hm = getelementptr inbounds i8, ptr %i.gl, i64 %i.hl
  store i8 %i.hk, ptr %i.hm, align 1, !tbaa !43
  %i.hn = trunc i32 %.0.i69.i to i8
  %i.ho = getelementptr inbounds i8, ptr %i.gn, i64 %i.hl
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !43
  %i.hp = trunc i32 %.0.i81.i to i8
  %i.hq = getelementptr inbounds i8, ptr %i.gp, i64 %i.hl
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !43
  %i.hr = load i32, ptr %i.g, align 4, !tbaa !36
  %i.hs = add nsw i32 %i.hr, 1
  store i32 %i.hs, ptr %i.g, align 4, !tbaa !36
  br label %._crit_edge128.i

._crit_edge128.i:                                 ; preds = %bb.bg, %._crit_edge.thread.i.i14
  %indvar.next135.i = add nuw i64 %indvar134.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvar.next135.i, %flatten.tripcount136.i
  br i1 %exitcond154.not.i, label %read_gif_map.exit, label %.critedge.i.preheader.i, !llvm.loop !52

bb.bj:                                            ; preds = %._crit_edge.i, %.preheader105.lr.ph.split.i
  %indvar127.i = phi i64 [ 0, %.preheader105.lr.ph.split.i ], [ %indvar.next128.i, %._crit_edge.i ]
  %i.ht = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 35
  br i1 %i.hu, label %.preheader.i.i, label %pbm_getc.exit.i

.preheader.i.i:                                   ; preds = %bb.bj, %.preheader.i.i
  %i.hv = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.hv, label %.preheader.i.i [
    i32 -1, label %pbm_getc.exit.i
    i32 10, label %pbm_getc.exit.i
  ]

pbm_getc.exit.i:                                  ; preds = %.preheader.i.i, %.preheader.i.i, %bb.bj
  %.0.i88.i = phi i32 [ %i.ht, %bb.bj ], [ %i.hv, %.preheader.i.i ], [ %i.hv, %.preheader.i.i ] ; 3 uses
  %i.hw = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 35
  br i1 %i.hx, label %.preheader.i90.i, label %pbm_getc.exit91.i

.preheader.i90.i:                                 ; preds = %pbm_getc.exit.i, %.preheader.i90.i
  %i.hy = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.hy, label %.preheader.i90.i [
    i32 -1, label %pbm_getc.exit91.i
    i32 10, label %pbm_getc.exit91.i
  ]

pbm_getc.exit91.i:                                ; preds = %.preheader.i90.i, %.preheader.i90.i, %pbm_getc.exit.i
  %.0.i89.i = phi i32 [ %i.hw, %pbm_getc.exit.i ], [ %i.hy, %.preheader.i90.i ], [ %i.hy, %.preheader.i90.i ] ; 3 uses
  %i.hz = tail call i32 @getc(ptr noundef %1)     ; 2 uses
  %i.ia = icmp eq i32 %i.hz, 35
  br i1 %i.ia, label %.preheader.i93.i, label %pbm_getc.exit94.i

.preheader.i93.i:                                 ; preds = %pbm_getc.exit91.i, %.preheader.i93.i
  %i.ib = tail call i32 @getc(ptr noundef %1)     ; 3 uses
  switch i32 %i.ib, label %.preheader.i93.i [
    i32 -1, label %pbm_getc.exit94.i
    i32 10, label %pbm_getc.exit94.i
  ]

pbm_getc.exit94.i:                                ; preds = %.preheader.i93.i, %.preheader.i93.i, %pbm_getc.exit91.i
  %.0.i92.i = phi i32 [ %i.hz, %pbm_getc.exit91.i ], [ %i.ib, %.preheader.i93.i ], [ %i.ib, %.preheader.i93.i ] ; 3 uses
  %i.ic = icmp eq i32 %.0.i88.i, -1
  %i.id = icmp eq i32 %.0.i89.i, -1
  %or.cond5.i = or i1 %i.ic, %i.id
  %i.ie = icmp eq i32 %.0.i92.i, -1
  %or.cond7.i = or i1 %or.cond5.i, %i.ie
  br i1 %or.cond7.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %pbm_getc.exit94.i
  %i.if = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  store i32 1038, ptr %i.ig, align 8, !tbaa !38
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !40
  tail call void %i.ih(ptr noundef nonnull %0) #2, !inline_history !48
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %pbm_getc.exit94.i
  %i.ii = load ptr, ptr %i.f, align 8, !tbaa !35  ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !42 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !42 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !42 ; 2 uses
  %i.io = load i32, ptr %i.g, align 4, !tbaa !36  ; 4 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph.preheader.i96.i, label %._crit_edge.thread.i95.i

.lr.ph.preheader.i96.i:                           ; preds = %bb.bl
  %wide.trip.count.i97.i = zext nneg i32 %i.io to i64
  br label %.lr.ph.i98.i

.lr.ph.i98.i:                                     ; preds = %bb.bo, %.lr.ph.preheader.i96.i
  %indvars.iv.i99.i = phi i64 [ 0, %.lr.ph.preheader.i96.i ], [ %indvars.iv.next.i100.i, %bb.bo ] ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv.i99.i
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !43
  %i.is = zext i8 %i.ir to i32
  %i.it = icmp eq i32 %.0.i88.i, %i.is
  br i1 %i.it, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %.lr.ph.i98.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv.i99.i
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !43
  %i.iw = zext i8 %i.iv to i32
  %i.ix = icmp eq i32 %.0.i89.i, %i.iw
  br i1 %i.ix, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 %indvars.iv.i99.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !43
  %i.ja = zext i8 %i.iz to i32
  %i.jb = icmp eq i32 %.0.i92.i, %i.ja
  br i1 %i.jb, label %._crit_edge.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %.lr.ph.i98.i
  %indvars.iv.next.i100.i = add nuw nsw i64 %indvars.iv.i99.i, 1 ; 2 uses
  %exitcond.not.i101.i = icmp eq i64 %indvars.iv.next.i100.i, %wide.trip.count.i97.i
  br i1 %exitcond.not.i101.i, label %._crit_edge.i102.i, label %.lr.ph.i98.i, !llvm.loop !44

._crit_edge.i102.i:                               ; preds = %bb.bo
  %i.jc = icmp sgt i32 %i.io, 255
  br i1 %i.jc, label %bb.bp, label %._crit_edge.thread.i95.i

bb.bp:                                            ; preds = %._crit_edge.i102.i
  %i.jd = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store i32 56, ptr %i.je, align 8, !tbaa !38
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 44
  store i32 256, ptr %i.jf, align 4, !tbaa !43
  %i.jg = load ptr, ptr %0, align 8, !tbaa !37
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !40
  tail call void %i.jh(ptr noundef nonnull %0) #2, !inline_history !51
  br label %._crit_edge.thread.i95.i

._crit_edge.thread.i95.i:                         ; preds = %bb.bp, %._crit_edge.i102.i, %bb.bl
  %i.ji = trunc i32 %.0.i88.i to i8
  %i.jj = sext i32 %i.io to i64                   ; 3 uses
  %i.jk = getelementptr inbounds i8, ptr %i.ij, i64 %i.jj
  store i8 %i.ji, ptr %i.jk, align 1, !tbaa !43
  %i.jl = trunc i32 %.0.i89.i to i8
  %i.jm = getelementptr inbounds i8, ptr %i.il, i64 %i.jj
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !43
  %i.jn = trunc i32 %.0.i92.i to i8
  %i.jo = getelementptr inbounds i8, ptr %i.in, i64 %i.jj
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !43
  %i.jp = load i32, ptr %i.g, align 4, !tbaa !36
  %i.jq = add nsw i32 %i.jp, 1
  store i32 %i.jq, ptr %i.g, align 4, !tbaa !36
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bn, %._crit_edge.thread.i95.i
  %indvar.next128.i = add nuw i64 %indvar127.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvar.next128.i, %flatten.tripcount.i
  br i1 %exitcond152.not.i, label %read_gif_map.exit, label %bb.bj, !llvm.loop !53

read_gif_map.exit.sink.split:                     ; preds = %bb.a, %bb.ap
  %i.jr = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  store i32 1038, ptr %i.js, align 8, !tbaa !38
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !40
  tail call void %i.jt(ptr noundef nonnull %0) #2
  br label %read_gif_map.exit

read_gif_map.exit:                                ; preds = %._crit_edge.i, %._crit_edge128.i, %add_map_entry.exit.i, %read_gif_map.exit.sink.split, %.preheader104.i, %.preheader106.i
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
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 1038, ptr %i.e, align 8, !tbaa !38
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !40
  tail call void %i.f(ptr noundef nonnull %0) #2
  br label %bb.c

bb.b:                                             ; preds = %pbm_getc.exit
  %i.g = add i32 %.0.i, -58
  %or.cond5 = icmp ult i32 %i.g, -10
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 1038, ptr %i.i, align 8, !tbaa !38
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !40
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
  br label %bb.e, !llvm.loop !50

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
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"jpeg_decompress_struct", !10, i64 0, !12, i64 8, !13, i64 16, !5, i64 24, !5, i64 28, !14, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !15, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !16, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !18, i64 184, !6, i64 192, !6, i64 224, !6, i64 256, !5, i64 288, !11, i64 296, !5, i64 304, !5, i64 308, !6, i64 312, !6, i64 328, !6, i64 344, !5, i64 360, !5, i64 364, !6, i64 368, !19, i64 370, !19, i64 372, !5, i64 376, !6, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !20, i64 408, !5, i64 416, !6, i64 424, !5, i64 456, !5, i64 460, !5, i64 464, !6, i64 468, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !26, i64 568, !27, i64 576, !28, i64 584, !29, i64 592, !30, i64 600, !31, i64 608}
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
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !11, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !11, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !11, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !11, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !11, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !11, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !11, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !11, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !11, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !11, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !11, i64 0}
!32 = !{!33, !11, i64 16}
!33 = !{!"jpeg_memory_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !34, i64 88}
!34 = !{!"long", !6, i64 0}
!35 = !{!9, !16, i64 152}
!36 = !{!9, !5, i64 148}
!37 = !{!9, !10, i64 0}
!38 = !{!39, !5, i64 40}
!39 = !{!"jpeg_error_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !6, i64 44, !5, i64 124, !34, i64 128, !16, i64 136, !5, i64 144, !16, i64 152, !5, i64 160, !5, i64 164}
!40 = !{!39, !11, i64 0}
!41 = distinct !{null}
!42 = !{!20, !20, i64 0}
!43 = !{!6, !6, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{null, null}
!47 = distinct !{!47, !45}
!48 = distinct !{null}
!49 = distinct !{null, ptr @read_pbm_integer}
!50 = distinct !{!50, !45}
!51 = distinct !{null, null}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !45}
end_hunk_0
