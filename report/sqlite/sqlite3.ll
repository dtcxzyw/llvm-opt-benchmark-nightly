Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@analyzeOneTable:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 504
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1222 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %sqlite3AuthCheck.exit.thread, label %bb.i

bb.i:                                             ; preds = %sqlite3SchemaToIndex.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 197
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !908
  %.not.i259 = icmp eq i8 %i.ay, 0
  br i1 %.not.i259, label %bb.j, label %sqlite3AuthCheck.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !1249
  %.not22.i = icmp eq i8 %i.ba, 0
  br i1 %.not22.i, label %bb.k, label %sqlite3AuthCheck.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1223
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2047
  %i.bf = tail call i32 %i.av(ptr noundef %i.bc, i32 noundef 28, ptr noundef %i.af, ptr noundef null, ptr noundef %i.as, ptr noundef %i.be) #57, !inline_history !2048 ; 3 uses
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %sqlite3AuthCheck.exit.thread387, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = and i32 %i.bf, -3
  %or.cond.not.i = icmp eq i32 %i.bh, 0
  br i1 %or.cond.not.i, label %sqlite3AuthCheck.exit, label %sqlite3AuthCheck.exit.thread387

sqlite3AuthCheck.exit.thread387:                  ; preds = %bb.k, %bb.l
  %.str.654.sink.i = phi ptr [ @.str.654, %bb.k ], [ @.str.714, %bb.l ]
  %.sink.i = phi i32 [ 23, %bb.k ], [ 1, %bb.l ]
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull %.str.654.sink.i), !inline_history !2048
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sink.i, ptr %i.bi, align 8, !tbaa !779
  br label %bb.eb

sqlite3AuthCheck.exit:                            ; preds = %bb.l
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %sqlite3AuthCheck.exit.sqlite3AuthCheck.exit.thread_crit_edge, label %bb.eb

sqlite3AuthCheck.exit.sqlite3AuthCheck.exit.thread_crit_edge: ; preds = %sqlite3AuthCheck.exit
  %.pre411 = load ptr, ptr %1, align 8, !tbaa !1172
  br label %sqlite3AuthCheck.exit.thread

sqlite3AuthCheck.exit.thread:                     ; preds = %sqlite3AuthCheck.exit.sqlite3AuthCheck.exit.thread_crit_edge, %bb.i, %bb.j, %sqlite3SchemaToIndex.exit
  %i.bj = phi ptr [ %.pre411, %sqlite3AuthCheck.exit.sqlite3AuthCheck.exit.thread_crit_edge ], [ %i.af, %bb.i ], [ %i.af, %bb.j ], [ %i.af, %sqlite3SchemaToIndex.exit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1171
  %i.bm = icmp eq i32 %.1.i, 1
  br i1 %i.bm, label %sqlite3TableLock.exit, label %bb.m

bb.m:                                             ; preds = %sqlite3AuthCheck.exit.thread
  %i.bn = load ptr, ptr %0, align 8, !tbaa !981
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !605
  %i.bq = getelementptr inbounds [32 x i8], ptr %i.bp, i64 %i.aq
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !610
  %i.bt = getelementptr i8, ptr %i.bs, i64 17
  %.val.i = load i8, ptr %i.bt, align 1, !tbaa !935
  %.not.i260 = icmp eq i8 %.val.i, 0
  br i1 %.not.i260, label %sqlite3TableLock.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @lockTable(ptr noundef nonnull %0, i32 noundef %.1.i, i32 noundef %i.bl, i8 noundef zeroext 0, ptr noundef %i.bj), !inline_history !2216
  br label %sqlite3TableLock.exit

sqlite3TableLock.exit:                            ; preds = %sqlite3AuthCheck.exit.thread, %bb.m, %bb.n
  %i.bu = add nsw i32 %5, 1                       ; 16 uses
  %i.bv = add nsw i32 %5, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1176
  %. = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 %i.bv)
  store i32 %., ptr %i.bw, align 8, !tbaa !1176
  tail call fastcc void @sqlite3OpenTable(ptr noundef nonnull %0, i32 noundef %5, i32 noundef %.1.i, ptr noundef nonnull %1, i32 noundef 114)
  %i.by = load ptr, ptr %1, align 8, !tbaa !1172
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 70 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !703 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 148 ; 29 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i.i = icmp sgt i32 %i.cc, %i.ca
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %sqlite3TableLock.exit
  %i.cd = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 118, i32 noundef 0, i32 noundef %i.g, i32 noundef 0), !inline_history !332
  br label %sqlite3VdbeAddOp3.exit.i.i

bb.p:                                             ; preds = %sqlite3TableLock.exit
  %i.ce = add nsw i32 %i.ca, 1
  store i32 %i.ce, ptr %i.bz, align 8, !tbaa !703
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !702
  %i.ch = sext i32 %i.ca to i64
  %i.ci = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %i.ch ; 6 uses
  store i8 118, ptr %i.ci, align 8, !tbaa !929
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i16 0, ptr %i.cj, align 2, !tbaa !930
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 0, ptr %i.ck, align 4, !tbaa !926
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.g, ptr %i.cl, align 8, !tbaa !927
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store i8 0, ptr %i.cn, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cm, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp3.exit.i.i

sqlite3VdbeAddOp3.exit.i.i:                       ; preds = %bb.p, %bb.o
  %.0.i.i.i = phi i32 [ %i.cd, %bb.o ], [ %i.ca, %bb.p ] ; 2 uses
  %i.co = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 103
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !918
  %.not.i9.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i9.i.i, label %bb.q, label %sqlite3VdbeLoadString.exit

bb.q:                                             ; preds = %sqlite3VdbeAddOp3.exit.i.i
  %i.cr = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cs = load i32, ptr %i.bz, align 8, !tbaa !703
  %i.ct = add nsw i32 %i.cs, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i10.i.i = phi i32 [ %i.ct, %bb.r ], [ %.0.i.i.i, %bb.q ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !702
  %i.cw = sext i32 %.0.i10.i.i to i64
  %i.cx = getelementptr inbounds [32 x i8], ptr %i.cv, i64 %i.cw
  tail call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %.0.i, ptr noundef %i.cx, ptr noundef %i.by, i32 noundef 0), !inline_history !333
  br label %sqlite3VdbeLoadString.exit

sqlite3VdbeLoadString.exit:                       ; preds = %sqlite3VdbeAddOp3.exit.i.i, %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.0396 = load ptr, ptr %i.cy, align 8, !tbaa !1157 ; 2 uses
  %.not246397 = icmp eq ptr %.0396, null
  br i1 %.not246397, label %._crit_edge403, label %.lr.ph402

.lr.ph402:                                        ; preds = %sqlite3VdbeLoadString.exit
  %.not247 = icmp eq ptr %2, null
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i, i64 136 ; 33 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 736 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph402, %.thread
  %.0399 = phi ptr [ %.0396, %.lr.ph402 ], [ %.0, %.thread ] ; 20 uses
  %.0236398 = phi i8 [ 1, %.lr.ph402 ], [ %.2, %.thread ] ; 2 uses
  %.not248 = icmp eq ptr %2, %.0399
  %or.cond255 = or i1 %.not247, %.not248
  br i1 %or.cond255, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %.0399, i64 72 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1757
  %i.dh = icmp eq ptr %i.dg, null
  %spec.select = select i1 %i.dh, i8 0, i8 %.0236398 ; 3 uses
  %i.di = load i32, ptr %i.cz, align 8, !tbaa !1084
  %i.dj = and i32 %i.di, 128
  %i.dk = icmp ne i32 %i.dj, 0
  %.phi.trans.insert413 = getelementptr inbounds nuw i8, ptr %.0399, i64 99
  %.pre414 = load i16, ptr %.phi.trans.insert413, align 1 ; 2 uses
  %i.dl = and i16 %.pre414, 3
  %i.dm = icmp eq i16 %i.dl, 2
  %or.cond460 = select i1 %i.dk, i1 %i.dm, i1 false
  br i1 %or.cond460, label %bb.v, label %._crit_edge412

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %.0399, i64 94
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !1160
  %i.dp = zext i16 %i.do to i32                   ; 2 uses
  %i.dq = load ptr, ptr %1, align 8, !tbaa !1172
  br label %bb.x

._crit_edge412:                                   ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %.0399, i64 96
  %i.ds = load i16, ptr %i.dr, align 8, !tbaa !1778
  %i.dt = zext i16 %i.ds to i32                   ; 3 uses
  %i.du = load ptr, ptr %.0399, align 8, !tbaa !1979 ; 2 uses
  %i.dv = and i16 %.pre414, 8
  %.not249 = icmp eq i16 %i.dv, 0
  br i1 %.not249, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge412
  %i.dw = getelementptr inbounds nuw i8, ptr %.0399, i64 94
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !1160
  %i.dy = zext i16 %i.dx to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge412, %bb.v
  %.0234 = phi i32 [ %i.dp, %bb.v ], [ %i.dt, %._crit_edge412 ], [ %i.dt, %bb.w ] ; 2 uses
  %.0231 = phi ptr [ %i.dq, %bb.v ], [ %i.du, %._crit_edge412 ], [ %i.du, %bb.w ] ; 2 uses
  %.0230.in = phi i32 [ %i.dp, %bb.v ], [ %i.dt, %._crit_edge412 ], [ %i.dy, %bb.w ] ; 2 uses
  %.0230 = add nsw i32 %.0230.in, -1              ; 7 uses
  %i.dz = load i32, ptr %i.bz, align 8, !tbaa !703 ; 4 uses
  %i.ea = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i.i261 = icmp sgt i32 %i.ea, %i.dz
  br i1 %.not.i.i.i261, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 118, i32 noundef 0, i32 noundef %i.h, i32 noundef 0), !inline_history !332
  br label %sqlite3VdbeAddOp3.exit.i.i262

bb.z:                                             ; preds = %bb.x
  %i.ec = add nsw i32 %i.dz, 1
  store i32 %i.ec, ptr %i.bz, align 8, !tbaa !703
  %i.ed = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.ee = sext i32 %i.dz to i64
  %i.ef = getelementptr inbounds [32 x i8], ptr %i.ed, i64 %i.ee ; 6 uses
  store i8 118, ptr %i.ef, align 8, !tbaa !929
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i16 0, ptr %i.eg, align 2, !tbaa !930
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 0, ptr %i.eh, align 4, !tbaa !926
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %i.h, ptr %i.ei, align 8, !tbaa !927
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  store i8 0, ptr %i.ek, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ej, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp3.exit.i.i262

sqlite3VdbeAddOp3.exit.i.i262:                    ; preds = %bb.z, %bb.y
  %.0.i.i.i263 = phi i32 [ %i.eb, %bb.y ], [ %i.dz, %bb.z ] ; 2 uses
  %i.el = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 103
  %i.en = load i8, ptr %i.em, align 1, !tbaa !918
  %.not.i9.i.i264 = icmp eq i8 %i.en, 0
  br i1 %.not.i9.i.i264, label %bb.aa, label %sqlite3VdbeLoadString.exit266

bb.aa:                                            ; preds = %sqlite3VdbeAddOp3.exit.i.i262
  %i.eo = icmp slt i32 %.0.i.i.i263, 0
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load i32, ptr %i.bz, align 8, !tbaa !703
  %i.eq = add nsw i32 %i.ep, -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0.i10.i.i265 = phi i32 [ %i.eq, %bb.ab ], [ %.0.i.i.i263, %bb.aa ]
  %i.er = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.es = sext i32 %.0.i10.i.i265 to i64
  %i.et = getelementptr inbounds [32 x i8], ptr %i.er, i64 %i.es
  tail call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %.0.i, ptr noundef %i.et, ptr noundef %.0231, i32 noundef 0), !inline_history !333
  br label %sqlite3VdbeLoadString.exit266

sqlite3VdbeLoadString.exit266:                    ; preds = %sqlite3VdbeAddOp3.exit.i.i262, %bb.ac
  %i.eu = load ptr, ptr %1, align 8, !tbaa !1172
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.1184, ptr noundef %i.eu, ptr noundef %.0231)
  %i.ev = add nsw i32 %.0230, %i.j                ; 2 uses
  %i.ew = load i32, ptr %i.k, align 4, !tbaa !1175
  %i.ex = icmp slt i32 %i.ew, %i.ev
  br i1 %i.ex, label %bb.ad, label %sqlite3TouchRegister.exit267

bb.ad:                                            ; preds = %sqlite3VdbeLoadString.exit266
  store i32 %i.ev, ptr %i.k, align 4, !tbaa !1175
  br label %sqlite3TouchRegister.exit267

sqlite3TouchRegister.exit267:                     ; preds = %sqlite3VdbeLoadString.exit266, %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %.0399, i64 88
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !1802 ; 2 uses
  %i.fa = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.fb = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i268 = icmp sgt i32 %i.fb, %i.fa
  br i1 %.not.i268, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %sqlite3TouchRegister.exit267
  %i.fc = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 114, i32 noundef %i.bu, i32 noundef %i.ez, i32 noundef %.1.i), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.af:                                            ; preds = %sqlite3TouchRegister.exit267
  %i.fd = add nsw i32 %i.fa, 1
  store i32 %i.fd, ptr %i.bz, align 8, !tbaa !703
  %i.fe = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.ff = sext i32 %i.fa to i64
  %i.fg = getelementptr inbounds [32 x i8], ptr %i.fe, i64 %i.ff ; 7 uses
  store i8 114, ptr %i.fg, align 8, !tbaa !929
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  store i16 0, ptr %i.fh, align 2, !tbaa !930
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.bu, ptr %i.fi, align 4, !tbaa !926
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.ez, ptr %i.fj, align 8, !tbaa !927
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 %.1.i, ptr %i.fk, align 4, !tbaa !928
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store i8 0, ptr %i.fm, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.ae, %bb.af
  %i.fn = load ptr, ptr %i.n, align 8, !tbaa !1196 ; 3 uses
  %i.fo = tail call fastcc ptr @sqlite3KeyInfoOfIndex(ptr noundef nonnull %0, ptr noundef nonnull %.0399), !inline_history !2217 ; 3 uses
  %.not.i270 = icmp eq ptr %i.fo, null
  br i1 %.not.i270, label %sqlite3VdbeSetP4KeyInfo.exit, label %bb.ag

bb.ag:                                            ; preds = %sqlite3VdbeAddOp3.exit
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !679 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 103
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !918
  %.not.i.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 768
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !639
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.ai, label %sqlite3VdbeSetP4KeyInfo.exit

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @sqlite3KeyInfoUnref(ptr noundef nonnull %i.fo), !inline_history !2217
  br label %sqlite3VdbeSetP4KeyInfo.exit

bb.aj:                                            ; preds = %bb.ag
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 136
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !702
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 144
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !703
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [32 x i8], ptr %i.fw, i64 %i.fz ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 -31
  store i8 -9, ptr %i.gb, align 1, !tbaa !1167
  %i.gc = getelementptr i8, ptr %i.ga, i64 -16
  store ptr %i.fo, ptr %i.gc, align 8, !tbaa !733
  br label %sqlite3VdbeSetP4KeyInfo.exit

sqlite3VdbeSetP4KeyInfo.exit:                     ; preds = %sqlite3VdbeAddOp3.exit, %bb.ah, %bb.ai, %bb.aj
  %i.gd = load ptr, ptr %.0399, align 8, !tbaa !1979
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.31, ptr noundef %i.gd)
  %i.ge = load i32, ptr %i.db, align 8, !tbaa !1747 ; 2 uses
  %i.gf = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.gg = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i271 = icmp sgt i32 %i.gg, %i.gf
  br i1 %.not.i.i271, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %sqlite3VdbeSetP4KeyInfo.exit
  %i.gh = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 73, i32 noundef %i.ge, i32 noundef %i.f, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.al:                                            ; preds = %sqlite3VdbeSetP4KeyInfo.exit
  %i.gi = add nsw i32 %i.gf, 1
  store i32 %i.gi, ptr %i.bz, align 8, !tbaa !703
  %i.gj = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.gk = sext i32 %i.gf to i64
  %i.gl = getelementptr inbounds [32 x i8], ptr %i.gj, i64 %i.gk ; 6 uses
  store i8 73, ptr %i.gl, align 8, !tbaa !929
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  store i16 0, ptr %i.gm, align 2, !tbaa !930
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %i.ge, ptr %i.gn, align 4, !tbaa !926
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 %i.f, ptr %i.go, align 8, !tbaa !927
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store i8 0, ptr %i.gq, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gp, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.ak, %bb.al
  %i.gr = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.gs = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i272 = icmp sgt i32 %i.gs, %i.gr
  br i1 %.not.i.i272, label %bb.an, label %bb.am

bb.am:                                            ; preds = %sqlite3VdbeAddOp2.exit
  %i.gt = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 73, i32 noundef %.0234, i32 noundef %i.c, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit274

bb.an:                                            ; preds = %sqlite3VdbeAddOp2.exit
  %i.gu = add nsw i32 %i.gr, 1
  store i32 %i.gu, ptr %i.bz, align 8, !tbaa !703
  %i.gv = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.gw = sext i32 %i.gr to i64
  %i.gx = getelementptr inbounds [32 x i8], ptr %i.gv, i64 %i.gw ; 6 uses
  store i8 73, ptr %i.gx, align 8, !tbaa !929
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store i16 0, ptr %i.gy, align 2, !tbaa !930
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 %.0234, ptr %i.gz, align 4, !tbaa !926
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i32 %i.c, ptr %i.ha, align 8, !tbaa !927
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store i8 0, ptr %i.hc, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hb, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit274

sqlite3VdbeAddOp2.exit274:                        ; preds = %bb.am, %bb.an
  %i.hd = getelementptr inbounds nuw i8, ptr %.0399, i64 94 ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !1160
  %i.hf = zext i16 %i.he to i32                   ; 2 uses
  %i.hg = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.hh = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i275 = icmp sgt i32 %i.hh, %i.hg
  br i1 %.not.i.i275, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %sqlite3VdbeAddOp2.exit274
  %i.hi = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 73, i32 noundef %i.hf, i32 noundef %i.d, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit277

bb.ap:                                            ; preds = %sqlite3VdbeAddOp2.exit274
  %i.hj = add nsw i32 %i.hg, 1
  store i32 %i.hj, ptr %i.bz, align 8, !tbaa !703
  %i.hk = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.hl = sext i32 %i.hg to i64
  %i.hm = getelementptr inbounds [32 x i8], ptr %i.hk, i64 %i.hl ; 6 uses
  store i8 73, ptr %i.hm, align 8, !tbaa !929
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  store i16 0, ptr %i.hn, align 2, !tbaa !930
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store i32 %i.hf, ptr %i.ho, align 4, !tbaa !926
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i32 %i.d, ptr %i.hp, align 8, !tbaa !927
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  store i8 0, ptr %i.hr, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.hq, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit277

sqlite3VdbeAddOp2.exit277:                        ; preds = %bb.ao, %bb.ap
  %i.hs = load i32, ptr %i.dc, align 8, !tbaa !1374
  %i.ht = lshr i32 %i.hs, 11
  %.lobit = and i32 %i.ht, 1                      ; 2 uses
  %i.hu = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.hv = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i278 = icmp sgt i32 %i.hv, %i.hu
  br i1 %.not.i278, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %sqlite3VdbeAddOp2.exit277
  %i.hw = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 100, i32 noundef %i.bu, i32 noundef %i.e, i32 noundef %.lobit), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit280

bb.ar:                                            ; preds = %sqlite3VdbeAddOp2.exit277
  %i.hx = add nsw i32 %i.hu, 1
  store i32 %i.hx, ptr %i.bz, align 8, !tbaa !703
  %i.hy = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.hz = sext i32 %i.hu to i64
  %i.ia = getelementptr inbounds [32 x i8], ptr %i.hy, i64 %i.hz ; 7 uses
  store i8 100, ptr %i.ia, align 8, !tbaa !929
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  store i16 0, ptr %i.ib, align 2, !tbaa !930
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store i32 %i.bu, ptr %i.ic, align 4, !tbaa !926
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i32 %i.e, ptr %i.id, align 8, !tbaa !927
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  store i32 %.lobit, ptr %i.ie, align 4, !tbaa !928
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  store i8 0, ptr %i.ig, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit280

sqlite3VdbeAddOp3.exit280:                        ; preds = %bb.aq, %bb.ar
  tail call fastcc void @sqlite3VdbeAddFunctionCall(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.c, i32 noundef %i.b, i32 noundef 4, ptr noundef nonnull @statInitFuncdef, i32 noundef 0)
  %i.ih = load i32, ptr %i.bz, align 8, !tbaa !703 ; 4 uses
  %i.ii = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i281 = icmp sgt i32 %i.ii, %i.ih
  br i1 %.not.i.i281, label %bb.at, label %bb.as

bb.as:                                            ; preds = %sqlite3VdbeAddOp3.exit280
  %i.ij = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 36, i32 noundef %i.bu, i32 noundef 0, i32 noundef 0), !inline_history !2027
  br label %sqlite3VdbeAddOp1.exit

bb.at:                                            ; preds = %sqlite3VdbeAddOp3.exit280
  %i.ik = add nsw i32 %i.ih, 1
  store i32 %i.ik, ptr %i.bz, align 8, !tbaa !703
  %i.il = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.im = sext i32 %i.ih to i64
  %i.in = getelementptr inbounds [32 x i8], ptr %i.il, i64 %i.im ; 5 uses
  store i8 36, ptr %i.in, align 8, !tbaa !929
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  store i16 0, ptr %i.io, align 2, !tbaa !930
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 %i.bu, ptr %i.ip, align 4, !tbaa !926
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  store i8 0, ptr %i.ir, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.as, %bb.at
  %.0.i.i282 = phi i32 [ %i.ij, %bb.as ], [ %i.ih, %bb.at ] ; 2 uses
  %i.is = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.it = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i283 = icmp sgt i32 %i.it, %i.is
  br i1 %.not.i.i283, label %bb.av, label %bb.au

bb.au:                                            ; preds = %sqlite3VdbeAddOp1.exit
  %i.iu = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 73, i32 noundef 0, i32 noundef %i.c, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit285

bb.av:                                            ; preds = %sqlite3VdbeAddOp1.exit
  %i.iv = add nsw i32 %i.is, 1
  store i32 %i.iv, ptr %i.bz, align 8, !tbaa !703
  %i.iw = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.ix = sext i32 %i.is to i64
  %i.iy = getelementptr inbounds [32 x i8], ptr %i.iw, i64 %i.ix ; 6 uses
  store i8 73, ptr %i.iy, align 8, !tbaa !929
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  store i16 0, ptr %i.iz, align 2, !tbaa !930
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 0, ptr %i.ja, align 4, !tbaa !926
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 %i.c, ptr %i.jb, align 8, !tbaa !927
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  store i8 0, ptr %i.jd, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jc, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit285

sqlite3VdbeAddOp2.exit285:                        ; preds = %bb.au, %bb.av
  %.val256 = load i32, ptr %i.bz, align 8, !tbaa !703
  %i.je = icmp samesign ugt i32 %.0230.in, 1
  br i1 %i.je, label %bb.aw, label %bb.cf

bb.aw:                                            ; preds = %sqlite3VdbeAddOp2.exit285
  %i.jf = load i32, ptr %i.dd, align 4, !tbaa !1881 ; 2 uses
  %i.jg = add nsw i32 %i.jf, -1                   ; 5 uses
  store i32 %i.jg, ptr %i.dd, align 4, !tbaa !1881
  %i.jh = zext nneg i32 %.0230 to i64
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %i.jj = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %i.ji) ; 4 uses
  %.not251 = icmp eq ptr %i.jj, null
  br i1 %.not251, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jk = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.jl = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i286 = icmp sgt i32 %i.jl, %i.jk
  br i1 %.not.i.i286, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jm = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 9, i32 noundef 0, i32 noundef 0, i32 noundef 0), !inline_history !2025 ; 0 uses
  br label %sqlite3VdbeAddOp0.exit

bb.az:                                            ; preds = %bb.ax
  %i.jn = add nsw i32 %i.jk, 1
  store i32 %i.jn, ptr %i.bz, align 8, !tbaa !703
  %i.jo = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.jp = sext i32 %i.jk to i64
  %i.jq = getelementptr inbounds [32 x i8], ptr %i.jo, i64 %i.jp ; 2 uses
  store i8 9, ptr %i.jq, align 8, !tbaa !929
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.jr, i8 0, i64 31, i1 false)
  br label %sqlite3VdbeAddOp0.exit

sqlite3VdbeAddOp0.exit:                           ; preds = %bb.ay, %bb.az
  %.val = load i32, ptr %i.bz, align 8, !tbaa !703 ; 5 uses
  %i.js = icmp eq i32 %.0230, 1
  br i1 %i.js, label %bb.ba, label %.lr.ph

bb.ba:                                            ; preds = %sqlite3VdbeAddOp0.exit
  %i.jt = load i16, ptr %i.hd, align 2, !tbaa !1160
  %i.ju = icmp eq i16 %i.jt, 1
  br i1 %i.ju, label %bb.bb, label %.lr.ph

bb.bb:                                            ; preds = %bb.ba
  %i.jv = getelementptr inbounds nuw i8, ptr %.0399, i64 98
  %i.jw = load i8, ptr %i.jv, align 2, !tbaa !1815
  %.not250 = icmp eq i8 %i.jw, 0
  br i1 %.not250, label %.lr.ph, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jx = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i288 = icmp sgt i32 %i.jx, %.val
  br i1 %.not.i.i288, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jy = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 52, i32 noundef %i.j, i32 noundef %i.jg, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %.lr.ph

bb.be:                                            ; preds = %bb.bc
  %i.jz = add nsw i32 %.val, 1
  store i32 %i.jz, ptr %i.bz, align 8, !tbaa !703
  %i.ka = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.kb = sext i32 %.val to i64
  %i.kc = getelementptr inbounds [32 x i8], ptr %i.ka, i64 %i.kb ; 6 uses
  store i8 52, ptr %i.kc, align 8, !tbaa !929
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  store i16 0, ptr %i.kd, align 2, !tbaa !930
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  store i32 %i.j, ptr %i.ke, align 4, !tbaa !926
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i32 %i.jg, ptr %i.kf, align 8, !tbaa !927
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 1
  store i8 0, ptr %i.kh, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.kg, i8 0, i64 20, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3VdbeAddOp0.exit, %bb.ba, %bb.bb, %bb.bd, %bb.be
  %i.ki = getelementptr inbounds nuw i8, ptr %.0399, i64 64
  %i.kj = getelementptr inbounds nuw i8, ptr %.0399, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %.0399, i64 24
  %wide.trip.count = zext nneg i32 %.0230 to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %sqlite3VdbeChangeP5.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ] ; 10 uses
  %i.kl = load ptr, ptr %i.ki, align 8, !tbaa !1760
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %indvars.iv
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !741 ; 2 uses
  %i.ko = load ptr, ptr %0, align 8, !tbaa !981   ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 100
  %i.kq = load i8, ptr %i.kp, align 4, !tbaa !1127 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 197
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !908 ; 2 uses
  %i.kt = zext i8 %i.ks to i32
  %i.ku = tail call fastcc ptr @sqlite3FindCollSeq(ptr noundef %i.ko, i8 noundef zeroext %i.kq, ptr noundef %i.kn, i32 noundef %i.kt), !inline_history !2092 ; 5 uses
  %.not.i291 = icmp eq i8 %i.ks, 0
  br i1 %.not.i291, label %bb.bg, label %sqlite3LocateCollSeq.exit

bb.bg:                                            ; preds = %bb.bf
  %.not16.i = icmp eq ptr %i.ku, null
  br i1 %.not16.i, label %.sink.split.i293, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1359
  %.not17.i = icmp eq ptr %i.kw, null
  br i1 %.not17.i, label %.sink.split.i293, label %sqlite3LocateCollSeq.exit

.sink.split.i293:                                 ; preds = %bb.bh, %bb.bg
  %i.kx = tail call fastcc ptr @sqlite3GetCollSeq(ptr noundef nonnull %0, i8 noundef zeroext %i.kq, ptr noundef %i.ku, ptr noundef %i.kn), !inline_history !2092
  br label %sqlite3LocateCollSeq.exit

sqlite3LocateCollSeq.exit:                        ; preds = %bb.bf, %bb.bh, %.sink.split.i293
  %.0.i292 = phi ptr [ %i.ku, %bb.bf ], [ %i.ku, %bb.bh ], [ %i.kx, %.sink.split.i293 ]
  %i.ky = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.kz = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i295 = icmp sgt i32 %i.kz, %i.ky
  br i1 %.not.i.i295, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %sqlite3LocateCollSeq.exit
  %i.la = trunc nuw nsw i64 %indvars.iv to i32
  %i.lb = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 73, i32 noundef %i.la, i32 noundef %i.c, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit297

bb.bj:                                            ; preds = %sqlite3LocateCollSeq.exit
  %i.lc = add nsw i32 %i.ky, 1
  store i32 %i.lc, ptr %i.bz, align 8, !tbaa !703
  %i.ld = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.le = sext i32 %i.ky to i64
  %i.lf = getelementptr inbounds [32 x i8], ptr %i.ld, i64 %i.le ; 6 uses
  store i8 73, ptr %i.lf, align 8, !tbaa !929
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  store i16 0, ptr %i.lg, align 2, !tbaa !930
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.li = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.li, ptr %i.lh, align 4, !tbaa !926
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i32 %i.c, ptr %i.lj, align 8, !tbaa !927
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  store i8 0, ptr %i.ll, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.lk, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit297

sqlite3VdbeAddOp2.exit297:                        ; preds = %bb.bi, %bb.bj
  %i.lm = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.ln = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i298 = icmp sgt i32 %i.ln, %i.lm
  br i1 %.not.i298, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %sqlite3VdbeAddOp2.exit297
  %i.lo = trunc nuw nsw i64 %indvars.iv to i32
  %i.lp = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 96, i32 noundef %i.bu, i32 noundef %i.lo, i32 noundef %i.e), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit300

bb.bl:                                            ; preds = %sqlite3VdbeAddOp2.exit297
  %i.lq = add nsw i32 %i.lm, 1
  store i32 %i.lq, ptr %i.bz, align 8, !tbaa !703
  %i.lr = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.ls = sext i32 %i.lm to i64
  %i.lt = getelementptr inbounds [32 x i8], ptr %i.lr, i64 %i.ls ; 7 uses
  store i8 96, ptr %i.lt, align 8, !tbaa !929
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 2
  store i16 0, ptr %i.lu, align 2, !tbaa !930
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %i.bu, ptr %i.lv, align 4, !tbaa !926
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lx = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.lx, ptr %i.lw, align 8, !tbaa !927
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store i32 %i.e, ptr %i.ly, align 4, !tbaa !928
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  store i8 0, ptr %i.ma, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit300

sqlite3VdbeAddOp3.exit300:                        ; preds = %bb.bk, %bb.bl
  %i.mb = load ptr, ptr %i.kj, align 8, !tbaa !1161
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.mb, i64 %indvars.iv
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !783 ; 2 uses
  %i.me = load ptr, ptr %.0399, align 8, !tbaa !1979 ; 3 uses
  switch i16 %i.md, label %bb.bo [
    i16 -1, label %bb.bm
    i16 -2, label %bb.bn
  ]

bb.bm:                                            ; preds = %sqlite3VdbeAddOp3.exit300
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull readonly %.0.i, ptr noundef nonnull @.str.676, ptr noundef %i.me), !inline_history !5619
  br label %analyzeVdbeCommentIndexWithColumnName.exit

bb.bn:                                            ; preds = %sqlite3VdbeAddOp3.exit300
  %i.mf = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull readonly %.0.i, ptr noundef nonnull @.str.1188, ptr noundef %i.me, i32 noundef range(i32 -2147483648, 65534) %i.mf), !inline_history !5619
  br label %analyzeVdbeCommentIndexWithColumnName.exit

bb.bo:                                            ; preds = %sqlite3VdbeAddOp3.exit300
  %i.mg = load ptr, ptr %i.kk, align 8, !tbaa !1257
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !1150
  %i.mj = sext i16 %i.md to i64
  %i.mk = getelementptr inbounds [16 x i8], ptr %i.mi, i64 %i.mj
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !1154
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull readonly %.0.i, ptr noundef nonnull @.str.656, ptr noundef %i.me, ptr noundef %i.ml), !inline_history !5619
  br label %analyzeVdbeCommentIndexWithColumnName.exit

analyzeVdbeCommentIndexWithColumnName.exit:       ; preds = %bb.bm, %bb.bn, %bb.bo
  %i.mm = trunc i64 %indvars.iv to i32
  %i.mn = add i32 %i.j, %i.mm
  %i.mo = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %.0.i, i32 noundef 53, i32 noundef %i.e, i32 noundef 0, i32 noundef %i.mn, ptr noundef %.0.i292, i32 noundef -2)
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv
  store i32 %i.mo, ptr %i.mp, align 4, !tbaa !570
  %i.mq = load i32, ptr %i.bz, align 8, !tbaa !703 ; 5 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %bb.bp, label %sqlite3VdbeChangeP5.exit

bb.bp:                                            ; preds = %analyzeVdbeCommentIndexWithColumnName.exit
  %i.ms = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.mt = zext nneg i32 %i.mq to i64
  %i.mu = getelementptr [32 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 -30
  store i16 128, ptr %i.mv, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %analyzeVdbeCommentIndexWithColumnName.exit, %bb.bp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bf, !llvm.loop !5620

._crit_edge:                                      ; preds = %sqlite3VdbeChangeP5.exit
  %i.mw = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i301 = icmp sgt i32 %i.mw, %i.mq
  br i1 %.not.i.i301, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge
  %i.mx = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 73, i32 noundef %.0230, i32 noundef %i.c, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit303

bb.br:                                            ; preds = %._crit_edge
  %i.my = add nsw i32 %i.mq, 1
  store i32 %i.my, ptr %i.bz, align 8, !tbaa !703
  %i.mz = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.na = sext i32 %i.mq to i64
  %i.nb = getelementptr inbounds [32 x i8], ptr %i.mz, i64 %i.na ; 6 uses
  store i8 73, ptr %i.nb, align 8, !tbaa !929
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  store i16 0, ptr %i.nc, align 2, !tbaa !930
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  store i32 %.0230, ptr %i.nd, align 4, !tbaa !926
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store i32 %i.c, ptr %i.ne, align 8, !tbaa !927
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 1
  store i8 0, ptr %i.ng, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.nf, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit303

sqlite3VdbeAddOp2.exit303:                        ; preds = %bb.bq, %bb.br
  %i.nh = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.ni = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i304 = icmp sgt i32 %i.ni, %i.nh
  br i1 %.not.i.i304, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %sqlite3VdbeAddOp2.exit303
  %i.nj = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 9, i32 noundef 0, i32 noundef %i.jg, i32 noundef 0), !inline_history !288 ; 0 uses
  br label %sqlite3VdbeGoto.exit

bb.bt:                                            ; preds = %sqlite3VdbeAddOp2.exit303
  %i.nk = add nsw i32 %i.nh, 1
  store i32 %i.nk, ptr %i.bz, align 8, !tbaa !703
  %i.nl = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.nm = sext i32 %i.nh to i64
  %i.nn = getelementptr inbounds [32 x i8], ptr %i.nl, i64 %i.nm ; 6 uses
  store i8 9, ptr %i.nn, align 8, !tbaa !929
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 2
  store i16 0, ptr %i.no, align 2, !tbaa !930
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  store i32 0, ptr %i.np, align 4, !tbaa !926
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i32 %i.jg, ptr %i.nq, align 8, !tbaa !927
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  store i8 0, ptr %i.ns, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.nr, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeGoto.exit

sqlite3VdbeGoto.exit:                             ; preds = %bb.bs, %bb.bt
  %i.nt = load i32, ptr %i.bz, align 8, !tbaa !703
  %i.nu = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 103
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !918
  %.not.i.i.i306 = icmp eq i8 %i.nw, 0
  br i1 %.not.i.i.i306, label %bb.bu, label %.lr.ph394

bb.bu:                                            ; preds = %sqlite3VdbeGoto.exit
  %i.nx = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.ny = sext i32 %.val to i64
  %i.nz = getelementptr [32 x i8], ptr %i.nx, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nz, i64 -32
  br label %.lr.ph394

.lr.ph394:                                        ; preds = %bb.bu, %sqlite3VdbeGoto.exit
  %.0.i.i.i307 = phi ptr [ %i.oa, %bb.bu ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeGoto.exit ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.0.i.i.i307, i64 8
  store i32 %i.nt, ptr %i.ob, align 8, !tbaa !927
  %i.oc = getelementptr inbounds nuw i8, ptr %.0399, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %.0399, i64 24
  %smax408 = tail call i32 @llvm.smax.i32(i32 %.0230, i32 1)
  %wide.trip.count409 = zext nneg i32 %smax408 to i64
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph394, %analyzeVdbeCommentIndexWithColumnName.exit314
  %indvars.iv405 = phi i64 [ 0, %.lr.ph394 ], [ %indvars.iv.next406, %analyzeVdbeCommentIndexWithColumnName.exit314 ] ; 5 uses
  %indvars407 = trunc i64 %indvars.iv405 to i32   ; 4 uses
  %i.oe = load i32, ptr %i.bz, align 8, !tbaa !703 ; 4 uses
  %i.of = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 103
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !918
  %.not.i.i.i308 = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i.i308, label %bb.bw, label %sqlite3VdbeJumpHere.exit310

bb.bw:                                            ; preds = %bb.bv
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv405
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !570
  %i.ok = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.ol = sext i32 %i.oj to i64
  %i.om = getelementptr inbounds [32 x i8], ptr %i.ok, i64 %i.ol
  br label %sqlite3VdbeJumpHere.exit310

sqlite3VdbeJumpHere.exit310:                      ; preds = %bb.bv, %bb.bw
  %.0.i.i.i309 = phi ptr [ %i.om, %bb.bw ], [ @sqlite3VdbeGetOp.dummy, %bb.bv ]
  %i.on = getelementptr inbounds nuw i8, ptr %.0.i.i.i309, i64 8
  store i32 %i.oe, ptr %i.on, align 8, !tbaa !927
  %i.oo = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i311 = icmp sgt i32 %i.oo, %i.oe
  br i1 %.not.i311, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %sqlite3VdbeJumpHere.exit310
  %i.op = add nsw i32 %i.j, %indvars407
  %i.oq = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 96, i32 noundef %i.bu, i32 noundef %indvars407, i32 noundef %i.op), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit313

bb.by:                                            ; preds = %sqlite3VdbeJumpHere.exit310
  %i.or = add nsw i32 %i.oe, 1
  store i32 %i.or, ptr %i.bz, align 8, !tbaa !703
  %i.os = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.ot = sext i32 %i.oe to i64
  %i.ou = getelementptr inbounds [32 x i8], ptr %i.os, i64 %i.ot ; 7 uses
  store i8 96, ptr %i.ou, align 8, !tbaa !929
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  store i16 0, ptr %i.ov, align 2, !tbaa !930
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  store i32 %i.bu, ptr %i.ow, align 4, !tbaa !926
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store i32 %indvars407, ptr %i.ox, align 8, !tbaa !927
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 12
  %i.oz = trunc i64 %indvars.iv405 to i32
  %i.pa = add i32 %i.j, %i.oz
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !928
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  store i8 0, ptr %i.pc, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit313

sqlite3VdbeAddOp3.exit313:                        ; preds = %bb.bx, %bb.by
  %i.pd = load ptr, ptr %i.oc, align 8, !tbaa !1161
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.pd, i64 %indvars.iv405
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !783 ; 2 uses
  %i.pg = load ptr, ptr %.0399, align 8, !tbaa !1979 ; 3 uses
  switch i16 %i.pf, label %bb.cb [
    i16 -1, label %bb.bz
    i16 -2, label %bb.ca
  ]

bb.bz:                                            ; preds = %sqlite3VdbeAddOp3.exit313
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull readonly %.0.i, ptr noundef nonnull @.str.676, ptr noundef %i.pg), !inline_history !5619
  br label %analyzeVdbeCommentIndexWithColumnName.exit314

bb.ca:                                            ; preds = %sqlite3VdbeAddOp3.exit313
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull readonly %.0.i, ptr noundef nonnull @.str.1188, ptr noundef %i.pg, i32 noundef range(i32 -2147483648, 65534) %indvars407), !inline_history !5619
  br label %analyzeVdbeCommentIndexWithColumnName.exit314

bb.cb:                                            ; preds = %sqlite3VdbeAddOp3.exit313
  %i.ph = load ptr, ptr %i.od, align 8, !tbaa !1257
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !1150
  %i.pk = sext i16 %i.pf to i64
  %i.pl = getelementptr inbounds [16 x i8], ptr %i.pj, i64 %i.pk
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !1154
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull readonly %.0.i, ptr noundef nonnull @.str.656, ptr noundef %i.pg, ptr noundef %i.pm), !inline_history !5619
  br label %analyzeVdbeCommentIndexWithColumnName.exit314

analyzeVdbeCommentIndexWithColumnName.exit314:    ; preds = %bb.bz, %bb.ca, %bb.cb
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next406, %wide.trip.count409
  br i1 %exitcond410.not, label %._crit_edge395, label %bb.bv, !llvm.loop !5621

._crit_edge395:                                   ; preds = %analyzeVdbeCommentIndexWithColumnName.exit314
  %i.pn = load ptr, ptr %i.de, align 8, !tbaa !1195 ; 4 uses
  %i.po = sub i32 0, %i.jf                        ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 80
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !2195
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 76
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !1881
  %i.pt = add nsw i32 %i.ps, %i.pq
  %i.pu = icmp slt i32 %i.pt, 0
  br i1 %i.pu, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge395
  tail call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.pn, ptr noundef nonnull readonly %.0.i, i32 noundef %i.po), !inline_history !2196
  br label %bb.ce

bb.cd:                                            ; preds = %._crit_edge395
  %i.pv = load i32, ptr %i.bz, align 8, !tbaa !703
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pn, i64 88
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !1217
  %i.py = sext i32 %i.po to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.py
  store i32 %i.pv, ptr %i.pz, align 4, !tbaa !570
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %i.a, ptr noundef nonnull %i.jj)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %sqlite3VdbeAddOp2.exit285
  %.1 = phi i32 [ %.val, %bb.ce ], [ %.val256, %sqlite3VdbeAddOp2.exit285 ] ; 4 uses
  tail call fastcc void @sqlite3VdbeAddFunctionCall(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.b, i32 noundef %i.e, i32 noundef 2, ptr noundef nonnull @statPushFuncdef, i32 noundef 0)
  %i.qa = load i32, ptr %i.db, align 8, !tbaa !1747
  %.not252 = icmp eq i32 %i.qa, 0
  %i.qb = load i32, ptr %i.bz, align 8, !tbaa !703 ; 6 uses
  %i.qc = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i336 = icmp sgt i32 %i.qc, %i.qb        ; 2 uses
  br i1 %.not252, label %bb.cr, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not.i.i336, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qd = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 51, i32 noundef %i.e, i32 noundef 0, i32 noundef 0), !inline_history !2027
  br label %sqlite3VdbeAddOp1.exit318

bb.ci:                                            ; preds = %bb.cg
  %i.qe = add nsw i32 %i.qb, 1
  store i32 %i.qe, ptr %i.bz, align 8, !tbaa !703
  %i.qf = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.qg = sext i32 %i.qb to i64
  %i.qh = getelementptr inbounds [32 x i8], ptr %i.qf, i64 %i.qg ; 5 uses
  store i8 51, ptr %i.qh, align 8, !tbaa !929
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  store i16 0, ptr %i.qi, align 2, !tbaa !930
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  store i32 %i.e, ptr %i.qj, align 4, !tbaa !926
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 1
  store i8 0, ptr %i.ql, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qk, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit318

sqlite3VdbeAddOp1.exit318:                        ; preds = %bb.ch, %bb.ci
  %.0.i.i317 = phi i32 [ %i.qd, %bb.ch ], [ %i.qb, %bb.ci ]
  %i.qm = load i32, ptr %i.bz, align 8, !tbaa !703 ; 4 uses
  %i.qn = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i319 = icmp sgt i32 %i.qn, %i.qm
  br i1 %.not.i.i319, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %sqlite3VdbeAddOp1.exit318
  %i.qo = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 16, i32 noundef %i.e, i32 noundef 0, i32 noundef 0), !inline_history !2027
  br label %sqlite3VdbeAddOp1.exit321

bb.ck:                                            ; preds = %sqlite3VdbeAddOp1.exit318
  %i.qp = add nsw i32 %i.qm, 1
  store i32 %i.qp, ptr %i.bz, align 8, !tbaa !703
  %i.qq = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.qr = sext i32 %i.qm to i64
  %i.qs = getelementptr inbounds [32 x i8], ptr %i.qq, i64 %i.qr ; 5 uses
  store i8 16, ptr %i.qs, align 8, !tbaa !929
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 2
  store i16 0, ptr %i.qt, align 2, !tbaa !930
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store i32 %i.e, ptr %i.qu, align 4, !tbaa !926
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 1
  store i8 0, ptr %i.qw, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qv, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit321

sqlite3VdbeAddOp1.exit321:                        ; preds = %bb.cj, %bb.ck
  %.0.i.i320 = phi i32 [ %i.qo, %bb.cj ], [ %i.qm, %bb.ck ]
  %i.qx = load i32, ptr %i.bz, align 8, !tbaa !703 ; 4 uses
  %i.qy = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i322 = icmp sgt i32 %i.qy, %i.qx
  br i1 %.not.i322, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %sqlite3VdbeAddOp1.exit321
  %i.qz = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %.0.i, i32 noundef 24, i32 noundef %i.bu, i32 noundef 0, i32 noundef %i.j, i32 noundef 1), !inline_history !1166
  br label %sqlite3VdbeAddOp4Int.exit

bb.cm:                                            ; preds = %sqlite3VdbeAddOp1.exit321
  %i.ra = add nsw i32 %i.qx, 1
  store i32 %i.ra, ptr %i.bz, align 8, !tbaa !703
  %i.rb = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.rc = sext i32 %i.qx to i64
  %i.rd = getelementptr inbounds [32 x i8], ptr %i.rb, i64 %i.rc ; 8 uses
  store i8 24, ptr %i.rd, align 8, !tbaa !929
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  store i16 0, ptr %i.re, align 2, !tbaa !930
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  store i32 %i.bu, ptr %i.rf, align 4, !tbaa !926
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store i32 0, ptr %i.rg, align 8, !tbaa !927
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  store i32 %i.j, ptr %i.rh, align 4, !tbaa !928
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store i32 1, ptr %i.ri, align 8, !tbaa !733
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 1
  store i8 -3, ptr %i.rj, align 1, !tbaa !1167
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  store ptr null, ptr %i.rk, align 8, !tbaa !1168
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.cl, %bb.cm
  %.0.i323 = phi i32 [ %i.qz, %bb.cl ], [ %i.qx, %bb.cm ]
  %i.rl = load i32, ptr %i.bz, align 8, !tbaa !703 ; 4 uses
  %i.rm = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 103
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !918
  %.not.i.i.i324 = icmp eq i8 %i.ro, 0
  br i1 %.not.i.i.i324, label %bb.cn, label %sqlite3VdbeJumpHere.exit326

bb.cn:                                            ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.rp = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.rq = sext i32 %.0.i.i317 to i64
  %i.rr = getelementptr inbounds [32 x i8], ptr %i.rp, i64 %i.rq
  br label %sqlite3VdbeJumpHere.exit326

sqlite3VdbeJumpHere.exit326:                      ; preds = %sqlite3VdbeAddOp4Int.exit, %bb.cn
  %.0.i.i.i325 = phi ptr [ %i.rr, %bb.cn ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeAddOp4Int.exit ]
  %i.rs = getelementptr inbounds nuw i8, ptr %.0.i.i.i325, i64 8
  store i32 %i.rl, ptr %i.rs, align 8, !tbaa !927
  %i.rt = load i32, ptr %i.cb, align 4, !tbaa !1165
  %.not.i.i327 = icmp sgt i32 %i.rt, %i.rl
  br i1 %.not.i.i327, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %sqlite3VdbeJumpHere.exit326
  %i.ru = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 40, i32 noundef %i.bu, i32 noundef %.1, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit329

bb.cp:                                            ; preds = %sqlite3VdbeJumpHere.exit326
  %i.rv = add nsw i32 %i.rl, 1
  store i32 %i.rv, ptr %i.bz, align 8, !tbaa !703
  %i.rw = load ptr, ptr %i.da, align 8, !tbaa !702
  %i.rx = sext i32 %i.rl to i64
  %i.ry = getelementptr inbounds [32 x i8], ptr %i.rw, i64 %i.rx ; 6 uses
  store i8 40, ptr %i.ry, align 8, !tbaa !929
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 2
  store i16 0, ptr %i.rz, align 2, !tbaa !930
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  store i32 %i.bu, ptr %i.sa, align 4, !tbaa !926
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store i32 %.1, ptr %i.sb, align 8, !tbaa !927
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 1
  store i8 0, ptr %i.sd, align 1, !tbaa !1167
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.sc, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit329

sqlite3VdbeAddOp2.exit329:                        ; preds = %bb.co, %bb.cp
  %i.se = load i32, ptr %i.bz, align 8, !tbaa !703 ; 3 uses
  %i.sf = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 103
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !918
  %.not.i.i.i330 = icmp eq i8 %i.sh, 0
  br i1 %.not.i.i.i330, label %bb.cq, label %sqlite3VdbeJumpHere.exit332

sqlite3VdbeJumpHere.exit332:                      ; preds = %sqlite3VdbeAddOp2.exit329
  store i32 %i.se, ptr getelementptr inbounds nuw (i8, ptr @sqlite3VdbeGetOp.dummy, i64 8), align 8, !tbaa !927
  br label %sqlite3VdbeJumpHere.exit335

bb.cq:                                            ; preds = %sqlite3VdbeAddOp2.exit329
  %i.si = load ptr, ptr %i.da, align 8, !tbaa !702 ; 2 uses
  %i.sj = sext i32 %.0.i.i320 to i64
  %i.sk = getelementptr inbounds [32 x i8], ptr %i.si, i64 %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store i32 %i.se, ptr %i.sl, align 8, !tbaa !927
  %i.sm = sext i32 %.0.i323 to i64
  %i.sn = getelementptr inbounds [32 x i8], ptr %i.si, i64 %i.sm
  br label %sqlite3VdbeJumpHere.exit335

sqlite3VdbeJumpHere.exit335:                      ; preds = %sqlite3VdbeJumpHere.exit332, %bb.cq
  %.0.i.i.i334 = phi ptr [ %i.sn, %bb.cq ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeJumpHere.exit332 ]
  %i.so = getelementptr inbounds nuw i8, ptr %.0.i.i.i334, i64 8
  store i32 %i.se, ptr %i.so, align 8, !tbaa !927
  br label %sqlite3VdbeAddOp2.exit338

end_hunk_0
