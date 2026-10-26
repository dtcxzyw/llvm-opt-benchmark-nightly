Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/webpmux?download=true
inline.NumInlined: 63
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.19, i64 54, i64 1, ptr %i.de) #15 ; 0 uses
  br label %bb.o

ValidateCommandLine.exit.i:                       ; preds = %bb.m
  %i.df = add i32 %i.da, %.0.lcssa.i81131135144153163.i.i
  %spec.select.i = select i1 %i.cz, i32 1, i32 %i.df
  %.0.i = select i1 %i.dd, i32 %spec.select.i, i32 %.0.lcssa.i111155161.i.i ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %28, i64 80 ; 7 uses
  store i32 %.0.i, ptr %i.dg, align 8, !tbaa !35
  %i.dh = sext i32 %.0.i to i64
  %i.di = call noalias ptr @calloc(i64 noundef %i.dh, i64 noundef 24) #16 ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %28, i64 72 ; 8 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !20
  %i.dk = icmp eq ptr %i.di, null
  br i1 %i.dk, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str, i64 43, i64 1, ptr %i.dl) #15 ; 0 uses
  br label %InitializeConfig.exit.thread

bb.p:                                             ; preds = %ValidateCommandLine.exit.i
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite19.i = call i64 @fwrite(ptr nonnull @.str.1, i64 32, i64 1, ptr %i.dm) #15 ; 0 uses
  br label %InitializeConfig.exit.thread

bb.q:                                             ; preds = %ValidateCommandLine.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !36 ; 10 uses
  br i1 %i.z, label %.lr.ph.i.i, label %ParseCommandLine.exit.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 8 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %28, i64 56
  %.promoted = load i32, ptr %i.dp, align 8
  %.promoted86 = load i32, ptr %i.dq, align 8
  %.promoted87 = load ptr, ptr %i.dr, align 8
  br label %bb.r

bb.r:                                             ; preds = %.thread2.i.i, %.lr.ph.i.i
  %i.dt = phi ptr [ %.promoted87, %.lr.ph.i.i ], [ %i.mv, %.thread2.i.i ] ; 8 uses
  %i.du = phi i32 [ %.promoted86, %.lr.ph.i.i ], [ %i.mw, %.thread2.i.i ] ; 4 uses
  %i.dv = phi i32 [ %.promoted, %.lr.ph.i.i ], [ %i.mx, %.thread2.i.i ] ; 5 uses
  %i.dw = phi i32 [ %.0.i, %.lr.ph.i.i ], [ %i.my, %.thread2.i.i ] ; 8 uses
  %.021983.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.4223.i.i, %.thread2.i.i ] ; 5 uses
  %.022481.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.6.i.i, %.thread2.i.i ] ; 6 uses
  %i.dx = sext i32 %.021983.i.i to i64            ; 2 uses
  %i.dy = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.dx ; 2 uses
  %i.dz = sext i32 %.022481.i.i to i64            ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dz ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !16 ; 6 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !37
  %i.ed = icmp eq i8 %i.ec, 45
  br i1 %i.ed, label %bb.u, label %bb.bz

bb.s:                                             ; preds = %.preheader.peel.newph.a
  %i.ee = sext i32 %i.gn to i64                   ; 3 uses
  %i.ef = sext i32 %i.gf to i64                   ; 4 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !16 ; 6 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !37
  %i.ej = icmp eq i8 %i.ei, 45
  br i1 %i.ej, label %bb.v, label %.thread.loopexit.loopexit

bb.t:                                             ; preds = %.thread2.i.i.jt2
  %i.ek = sext i32 %.4223.i.i.jt2 to i64
  %i.el = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.ek ; 2 uses
  %i.em = sext i32 %.6.i.i.jt2 to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.em ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !16 ; 6 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !37
  %i.eq = icmp eq i8 %i.ep, 45
  br i1 %i.eq, label %bb.w, label %.thread

bb.u:                                             ; preds = %bb.r
  %i.er = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eb, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not254.i.i = icmp eq i32 %i.er, 0
  br i1 %.not254.i.i, label %.loopexit, label %bb.z

bb.v:                                             ; preds = %bb.s
  %i.es = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eh, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not254.i.i.jt6 = icmp eq i32 %i.es, 0
  br i1 %.not254.i.i.jt6, label %.loopexit.loopexit, label %bb.aa

bb.w:                                             ; preds = %bb.t
  %i.et = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eo, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not254.i.i.jt2 = icmp eq i32 %i.et, 0
  br i1 %.not254.i.i.jt2, label %.loopexit, label %bb.ab

.loopexit.loopexit:                               ; preds = %bb.v, %bb.ah
  %.lcssa496 = phi i32 [ %i.fs, %bb.ah ], [ %i.gn, %bb.v ]
  %.lcssa491 = phi i32 [ %i.fe, %bb.ah ], [ %i.gf, %bb.v ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.w, %bb.u
  %.022481.i.i216 = phi i32 [ %.022481.i.i, %bb.u ], [ %.6.i.i.jt2, %bb.w ], [ %.lcssa491, %.loopexit.loopexit ]
  %.021983.i.i212 = phi i32 [ %.021983.i.i, %bb.u ], [ %.4223.i.i.jt2, %bb.w ], [ %.lcssa496, %.loopexit.loopexit ]
  %i.eu = phi i32 [ %i.dw, %bb.u ], [ %i.nd, %bb.w ], [ %i.dw, %.loopexit.loopexit ]
  %i.ev = phi i32 [ %i.dv, %bb.u ], [ 6, %bb.w ], [ 6, %.loopexit.loopexit ]
  %i.ew = phi i32 [ %i.du, %bb.u ], [ %i.nb, %bb.w ], [ 5, %.loopexit.loopexit ]
  %i.ex = phi ptr [ %i.dt, %bb.u ], [ %i.na, %bb.w ], [ %i.dt, %.loopexit.loopexit ]
  %i.ey = icmp eq i32 %i.ev, 0
  br i1 %i.ey, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  store i32 2, ptr %i.dp, align 8, !tbaa !38
  %i.ez = add nsw i32 %.022481.i.i216, 1
  br label %.thread2.i.i.jt2

bb.y:                                             ; preds = %.loopexit
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite255.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.fa) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.z:                                             ; preds = %bb.u
  %i.fb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eb, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not256.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not256.i.i, label %bb.ac, label %.loopexit230

bb.aa:                                            ; preds = %bb.v
  %i.fc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eh, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not256.i.i.jt6 = icmp eq i32 %i.fc, 0
  br i1 %.not256.i.i.jt6, label %bb.ad, label %.loopexit230.loopexit.loopexit

bb.ab:                                            ; preds = %bb.w
  %i.fd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eo, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not256.i.i.jt2 = icmp eq i32 %i.fd, 0
  br i1 %.not256.i.i.jt2, label %bb.ae, label %.loopexit230

bb.ac:                                            ; preds = %bb.z
  %i.fe = add nsw i32 %.022481.i.i, 2             ; 6 uses
  %i.ff = icmp slt i32 %i.y, %i.fe
  br i1 %i.ff, label %.loopexit231, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.fg = add nsw i32 %i.gf, 2                    ; 2 uses
  %i.fh = icmp slt i32 %i.y, %i.fg
  br i1 %i.fh, label %.loopexit231, label %.preheader.peel.newph.a, !llvm.loop !24

bb.ae:                                            ; preds = %bb.ab
  %i.fi = add nsw i32 %.6.i.i.jt2, 2
  %i.fj = icmp slt i32 %i.y, %i.fi
  br i1 %i.fj, label %.loopexit231, label %.loopexit233

.loopexit231:                                     ; preds = %bb.ac, %bb.ad, %bb.aj, %bb.ae
  %i.fk = phi ptr [ %i.fy, %bb.aj ], [ %i.eo, %bb.ae ], [ %i.eh, %bb.ad ], [ %i.eb, %bb.ac ]
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.fm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fl, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.fk) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.af:                                            ; preds = %bb.ac
  switch i32 %i.dv, label %.loopexit233 [
    i32 0, label %.preheader
    i32 6, label %.preheader
  ]

.preheader:                                       ; preds = %bb.af, %bb.af
  store i32 6, ptr %i.dp, align 8, !tbaa !38
  switch i32 %i.du, label %.loopexit599 [
    i32 0, label %.thread2.i.i.jt6.peel
    i32 5, label %.thread2.i.i.jt6.peel
  ]

.thread2.i.i.jt6.peel:                            ; preds = %.preheader, %.preheader
  %i.fn = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.dx
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dz
  store i32 5, ptr %i.dq, align 8, !tbaa !40
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !42
  %i.fs = add nsw i32 %.021983.i.i, 1             ; 5 uses
  %i.ft = icmp slt i32 %i.fe, %i.y
  br i1 %i.ft, label %bb.ag, label %ParseCommandLine.exit.i

bb.ag:                                            ; preds = %.thread2.i.i.jt6.peel
  %i.fu = sext i32 %i.fs to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.fu ; 2 uses
  %i.fw = sext i32 %i.fe to i64                   ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.fw ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !16 ; 6 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !37
  %i.ga = icmp eq i8 %i.fz, 45
  br i1 %i.ga, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.gb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fy, ptr noundef nonnull dereferenceable(5) @.str.4) #14
  %.not254.i.i.jt6.peel = icmp eq i32 %i.gb, 0
  br i1 %.not254.i.i.jt6.peel, label %.loopexit.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fy, ptr noundef nonnull dereferenceable(10) @.str.15) #14
  %.not256.i.i.jt6.peel = icmp eq i32 %i.gc, 0
  br i1 %.not256.i.i.jt6.peel, label %bb.aj, label %.loopexit230

bb.aj:                                            ; preds = %bb.ai
  %i.gd = add nsw i32 %.022481.i.i, 4             ; 2 uses
  %i.ge = icmp slt i32 %i.y, %i.gd
  br i1 %i.ge, label %.loopexit231, label %.preheader.peel.newph.a

.preheader.peel.newph.a:                          ; preds = %bb.aj, %bb.ad
  %i.gf = phi i32 [ %i.fg, %bb.ad ], [ %i.gd, %bb.aj ] ; 6 uses
  %i.gg = phi i64 [ %i.ef, %bb.ad ], [ %i.fw, %bb.aj ]
  %i.gh = phi i64 [ %i.ee, %bb.ad ], [ %i.fu, %bb.aj ]
  %.021983.i.i214 = phi i32 [ %i.gn, %bb.ad ], [ %i.fs, %bb.aj ]
  %i.gi = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.gh
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.gg
  store i32 5, ptr %i.dq, align 8, !tbaa !40
  %i.gk = getelementptr i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !42
  %i.gn = add nsw i32 %.021983.i.i214, 1          ; 5 uses
  %i.go = icmp slt i32 %i.gf, %i.y
  br i1 %i.go, label %bb.s, label %ParseCommandLine.exit.i

.loopexit233:                                     ; preds = %bb.af, %bb.ae
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite257.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.gp) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

.loopexit599:                                     ; preds = %.preheader
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite258.i.i = call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %i.gq) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

.loopexit230.loopexit.loopexit:                   ; preds = %bb.aa
  %i.gr = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.ee
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ef
  br label %.loopexit230

.loopexit230:                                     ; preds = %bb.ai, %.loopexit230.loopexit.loopexit, %bb.ab, %bb.z
  %i.gt = phi ptr [ %i.eb, %bb.z ], [ %i.eo, %bb.ab ], [ %i.fy, %bb.ai ], [ %i.eh, %.loopexit230.loopexit.loopexit ] ; 20 uses
  %i.gu = phi ptr [ %i.ea, %bb.z ], [ %i.en, %bb.ab ], [ %i.fx, %bb.ai ], [ %i.gs, %.loopexit230.loopexit.loopexit ] ; 5 uses
  %i.gv = phi ptr [ %i.dy, %bb.z ], [ %i.el, %bb.ab ], [ %i.fv, %bb.ai ], [ %i.gr, %.loopexit230.loopexit.loopexit ] ; 5 uses
  %.022481.i.i217 = phi i32 [ %.022481.i.i, %bb.z ], [ %.6.i.i.jt2, %bb.ab ], [ %i.fe, %bb.ai ], [ %i.gf, %.loopexit230.loopexit.loopexit ] ; 8 uses
  %.021983.i.i213 = phi i32 [ %.021983.i.i, %bb.z ], [ %.4223.i.i.jt2, %bb.ab ], [ %i.fs, %bb.ai ], [ %i.gn, %.loopexit230.loopexit.loopexit ] ; 6 uses
  %i.gw = phi i32 [ %i.dw, %bb.z ], [ %i.nd, %bb.ab ], [ %i.dw, %.loopexit230.loopexit.loopexit ], [ %i.dw, %bb.ai ] ; 5 uses
  %i.gx = phi i32 [ %i.dv, %bb.z ], [ %i.nc, %bb.ab ], [ 6, %.loopexit230.loopexit.loopexit ], [ 6, %bb.ai ] ; 6 uses
  %i.gy = phi i32 [ %i.du, %bb.z ], [ %i.nb, %bb.ab ], [ 5, %.loopexit230.loopexit.loopexit ], [ 5, %bb.ai ] ; 6 uses
  %i.gz = phi ptr [ %i.dt, %bb.z ], [ %i.na, %bb.ab ], [ %i.dt, %.loopexit230.loopexit.loopexit ], [ %i.dt, %bb.ai ] ; 6 uses
  %i.ha = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(5) @.str.2) #14
  %.not259.i.i = icmp eq i32 %i.ha, 0
  br i1 %.not259.i.i, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.loopexit230
  %i.hb = icmp eq i32 %i.gx, 0
  br i1 %i.hb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %i.dp, align 8, !tbaa !38
  %i.hc = add nsw i32 %.022481.i.i217, 1
  br label %.thread2.i.i.jt2

bb.am:                                            ; preds = %bb.ak
  %i.hd = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite260.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.hd) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.an:                                            ; preds = %.loopexit230
  %i.he = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(7) @.str.6) #14
  %.not261.i.i = icmp eq i32 %i.he, 0
  br i1 %.not261.i.i, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.hf = icmp eq i32 %i.gx, 0
  br i1 %i.hf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 3, ptr %i.dp, align 8, !tbaa !38
  %i.hg = add nsw i32 %.022481.i.i217, 1
  br label %.thread2.i.i.jt2

bb.aq:                                            ; preds = %bb.ao
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite262.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.hh) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.ar:                                            ; preds = %bb.an
  %i.hi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(7) @.str.12) #14
  %.not263.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not263.i.i, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.hj = add nsw i32 %.022481.i.i217, 3          ; 2 uses
  %i.hk = icmp slt i32 %i.y, %i.hj
  br i1 %i.hk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hl = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hl, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.gt) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.au:                                            ; preds = %bb.as
  switch i32 %i.gx, label %bb.aw [
    i32 0, label %bb.av
    i32 2, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  store i32 2, ptr %i.dp, align 8, !tbaa !38
  switch i32 %i.gy, label %bb.ay [
    i32 0, label %bb.ax
    i32 4, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.au
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite264.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.hn) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.ax:                                            ; preds = %bb.av, %bb.av
  store i32 4, ptr %i.dq, align 8, !tbaa !40
  store i32 1, ptr %i.gv, align 8, !tbaa !43
  %i.ho = getelementptr i8, ptr %i.gu, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !44
  %i.hr = getelementptr i8, ptr %i.gu, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !42
  %i.hu = add nsw i32 %.021983.i.i213, 1
  br label %.thread2.i.i.jt2

bb.ay:                                            ; preds = %bb.av
  %i.hv = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite265.i.i = call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %i.hv) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.az:                                            ; preds = %bb.ar
  %i.hw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(6) @.str.13) #14
  %.not266.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not266.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(9) @.str.14) #14
  %.not267.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not267.i.i, label %bb.bb, label %sub_1.i22.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hy = add nsw i32 %.022481.i.i217, 2          ; 2 uses
  %i.hz = icmp slt i32 %i.y, %i.hy
  br i1 %i.hz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.gt) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.bd:                                            ; preds = %bb.bb
  switch i32 %i.gx, label %bb.bf [
    i32 0, label %bb.be
    i32 2, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd
  store i32 2, ptr %i.dp, align 8, !tbaa !38
  switch i32 %i.gy, label %bb.bh [
    i32 0, label %bb.bg
    i32 4, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.bd
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite268.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.ic) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.bg:                                            ; preds = %bb.be, %bb.be
  store i32 4, ptr %i.dq, align 8, !tbaa !40
  %i.id = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(6) @.str.13) #14
  %.not270.i.i = icmp eq i32 %i.id, 0
  %i.ie = select i1 %.not270.i.i, i32 2, i32 3
  store i32 %i.ie, ptr %i.gv, align 8, !tbaa !43
  %i.if = getelementptr i8, ptr %i.gu, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !42
  %i.ii = add nsw i32 %.021983.i.i213, 1
  br label %.thread2.i.i.jt2

bb.bh:                                            ; preds = %bb.be
  %i.ij = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite269.i.i = call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %i.ij) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

sub_1.i22.i:                                      ; preds = %bb.ba
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.il = load i8, ptr %i.ik, align 1             ; 3 uses
  %.not86.i.i = icmp eq i8 %i.il, 111
  br i1 %.not86.i.i, label %.tail.i23.i, label %.tail.thread.i.i

.tail.i23.i:                                      ; preds = %sub_1.i22.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.in = load i8, ptr %i.im, align 1
  %i.io = icmp eq i8 %i.in, 0
  br i1 %i.io, label %bb.bi, label %.tail.thread.i.thread.i

bb.bi:                                            ; preds = %.tail.i23.i
  %i.ip = add nsw i32 %.022481.i.i217, 2          ; 2 uses
  %i.iq = icmp slt i32 %i.y, %i.ip
  br i1 %i.iq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ir = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ir, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.gt) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.it = getelementptr i8, ptr %i.gu, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !16
  store ptr %i.iu, ptr %i.ds, align 8, !tbaa !45
  br label %.thread2.i.i

.tail.thread.i.i:                                 ; preds = %sub_1.i22.i
  %i.iv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(6) @.str.8) #14
  %.not272.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not272.i.i, label %bb.bl, label %sub_126.i.i

.tail.thread.i.thread.i:                          ; preds = %.tail.i23.i
  %i.iw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(6) @.str.8) #14
  %.not272.i4.i = icmp eq i32 %i.iw, 0
  br i1 %.not272.i4.i, label %bb.bl, label %.tail24.thread.i.i

bb.bl:                                            ; preds = %.tail.thread.i.thread.i, %.tail.thread.i.i
  %i.ix = add nsw i32 %.022481.i.i217, 2          ; 3 uses
  %i.iy = icmp slt i32 %i.y, %i.ix
  br i1 %i.iy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.iz = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ja = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iz, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.gt) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.jb = icmp sgt i32 %i.y, %i.ix
  br i1 %i.jb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jc = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.jd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jc, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.gt) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.bp:                                            ; preds = %bb.bn
  %.not273.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not273.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.je = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite274.i.i = call i64 @fwrite(ptr nonnull @.str.20, i64 35, i64 1, ptr %i.je) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.br:                                            ; preds = %bb.bp
  store i32 4, ptr %i.dp, align 8, !tbaa !38
  store i32 0, ptr %i.dg, align 8, !tbaa !35
  %i.jf = getelementptr i8, ptr %i.gu, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !16 ; 2 uses
  store ptr %i.jg, ptr %i.dr, align 8, !tbaa !46
  br label %.thread2.i.i.jt2

sub_126.i.i:                                      ; preds = %.tail.thread.i.i
  %.not88.i.i = icmp eq i8 %i.il, 104
  br i1 %.not88.i.i, label %.tail24.i.i, label %.tail24.thread.i.i

.tail24.i.i:                                      ; preds = %sub_126.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = icmp eq i8 %i.ji, 0
  br i1 %i.jj, label %bb.bs, label %.tail24.thread.i.i

.tail24.thread.i.i:                               ; preds = %.tail.thread.i.thread.i, %.tail24.i.i, %sub_126.i.i
  %i.jk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(6) @.str.25) #14
  %.not276.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not276.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.tail24.thread.i.i, %.tail24.i.i
  call fastcc void @PrintHelp()
  call fastcc void @DeleteConfig(ptr noundef nonnull %28)
  call void @exit(i32 noundef 0) #18
  unreachable

bb.bt:                                            ; preds = %.tail24.thread.i.i
  %i.jl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(9) @.str.26) #14
  %.not277.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not277.i.i, label %bb.bu, label %sub_131.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.jm = call i32 @WebPGetMuxVersion() #13       ; 3 uses
  %i.jn = lshr i32 %i.jm, 16
  %i.jo = and i32 %i.jn, 255
  %i.jp = lshr i32 %i.jm, 8
  %i.jq = and i32 %i.jp, 255
  %i.jr = and i32 %i.jm, 255
  %i.js = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.jo, i32 noundef %i.jq, i32 noundef %i.jr) ; 0 uses
  call fastcc void @DeleteConfig(ptr noundef nonnull %28)
  call void @exit(i32 noundef 0) #18
  unreachable

sub_131.i.i:                                      ; preds = %bb.bt
  %.not90.i.i = icmp eq i8 %i.il, 45
  br i1 %.not90.i.i, label %.tail29.i.i, label %.tail29.thread.i.i

.tail29.i.i:                                      ; preds = %sub_131.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %bb.bv, label %.tail29.thread.i.i

bb.bv:                                            ; preds = %.tail29.i.i
  %i.jw = add nsw i32 %i.y, -1
  %i.jx = icmp slt i32 %.022481.i.i217, %i.jw
  br i1 %i.jx, label %bb.bw, label %ParseCommandLine.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.jy = add nsw i32 %.022481.i.i217, 1          ; 2 uses
  %i.jz = icmp eq ptr %i.gz, null
  br i1 %i.jz, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ka = sext i32 %i.jy to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !16
  store ptr %i.kc, ptr %i.dr, align 8, !tbaa !46
  br label %ParseCommandLine.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.kd = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ke = sext i32 %i.jy to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !16
  %i.kh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kd, ptr noundef nonnull @.str.29, ptr noundef %i.kg) #17 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

.tail29.thread.i.i:                               ; preds = %.tail29.i.i, %sub_131.i.i
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.kj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.gt) #17 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.bz:                                            ; preds = %bb.r
  %i.kk = icmp eq i32 %i.dv, 0
  br i1 %i.kk, label %bb.ca, label %.thread

bb.ca:                                            ; preds = %bb.bz
  %i.kl = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite253.i.i = call i64 @fwrite(ptr nonnull @.str.31, i64 56, i64 1, ptr %i.kl) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

.thread.loopexit.loopexit:                        ; preds = %bb.s
  %i.km = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.ee
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ef
  br label %.thread

.thread:                                          ; preds = %bb.ag, %.thread.loopexit.loopexit, %bb.t, %bb.bz
  %i.ko = phi ptr [ %i.dt, %bb.bz ], [ %i.na, %bb.t ], [ %i.dt, %.thread.loopexit.loopexit ], [ %i.dt, %bb.ag ] ; 6 uses
  %i.kp = phi i32 [ %i.du, %bb.bz ], [ %i.nb, %bb.t ], [ 5, %.thread.loopexit.loopexit ], [ 5, %bb.ag ] ; 3 uses
  %i.kq = phi i32 [ %i.dv, %bb.bz ], [ %i.nc, %bb.t ], [ 6, %.thread.loopexit.loopexit ], [ 6, %bb.ag ] ; 5 uses
  %i.kr = phi i32 [ %i.dw, %bb.bz ], [ %i.nd, %bb.t ], [ %i.dw, %.thread.loopexit.loopexit ], [ %i.dw, %bb.ag ] ; 6 uses
  %.021983.i.i211228 = phi i32 [ %.021983.i.i, %bb.bz ], [ %.4223.i.i.jt2, %bb.t ], [ %i.fs, %bb.ag ], [ %i.gn, %.thread.loopexit.loopexit ] ; 7 uses
  %.022481.i.i215226 = phi i32 [ %.022481.i.i, %bb.bz ], [ %.6.i.i.jt2, %bb.t ], [ %i.fe, %bb.ag ], [ %i.gf, %.thread.loopexit.loopexit ] ; 6 uses
  %i.ks = phi ptr [ %i.dy, %bb.bz ], [ %i.el, %bb.t ], [ %i.fv, %bb.ag ], [ %i.km, %.thread.loopexit.loopexit ] ; 4 uses
  %i.kt = phi ptr [ %i.ea, %bb.bz ], [ %i.en, %bb.t ], [ %i.fx, %bb.ag ], [ %i.kn, %.thread.loopexit.loopexit ] ; 4 uses
  %i.ku = phi ptr [ %i.eb, %bb.bz ], [ %i.eo, %bb.t ], [ %i.fy, %bb.ag ], [ %i.eh, %.thread.loopexit.loopexit ] ; 13 uses
  %i.kv = icmp eq i32 %.021983.i.i211228, %i.kr
  br i1 %i.kv, label %bb.cx, label %bb.cb

bb.cb:                                            ; preds = %.thread
  %i.kw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ku, ptr noundef nonnull dereferenceable(4) @.str.32) #14
  %.not.i20.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i20.i, label %.thread.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ku, ptr noundef nonnull dereferenceable(5) @.str.33) #14
  %.not246.i.i = icmp eq i32 %i.kx, 0             ; 2 uses
  br i1 %.not246.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ky = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ku, ptr noundef nonnull dereferenceable(4) @.str.34) #14
  %.not247.i.i = icmp eq i32 %i.ky, 0
  br i1 %.not247.i.i, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.kz = icmp eq i32 %i.kp, 0
  br i1 %i.kz, label %bb.cf, label %bb.cg

.thread.i.i:                                      ; preds = %bb.cb
  %i.la = icmp eq i32 %i.kp, 0
  br i1 %i.la, label %.thread1.i.i, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lb = select i1 %.not246.i.i, i32 1, i32 2
  br label %.thread1.i.i

.thread1.i.i:                                     ; preds = %bb.cf, %.thread.i.i
  %i.lc = phi i32 [ %i.lb, %bb.cf ], [ 3, %.thread.i.i ] ; 3 uses
  store i32 %i.lc, ptr %i.dq, align 8, !tbaa !40
  %i.ld = icmp eq i32 %i.kq, 2
  br i1 %i.ld, label %bb.ch, label %bb.ck

bb.cg:                                            ; preds = %.thread.i.i, %bb.ce
  %i.le = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite.i21.i = call i64 @fwrite(ptr nonnull @.str.22, i64 36, i64 1, ptr %i.le) #15 ; 0 uses
  br label %ParseCommandLine.exit.thread.i

bb.ch:                                            ; preds = %.thread1.i.i
  %i.lf = add nsw i32 %.022481.i.i215226, 2       ; 2 uses
  %i.lg = icmp slt i32 %i.y, %i.lf
  br i1 %i.lg, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.lh = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.li = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lh, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.ku) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.lj = getelementptr i8, ptr %i.kt, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !44
  %i.lm = add nsw i32 %.021983.i.i211228, 1
  br label %.thread2.i.i.jt2

bb.ck:                                            ; preds = %.thread1.i.i
  store i32 0, ptr %i.dg, align 8, !tbaa !35
  %i.ln = add nsw i32 %.022481.i.i215226, 1
  br label %.thread2.i.i

bb.cl:                                            ; preds = %bb.cd
  %i.lo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ku, ptr noundef nonnull dereferenceable(6) @.str.35) #14
  %.not250.i.i = icmp eq i32 %i.lo, 0
  %i.lp = icmp eq i32 %i.kq, 1
  %or.cond.i.i = and i1 %i.lp, %.not250.i.i
  br i1 %or.cond.i.i, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.lq = add nsw i32 %.022481.i.i215226, 2       ; 2 uses
  %i.lr = icmp slt i32 %i.y, %i.lq
  br i1 %i.lr, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ls = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.lt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ls, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.ku) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.co:                                            ; preds = %bb.cm
  store i32 4, ptr %i.dq, align 8, !tbaa !40
  %i.lu = getelementptr i8, ptr %i.kt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !42
  %i.lx = add nsw i32 %.021983.i.i211228, 1
  br label %.thread2.i.i.jt2

bb.cp:                                            ; preds = %bb.cl
  %i.ly = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ku, ptr noundef nonnull dereferenceable(5) @.str.36) #14
  %.not251.i.i = icmp eq i32 %i.ly, 0
  %i.lz = icmp eq i32 %i.kq, 2                    ; 2 uses
  %or.cond22.i.i = and i1 %i.lz, %.not251.i.i
  br i1 %or.cond22.i.i, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.ma = add nsw i32 %.022481.i.i215226, 2       ; 2 uses
  %i.mb = icmp slt i32 %i.y, %i.ma
  br i1 %i.mb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.mc = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.md = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mc, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.ku) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.cs:                                            ; preds = %bb.cq
  store i32 6, ptr %i.dq, align 8, !tbaa !40
  %i.me = getelementptr i8, ptr %i.kt, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !42
  %i.mh = add nsw i32 %.021983.i.i211228, 1
  br label %.thread2.i.i.jt2

bb.ct:                                            ; preds = %bb.cp
  %i.mi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ku, ptr noundef nonnull dereferenceable(8) @.str.37) #14
  %.not252.i.i = icmp eq i32 %i.mi, 0
  %or.cond23.i.i = and i1 %i.lz, %.not252.i.i
  br i1 %or.cond23.i.i, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.mj = add nsw i32 %.022481.i.i215226, 2       ; 2 uses
  %i.mk = icmp slt i32 %i.y, %i.mj
  br i1 %i.mk, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ml = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.mm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ml, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.ku) #17 ; 0 uses
  br label %ParseCommandLine.exit.i

bb.cw:                                            ; preds = %bb.cu
  store i32 7, ptr %i.dq, align 8, !tbaa !40
  %i.mn = getelementptr i8, ptr %i.kt, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !16
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !42
end_hunk_0
