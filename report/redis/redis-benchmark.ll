Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-benchmark?download=true
inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@createClient:bb.a
  call void @free(ptr noundef %i.bt) #20
  store i32 %i.bm, ptr %i.bc, align 4, !tbaa !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bu = phi ptr [ %i.bs, %bb.aa ], [ %i.bn, %bb.z ] ; 2 uses
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 20), align 4, !tbaa !243
  %i.bw = icmp eq i32 %i.bv, 0
  %or.cond7 = select i1 %i.bw, i1 true, i1 %i.h
  br i1 %or.cond7, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 232), align 8, !tbaa !244 ; 6 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !248
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = and i32 %i.ca, 7
  switch i32 %i.cb, label %hi_sdslen.exit [
    i32 0, label %bb.ad
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
    i32 4, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cc = lshr i32 %i.ca, 3
  %i.cd = zext nneg i32 %i.cc to i64
  br label %hi_sdslen.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ce = getelementptr inbounds i8, ptr %i.bx, i64 -3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !248
  %i.cg = zext i8 %i.cf to i64
  br label %hi_sdslen.exit

bb.af:                                            ; preds = %bb.ac
  %i.ch = getelementptr inbounds i8, ptr %i.bx, i64 -5
  %i.ci = load i16, ptr %i.ch, align 1, !tbaa !306
  %i.cj = zext i16 %i.ci to i64
  br label %hi_sdslen.exit

bb.ag:                                            ; preds = %bb.ac
  %i.ck = getelementptr inbounds i8, ptr %i.bx, i64 -9
  %i.cl = load i32, ptr %i.ck, align 1, !tbaa !19
  %i.cm = zext i32 %i.cl to i64
  br label %hi_sdslen.exit

bb.ah:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds i8, ptr %i.bx, i64 -17
  %i.co = load i64, ptr %i.cn, align 1, !tbaa !307
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.0.i = phi i64 [ %i.co, %bb.ah ], [ %i.cd, %bb.ad ], [ %i.cg, %bb.ae ], [ %i.cj, %bb.af ], [ %i.cm, %bb.ag ], [ 0, %bb.ac ]
  %i.cp = trunc i64 %.0.i to i32
  %i.cq = call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.166, i32 noundef %i.cp, ptr noundef nonnull %i.bx) #20 ; 2 uses
  store ptr %i.cq, ptr %i.bb, align 8, !tbaa !327
  %i.cr = load i32, ptr %i.bc, align 4, !tbaa !328
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.bc, align 4, !tbaa !328
  br label %bb.ai

bb.ai:                                            ; preds = %hi_sdslen.exit, %bb.ab
  %i.ct = phi ptr [ %i.cq, %hi_sdslen.exit ], [ %i.bu, %bb.ab ] ; 2 uses
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 408), align 8, !tbaa !245
  %.not182 = icmp eq i32 %i.cu, 0
  br i1 %.not182, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr null, ptr %i.d, align 8, !tbaa !220
  %i.cv = call i32 (ptr, ptr, ...) @redisFormatCommand(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.167) #20
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !220
  %i.cx = sext i32 %i.cv to i64
  %i.cy = call ptr @hi_sdscatlen(ptr noundef %i.ct, ptr noundef %i.cw, i64 noundef %i.cx) #20 ; 2 uses
  store ptr %i.cy, ptr %i.bb, align 8, !tbaa !327
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !220
  call void @free(ptr noundef %i.cz) #20
  %i.da = load i32, ptr %i.bc, align 4, !tbaa !328
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.bc, align 4, !tbaa !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dc = phi ptr [ %i.cy, %bb.aj ], [ %i.ct, %bb.ai ] ; 8 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !248
  %i.df = zext i8 %i.de to i32                    ; 2 uses
  %i.dg = and i32 %i.df, 7
  switch i32 %i.dg, label %hi_sdslen.exit189 [
    i32 0, label %bb.al
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ao
    i32 4, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dh = lshr i32 %i.df, 3
  %i.di = zext nneg i32 %i.dh to i64
  br label %hi_sdslen.exit189

bb.am:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds i8, ptr %i.dc, i64 -3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !248
  %i.dl = zext i8 %i.dk to i64
  br label %hi_sdslen.exit189

bb.an:                                            ; preds = %bb.ak
  %i.dm = getelementptr inbounds i8, ptr %i.dc, i64 -5
  %i.dn = load i16, ptr %i.dm, align 1, !tbaa !306
  %i.do = zext i16 %i.dn to i64
  br label %hi_sdslen.exit189

bb.ao:                                            ; preds = %bb.ak
  %i.dp = getelementptr inbounds i8, ptr %i.dc, i64 -9
  %i.dq = load i32, ptr %i.dp, align 1, !tbaa !19
  %i.dr = zext i32 %i.dq to i64
  br label %hi_sdslen.exit189

bb.ap:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds i8, ptr %i.dc, i64 -17
  %i.dt = load i64, ptr %i.ds, align 1, !tbaa !307
  br label %hi_sdslen.exit189

hi_sdslen.exit189:                                ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap
  %.0.i188 = phi i64 [ %i.dt, %bb.ap ], [ %i.di, %bb.al ], [ %i.dl, %bb.am ], [ %i.do, %bb.an ], [ %i.dr, %bb.ao ], [ 0, %bb.ak ]
  %i.du = trunc i64 %.0.i188 to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 3 uses
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !329
  %.not183 = icmp eq ptr %2, null                 ; 3 uses
  br i1 %.not183, label %.preheader, label %bb.aq

.preheader:                                       ; preds = %hi_sdslen.exit189
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !247 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph, label %.loopexit195

bb.aq:                                            ; preds = %hi_sdslen.exit189
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !327 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !329
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !248
  %i.eg = zext i8 %i.ef to i32                    ; 2 uses
  %i.eh = and i32 %i.eg, 7
  switch i32 %i.eh, label %hi_sdslen.exit191 [
    i32 0, label %bb.ar
    i32 1, label %bb.as
    i32 2, label %bb.at
    i32 3, label %bb.au
    i32 4, label %bb.av
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ei = lshr i32 %i.eg, 3
  %i.ej = zext nneg i32 %i.ei to i64
  br label %hi_sdslen.exit191

bb.as:                                            ; preds = %bb.aq
  %i.ek = getelementptr inbounds i8, ptr %i.dz, i64 -3
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !248
  %i.em = zext i8 %i.el to i64
  br label %hi_sdslen.exit191

bb.at:                                            ; preds = %bb.aq
  %i.en = getelementptr inbounds i8, ptr %i.dz, i64 -5
  %i.eo = load i16, ptr %i.en, align 1, !tbaa !306
  %i.ep = zext i16 %i.eo to i64
  br label %hi_sdslen.exit191

bb.au:                                            ; preds = %bb.aq
  %i.eq = getelementptr inbounds i8, ptr %i.dz, i64 -9
  %i.er = load i32, ptr %i.eq, align 1, !tbaa !19
  %i.es = zext i32 %i.er to i64
  br label %hi_sdslen.exit191

bb.av:                                            ; preds = %bb.aq
  %i.et = getelementptr inbounds i8, ptr %i.dz, i64 -17
  %i.eu = load i64, ptr %i.et, align 1, !tbaa !307
  br label %hi_sdslen.exit191

hi_sdslen.exit191:                                ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.0.i190 = phi i64 [ %i.eu, %bb.av ], [ %i.ej, %bb.ar ], [ %i.em, %bb.as ], [ %i.ep, %bb.at ], [ %i.es, %bb.au ], [ 0, %bb.aq ]
  %i.ev = sub i64 %.0.i190, %i.ec
  %i.ew = call ptr @hi_sdscatlen(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.ed, i64 noundef %i.ev) #20 ; 2 uses
  store ptr %i.ew, ptr %i.bb, align 8, !tbaa !327
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !247
  br label %.loopexit195

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ex = phi ptr [ %i.ey, %.lr.ph ], [ %i.dc, %.preheader ]
  %.0196 = phi i32 [ %i.ez, %.lr.ph ], [ 0, %.preheader ]
  %i.ey = call ptr @hi_sdscatlen(ptr noundef %i.ex, ptr noundef %0, i64 noundef %1) #20 ; 3 uses
  %i.ez = add nuw nsw i32 %.0196, 1               ; 2 uses
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !247 ; 2 uses
  %i.fb = icmp slt i32 %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph, label %..loopexit195_crit_edge, !llvm.loop !383

..loopexit195_crit_edge:                          ; preds = %.lr.ph
  store ptr %i.ey, ptr %i.bb, align 8
  br label %.loopexit195

.loopexit195:                                     ; preds = %.preheader, %..loopexit195_crit_edge, %hi_sdslen.exit191
  %i.fc = phi ptr [ %i.dc, %.preheader ], [ %i.ey, %..loopexit195_crit_edge ], [ %i.ew, %hi_sdslen.exit191 ] ; 2 uses
  %i.fd = phi i32 [ %i.dw, %.preheader ], [ %i.fa, %..loopexit195_crit_edge ], [ %.pre, %hi_sdslen.exit191 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %i.fe, align 8, !tbaa !330
  %i.ff = load i32, ptr %i.bc, align 4, !tbaa !328
  %i.fg = add nsw i32 %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !331
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 168), align 8, !tbaa !249
  %.not184 = icmp eq i32 %i.fm, 0
  br i1 %.not184, label %.loopexit193, label %bb.aw

bb.aw:                                            ; preds = %.loopexit195
  br i1 %.not183, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !332 ; 6 uses
  store i64 %i.fo, ptr %i.fj, align 8, !tbaa !332
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %i.fp, align 8, !tbaa !398
  %i.fq = shl i64 %i.fo, 3
  %i.fr = call noalias ptr @zmalloc(i64 noundef %i.fq) #26 ; 8 uses
  store ptr %i.fr, ptr %i.fi, align 8, !tbaa !333
  %i.fs = trunc i64 %i.fo to i32
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph198, label %.loopexit193

.lr.ph198:                                        ; preds = %bb.ax
  %i.fu = ptrtoaddr ptr %i.fr to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !333 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !327
  %i.fz = ptrtoint ptr %i.fy to i64               ; 6 uses
  %i.ga = load i32, ptr %i.dv, align 8, !tbaa !329
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !329
  %i.gd = sub nsw i32 %i.ga, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %wide.trip.count = and i64 %i.fo, 2147483647    ; 4 uses
  %invariant.gep = getelementptr i8, ptr %i.fc, i64 %i.ge ; 7 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 6
  %i.gf = ptrtoaddr ptr %i.fw to i64
  %i.gg = sub i64 %i.gf, %i.fu
  %diff.check = icmp ugt i64 %i.gg, -32
  %or.cond266 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond266, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph198
  %n.vec = and i64 %i.fo, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %index ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %wide.load = load <2 x ptr>, ptr %i.gh, align 8, !tbaa !220
  %wide.load243 = load <2 x ptr>, ptr %i.gi, align 8, !tbaa !220
  %i.gj = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.gk = ptrtoint <2 x ptr> %wide.load243 to <2 x i64>
  %i.gl = sub <2 x i64> %i.gj, %broadcast.splat
  %i.gm = sub <2 x i64> %i.gk, %broadcast.splat
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index ; 2 uses
  %wide.gep = getelementptr i8, ptr %invariant.gep, <2 x i64> %i.gl
  %wide.gep244 = getelementptr i8, ptr %invariant.gep, <2 x i64> %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store <2 x ptr> %wide.gep, ptr %i.gn, align 8, !tbaa !220
  store <2 x ptr> %wide.gep244, ptr %i.go, align 8, !tbaa !220
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %.loopexit193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph198, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.fo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.prol
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !220
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.fz
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.prol
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.gt
  store ptr %gep.prol, ptr %i.gu, align 8, !tbaa !220
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !385

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.gv = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gw = icmp ugt i64 %i.gv, -4
  br i1 %i.gw, label %.loopexit193, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !220
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = sub i64 %i.gz, %i.fz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ha
  store ptr %gep, ptr %i.hb, align 8, !tbaa !220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.next
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !220
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.he, %i.fz
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.hf
  store ptr %gep.1, ptr %i.hg, align 8, !tbaa !220
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.next.1
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !220
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.fz
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next.1
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.hk
  store ptr %gep.2, ptr %i.hl, align 8, !tbaa !220
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.next.2
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !220
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.fz
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next.2
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.hp
  store ptr %gep.3, ptr %i.hq, align 8, !tbaa !220
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit193, label %scalar.ph, !llvm.loop !386

bb.ay:                                            ; preds = %bb.aw
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store i64 8, ptr %i.hr, align 8, !tbaa !398
  %i.hs = call noalias dereferenceable_or_null(64) ptr @zmalloc(i64 noundef 64) #26 ; 2 uses
  store ptr %i.hs, ptr %i.fi, align 8, !tbaa !333
  %i.ht = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.fc, ptr noundef nonnull dereferenceable(1) @.str.112) #21 ; 2 uses
  %.not185199 = icmp eq ptr %i.ht, null
  br i1 %.not185199, label %.loopexit193.thread, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.ay, %bb.ba
  %i.hu = phi ptr [ %i.ic, %bb.ba ], [ %i.hs, %bb.ay ] ; 2 uses
  %i.hv = phi i64 [ %i.id, %bb.ba ], [ 0, %bb.ay ] ; 3 uses
  %i.hw = phi i64 [ %i.if, %bb.ba ], [ 8, %bb.ay ] ; 2 uses
  %i.hx = phi ptr [ %i.ih, %bb.ba ], [ %i.ht, %bb.ay ] ; 2 uses
  %i.hy = icmp eq i64 %i.hw, 0
  br i1 %i.hy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph200
  %i.hz = shl i64 %i.hv, 4
  %i.ia = call ptr @zrealloc(ptr noundef %i.hu, i64 noundef %i.hz) #27 ; 2 uses
  store ptr %i.ia, ptr %i.fi, align 8, !tbaa !333
  %.pre213 = load i64, ptr %i.fj, align 8, !tbaa !332
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph200
  %i.ib = phi i64 [ %.pre213, %bb.az ], [ %i.hv, %.lr.ph200 ] ; 2 uses
  %i.ic = phi ptr [ %i.ia, %bb.az ], [ %i.hu, %.lr.ph200 ] ; 2 uses
  %4 = phi i64 [ %i.hv, %bb.az ], [ %i.hw, %.lr.ph200 ]
  %i.id = add i64 %i.ib, 1                        ; 2 uses
  store i64 %i.id, ptr %i.fj, align 8, !tbaa !332
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.ib
  store ptr %i.hx, ptr %i.ie, align 8, !tbaa !220
  %i.if = add i64 %4, -1                          ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.ih = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ig, ptr noundef nonnull dereferenceable(1) @.str.112) #21 ; 2 uses
  %.not185 = icmp eq ptr %i.ih, null
  br i1 %.not185, label %..loopexit193_crit_edge, label %.lr.ph200, !llvm.loop !387

..loopexit193_crit_edge:                          ; preds = %bb.ba
  store i64 %i.if, ptr %i.hr, align 8
  br label %.loopexit193

.loopexit193:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ax, %..loopexit193_crit_edge, %.loopexit195
  %i.ii = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !258
  %.not186 = icmp eq i32 %i.ii, 0
  br i1 %.not186, label %.loopexit, label %bb.bb

.loopexit193.thread:                              ; preds = %bb.ay
  %i.ij = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !258
  %.not186234 = icmp eq i32 %i.ij, 0
  br i1 %.not186234, label %.loopexit, label %.thread

bb.bb:                                            ; preds = %.loopexit193
  br i1 %.not183, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !336 ; 6 uses
  store i64 %i.il, ptr %i.fl, align 8, !tbaa !336
  %i.im = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 0, ptr %i.im, align 8, !tbaa !399
  %i.in = shl i64 %i.il, 3
  %i.io = call noalias ptr @zmalloc(i64 noundef %i.in) #26 ; 8 uses
  store ptr %i.io, ptr %i.fk, align 8, !tbaa !337
  %i.ip = trunc i64 %i.il to i32
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %bb.bc
  %i.ir = ptrtoaddr ptr %i.io to i64
  %i.is = load ptr, ptr %i.bb, align 8, !tbaa !327
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !337 ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !327
  %i.ix = ptrtoint ptr %i.iw to i64               ; 6 uses
  %i.iy = load i32, ptr %i.dv, align 8, !tbaa !329
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !329
  %i.jb = sub nsw i32 %i.iy, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %wide.trip.count211 = and i64 %i.il, 2147483647 ; 4 uses
  %invariant.gep238 = getelementptr i8, ptr %i.is, i64 %i.jc ; 7 uses
  %min.iters.check248 = icmp samesign ult i64 %wide.trip.count211, 6
  %i.jd = ptrtoaddr ptr %i.iu to i64
  %i.je = sub i64 %i.jd, %i.ir
  %diff.check250 = icmp ugt i64 %i.je, -32
  %or.cond268 = select i1 %min.iters.check248, i1 true, i1 %diff.check250
  br i1 %or.cond268, label %scalar.ph247.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %.lr.ph202
  %n.vec252 = and i64 %i.il, 2147483644           ; 3 uses
  %broadcast.splatinsert253 = insertelement <2 x i64> poison, i64 %i.ix, i64 0
  %broadcast.splat254 = shufflevector <2 x i64> %broadcast.splatinsert253, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph251
  %index256 = phi i64 [ 0, %vector.ph251 ], [ %index.next261, %vector.body255 ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %index256 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %wide.load257 = load <2 x ptr>, ptr %i.jf, align 8, !tbaa !220
  %wide.load258 = load <2 x ptr>, ptr %i.jg, align 8, !tbaa !220
  %i.jh = ptrtoint <2 x ptr> %wide.load257 to <2 x i64>
  %i.ji = ptrtoint <2 x ptr> %wide.load258 to <2 x i64>
  %i.jj = sub <2 x i64> %i.jh, %broadcast.splat254
  %i.jk = sub <2 x i64> %i.ji, %broadcast.splat254
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %index256 ; 2 uses
  %wide.gep259 = getelementptr i8, ptr %invariant.gep238, <2 x i64> %i.jj
  %wide.gep260 = getelementptr i8, ptr %invariant.gep238, <2 x i64> %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <2 x ptr> %wide.gep259, ptr %i.jl, align 8, !tbaa !220
  store <2 x ptr> %wide.gep260, ptr %i.jm, align 8, !tbaa !220
  %index.next261 = add nuw i64 %index256, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next261, %n.vec252
  br i1 %i.jn, label %middle.block262, label %vector.body255, !llvm.loop !388

middle.block262:                                  ; preds = %vector.body255
  %cmp.n263 = icmp eq i64 %wide.trip.count211, %n.vec252
  br i1 %cmp.n263, label %.loopexit, label %scalar.ph247.preheader

scalar.ph247.preheader:                           ; preds = %.lr.ph202, %middle.block262
  %indvars.iv208.ph = phi i64 [ 0, %.lr.ph202 ], [ %n.vec252, %middle.block262 ] ; 3 uses
  %xtraiter272 = and i64 %i.il, 3                 ; 2 uses
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %scalar.ph247.prol.loopexit, label %scalar.ph247.prol

scalar.ph247.prol:                                ; preds = %scalar.ph247.preheader, %scalar.ph247.prol
  %indvars.iv208.prol = phi i64 [ %indvars.iv.next209.prol, %scalar.ph247.prol ], [ %indvars.iv208.ph, %scalar.ph247.preheader ] ; 3 uses
  %prol.iter274 = phi i64 [ %prol.iter274.next, %scalar.ph247.prol ], [ 0, %scalar.ph247.preheader ]
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv208.prol
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !220
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = sub i64 %i.jq, %i.ix
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv208.prol
  %gep239.prol = getelementptr i8, ptr %invariant.gep238, i64 %i.jr
  store ptr %gep239.prol, ptr %i.js, align 8, !tbaa !220
  %indvars.iv.next209.prol = add nuw nsw i64 %indvars.iv208.prol, 1 ; 2 uses
  %prol.iter274.next = add i64 %prol.iter274, 1   ; 2 uses
  %prol.iter274.cmp.not = icmp eq i64 %prol.iter274.next, %xtraiter272
  br i1 %prol.iter274.cmp.not, label %scalar.ph247.prol.loopexit, label %scalar.ph247.prol, !llvm.loop !389

scalar.ph247.prol.loopexit:                       ; preds = %scalar.ph247.prol, %scalar.ph247.preheader
  %indvars.iv208.unr = phi i64 [ %indvars.iv208.ph, %scalar.ph247.preheader ], [ %indvars.iv.next209.prol, %scalar.ph247.prol ]
  %i.jt = sub nsw i64 %indvars.iv208.ph, %wide.trip.count211
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %.loopexit, label %scalar.ph247

scalar.ph247:                                     ; preds = %scalar.ph247.prol.loopexit, %scalar.ph247
  %indvars.iv208 = phi i64 [ %indvars.iv.next209.3, %scalar.ph247 ], [ %indvars.iv208.unr, %scalar.ph247.prol.loopexit ] ; 6 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv208
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !220
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = sub i64 %i.jx, %i.ix
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv208
  %gep239 = getelementptr i8, ptr %invariant.gep238, i64 %i.jy
  store ptr %gep239, ptr %i.jz, align 8, !tbaa !220
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.next209
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !220
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = sub i64 %i.kc, %i.ix
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.next209
  %gep239.1 = getelementptr i8, ptr %invariant.gep238, i64 %i.kd
  store ptr %gep239.1, ptr %i.ke, align 8, !tbaa !220
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.next209.1
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !220
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub i64 %i.kh, %i.ix
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.next209.1
  %gep239.2 = getelementptr i8, ptr %invariant.gep238, i64 %i.ki
  store ptr %gep239.2, ptr %i.kj, align 8, !tbaa !220
  %indvars.iv.next209.2 = add nuw nsw i64 %indvars.iv208, 3 ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.next209.2
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !220
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.km, %i.ix
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.next209.2
  %gep239.3 = getelementptr i8, ptr %invariant.gep238, i64 %i.kn
  store ptr %gep239.3, ptr %i.ko, align 8, !tbaa !220
  %indvars.iv.next209.3 = add nuw nsw i64 %indvars.iv208, 4 ; 2 uses
  %exitcond212.not.3 = icmp eq i64 %indvars.iv.next209.3, %wide.trip.count211
  br i1 %exitcond212.not.3, label %.loopexit, label %scalar.ph247, !llvm.loop !390

.thread:                                          ; preds = %.loopexit193.thread, %bb.bb
  %i.kp = load ptr, ptr %i.bb, align 8, !tbaa !327
  store i64 0, ptr %i.fl, align 8, !tbaa !336
  %i.kq = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  store i64 8, ptr %i.kq, align 8, !tbaa !399
  %i.kr = call noalias dereferenceable_or_null(64) ptr @zmalloc(i64 noundef 64) #26 ; 2 uses
  store ptr %i.kr, ptr %i.fk, align 8, !tbaa !337
  %i.ks = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.kp, ptr noundef nonnull dereferenceable(1) @.str.168) #21 ; 2 uses
  %.not187203 = icmp eq ptr %i.ks, null
  br i1 %.not187203, label %.loopexit, label %.lr.ph204

.lr.ph204:                                        ; preds = %.thread, %bb.be
  %i.kt = phi ptr [ %i.lb, %bb.be ], [ %i.kr, %.thread ] ; 2 uses
  %i.ku = phi i64 [ %i.lc, %bb.be ], [ 0, %.thread ] ; 3 uses
  %i.kv = phi i64 [ %i.le, %bb.be ], [ 8, %.thread ] ; 2 uses
  %i.kw = phi ptr [ %i.lg, %bb.be ], [ %i.ks, %.thread ] ; 2 uses
  %i.kx = icmp eq i64 %i.kv, 0
  br i1 %i.kx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph204
  %i.ky = shl i64 %i.ku, 4
  %i.kz = call ptr @zrealloc(ptr noundef %i.kt, i64 noundef %i.ky) #27 ; 2 uses
  store ptr %i.kz, ptr %i.fk, align 8, !tbaa !337
  %.pre214 = load i64, ptr %i.fl, align 8, !tbaa !336
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph204
  %i.la = phi i64 [ %.pre214, %bb.bd ], [ %i.ku, %.lr.ph204 ] ; 2 uses
  %i.lb = phi ptr [ %i.kz, %bb.bd ], [ %i.kt, %.lr.ph204 ] ; 2 uses
  %5 = phi i64 [ %i.ku, %bb.bd ], [ %i.kv, %.lr.ph204 ]
  %i.lc = add i64 %i.la, 1                        ; 2 uses
  store i64 %i.lc, ptr %i.fl, align 8, !tbaa !336
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.la
  store ptr %i.kw, ptr %i.ld, align 8, !tbaa !220
  %i.le = add i64 %5, -1                          ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 5
  %i.lg = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.lf, ptr noundef nonnull dereferenceable(1) @.str.168) #21 ; 2 uses
  %.not187 = icmp eq ptr %i.lg, null
  br i1 %.not187, label %..loopexit_crit_edge, label %.lr.ph204, !llvm.loop !391

..loopexit_crit_edge:                             ; preds = %bb.be
  store i64 %i.le, ptr %i.kq, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph247.prol.loopexit, %scalar.ph247, %middle.block262, %.loopexit193.thread, %bb.bc, %.thread, %..loopexit_crit_edge, %.loopexit193
  %i.lh = icmp slt i32 %3, 0
  br i1 %i.lh, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.li = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !301
  %i.lj = zext nneg i32 %3 to i64
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !303
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit, %bb.bf
  %.0159.in = phi ptr [ %i.lm, %bb.bf ], [ @config, %.loopexit ]
  %.0159 = load ptr, ptr %.0159.in, align 8, !tbaa !338 ; 2 uses
  %i.ln = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !254
  %i.lo = icmp eq i32 %i.ln, 0
  %i.lp = load ptr, ptr %i.i, align 8, !tbaa !317
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 140
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !339 ; 2 uses
  br i1 %i.lo, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ls = call i32 @aeCreateFileEvent(ptr noundef %.0159, i32 noundef %i.lr, i32 noundef 2, ptr noundef nonnull @writeHandler, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.lt = call i32 @aeCreateFileEvent(ptr noundef %.0159, i32 noundef %i.lr, i32 noundef 1, ptr noundef nonnull @readHandler, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.lu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !275
  %i.lv = call ptr @listAddNodeTail(ptr noundef %i.lu, ptr noundef nonnull %i.i) #20 ; 0 uses
  %i.lw = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @config, i64 124), i32 1 monotonic, align 4 ; 0 uses
  %i.lx = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 320) monotonic, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i32 %i.lx, ptr %i.ly, align 8, !tbaa !340
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

; Function Attrs: nounwind uwtable
define internal fastcc void @benchmark(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !guid !404 {
bb.a:
  %3 = alloca %struct.hdr_iter, align 8           ; 14 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !271
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 132) seq_cst, align 4, !tbaa !405
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) seq_cst, align 8, !tbaa !406
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 140) seq_cst, align 4, !tbaa !407
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !270
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !256
  %i.b = tail call i32 @hdr_init(i64 noundef 10, i64 noundef 3000000, i32 noundef %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 296)) #20 ; 0 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !256
  %i.d = tail call i32 @hdr_init(i64 noundef 10, i64 noundef 3000000, i32 noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 304)) #20 ; 0 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !257
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @initBenchmarkThreads()
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !257
  %i.f = icmp slt i32 %.pre, 1
  %i.g = sext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = sext i32 %2 to i64
  %i.j = tail call fastcc ptr @createClient(ptr noundef %1, i64 noundef %i.i, ptr noundef null, i32 noundef %i.h)
  %i.k = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !268
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !232
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %createMissingClients.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.024.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !257
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !268
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !257
  %i.q = srem i32 %i.o, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.0.i = phi i32 [ %i.q, %bb.d ], [ -1, %.lr.ph.i ]
  %i.r = tail call fastcc ptr @createClient(ptr noundef null, i64 noundef 0, ptr noundef readonly %i.j, i32 noundef %.0.i), !inline_history !1 ; 0 uses
  %i.s = add nsw i32 %.024.i, 1
  %i.t = icmp sgt i32 %.024.i, 63
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @usleep(i32 noundef 50000) #20, !inline_history !1 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ 0, %bb.f ], [ %i.s, %bb.e ]
  %i.v = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !268
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !232
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i, label %createMissingClients.exit, !llvm.loop !2

createMissingClients.exit:                        ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.y = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #20 ; 0 uses
  %i.z = load i64, ptr %5, align 8, !tbaa !264
  %i.aa = mul nsw i64 %i.z, 1000000
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !265
  %i.ad = add nsw i64 %i.aa, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ae = sdiv i64 %i.ad, 1000
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !269
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !257 ; 2 uses
  %.not5 = icmp eq i32 %i.af, 0
  br i1 %.not5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %createMissingClients.exit
  %i.ag = load ptr, ptr @config, align 8, !tbaa !274
  tail call void @aeMain(ptr noundef %i.ag) #20
  br label %startBenchmarkThreads.exit

bb.i:                                             ; preds = %createMissingClients.exit
  %i.ah = icmp sgt i32 %i.af, 0
  br i1 %i.ah, label %.lr.ph.i9, label %startBenchmarkThreads.exit

.preheader.i:                                     ; preds = %bb.k
  %i.ai = icmp sgt i32 %i.ar, 0
  br i1 %i.ai, label %.lr.ph11.i, label %startBenchmarkThreads.exit

.lr.ph.i9:                                        ; preds = %bb.i, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !301
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !303 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = tail call i32 @pthread_create(ptr noundef nonnull %i.am, ptr noundef null, ptr noundef nonnull @execBenchmarkThread, ptr noundef %i.al) #20
  %.not.i10 = icmp eq i32 %i.an, 0
  br i1 %.not.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i9
  %i.ao = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !238
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.194, i32 noundef %i.ao) #25 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.k:                                             ; preds = %.lr.ph.i9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !257 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %.lr.ph.i9, label %.preheader.i, !llvm.loop !3

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %.lr.ph11.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !301
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv14.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !303
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !304
  %i.az = tail call i32 @pthread_join(i64 noundef %i.ay, ptr noundef null) #20 ; 0 uses
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !257
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next15.i, %i.bb
  br i1 %i.bc, label %.lr.ph11.i, label %startBenchmarkThreads.exit, !llvm.loop !4

startBenchmarkThreads.exit:                       ; preds = %.lr.ph11.i, %.preheader.i, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bd = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #20 ; 0 uses
  %i.be = load i64, ptr %4, align 8, !tbaa !264
  %i.bf = mul nsw i64 %i.be, 1000000
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !265
  %i.bi = add nsw i64 %i.bf, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bj = sdiv i64 %i.bi, 1000
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !269
  %i.bl = sub nsw i64 %i.bj, %i.bk
  store i64 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @config, i64 192), align 8, !tbaa !408
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) seq_cst, align 8, !tbaa !406
  %i.bn = sitofp i32 %i.bm to float
end_hunk_0
