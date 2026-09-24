Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 105
begin_hunk_0_@sqlite3GetCollSeq:bb.a
  store i8 0, ptr %i.aw, align 1, !tbaa !139
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !490
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !492
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !279
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !283
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 145
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !285
  %i.bg = zext i8 %i.bf to i32
  tail call void %i.ax(ptr noundef %i.az, ptr noundef nonnull %0, i32 noundef %i.bg, ptr noundef nonnull %i.au) #43, !inline_history !1729
  %i.bh = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !130
  %sext.i.i = shl i64 %i.bi, 32
  %i.bj = ashr exact i64 %sext.i.i, 32
  %i.bk = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.bl = sub nsw i64 %i.bk, %i.bj
  store i64 %i.bl, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.bh) #43
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.bm, align 2, !tbaa !202
  br label %bb.s

bb.k:                                             ; preds = %.thread.i, %.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !491
  %.not31.i = icmp eq ptr %i.bo, null
  br i1 %.not31.i, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !202
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.m, label %sqlite3ValueSetStr.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bs = tail call ptr @sqlite3_malloc(i32 noundef 48) ; 11 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.bp, align 2, !tbaa !202
  br label %sqlite3ValueSetStr.exit.i

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bs, i8 0, i64 48, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 36 ; 2 uses
  store i16 1, ptr %i.bu, align 4, !tbaa !197
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 38 ; 2 uses
  store i8 5, ptr %i.bv, align 2, !tbaa !199
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %0, ptr %i.bw, align 8, !tbaa !203
  %i.bx = icmp slt i32 %i.aq, 0
  br i1 %i.bx, label %bb.p, label %sqlite3VdbeMemSetStr.exit.i

bb.p:                                             ; preds = %bb.o
  %strlen.i.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %.249.i.i = trunc i64 %strlen.i.i to i32
  br label %sqlite3VdbeMemSetStr.exit.i

sqlite3VdbeMemSetStr.exit.i:                      ; preds = %bb.p, %bb.o
  %.3.i.i = phi i32 [ %.249.i.i, %bb.p ], [ %i.aq, %bb.o ]
  %.046.i.i = phi i16 [ 162, %bb.p ], [ 130, %bb.o ]
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %i.bs)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %2, ptr %i.by, align 8, !tbaa !194
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store ptr null, ptr %i.bz, align 8, !tbaa !195
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store i32 %.3.i.i, ptr %i.ca, align 8, !tbaa !196
  store i16 %.046.i.i, ptr %i.bu, align 4, !tbaa !197
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 39
  store i8 1, ptr %i.cb, align 1, !tbaa !198
  store i8 3, ptr %i.bv, align 2, !tbaa !199
  br label %sqlite3ValueSetStr.exit.i

sqlite3ValueSetStr.exit.i:                        ; preds = %sqlite3VdbeMemSetStr.exit.i, %bb.n, %bb.l
  %.not.i43.i = phi i1 [ false, %sqlite3VdbeMemSetStr.exit.i ], [ true, %bb.l ], [ true, %bb.n ]
  %.0.i7.i9.i42.i = phi ptr [ %i.bs, %sqlite3VdbeMemSetStr.exit.i ], [ null, %bb.l ], [ null, %bb.n ] ; 3 uses
  %i.cc = tail call fastcc ptr @sqlite3ValueText(ptr noundef %.0.i7.i9.i42.i, i8 noundef zeroext 2) ; 2 uses
  %.not32.i = icmp eq ptr %i.cc, null
  br i1 %.not32.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %sqlite3ValueSetStr.exit.i
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !491
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !492
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !279
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !283
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 145
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !285
  %i.cm = zext i8 %i.cl to i32
  tail call void %i.cd(ptr noundef %i.cf, ptr noundef nonnull %0, i32 noundef %i.cm, ptr noundef nonnull %i.cc) #43, !inline_history !1729
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %sqlite3ValueSetStr.exit.i
  br i1 %.not.i43.i, label %bb.s, label %sqlite3_free.exit.i.i

sqlite3_free.exit.i.i:                            ; preds = %bb.r
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %.0.i7.i9.i42.i)
  %i.cn = getelementptr inbounds i8, ptr %.0.i7.i9.i42.i, i64 -8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !130
  %sext.i.i.i = shl i64 %i.co, 32
  %i.cp = ashr exact i64 %sext.i.i.i, 32
  %i.cq = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.cr = sub nsw i64 %i.cq, %i.cp
  store i64 %i.cr, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.cn) #43
  br label %bb.s

bb.s:                                             ; preds = %sqlite3_free.exit.i.i, %bb.r, %bb.k, %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !279
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !283
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 145
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !285
  %i.cy = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !447
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.thread51, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = load i8, ptr %i.da, align 8, !tbaa !466
  %i.df = icmp eq i8 %i.de, 3
  %strHash.binHash.i.i.i.i.i27 = select i1 %i.df, ptr @strHash, ptr @binHash
  %i.dg = tail call i32 %strHash.binHash.i.i.i.i.i27(ptr noundef nonnull %2, i32 noundef %i.cz) #43, !callees !467, !inline_history !29
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !447 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i28, label %.thread51, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !448
  %i.dk = srem i32 %i.dg, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [16 x i8], ptr %i.dh, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !469
  %i.dp = load i8, ptr %i.da, align 8, !tbaa !466
  %i.dq = icmp eq i8 %i.dp, 3
  %strCompare.binCompare.i.i.i.i.i.i29 = select i1 %i.dq, ptr @strCompare, ptr @binCompare
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.017.in.i.i.i.i.i30 = phi ptr [ %i.dn, %bb.u ], [ %.017.i.i.i.i.i32, %bb.w ]
  %.016.i.i.i.i.i31 = phi i32 [ %i.do, %bb.u ], [ %i.dt, %bb.w ] ; 2 uses
  %.017.i.i.i.i.i32 = load ptr, ptr %.017.in.i.i.i.i.i30, align 8, !tbaa !423 ; 5 uses
  %i.dr = icmp eq i32 %.016.i.i.i.i.i31, 0
  %i.ds = icmp eq ptr %.017.i.i.i.i.i32, null
  %.not22.i.i.i.i.i33 = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %.not22.i.i.i.i.i33, label %.thread51, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = add nsw i32 %.016.i.i.i.i.i31, -1
  %i.du = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i32, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !451
  %i.dw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i32, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !470
  %i.dy = tail call i32 %strCompare.binCompare.i.i.i.i.i.i29(ptr noundef %i.dv, i32 noundef %i.dx, ptr noundef nonnull %2, i32 noundef %i.cz) #43, !callees !471, !inline_history !30
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %sqlite3FindCollSeq.exit42, label %bb.v, !llvm.loop !28

sqlite3FindCollSeq.exit42:                        ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i32, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !425 ; 2 uses
  %.not10.i37 = icmp eq ptr %i.eb, null
  %i.ec = zext i8 %i.cx to i64
  %i.ed = getelementptr [40 x i8], ptr %i.eb, i64 %i.ec ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -40    ; 5 uses
  %.not22 = icmp eq ptr %i.ee, null
  %or.cond64 = select i1 %.not10.i37, i1 true, i1 %.not22
  br i1 %or.cond64, label %.thread51, label %.thread54

.thread54:                                        ; preds = %sqlite3FindCollSeq.exit42
  %.phi.trans.insert = getelementptr i8, ptr %i.ed, i64 -16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !487
  %i.ef = icmp eq ptr %.pre, null
  br i1 %i.ef, label %bb.x, label %.thread51

bb.x:                                             ; preds = %.thread54
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !251 ; 14 uses
  %i.eh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #42
  %i.ei = trunc i64 %i.eh to i32                  ; 8 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 10 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  %i.en = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.eo = icmp eq i8 %i.en, 3
  %strHash.binHash.i.i.i.i.i.us.i = select i1 %i.eo, ptr @strHash, ptr @binHash
  %i.ep = tail call i32 %strHash.binHash.i.i.i.i.i.us.i(ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !467, !inline_history !1730
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !447, !nonnull !489, !noundef !489
  %i.er = load i32, ptr %i.em, align 8, !tbaa !448
  %i.es = srem i32 %i.ep, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [16 x i8], ptr %i.eq, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.ex = icmp eq i8 %i.ew, 3
  %strCompare.binCompare.i.i.i.i.i.i.us.i = select i1 %i.ex, ptr @strCompare, ptr @binCompare ; 2 uses
  br i1 %i.ej, label %.split.us.preheader.i, label %.split.preheader.i

.split.us.1.i:                                    ; preds = %sqlite3HashFindElem.exit.i.i.i.us.i
  %i.ey = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #42
  %i.ez = trunc i64 %i.ey to i32                  ; 2 uses
  %i.fa = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.fb = icmp eq i8 %i.fa, 3
  %strHash.binHash.i.i.i.i.i.us.1.i = select i1 %i.fb, ptr @strHash, ptr @binHash
  %i.fc = tail call i32 %strHash.binHash.i.i.i.i.i.us.1.i(ptr noundef nonnull %i.eg, i32 noundef %i.ez) #43, !callees !467, !inline_history !1731
  %i.fd = load ptr, ptr %i.el, align 8, !tbaa !447, !nonnull !489, !noundef !489
  %i.fe = load i32, ptr %i.em, align 8, !tbaa !448
  %i.ff = srem i32 %i.fc, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [16 x i8], ptr %i.fd, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.fk = icmp eq i8 %i.fj, 3
  %strCompare.binCompare.i.i.i.i.i.i.us.1.i = select i1 %i.fk, ptr @strCompare, ptr @binCompare
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.split.us.1.i
  %.017.in.i.i.i.i.i.us.1.i = phi ptr [ %i.fi, %.split.us.1.i ], [ %.017.i.i.i.i.i.us.1.i, %bb.y ]
  %.017.i.i.i.i.i.us.1.i = load ptr, ptr %.017.in.i.i.i.i.i.us.1.i, align 8, !tbaa !423, !nonnull !489, !noundef !489 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.1.i, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !451
  %i.fn = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.1.i, i64 32
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !470
  %i.fp = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.1.i(ptr noundef %i.fm, i32 noundef %i.fo, ptr noundef nonnull %i.eg, i32 noundef %i.ez) #43, !callees !471, !inline_history !1732
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %sqlite3HashFindElem.exit.i.i.i.us.1.i, label %bb.y, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.us.1.i:            ; preds = %bb.y
  %i.fr = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.1.i, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !425 ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 80
  %i.fu = getelementptr i8, ptr %i.fs, i64 64
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !487
  %.not.us.1.i = icmp eq ptr %i.fv, null
  br i1 %.not.us.1.i, label %.split.us.2.i, label %bb.ac

.split.us.2.i:                                    ; preds = %sqlite3HashFindElem.exit.i.i.i.us.1.i
  %i.fw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #42
  %i.fx = trunc i64 %i.fw to i32                  ; 2 uses
  %i.fy = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.fz = icmp eq i8 %i.fy, 3
  %strHash.binHash.i.i.i.i.i.us.2.i = select i1 %i.fz, ptr @strHash, ptr @binHash
  %i.ga = tail call i32 %strHash.binHash.i.i.i.i.i.us.2.i(ptr noundef nonnull %i.eg, i32 noundef %i.fx) #43, !callees !467, !inline_history !1731
  %i.gb = load ptr, ptr %i.el, align 8, !tbaa !447, !nonnull !489, !noundef !489
  %i.gc = load i32, ptr %i.em, align 8, !tbaa !448
  %i.gd = srem i32 %i.ga, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [16 x i8], ptr %i.gb, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.gi = icmp eq i8 %i.gh, 3
  %strCompare.binCompare.i.i.i.i.i.i.us.2.i = select i1 %i.gi, ptr @strCompare, ptr @binCompare
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.split.us.2.i
  %.017.in.i.i.i.i.i.us.2.i = phi ptr [ %i.gg, %.split.us.2.i ], [ %.017.i.i.i.i.i.us.2.i, %bb.z ]
  %.017.i.i.i.i.i.us.2.i = load ptr, ptr %.017.in.i.i.i.i.i.us.2.i, align 8, !tbaa !423, !nonnull !489, !noundef !489 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.2.i, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !451
  %i.gl = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.2.i, i64 32
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !470
  %i.gn = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.2.i(ptr noundef %i.gk, i32 noundef %i.gm, ptr noundef nonnull %i.eg, i32 noundef %i.fx) #43, !callees !471, !inline_history !1732
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %sqlite3HashFindElem.exit.i.i.i.us.2.i, label %bb.z, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.us.2.i:            ; preds = %bb.z
  %i.gp = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.2.i, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !425 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 40
  %i.gs = getelementptr i8, ptr %i.gq, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !487
  %.not.us.2.i = icmp eq ptr %i.gt, null
  br i1 %.not.us.2.i, label %.thread51, label %bb.ac

.split.us.preheader.i:                            ; preds = %bb.x, %.split.us.preheader.i
  %.017.in.i.i.i.i.i.us.i = phi ptr [ %.017.i.i.i.i.i.us.i, %.split.us.preheader.i ], [ %i.ev, %bb.x ]
  %.017.i.i.i.i.i.us.i = load ptr, ptr %.017.in.i.i.i.i.i.us.i, align 8, !tbaa !423, !nonnull !489, !noundef !489 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !451
  %i.gw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 32
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !470
  %i.gy = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.i(ptr noundef %i.gv, i32 noundef %i.gx, ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !471, !inline_history !1732
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %sqlite3HashFindElem.exit.i.i.i.us.i, label %.split.us.preheader.i, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.us.i:              ; preds = %.split.us.preheader.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !425 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 120
  %i.hd = getelementptr i8, ptr %i.hb, i64 104
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !487
  %.not.us.i = icmp eq ptr %i.he, null
  br i1 %.not.us.i, label %.split.us.1.i, label %bb.ac

.split.1.i:                                       ; preds = %sqlite3HashFindElem.exit.i.i.i.i
  %i.hf = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.hg = icmp eq i8 %i.hf, 3
  %strHash.binHash.i.i.i.i.i.1.i = select i1 %i.hg, ptr @strHash, ptr @binHash
  %i.hh = tail call i32 %strHash.binHash.i.i.i.i.i.1.i(ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !467, !inline_history !1731
  %i.hi = load ptr, ptr %i.el, align 8, !tbaa !447, !nonnull !489, !noundef !489
  %i.hj = load i32, ptr %i.em, align 8, !tbaa !448
  %i.hk = srem i32 %i.hh, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [16 x i8], ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.hp = icmp eq i8 %i.ho, 3
  %strCompare.binCompare.i.i.i.i.i.i.1.i = select i1 %i.hp, ptr @strCompare, ptr @binCompare
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.split.1.i
  %.017.in.i.i.i.i.i.1.i = phi ptr [ %i.hn, %.split.1.i ], [ %.017.i.i.i.i.i.1.i, %bb.aa ]
  %.017.i.i.i.i.i.1.i = load ptr, ptr %.017.in.i.i.i.i.i.1.i, align 8, !tbaa !423, !nonnull !489, !noundef !489 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !451
  %i.hs = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !470
  %i.hu = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.1.i(ptr noundef %i.hr, i32 noundef %i.ht, ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !471, !inline_history !1732
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %sqlite3HashFindElem.exit.i.i.i.1.i, label %bb.aa, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.1.i:               ; preds = %bb.aa
  %i.hw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !425 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 80
  %i.hz = getelementptr i8, ptr %i.hx, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !487
  %.not.1.i = icmp eq ptr %i.ia, null
  br i1 %.not.1.i, label %.split.2.i, label %bb.ac

.split.2.i:                                       ; preds = %sqlite3HashFindElem.exit.i.i.i.1.i
  %i.ib = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.ic = icmp eq i8 %i.ib, 3
  %strHash.binHash.i.i.i.i.i.2.i = select i1 %i.ic, ptr @strHash, ptr @binHash
  %i.id = tail call i32 %strHash.binHash.i.i.i.i.i.2.i(ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !467, !inline_history !1731
  %i.ie = load ptr, ptr %i.el, align 8, !tbaa !447, !nonnull !489, !noundef !489
  %i.if = load i32, ptr %i.em, align 8, !tbaa !448
  %i.ig = srem i32 %i.id, %i.if
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [16 x i8], ptr %i.ie, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i8, ptr %i.ek, align 8, !tbaa !466
  %i.il = icmp eq i8 %i.ik, 3
  %strCompare.binCompare.i.i.i.i.i.i.2.i = select i1 %i.il, ptr @strCompare, ptr @binCompare
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.split.2.i
  %.017.in.i.i.i.i.i.2.i = phi ptr [ %i.ij, %.split.2.i ], [ %.017.i.i.i.i.i.2.i, %bb.ab ]
  %.017.i.i.i.i.i.2.i = load ptr, ptr %.017.in.i.i.i.i.i.2.i, align 8, !tbaa !423, !nonnull !489, !noundef !489 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !451
  %i.io = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !470
  %i.iq = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.2.i(ptr noundef %i.in, i32 noundef %i.ip, ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !471, !inline_history !1732
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %sqlite3HashFindElem.exit.i.i.i.2.i, label %bb.ab, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.2.i:               ; preds = %bb.ab
  %i.is = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !425 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 40
  %i.iv = getelementptr i8, ptr %i.it, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !487
  %.not.2.i = icmp eq ptr %i.iw, null
  br i1 %.not.2.i, label %.thread51, label %bb.ac

.split.preheader.i:                               ; preds = %bb.x, %.split.preheader.i
  %.017.in.i.i.i.i.i.i = phi ptr [ %.017.i.i.i.i.i.i, %.split.preheader.i ], [ %i.ev, %bb.x ]
  %.017.i.i.i.i.i.i = load ptr, ptr %.017.in.i.i.i.i.i.i, align 8, !tbaa !423, !nonnull !489, !noundef !489 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !451
  %i.iz = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 32
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !470
  %i.jb = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.i(ptr noundef %i.iy, i32 noundef %i.ja, ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !471, !inline_history !1732
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %sqlite3HashFindElem.exit.i.i.i.i, label %.split.preheader.i, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.i:                 ; preds = %.split.preheader.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !425 ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 120
  %i.jg = getelementptr i8, ptr %i.je, i64 104
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !487
  %.not.i43 = icmp eq ptr %i.jh, null
  br i1 %.not.i43, label %.split.1.i, label %bb.ac

bb.ac:                                            ; preds = %sqlite3HashFindElem.exit.i.i.i.i, %sqlite3HashFindElem.exit.i.i.i.2.i, %sqlite3HashFindElem.exit.i.i.i.1.i, %sqlite3HashFindElem.exit.i.i.i.us.i, %sqlite3HashFindElem.exit.i.i.i.us.2.i, %sqlite3HashFindElem.exit.i.i.i.us.1.i
end_hunk_0
