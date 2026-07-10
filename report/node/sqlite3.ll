inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3WhereEnd:bb.a

bb.i:                                             ; preds = %bb.h
  %i.bm = load i8, ptr %i.p, align 1, !tbaa !227
  %i.bn = icmp eq i8 %i.bm, 2
  br i1 %i.bn, label %bb.j, label %sqlite3VdbeAddOp2.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = load i8, ptr %i.h, align 8, !tbaa !227
  %i.bp = zext i8 %i.bo to i64
  %i.bq = icmp eq i64 %indvars.iv462, %i.bp
  br i1 %i.bq, label %bb.k, label %sqlite3VdbeAddOp2.exit

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !4272
  %i.bt = and i32 %i.bs, 512
  %.not297 = icmp eq i32 %i.bt, 0
  br i1 %.not297, label %sqlite3VdbeAddOp2.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !227 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 99
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = and i16 %i.bx, 128
  %.not298 = icmp eq i16 %i.by, 0
  br i1 %.not298, label %sqlite3VdbeAddOp2.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 30
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !227 ; 3 uses
  %i.cb = zext i16 %i.ca to i32                   ; 4 uses
  %.not299 = icmp eq i16 %i.ca, 0
  br i1 %.not299, label %sqlite3VdbeAddOp2.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2987
  %i.ce = zext i16 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !330
  %i.ch = icmp sgt i16 %i.cg, 35
  br i1 %i.ch, label %bb.o, label %sqlite3VdbeAddOp2.exit

bb.o:                                             ; preds = %bb.n
  %i.ci = load i32, ptr %i.q, align 4, !tbaa !950
  %i.cj = add nsw i32 %i.ci, 1                    ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %sqlite3VdbeAddOp3.exit323
  %.0271424 = phi i32 [ 0, %bb.o ], [ %i.da, %sqlite3VdbeAddOp3.exit323 ] ; 4 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !4318 ; 2 uses
  %i.cm = add nsw i32 %.0271424, %i.cj            ; 2 uses
  %i.cn = load i32, ptr %i.g, align 8, !tbaa !185 ; 3 uses
  %i.co = load i32, ptr %i.n, align 4, !tbaa !943
  %.not.i321 = icmp sgt i32 %i.co, %i.cn
  br i1 %.not.i321, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 95, i32 noundef %i.cl, i32 noundef %.0271424, i32 noundef %i.cm), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit323

bb.r:                                             ; preds = %bb.p
  %i.cq = add nsw i32 %i.cn, 1
  store i32 %i.cq, ptr %i.g, align 8, !tbaa !185
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.cs = sext i32 %i.cn to i64
  %i.ct = getelementptr inbounds [24 x i8], ptr %i.cr, i64 %i.cs ; 7 uses
  store i8 95, ptr %i.ct, align 8, !tbaa !563
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store i16 0, ptr %i.cu, align 2, !tbaa !587
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cl, ptr %i.cv, align 4, !tbaa !584
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %.0271424, ptr %i.cw, align 8, !tbaa !585
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 %i.cm, ptr %i.cx, align 4, !tbaa !586
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr null, ptr %i.cy, align 8, !tbaa !227
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store i8 0, ptr %i.cz, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp3.exit323

sqlite3VdbeAddOp3.exit323:                        ; preds = %bb.q, %bb.r
  %i.da = add nuw nsw i32 %.0271424, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, %i.cb
  br i1 %exitcond.not, label %bb.s, label %bb.p, !llvm.loop !4364

bb.s:                                             ; preds = %sqlite3VdbeAddOp3.exit323
  %i.db = add nuw nsw i32 %i.cb, 1
  %i.dc = load i32, ptr %i.q, align 4, !tbaa !950
  %i.dd = add nsw i32 %i.db, %i.dc
  store i32 %i.dd, ptr %i.q, align 4, !tbaa !950
  %i.de = load i8, ptr %i.bk, align 1, !tbaa !4363
  %i.df = icmp eq i8 %i.de, 39
  %i.dg = select i1 %i.df, i32 21, i32 24         ; 2 uses
  %i.dh = load i32, ptr %i.ck, align 8, !tbaa !4318 ; 2 uses
  %i.di = load i32, ptr %i.g, align 8, !tbaa !185 ; 4 uses
  %i.dj = load i32, ptr %i.n, align 4, !tbaa !943
  %.not.i324 = icmp sgt i32 %i.dj, %i.di
  br i1 %.not.i324, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.c, i32 noundef range(i32 0, 256) %i.dg, i32 noundef %i.dh, i32 noundef 0, i32 noundef %i.cj, i32 noundef %i.cb)
  br label %sqlite3VdbeAddOp4Int.exit

bb.u:                                             ; preds = %bb.s
  %i.dl = add nsw i32 %i.di, 1
  store i32 %i.dl, ptr %i.g, align 8, !tbaa !185
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.dn = sext i32 %i.di to i64
  %i.do = getelementptr inbounds [24 x i8], ptr %i.dm, i64 %i.dn ; 7 uses
  %i.dp = trunc nuw nsw i32 %i.dg to i8
  store i8 %i.dp, ptr %i.do, align 8, !tbaa !563
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  store i16 0, ptr %i.dq, align 2, !tbaa !587
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.dh, ptr %i.dr, align 4, !tbaa !584
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 0, ptr %i.ds, align 8, !tbaa !585
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 %i.cj, ptr %i.dt, align 4, !tbaa !586
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i32 %i.cb, ptr %i.du, align 8, !tbaa !227
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store i8 -3, ptr %i.dv, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.t, %bb.u
  %.0.i325 = phi i32 [ %i.dk, %bb.t ], [ %i.di, %bb.u ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !4365 ; 2 uses
  %i.dy = load i32, ptr %i.g, align 8, !tbaa !185 ; 3 uses
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !943
  %.not.i.i = icmp sgt i32 %i.dz, %i.dy
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.ea = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 9, i32 noundef 1, i32 noundef %i.dx, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.w:                                             ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.eb = add nsw i32 %i.dy, 1
  store i32 %i.eb, ptr %i.g, align 8, !tbaa !185
  %i.ec = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.ed = sext i32 %i.dy to i64
  %i.ee = getelementptr inbounds [24 x i8], ptr %i.ec, i64 %i.ed ; 7 uses
  store i8 9, ptr %i.ee, align 8, !tbaa !563
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  store i16 0, ptr %i.ef, align 2, !tbaa !587
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 1, ptr %i.eg, align 4, !tbaa !584
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.dx, ptr %i.eh, align 8, !tbaa !585
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ei, align 4, !tbaa !586
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store ptr null, ptr %i.ej, align 8, !tbaa !227
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store i8 0, ptr %i.ek, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.w, %bb.v, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.h
  %.2 = phi i32 [ %.0269434, %bb.h ], [ %.0269434, %bb.i ], [ %.0269434, %bb.n ], [ %.0269434, %bb.m ], [ %.0269434, %bb.l ], [ %.0269434, %bb.k ], [ %.0269434, %bb.j ], [ %.0.i325, %bb.v ], [ %.0.i325, %bb.w ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  %i.em = load i8, ptr %i.el, align 8, !tbaa !4315
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 27
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = and i8 %i.eq, 4
  %.not300 = icmp eq i8 %i.er, 0
  br i1 %.not300, label %sqlite3VdbeAddOp2.exit328, label %bb.x

bb.x:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.es = load i8, ptr %i.h, align 8, !tbaa !227
  %i.et = zext i8 %i.es to i64
  %i.eu = icmp eq i64 %indvars.iv462, %i.et
  br i1 %i.eu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv462
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !4315
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 27
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = and i8 %i.fb, 4
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.z, label %sqlite3VdbeAddOp2.exit328

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fe = icmp samesign ugt i64 %indvars.iv462, 1
  br i1 %i.fe, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.ff = xor i64 %indvars.iv, -1
  %sext = shl i64 %i.ff, 32
  %1 = ashr exact i64 %sext, 32
  %i.fg = getelementptr inbounds [120 x i8], ptr %i.w, i64 %1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !4315
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 27
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = and i8 %i.fm, 4
  %.not301 = icmp eq i8 %i.fn, 0
  br i1 %.not301, label %._crit_edge.loopexit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next, %indvars.iv460
  br i1 %exitcond459.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !4366

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.aa
  %.0272.lcssa.ph.in = phi i64 [ %indvars.iv460, %bb.aa ], [ %indvars.iv, %.lr.ph ]
  %.neg = mul i64 %.0272.lcssa.ph.in, -4294967296
  %i.fo = ashr exact i64 %.neg, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.z
  %.0272.lcssa.neg = phi i64 [ 0, %bb.z ], [ %i.fo, %._crit_edge.loopexit ]
  %i.fp = getelementptr inbounds [120 x i8], ptr %i.w, i64 %.0272.lcssa.neg
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4316 ; 2 uses
  %i.fs = load i32, ptr %i.g, align 8, !tbaa !185 ; 3 uses
  %i.ft = load i32, ptr %i.n, align 4, !tbaa !943
  %.not.i.i326 = icmp sgt i32 %i.ft, %i.fs
  br i1 %.not.i.i326, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.fu = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 9, i32 noundef 0, i32 noundef %i.fr, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit328

bb.ac:                                            ; preds = %._crit_edge
  %i.fv = add nsw i32 %i.fs, 1
  store i32 %i.fv, ptr %i.g, align 8, !tbaa !185
  %i.fw = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.fx = sext i32 %i.fs to i64
  %i.fy = getelementptr inbounds [24 x i8], ptr %i.fw, i64 %i.fx ; 7 uses
  store i8 9, ptr %i.fy, align 8, !tbaa !563
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  store i16 0, ptr %i.fz, align 2, !tbaa !587
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 0, ptr %i.ga, align 4, !tbaa !584
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 %i.fr, ptr %i.gb, align 8, !tbaa !585
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gc, align 4, !tbaa !586
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr null, ptr %i.gd, align 8, !tbaa !227
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store i8 0, ptr %i.ge, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit328

sqlite3VdbeAddOp2.exit328:                        ; preds = %bb.ac, %bb.ab, %bb.y, %sqlite3VdbeAddOp2.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !4331
  %i.gh = load ptr, ptr %i.l, align 8, !tbaa !975 ; 4 uses
  %i.gi = xor i32 %i.gg, -1                       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 76
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3876
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 72
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !3295
  %i.gn = add nsw i32 %i.gm, %i.gk
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %sqlite3VdbeAddOp2.exit328
  tail call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.gh, ptr noundef nonnull readonly %i.c, i32 noundef %i.gi)
  br label %sqlite3VdbeResolveLabel.exit329

bb.ae:                                            ; preds = %sqlite3VdbeAddOp2.exit328
  %i.gp = load i32, ptr %i.g, align 8, !tbaa !185
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 80
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !1007
  %i.gs = sext i32 %i.gi to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gs
  store i32 %i.gp, ptr %i.gt, align 4, !tbaa !5
  br label %sqlite3VdbeResolveLabel.exit329

sqlite3VdbeResolveLabel.exit329:                  ; preds = %bb.ad, %bb.ae
  %i.gu = load i8, ptr %i.bk, align 1, !tbaa !4363 ; 3 uses
  %.not302 = icmp eq i8 %i.gu, -68
  br i1 %.not302, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %sqlite3VdbeResolveLabel.exit329
  %i.gv = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4367 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !4365 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.w, i64 74
  %i.ha = load i8, ptr %i.gz, align 2, !tbaa !4368
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = load i32, ptr %i.g, align 8, !tbaa !185 ; 3 uses
  %i.hd = load i32, ptr %i.n, align 4, !tbaa !943
  %.not.i330 = icmp sgt i32 %i.hd, %i.hc
  br i1 %.not.i330, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.he = zext i8 %i.gu to i32
  %i.hf = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef %i.he, i32 noundef %i.gw, i32 noundef %i.gy, i32 noundef %i.hb), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit332

bb.ah:                                            ; preds = %bb.af
  %i.hg = add nsw i32 %i.hc, 1
  store i32 %i.hg, ptr %i.g, align 8, !tbaa !185
  %i.hh = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.hi = sext i32 %i.hc to i64
  %i.hj = getelementptr inbounds [24 x i8], ptr %i.hh, i64 %i.hi ; 7 uses
  store i8 %i.gu, ptr %i.hj, align 8, !tbaa !563
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  store i16 0, ptr %i.hk, align 2, !tbaa !587
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %i.gw, ptr %i.hl, align 4, !tbaa !584
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i32 %i.gy, ptr %i.hm, align 8, !tbaa !585
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 12
  store i32 %i.hb, ptr %i.hn, align 4, !tbaa !586
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr null, ptr %i.ho, align 8, !tbaa !227
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 1
  store i8 0, ptr %i.hp, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp3.exit332

sqlite3VdbeAddOp3.exit332:                        ; preds = %bb.ag, %bb.ah
  %i.hq = load i32, ptr %i.g, align 8, !tbaa !185 ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %bb.ai, label %sqlite3VdbeChangeP5.exit

bb.ai:                                            ; preds = %sqlite3VdbeAddOp3.exit332
  %i.hs = getelementptr inbounds nuw i8, ptr %i.w, i64 75
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !4369
  %i.hu = zext i8 %i.ht to i16
  %i.hv = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.hw = zext nneg i32 %i.hq to i64
  %i.hx = getelementptr [24 x i8], ptr %i.hv, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -22
  store i16 %i.hu, ptr %i.hy, align 2, !tbaa !587
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %sqlite3VdbeAddOp3.exit332, %bb.ai
  %i.hz = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !4370
  %.not303 = icmp eq i32 %i.ia, 0
  br i1 %.not303, label %sqlite3VdbeAddOp2.exit336, label %bb.aj

bb.aj:                                            ; preds = %sqlite3VdbeChangeP5.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4371
  %i.id = load ptr, ptr %i.l, align 8, !tbaa !975 ; 4 uses
  %i.ie = xor i32 %i.ic, -1                       ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 76
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3876
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 72
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !3295
  %i.ij = add nsw i32 %i.ii, %i.ig
  %i.ik = icmp slt i32 %i.ij, 0
  br i1 %i.ik, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.id, ptr noundef nonnull readonly %i.c, i32 noundef %i.ie)
  br label %sqlite3VdbeResolveLabel.exit333

bb.al:                                            ; preds = %bb.aj
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 80
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !1007
  %i.in = sext i32 %i.ie to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.in
  store i32 %i.hq, ptr %i.io, align 4, !tbaa !5
  br label %sqlite3VdbeResolveLabel.exit333

sqlite3VdbeResolveLabel.exit333:                  ; preds = %bb.ak, %bb.al
  %i.ip = load i32, ptr %i.hz, align 8, !tbaa !4370 ; 2 uses
  %i.iq = load i32, ptr %i.gx, align 8, !tbaa !4365
  %i.ir = add nsw i32 %i.iq, -1                   ; 2 uses
  %i.is = load i32, ptr %i.g, align 8, !tbaa !185 ; 3 uses
  %i.it = load i32, ptr %i.n, align 4, !tbaa !943
  %.not.i.i334 = icmp sgt i32 %i.it, %i.is
  br i1 %.not.i.i334, label %bb.an, label %bb.am

bb.am:                                            ; preds = %sqlite3VdbeResolveLabel.exit333
  %i.iu = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 62, i32 noundef %i.ip, i32 noundef %i.ir, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit336

bb.an:                                            ; preds = %sqlite3VdbeResolveLabel.exit333
  %i.iv = add nsw i32 %i.is, 1
  store i32 %i.iv, ptr %i.g, align 8, !tbaa !185
  %i.iw = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.ix = sext i32 %i.is to i64
  %i.iy = getelementptr inbounds [24 x i8], ptr %i.iw, i64 %i.ix ; 7 uses
  store i8 62, ptr %i.iy, align 8, !tbaa !563
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  store i16 0, ptr %i.iz, align 2, !tbaa !587
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 %i.ip, ptr %i.ja, align 4, !tbaa !584
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 %i.ir, ptr %i.jb, align 8, !tbaa !585
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
end_hunk_0
