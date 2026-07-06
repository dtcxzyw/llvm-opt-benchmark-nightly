inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@RM_SetCommandInfo:bb.a
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
  br i1 %.not168, label %bb.as, label %.preheader185

.preheader185:                                    ; preds = %bb.an
  %i.cp = getelementptr i8, ptr %i.cn, i64 8      ; 2 uses
  %.val177 = load i64, ptr %i.cp, align 8, !tbaa !202
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.preheader185
  %.0148 = phi i64 [ %i.cu, %bb.ao ], [ 0, %.preheader185 ] ; 8 uses
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
  %.not217.a = icmp eq i64 %.0148, 0
  br i1 %.not217.a, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.ar
  %i.da = phi ptr [ %i.cz, %bb.ar ], [ %i.do, %.lr.ph ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.0148
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  store i32 %i.cv, ptr %i.dc, align 8, !tbaa !223
  br label %bb.as

.lr.ph:                                           ; preds = %bb.ar, %.lr.ph
  %.0149207 = phi i64 [ %i.dr, %.lr.ph ], [ 0, %bb.ar ] ; 4 uses
  %i.dd = load ptr, ptr %i.e, align 8, !tbaa !201
  %.val = load i64, ptr %i.cp, align 8, !tbaa !202
  %sext182 = shl i64 %.0149207, 32
  %i.de = ashr exact i64 %sext182, 32
  %i.df = mul i64 %.val, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.dd, i64 %i.df ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !204
  %i.di = tail call noalias ptr @zstrdup(ptr noundef %i.dh) #31
  %i.dj = load ptr, ptr %i.bn, align 8, !tbaa !216
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.0149207
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !204
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !206
  %i.dn = tail call noalias ptr @zstrdup(ptr noundef %i.dm) #31
  %i.do = load ptr, ptr %i.bn, align 8, !tbaa !216 ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %.0149207
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !206
  %i.dr = add nuw i64 %.0149207, 1                ; 2 uses
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
  br i1 %i.ec, label %.lr.ph210, label %.._crit_edge211_crit_edge

.._crit_edge211_crit_edge:                        ; preds = %bb.au
  %.pre = sext i32 %i.eb to i64
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %.lr.ph210, %.._crit_edge211_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge211_crit_edge ], [ %i.em, %.lr.ph210 ]
  %i.ed = phi ptr [ %i.ea, %.._crit_edge211_crit_edge ], [ %i.ej, %.lr.ph210 ]
  %.lcssa187 = phi i32 [ %i.eb, %.._crit_edge211_crit_edge ], [ %i.el, %.lr.ph210 ] ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.pre-phi
  store ptr null, ptr %i.ee, align 8, !tbaa !167
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  store i32 %.lcssa187, ptr %i.ef, align 8, !tbaa !226
  call void @sdsfreesplitres(ptr noundef nonnull %i.dv, i32 noundef %.lcssa187) #31
  br label %bb.av

.lr.ph210:                                        ; preds = %bb.au, %.lr.ph210
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph210 ], [ 0, %bb.au ] ; 3 uses
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
  br i1 %i.en, label %.lr.ph210, label %._crit_edge211, !llvm.loop !227

bb.av:                                            ; preds = %._crit_edge211, %bb.at
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
  br i1 %.not173, label %bb.bq, label %.preheader

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
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bg, i64 128 ; 15 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !178
  call void @zfree(ptr noundef %i.fc) #31
  %i.fd = mul nuw nsw i64 %.0146, 56
  %i.fe = call noalias ptr @zmalloc(i64 noundef %i.fd) #32
  store ptr %i.fe, ptr %i.fb, align 8, !tbaa !178
  store i32 %i.fa, ptr %i.bt, align 8, !tbaa !177
  %.not218 = icmp eq i64 %.0146, 0
  br i1 %.not218, label %._crit_edge216, label %.lr.ph215

._crit_edge216:                                   ; preds = %bb.bp, %bb.bc
  call void @populateCommandLegacyRangeSpec(ptr noundef nonnull %i.bg) #31
  br label %bb.bq

.lr.ph215:                                        ; preds = %bb.bc, %bb.bp
  %.0145213 = phi i64 [ %i.if, %bb.bp ], [ 0, %bb.bc ] ; 15 uses
  %i.ff = load ptr, ptr %i.s, align 8, !tbaa !208
  %.val178 = load i64, ptr %i.es, align 8, !tbaa !209
  %i.fg = mul i64 %.val178, %.0145213
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %i.fg ; 13 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !230 ; 2 uses
  %.not176 = icmp eq ptr %i.fi, null
  br i1 %.not176, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph215
  %i.fj = call noalias ptr @zstrdup(ptr noundef nonnull %i.fi) #31
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph215, %bb.bd
  %i.fk = phi ptr [ %i.fj, %bb.bd ], [ null, %.lr.ph215 ]
  %i.fl = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.fm = getelementptr inbounds nuw [56 x i8], ptr %i.fl, i64 %.0145213 ; 6 uses
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
  %i.gd = getelementptr inbounds nuw [56 x i8], ptr %i.gc, i64 %.0145213
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store ptr %i.gb, ptr %i.ge, align 8, !tbaa !73
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !73
  %i.gh = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gi = getelementptr inbounds nuw [56 x i8], ptr %i.gh, i64 %.0145213
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store i32 %i.gg, ptr %i.gj, align 8, !tbaa !73
  br label %bb.bj

bb.bi:                                            ; preds = %bb.be
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1972, ptr noundef nonnull @.str.33) #31
  call void @abort() #34
  unreachable

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !180
  switch i32 %i.gl, label %bb.bo [
    i32 0, label %bb.bk
    i32 1, label %bb.bl
    i32 2, label %bb.bm
    i32 3, label %bb.bn
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.gm = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gn = getelementptr inbounds nuw [56 x i8], ptr %i.gm, i64 %.0145213 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  store i32 2, ptr %i.go, align 8, !tbaa !180
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 44
  store i32 0, ptr %i.gp, align 4, !tbaa !73
  %i.gq = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gr = getelementptr inbounds nuw [56 x i8], ptr %i.gq, i64 %.0145213
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  store i32 1, ptr %i.gs, align 4, !tbaa !73
  %i.gt = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gu = getelementptr inbounds nuw [56 x i8], ptr %i.gt, i64 %.0145213
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 52
  store i32 0, ptr %i.gv, align 4, !tbaa !73
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.gw = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.gx = getelementptr inbounds nuw [56 x i8], ptr %i.gw, i64 %.0145213
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store i32 1, ptr %i.gy, align 8, !tbaa !180
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bj
  %i.gz = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.ha = getelementptr inbounds nuw [56 x i8], ptr %i.gz, i64 %.0145213 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store i32 2, ptr %i.hb, align 8, !tbaa !180
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !73
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 44
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !73
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !73
  %i.hh = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.hi = getelementptr inbounds nuw [56 x i8], ptr %i.hh, i64 %.0145213
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  store i32 %i.hg, ptr %i.hj, align 4, !tbaa !73
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fh, i64 52
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !73
  %i.hm = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.hn = getelementptr inbounds nuw [56 x i8], ptr %i.hm, i64 %.0145213
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 52
  store i32 %i.hl, ptr %i.ho, align 4, !tbaa !73
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bj
  %i.hp = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.hq = getelementptr inbounds nuw [56 x i8], ptr %i.hp, i64 %.0145213 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 40
  store i32 3, ptr %i.hr, align 8, !tbaa !180
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !73
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 44
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !73
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !73
  %i.hx = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.hy = getelementptr inbounds nuw [56 x i8], ptr %i.hx, i64 %.0145213
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  store i32 %i.hw, ptr %i.hz, align 4, !tbaa !73
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fh, i64 52
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !73
  %i.ic = load ptr, ptr %i.fb, align 8, !tbaa !178
  %i.id = getelementptr inbounds nuw [56 x i8], ptr %i.ic, i64 %.0145213
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 52
  store i32 %i.ib, ptr %i.ie, align 4, !tbaa !73
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 2000, ptr noundef nonnull @.str.34) #31
  call void @abort() #34
  unreachable

bb.bp:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %i.if = add nuw i64 %.0145213, 1                ; 2 uses
  %exitcond238.not = icmp eq i64 %i.if, %.0146
  br i1 %exitcond238.not, label %._crit_edge216, label %.lr.ph215, !llvm.loop !231

bb.bq:                                            ; preds = %._crit_edge216, %bb.ay
  %i.ig = load ptr, ptr %i.bb, align 8, !tbaa !212 ; 2 uses
  %.not175 = icmp eq ptr %i.ig, null
  br i1 %.not175, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ih = call fastcc ptr @moduleCopyCommandArgs(ptr noundef %i.ig, ptr noundef %i.cn) ; 2 uses
  store ptr %i.ih, ptr %i.br, align 8, !tbaa !218
  %i.ii = call i32 @populateArgsStructure(ptr noundef %i.ih)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  store i32 %i.ii, ptr %i.ij, align 8, !tbaa !232
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ag, %bb.br, %bb.bq, %moduleValidateCommandInfo.exit.thread
  %.1 = phi i32 [ 1, %moduleValidateCommandInfo.exit.thread ], [ 1, %bb.ag ], [ 0, %bb.br ], [ 0, %bb.bq ]
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
end_hunk_0
