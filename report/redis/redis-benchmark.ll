inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@createClient:bb.a
  %i.cw = call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.166, i32 noundef %i.cv, ptr noundef nonnull %i.cd) #20
  store ptr %i.cw, ptr %i.bd, align 8, !tbaa !166
  %i.cx = load i32, ptr %i.be, align 4, !tbaa !167
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.be, align 4, !tbaa !167
  br label %bb.ai

bb.ai:                                            ; preds = %hi_sdslen.exit, %bb.ab
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 408), align 8, !tbaa !41
  %.not182 = icmp eq i32 %i.cz, 0
  br i1 %.not182, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr null, ptr %i.d, align 8, !tbaa !13
  %i.da = call i32 (ptr, ptr, ...) @redisFormatCommand(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.167) #20
  %i.db = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.dd = sext i32 %i.da to i64
  %i.de = call ptr @hi_sdscatlen(ptr noundef %i.db, ptr noundef %i.dc, i64 noundef %i.dd) #20
  store ptr %i.de, ptr %i.bd, align 8, !tbaa !166
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @free(ptr noundef %i.df) #20
  %i.dg = load i32, ptr %i.be, align 4, !tbaa !167
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.be, align 4, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.di = load ptr, ptr %i.bd, align 8, !tbaa !166 ; 8 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !42
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = and i32 %i.dl, 7
  switch i32 %i.dm, label %hi_sdslen.exit189 [
    i32 0, label %bb.al
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ao
    i32 4, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dn = lshr i32 %i.dl, 3
  %i.do = zext nneg i32 %i.dn to i64
  br label %hi_sdslen.exit189

bb.am:                                            ; preds = %bb.ak
  %i.dp = getelementptr inbounds i8, ptr %i.di, i64 -3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !42
  %i.dr = zext i8 %i.dq to i64
  br label %hi_sdslen.exit189

bb.an:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds i8, ptr %i.di, i64 -5
  %i.dt = load i16, ptr %i.ds, align 1, !tbaa !132
  %i.du = zext i16 %i.dt to i64
  br label %hi_sdslen.exit189

bb.ao:                                            ; preds = %bb.ak
  %i.dv = getelementptr inbounds i8, ptr %i.di, i64 -9
  %i.dw = load i32, ptr %i.dv, align 1, !tbaa !9
  %i.dx = zext i32 %i.dw to i64
  br label %hi_sdslen.exit189

bb.ap:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds i8, ptr %i.di, i64 -17
  %i.dz = load i64, ptr %i.dy, align 1, !tbaa !134
  br label %hi_sdslen.exit189

hi_sdslen.exit189:                                ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap
  %.0.i188 = phi i64 [ %i.dz, %bb.ap ], [ %i.do, %bb.al ], [ %i.dr, %bb.am ], [ %i.du, %bb.an ], [ %i.dx, %bb.ao ], [ 0, %bb.ak ]
  %i.ea = trunc i64 %.0.i188 to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 3 uses
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !168
  %.not183 = icmp eq ptr %2, null                 ; 3 uses
  br i1 %.not183, label %.preheader, label %bb.aq

.preheader:                                       ; preds = %hi_sdslen.exit189
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !77 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph, label %.loopexit195

bb.aq:                                            ; preds = %hi_sdslen.exit189
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !166 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !168
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.ef, i64 -1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !42
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  %i.en = and i32 %i.em, 7
  switch i32 %i.en, label %hi_sdslen.exit191 [
    i32 0, label %bb.ar
    i32 1, label %bb.as
    i32 2, label %bb.at
    i32 3, label %bb.au
    i32 4, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.eo = lshr i32 %i.em, 3
  %i.ep = zext nneg i32 %i.eo to i64
  br label %hi_sdslen.exit191

bb.as:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds i8, ptr %i.ef, i64 -3
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !42
  %i.es = zext i8 %i.er to i64
  br label %hi_sdslen.exit191

bb.at:                                            ; preds = %bb.aq
  %i.et = getelementptr inbounds i8, ptr %i.ef, i64 -5
  %i.eu = load i16, ptr %i.et, align 1, !tbaa !132
  %i.ev = zext i16 %i.eu to i64
  br label %hi_sdslen.exit191

bb.au:                                            ; preds = %bb.aq
  %i.ew = getelementptr inbounds i8, ptr %i.ef, i64 -9
  %i.ex = load i32, ptr %i.ew, align 1, !tbaa !9
  %i.ey = zext i32 %i.ex to i64
  br label %hi_sdslen.exit191

bb.av:                                            ; preds = %bb.aq
  %i.ez = getelementptr inbounds i8, ptr %i.ef, i64 -17
  %i.fa = load i64, ptr %i.ez, align 1, !tbaa !134
  br label %hi_sdslen.exit191

hi_sdslen.exit191:                                ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.0.i190 = phi i64 [ %i.fa, %bb.av ], [ %i.ep, %bb.ar ], [ %i.es, %bb.as ], [ %i.ev, %bb.at ], [ %i.ey, %bb.au ], [ 0, %bb.aq ]
  %i.fb = sub i64 %.0.i190, %i.ei
  %i.fc = call ptr @hi_sdscatlen(ptr noundef nonnull %i.di, ptr noundef nonnull %i.ej, i64 noundef %i.fb) #20 ; 2 uses
  store ptr %i.fc, ptr %i.bd, align 8, !tbaa !166
  %.pre213 = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !77
  br label %.loopexit195

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.fd = phi ptr [ %i.fe, %.lr.ph ], [ %i.di, %.preheader ]
  %.0196 = phi i32 [ %i.ff, %.lr.ph ], [ 0, %.preheader ]
  %i.fe = call ptr @hi_sdscatlen(ptr noundef %i.fd, ptr noundef %0, i64 noundef %1) #20 ; 3 uses
  store ptr %i.fe, ptr %i.bd, align 8, !tbaa !166
  %i.ff = add nuw nsw i32 %.0196, 1               ; 2 uses
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !77 ; 2 uses
  %i.fh = icmp slt i32 %i.ff, %i.fg
  br i1 %i.fh, label %.lr.ph, label %.loopexit195, !llvm.loop !169

.loopexit195:                                     ; preds = %.lr.ph, %.preheader, %hi_sdslen.exit191
  %i.fi = phi ptr [ %i.fc, %hi_sdslen.exit191 ], [ %i.di, %.preheader ], [ %i.fe, %.lr.ph ]
  %i.fj = phi i32 [ %.pre213, %hi_sdslen.exit191 ], [ %i.ec, %.preheader ], [ %i.fg, %.lr.ph ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %i.fk, align 8, !tbaa !170
  %i.fl = load i32, ptr %i.be, align 4, !tbaa !167
  %i.fm = add nsw i32 %i.fl, %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 %i.fm, ptr %i.fn, align 8, !tbaa !171
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  %i.fs = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 168), align 8, !tbaa !43
  %.not184 = icmp eq i32 %i.fs, 0
  br i1 %.not184, label %.loopexit193, label %bb.aw

bb.aw:                                            ; preds = %.loopexit195
  br i1 %.not183, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !172 ; 2 uses
  store i64 %i.fu, ptr %i.fp, align 8, !tbaa !172
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %i.fv, align 8, !tbaa !173
  %i.fw = shl i64 %i.fu, 3
  %i.fx = call noalias ptr @zmalloc(i64 noundef %i.fw) #26 ; 8 uses
  store ptr %i.fx, ptr %i.fo, align 8, !tbaa !174
  %i.fy = load i64, ptr %i.fp, align 8, !tbaa !172 ; 4 uses
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph198, label %.loopexit193

.lr.ph198:                                        ; preds = %bb.ax
  %i.gb = ptrtoaddr ptr %i.fx to i64
  %i.gc = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !174 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !166
  %i.gh = ptrtoint ptr %i.gg to i64               ; 6 uses
  %i.gi = load i32, ptr %i.eb, align 8, !tbaa !168
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !168
  %i.gl = sub nsw i32 %i.gi, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %wide.trip.count = and i64 %i.fy, 2147483647    ; 4 uses
  %invariant.gep = getelementptr i8, ptr %i.gc, i64 %i.gm ; 7 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %i.gn = ptrtoaddr ptr %i.ge to i64
  %i.go = sub i64 %i.gb, %i.gn
  %diff.check = icmp ult i64 %i.go, 32
  %or.cond270 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond270, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph198
  %n.vec = and i64 %i.fy, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.gh, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %index ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load = load <2 x ptr>, ptr %i.gp, align 8, !tbaa !13
  %wide.load248 = load <2 x ptr>, ptr %i.gq, align 8, !tbaa !13
  %i.gr = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.gs = ptrtoint <2 x ptr> %wide.load248 to <2 x i64>
  %i.gt = sub <2 x i64> %i.gr, %broadcast.splat
  %i.gu = sub <2 x i64> %i.gs, %broadcast.splat
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %index ; 2 uses
  %wide.gep = getelementptr i8, ptr %invariant.gep, <2 x i64> %i.gt
  %wide.gep249 = getelementptr i8, ptr %invariant.gep, <2 x i64> %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store <2 x ptr> %wide.gep, ptr %i.gv, align 8, !tbaa !13
  store <2 x ptr> %wide.gep249, ptr %i.gw, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %.loopexit193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph198, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.fy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.prol
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !13
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.ha, %i.gh
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.prol
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.hb
  store ptr %gep.prol, ptr %i.hc, align 8, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !178

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.hd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %.loopexit193, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !13
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.hi
  store ptr %gep, ptr %i.hj, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !13
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.gh
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.hn
  store ptr %gep.1, ptr %i.ho, align 8, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.1
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !13
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = sub i64 %i.hr, %i.gh
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next.1
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.hs
  store ptr %gep.2, ptr %i.ht, align 8, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.2
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !13
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = sub i64 %i.hw, %i.gh
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next.2
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.hx
  store ptr %gep.3, ptr %i.hy, align 8, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit193, label %scalar.ph, !llvm.loop !179

bb.ay:                                            ; preds = %bb.aw
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  store i64 8, ptr %i.hz, align 8, !tbaa !173
  %i.ia = call noalias dereferenceable_or_null(64) ptr @zmalloc(i64 noundef 64) #26 ; 2 uses
  store ptr %i.ia, ptr %i.fo, align 8, !tbaa !174
  %i.ib = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.fi, ptr noundef nonnull dereferenceable(1) @.str.112) #21 ; 2 uses
  %.not185199 = icmp eq ptr %i.ib, null
  br i1 %.not185199, label %.loopexit193.thread, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %bb.ay
  %.pre214 = load i64, ptr %i.hz, align 8, !tbaa !173
  %.pre215.pre = load i64, ptr %i.fp, align 8, !tbaa !172
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %bb.ba
  %.pre215 = phi i64 [ %i.io, %bb.ba ], [ %.pre215.pre, %.lr.ph200.preheader ] ; 2 uses
  %i.ic = phi ptr [ %i.in, %bb.ba ], [ %i.ia, %.lr.ph200.preheader ] ; 2 uses
  %i.id = phi i64 [ %i.iq, %bb.ba ], [ %.pre214, %.lr.ph200.preheader ] ; 2 uses
  %i.ie = phi ptr [ %i.is, %bb.ba ], [ %i.ib, %.lr.ph200.preheader ] ; 2 uses
  %i.if = icmp eq i64 %i.id, 0
  br i1 %i.if, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph200
  %i.ig = shl i64 %.pre215, 4
  %i.ih = call ptr @zrealloc(ptr noundef %i.ic, i64 noundef %i.ig) #27 ; 2 uses
  store ptr %i.ih, ptr %i.fo, align 8, !tbaa !174
  %i.ii = load i64, ptr %i.fp, align 8, !tbaa !172 ; 2 uses
  %i.ij = load i64, ptr %i.hz, align 8, !tbaa !173
  %i.ik = add i64 %i.ij, %i.ii
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph200
  %i.il = phi i64 [ %i.ik, %bb.az ], [ %i.id, %.lr.ph200 ]
  %i.im = phi i64 [ %i.ii, %bb.az ], [ %.pre215, %.lr.ph200 ] ; 2 uses
  %i.in = phi ptr [ %i.ih, %bb.az ], [ %i.ic, %.lr.ph200 ] ; 2 uses
  %i.io = add i64 %i.im, 1                        ; 2 uses
  store i64 %i.io, ptr %i.fp, align 8, !tbaa !172
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.im
  store ptr %i.ie, ptr %i.ip, align 8, !tbaa !13
  %i.iq = add i64 %i.il, -1                       ; 2 uses
  store i64 %i.iq, ptr %i.hz, align 8, !tbaa !173
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  %i.is = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ir, ptr noundef nonnull dereferenceable(1) @.str.112) #21 ; 2 uses
  %.not185 = icmp eq ptr %i.is, null
  br i1 %.not185, label %.loopexit193, label %.lr.ph200, !llvm.loop !180

.loopexit193:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.ba, %middle.block, %bb.ax, %.loopexit195
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !50
  %.not186 = icmp eq i32 %i.it, 0
  br i1 %.not186, label %.loopexit, label %bb.bb

.loopexit193.thread:                              ; preds = %bb.ay
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !50
  %.not186239 = icmp eq i32 %i.iu, 0
  br i1 %.not186239, label %.loopexit, label %.thread

bb.bb:                                            ; preds = %.loopexit193
  br i1 %.not183, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !181 ; 2 uses
  store i64 %i.iw, ptr %i.fr, align 8, !tbaa !181
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 0, ptr %i.ix, align 8, !tbaa !182
  %i.iy = shl i64 %i.iw, 3
  %i.iz = call noalias ptr @zmalloc(i64 noundef %i.iy) #26 ; 8 uses
  store ptr %i.iz, ptr %i.fq, align 8, !tbaa !183
  %i.ja = load i64, ptr %i.fr, align 8, !tbaa !181 ; 4 uses
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %bb.bc
  %i.jd = ptrtoaddr ptr %i.iz to i64
  %i.je = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !183 ; 7 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !166
  %i.jj = ptrtoint ptr %i.ji to i64               ; 6 uses
  %i.jk = load i32, ptr %i.eb, align 8, !tbaa !168
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !168
  %i.jn = sub nsw i32 %i.jk, %i.jm
  %i.jo = sext i32 %i.jn to i64
  %wide.trip.count211 = and i64 %i.ja, 2147483647 ; 4 uses
  %invariant.gep243 = getelementptr i8, ptr %i.je, i64 %i.jo ; 7 uses
  %min.iters.check253 = icmp samesign ult i64 %wide.trip.count211, 4
  %i.jp = ptrtoaddr ptr %i.jg to i64
  %i.jq = sub i64 %i.jd, %i.jp
  %diff.check251 = icmp ult i64 %i.jq, 32
  %or.cond272 = select i1 %min.iters.check253, i1 true, i1 %diff.check251
  br i1 %or.cond272, label %scalar.ph252.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph202
  %n.vec256 = and i64 %i.ja, 2147483644           ; 3 uses
  %broadcast.splatinsert257 = insertelement <2 x i64> poison, i64 %i.jj, i64 0
  %broadcast.splat258 = shufflevector <2 x i64> %broadcast.splatinsert257, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph254
  %index260 = phi i64 [ 0, %vector.ph254 ], [ %index.next265, %vector.body259 ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %index260 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %wide.load261 = load <2 x ptr>, ptr %i.jr, align 8, !tbaa !13
  %wide.load262 = load <2 x ptr>, ptr %i.js, align 8, !tbaa !13
  %i.jt = ptrtoint <2 x ptr> %wide.load261 to <2 x i64>
  %i.ju = ptrtoint <2 x ptr> %wide.load262 to <2 x i64>
  %i.jv = sub <2 x i64> %i.jt, %broadcast.splat258
  %i.jw = sub <2 x i64> %i.ju, %broadcast.splat258
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %index260 ; 2 uses
  %wide.gep263 = getelementptr i8, ptr %invariant.gep243, <2 x i64> %i.jv
  %wide.gep264 = getelementptr i8, ptr %invariant.gep243, <2 x i64> %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store <2 x ptr> %wide.gep263, ptr %i.jx, align 8, !tbaa !13
  store <2 x ptr> %wide.gep264, ptr %i.jy, align 8, !tbaa !13
  %index.next265 = add nuw i64 %index260, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next265, %n.vec256
  br i1 %i.jz, label %middle.block266, label %vector.body259, !llvm.loop !184

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %wide.trip.count211, %n.vec256
  br i1 %cmp.n267, label %.loopexit, label %scalar.ph252.preheader

scalar.ph252.preheader:                           ; preds = %.lr.ph202, %middle.block266
  %indvars.iv208.ph = phi i64 [ 0, %.lr.ph202 ], [ %n.vec256, %middle.block266 ] ; 3 uses
  %xtraiter276 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %scalar.ph252.prol.loopexit, label %scalar.ph252.prol

scalar.ph252.prol:                                ; preds = %scalar.ph252.preheader, %scalar.ph252.prol
  %indvars.iv208.prol = phi i64 [ %indvars.iv.next209.prol, %scalar.ph252.prol ], [ %indvars.iv208.ph, %scalar.ph252.preheader ] ; 3 uses
  %prol.iter278 = phi i64 [ %prol.iter278.next, %scalar.ph252.prol ], [ 0, %scalar.ph252.preheader ]
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv208.prol
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !13
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = sub i64 %i.kc, %i.jj
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv208.prol
  %gep244.prol = getelementptr i8, ptr %invariant.gep243, i64 %i.kd
  store ptr %gep244.prol, ptr %i.ke, align 8, !tbaa !13
  %indvars.iv.next209.prol = add nuw nsw i64 %indvars.iv208.prol, 1 ; 2 uses
  %prol.iter278.next = add i64 %prol.iter278, 1   ; 2 uses
  %prol.iter278.cmp.not = icmp eq i64 %prol.iter278.next, %xtraiter276
  br i1 %prol.iter278.cmp.not, label %scalar.ph252.prol.loopexit, label %scalar.ph252.prol, !llvm.loop !185

scalar.ph252.prol.loopexit:                       ; preds = %scalar.ph252.prol, %scalar.ph252.preheader
  %indvars.iv208.unr = phi i64 [ %indvars.iv208.ph, %scalar.ph252.preheader ], [ %indvars.iv.next209.prol, %scalar.ph252.prol ]
  %i.kf = sub nsw i64 %indvars.iv208.ph, %wide.trip.count211
  %i.kg = icmp ugt i64 %i.kf, -4
  br i1 %i.kg, label %.loopexit, label %scalar.ph252

scalar.ph252:                                     ; preds = %scalar.ph252.prol.loopexit, %scalar.ph252
  %indvars.iv208 = phi i64 [ %indvars.iv.next209.3, %scalar.ph252 ], [ %indvars.iv208.unr, %scalar.ph252.prol.loopexit ] ; 6 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv208
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !13
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = sub i64 %i.kj, %i.jj
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv208
  %gep244 = getelementptr i8, ptr %invariant.gep243, i64 %i.kk
  store ptr %gep244, ptr %i.kl, align 8, !tbaa !13
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next209
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !13
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = sub i64 %i.ko, %i.jj
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.next209
  %gep244.1 = getelementptr i8, ptr %invariant.gep243, i64 %i.kp
  store ptr %gep244.1, ptr %i.kq, align 8, !tbaa !13
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next209.1
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !13
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = sub i64 %i.kt, %i.jj
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.next209.1
  %gep244.2 = getelementptr i8, ptr %invariant.gep243, i64 %i.ku
  store ptr %gep244.2, ptr %i.kv, align 8, !tbaa !13
  %indvars.iv.next209.2 = add nuw nsw i64 %indvars.iv208, 3 ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.next209.2
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !13
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = sub i64 %i.ky, %i.jj
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.next209.2
  %gep244.3 = getelementptr i8, ptr %invariant.gep243, i64 %i.kz
  store ptr %gep244.3, ptr %i.la, align 8, !tbaa !13
  %indvars.iv.next209.3 = add nuw nsw i64 %indvars.iv208, 4 ; 2 uses
  %exitcond212.not.3 = icmp eq i64 %indvars.iv.next209.3, %wide.trip.count211
  br i1 %exitcond212.not.3, label %.loopexit, label %scalar.ph252, !llvm.loop !186

.thread:                                          ; preds = %.loopexit193.thread, %bb.bb
  %i.lb = load ptr, ptr %i.bd, align 8, !tbaa !166
  store i64 0, ptr %i.fr, align 8, !tbaa !181
  %i.lc = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 4 uses
  store i64 8, ptr %i.lc, align 8, !tbaa !182
  %i.ld = call noalias dereferenceable_or_null(64) ptr @zmalloc(i64 noundef 64) #26 ; 2 uses
  store ptr %i.ld, ptr %i.fq, align 8, !tbaa !183
  %i.le = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.lb, ptr noundef nonnull dereferenceable(1) @.str.168) #21 ; 2 uses
  %.not187203 = icmp eq ptr %i.le, null
  br i1 %.not187203, label %.loopexit, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %.thread
  %.pre216 = load i64, ptr %i.lc, align 8, !tbaa !182
  %.pre217.pre = load i64, ptr %i.fr, align 8, !tbaa !181
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.be
  %.pre217 = phi i64 [ %i.lr, %bb.be ], [ %.pre217.pre, %.lr.ph204.preheader ] ; 2 uses
  %i.lf = phi ptr [ %i.lq, %bb.be ], [ %i.ld, %.lr.ph204.preheader ] ; 2 uses
  %i.lg = phi i64 [ %i.lt, %bb.be ], [ %.pre216, %.lr.ph204.preheader ] ; 2 uses
  %i.lh = phi ptr [ %i.lv, %bb.be ], [ %i.le, %.lr.ph204.preheader ] ; 2 uses
  %i.li = icmp eq i64 %i.lg, 0
  br i1 %i.li, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph204
  %i.lj = shl i64 %.pre217, 4
  %i.lk = call ptr @zrealloc(ptr noundef %i.lf, i64 noundef %i.lj) #27 ; 2 uses
  store ptr %i.lk, ptr %i.fq, align 8, !tbaa !183
  %i.ll = load i64, ptr %i.fr, align 8, !tbaa !181 ; 2 uses
  %i.lm = load i64, ptr %i.lc, align 8, !tbaa !182
  %i.ln = add i64 %i.lm, %i.ll
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph204
  %i.lo = phi i64 [ %i.ln, %bb.bd ], [ %i.lg, %.lr.ph204 ]
  %i.lp = phi i64 [ %i.ll, %bb.bd ], [ %.pre217, %.lr.ph204 ] ; 2 uses
  %i.lq = phi ptr [ %i.lk, %bb.bd ], [ %i.lf, %.lr.ph204 ] ; 2 uses
  %i.lr = add i64 %i.lp, 1                        ; 2 uses
  store i64 %i.lr, ptr %i.fr, align 8, !tbaa !181
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lp
  store ptr %i.lh, ptr %i.ls, align 8, !tbaa !13
  %i.lt = add i64 %i.lo, -1                       ; 2 uses
  store i64 %i.lt, ptr %i.lc, align 8, !tbaa !182
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lh, i64 5
  %i.lv = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.lu, ptr noundef nonnull dereferenceable(1) @.str.168) #21 ; 2 uses
  %.not187 = icmp eq ptr %i.lv, null
  br i1 %.not187, label %.loopexit, label %.lr.ph204, !llvm.loop !187

.loopexit:                                        ; preds = %scalar.ph252.prol.loopexit, %scalar.ph252, %bb.be, %middle.block266, %.loopexit193.thread, %bb.bc, %.thread, %.loopexit193
  %i.lw = icmp slt i32 %3, 0
  br i1 %i.lw, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.lx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !125
  %i.ly = zext nneg i32 %3 to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.ly
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !126
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit, %bb.bf
  %.0162.in = phi ptr [ %i.mb, %bb.bf ], [ @config, %.loopexit ]
  %.0162 = load ptr, ptr %.0162.in, align 8, !tbaa !188 ; 2 uses
  %i.mc = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !47
  %i.md = icmp eq i32 %i.mc, 0
  %i.me = load ptr, ptr %i.i, align 8, !tbaa !151
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 140
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !189 ; 2 uses
  br i1 %i.md, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.mh = call i32 @aeCreateFileEvent(ptr noundef %.0162, i32 noundef %i.mg, i32 noundef 2, ptr noundef nonnull @writeHandler, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.mi = call i32 @aeCreateFileEvent(ptr noundef %.0162, i32 noundef %i.mg, i32 noundef 1, ptr noundef nonnull @readHandler, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.mj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !78
  %i.mk = call ptr @listAddNodeTail(ptr noundef %i.mj, ptr noundef nonnull %i.i) #20 ; 0 uses
  %i.ml = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @config, i64 124), i32 1 monotonic, align 4 ; 0 uses
  %i.mm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 320) monotonic, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i32 %i.mm, ptr %i.mn, align 8, !tbaa !190
  ret ptr %i.i
}

declare void @aeMain(ptr noundef) local_unnamed_addr #3

declare ptr @hi_sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @getSdsArrayFromArgv(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @hi_sds_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @readArgFromStdin() local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #10

declare i64 @redisFormatCommandArgv(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
