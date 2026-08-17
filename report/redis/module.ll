inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@RM_SetCommandInfo:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.cg = tail call noalias ptr @zstrdup(ptr noundef nonnull %i.cf) #31
  store ptr %i.cg, ptr %i.bh, align 8, !tbaa !213
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !220 ; 2 uses
  %.not166 = icmp eq ptr %i.ci, null
  br i1 %.not166, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cj = tail call noalias ptr @zstrdup(ptr noundef nonnull %i.ci) #31
  store ptr %i.cj, ptr %i.bj, align 8, !tbaa !214
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !221 ; 2 uses
  %.not167 = icmp eq ptr %i.cl, null
  br i1 %.not167, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cm = tail call noalias ptr @zstrdup(ptr noundef nonnull %i.cl) #31
  store ptr %i.cm, ptr %i.bl, align 8, !tbaa !215
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cn = load ptr, ptr %1, align 8, !tbaa !198   ; 3 uses
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !201 ; 2 uses
  %.not168 = icmp eq ptr %i.co, null
  br i1 %.not168, label %bb.as, label %.preheader184

.preheader184:                                    ; preds = %bb.an
  %i.cp = getelementptr i8, ptr %i.cn, i64 8      ; 2 uses
  %.val177 = load i64, ptr %i.cp, align 8, !tbaa !202
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.preheader184
  %.0148 = phi i64 [ %i.cu, %bb.ao ], [ 0, %.preheader184 ] ; 8 uses
  %sext = shl i64 %.0148, 32
  %i.cq = ashr exact i64 %sext, 32
  %i.cr = mul i64 %i.cq, %.val177
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !204
  %.not169 = icmp eq ptr %i.ct, null
  %i.cu = add i64 %.0148, 1
  br i1 %.not169, label %bb.ap, label %bb.ao, !llvm.loop !222

bb.ap:                                            ; preds = %bb.ao
  %i.cv = trunc i64 %.0148 to i32
  %i.cw = icmp ult i64 %.0148, 1152921504606846975
  br i1 %i.cw, label %bb.ar, label %bb.aq, !prof !60

bb.aq:                                            ; preds = %bb.ap
  tail call void @_serverAssert(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 1912) #31
  tail call void @abort() #34
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.cx = shl nuw i64 %.0148, 4
  %i.cy = add nuw i64 %i.cx, 16
  %i.cz = tail call noalias ptr @zmalloc(i64 noundef %i.cy) #32 ; 2 uses
  store ptr %i.cz, ptr %i.bn, align 8, !tbaa !216
  %.not216 = icmp eq i64 %.0148, 0
  br i1 %.not216, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.ar
  %i.da = phi ptr [ %i.cz, %bb.ar ], [ %i.do, %.lr.ph ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.0148
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  store i32 %i.cv, ptr %i.dc, align 8, !tbaa !223
  br label %bb.as

.lr.ph:                                           ; preds = %bb.ar, %.lr.ph
  %.0149206 = phi i64 [ %i.dr, %.lr.ph ], [ 0, %bb.ar ] ; 4 uses
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !201
  %.val = load i64, ptr %i.cp, align 8, !tbaa !202
  %sext182 = shl i64 %.0149206, 32
  %i.de = ashr exact i64 %sext182, 32
  %i.df = mul i64 %.val, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 %i.df ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !204
  %i.di = tail call noalias ptr @zstrdup(ptr noundef %i.dh) #31
  %i.dj = load ptr, ptr %i.bn, align 8, !tbaa !216
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.0149206
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !204
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !206
  %i.dn = tail call noalias ptr @zstrdup(ptr noundef %i.dm) #31
  %i.do = load ptr, ptr %i.bn, align 8, !tbaa !216 ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %.0149206
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !206
  %i.dr = add nuw i64 %.0149206, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dr, %.0148
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !224

bb.as:                                            ; preds = %._crit_edge, %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !225 ; 3 uses
  %.not170 = icmp eq ptr %i.dt, null
  br i1 %.not170, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.du = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dt) #35
  %i.dv = call ptr @sdssplitlen(ptr noundef nonnull %i.dt, i64 noundef %i.du, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef nonnull %i.a) #31 ; 3 uses
  %.not171 = icmp eq ptr %i.dv, null
  br i1 %.not171, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !9
  %i.dx = add nsw i32 %i.dw, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = shl nsw i64 %i.dy, 3
  %i.ea = call noalias ptr @zmalloc(i64 noundef %i.dz) #32 ; 2 uses
  store ptr %i.ea, ptr %i.bp, align 8, !tbaa !217
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !9   ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph209, label %.._crit_edge210_crit_edge

.._crit_edge210_crit_edge:                        ; preds = %bb.au
  %.pre = sext i32 %i.eb to i64
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %.lr.ph209, %.._crit_edge210_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge210_crit_edge ], [ %i.em, %.lr.ph209 ]
  %i.ed = phi ptr [ %i.ea, %.._crit_edge210_crit_edge ], [ %i.ej, %.lr.ph209 ]
  %.lcssa186 = phi i32 [ %i.eb, %.._crit_edge210_crit_edge ], [ %i.el, %.lr.ph209 ] ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.pre-phi
  store ptr null, ptr %i.ee, align 8, !tbaa !167
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i32 %.lcssa186, ptr %i.ef, align 8, !tbaa !226
  call void @sdsfreesplitres(ptr noundef nonnull %i.dv, i32 noundef %.lcssa186) #31
  br label %bb.av

.lr.ph209:                                        ; preds = %bb.au, %.lr.ph209
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph209 ], [ 0, %bb.au ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !167
  %i.ei = call noalias ptr @zstrdup(ptr noundef %i.eh) #31
  %i.ej = load ptr, ptr %i.bp, align 8, !tbaa !217 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !167
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.el = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = icmp slt i64 %indvars.iv.next, %i.em
  br i1 %i.en, label %.lr.ph209, label %._crit_edge210, !llvm.loop !227

bb.av:                                            ; preds = %._crit_edge210, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !228 ; 2 uses
  %.not172 = icmp eq i32 %i.ep, 0
  br i1 %.not172, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bg, i64 104
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !181
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.er = load ptr, ptr %i.s, align 8, !tbaa !208 ; 2 uses
  %.not173 = icmp eq ptr %i.er, null
  br i1 %.not173, label %bb.bp, label %.preheader

.preheader:                                       ; preds = %bb.ay
  %i.es = getelementptr i8, ptr %i.cn, i64 16     ; 2 uses
  %.val179 = load i64, ptr %i.es, align 8, !tbaa !209
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.preheader
  %.0146 = phi i64 [ %i.ey, %bb.az ], [ 0, %.preheader ] ; 7 uses
  %sext183 = shl i64 %.0146, 32
  %i.et = ashr exact i64 %sext183, 32
  %i.eu = mul i64 %i.et, %.val179
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !179
  %.not174 = icmp eq i32 %i.ex, 0
  %i.ey = add i64 %.0146, 1
  br i1 %.not174, label %bb.ba, label %bb.az, !llvm.loop !229

bb.ba:                                            ; preds = %bb.az
  %i.ez = icmp ult i64 %.0146, 2147483647
  br i1 %i.ez, label %bb.bc, label %bb.bb, !prof !60

bb.bb:                                            ; preds = %bb.ba
  call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1946) #31
  call void @abort() #34
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.fa = trunc nuw nsw i64 %.0146 to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bg, i64 128 ; 12 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !178
  call void @zfree(ptr noundef %i.fc) #31
  %i.fd = mul nuw nsw i64 %.0146, 56
  %i.fe = call noalias ptr @zmalloc(i64 noundef %i.fd) #32
  store ptr %i.fe, ptr %i.fb, align 8, !tbaa !178
  store i32 %i.fa, ptr %i.bt, align 8, !tbaa !177
  %.not217 = icmp eq i64 %.0146, 0
  br i1 %.not217, label %._crit_edge215, label %.lr.ph214

._crit_edge215:                                   ; preds = %bb.bo, %bb.bc
  call void @populateCommandLegacyRangeSpec(ptr noundef nonnull %i.bg) #31
  br label %bb.bp

.lr.ph214:                                        ; preds = %bb.bc, %bb.bo
  %.0145212 = phi i64 [ %i.ht, %bb.bo ], [ 0, %bb.bc ] ; 12 uses
  %i.ff = load ptr, ptr %i.s, align 8, !tbaa !208
  %.val178 = load i64, ptr %i.es, align 8, !tbaa !209
  %i.fg = mul i64 %.val178, %.0145212
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %i.fg ; 13 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !230 ; 2 uses
  %.not176 = icmp eq ptr %i.fi, null
  br i1 %.not176, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph214
  %i.fj = call noalias ptr @zstrdup(ptr noundef nonnull %i.fi) #31
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph214, %bb.bd
  %i.fk = phi ptr [ %i.fj, %bb.bd ], [ null, %.lr.ph214 ]
  %i.fl = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.fm = getelementptr inbounds nuw [56 x i8], ptr %i.fl, i64 %.0145212 ; 6 uses
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !230
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !211
  %i.fp = call fastcc i64 @moduleConvertKeySpecsFlags(i64 noundef %i.fo, i32 noundef 1)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !211
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !179
  switch i32 %i.fs, label %bb.bi [
    i32 1, label %bb.bf
    i32 2, label %bb.bg
    i32 3, label %bb.bh
  ]

bb.bf:                                            ; preds = %bb.be
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i32 1, ptr %i.ft, align 8, !tbaa !179
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i32 2, ptr %i.fu, align 8, !tbaa !179
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !73
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !73
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i32 3, ptr %i.fy, align 8, !tbaa !179
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !73
  %i.gb = call noalias ptr @zstrdup(ptr noundef %i.ga) #31
  %i.gc = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gd = getelementptr inbounds nuw [56 x i8], ptr %i.gc, i64 %.0145212
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store ptr %i.gb, ptr %i.ge, align 8, !tbaa !73
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !73
  %i.gh = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gi = getelementptr inbounds nuw [56 x i8], ptr %i.gh, i64 %.0145212
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store i32 %i.gg, ptr %i.gj, align 8, !tbaa !73
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1972, ptr noundef nonnull @.str.33) #31
  call void @abort() #34
  unreachable

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !180 ; 2 uses
  switch i32 %i.gl, label %bb.bn [
    i32 0, label %bb.bk
    i32 1, label %bb.bo
    i32 2, label %bb.bl
    i32 3, label %bb.bm
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.gm = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gn = getelementptr inbounds nuw [56 x i8], ptr %i.gm, i64 %.0145212 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  store i32 2, ptr %i.go, align 8, !tbaa !180
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 44
  store i32 0, ptr %i.gp, align 4, !tbaa !73
  %i.gq = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gr = getelementptr inbounds nuw [56 x i8], ptr %i.gq, i64 %.0145212
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  store i32 1, ptr %i.gs, align 4, !tbaa !73
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bj
  %i.gt = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gu = getelementptr inbounds nuw [56 x i8], ptr %i.gt, i64 %.0145212 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  store i32 2, ptr %i.gv, align 8, !tbaa !180
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !73
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 44
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !73
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !73
  %i.hb = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.hc = getelementptr inbounds nuw [56 x i8], ptr %i.hb, i64 %.0145212
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  store i32 %i.ha, ptr %i.hd, align 4, !tbaa !73
  %i.he = getelementptr inbounds nuw i8, ptr %i.fh, i64 52
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !73
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bj
  %i.hg = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.hh = getelementptr inbounds nuw [56 x i8], ptr %i.hg, i64 %.0145212 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  store i32 3, ptr %i.hi, align 8, !tbaa !180
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !73
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 44
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !73
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !73
  %i.ho = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.hp = getelementptr inbounds nuw [56 x i8], ptr %i.ho, i64 %.0145212
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  store i32 %i.hn, ptr %i.hq, align 4, !tbaa !73
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fh, i64 52
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !73
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2000, ptr noundef nonnull @.str.34) #31
  call void @abort() #34
  unreachable

bb.bo:                                            ; preds = %bb.bj, %bb.bm, %bb.bl, %bb.bk
  %.sink277 = phi i64 [ 52, %bb.bm ], [ 52, %bb.bl ], [ 52, %bb.bk ], [ 40, %bb.bj ]
  %.sink = phi i32 [ %i.hs, %bb.bm ], [ %i.hf, %bb.bl ], [ 0, %bb.bk ], [ %i.gl, %bb.bj ]
  %2 = load ptr, ptr %i.fb, align 8, !tbaa !178
  %3 = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.0145212
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 %.sink277
  store i32 %.sink, ptr %4, align 4, !tbaa !73
  %i.ht = add nuw i64 %.0145212, 1                ; 2 uses
  %exitcond237.not = icmp eq i64 %i.ht, %.0146
  br i1 %exitcond237.not, label %._crit_edge215, label %.lr.ph214, !llvm.loop !231

bb.bp:                                            ; preds = %._crit_edge215, %bb.ay
  %i.hu = load ptr, ptr %i.bb, align 8, !tbaa !212 ; 2 uses
  %.not175 = icmp eq ptr %i.hu, null
  br i1 %.not175, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hv = call fastcc ptr @moduleCopyCommandArgs(ptr noundef %i.hu, ptr noundef %i.cn) ; 2 uses
  store ptr %i.hv, ptr %i.br, align 8, !tbaa !218
  %i.hw = call i32 @populateArgsStructure(ptr noundef %i.hv)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  store i32 %i.hw, ptr %i.hx, align 8, !tbaa !232
  br label %bb.br

bb.br:                                            ; preds = %bb.ag, %bb.bq, %bb.bp, %moduleValidateCommandInfo.exit.thread
  %.1 = phi i32 [ 1, %moduleValidateCommandInfo.exit.thread ], [ 1, %bb.ag ], [ 0, %bb.bq ], [ 0, %bb.bp ]
  ret i32 %.1
}

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @moduleCopyCommandArgs(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val65 = load i64, ptr %i.a, align 8, !tbaa !233
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ]     ; 6 uses
  %sext = shl i64 %.0, 32
  %i.b = ashr exact i64 %sext, 32
  %i.c = mul i64 %i.b, %.val65
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !234
  %.not = icmp eq ptr %i.e, null
  %i.f = add i64 %.0, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !236

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %.0, 230584300921369395
  br i1 %i.g, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.593, ptr noundef nonnull @.str.1, i32 noundef 2224) #31
  tail call void @abort() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = mul nuw i64 %.0, 80
  %i.i = add nuw i64 %i.h, 80
  %i.j = tail call noalias ptr @zcalloc(i64 noundef %i.i) #32 ; 2 uses
  %.not68 = icmp eq i64 %.0, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.s, %bb.e
  ret ptr %i.j

.lr.ph:                                           ; preds = %bb.e, %bb.s
  %.05267 = phi i64 [ %i.az, %bb.s ], [ 0, %bb.e ] ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !233
  %sext66 = shl i64 %.05267, 32
  %i.k = ashr exact i64 %sext66, 32
  %i.l = mul i64 %.val, %i.k
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 10 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.o = tail call noalias ptr @zstrdup(ptr noundef %i.n) #31
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.05267 ; 10 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !187
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !237  ; 3 uses
  %i.s = icmp ugt i32 %i.r, 8
  %spec.select7.i = select i1 %i.s, i32 -1, i32 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %spec.select7.i, ptr %i.t, align 8, !tbaa !238
  %i.u = icmp eq i32 %i.r, 3
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !239
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.sink = phi i32 [ %i.w, %bb.f ], [ -1, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %.sink, ptr %i.x, align 4, !tbaa !240
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !241  ; 2 uses
  %.not59 = icmp eq ptr %i.z, null
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @zstrdup(ptr noundef nonnull %i.z) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !242
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !243 ; 2 uses
  %.not60 = icmp eq ptr %i.ad, null
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call noalias ptr @zstrdup(ptr noundef nonnull %i.ad) #31
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !244
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !245 ; 2 uses
  %.not61 = icmp eq ptr %i.ah, null
  br i1 %.not61, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call noalias ptr @zstrdup(ptr noundef nonnull %i.ah) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !246
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !247 ; 2 uses
  %.not62 = icmp eq ptr %i.al, null
  br i1 %.not62, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call noalias ptr @zstrdup(ptr noundef nonnull %i.al) #31
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.am, ptr %i.an, align 8, !tbaa !248
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !249 ; 2 uses
  %.not63 = icmp eq ptr %i.ap, null
  br i1 %.not63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = tail call noalias ptr @zstrdup(ptr noundef nonnull %i.ap) #31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !250
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.at = load i32, ptr %i.as, align 8, !tbaa !251
  %.2.i = and i32 %i.at, 7
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 %.2.i, ptr %i.au, align 8, !tbaa !252
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !253 ; 2 uses
  %.not64 = icmp eq ptr %i.aw, null
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call fastcc ptr @moduleCopyCommandArgs(ptr noundef %i.aw, ptr noundef nonnull %1)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !191
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.az = add nuw i64 %.05267, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254
}

; Function Attrs: nounwind uwtable
define dso_local ptr @moduleGetHandleByName(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @modules, align 8, !tbaa !255
  %i.b = tail call ptr @dictFetchValue(ptr noundef %i.a, ptr noundef %0) #31
  ret ptr %i.b
}

declare ptr @dictFetchValue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @moduleIsModuleCommand(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  %.not = icmp ne ptr %i.b, @RedisModuleCommandDispatcher
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !153
  %i.g = icmp eq ptr %i.f, %0
  %i.h = zext i1 %i.g to i32
  br label %bb.c

end_hunk_0
