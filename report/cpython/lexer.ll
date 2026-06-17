inline.NumInlined: 86
inline.NumDeleted: 14
begin_hunk_0_@_PyTokenizer_Get:bb.a
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cj = load i8, ptr %i.v, align 1, !tbaa !34
  %.not6.i312.i.i = icmp eq i8 %i.cj, %i.am
  br i1 %.not6.i312.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store i32 %i.w, ptr %i.o, align 4, !tbaa !28
  br label %tok_backup.exit313.i.i

tok_backup.exit313.i.i:                           ; preds = %bb.g, %bb.ag, %tok_backup.exit310.i.i, %bb.k, %bb.i, %bb.f
  %.pre39.i315572.i.i = phi ptr [ %.pre39.i315573.i.i, %tok_backup.exit310.i.i ], [ %.pre39.i301.i.i, %bb.f ], [ %i.ab, %bb.i ], [ %i.aj, %bb.k ], [ %.pre39.i301.i.i, %bb.ag ], [ %.pre39.i301.i.i, %bb.g ]
  %.pre.i314568.i.i = phi ptr [ %i.bm, %tok_backup.exit310.i.i ], [ %i.v, %bb.f ], [ %i.ab, %bb.i ], [ %i.aj, %bb.k ], [ %i.v, %bb.ag ], [ %i.v, %bb.g ] ; 2 uses
  %i.ck = getelementptr i8, ptr %i.e, i64 16      ; 7 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %tok_backup.exit313.i.i
  %i.cn = getelementptr i8, ptr %i.e, i64 12      ; 3 uses
  br label %bb.ai

bb.ah:                                            ; preds = %tok_nextc.exit321.i.i
  %i.co = add nuw nsw i32 %.0277496.i.i, 1        ; 2 uses
  %i.cp = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.ai, label %._crit_edge.i.i, !llvm.loop !39

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i.i
  %.pre39.i315.i.i = phi ptr [ %.pre39.i315572.i.i, %.lr.ph.i.i ], [ %.pre39.i315571.i.i, %bb.ah ]
  %.pre.i314.i.i = phi ptr [ %.pre.i314568.i.i, %.lr.ph.i.i ], [ %i.dj, %bb.ah ]
  %.0277496.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.co, %bb.ah ]
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aq, %bb.ai
  %.pre39.i315569.i.i = phi ptr [ %i.dc, %bb.aq ], [ %.pre39.i315.i.i, %bb.ai ] ; 4 uses
  %.pre.i314565.i.i = phi ptr [ %i.db, %bb.aq ], [ %.pre.i314.i.i, %bb.ai ] ; 5 uses
  %.not.i316.i.i = icmp eq ptr %.pre.i314565.i.i, %.pre39.i315569.i.i
  br i1 %.not.i316.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, 2147483646
  br i1 %i.cs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %tok_nextc.exit321.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ct = add nuw nsw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.o, align 4, !tbaa !28
  %i.cu = getelementptr i8, ptr %.pre.i314565.i.i, i64 1 ; 2 uses
  store ptr %i.cu, ptr %i.i, align 8, !tbaa !11
  %i.cv = load i8, ptr %.pre.i314565.i.i, align 1, !tbaa !34
  %i.cw = zext i8 %i.cv to i32
  br label %tok_nextc.exit321.i.i

bb.an:                                            ; preds = %bb.aj
  %i.cx = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i318.i.i = icmp eq i32 %i.cx, 10
  br i1 %.not21.i318.i.i, label %bb.ao, label %tok_nextc.exit321.i.i

bb.ao:                                            ; preds = %bb.an
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.cz = tail call i32 %i.cy(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i319.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not22.i319.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.da = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.da, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit321.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.db = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.db, ptr %i.u, align 8, !tbaa !33
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = tail call ptr @memchr(ptr noundef readonly %i.db, i32 noundef 0, i64 noundef %i.df) #7
  %.not24.i320.i.i = icmp eq ptr %i.dg, null
  br i1 %.not24.i320.i.i, label %bb.aj, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dh = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.di = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.di, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit321.i.i

tok_nextc.exit321.i.i:                            ; preds = %bb.an, %bb.ar, %bb.ap, %bb.am, %bb.al
  %.pre39.i315571.i.i = phi ptr [ %.pre39.i315569.i.i, %bb.al ], [ %.pre39.i315569.i.i, %bb.am ], [ %i.da, %bb.ap ], [ %i.di, %bb.ar ], [ %.pre39.i315569.i.i, %bb.an ]
  %i.dj = phi ptr [ %.pre.i314565.i.i, %bb.al ], [ %i.cu, %bb.am ], [ %i.da, %bb.ap ], [ %i.di, %bb.ar ], [ %.pre.i314565.i.i, %bb.an ] ; 4 uses
  %.0.i317.i.i = phi i32 [ -1, %bb.al ], [ %i.cw, %bb.am ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.an ] ; 3 uses
  %i.dk = load i8, ptr %i.cn, align 4, !tbaa !41
  %i.dl = sext i8 %i.dk to i32
  %.not287.i.i = icmp eq i32 %.0.i317.i.i, %i.dl
  br i1 %.not287.i.i, label %bb.ah, label %bb.as

bb.as:                                            ; preds = %tok_nextc.exit321.i.i
  %.not.i322.i.i = icmp eq i32 %.0.i317.i.i, -1
  br i1 %.not.i322.i.i, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dm = getelementptr i8, ptr %i.dj, i64 -1     ; 4 uses
  store ptr %i.dm, ptr %i.i, align 8, !tbaa !11
  %i.dn = load ptr, ptr %0, align 8, !tbaa !35
  %i.do = icmp ult ptr %i.dm, %i.dn
  br i1 %i.do, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dp = load i8, ptr %i.dm, align 1, !tbaa !34
  %i.dq = trunc nuw i32 %.0.i317.i.i to i8
  %.not6.i323.i.i = icmp eq i8 %i.dp, %i.dq
  br i1 %.not6.i323.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.dr = load i32, ptr %i.o, align 4, !tbaa !28
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr %i.o, align 4, !tbaa !28
  br label %bb.ba

._crit_edge.i.i:                                  ; preds = %bb.ah, %tok_backup.exit313.i.i
  %i.dt = phi ptr [ %.pre.i314568.i.i, %tok_backup.exit313.i.i ], [ %i.dj, %bb.ah ]
  %i.du = getelementptr i8, ptr %i.e, i64 80      ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18 ; 2 uses
  %.not299.i.i = icmp eq ptr %i.dv, null
  br i1 %.not299.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.dv) #8
  store ptr null, ptr %i.du, align 8, !tbaa !18
  %i.dw = getelementptr i8, ptr %i.e, i64 64
  store i64 0, ptr %i.dw, align 8, !tbaa !22
  %i.dx = getelementptr i8, ptr %i.e, i64 72
  store i64 -1, ptr %i.dx, align 8, !tbaa !21
  %.pre581.i.i = load ptr, ptr %i.i, align 8, !tbaa !11
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge.i.i
  %i.dy = phi ptr [ %.pre581.i.i, %bb.ay ], [ %i.dt, %._crit_edge.i.i ]
  %i.dz = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ea = load i32, ptr %i.b, align 8, !tbaa !17
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr %i.b, align 8, !tbaa !17
  %i.ec = getelementptr i8, ptr %i.e, i64 96
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !37
  %i.ee = icmp eq i32 %i.ed, 1
  %i.ef = select i1 %i.ee, i32 64, i32 61
  %i.eg = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ef, ptr noundef %i.dz, ptr noundef %i.dy) #8
  br label %tok_get.exit

bb.ba:                                            ; preds = %bb.ax, %bb.as
  %i.eh = phi ptr [ %i.dm, %bb.ax ], [ %i.dj, %bb.as ]
  %i.ei = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ej = getelementptr i8, ptr %0, i64 2784
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !42
  %i.ek = load i32, ptr %i.ck, align 8, !tbaa !38
  %.not288497.i.i = icmp eq i32 %i.ek, 0
  br i1 %.not288497.i.i, label %._crit_edge505.i.i, label %.lr.ph502.i.i

.lr.ph502.i.i:                                    ; preds = %bb.ba
  %i.el = getelementptr i8, ptr %i.e, i64 92      ; 4 uses
  %i.em = getelementptr i8, ptr %i.e, i64 8       ; 3 uses
  %i.en = getelementptr i8, ptr %i.e, i64 20
  br label %bb.bb

.preheader.i.i:                                   ; preds = %.backedge.i.i
  %i.eo = icmp sgt i32 %.2262629.i.i, 0
  br i1 %i.eo, label %.lr.ph504.i.i, label %.preheader.i.._crit_edge505.i_crit_edge.i

.preheader.i.._crit_edge505.i_crit_edge.i:        ; preds = %.preheader.i.i
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !11
  br label %._crit_edge505.i.i

.lr.ph504.i.i:                                    ; preds = %.preheader.i.i
  %i.ep = load i8, ptr %i.cn, align 4, !tbaa !41  ; 2 uses
  %.not.i377.i.i = icmp eq i8 %i.ep, -1
  %.pre186.i = load ptr, ptr %i.i, align 8, !tbaa !11 ; 2 uses
  br i1 %.not.i377.i.i, label %._crit_edge505.i.i, label %.lr.ph504.split.i.i

.lr.ph504.split.i.i:                              ; preds = %.lr.ph504.i.i
  %i.eq = load ptr, ptr %0, align 8, !tbaa !35
  br label %bb.en

bb.bb:                                            ; preds = %.backedge.i.i, %.lr.ph502.i.i
  %.2500.i.i = phi i32 [ undef, %.lr.ph502.i.i ], [ %.8630.i.i, %.backedge.i.i ] ; 14 uses
  %.0260499.i.i = phi i32 [ 0, %.lr.ph502.i.i ], [ %.2262629.i.i, %.backedge.i.i ]
  %.0263498.i.i = phi i32 [ 0, %.lr.ph502.i.i ], [ %.5268628.i.i, %.backedge.i.i ] ; 15 uses
  %.pre.i325.i.i = load ptr, ptr %i.i, align 8, !tbaa !11
  %.pre39.i326.i.i = load ptr, ptr %i.r, align 8, !tbaa !30
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bi, %bb.bb
  %i.er = phi ptr [ %i.fe, %bb.bi ], [ %.pre39.i326.i.i, %bb.bb ] ; 4 uses
  %i.es = phi ptr [ %i.fd, %bb.bi ], [ %.pre.i325.i.i, %bb.bb ] ; 5 uses
  %.not.i327.i.i = icmp eq ptr %i.es, %i.er
  br i1 %.not.i327.i.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.et = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.eu = icmp ugt i32 %i.et, 2147483646
  br i1 %i.eu, label %tok_nextc.exit332.thread.i.i, label %bb.be

tok_nextc.exit332.thread.i.i:                     ; preds = %bb.bd
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ev = add nuw nsw i32 %i.et, 1
  store i32 %i.ev, ptr %i.o, align 4, !tbaa !28
  %i.ew = getelementptr i8, ptr %i.es, i64 1      ; 2 uses
  store ptr %i.ew, ptr %i.i, align 8, !tbaa !11
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !34
  %i.ey = zext i8 %i.ex to i32
  br label %tok_nextc.exit332thread-pre-split.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.ez = load i32, ptr %i.s, align 8, !tbaa !24  ; 2 uses
  %.not21.i329.i.i = icmp eq i32 %i.ez, 10
  br i1 %.not21.i329.i.i, label %bb.bg, label %tok_nextc.exit332.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.fa = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.fb = tail call i32 %i.fa(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i330.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not22.i330.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fc = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.fc, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit332thread-pre-split.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.fd, ptr %i.u, align 8, !tbaa !33
  %i.fe = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = tail call ptr @memchr(ptr noundef readonly %i.fd, i32 noundef 0, i64 noundef %i.fh) #7
  %.not24.i331.i.i = icmp eq ptr %i.fi, null
  br i1 %.not24.i331.i.i, label %bb.bc, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fj = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.fk = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.fk, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit332thread-pre-split.i.i

tok_nextc.exit332thread-pre-split.i.i:            ; preds = %bb.bj, %bb.bh, %bb.be
  %.pre39.i359579.i.i = phi ptr [ %i.fk, %bb.bj ], [ %i.fc, %bb.bh ], [ %i.er, %bb.be ]
  %.pre.i358576.i.i = phi ptr [ %i.fk, %bb.bj ], [ %i.fc, %bb.bh ], [ %i.ew, %bb.be ]
  %.0.i328.ph.i.i = phi i32 [ -1, %bb.bj ], [ -1, %bb.bh ], [ %i.ey, %bb.be ]
  %.pr.i.i = load i32, ptr %i.s, align 8, !tbaa !24
  br label %tok_nextc.exit332.i.i

tok_nextc.exit332.i.i:                            ; preds = %bb.bf, %tok_nextc.exit332thread-pre-split.i.i
  %.pre39.i359578.i.i = phi ptr [ %.pre39.i359579.i.i, %tok_nextc.exit332thread-pre-split.i.i ], [ %i.er, %bb.bf ]
  %.pre.i358575.i.i = phi ptr [ %.pre.i358576.i.i, %tok_nextc.exit332thread-pre-split.i.i ], [ %i.es, %bb.bf ]
  %i.fl = phi i32 [ %.pr.i.i, %tok_nextc.exit332thread-pre-split.i.i ], [ %i.ez, %bb.bf ]
  %.0.i328.i.i = phi i32 [ %.0.i328.ph.i.i, %tok_nextc.exit332thread-pre-split.i.i ], [ -1, %bb.bf ]
  switch i32 %i.fl, label %bb.bl [
    i32 17, label %bb.bk
    i32 22, label %bb.bk
  ]

bb.bk:                                            ; preds = %tok_nextc.exit332.i.i, %tok_nextc.exit332.i.i
  %i.fm = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %tok_get.exit

bb.bl:                                            ; preds = %tok_nextc.exit332.i.i, %tok_nextc.exit332.thread.i.i
  %.pre39.i351.i.i = phi ptr [ %i.er, %tok_nextc.exit332.thread.i.i ], [ %.pre39.i359578.i.i, %tok_nextc.exit332.i.i ] ; 2 uses
  %i.fn = phi ptr [ %i.es, %tok_nextc.exit332.thread.i.i ], [ %.pre.i358575.i.i, %tok_nextc.exit332.i.i ] ; 5 uses
  %.0.i328393.i.i = phi i32 [ -1, %tok_nextc.exit332.thread.i.i ], [ %.0.i328.i.i, %tok_nextc.exit332.i.i ] ; 4 uses
  %i.fo = load i32, ptr %i.el, align 4, !tbaa !43
  %.not289.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not289.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fp = load i32, ptr %i.em, align 8, !tbaa !36
  %i.fq = icmp sgt i32 %i.fp, -1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fr = phi i1 [ false, %bb.bl ], [ %i.fq, %bb.bm ] ; 3 uses
  %.not.i.not.not.not.i.not.not.not.not.not = icmp ne i32 %.0.i328393.i.i, -1 ; 3 uses
  br i1 %.not.i.not.not.not.i.not.not.not.not.not, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fs = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.ft = icmp eq i32 %i.fs, 1
  %i.fu = icmp eq i32 %.0.i328393.i.i, 10
  %or.cond.i.i = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond.i.i, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.fv = getelementptr i8, ptr %0, i64 2756
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !44
  %.not297.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not297.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fx = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %tok_get.exit

bb.br:                                            ; preds = %bb.bp
  %or.cond5.i.i = and i1 %.not.i.not.not.not.i.not.not.not.not.not, %i.fr
  br i1 %or.cond5.i.i, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.fy = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.fz = icmp eq i32 %i.fy, 1
  br i1 %i.fz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ga = load i32, ptr %i.b, align 8, !tbaa !17
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr [104 x i8], ptr %0, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 2960
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !37
  %i.gf = icmp eq i32 %i.ge, 1
  %i.gg = select i1 %i.gf, i32 116, i32 102       ; 2 uses
  %i.gh = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, i32 noundef %i.gg, i32 noundef %i.gg) #8
  %i.gi = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.gh, ptr noundef null, ptr noundef null) #8
  br label %tok_get.exit

bb.bu:                                            ; preds = %bb.bs
  %i.gj = getelementptr i8, ptr %i.fn, i64 -1     ; 4 uses
  store ptr %i.gj, ptr %i.i, align 8, !tbaa !11
  %i.gk = load ptr, ptr %0, align 8, !tbaa !35
  %i.gl = icmp ult ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.gm = load i8, ptr %i.gj, align 1, !tbaa !34
  %.not6.i333.i.i = icmp eq i8 %i.gm, 10
  br i1 %.not6.i333.i.i, label %tok_backup.exit334.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit334.i.i:                           ; preds = %bb.bw
  %i.gn = load i32, ptr %i.o, align 4, !tbaa !28
  %i.go = add i32 %i.gn, -1
  store i32 %i.go, ptr %i.o, align 4, !tbaa !28
  %i.gp = load i32, ptr %i.b, align 8, !tbaa !17
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [104 x i8], ptr %i.a, i64 %i.gq
  store i32 0, ptr %i.gr, align 8, !tbaa !25
  store i32 0, ptr %i.el, align 4, !tbaa !43
  %i.gs = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.gt = getelementptr i8, ptr %i.e, i64 96
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !37
  %i.gv = icmp eq i32 %i.gu, 1
  %i.gw = select i1 %i.gv, i32 63, i32 60
  %i.gx = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.gw, ptr noundef %i.gs, ptr noundef nonnull %i.gj) #8
  br label %tok_get.exit

bb.by:                                            ; preds = %bb.br
  %i.gy = getelementptr i8, ptr %i.e, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !45
  %i.ha = getelementptr i8, ptr %i.gz, i64 1
  store ptr %i.ha, ptr %i.i, align 8, !tbaa !11
  %i.hb = getelementptr i8, ptr %i.e, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !46
  store ptr %i.hc, ptr %i.u, align 8, !tbaa !33
  %i.hd = load i32, ptr %i.l, align 8, !tbaa !26  ; 2 uses
  %i.he = load i32, ptr %i.b, align 8, !tbaa !17
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr [104 x i8], ptr %i.a, i64 %i.hf ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 40
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !47
  store i32 %i.hi, ptr %i.l, align 8, !tbaa !26
  %i.hj = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.hk = icmp eq i32 %i.hj, 3
  %i.hl = getelementptr i8, ptr %i.hg, i64 96
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !37
  %i.hn = icmp eq i32 %i.hm, 1
  %i.ho = select i1 %i.hn, i32 116, i32 102       ; 2 uses
  br i1 %i.hk, label %bb.bz, label %bb.cc

end_hunk_0
begin_hunk_1_@_PyTokenizer_Get:bb.a
bb.di:                                            ; preds = %.preheader.i
  %i.kq = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i354.i.i = icmp eq i32 %i.kq, 10
  br i1 %.not21.i354.i.i, label %bb.dj, label %tok_nextc.exit357.thread.i.i

bb.dj:                                            ; preds = %bb.di
  %i.kr = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.ks = tail call i32 %i.kr(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i355.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not22.i355.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.kt = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.kt, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit357.thread.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.ku = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.ku, ptr %i.u, align 8, !tbaa !33
  %i.kv = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.ku to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = tail call ptr @memchr(ptr noundef readonly %i.ku, i32 noundef 0, i64 noundef %i.ky) #7
  %.not24.i356.i.i = icmp eq ptr %i.kz, null
  br i1 %.not24.i356.i.i, label %.preheader.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.la = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.lb = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.lb, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit357.thread.i.i

tok_nextc.exit357.i.i:                            ; preds = %bb.dg
  %i.lc = add nuw nsw i32 %i.ko, 1
  store i32 %i.lc, ptr %i.o, align 4, !tbaa !28
  %i.ld = getelementptr i8, ptr %i.kn, i64 1
  store ptr %i.ld, ptr %i.i, align 8, !tbaa !11
  %i.le = load i8, ptr %i.kn, align 1, !tbaa !34  ; 2 uses
  %i.lf = zext i8 %i.le to i32
  %i.lg = getelementptr i8, ptr %i.e, i64 4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !49
  %i.li = icmp ne i8 %i.le, 125
  %or.cond9.i.i = select i1 %i.li, i1 true, i1 %i.fr
  %i.lj = icmp ne i32 %i.lh, 0
  %or.cond11.not.i.i = select i1 %or.cond9.i.i, i1 true, i1 %i.lj
  br i1 %or.cond11.not.i.i, label %tok_nextc.exit357.thread.i.i, label %bb.dn

tok_nextc.exit357.thread.i.i:                     ; preds = %bb.di, %tok_nextc.exit357.i.i, %bb.dm, %bb.dk, %bb.dh
  %.0.i353405.i.i = phi i32 [ %i.lf, %tok_nextc.exit357.i.i ], [ -1, %bb.dh ], [ -1, %bb.dk ], [ -1, %bb.dm ], [ -1, %bb.di ]
  tail call fastcc void @tok_backup(ptr noundef nonnull %0, i32 noundef %.0.i353405.i.i)
  tail call fastcc void @tok_backup(ptr noundef nonnull %0, i32 noundef 125)
  %i.lk = load i32, ptr %i.b, align 8, !tbaa !17
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr [104 x i8], ptr %i.a, i64 %i.ll
  store i32 0, ptr %i.lm, align 8, !tbaa !25
  store i32 0, ptr %i.el, align 4, !tbaa !43
  %i.ln = load ptr, ptr %i.i, align 8, !tbaa !11
  br label %bb.dn

bb.dn:                                            ; preds = %tok_nextc.exit357.thread.i.i, %tok_nextc.exit357.i.i
  %.3257.i.i = phi ptr [ %i.ln, %tok_nextc.exit357.thread.i.i ], [ %i.kn, %tok_nextc.exit357.i.i ]
  %.3251.i.i = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.lo = getelementptr i8, ptr %i.e, i64 96
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !37
  %i.lq = icmp eq i32 %i.lp, 1
  %i.lr = select i1 %i.lq, i32 63, i32 60
  %i.ls = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.lr, ptr noundef %.3251.i.i, ptr noundef %.3257.i.i) #8
  br label %tok_get.exit

.preheader10.i:                                   ; preds = %bb.cf, %bb.dt
  %.pre39.i367.i.i = phi ptr [ %i.mb, %bb.dt ], [ %.pre39.i351.i.i, %bb.cf ] ; 2 uses
  %i.lt = phi ptr [ %i.ma, %bb.dt ], [ %i.fn, %bb.cf ] ; 3 uses
  %.not.i360.i.i = icmp eq ptr %i.lt, %.pre39.i367.i.i
  br i1 %.not.i360.i.i, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %.preheader10.i
  %i.lu = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.lv = icmp ugt i32 %i.lu, 2147483646
  br i1 %i.lv, label %bb.dp, label %tok_nextc.exit365.i.i

bb.dp:                                            ; preds = %bb.do
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %.backedge.i.i

bb.dq:                                            ; preds = %.preheader10.i
  %i.lw = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i362.i.i = icmp eq i32 %i.lw, 10
  br i1 %.not21.i362.i.i, label %bb.dr, label %.backedge.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.lx = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.ly = tail call i32 %i.lx(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i363.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not22.i363.i.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.lz = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.lz, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.ma = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.ma, ptr %i.u, align 8, !tbaa !33
  %i.mb = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.ma to i64
  %i.me = sub i64 %i.mc, %i.md
  %i.mf = tail call ptr @memchr(ptr noundef readonly %i.ma, i32 noundef 0, i64 noundef %i.me) #7
  %.not24.i364.i.i = icmp eq ptr %i.mf, null
  br i1 %.not24.i364.i.i, label %.preheader10.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.mg = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.mh = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.mh, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.i.i

tok_nextc.exit365.i.i:                            ; preds = %bb.do
  %i.mi = add nuw nsw i32 %i.lu, 1
  store i32 %i.mi, ptr %i.o, align 4, !tbaa !28
  %i.mj = getelementptr i8, ptr %i.lt, i64 1      ; 3 uses
  store ptr %i.mj, ptr %i.i, align 8, !tbaa !11
  %i.mk = load i8, ptr %i.lt, align 1, !tbaa !34  ; 2 uses
  %i.ml = icmp eq i8 %i.mk, 13
  br i1 %i.ml, label %.preheader9.i, label %tok_nextc.exit373.i.i

.preheader9.i:                                    ; preds = %tok_nextc.exit365.i.i, %bb.eb
  %i.mm = phi ptr [ %i.my, %bb.eb ], [ %.pre39.i367.i.i, %tok_nextc.exit365.i.i ]
  %i.mn = phi ptr [ %i.mx, %bb.eb ], [ %i.mj, %tok_nextc.exit365.i.i ] ; 3 uses
  %.not.i368.i.i = icmp eq ptr %i.mn, %i.mm
  br i1 %.not.i368.i.i, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %.preheader9.i
  %i.mo = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.mp = icmp ugt i32 %i.mo, 2147483646
  br i1 %i.mp, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %.backedge.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.mq = add nuw nsw i32 %i.mo, 1
  store i32 %i.mq, ptr %i.o, align 4, !tbaa !28
  %i.mr = getelementptr i8, ptr %i.mn, i64 1      ; 2 uses
  store ptr %i.mr, ptr %i.i, align 8, !tbaa !11
  %i.ms = load i8, ptr %i.mn, align 1, !tbaa !34
  br label %tok_nextc.exit373.i.i

bb.dy:                                            ; preds = %.preheader9.i
  %i.mt = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i370.i.i = icmp eq i32 %i.mt, 10
  br i1 %.not21.i370.i.i, label %bb.dz, label %.backedge.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.mu = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.mv = tail call i32 %i.mu(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i371.i.i = icmp eq i32 %i.mv, 0
  br i1 %.not22.i371.i.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.mw = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.mw, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.mx = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.mx, ptr %i.u, align 8, !tbaa !33
  %i.my = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = ptrtoint ptr %i.mx to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = tail call ptr @memchr(ptr noundef readonly %i.mx, i32 noundef 0, i64 noundef %i.nb) #7
  %.not24.i372.i.i = icmp eq ptr %i.nc, null
  br i1 %.not24.i372.i.i, label %.preheader9.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nd = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.ne = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.ne, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.i.i

tok_nextc.exit373.i.i:                            ; preds = %bb.dx, %tok_nextc.exit365.i.i
  %i.nf = phi ptr [ %i.mr, %bb.dx ], [ %i.mj, %tok_nextc.exit365.i.i ]
  %.0246.in.i.i = phi i8 [ %i.ms, %bb.dx ], [ %i.mk, %tok_nextc.exit365.i.i ] ; 5 uses
  %.0246.i.i = zext i8 %.0246.in.i.i to i32
  %i.ng = load i32, ptr %i.en, align 4, !tbaa !50
  %i.nh = icmp eq i32 %i.ng, 0                    ; 2 uses
  switch i8 %.0246.in.i.i, label %bb.ej [
    i8 125, label %bb.ed
    i8 123, label %bb.ed
  ]

bb.ed:                                            ; preds = %tok_nextc.exit373.i.i, %tok_nextc.exit373.i.i
  br i1 %i.nh, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.ni = tail call i32 @_PyTokenizer_warn_invalid_escape_sequence(ptr noundef nonnull %0, i32 noundef %.0246.i.i) #8
  %.not291.i.i = icmp eq i32 %i.ni, 0
  br i1 %.not291.i.i, label %._crit_edge580.i.i, label %2

._crit_edge580.i.i:                               ; preds = %bb.ee
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !11
  br label %bb.ef

2:                                                ; preds = %bb.ee
  %3 = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %bb.em

bb.ef:                                            ; preds = %._crit_edge580.i.i, %bb.ed
  %i.nj = phi ptr [ %.pre.i.i, %._crit_edge580.i.i ], [ %i.nf, %bb.ed ]
  %i.nk = getelementptr i8, ptr %i.nj, i64 -1     ; 3 uses
  store ptr %i.nk, ptr %i.i, align 8, !tbaa !11
  %i.nl = load ptr, ptr %0, align 8, !tbaa !35
  %i.nm = icmp ult ptr %i.nk, %i.nl
  br i1 %i.nm, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.eh:                                            ; preds = %bb.ef
  %i.nn = load i8, ptr %i.nk, align 1, !tbaa !34
  %.not6.i375.i.i = icmp eq i8 %i.nn, %.0246.in.i.i
  br i1 %.not6.i375.i.i, label %tok_backup.exit376.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit376.i.i:                           ; preds = %bb.eh
  %i.no = load i32, ptr %i.o, align 4, !tbaa !28
  %i.np = add i32 %i.no, -1
  store i32 %i.np, ptr %i.o, align 4, !tbaa !28
  br label %bb.em, !llvm.loop !48

bb.ej:                                            ; preds = %tok_nextc.exit373.i.i
  %i.nq = icmp eq i8 %.0246.in.i.i, 78
  %or.cond15.i.i = and i1 %i.nq, %i.nh
  br i1 %or.cond15.i.i, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.nr = tail call fastcc i32 @tok_nextc(ptr noundef nonnull %0) ; 2 uses
  %i.ns = icmp eq i32 %i.nr, 123
  br i1 %i.ns, label %.backedge.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call fastcc void @tok_backup(ptr noundef nonnull %0, i32 noundef %i.nr)
  br label %.backedge.i.i

bb.em:                                            ; preds = %bb.ej, %tok_backup.exit376.i.i, %2
  %.5274.i.i = phi i32 [ 6, %tok_backup.exit376.i.i ], [ 1, %2 ], [ 0, %bb.ej ]
  %.5.i.i = phi i32 [ %.2500.i.i, %tok_backup.exit376.i.i ], [ %3, %2 ], [ %.2500.i.i, %bb.ej ] ; 4 uses
  switch i8 %.0246.in.i.i, label %.backedge.i.i [
    i8 125, label %4
    i8 123, label %4
  ]

4:                                                ; preds = %bb.em, %bb.em
  switch i32 %.5274.i.i, label %tok_get.exit [
    i32 0, label %.backedge.i.i
    i32 6, label %.backedge.i.i
  ]

.backedge.i.i:                                    ; preds = %bb.dq, %bb.dy, %4, %4, %bb.em, %bb.el, %bb.ek, %bb.ec, %bb.ea, %bb.dw, %bb.du, %bb.ds, %bb.dp, %bb.cf, %bb.ce
  %.8630.i.i = phi i32 [ %.5.i.i, %4 ], [ %.5.i.i, %4 ], [ %.2500.i.i, %bb.ce ], [ %.5.i.i, %bb.em ], [ %.2500.i.i, %bb.cf ], [ %.2500.i.i, %bb.el ], [ %.2500.i.i, %bb.ek ], [ %.2500.i.i, %bb.dy ], [ %.2500.i.i, %bb.du ], [ %.2500.i.i, %bb.ds ], [ %.2500.i.i, %bb.dp ], [ %.2500.i.i, %bb.dw ], [ %.2500.i.i, %bb.ec ], [ %.2500.i.i, %bb.ea ], [ %.2500.i.i, %bb.dq ]
  %.2262629.i.i = phi i32 [ 0, %4 ], [ 0, %4 ], [ %i.hw, %bb.ce ], [ 0, %bb.em ], [ 0, %bb.cf ], [ 0, %bb.el ], [ 0, %bb.ek ], [ 0, %bb.dy ], [ 0, %bb.du ], [ 0, %bb.ds ], [ 0, %bb.dp ], [ 0, %bb.dw ], [ 0, %bb.ec ], [ 0, %bb.ea ], [ 0, %bb.dq ] ; 4 uses
  %.5268628.i.i = phi i32 [ %.0263498.i.i, %4 ], [ %.0263498.i.i, %4 ], [ %.0263498.i.i, %bb.ce ], [ %.0263498.i.i, %bb.em ], [ %.0263498.i.i, %bb.cf ], [ %.0263498.i.i, %bb.el ], [ 1, %bb.ek ], [ %.0263498.i.i, %bb.dy ], [ %.0263498.i.i, %bb.du ], [ %.0263498.i.i, %bb.ds ], [ %.0263498.i.i, %bb.dp ], [ %.0263498.i.i, %bb.dw ], [ %.0263498.i.i, %bb.ec ], [ %.0263498.i.i, %bb.ea ], [ %.0263498.i.i, %bb.dq ]
  %i.nt = load i32, ptr %i.ck, align 8, !tbaa !38
  %.not288.i.i = icmp eq i32 %.2262629.i.i, %i.nt
  br i1 %.not288.i.i, label %.preheader.i.i, label %bb.bb, !llvm.loop !48

._crit_edge505.i.i:                               ; preds = %tok_backup.exit379.i.i, %.lr.ph504.i.i, %.preheader.i.._crit_edge505.i_crit_edge.i, %bb.ba
  %i.nu = phi ptr [ %.pre.i, %.preheader.i.._crit_edge505.i_crit_edge.i ], [ %i.eh, %bb.ba ], [ %.pre186.i, %.lr.ph504.i.i ], [ %i.oc, %tok_backup.exit379.i.i ]
  %i.nv = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.nw = getelementptr i8, ptr %i.e, i64 96
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !37
  %i.ny = icmp eq i32 %i.nx, 1
  %i.nz = select i1 %i.ny, i32 63, i32 60
  %i.oa = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.nz, ptr noundef %i.nv, ptr noundef %i.nu) #8
  br label %tok_get.exit

bb.en:                                            ; preds = %tok_backup.exit379.i.i, %.lr.ph504.split.i.i
  %i.ob = phi ptr [ %.pre186.i, %.lr.ph504.split.i.i ], [ %i.oc, %tok_backup.exit379.i.i ]
  %.0503.i.i = phi i32 [ 0, %.lr.ph504.split.i.i ], [ %i.oh, %tok_backup.exit379.i.i ]
  %i.oc = getelementptr i8, ptr %i.ob, i64 -1     ; 5 uses
  store ptr %i.oc, ptr %i.i, align 8, !tbaa !11
  %i.od = icmp ult ptr %i.oc, %i.eq
  br i1 %i.od, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.oe = load i8, ptr %i.oc, align 1, !tbaa !34
  %.not6.i378.i.i = icmp eq i8 %i.oe, %i.ep
  br i1 %.not6.i378.i.i, label %tok_backup.exit379.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit379.i.i:                           ; preds = %bb.ep
  %i.of = load i32, ptr %i.o, align 4, !tbaa !28
  %i.og = add i32 %i.of, -1
  store i32 %i.og, ptr %i.o, align 4, !tbaa !28
  %i.oh = add nuw nsw i32 %.0503.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.oh, %.2262629.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge505.i.i, label %bb.en, !llvm.loop !51

tok_get.exit:                                     ; preds = %4, %bb.b, %bb.aa, %bb.ab, %bb.az, %bb.bk, %bb.bq, %bb.bt, %tok_backup.exit334.i.i, %bb.cb, %bb.cc, %bb.cj, %bb.db, %bb.dd, %bb.df, %bb.dn, %._crit_edge505.i.i
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.ce, %bb.aa ], [ %i.eg, %bb.az ], [ %i.fm, %bb.bk ], [ %i.oa, %._crit_edge505.i.i ], [ %i.cg, %bb.ab ], [ %i.kf, %bb.dd ], [ %i.jz, %bb.db ], [ %i.hq, %bb.cb ], [ %i.ls, %bb.dn ], [ %i.kl, %bb.df ], [ %i.if, %bb.cj ], [ %i.hs, %bb.cc ], [ %i.gx, %tok_backup.exit334.i.i ], [ %i.gi, %bb.bt ], [ %i.fx, %bb.bq ], [ %.5.i.i, %4 ]
  %i.oi = getelementptr i8, ptr %0, i64 2756
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !44
  %.not = icmp eq i32 %i.oj, 0
  br i1 %.not, label %bb.es, label %bb.er

bb.er:                                            ; preds = %tok_get.exit
  %i.ok = getelementptr i8, ptr %0, i64 64
  store i32 22, ptr %i.ok, align 8, !tbaa !24
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %tok_get.exit
  %.0 = phi i32 [ 67, %bb.er ], [ %.0.i, %tok_get.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tok_get_normal_mode(ptr noundef initializes((56, 64), (520, 524)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 27 uses
  %i.b = getelementptr i8, ptr %0, i64 520        ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 488        ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 132 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 85 uses
  %i.f = getelementptr i8, ptr %0, i64 64         ; 57 uses
  %i.g = getelementptr i8, ptr %0, i64 2848       ; 24 uses
  %i.h = getelementptr i8, ptr %0, i64 2776       ; 31 uses
  %i.i = getelementptr i8, ptr %0, i64 524        ; 70 uses
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = getelementptr i8, ptr %0, i64 496
  %i.l = getelementptr i8, ptr %0, i64 512        ; 8 uses
  %i.m = getelementptr i8, ptr %0, i64 528        ; 11 uses
  %i.n = getelementptr i8, ptr %0, i64 88         ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 84         ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 492        ; 7 uses
  %i.q = getelementptr i8, ptr %0, i64 2352       ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 18468      ; 7 uses
  %i.s = getelementptr i8, ptr %0, i64 2840
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_ctype_table, i64 1020), align 4
  %i.u = and i32 %i.t, 4
  %.not11921533 = icmp eq i32 %i.u, 0
  %i.v = getelementptr i8, ptr %0, i64 2768       ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !52
  %i.w = icmp eq i32 %.pre, 0
  store ptr null, ptr %i.a, align 8, !tbaa !23
  store i32 -1, ptr %i.b, align 8, !tbaa !29
  br i1 %i.w, label %.thread, label %bb.b

.critedge3182:                                    ; preds = %bb.gk
  store ptr null, ptr %i.a, align 8, !tbaa !23
  store i32 -1, ptr %i.b, align 8, !tbaa !29
  br label %bb.b

bb.b:                                             ; preds = %.critedge3182, %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !52
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.b
  %.01081.ph = phi i32 [ %i.ax, %bb.n ], [ 0, %bb.b ] ; 5 uses
  %.01078.ph = phi i32 [ %.01078, %bb.n ], [ 0, %bb.b ]
  %.01075.ph = phi i32 [ %.01075, %bb.n ], [ 0, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.01078 = phi i32 [ %.01078.ph, %.outer ], [ %.01078.be, %.backedge ] ; 6 uses
  %.01075 = phi i32 [ %.01075.ph, %.outer ], [ %.01075.be, %.backedge ] ; 7 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !11
  %.pre39.i = load ptr, ptr %i.e, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.x = phi ptr [ %i.ag, %bb.j ], [ %.pre39.i, %bb.c ]
  %i.y = phi ptr [ %i.af, %bb.j ], [ %.pre.i, %bb.c ] ; 6 uses
  %.not.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !28   ; 3 uses
  %i.aa = icmp ugt i32 %i.z, 2147483646
  br i1 %i.aa, label %bb.f, label %tok_nextc.exit

bb.f:                                             ; preds = %bb.e
  store i32 29, ptr %i.f, align 8, !tbaa !24
  br label %tok_nextc.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !24
  %.not21.i = icmp eq i32 %i.ab, 10
  br i1 %.not21.i, label %bb.h, label %tok_nextc.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i = icmp eq i32 %i.ad, 0
  br i1 %.not22.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.af, ptr %i.h, align 8, !tbaa !33
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = tail call ptr @memchr(ptr noundef readonly %i.af, i32 noundef 0, i64 noundef %i.aj) #7
  %.not24.i = icmp eq ptr %i.ak, null
  br i1 %.not24.i, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.am, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit.thread

tok_nextc.exit:                                   ; preds = %bb.e
  %i.an = add nuw nsw i32 %i.z, 1
  store i32 %i.an, ptr %i.i, align 4, !tbaa !28
  %i.ao = getelementptr i8, ptr %i.y, i64 1
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !11
  %i.ap = load i8, ptr %i.y, align 1, !tbaa !34   ; 4 uses
  switch i8 %i.ap, label %.split1125 [
    i8 32, label %bb.l
    i8 9, label %bb.m
    i8 12, label %.backedge
    i8 92, label %bb.n
  ]

.backedge:                                        ; preds = %tok_nextc.exit, %bb.m, %bb.l
  %.01078.be = phi i32 [ 0, %tok_nextc.exit ], [ %i.ar, %bb.l ], [ %i.aw, %bb.m ]
  %.01075.be = phi i32 [ 0, %tok_nextc.exit ], [ %i.aq, %bb.l ], [ %i.av, %bb.m ]
  br label %bb.c

bb.l:                                             ; preds = %tok_nextc.exit
  %i.aq = add i32 %.01075, 1
  %i.ar = add i32 %.01078, 1
  br label %.backedge

bb.m:                                             ; preds = %tok_nextc.exit
  %i.as = load i32, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %i.at = sdiv i32 %.01075, %i.as
  %i.au = add i32 %i.at, 1
  %i.av = mul i32 %i.au, %i.as
  %i.aw = add i32 %.01078, 1
  br label %.backedge

bb.n:                                             ; preds = %tok_nextc.exit
  %.not1183 = icmp eq i32 %.01081.ph, 0
  %i.ax = select i1 %.not1183, i32 %.01075, i32 %.01081.ph
  %i.ay = tail call fastcc i32 @tok_continuation_line(ptr noundef nonnull %0)
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.o, label %.outer

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

.split1125:                                       ; preds = %tok_nextc.exit
  store ptr %i.y, ptr %i.d, align 8, !tbaa !11
  %i.bb = load ptr, ptr %0, align 8, !tbaa !35
  %i.bc = icmp ult ptr %i.y, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.split1125
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.q:                                             ; preds = %.split1125
  %i.bd = load i8, ptr %i.y, align 1, !tbaa !34
  %.not6.i = icmp eq i8 %i.bd, %i.ap
  br i1 %.not6.i, label %.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_nextc.exit.thread:                            ; preds = %bb.g, %bb.k, %bb.i, %bb.f
  %i.be = tail call ptr @PyErr_Occurred() #8
  %.not1174 = icmp eq ptr %i.be, null
  br i1 %.not1174, label %.split.thread, label %bb.s

bb.s:                                             ; preds = %tok_nextc.exit.thread
  %i.bf = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

.split:                                           ; preds = %bb.q
  store i32 %i.z, ptr %i.i, align 4, !tbaa !28
  switch i8 %i.ap, label %.split.thread [
    i8 35, label %bb.t
    i8 13, label %bb.t
    i8 10, label %bb.t
  ]

bb.t:                                             ; preds = %.split, %.split, %.split
  %i.bg = icmp eq i8 %i.ap, 10
  %i.bh = icmp eq i32 %.01075, 0
  %or.cond11 = and i1 %i.bh, %i.bg
  %.pre2329 = load ptr, ptr %i.k, align 8, !tbaa !55
end_hunk_1
