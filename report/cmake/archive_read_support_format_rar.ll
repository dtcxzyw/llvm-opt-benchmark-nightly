Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar?download=true
inline.NumInlined: 106
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@read_header:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !120
  %i.bd = lshr i32 %.sroa.9.0.copyload, 25
  %i.be = add nuw nsw i32 %i.bd, 80
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !121
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 -1, ptr %i.bg, align 8, !tbaa !122
  %i.bh = call noundef i64 @mktime(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store i64 %i.bh, ptr %i.x, align 8, !tbaa !123
  %i.bi = zext i32 %.sroa.8.0.copyload to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !72
  %i.bk = load i32, ptr %i.n, align 8, !tbaa !71  ; 2 uses
  %i.bl = and i32 %i.bk, 4
  %.not442 = icmp eq i32 %i.bl, 0
  br i1 %.not442, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @archive_entry_set_is_data_encrypted(ptr noundef %1, i8 noundef signext 1) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 20312
  store i32 1, ptr %i.bm, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.11) #20
  %.pre630 = load i32, ptr %i.n, align 8, !tbaa !71
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = phi i32 [ %.pre630, %bb.n ], [ %i.bk, %bb.m ]
  %i.bo = and i32 %i.bn, 256
  %.not443 = icmp eq i32 %i.bo, 0
  br i1 %.not443, label %.thread499, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp ult i16 %.sroa.7493.0.copyload, 40
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.10) #20
  br label %.critedge

.thread499:                                       ; preds = %bb.o
  %i.bq = zext i32 %.sroa.0484.0.copyload to i64  ; 2 uses
  store i64 %i.bq, ptr %i.v, align 8, !tbaa !124
  %i.br = zext i32 %.sroa.5.0.copyload to i64
  store i64 %i.br, ptr %i.w, align 8, !tbaa !67
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bs = load i32, ptr %i.an, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 29
  %i.bu = load i32, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  %i.bw = zext i32 %i.bs to i64
  %i.bx = shl nuw i64 %i.bw, 32                   ; 2 uses
  %i.by = zext i32 %.sroa.0484.0.copyload to i64
  %i.bz = or disjoint i64 %i.bx, %i.by            ; 2 uses
  store i64 %i.bz, ptr %i.v, align 8, !tbaa !124
  %i.ca = zext i32 %i.bu to i64
  %i.cb = shl nuw i64 %i.ca, 32                   ; 2 uses
  %i.cc = zext i32 %.sroa.5.0.copyload to i64
  %i.cd = or disjoint i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %i.w, align 8, !tbaa !67
  %i.ce = icmp slt i64 %i.bx, 0
  %i.cf = icmp slt i64 %i.cb, 0
  %or.cond = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.18) #20
  br label %.critedge

bb.t:                                             ; preds = %bb.r, %.thread499
  %i.cg = phi i64 [ %i.bq, %.thread499 ], [ %i.bz, %bb.r ] ; 3 uses
  %.0409498502 = phi ptr [ %i.an, %.thread499 ], [ %i.bv, %bb.r ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 3 uses
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !70
  %i.ci = icmp eq i8 %2, 122                      ; 2 uses
  br i1 %i.ci, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cj = ptrtoint ptr %.0409498502 to i64
  %i.ck = ptrtoint ptr %i.ag to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = xor i64 %i.o, 9223372036854775807
  %i.cn = icmp samesign ugt i64 %i.cg, %i.cm
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.19) #20
  br label %.critedge

bb.w:                                             ; preds = %bb.u
  %i.co = add nuw nsw i64 %i.cg, %i.o             ; 3 uses
  %i.cp = add nsw i64 %i.co, -7
  %i.cq = tail call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef %i.cp, ptr noundef null) #20 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.21) #20
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cl
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  %.2411 = phi ptr [ %i.ct, %bb.y ], [ %.0409498502, %bb.t ] ; 24 uses
  %.pn = phi ptr [ %i.cs, %bb.y ], [ %i.am, %bb.t ]
  %.1406 = phi i64 [ %i.co, %bb.y ], [ %i.o, %bb.t ] ; 4 uses
  %.1408 = getelementptr i8, ptr %.pn, i64 -7     ; 3 uses
  %i.cu = zext i16 %.sroa.11.0.copyload.fr to i32 ; 20 uses
  %i.cv = zext i16 %.sroa.11.0.copyload.fr to i64 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.cv ; 5 uses
  %i.cx = icmp ugt ptr %i.cw, %.1408
  br i1 %i.cx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.22) #20
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !125
  %i.da = shl nuw nsw i32 %i.cu, 1                ; 8 uses
  %i.db = add nuw nsw i32 %i.da, 2
  %i.dc = zext nneg i32 %i.db to i64              ; 3 uses
  %i.dd = icmp ult i64 %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !109 ; 2 uses
  br i1 %i.dd, label %bb.ac, label %._crit_edge631

bb.ac:                                            ; preds = %bb.ab
  %i.dg = tail call ptr @realloc(ptr noundef %i.df, i64 noundef %i.dc) #23 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.23) #20
  br label %.critedge

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !109
  store i64 %i.dc, ptr %i.cy, align 8, !tbaa !125
  br label %._crit_edge631

._crit_edge631:                                   ; preds = %bb.ab, %bb.ae
  %i.di = phi ptr [ %i.dg, %bb.ae ], [ %i.df, %bb.ab ] ; 38 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %.2411, i64 %i.cv, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cv
  store i8 0, ptr %i.dk, align 1, !tbaa !33
  %i.dl = load i32, ptr %i.n, align 8, !tbaa !71
  %i.dm = and i32 %i.dl, 512
  %.not444 = icmp eq i32 %i.dm, 0
  br i1 %.not444, label %.preheader, label %bb.af

.preheader:                                       ; preds = %._crit_edge631
  %i.dn = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.di, i32 noundef 92) #22 ; 2 uses
  %.not445599 = icmp eq ptr %i.dn, null
  br i1 %.not445599, label %.loopexit, label %.lr.ph600

bb.af:                                            ; preds = %._crit_edge631
  %i.do = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.di) #22 ; 2 uses
  %.not446 = icmp eq i64 %i.do, %i.cv
  br i1 %.not446, label %bb.be, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = add i32 %i.dp, 1                        ; 3 uses
  %.not448 = icmp ult i32 %i.dq, %i.cu
  br i1 %.not448, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dr = add nsw i32 %i.dp, 2
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.0379 = phi i32 [ %i.dq, %bb.ag ], [ %i.dr, %bb.ah ] ; 3 uses
  %i.dv = phi i8 [ 0, %bb.ag ], [ %i.du, %bb.ah ] ; 2 uses
  %i.dw = icmp ult i32 %.0379, %i.cu
  br i1 %i.dw, label %.lr.ph.lr.ph, label %.outer._crit_edge.thread

.lr.ph.lr.ph:                                     ; preds = %bb.ai
  %i.dx = icmp ne i16 %.sroa.11.0.copyload.fr, 0
  %i.dy = add nsw i32 %i.cu, -1                   ; 2 uses
  %scevgep740 = getelementptr i8, ptr %i.di, i64 2
  %scevgep745.a = getelementptr i8, ptr %.2411, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.thread503
  %.fr = phi i1 [ %i.dx, %.lr.ph.lr.ph ], [ true, %.thread503 ]
  %.1380.ph587 = phi i32 [ %.0379, %.lr.ph.lr.ph ], [ %.5384, %.thread503 ] ; 4 uses
  %.0385.ph586 = phi i8 [ 0, %.lr.ph.lr.ph ], [ %.1386540, %.thread503 ] ; 2 uses
  %.0387.ph585 = phi i8 [ 0, %.lr.ph.lr.ph ], [ %i.mg, %.thread503 ] ; 3 uses
  %.0399.ph584 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.3402, %.thread503 ] ; 24 uses
  br i1 %.fr, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not464.us = icmp eq i8 %.0387.ph585, 0
  br i1 %.not464.us, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.us
  %i.dz = add nuw nsw i32 %.1380.ph587, 1
  %i.ea = zext nneg i32 %.1380.ph587 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !33
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.split.us
  %.1388.us = phi i8 [ %.0387.ph585, %.lr.ph.split.us ], [ 8, %bb.aj ]
  %.1386.us = phi i8 [ %.0385.ph586, %.lr.ph.split.us ], [ %i.ec, %bb.aj ] ; 6 uses
  %.2381.us = phi i32 [ %.1380.ph587, %.lr.ph.split.us ], [ %i.dz, %bb.aj ] ; 13 uses
  %i.ed = add i8 %.1388.us, -2                    ; 6 uses
  %i.ee = zext i8 %.1386.us to i32
  %i.ef = zext nneg i8 %i.ed to i32
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = and i32 %i.eg, 3
  switch i32 %i.eh, label %.unreachabledefault [
    i32 0, label %bb.aq
    i32 1, label %bb.ap
    i32 2, label %bb.ao
    i32 3, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %.not465.us = icmp ult i32 %.2381.us, %i.cu
  br i1 %.not465.us, label %bb.am, label %.outer._crit_edge, !llvm.loop !126

bb.am:                                            ; preds = %bb.al
  %i.ei = add nuw nsw i32 %.2381.us, 1            ; 4 uses
  %i.ej = zext nneg i32 %.2381.us to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !33  ; 3 uses
  %.not466.us = icmp sgt i8 %i.el, -1
  br i1 %.not466.us, label %.loopexit514, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not467.us = icmp ult i32 %i.ei, %i.cu
  br i1 %.not467.us, label %.split.us, label %.outer._crit_edge, !llvm.loop !126

bb.ao:                                            ; preds = %bb.ak
  %.not468.us = icmp ult i32 %.2381.us, %i.dy
  br i1 %.not468.us, label %.split558.us, label %.outer._crit_edge

bb.ap:                                            ; preds = %bb.ak
  %.not469.us = icmp ult i32 %.2381.us, %i.cu
  br i1 %.not469.us, label %.split563.us, label %.outer._crit_edge

bb.aq:                                            ; preds = %bb.ak
  %.not470.us = icmp ult i32 %.2381.us, %i.cu
  br i1 %.not470.us, label %.split568.us, label %.outer._crit_edge

.unreachabledefault:                              ; preds = %bb.ak
  unreachable

default.unreachable:                              ; preds = %bb.as
  unreachable

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %.1380545 = phi i32 [ %.1380.be, %.backedge ], [ %.1380.ph587, %.lr.ph ] ; 3 uses
  %.0385544 = phi i8 [ %.1386, %.backedge ], [ %.0385.ph586, %.lr.ph ]
  %.0387543 = phi i8 [ %i.eq, %.backedge ], [ %.0387.ph585, %.lr.ph ] ; 2 uses
  %.not464 = icmp eq i8 %.0387543, 0
  br i1 %.not464, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split
  %i.em = add nuw nsw i32 %.1380545, 1
  %i.en = zext nneg i32 %.1380545 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.split
  %.1388 = phi i8 [ %.0387543, %.lr.ph.split ], [ 8, %bb.ar ]
  %.1386 = phi i8 [ %.0385544, %.lr.ph.split ], [ %i.ep, %bb.ar ] ; 7 uses
  %.2381 = phi i32 [ %.1380545, %.lr.ph.split ], [ %i.em, %bb.ar ] ; 13 uses
  %i.eq = add i8 %.1388, -2                       ; 7 uses
  %i.er = zext i8 %.1386 to i32
  %i.es = zext nneg i8 %i.eq to i32
  %i.et = lshr i32 %i.er, %i.es
  %i.eu = and i32 %i.et, 3
  switch i32 %i.eu, label %default.unreachable [
    i32 0, label %bb.at
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 3, label %bb.aw
  ]

bb.at:                                            ; preds = %bb.as
  %.not470 = icmp ult i32 %.2381, %i.cu
  br i1 %.not470, label %.split568.us, label %.backedge

.backedge:                                        ; preds = %bb.aw, %bb.ay, %bb.at, %bb.au
  %.1380.be = phi i32 [ %.2381, %bb.au ], [ %.2381, %bb.at ], [ %.2381, %bb.aw ], [ %i.gc, %bb.ay ] ; 3 uses
  %i.ev = icmp ult i32 %.1380.be, %i.cu
  br i1 %i.ev, label %.lr.ph.split, label %.outer._crit_edge, !llvm.loop !126

.split568.us:                                     ; preds = %bb.at, %bb.aq
  %.us-phi569 = phi i8 [ %.1386.us, %bb.aq ], [ %.1386, %bb.at ]
  %.us-phi570 = phi i32 [ %.2381.us, %bb.aq ], [ %.2381, %bb.at ] ; 2 uses
  %.us-phi571 = phi i8 [ %i.ed, %bb.aq ], [ %i.eq, %bb.at ]
  %i.ew = zext nneg i32 %.0399.ph584 to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ew
  store i8 0, ptr %i.ex, align 1, !tbaa !33
  %i.ey = add nuw nsw i32 %.us-phi570, 1
  %i.ez = zext nneg i32 %.us-phi570 to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !33
  %i.fc = add nuw nsw i32 %.0399.ph584, 2
  %i.fd = zext nneg i32 %.0399.ph584 to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  store i8 %i.fb, ptr %i.ff, align 1, !tbaa !33
  br label %.thread503

bb.au:                                            ; preds = %bb.as
  %.not469 = icmp ult i32 %.2381, %i.cu
  br i1 %.not469, label %.split563.us, label %.backedge

.split563.us:                                     ; preds = %bb.au, %bb.ap
  %.us-phi564 = phi i8 [ %.1386.us, %bb.ap ], [ %.1386, %bb.au ]
  %.us-phi565 = phi i32 [ %.2381.us, %bb.ap ], [ %.2381, %bb.au ] ; 2 uses
  %.us-phi566 = phi i8 [ %i.ed, %bb.ap ], [ %i.eq, %bb.au ]
  %i.fg = zext nneg i32 %.0399.ph584 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fg
  store i8 %i.dv, ptr %i.fh, align 1, !tbaa !33
  %i.fi = add nuw nsw i32 %.us-phi565, 1
  %i.fj = zext nneg i32 %.us-phi565 to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !33
  %i.fm = add nuw nsw i32 %.0399.ph584, 2
  %i.fn = zext nneg i32 %.0399.ph584 to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 %i.fl, ptr %i.fp, align 1, !tbaa !33
  br label %.thread503

bb.av:                                            ; preds = %bb.as
  %.not468 = icmp ult i32 %.2381, %i.dy
  br i1 %.not468, label %.split558.us, label %.outer._crit_edge

.split558.us:                                     ; preds = %bb.av, %bb.ao
  %.us-phi559 = phi i8 [ %.1386.us, %bb.ao ], [ %.1386, %bb.av ]
  %.us-phi560 = phi i32 [ %.2381.us, %bb.ao ], [ %.2381, %bb.av ] ; 2 uses
  %.us-phi561 = phi i8 [ %i.ed, %bb.ao ], [ %i.eq, %bb.av ]
  %i.fq = zext nneg i32 %.us-phi560 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !33
  %i.fu = zext nneg i32 %.0399.ph584 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fu
  store i8 %i.ft, ptr %i.fv, align 1, !tbaa !33
  %i.fw = load i8, ptr %i.fr, align 1, !tbaa !33
  %i.fx = add nuw nsw i32 %.0399.ph584, 2
  %i.fy = zext nneg i32 %.0399.ph584 to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  store i8 %i.fw, ptr %i.ga, align 1, !tbaa !33
  %i.gb = add nuw nsw i32 %.us-phi560, 2
  br label %.thread503

bb.aw:                                            ; preds = %bb.as
  %.not465 = icmp ult i32 %.2381, %i.cu
  br i1 %.not465, label %bb.ax, label %.backedge, !llvm.loop !126

bb.ax:                                            ; preds = %bb.aw
  %i.gc = add nuw nsw i32 %.2381, 1               ; 4 uses
  %i.gd = zext nneg i32 %.2381 to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !33  ; 3 uses
  %.not466 = icmp sgt i8 %i.gf, -1
  br i1 %.not466, label %.loopexit514, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not467 = icmp ult i32 %i.gc, %i.cu
  br i1 %.not467, label %.split.us, label %.backedge, !llvm.loop !126

.split.us:                                        ; preds = %bb.ay, %bb.an
  %.us-phi552 = phi i8 [ %.1386.us, %bb.an ], [ %.1386, %bb.ay ]
  %.us-phi553 = phi i32 [ %.2381.us, %bb.an ], [ %.2381, %bb.ay ]
  %.us-phi554 = phi i8 [ %i.ed, %bb.an ], [ %i.eq, %bb.ay ]
  %.us-phi555 = phi i32 [ %i.ei, %bb.an ], [ %i.gc, %bb.ay ]
  %.us-phi556 = phi i8 [ %i.el, %bb.an ], [ %i.gf, %bb.ay ]
  %i.gg = add nuw nsw i32 %.us-phi553, 2
  %i.gh = zext nneg i32 %.us-phi555 to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !33
  br label %.loopexit514

.loopexit514:                                     ; preds = %bb.ax, %bb.am, %.split.us
  %.1386541 = phi i8 [ %.us-phi552, %.split.us ], [ %.1386.us, %bb.am ], [ %.1386, %bb.ax ] ; 4 uses
  %i.gk = phi i8 [ %.us-phi554, %.split.us ], [ %i.ed, %bb.am ], [ %i.eq, %bb.ax ] ; 4 uses
  %i.gl = phi i8 [ %.us-phi556, %.split.us ], [ %i.el, %bb.am ], [ %i.gf, %bb.ax ] ; 4 uses
  %.3382 = phi i32 [ %i.gg, %.split.us ], [ %i.ei, %bb.am ], [ %i.gc, %bb.ax ] ; 4 uses
  %.0378 = phi i8 [ %i.gj, %.split.us ], [ 0, %bb.am ], [ 0, %bb.ax ] ; 3 uses
  %.0377 = phi i8 [ %i.dv, %.split.us ], [ 0, %bb.am ], [ 0, %bb.ax ] ; 3 uses
  %i.gm = icmp ult i32 %.0399.ph584, %i.da
  br i1 %i.gm, label %iter.check, label %.thread503

iter.check:                                       ; preds = %.loopexit514
  %i.gn = and i8 %i.gl, 127
  %narrow = add nuw i8 %i.gn, 2                   ; 5 uses
  %i.go = zext i32 %.0399.ph584 to i64            ; 20 uses
  %i.gp = xor i32 %.0399.ph584, -1
  %i.gq = add i32 %i.da, %i.gp
  %i.gr = lshr i32 %i.gq, 1
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = and i8 %i.gl, 127
  %narrow767.a = add nuw i8 %i.gt, 1
  %i.gu = zext i8 %narrow767.a to i64
  %umin748 = tail call i64 @llvm.umin.i64(i64 %i.gs, i64 %i.gu) ; 3 uses
  %i.gv = add nuw nsw i64 %umin748, 1             ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin748, 3
  br i1 %min.iters.check, label %.lr.ph582.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.gw = xor i32 %.0399.ph584, -1
  %i.gx = add i32 %i.da, %i.gw
  %i.gy = lshr i32 %i.gx, 1
  %i.gz = and i8 %i.gl, 127
  %narrow768 = add nuw i8 %i.gz, 1
  %i.ha = zext i8 %narrow768 to i32
  %umin = tail call i32 @llvm.umin.i32(i32 %i.gy, i32 %i.ha)
  %i.hb = lshr i64 %i.go, 1
  %i.hc = trunc nuw i64 %i.hb to i31
  %i.hd = trunc nuw nsw i32 %umin to i31
  %i.he = xor i31 %i.hc, -1
  %i.hf = icmp ult i31 %i.he, %i.hd
  br i1 %i.hf, label %.lr.ph582.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.di, i64 %i.go
  %i.hg = xor i32 %.0399.ph584, -1
  %i.hh = add i32 %i.da, %i.hg
  %i.hi = lshr i32 %i.hh, 1
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = and i8 %i.gl, 127
  %narrow769 = add nuw i8 %i.hk, 1
  %i.hl = zext i8 %narrow769 to i64
  %umin742 = tail call i64 @llvm.umin.i64(i64 %i.hj, i64 %i.hl) ; 2 uses
  %i.hm = shl nuw nsw i64 %umin742, 1
  %i.hn = getelementptr i8, ptr %scevgep740, i64 %i.hm
  %scevgep743.a = getelementptr i8, ptr %i.hn, i64 %i.go
  %i.ho = lshr i64 %i.go, 1                       ; 2 uses
  %scevgep744 = getelementptr i8, ptr %.2411, i64 %i.ho
  %i.hp = getelementptr i8, ptr %scevgep745.a, i64 %umin742
  %scevgep746 = getelementptr i8, ptr %i.hp, i64 %i.ho
  %bound0 = icmp ult ptr %scevgep, %scevgep746
  %bound1 = icmp ult ptr %scevgep744, %scevgep743.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph582.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check749 = icmp samesign ult i64 %umin748, 15
  br i1 %min.iters.check749, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hq = and i64 %i.gv, 12
  %n.vec = and i64 %i.gv, 496                     ; 12 uses
  %i.hr = shl nuw nsw i64 %n.vec, 1
  %i.hs = add nuw nsw i64 %i.hr, %i.go
  %i.ht = trunc i64 %n.vec to i8
  %i.hu = sub i8 %narrow, %i.ht
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %.0377, i64 0 ; 16 uses
  %broadcast.splatinsert750 = insertelement <8 x i8> poison, i8 %.0378, i64 0
  %broadcast.splat751 = shufflevector <8 x i8> %broadcast.splatinsert750, <8 x i8> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.hv = lshr i64 %i.go, 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.go
  %i.hx = getelementptr i8, ptr %i.di, i64 %i.go
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.hv ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %wide.load = load <8 x i8>, ptr %i.hz, align 1, !tbaa !33, !alias.scope !127
  %wide.load752 = load <8 x i8>, ptr %i.ia, align 1, !tbaa !33, !alias.scope !127
  %i.ib = add <8 x i8> %wide.load, %broadcast.splat751
  %i.ic = add <8 x i8> %wide.load752, %broadcast.splat751
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.ib, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.hw, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %interleaved.vec753 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.ic, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec753, ptr %i.hy, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %i.id = icmp eq i64 %n.vec, 16
  br i1 %i.id, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ie = add nuw nsw i64 %i.go, 32               ; 3 uses
  %i.if = lshr i64 %i.ie, 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ie
  %i.ih = getelementptr i8, ptr %i.di, i64 %i.ie
  %i.ii = getelementptr i8, ptr %i.ih, i64 16
  %i.ij = and i64 %i.if, 2147483647
  %i.ik = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %wide.load.1 = load <8 x i8>, ptr %i.ik, align 1, !tbaa !33, !alias.scope !127
  %wide.load752.1 = load <8 x i8>, ptr %i.il, align 1, !tbaa !33, !alias.scope !127
  %i.im = add <8 x i8> %wide.load.1, %broadcast.splat751
  %i.in = add <8 x i8> %wide.load752.1, %broadcast.splat751
  %interleaved.vec.1 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.im, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ig, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %interleaved.vec753.1 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.in, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec753.1, ptr %i.ii, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %i.io = icmp eq i64 %n.vec, 32
  br i1 %i.io, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ip = add nuw nsw i64 %i.go, 64               ; 3 uses
  %i.iq = lshr i64 %i.ip, 1
  %i.ir = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ip
  %i.is = getelementptr i8, ptr %i.di, i64 %i.ip
  %i.it = getelementptr i8, ptr %i.is, i64 16
  %i.iu = and i64 %i.iq, 2147483647
  %i.iv = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %wide.load.2 = load <8 x i8>, ptr %i.iv, align 1, !tbaa !33, !alias.scope !127
  %wide.load752.2 = load <8 x i8>, ptr %i.iw, align 1, !tbaa !33, !alias.scope !127
  %i.ix = add <8 x i8> %wide.load.2, %broadcast.splat751
  %i.iy = add <8 x i8> %wide.load752.2, %broadcast.splat751
  %interleaved.vec.2 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.ix, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.ir, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %interleaved.vec753.2 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.iy, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec753.2, ptr %i.it, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %i.iz = icmp eq i64 %n.vec, 48
  br i1 %i.iz, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ja = add nuw nsw i64 %i.go, 96               ; 3 uses
  %i.jb = lshr i64 %i.ja, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ja
  %i.jd = getelementptr i8, ptr %i.di, i64 %i.ja
  %i.je = getelementptr i8, ptr %i.jd, i64 16
  %i.jf = and i64 %i.jb, 2147483647
  %i.jg = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %wide.load.3 = load <8 x i8>, ptr %i.jg, align 1, !tbaa !33, !alias.scope !127
  %wide.load752.3 = load <8 x i8>, ptr %i.jh, align 1, !tbaa !33, !alias.scope !127
  %i.ji = add <8 x i8> %wide.load.3, %broadcast.splat751
  %i.jj = add <8 x i8> %wide.load752.3, %broadcast.splat751
  %interleaved.vec.3 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.ji, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.jc, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %interleaved.vec753.3 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.jj, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec753.3, ptr %i.je, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %i.jk = icmp eq i64 %n.vec, 64
  br i1 %i.jk, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.jl = add nuw nsw i64 %i.go, 128              ; 3 uses
  %i.jm = lshr i64 %i.jl, 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.jl
  %i.jo = getelementptr i8, ptr %i.di, i64 %i.jl
  %i.jp = getelementptr i8, ptr %i.jo, i64 16
  %i.jq = and i64 %i.jm, 2147483647
  %i.jr = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %wide.load.4 = load <8 x i8>, ptr %i.jr, align 1, !tbaa !33, !alias.scope !127
  %wide.load752.4 = load <8 x i8>, ptr %i.js, align 1, !tbaa !33, !alias.scope !127
  %i.jt = add <8 x i8> %wide.load.4, %broadcast.splat751
  %i.ju = add <8 x i8> %wide.load752.4, %broadcast.splat751
  %interleaved.vec.4 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.jt, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec.4, ptr %i.jn, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %interleaved.vec753.4 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.ju, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec753.4, ptr %i.jp, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %i.jv = icmp eq i64 %n.vec, 80
  br i1 %i.jv, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.jw = add nuw nsw i64 %i.go, 160              ; 3 uses
  %i.jx = lshr i64 %i.jw, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.jw
  %i.jz = getelementptr i8, ptr %i.di, i64 %i.jw
  %i.ka = getelementptr i8, ptr %i.jz, i64 16
  %i.kb = and i64 %i.jx, 2147483647
  %i.kc = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.kb ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %wide.load.5 = load <8 x i8>, ptr %i.kc, align 1, !tbaa !33, !alias.scope !127
  %wide.load752.5 = load <8 x i8>, ptr %i.kd, align 1, !tbaa !33, !alias.scope !127
  %i.ke = add <8 x i8> %wide.load.5, %broadcast.splat751
  %i.kf = add <8 x i8> %wide.load752.5, %broadcast.splat751
  %interleaved.vec.5 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.ke, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec.5, ptr %i.jy, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %interleaved.vec753.5 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.kf, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec753.5, ptr %i.ka, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %i.kg = icmp eq i64 %n.vec, 96
  br i1 %i.kg, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.kh = add nuw nsw i64 %i.go, 192              ; 3 uses
  %i.ki = lshr i64 %i.kh, 1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.kh
  %i.kk = getelementptr i8, ptr %i.di, i64 %i.kh
  %i.kl = getelementptr i8, ptr %i.kk, i64 16
  %i.km = and i64 %i.ki, 2147483647
  %i.kn = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %wide.load.6 = load <8 x i8>, ptr %i.kn, align 1, !tbaa !33, !alias.scope !127
  %wide.load752.6 = load <8 x i8>, ptr %i.ko, align 1, !tbaa !33, !alias.scope !127
  %i.kp = add <8 x i8> %wide.load.6, %broadcast.splat751
  %i.kq = add <8 x i8> %wide.load752.6, %broadcast.splat751
  %interleaved.vec.6 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.kp, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec.6, ptr %i.kj, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %interleaved.vec753.6 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.kq, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec753.6, ptr %i.kl, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %i.kr = icmp eq i64 %n.vec, 112
  br i1 %i.kr, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.ks = add nuw nsw i64 %i.go, 224              ; 3 uses
  %i.kt = lshr i64 %i.ks, 1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ks
  %i.kv = getelementptr i8, ptr %i.di, i64 %i.ks
  %i.kw = getelementptr i8, ptr %i.kv, i64 16
  %i.kx = and i64 %i.kt, 2147483647
  %i.ky = getelementptr inbounds nuw i8, ptr %.2411, i64 %i.kx ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %wide.load.7 = load <8 x i8>, ptr %i.ky, align 1, !tbaa !33, !alias.scope !127
  %wide.load752.7 = load <8 x i8>, ptr %i.kz, align 1, !tbaa !33, !alias.scope !127
  %i.la = add <8 x i8> %wide.load.7, %broadcast.splat751
  %i.lb = add <8 x i8> %wide.load752.7, %broadcast.splat751
  %interleaved.vec.7 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.la, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec.7, ptr %i.ku, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  %interleaved.vec753.7 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %i.lb, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec753.7, ptr %i.kw, align 1, !tbaa !33, !alias.scope !130, !noalias !127
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %i.lc = trunc nuw nsw i64 %n.vec to i32
  %i.ld = shl nuw nsw i32 %i.lc, 1
  %i.le = add i32 %.0399.ph584, %i.ld
  %cmp.n = icmp eq i64 %i.gv, %n.vec
  br i1 %cmp.n, label %.thread503, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph582.preheader, label %vec.epilog.ph, !prof !132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
end_hunk_0
