Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3FindFunction:bb.a
bb.k:                                             ; preds = %.lr.ph, %matchQuality.exit
  %.072127 = phi ptr [ %.072123, %.lr.ph ], [ %.072, %matchQuality.exit ] ; 5 uses
  %.066126 = phi i32 [ 0, %.lr.ph ], [ %spec.select89, %matchQuality.exit ] ; 2 uses
  %.067125 = phi ptr [ null, %.lr.ph ], [ %spec.select, %matchQuality.exit ]
  %i.ao = load i16, ptr %.072127, align 8, !tbaa !1338 ; 3 uses
  %i.ap = sext i16 %i.ao to i32                   ; 2 uses
  %.not.i = icmp eq i32 %2, %i.ap
  br i1 %.not.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.072127, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1339
  %i.as = icmp eq ptr %i.ar, null
  %i.at = select i1 %i.as, i32 0, i32 6
  br label %matchQuality.exit

bb.n:                                             ; preds = %bb.l
  %i.au = icmp sgt i16 %i.ao, -1
  br i1 %i.au, label %matchQuality.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i16 %i.ao, -2
  %i.aw = sub nuw nsw i32 -2, %i.ap
  %i.ax = icmp slt i32 %2, %i.aw
  %or.cond.i = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond.i, label %matchQuality.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %..i = phi i32 [ 1, %bb.o ], [ 4, %bb.k ]       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.072127, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1104 ; 2 uses
  %i.ba = and i32 %i.az, 3
  %i.bb = icmp eq i32 %i.ba, %i.an
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bc = or disjoint i32 %..i, 2
  br label %matchQuality.exit

bb.r:                                             ; preds = %bb.p
  %i.bd = and i32 %i.az, %i.an
  %i.be = lshr i32 %i.bd, 1
  %i.bf = and i32 %i.be, 1
  %spec.select.i = add nuw nsw i32 %i.bf, %..i
  br label %matchQuality.exit

matchQuality.exit:                                ; preds = %bb.m, %bb.n, %bb.o, %bb.q, %bb.r
  %.017.i = phi i32 [ %i.at, %bb.m ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.bc, %bb.q ], [ %spec.select.i, %bb.r ] ; 2 uses
  %i.bg = icmp samesign ugt i32 %.017.i, %.066126
  %spec.select = select i1 %i.bg, ptr %.072127, ptr %.067125 ; 5 uses
  %spec.select89 = tail call i32 @llvm.umax.i32(i32 %.017.i, i32 %.066126) ; 2 uses
  %.072.in = getelementptr inbounds nuw i8, ptr %.072127, i64 16
  %.072 = load ptr, ptr %.072.in, align 8, !tbaa !851 ; 2 uses
  %.not = icmp eq ptr %.072, null
  br i1 %.not, label %._crit_edge, label %bb.k, !llvm.loop !3393

._crit_edge:                                      ; preds = %matchQuality.exit
  %.not82.not = icmp eq i8 %4, 0
  br i1 %.not82.not, label %bb.s, label %.loopexit

._crit_edge.thread:                               ; preds = %sqlite3HashFind.exit
  %.not82167.not = icmp eq i8 %4, 0
  br i1 %.not82167.not, label %.thread, label %.loopexit.thread

bb.s:                                             ; preds = %._crit_edge
  %i.bh = icmp eq ptr %spec.select, null
  br i1 %i.bh, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !1014
  %i.bk = and i32 %i.bj, 2
  %.not83 = icmp eq i32 %i.bk, 0
  br i1 %.not83, label %.thread111, label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.t, %bb.s
  %.067.lcssa168174 = phi ptr [ null, %bb.s ], [ %spec.select, %bb.t ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.bl = zext i8 %i.f to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !733
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %.0.i, %i.bo
  %i.bq = urem i32 %i.bp, 23
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @sqlite3BuiltinFunctions, i64 %i.br
  %.011.i = load ptr, ptr %i.bs, align 8, !tbaa !733 ; 2 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %.loopexit.thread189, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %sqlite3StrICmp.exit.i
  %.013.i = phi ptr [ %.0.i93, %sqlite3StrICmp.exit.i ], [ %.011.i, %.thread ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !732
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph.i
  %.013.i.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %i.cf, %bb.x ] ; 2 uses
  %.012.i.i = phi ptr [ %1, %.lr.ph.i ], [ %i.cg, %bb.x ] ; 2 uses
  %i.bv = load i8, ptr %.013.i.i, align 1, !tbaa !733 ; 3 uses
  %i.bw = load i8, ptr %.012.i.i, align 1, !tbaa !733 ; 2 uses
  %i.bx = icmp eq i8 %i.bv, %i.bw
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.by = icmp eq i8 %i.bv, 0
  br i1 %i.by, label %.lr.ph133, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bz = zext i8 %i.bv to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.cc = zext i8 %i.bw to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !733
  %.not.i.i92 = icmp eq i8 %i.cb, %i.ce
  br i1 %.not.i.i92, label %bb.x, label %sqlite3StrICmp.exit.i

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %bb.u

sqlite3StrICmp.exit.i:                            ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i, i64 64
  %.0.i93 = load ptr, ptr %i.ch, align 8, !tbaa !733 ; 2 uses
  %.not.i94 = icmp eq ptr %.0.i93, null
  br i1 %.not.i94, label %.loopexit, label %.lr.ph.i, !llvm.loop !10

.lr.ph133:                                        ; preds = %bb.v
  %i.ci = icmp eq i32 %2, -2
  %i.cj = zext i8 %3 to i32                       ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph133, %matchQuality.exit100
  %.2132 = phi i32 [ 0, %.lr.ph133 ], [ %spec.select91, %matchQuality.exit100 ] ; 2 uses
  %.269131 = phi ptr [ %.067.lcssa168174, %.lr.ph133 ], [ %spec.select90, %matchQuality.exit100 ]
  %.173130 = phi ptr [ %.013.i, %.lr.ph133 ], [ %i.de, %matchQuality.exit100 ] ; 5 uses
  %i.ck = load i16, ptr %.173130, align 8, !tbaa !1338 ; 3 uses
  %i.cl = sext i16 %i.ck to i32                   ; 2 uses
  %.not.i95 = icmp eq i32 %2, %i.cl
  br i1 %.not.i95, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.ci, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %.173130, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1339
  %i.co = icmp eq ptr %i.cn, null
  %i.cp = select i1 %i.co, i32 0, i32 6
  br label %matchQuality.exit100

bb.ab:                                            ; preds = %bb.z
  %i.cq = icmp sgt i16 %i.ck, -1
  br i1 %i.cq, label %matchQuality.exit100, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = icmp samesign ult i16 %i.ck, -2
  %i.cs = sub nuw nsw i32 -2, %i.cl
  %i.ct = icmp slt i32 %2, %i.cs
  %or.cond.i96 = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %or.cond.i96, label %matchQuality.exit100, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %..i97 = phi i32 [ 1, %bb.ac ], [ 4, %bb.y ]    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.173130, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !1104 ; 2 uses
  %i.cw = and i32 %i.cv, 3
  %i.cx = icmp eq i32 %i.cw, %i.cj
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = or disjoint i32 %..i97, 2
  br label %matchQuality.exit100

bb.af:                                            ; preds = %bb.ad
  %i.cz = and i32 %i.cv, %i.cj
  %i.da = lshr i32 %i.cz, 1
  %i.db = and i32 %i.da, 1
  %spec.select.i98 = add nuw nsw i32 %i.db, %..i97
  br label %matchQuality.exit100

matchQuality.exit100:                             ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af
  %.017.i99 = phi i32 [ %i.cp, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ %i.cy, %bb.ae ], [ %spec.select.i98, %bb.af ] ; 2 uses
  %i.dc = icmp samesign ugt i32 %.017.i99, %.2132
  %spec.select90 = select i1 %i.dc, ptr %.173130, ptr %.269131 ; 2 uses
  %spec.select91 = tail call i32 @llvm.umax.i32(i32 %.017.i99, i32 %.2132) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.173130, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !734 ; 2 uses
  %.not84 = icmp eq ptr %i.de, null
  br i1 %.not84, label %.loopexit, label %bb.y, !llvm.loop !3394

.loopexit:                                        ; preds = %sqlite3StrICmp.exit.i, %matchQuality.exit100, %._crit_edge
  %.not82170 = phi i1 [ true, %._crit_edge ], [ false, %matchQuality.exit100 ], [ false, %sqlite3StrICmp.exit.i ] ; 2 uses
  %.471 = phi ptr [ %spec.select, %._crit_edge ], [ %spec.select90, %matchQuality.exit100 ], [ %.067.lcssa168174, %sqlite3StrICmp.exit.i ]
  %.4 = phi i32 [ %spec.select89, %._crit_edge ], [ %spec.select91, %matchQuality.exit100 ], [ 0, %sqlite3StrICmp.exit.i ]
  %i.df = icmp slt i32 %.4, 6
  %or.cond = select i1 %.not82170, i1 %i.df, i1 false
  br i1 %or.cond, label %.loopexit.thread, label %.loopexit.thread189

.loopexit.thread:                                 ; preds = %._crit_edge.thread, %.loopexit
  %narrow = add nuw nsw i32 %.0.i, 73
  %i.dg = zext nneg i32 %narrow to i64            ; 3 uses
  %.not.i.i101 = icmp eq ptr %0, null
  br i1 %.not.i.i101, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.thread
  %i.dh = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef %i.dg), !inline_history !88
  br label %sqlite3DbMallocRaw.exit.i

bb.ah:                                            ; preds = %.loopexit.thread
  %i.di = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.dg), !inline_history !88
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.ah, %bb.ag
  %.0.i.i102 = phi ptr [ %i.dh, %bb.ag ], [ %i.di, %bb.ah ] ; 11 uses
  %.not.i103 = icmp eq ptr %.0.i.i102, null
  br i1 %.not.i103, label %.thread115, label %bb.ai

bb.ai:                                            ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i102, i8 0, i64 %i.dg, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 72 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 56 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !732
  %i.dl = trunc i32 %2 to i16
  store i16 %i.dl, ptr %.0.i.i102, align 8, !tbaa !1338
  %i.dm = zext i8 %3 to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 4
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !1104
  %i.do = add nuw nsw i32 %.0.i, 1
  %i.dp = zext nneg i32 %i.do to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dj, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.dp, i1 false)
  %i.dq = load i8, ptr %i.dj, align 8, !tbaa !733 ; 2 uses
  %.not86136 = icmp eq i8 %i.dq, 0
  br i1 %.not86136, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.ai, %.lr.ph139
  %i.dr = phi i8 [ %i.dw, %.lr.ph139 ], [ %i.dq, %bb.ai ]
  %.065137 = phi ptr [ %i.dv, %.lr.ph139 ], [ %i.dj, %bb.ai ] ; 2 uses
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !733
  store i8 %i.du, ptr %.065137, align 1, !tbaa !733
  %i.dv = getelementptr inbounds nuw i8, ptr %.065137, i64 1 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !733 ; 2 uses
  %.not86 = icmp eq i8 %i.dw, 0
  br i1 %.not86, label %._crit_edge140.loopexit, label %.lr.ph139, !llvm.loop !3395

._crit_edge140.loopexit:                          ; preds = %.lr.ph139
  %.pre = load ptr, ptr %i.dk, align 8, !tbaa !732
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.ai
  %i.dx = phi ptr [ %.pre, %._crit_edge140.loopexit ], [ %i.dj, %bb.ai ]
  %i.dy = tail call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.e, ptr noundef %i.dx, ptr noundef nonnull %.0.i.i102) ; 2 uses
  %.not87 = icmp eq ptr %i.dy, %.0.i.i102
  br i1 %.not87, label %sqlite3DbFree.exit, label %.thread111.thread

sqlite3DbFree.exit:                               ; preds = %._crit_edge140
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %0, ptr noundef nonnull %.0.i.i102)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !918
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.aj, label %sqlite3OomFault.exit.thread

bb.aj:                                            ; preds = %sqlite3DbFree.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !919
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.ak, label %sqlite3OomFault.exit.thread

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.dz, align 1, !tbaa !918
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !920
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic volatile i32 1, ptr %i.ei monotonic, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !921
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !921
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i16 0, ptr %i.em, align 4, !tbaa !922
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !768 ; 2 uses
  %.not.i105 = icmp eq ptr %i.eo, null
  br i1 %.not.i105, label %sqlite3OomFault.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.eo, ptr noundef nonnull @.str.125), !inline_history !48
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !768 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i32 7, ptr %i.eq, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit.thread, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.an, %.lr.ph.i106
  %.020.i = phi ptr [ %.0.i107, %.lr.ph.i106 ], [ %.018.i, %bb.an ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !780
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !780
  %i.eu = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.eu, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i107 = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i107, null
  br i1 %.not16.i, label %sqlite3OomFault.exit.thread, label %.lr.ph.i106, !llvm.loop !36

.thread111.thread:                                ; preds = %._crit_edge140
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i102, i64 16
  store ptr %i.dy, ptr %i.ev, align 8, !tbaa !734
  br label %sqlite3OomFault.exit.thread

.loopexit.thread189:                              ; preds = %.thread, %.loopexit
  %.471182 = phi ptr [ %.471, %.loopexit ], [ %.067.lcssa168174, %.thread ] ; 2 uses
  %.not82170181 = phi i1 [ %.not82170, %.loopexit ], [ false, %.thread ]
  %.not88 = icmp eq ptr %.471182, null
  br i1 %.not88, label %.thread115, label %.thread111

.thread111:                                       ; preds = %bb.t, %.loopexit.thread189
  %.5114 = phi ptr [ %.471182, %.loopexit.thread189 ], [ %spec.select, %bb.t ] ; 2 uses
  %i.ew = phi i1 [ %.not82170181, %.loopexit.thread189 ], [ false, %bb.t ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.5114, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1339
  %i.ez = icmp ne ptr %i.ey, null
  %or.cond4 = or i1 %i.ew, %i.ez
  br i1 %or.cond4, label %sqlite3OomFault.exit.thread, label %.thread115

.thread115:                                       ; preds = %sqlite3DbMallocRaw.exit.i, %.thread111, %.loopexit.thread189
  br label %sqlite3OomFault.exit.thread

sqlite3OomFault.exit.thread:                      ; preds = %.lr.ph.i106, %.thread111.thread, %sqlite3DbFree.exit, %bb.aj, %bb.am, %bb.an, %.thread111, %.thread115
  %.175 = phi ptr [ %.5114, %.thread111 ], [ null, %.thread115 ], [ null, %sqlite3DbFree.exit ], [ null, %bb.an ], [ null, %bb.am ], [ null, %bb.aj ], [ %.0.i.i102, %.thread111.thread ], [ null, %.lr.ph.i106 ]
  ret ptr %.175
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3InvalidFunction(ptr nofree noundef captures(none) initializes((36, 40)) %0, i32 %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !735
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1112
  %i.e = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1493, ptr noundef %i.d) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.f, align 4, !tbaa !570
  %i.g = load ptr, ptr %0, align 8, !tbaa !761
  %i.h = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.g, ptr noundef %i.e, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1105 ; 0 uses
  %i.i = icmp eq ptr %i.e, null
  br i1 %i.i, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.l(ptr noundef nonnull %i.k) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.e) #58, !inline_history !13
  %i.o = sext i32 %i.n to i64
  %i.p = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.q = sub nsw i64 %i.p, %i.o
  store i64 %i.q, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.s = add nsw i64 %i.r, -1
  store i64 %i.s, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.t(ptr noundef nonnull %i.e) #58, !inline_history !749
  %i.u = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.u, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.v(ptr noundef nonnull %i.u) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@sqlite3VdbeExec:bb.a
  %i.itt = add i32 %i.its, 1
  store i32 %i.itt, ptr %i.bq, align 4, !tbaa !570
  br label %.thread4755

bb.bep:                                           ; preds = %filterHash.exit4641
  %i.itu = load i32, ptr %i.bp, align 8, !tbaa !570
  %i.itv = add i32 %i.itu, 1
  store i32 %i.itv, ptr %i.bp, align 8, !tbaa !570
  br label %.critedge

bb.beq:                                           ; preds = %bb.h, %bb.h
  %i.itw = load i8, ptr %i.fb, align 2, !tbaa !907 ; 2 uses
  %i.itx = and i8 %i.itw, 65
  %.not3810 = icmp eq i8 %i.itx, 0
  br i1 %.not3810, label %sqlite3DbFree.exit4643, label %bb.ber

bb.ber:                                           ; preds = %bb.beq
  %i.ity = load i8, ptr %i.gs, align 1, !tbaa !953
  %.not3811 = icmp eq i8 %i.ity, -2
  br i1 %.not3811, label %sqlite3DbFree.exit4643, label %bb.bes

bb.bes:                                           ; preds = %bb.ber
  %i.itz = getelementptr inbounds nuw i8, ptr %.02972, i64 16
  %i.iua = load ptr, ptr %i.itz, align 8, !tbaa !733 ; 2 uses
  %.not3812 = icmp eq ptr %i.iua, null
  br i1 %.not3812, label %bb.bet, label %.thread5370

bb.bet:                                           ; preds = %bb.bes
  %i.iub = load ptr, ptr %i.hd, align 8, !tbaa !704 ; 2 uses
  %.not3813 = icmp eq ptr %i.iub, null
  br i1 %.not3813, label %sqlite3DbFree.exit4643, label %.thread5370

.thread5370:                                      ; preds = %bb.bes, %bb.bet
  %i.iuc = phi ptr [ %i.iub, %bb.bet ], [ %i.iua, %bb.bes ] ; 3 uses
  %i.iud = and i8 %i.itw, 64
  %.not3814 = icmp eq i8 %i.iud, 0
  br i1 %.not3814, label %bb.bev, label %bb.beu

bb.beu:                                           ; preds = %.thread5370
  %i.iue = call fastcc ptr @sqlite3VdbeExpandSql(ptr noundef nonnull %0, ptr noundef %i.iuc) ; 2 uses
  %i.iuf = load ptr, ptr %i.he, align 8, !tbaa !733
  %i.iug = load ptr, ptr %i.hf, align 8, !tbaa !1092
  call void %i.iuf(ptr noundef %i.iug, ptr noundef %i.iue) #58
  call void @sqlite3_free(ptr noundef %i.iue)
  br label %sqlite3DbFree.exit4643

bb.bev:                                           ; preds = %.thread5370
  %i.iuh = load i32, ptr %i.hg, align 4, !tbaa !920
  %i.iui = icmp sgt i32 %i.iuh, 1
  br i1 %i.iui, label %bb.bew, label %bb.bey

bb.bew:                                           ; preds = %bb.bev
  %i.iuj = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.373, ptr noundef nonnull %i.iuc) ; 3 uses
  %i.iuk = load ptr, ptr %i.he, align 8, !tbaa !733
  %i.iul = load ptr, ptr %i.hf, align 8, !tbaa !1092
  %i.ium = call i32 %i.iuk(i32 noundef 1, ptr noundef %i.iul, ptr noundef nonnull %0, ptr noundef %i.iuj) #58 ; 0 uses
  %.not.i4642 = icmp eq ptr %i.iuj, null
  br i1 %.not.i4642, label %sqlite3DbFree.exit4643, label %bb.bex

bb.bex:                                           ; preds = %bb.bew
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.iuj)
  br label %sqlite3DbFree.exit4643

bb.bey:                                           ; preds = %bb.bev
  %i.iun = load ptr, ptr %i.he, align 8, !tbaa !733
  %i.iuo = load ptr, ptr %i.hf, align 8, !tbaa !1092
  %i.iup = call i32 %i.iun(i32 noundef 1, ptr noundef %i.iuo, ptr noundef nonnull %0, ptr noundef nonnull %i.iuc) #58 ; 0 uses
  br label %sqlite3DbFree.exit4643

sqlite3DbFree.exit4643:                           ; preds = %bb.bex, %bb.bew, %bb.beu, %bb.bey, %bb.bet, %bb.ber, %bb.beq
  %i.iuq = getelementptr inbounds nuw i8, ptr %.02972, i64 4 ; 2 uses
  %i.iur = load i32, ptr %i.iuq, align 4, !tbaa !926 ; 2 uses
  %i.ius = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 424), align 8, !tbaa !1378
  %.not3815 = icmp slt i32 %i.iur, %i.ius
  br i1 %.not3815, label %._crit_edge6321, label %bb.bez

bb.bez:                                           ; preds = %sqlite3DbFree.exit4643
  %i.iut = load i8, ptr %.02972, align 8, !tbaa !929
  %i.iuu = icmp eq i8 %i.iut, -70
  br i1 %i.iuu, label %.critedge, label %.preheader5467

.preheader5467:                                   ; preds = %bb.bez
  %i.iuv = load i32, ptr %i.dx, align 8, !tbaa !703 ; 3 uses
  %i.iuw = icmp sgt i32 %i.iuv, 1
  br i1 %i.iuw, label %.lr.ph6320, label %._crit_edge6321

.lr.ph6320:                                       ; preds = %.preheader5467
  %i.iux = load ptr, ptr %i.am, align 8, !tbaa !702 ; 3 uses
  %wide.trip.count7197 = zext nneg i32 %i.iuv to i64
  %i.iuy = add nsw i64 %wide.trip.count7197, -1   ; 3 uses
  %xtraiter13347 = and i64 %i.iuy, 1
  %i.iuz = icmp eq i32 %i.iuv, 2
  br i1 %i.iuz, label %.epil.preheader, label %.lr.ph6320.new

.lr.ph6320.new:                                   ; preds = %.lr.ph6320
  %unroll_iter13351 = and i64 %i.iuy, -2
  br label %bb.bfa

bb.bfa:                                           ; preds = %bb.bfe, %.lr.ph6320.new
  %indvars.iv7194 = phi i64 [ 1, %.lr.ph6320.new ], [ %indvars.iv.next7195.1, %bb.bfe ] ; 3 uses
  %niter13352 = phi i64 [ 0, %.lr.ph6320.new ], [ %niter13352.next.1, %bb.bfe ]
  %i.iva = getelementptr inbounds nuw [32 x i8], ptr %i.iux, i64 %indvars.iv7194 ; 2 uses
  %i.ivb = load i8, ptr %i.iva, align 8, !tbaa !929
  %i.ivc = icmp eq i8 %i.ivb, 15
  br i1 %i.ivc, label %bb.bfb, label %bb.bfc

bb.bfb:                                           ; preds = %bb.bfa
  %i.ivd = getelementptr inbounds nuw i8, ptr %i.iva, i64 4
  store i32 0, ptr %i.ivd, align 4, !tbaa !926
  br label %bb.bfc

bb.bfc:                                           ; preds = %bb.bfa, %bb.bfb
  %i.ive = getelementptr inbounds nuw [32 x i8], ptr %i.iux, i64 %indvars.iv7194 ; 2 uses
  %i.ivf = getelementptr inbounds nuw i8, ptr %i.ive, i64 32
  %i.ivg = load i8, ptr %i.ivf, align 8, !tbaa !929
  %i.ivh = icmp eq i8 %i.ivg, 15
  br i1 %i.ivh, label %bb.bfd, label %bb.bfe

bb.bfd:                                           ; preds = %bb.bfc
  %i.ivi = getelementptr inbounds nuw i8, ptr %i.ive, i64 36
  store i32 0, ptr %i.ivi, align 4, !tbaa !926
  br label %bb.bfe

bb.bfe:                                           ; preds = %bb.bfd, %bb.bfc
  %indvars.iv.next7195.1 = add nuw nsw i64 %indvars.iv7194, 2 ; 2 uses
  %niter13352.next.1 = add i64 %niter13352, 2     ; 2 uses
  %niter13352.ncmp.1 = icmp eq i64 %niter13352.next.1, %unroll_iter13351
  br i1 %niter13352.ncmp.1, label %._crit_edge6321.loopexit.unr-lcssa, label %bb.bfa, !llvm.loop !4074

._crit_edge6321.loopexit.unr-lcssa:               ; preds = %bb.bfe
  %lcmp.mod13349.not = icmp eq i64 %xtraiter13347, 0
  br i1 %lcmp.mod13349.not, label %._crit_edge6321, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge6321.loopexit.unr-lcssa, %.lr.ph6320
  %indvars.iv7194.epil.init = phi i64 [ 1, %.lr.ph6320 ], [ %indvars.iv.next7195.1, %._crit_edge6321.loopexit.unr-lcssa ]
  %lcmp.mod13350 = trunc i64 %i.iuy to i1
  call void @llvm.assume(i1 %lcmp.mod13350)
  %i.ivj = getelementptr inbounds nuw [32 x i8], ptr %i.iux, i64 %indvars.iv7194.epil.init ; 2 uses
  %i.ivk = load i8, ptr %i.ivj, align 8, !tbaa !929
  %i.ivl = icmp eq i8 %i.ivk, 15
  br i1 %i.ivl, label %bb.bff, label %._crit_edge6321

bb.bff:                                           ; preds = %.epil.preheader
  %i.ivm = getelementptr inbounds nuw i8, ptr %i.ivj, i64 4
  store i32 0, ptr %i.ivm, align 4, !tbaa !926
  br label %._crit_edge6321

._crit_edge6321:                                  ; preds = %._crit_edge6321.loopexit.unr-lcssa, %bb.bff, %.epil.preheader, %.preheader5467, %sqlite3DbFree.exit4643
  %i.ivn = phi i32 [ %i.iur, %sqlite3DbFree.exit4643 ], [ 0, %.preheader5467 ], [ 0, %.epil.preheader ], [ 0, %bb.bff ], [ 0, %._crit_edge6321.loopexit.unr-lcssa ]
  %i.ivo = add nsw i32 %i.ivn, 1
  store i32 %i.ivo, ptr %i.iuq, align 4, !tbaa !926
  %i.ivp = load i32, ptr %i.hh, align 4, !tbaa !570
  %i.ivq = add i32 %i.ivp, 1
  store i32 %i.ivq, ptr %i.hh, align 4, !tbaa !570
  br label %.thread4755

.critedge:                                        ; preds = %bb.axv, %.lr.ph6269, %bb.sz, %bb.qf, %bb.py, %bb.im, %bb.cv, %bb.ce, %sqlite3VdbeMemSetNull.exit, %.preheader, %bb.i, %bb.amx, %bb.alb, %..si.unfold.true.jt13, %sqlite3VdbeRealValue.exit.i4211, %.split, %bb.pj, %bb.il, %out2Prerelease.exit4107, %sqlite3VdbeSorterCompare.exit, %bb.bez, %sqlite3VdbeDeleteAuxData.exit, %.loopexit5491, %bb.bcb, %bb.bbu, %bb.bbf, %bb.ayv, %bb.ayb, %sqlite3BtreeLockTable.exit, %bb.aya, %sqlite3BtreeIncrVacuum.exit, %sqlite3VdbeChangeEncoding.exit4505, %bb.avo, %bb.avn, %bb.avm, %sqlite3VdbeMemRelease.exit4473, %.loopexit5488, %bb.auf, %bb.ash, %.thread5219, %bb.ank, %bb.anj, %bb.amr, %bb.amq, %.thread5145, %sqlite3VdbeSorterRewind.exit.thread5096, %bb.agu, %bb.agv, %bb.agj, %bb.agk, %bb.aft, %bb.afu, %bb.afs, %bb.aeq, %bb.aet, %bb.aes, %bb.aer, %bb.ye, %.thread4836, %bb.ml, %bb.mk, %bb.mh, %bb.mb, %bb.mi, %bb.mc, %bb.hr, %.thread4745, %bb.hj, %bb.hl, %bb.hm, %bb.dl, %bb.dm, %bb.dz, %bb.de, %bb.bep, %bb.bdz, %bb.bdy, %bb.bdw, %bb.bdv, %.thread5357, %sqlite3VdbeMemSetNull.exit4581.thread, %bb.bbd, %.thread5322, %.thread5315, %sqlite3VtabCallDestroy.exit.thread, %bb.axu, %sqlite3VdbeMemSetInt64.exit4489.2, %bb.asv, %bb.asu, %bb.ast, %bb.arr, %.loopexit.i4396, %bb.aos, %.thread5212, %.thread5193, %.thread5190, %.thread5181, %sqlite3VdbeMemSetNull.exit4379.thread, %.thread5152, %.thread5142, %.thread5057, %.thread5045, %sqlite3VdbeSorterRowkey.exit.thread5030, %sqlite3BtreeTransferRow.exit.thread, %.thread4995, %.thread4991, %.thread4982, %bb.aaj, %.thread4964, %.thread4949, %.thread4899, %.thread4886, %.thread4873, %.thread4867, %sqlite3VdbeMemSetNull.exit4228.thread, %bb.lu, %bb.lt, %bb.lr, %bb.lq, %bb.lo, %bb.ln, %bb.kn, %bb.ke, %bb.kd, %bb.kb, %bb.ka, %bb.jx, %bb.jw, %bb.fu, %bb.ft, %bb.fq, %bb.fp, %bb.dd, %bb.dc, %bb.da, %bb.cz, %bb.cy, %.thread4710, %bb.ag, %sqlite3VdbeMemRelease.exit4563, %bb.azl, %bb.anh, %sqlite3BtreeTransferRow.exit, %bb.aak, %bb.yf, %bb.wt, %bb.lj, %sqlite3VdbeBooleanValue.exit4214, %sqlite3VdbeBooleanValue.exit4206, %bb.iu, %sqlite3VdbeMemIntegerify.exit4460, %bb.atv, %bb.aaf, %bb.aah, %bb.aag, %bb.jn, %bb.jo, %bb.gr, %bb.l, %.thread4755, %bb.o, %bb.p, %out2Prerelease.exit, %out2Prerelease.exit4096, %out2Prerelease.exit4098, %bb.bi, %bb.bo, %sqlite3VdbeMemSetNull.exit4150, %sqlite3VdbeMemIntegerify.exit, %bb.hc, %out2Prerelease.exit4280, %sqlite3VdbeFreeCursor.exit, %out2Prerelease.exit4312, %bb.aeu, %sqlite3UnlinkAndDeleteTable.exit, %sqlite3UnlinkAndDeleteIndex.exit, %bb.aru, %sqlite3AddInt64.exit4465, %bb.axx, %bb.axy, %out2Prerelease.exit4591, %sqlite3BtreeMaxPageCount.exit, %bb.bds, %filterHash.exit, %bb.m, %bb.n, %bb.q, %bb.bd, %bb.be, %out2Prerelease.exit4105, %bb.fn, %bb.he, %bb.hd, %.thread4732, %bb.ii, %bb.iy, %bb.iz, %bb.iw, %bb.ki, %sqlite3VdbeMemSetNull.exit4198, %bb.lb, %bb.ls, %bb.xi, %bb.abg, %bb.aoe, %bb.asz, %bb.ata, %bb.asx, %bb.ate, %bb.atf, %bb.atc, %bb.atd, %bb.atw, %bb.auc, %bb.aug, %bb.awx, %bb.axw, %sqlite3VtabCallDestroy.exit, %bb.bec, %bb.beb, %bb.h
  %.13177 = phi i32 [ %.03176, %bb.h ], [ %.03176, %.loopexit5491 ], [ %.03176, %sqlite3VdbeSorterCompare.exit ], [ %.03176, %bb.m ], [ %.03176, %sqlite3VdbeDeleteAuxData.exit ], [ %.03176, %bb.n ], [ %.03176, %.thread4755 ], [ %.03176, %bb.o ], [ %.03176, %bb.p ], [ %.03176, %bb.q ], [ %.03176, %bb.ag ], [ %.03176, %out2Prerelease.exit ], [ %.03176, %out2Prerelease.exit4096 ], [ %.03176, %out2Prerelease.exit4098 ], [ %.03176, %bb.be ], [ %.03176, %bb.bd ], [ %.03176, %out2Prerelease.exit4105 ], [ %.03176, %bb.l ], [ %.03176, %bb.bi ], [ %.03176, %bb.bo ], [ %.03176, %.thread4710 ], [ %.03176, %bb.bdz ], [ %.03176, %.preheader ], [ %.03176, %bb.atv ], [ %.03176, %bb.da ], [ %.03176, %out2Prerelease.exit4107 ], [ %.03176, %bb.de ], [ %.03176, %sqlite3VdbeMemSetNull.exit4150 ], [ %.03176, %bb.dd ], [ %.03176, %bb.fn ], [ %.03176, %bb.cv ], [ %.03176, %sqlite3VdbeMemIntegerify.exit ], [ %.03176, %bb.hc ], [ %.03176, %bb.he ], [ %.03176, %bb.hd ], [ %.03176, %.thread4732 ], [ %.03176, %bb.fu ], [ %.03176, %bb.ii ], [ %.03176, %bb.fq ], [ %.03176, %bb.iw ], [ %.03176, %bb.iy ], [ %.03176, %bb.iz ], [ %.03176, %bb.qf ], [ %.03176, %bb.dl ], [ %.03176, %bb.jx ], [ %.03176, %bb.kb ], [ %.03176, %bb.ki ], [ %.03176, %sqlite3VdbeMemSetNull.exit4198 ], [ %.03176, %bb.kn ], [ %.03176, %sqlite3VdbeBooleanValue.exit4206 ], [ %.03176, %sqlite3VdbeBooleanValue.exit4214 ], [ %.03176, %bb.lb ], [ %.03176, %bb.lj ], [ %.03176, %bb.ke ], [ %.03176, %bb.lo ], [ %.03176, %bb.ls ], [ %.03176, %bb.lr ], [ %.03176, %bb.hr ], [ %.03176, %bb.ml ], [ %.03176, %bb.mk ], [ %.03176, %bb.jn ], [ %.03176, %bb.amx ], [ %.03176, %.thread4836 ], [ %.03176, %.thread4867 ], [ %.03176, %out2Prerelease.exit4280 ], [ %.03176, %bb.wt ], [ %.03176, %bb.xi ], [ %.03176, %.thread4873 ], [ %.03176, %.thread4886 ], [ %.03176, %bb.mh ], [ %.03176, %bb.yf ], [ %.03176, %.thread4899 ], [ %.03176, %sqlite3VdbeFreeCursor.exit ], [ %.03176, %bb.ye ], [ %.03176, %.thread4964 ], [ %.03176, %bb.il ], [ %.03176, %.thread4949 ], [ %.03176, %.thread4982 ], [ %.03176, %bb.aak ], [ %.03176, %bb.abg ], [ %.03176, %out2Prerelease.exit4312 ], [ %.03176, %.thread4991 ], [ %i.don, %.thread4995 ], [ %.03176, %sqlite3BtreeTransferRow.exit ], [ %.03176, %bb.mb ], [ %.03176, %bb.aeu ], [ %.03176, %bb.bez ], [ %.03176, %sqlite3VdbeSorterRowkey.exit.thread5030 ], [ %i.ebj, %bb.aeq ], [ %.03176, %.thread5045 ], [ %.03176, %bb.aft ], [ %.03176, %.thread5057 ], [ %.03176, %bb.agj ], [ %.03176, %bb.agu ], [ %.03176, %bb.sz ], [ %.03176, %.thread5142 ], [ %.03176, %sqlite3VdbeSorterRewind.exit.thread5096 ], [ %.03176, %.thread5152 ], [ %.03176, %sqlite3VdbeMemSetNull.exit4379.thread ], [ %.03176, %.thread5145 ], [ %.03176, %..si.unfold.true.jt13 ], [ %.03176, %.thread5181 ], [ %.03176, %bb.anh ], [ %.03176, %bb.amr ], [ %.03176, %.thread5190 ], [ %.03176, %.thread5193 ], [ %.03176, %.thread5212 ], [ %.03176, %bb.aoe ], [ %.03176, %sqlite3UnlinkAndDeleteTable.exit ], [ %.03176, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.03176, %sqlite3BtreeTransferRow.exit.thread ], [ %.03176, %bb.arr ], [ %.03176, %bb.aru ], [ %.03176, %bb.ank ], [ %.03176, %bb.ash ], [ %.03176, %.loopexit.i4396 ], [ %.03176, %bb.asx ], [ %.03176, %bb.asz ], [ %.03176, %bb.ata ], [ %.03176, %bb.atd ], [ %.03176, %bb.atc ], [ %.03176, %bb.atf ], [ %.03176, %bb.ate ], [ %.03176, %bb.aaf ], [ %.03176, %bb.atw ], [ %.03176, %sqlite3AddInt64.exit4465 ], [ %.03176, %bb.auc ], [ %.03176, %bb.aug ], [ %.03176, %bb.auf ], [ %.03176, %sqlite3VdbeMemRelease.exit4473 ], [ %.03176, %sqlite3VdbeMemSetInt64.exit4489.2 ], [ %.03176, %bb.avo ], [ %.03176, %bb.awx ], [ %.03176, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.03176, %bb.axw ], [ %.03176, %sqlite3VdbeMemSetNull.exit ], [ %.03176, %bb.axx ], [ %.03176, %bb.axy ], [ %.03176, %sqlite3BtreeIncrVacuum.exit ], [ %.03176, %bb.azl ], [ %.03176, %sqlite3VdbeMemRelease.exit4563 ], [ %.03176, %sqlite3VtabCallDestroy.exit ], [ %.03176, %.thread5315 ], [ %.03176, %.thread5322 ], [ %.03176, %bb.bbd ], [ %.03176, %bb.ayv ], [ %.03176, %sqlite3VdbeMemSetNull.exit4581.thread ], [ %.03176, %bb.bbf ], [ %.03176, %bb.bbu ], [ %.03176, %bb.bcb ], [ %.03176, %out2Prerelease.exit4591 ], [ %.03176, %sqlite3BtreeMaxPageCount.exit ], [ %.03176, %sqlite3BtreeLockTable.exit ], [ %.03176, %bb.bds ], [ %.03176, %.thread5357 ], [ %.03176, %bb.bdw ], [ %.03176, %bb.beb ], [ %.03176, %bb.bec ], [ %.03176, %filterHash.exit ], [ %.03176, %bb.bep ], [ %.03176, %bb.gr ], [ %.03176, %sqlite3VdbeMemIntegerify.exit4460 ], [ %.03176, %bb.iu ], [ %.03176, %bb.jo ], [ %.03176, %bb.aag ], [ %.03176, %bb.aah ], [ %.03176, %bb.cy ], [ %.03176, %bb.cz ], [ %.03176, %bb.dc ], [ %.03176, %bb.fp ], [ %.03176, %bb.ft ], [ %.03176, %bb.hj ], [ %.03176, %.thread4745 ], [ %.03176, %bb.jw ], [ %.03176, %bb.ka ], [ %.03176, %bb.kd ], [ %.03176, %bb.ln ], [ %.03176, %bb.lq ], [ %.03176, %bb.lt ], [ %.03176, %bb.lu ], [ %.03176, %sqlite3VdbeMemSetNull.exit4228.thread ], [ %.03176, %bb.pj ], [ %.03176, %bb.aaj ], [ %.03176, %bb.aos ], [ %.03176, %bb.ast ], [ %.03176, %bb.asu ], [ %.03176, %bb.asv ], [ %.03176, %bb.axu ], [ %.03176, %bb.ce ], [ %.03176, %bb.ayb ], [ %.03176, %sqlite3VtabCallDestroy.exit.thread ], [ %.03176, %bb.bdv ], [ %.03176, %bb.bdy ], [ %.03176, %bb.dz ], [ %.03176, %bb.dm ], [ %.03176, %bb.hm ], [ %.03176, %bb.hl ], [ %.03176, %bb.mc ], [ %.03176, %bb.mi ], [ %i.ebj, %bb.aer ], [ %i.ebj, %bb.aes ], [ %i.ebj, %bb.aet ], [ %.03176, %bb.afs ], [ %.03176, %bb.afu ], [ %.03176, %bb.agk ], [ %.03176, %bb.agv ], [ %.03176, %bb.amq ], [ %.03176, %bb.anj ], [ %.03176, %.thread5219 ], [ %.03176, %.loopexit5488 ], [ %.03176, %bb.avm ], [ %.03176, %bb.avn ], [ %.03176, %bb.aya ], [ %.03176, %bb.im ], [ %.03176, %bb.alb ], [ %.03176, %.lr.ph6269 ], [ %.03176, %bb.py ], [ %.03176, %sqlite3VdbeRealValue.exit.i4211 ], [ %.03176, %.split ], [ %.03176, %bb.i ], [ %.03176, %bb.axv ]
  %.43076 = phi ptr [ %.03072, %bb.h ], [ %.03072, %.loopexit5491 ], [ %.03072, %sqlite3VdbeSorterCompare.exit ], [ %.03072, %bb.m ], [ %.03072, %sqlite3VdbeDeleteAuxData.exit ], [ %.03072, %bb.n ], [ %.03072, %.thread4755 ], [ %.03072, %bb.o ], [ %.03072, %bb.p ], [ %.03072, %bb.q ], [ %i.nb, %bb.ag ], [ %.03072, %out2Prerelease.exit ], [ %.03072, %out2Prerelease.exit4096 ], [ %.03072, %out2Prerelease.exit4098 ], [ %.03072, %bb.be ], [ %.03072, %bb.bd ], [ %.03072, %out2Prerelease.exit4105 ], [ %.03072, %bb.l ], [ %.03072, %bb.bi ], [ %.03072, %bb.bo ], [ %.03072, %.thread4710 ], [ %.03072, %bb.bdz ], [ %.13073, %.preheader ], [ %.03072, %bb.atv ], [ %.03072, %bb.da ], [ %.03072, %out2Prerelease.exit4107 ], [ %.03072, %bb.de ], [ %.03072, %sqlite3VdbeMemSetNull.exit4150 ], [ %.03072, %bb.dd ], [ %.03072, %bb.fn ], [ %.03072, %bb.cv ], [ %.03072, %sqlite3VdbeMemIntegerify.exit ], [ %.03072, %bb.hc ], [ %.03072, %bb.he ], [ %.03072, %bb.hd ], [ %.03072, %.thread4732 ], [ %.03072, %bb.fu ], [ %.03072, %bb.ii ], [ %.03072, %bb.fq ], [ %.03072, %bb.iw ], [ %.03072, %bb.iy ], [ %.03072, %bb.iz ], [ %.03072, %bb.qf ], [ %.03072, %bb.dl ], [ %.03072, %bb.jx ], [ %.03072, %bb.kb ], [ %.03072, %bb.ki ], [ %.03072, %sqlite3VdbeMemSetNull.exit4198 ], [ %.03072, %bb.kn ], [ %.03072, %sqlite3VdbeBooleanValue.exit4206 ], [ %.03072, %sqlite3VdbeBooleanValue.exit4214 ], [ %.03072, %bb.lb ], [ %.03072, %bb.lj ], [ %.03072, %bb.ke ], [ %.03072, %bb.lo ], [ %.03072, %bb.ls ], [ %.03072, %bb.lr ], [ %.03072, %bb.hr ], [ %.03072, %bb.ml ], [ %.03072, %bb.mk ], [ %.03072, %bb.jn ], [ %.03072, %bb.amx ], [ %.03072, %.thread4836 ], [ %.03072, %.thread4867 ], [ %.03072, %out2Prerelease.exit4280 ], [ %.03072, %bb.wt ], [ %.03072, %bb.xi ], [ %.03072, %.thread4873 ], [ %.03072, %.thread4886 ], [ %.03072, %bb.mh ], [ %.03072, %bb.yf ], [ %.03072, %.thread4899 ], [ %.03072, %sqlite3VdbeFreeCursor.exit ], [ %.03072, %bb.ye ], [ %.03072, %.thread4964 ], [ %.03072, %bb.il ], [ %.03072, %.thread4949 ], [ %.03072, %.thread4982 ], [ %.03072, %bb.aak ], [ %.03072, %bb.abg ], [ %.03072, %out2Prerelease.exit4312 ], [ %.03072, %.thread4991 ], [ %.03072, %.thread4995 ], [ %.03072, %sqlite3BtreeTransferRow.exit ], [ %.03072, %bb.mb ], [ %.03072, %bb.aeu ], [ %.03072, %bb.bez ], [ %.03072, %sqlite3VdbeSorterRowkey.exit.thread5030 ], [ %.03072, %bb.aeq ], [ %.03072, %.thread5045 ], [ %.03072, %bb.aft ], [ %.03072, %.thread5057 ], [ %.03072, %bb.agj ], [ %.03072, %bb.agu ], [ %.03072, %bb.sz ], [ %.03072, %.thread5142 ], [ %.03072, %sqlite3VdbeSorterRewind.exit.thread5096 ], [ %.03072, %.thread5152 ], [ %.03072, %sqlite3VdbeMemSetNull.exit4379.thread ], [ %.03072, %.thread5145 ], [ %.03072, %..si.unfold.true.jt13 ], [ %.03072, %.thread5181 ], [ %.03072, %bb.anh ], [ %.03072, %bb.amr ], [ %.03072, %.thread5190 ], [ %.03072, %.thread5193 ], [ %.03072, %.thread5212 ], [ %.03072, %bb.aoe ], [ %.03072, %sqlite3UnlinkAndDeleteTable.exit ], [ %.03072, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.03072, %sqlite3BtreeTransferRow.exit.thread ], [ %.03072, %bb.arr ], [ %.03072, %bb.aru ], [ %.03072, %bb.ank ], [ %.03072, %bb.ash ], [ %.03072, %.loopexit.i4396 ], [ %.03072, %bb.asx ], [ %.03072, %bb.asz ], [ %.03072, %bb.ata ], [ %.03072, %bb.atd ], [ %.03072, %bb.atc ], [ %.03072, %bb.atf ], [ %.03072, %bb.ate ], [ %.03072, %bb.aaf ], [ %.03072, %bb.atw ], [ %.03072, %sqlite3AddInt64.exit4465 ], [ %.03072, %bb.auc ], [ %.03072, %bb.aug ], [ %.03072, %bb.auf ], [ %.03072, %sqlite3VdbeMemRelease.exit4473 ], [ %.03072, %sqlite3VdbeMemSetInt64.exit4489.2 ], [ %.03072, %bb.avo ], [ %.03072, %bb.awx ], [ %.03072, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.03072, %bb.axw ], [ %.03072, %sqlite3VdbeMemSetNull.exit ], [ %.03072, %bb.axx ], [ %.03072, %bb.axy ], [ %.03072, %sqlite3BtreeIncrVacuum.exit ], [ %.03072, %bb.azl ], [ %.03072, %sqlite3VdbeMemRelease.exit4563 ], [ %.03072, %sqlite3VtabCallDestroy.exit ], [ %.03072, %.thread5315 ], [ %.03072, %.thread5322 ], [ %.03072, %bb.bbd ], [ %.03072, %bb.ayv ], [ %.03072, %sqlite3VdbeMemSetNull.exit4581.thread ], [ %.03072, %bb.bbf ], [ %.03072, %bb.bbu ], [ %.03072, %bb.bcb ], [ %.03072, %out2Prerelease.exit4591 ], [ %.03072, %sqlite3BtreeMaxPageCount.exit ], [ %.03072, %sqlite3BtreeLockTable.exit ], [ %.03072, %bb.bds ], [ %.03072, %.thread5357 ], [ %.03072, %bb.bdw ], [ %.03072, %bb.beb ], [ %.03072, %bb.bec ], [ %.03072, %filterHash.exit ], [ %.03072, %bb.bep ], [ %.03072, %bb.gr ], [ %.03072, %sqlite3VdbeMemIntegerify.exit4460 ], [ %.03072, %bb.iu ], [ %.03072, %bb.jo ], [ %.03072, %bb.aag ], [ %.03072, %bb.aah ], [ %.03072, %bb.cy ], [ %.03072, %bb.cz ], [ %.03072, %bb.dc ], [ %.03072, %bb.fp ], [ %.03072, %bb.ft ], [ %.03072, %bb.hj ], [ %.03072, %.thread4745 ], [ %.03072, %bb.jw ], [ %.03072, %bb.ka ], [ %.03072, %bb.kd ], [ %.03072, %bb.ln ], [ %.03072, %bb.lq ], [ %.03072, %bb.lt ], [ %.03072, %bb.lu ], [ %.03072, %sqlite3VdbeMemSetNull.exit4228.thread ], [ %.03072, %bb.pj ], [ %.03072, %bb.aaj ], [ %.03072, %bb.aos ], [ %.03072, %bb.ast ], [ %.03072, %bb.asu ], [ %.03072, %bb.asv ], [ %.03072, %bb.axu ], [ %.03072, %bb.ce ], [ %.03072, %bb.ayb ], [ %.03072, %sqlite3VtabCallDestroy.exit.thread ], [ %.03072, %bb.bdv ], [ %.03072, %bb.bdy ], [ %.03072, %bb.dz ], [ %.03072, %bb.dm ], [ %.03072, %bb.hm ], [ %.03072, %bb.hl ], [ %.03072, %bb.mc ], [ %.03072, %bb.mi ], [ %.03072, %bb.aer ], [ %.03072, %bb.aes ], [ %.03072, %bb.aet ], [ %.03072, %bb.afs ], [ %.03072, %bb.afu ], [ %.03072, %bb.agk ], [ %.03072, %bb.agv ], [ %.03072, %bb.amq ], [ %.03072, %bb.anj ], [ %.03072, %.thread5219 ], [ %.03072, %.loopexit5488 ], [ %.03072, %bb.avm ], [ %.03072, %bb.avn ], [ %.03072, %bb.aya ], [ %.03072, %bb.im ], [ %.03072, %bb.alb ], [ %.03072, %.lr.ph6269 ], [ %.03072, %bb.py ], [ %.03072, %sqlite3VdbeRealValue.exit.i4211 ], [ %.03072, %.split ], [ %.13073, %bb.i ], [ %.03072, %bb.axv ]
  %.33055 = phi i64 [ %.13053, %bb.h ], [ %.13053, %.loopexit5491 ], [ %.13053, %sqlite3VdbeSorterCompare.exit ], [ %.13053, %bb.m ], [ %.13053, %sqlite3VdbeDeleteAuxData.exit ], [ %.13053, %bb.n ], [ %.13053, %.thread4755 ], [ %.13053, %bb.o ], [ %.13053, %bb.p ], [ %.13053, %bb.q ], [ %.13053, %bb.ag ], [ %.13053, %out2Prerelease.exit ], [ %.13053, %out2Prerelease.exit4096 ], [ %.13053, %out2Prerelease.exit4098 ], [ %.13053, %bb.be ], [ %.13053, %bb.bd ], [ %.13053, %out2Prerelease.exit4105 ], [ %.13053, %bb.l ], [ %.13053, %bb.bi ], [ %.13053, %bb.bo ], [ %.13053, %.thread4710 ], [ %.13053, %bb.bdz ], [ %.23054, %.preheader ], [ %.13053, %bb.atv ], [ %.13053, %bb.da ], [ %.13053, %out2Prerelease.exit4107 ], [ %.13053, %bb.de ], [ %.13053, %sqlite3VdbeMemSetNull.exit4150 ], [ %.13053, %bb.dd ], [ %.13053, %bb.fn ], [ %.13053, %bb.cv ], [ %.13053, %sqlite3VdbeMemIntegerify.exit ], [ %.13053, %bb.hc ], [ %.13053, %bb.he ], [ %.13053, %bb.hd ], [ %.13053, %.thread4732 ], [ %.13053, %bb.fu ], [ %.13053, %bb.ii ], [ %.13053, %bb.fq ], [ %.13053, %bb.iw ], [ %.13053, %bb.iy ], [ %.13053, %bb.iz ], [ %.13053, %bb.qf ], [ %.13053, %bb.dl ], [ %.13053, %bb.jx ], [ %.13053, %bb.kb ], [ %.13053, %bb.ki ], [ %.13053, %sqlite3VdbeMemSetNull.exit4198 ], [ %.13053, %bb.kn ], [ %.13053, %sqlite3VdbeBooleanValue.exit4206 ], [ %.13053, %sqlite3VdbeBooleanValue.exit4214 ], [ %.13053, %bb.lb ], [ %.13053, %bb.lj ], [ %.13053, %bb.ke ], [ %.13053, %bb.lo ], [ %.13053, %bb.ls ], [ %.13053, %bb.lr ], [ %.13053, %bb.hr ], [ %.13053, %bb.ml ], [ %.13053, %bb.mk ], [ %.13053, %bb.jn ], [ %.13053, %bb.amx ], [ %.13053, %.thread4836 ], [ %.13053, %.thread4867 ], [ %.13053, %out2Prerelease.exit4280 ], [ %.13053, %bb.wt ], [ %.13053, %bb.xi ], [ %.13053, %.thread4873 ], [ %.13053, %.thread4886 ], [ %.13053, %bb.mh ], [ %.13053, %bb.yf ], [ %.13053, %.thread4899 ], [ %.13053, %sqlite3VdbeFreeCursor.exit ], [ %.13053, %bb.ye ], [ %.13053, %.thread4964 ], [ %.13053, %bb.il ], [ %.13053, %.thread4949 ], [ %.13053, %.thread4982 ], [ %.13053, %bb.aak ], [ %.13053, %bb.abg ], [ %.13053, %out2Prerelease.exit4312 ], [ %.13053, %.thread4991 ], [ %.13053, %.thread4995 ], [ %.13053, %sqlite3BtreeTransferRow.exit ], [ %.13053, %bb.mb ], [ %.13053, %bb.aeu ], [ %.13053, %bb.bez ], [ %.13053, %sqlite3VdbeSorterRowkey.exit.thread5030 ], [ %.13053, %bb.aeq ], [ %.13053, %.thread5045 ], [ %.13053, %bb.aft ], [ %.13053, %.thread5057 ], [ %.13053, %bb.agj ], [ %.13053, %bb.agu ], [ %.13053, %bb.sz ], [ %.13053, %.thread5142 ], [ %.13053, %sqlite3VdbeSorterRewind.exit.thread5096 ], [ %.13053, %.thread5152 ], [ %.13053, %sqlite3VdbeMemSetNull.exit4379.thread ], [ %.13053, %.thread5145 ], [ %.13053, %..si.unfold.true.jt13 ], [ %.13053, %.thread5181 ], [ %.13053, %bb.anh ], [ %.13053, %bb.amr ], [ %.13053, %.thread5190 ], [ %.13053, %.thread5193 ], [ %.13053, %.thread5212 ], [ %.13053, %bb.aoe ], [ %.13053, %sqlite3UnlinkAndDeleteTable.exit ], [ %.13053, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.13053, %sqlite3BtreeTransferRow.exit.thread ], [ %.13053, %bb.arr ], [ %.13053, %bb.aru ], [ %.13053, %bb.ank ], [ %.13053, %bb.ash ], [ %.13053, %.loopexit.i4396 ], [ %.13053, %bb.asx ], [ %.13053, %bb.asz ], [ %.13053, %bb.ata ], [ %.13053, %bb.atd ], [ %.13053, %bb.atc ], [ %.13053, %bb.atf ], [ %.13053, %bb.ate ], [ %.13053, %bb.aaf ], [ %.13053, %bb.atw ], [ %.13053, %sqlite3AddInt64.exit4465 ], [ %.13053, %bb.auc ], [ %.13053, %bb.aug ], [ %.13053, %bb.auf ], [ %.13053, %sqlite3VdbeMemRelease.exit4473 ], [ %.13053, %sqlite3VdbeMemSetInt64.exit4489.2 ], [ %.13053, %bb.avo ], [ %.13053, %bb.awx ], [ %.13053, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.13053, %bb.axw ], [ %.13053, %sqlite3VdbeMemSetNull.exit ], [ %.13053, %bb.axx ], [ %.13053, %bb.axy ], [ %.13053, %sqlite3BtreeIncrVacuum.exit ], [ %.13053, %bb.azl ], [ %.13053, %sqlite3VdbeMemRelease.exit4563 ], [ %.13053, %sqlite3VtabCallDestroy.exit ], [ %.13053, %.thread5315 ], [ %.13053, %.thread5322 ], [ %.13053, %bb.bbd ], [ %.13053, %bb.ayv ], [ %.13053, %sqlite3VdbeMemSetNull.exit4581.thread ], [ %.13053, %bb.bbf ], [ %.13053, %bb.bbu ], [ %.13053, %bb.bcb ], [ %.13053, %out2Prerelease.exit4591 ], [ %.13053, %sqlite3BtreeMaxPageCount.exit ], [ %.13053, %sqlite3BtreeLockTable.exit ], [ %.13053, %bb.bds ], [ %.13053, %.thread5357 ], [ %.13053, %bb.bdw ], [ %.13053, %bb.beb ], [ %.13053, %bb.bec ], [ %.13053, %filterHash.exit ], [ %.13053, %bb.bep ], [ %.13053, %bb.gr ], [ %.13053, %sqlite3VdbeMemIntegerify.exit4460 ], [ %.13053, %bb.iu ], [ %.13053, %bb.jo ], [ %.13053, %bb.aag ], [ %.13053, %bb.aah ], [ %.13053, %bb.cy ], [ %.13053, %bb.cz ], [ %.13053, %bb.dc ], [ %.13053, %bb.fp ], [ %.13053, %bb.ft ], [ %.13053, %bb.hj ], [ %.13053, %.thread4745 ], [ %.13053, %bb.jw ], [ %.13053, %bb.ka ], [ %.13053, %bb.kd ], [ %.13053, %bb.ln ], [ %.13053, %bb.lq ], [ %.13053, %bb.lt ], [ %.13053, %bb.lu ], [ %.13053, %sqlite3VdbeMemSetNull.exit4228.thread ], [ %.13053, %bb.pj ], [ %.13053, %bb.aaj ], [ %.13053, %bb.aos ], [ %.13053, %bb.ast ], [ %.13053, %bb.asu ], [ %.13053, %bb.asv ], [ %.13053, %bb.axu ], [ %.13053, %bb.ce ], [ %.13053, %bb.ayb ], [ %.13053, %sqlite3VtabCallDestroy.exit.thread ], [ %.13053, %bb.bdv ], [ %.13053, %bb.bdy ], [ %.13053, %bb.dz ], [ %.13053, %bb.dm ], [ %.13053, %bb.hm ], [ %.13053, %bb.hl ], [ %.13053, %bb.mc ], [ %.13053, %bb.mi ], [ %.13053, %bb.aer ], [ %.13053, %bb.aes ], [ %.13053, %bb.aet ], [ %.13053, %bb.afs ], [ %.13053, %bb.afu ], [ %.13053, %bb.agk ], [ %.13053, %bb.agv ], [ %.13053, %bb.amq ], [ %.13053, %bb.anj ], [ %.13053, %.thread5219 ], [ %.13053, %.loopexit5488 ], [ %.13053, %bb.avm ], [ %.13053, %bb.avn ], [ %.13053, %bb.aya ], [ %.13053, %bb.im ], [ %.13053, %bb.alb ], [ %.13053, %.lr.ph6269 ], [ %.13053, %bb.py ], [ %.13053, %sqlite3VdbeRealValue.exit.i4211 ], [ %.13053, %.split ], [ %.23054, %bb.i ], [ %.13053, %bb.axv ]
  %.73025 = phi i32 [ %.03018, %bb.h ], [ %.03018, %.loopexit5491 ], [ %.03018, %sqlite3VdbeSorterCompare.exit ], [ %.03018, %bb.m ], [ %.03018, %sqlite3VdbeDeleteAuxData.exit ], [ %.03018, %bb.n ], [ %.13019, %.thread4755 ], [ %.03018, %bb.o ], [ %.03018, %bb.p ], [ %.03018, %bb.q ], [ %.03018, %bb.ag ], [ %.03018, %out2Prerelease.exit ], [ %.03018, %out2Prerelease.exit4096 ], [ %.03018, %out2Prerelease.exit4098 ], [ %.03018, %bb.be ], [ %.03018, %bb.bd ], [ %.03018, %out2Prerelease.exit4105 ], [ %.03018, %bb.l ], [ %.03018, %bb.bi ], [ %.03018, %bb.bo ], [ %.03018, %.thread4710 ], [ %.03018, %bb.bdz ], [ %.03018, %.preheader ], [ %.03018, %bb.atv ], [ %.03018, %bb.da ], [ %.03018, %out2Prerelease.exit4107 ], [ %.03018, %bb.de ], [ %.03018, %sqlite3VdbeMemSetNull.exit4150 ], [ %.03018, %bb.dd ], [ %.03018, %bb.fn ], [ %.03018, %bb.cv ], [ %.03018, %sqlite3VdbeMemIntegerify.exit ], [ %.03018, %bb.hc ], [ %.03018, %bb.he ], [ %.03018, %bb.hd ], [ %.03018, %.thread4732 ], [ %.03018, %bb.fu ], [ %.03018, %bb.ii ], [ %.03018, %bb.fq ], [ %.03018, %bb.iw ], [ 0, %bb.iy ], [ %.03018, %bb.iz ], [ %.03018, %bb.qf ], [ %.03018, %bb.dl ], [ %.03018, %bb.jx ], [ %.03018, %bb.kb ], [ %.03018, %bb.ki ], [ %.03018, %sqlite3VdbeMemSetNull.exit4198 ], [ %.03018, %bb.kn ], [ %.03018, %sqlite3VdbeBooleanValue.exit4206 ], [ %.03018, %sqlite3VdbeBooleanValue.exit4214 ], [ %.03018, %bb.lb ], [ %.03018, %bb.lj ], [ %.03018, %bb.ke ], [ %.03018, %bb.lo ], [ %.03018, %bb.ls ], [ %.03018, %bb.lr ], [ 1, %bb.hr ], [ %.03018, %bb.ml ], [ %.03018, %bb.mk ], [ %.03018, %bb.jn ], [ %.03018, %bb.amx ], [ %.03018, %.thread4836 ], [ %.03018, %.thread4867 ], [ %.03018, %out2Prerelease.exit4280 ], [ %.03018, %bb.wt ], [ %.03018, %bb.xi ], [ %.03018, %.thread4873 ], [ %.03018, %.thread4886 ], [ %.03018, %bb.mh ], [ %.03018, %bb.yf ], [ %.03018, %.thread4899 ], [ %.03018, %sqlite3VdbeFreeCursor.exit ], [ %.03018, %bb.ye ], [ %.03018, %.thread4964 ], [ %.03018, %bb.il ], [ %.03018, %.thread4949 ], [ %.03018, %.thread4982 ], [ %.03018, %bb.aak ], [ %.03018, %bb.abg ], [ %.03018, %out2Prerelease.exit4312 ], [ %.03018, %.thread4991 ], [ %.03018, %.thread4995 ], [ %.03018, %sqlite3BtreeTransferRow.exit ], [ %.03018, %bb.mb ], [ %.03018, %bb.aeu ], [ %.03018, %bb.bez ], [ %.03018, %sqlite3VdbeSorterRowkey.exit.thread5030 ], [ %.03018, %bb.aeq ], [ %.03018, %.thread5045 ], [ %.03018, %bb.aft ], [ %.03018, %.thread5057 ], [ %.03018, %bb.agj ], [ %.03018, %bb.agu ], [ %.03018, %bb.sz ], [ %.03018, %.thread5142 ], [ %.03018, %sqlite3VdbeSorterRewind.exit.thread5096 ], [ %.03018, %.thread5152 ], [ %.03018, %sqlite3VdbeMemSetNull.exit4379.thread ], [ %.03018, %.thread5145 ], [ %.03018, %..si.unfold.true.jt13 ], [ %.03018, %.thread5181 ], [ %.03018, %bb.anh ], [ %.03018, %bb.amr ], [ %.03018, %.thread5190 ], [ %.03018, %.thread5193 ], [ %.03018, %.thread5212 ], [ %.03018, %bb.aoe ], [ %.03018, %sqlite3UnlinkAndDeleteTable.exit ], [ %.03018, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.03018, %sqlite3BtreeTransferRow.exit.thread ], [ %.03018, %bb.arr ], [ %.03018, %bb.aru ], [ %.03018, %bb.ank ], [ %.03018, %bb.ash ], [ %.03018, %.loopexit.i4396 ], [ %.03018, %bb.asx ], [ %.03018, %bb.asz ], [ %.03018, %bb.ata ], [ %.03018, %bb.atd ], [ %.03018, %bb.atc ], [ %.03018, %bb.atf ], [ %.03018, %bb.ate ], [ %.03018, %bb.aaf ], [ %.03018, %bb.atw ], [ %.03018, %sqlite3AddInt64.exit4465 ], [ %.03018, %bb.auc ], [ %.03018, %bb.aug ], [ %.03018, %bb.auf ], [ %.03018, %sqlite3VdbeMemRelease.exit4473 ], [ %.03018, %sqlite3VdbeMemSetInt64.exit4489.2 ], [ %.03018, %bb.avo ], [ %.03018, %bb.awx ], [ %.03018, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.03018, %bb.axw ], [ %.03018, %sqlite3VdbeMemSetNull.exit ], [ %.03018, %bb.axx ], [ %.03018, %bb.axy ], [ %.03018, %sqlite3BtreeIncrVacuum.exit ], [ %.03018, %bb.azl ], [ %.03018, %sqlite3VdbeMemRelease.exit4563 ], [ %.03018, %sqlite3VtabCallDestroy.exit ], [ %.03018, %.thread5315 ], [ %.03018, %.thread5322 ], [ %.03018, %bb.bbd ], [ %.03018, %bb.ayv ], [ %.03018, %sqlite3VdbeMemSetNull.exit4581.thread ], [ %.03018, %bb.bbf ], [ %.03018, %bb.bbu ], [ %.03018, %bb.bcb ], [ %.03018, %out2Prerelease.exit4591 ], [ %.03018, %sqlite3BtreeMaxPageCount.exit ], [ %.03018, %sqlite3BtreeLockTable.exit ], [ %.03018, %bb.bds ], [ %.03018, %.thread5357 ], [ %.03018, %bb.bdw ], [ %.03018, %bb.beb ], [ %.03018, %bb.bec ], [ %.03018, %filterHash.exit ], [ %.03018, %bb.bep ], [ %.03018, %bb.gr ], [ %.03018, %sqlite3VdbeMemIntegerify.exit4460 ], [ %spec.select3900, %bb.iu ], [ %.03018, %bb.jo ], [ %.03018, %bb.aag ], [ %.03018, %bb.aah ], [ %.03018, %bb.cy ], [ %.03018, %bb.cz ], [ %.03018, %bb.dc ], [ %.03018, %bb.fp ], [ %.03018, %bb.ft ], [ 1, %bb.hj ], [ %.031644740, %.thread4745 ], [ %.03018, %bb.jw ], [ %.03018, %bb.ka ], [ %.03018, %bb.kd ], [ %.03018, %bb.ln ], [ %.03018, %bb.lq ], [ %.03018, %bb.lt ], [ %.03018, %bb.lu ], [ %.03018, %sqlite3VdbeMemSetNull.exit4228.thread ], [ %.03018, %bb.pj ], [ %.03018, %bb.aaj ], [ %.03018, %bb.aos ], [ %.03018, %bb.ast ], [ %.03018, %bb.asu ], [ %.03018, %bb.asv ], [ %.03018, %bb.axu ], [ %.03018, %bb.ce ], [ %.03018, %bb.ayb ], [ %.03018, %sqlite3VtabCallDestroy.exit.thread ], [ %.03018, %bb.bdv ], [ %.03018, %bb.bdy ], [ %.03018, %bb.dz ], [ %.03018, %bb.dm ], [ 0, %bb.hm ], [ -1, %bb.hl ], [ %.03018, %bb.mc ], [ %.03018, %bb.mi ], [ %.03018, %bb.aer ], [ %.03018, %bb.aes ], [ %.03018, %bb.aet ], [ %.03018, %bb.afs ], [ %.03018, %bb.afu ], [ %.03018, %bb.agk ], [ %.03018, %bb.agv ], [ %.03018, %bb.amq ], [ %.03018, %bb.anj ], [ %.03018, %.thread5219 ], [ %.03018, %.loopexit5488 ], [ %.03018, %bb.avm ], [ %.03018, %bb.avn ], [ %.03018, %bb.aya ], [ 0, %bb.im ], [ %.03018, %bb.alb ], [ %.03018, %.lr.ph6269 ], [ %.03018, %bb.py ], [ %.03018, %sqlite3VdbeRealValue.exit.i4211 ], [ %.03018, %.split ], [ %.03018, %bb.i ], [ %.03018, %bb.axv ]
  %.33004 = phi i8 [ %.03001, %bb.h ], [ %.03001, %.loopexit5491 ], [ %.03001, %sqlite3VdbeSorterCompare.exit ], [ %.03001, %bb.m ], [ %.03001, %sqlite3VdbeDeleteAuxData.exit ], [ %.03001, %bb.n ], [ %.03001, %.thread4755 ], [ %.03001, %bb.o ], [ %.03001, %bb.p ], [ %.03001, %bb.q ], [ %.03001, %bb.ag ], [ %.03001, %out2Prerelease.exit ], [ %.03001, %out2Prerelease.exit4096 ], [ %.03001, %out2Prerelease.exit4098 ], [ %.03001, %bb.be ], [ %.03001, %bb.bd ], [ %.03001, %out2Prerelease.exit4105 ], [ %.03001, %bb.l ], [ %.03001, %bb.bi ], [ %.03001, %bb.bo ], [ %.03001, %.thread4710 ], [ %.03001, %bb.bdz ], [ %.03001, %.preheader ], [ %.03001, %bb.atv ], [ %.03001, %bb.da ], [ %.03001, %out2Prerelease.exit4107 ], [ %.03001, %bb.de ], [ %.03001, %sqlite3VdbeMemSetNull.exit4150 ], [ %.03001, %bb.dd ], [ %.03001, %bb.fn ], [ %.03001, %bb.cv ], [ %.03001, %sqlite3VdbeMemIntegerify.exit ], [ %.03001, %bb.hc ], [ %.03001, %bb.he ], [ %.03001, %bb.hd ], [ %.03001, %.thread4732 ], [ %.03001, %bb.fu ], [ %.03001, %bb.ii ], [ %.03001, %bb.fq ], [ %.03001, %bb.iw ], [ %.03001, %bb.iy ], [ %.03001, %bb.iz ], [ %.03001, %bb.qf ], [ %.03001, %bb.dl ], [ %.03001, %bb.jx ], [ %.03001, %bb.kb ], [ %.03001, %bb.ki ], [ %.03001, %sqlite3VdbeMemSetNull.exit4198 ], [ %.03001, %bb.kn ], [ %.03001, %sqlite3VdbeBooleanValue.exit4206 ], [ %.03001, %sqlite3VdbeBooleanValue.exit4214 ], [ %.03001, %bb.lb ], [ %.03001, %bb.lj ], [ %.03001, %bb.ke ], [ %.03001, %bb.lo ], [ %.03001, %bb.ls ], [ %.03001, %bb.lr ], [ %.03001, %bb.hr ], [ %.03001, %bb.ml ], [ %.03001, %bb.mk ], [ %.03001, %bb.jn ], [ %.03001, %bb.amx ], [ %.03001, %.thread4836 ], [ %.03001, %.thread4867 ], [ %.03001, %out2Prerelease.exit4280 ], [ %.03001, %bb.wt ], [ %.03001, %bb.xi ], [ %.03001, %.thread4873 ], [ %.03001, %.thread4886 ], [ %.03001, %bb.mh ], [ %.03001, %bb.yf ], [ %.03001, %.thread4899 ], [ %.03001, %sqlite3VdbeFreeCursor.exit ], [ %.03001, %bb.ye ], [ %.03001, %.thread4964 ], [ %.03001, %bb.il ], [ %.03001, %.thread4949 ], [ %.03001, %.thread4982 ], [ %.03001, %bb.aak ], [ %.03001, %bb.abg ], [ %.03001, %out2Prerelease.exit4312 ], [ %.03001, %.thread4991 ], [ %.03001, %.thread4995 ], [ %.03001, %sqlite3BtreeTransferRow.exit ], [ %.03001, %bb.mb ], [ %.03001, %bb.aeu ], [ %.03001, %bb.bez ], [ %.03001, %sqlite3VdbeSorterRowkey.exit.thread5030 ], [ %.03001, %bb.aeq ], [ %.03001, %.thread5045 ], [ %.03001, %bb.aft ], [ %.03001, %.thread5057 ], [ %.03001, %bb.agj ], [ %.03001, %bb.agu ], [ %.03001, %bb.sz ], [ %.03001, %.thread5142 ], [ %.03001, %sqlite3VdbeSorterRewind.exit.thread5096 ], [ %.03001, %.thread5152 ], [ %.03001, %sqlite3VdbeMemSetNull.exit4379.thread ], [ %.03001, %.thread5145 ], [ %.03001, %..si.unfold.true.jt13 ], [ %.23003.ph, %.thread5181 ], [ %.03001, %bb.anh ], [ %.03001, %bb.amr ], [ %.03001, %.thread5190 ], [ %.03001, %.thread5193 ], [ %.03001, %.thread5212 ], [ %.03001, %bb.aoe ], [ %.03001, %sqlite3UnlinkAndDeleteTable.exit ], [ %.03001, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.03001, %sqlite3BtreeTransferRow.exit.thread ], [ %.03001, %bb.arr ], [ %.03001, %bb.aru ], [ %.03001, %bb.ank ], [ %.03001, %bb.ash ], [ %.03001, %.loopexit.i4396 ], [ %.03001, %bb.asx ], [ %.03001, %bb.asz ], [ %.03001, %bb.ata ], [ %.03001, %bb.atd ], [ %.03001, %bb.atc ], [ %.03001, %bb.atf ], [ %.03001, %bb.ate ], [ %.03001, %bb.aaf ], [ %.03001, %bb.atw ], [ %.03001, %sqlite3AddInt64.exit4465 ], [ %.03001, %bb.auc ], [ %.03001, %bb.aug ], [ %.03001, %bb.auf ], [ %.03001, %sqlite3VdbeMemRelease.exit4473 ], [ %.03001, %sqlite3VdbeMemSetInt64.exit4489.2 ], [ %.03001, %bb.avo ], [ %.03001, %bb.awx ], [ %.03001, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.03001, %bb.axw ], [ %.03001, %sqlite3VdbeMemSetNull.exit ], [ %.03001, %bb.axx ], [ %.03001, %bb.axy ], [ %.03001, %sqlite3BtreeIncrVacuum.exit ], [ %.03001, %bb.azl ], [ %.03001, %sqlite3VdbeMemRelease.exit4563 ], [ %.03001, %sqlite3VtabCallDestroy.exit ], [ %.03001, %.thread5315 ], [ %.03001, %.thread5322 ], [ %.03001, %bb.bbd ], [ %.03001, %bb.ayv ], [ %.03001, %sqlite3VdbeMemSetNull.exit4581.thread ], [ %.03001, %bb.bbf ], [ %.03001, %bb.bbu ], [ %.03001, %bb.bcb ], [ %.03001, %out2Prerelease.exit4591 ], [ %.03001, %sqlite3BtreeMaxPageCount.exit ], [ %.03001, %sqlite3BtreeLockTable.exit ], [ %.03001, %bb.bds ], [ %.03001, %.thread5357 ], [ %.03001, %bb.bdw ], [ %.03001, %bb.beb ], [ %.03001, %bb.bec ], [ %.03001, %filterHash.exit ], [ %.03001, %bb.bep ], [ %.03001, %bb.gr ], [ %.03001, %sqlite3VdbeMemIntegerify.exit4460 ], [ %.03001, %bb.iu ], [ %.03001, %bb.jo ], [ %.03001, %bb.aag ], [ %.03001, %bb.aah ], [ %.03001, %bb.cy ], [ %.03001, %bb.cz ], [ %.03001, %bb.dc ], [ %.03001, %bb.fp ], [ %.03001, %bb.ft ], [ %.03001, %bb.hj ], [ %.03001, %.thread4745 ], [ %.03001, %bb.jw ], [ %.03001, %bb.ka ], [ %.03001, %bb.kd ], [ %.03001, %bb.ln ], [ %.03001, %bb.lq ], [ %.03001, %bb.lt ], [ %.03001, %bb.lu ], [ %.03001, %sqlite3VdbeMemSetNull.exit4228.thread ], [ %.03001, %bb.pj ], [ %.03001, %bb.aaj ], [ %.03001, %bb.aos ], [ %.03001, %bb.ast ], [ %.03001, %bb.asu ], [ %.03001, %bb.asv ], [ %.03001, %bb.axu ], [ %.03001, %bb.ce ], [ %.03001, %bb.ayb ], [ %.03001, %sqlite3VtabCallDestroy.exit.thread ], [ %.03001, %bb.bdv ], [ %.03001, %bb.bdy ], [ %.03001, %bb.dz ], [ %.03001, %bb.dm ], [ %.03001, %bb.hm ], [ %.03001, %bb.hl ], [ %.03001, %bb.mc ], [ %.03001, %bb.mi ], [ %.03001, %bb.aer ], [ %.03001, %bb.aes ], [ %.03001, %bb.aet ], [ %.03001, %bb.afs ], [ %.03001, %bb.afu ], [ %.03001, %bb.agk ], [ %.03001, %bb.agv ], [ %.03001, %bb.amq ], [ %.03001, %bb.anj ], [ %.03001, %.thread5219 ], [ %.03001, %.loopexit5488 ], [ %.03001, %bb.avm ], [ %.03001, %bb.avn ], [ %.03001, %bb.aya ], [ %.03001, %bb.im ], [ %.03001, %bb.alb ], [ %.03001, %.lr.ph6269 ], [ %.03001, %bb.py ], [ %.03001, %sqlite3VdbeRealValue.exit.i4211 ], [ %.03001, %.split ], [ %.03001, %bb.i ], [ %.03001, %bb.axv ]
  %.110 = phi i32 [ %.02986, %bb.h ], [ %.02986, %.loopexit5491 ], [ 0, %sqlite3VdbeSorterCompare.exit ], [ %.02986, %bb.m ], [ 0, %sqlite3VdbeDeleteAuxData.exit ], [ %.02986, %bb.n ], [ %.32989, %.thread4755 ], [ %.02986, %bb.o ], [ %.02986, %bb.p ], [ %.02986, %bb.q ], [ %.02986, %bb.ag ], [ %.02986, %out2Prerelease.exit ], [ %.02986, %out2Prerelease.exit4096 ], [ %.02986, %out2Prerelease.exit4098 ], [ %.72993, %bb.be ], [ %.72993, %bb.bd ], [ %.72993, %out2Prerelease.exit4105 ], [ %.02986, %bb.l ], [ %.02986, %bb.bi ], [ %.02986, %bb.bo ], [ %.02986, %.thread4710 ], [ %.02986, %bb.bdz ], [ %.22988, %.preheader ], [ %.02986, %bb.atv ], [ %.02986, %bb.da ], [ %.02986, %out2Prerelease.exit4107 ], [ 0, %bb.de ], [ %.02986, %sqlite3VdbeMemSetNull.exit4150 ], [ %.02986, %bb.dd ], [ %.02986, %bb.fn ], [ %.02986, %bb.cv ], [ %.02986, %sqlite3VdbeMemIntegerify.exit ], [ %.02986, %bb.hc ], [ %.02986, %bb.he ], [ %.02986, %bb.hd ], [ 0, %.thread4732 ], [ %.02986, %bb.fu ], [ %.02986, %bb.ii ], [ %.02986, %bb.fq ], [ %.02986, %bb.iw ], [ %.02986, %bb.iy ], [ %.02986, %bb.iz ], [ %.02986, %bb.qf ], [ %.02986, %bb.dl ], [ %.02986, %bb.jx ], [ %.02986, %bb.kb ], [ %.02986, %bb.ki ], [ %.02986, %sqlite3VdbeMemSetNull.exit4198 ], [ %.02986, %bb.kn ], [ %.02986, %sqlite3VdbeBooleanValue.exit4206 ], [ %.02986, %sqlite3VdbeBooleanValue.exit4214 ], [ %.02986, %bb.lb ], [ %.02986, %bb.lj ], [ %.02986, %bb.ke ], [ %.02986, %bb.lo ], [ %.02986, %bb.ls ], [ %.02986, %bb.lr ], [ %.02986, %bb.hr ], [ %.82994, %bb.ml ], [ %.82994, %bb.mk ], [ %.02986, %bb.jn ], [ 0, %bb.amx ], [ 0, %.thread4836 ], [ 0, %.thread4867 ], [ %.02986, %out2Prerelease.exit4280 ], [ 0, %bb.wt ], [ 0, %bb.xi ], [ %i.crq, %.thread4873 ], [ 0, %.thread4886 ], [ %.82994, %bb.mh ], [ %.02986, %bb.yf ], [ %.02986, %.thread4899 ], [ %.02986, %sqlite3VdbeFreeCursor.exit ], [ 0, %bb.ye ], [ %.56.ph, %.thread4964 ], [ %.02986, %bb.il ], [ 0, %.thread4949 ], [ 0, %.thread4982 ], [ %.02986, %bb.aak ], [ 0, %bb.abg ], [ %.02986, %out2Prerelease.exit4312 ], [ %.61, %.thread4991 ], [ 0, %.thread4995 ], [ 0, %sqlite3BtreeTransferRow.exit ], [ %.02986, %bb.mb ], [ %.02986, %bb.aeu ], [ %.02986, %bb.bez ], [ 0, %sqlite3VdbeSorterRowkey.exit.thread5030 ], [ 0, %bb.aeq ], [ %.65.ph, %.thread5045 ], [ 0, %bb.aft ], [ %.66.ph, %.thread5057 ], [ %.02986, %bb.agj ], [ 0, %bb.agu ], [ %.02986, %bb.sz ], [ 0, %.thread5142 ], [ 0, %sqlite3VdbeSorterRewind.exit.thread5096 ], [ 0, %.thread5152 ], [ 0, %sqlite3VdbeMemSetNull.exit4379.thread ], [ 0, %.thread5145 ], [ 0, %..si.unfold.true.jt13 ], [ 0, %.thread5181 ], [ 0, %bb.anh ], [ 0, %bb.amr ], [ 0, %.thread5190 ], [ 0, %.thread5193 ], [ 0, %.thread5212 ], [ 0, %bb.aoe ], [ %.02986, %sqlite3UnlinkAndDeleteTable.exit ], [ %.02986, %sqlite3UnlinkAndDeleteIndex.exit ], [ 0, %sqlite3BtreeTransferRow.exit.thread ], [ 0, %bb.arr ], [ %.02986, %bb.aru ], [ 0, %bb.ank ], [ %.02986, %bb.ash ], [ %.02986, %.loopexit.i4396 ], [ %.02986, %bb.asx ], [ %.02986, %bb.asz ], [ %.02986, %bb.ata ], [ %.02986, %bb.atd ], [ %.02986, %bb.atc ], [ %.02986, %bb.atf ], [ %.02986, %bb.ate ], [ %.02986, %bb.aaf ], [ %.02986, %bb.atw ], [ %.02986, %sqlite3AddInt64.exit4465 ], [ %.02986, %bb.auc ], [ %.02986, %bb.aug ], [ %.02986, %bb.auf ], [ 0, %sqlite3VdbeMemRelease.exit4473 ], [ 0, %sqlite3VdbeMemSetInt64.exit4489.2 ], [ 0, %bb.avo ], [ 0, %bb.awx ], [ 0, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.02986, %bb.axw ], [ %.02986, %sqlite3VdbeMemSetNull.exit ], [ %.02986, %bb.axx ], [ %.02986, %bb.axy ], [ %.2.i4516, %sqlite3BtreeIncrVacuum.exit ], [ 0, %bb.azl ], [ 0, %sqlite3VdbeMemRelease.exit4563 ], [ 0, %sqlite3VtabCallDestroy.exit ], [ %.98.ph, %.thread5315 ], [ %.99.ph, %.thread5322 ], [ %.02986, %bb.bbd ], [ 0, %bb.ayv ], [ %.101.ph, %sqlite3VdbeMemSetNull.exit4581.thread ], [ 0, %bb.bbf ], [ %.02986, %bb.bbu ], [ 0, %bb.bcb ], [ %.02986, %out2Prerelease.exit4591 ], [ %.02986, %sqlite3BtreeMaxPageCount.exit ], [ 0, %sqlite3BtreeLockTable.exit ], [ %.02986, %bb.bds ], [ %.106.ph, %.thread5357 ], [ %.02986, %bb.bdw ], [ %.02986, %bb.beb ], [ %.02986, %bb.bec ], [ %.02986, %filterHash.exit ], [ %.02986, %bb.bep ], [ %.02986, %bb.gr ], [ %.02986, %sqlite3VdbeMemIntegerify.exit4460 ], [ %.02986, %bb.iu ], [ %.02986, %bb.jo ], [ %.02986, %bb.aag ], [ %.02986, %bb.aah ], [ %.02986, %bb.cy ], [ %.02986, %bb.cz ], [ %.02986, %bb.dc ], [ %.02986, %bb.fp ], [ %.02986, %bb.ft ], [ %.02986, %bb.hj ], [ %.02986, %.thread4745 ], [ %.02986, %bb.jw ], [ %.02986, %bb.ka ], [ %.02986, %bb.kd ], [ %.02986, %bb.ln ], [ %.02986, %bb.lq ], [ %.02986, %bb.lt ], [ %.02986, %bb.lu ], [ %.23.ph, %sqlite3VdbeMemSetNull.exit4228.thread ], [ %.02986, %bb.pj ], [ %.02986, %bb.aaj ], [ %.02986, %bb.aos ], [ %.02986, %bb.ast ], [ %.02986, %bb.asu ], [ %.02986, %bb.asv ], [ %.02986, %bb.axu ], [ %.02986, %bb.ce ], [ 0, %bb.ayb ], [ 0, %sqlite3VtabCallDestroy.exit.thread ], [ %.02986, %bb.bdv ], [ %.02986, %bb.bdy ], [ %.02986, %bb.dz ], [ %.02986, %bb.dm ], [ %.02986, %bb.hm ], [ %.02986, %bb.hl ], [ %.02986, %bb.mc ], [ %.82994, %bb.mi ], [ 0, %bb.aer ], [ 0, %bb.aes ], [ 0, %bb.aet ], [ 0, %bb.afs ], [ 0, %bb.afu ], [ %.02986, %bb.agk ], [ 0, %bb.agv ], [ %.02986, %bb.amq ], [ %.02986, %bb.anj ], [ %.02986, %.thread5219 ], [ %.02986, %.loopexit5488 ], [ 0, %bb.avm ], [ 0, %bb.avn ], [ %.02986, %bb.aya ], [ %.02986, %bb.im ], [ 0, %bb.alb ], [ %.02986, %.lr.ph6269 ], [ %.02986, %bb.py ], [ %.02986, %sqlite3VdbeRealValue.exit.i4211 ], [ %.02986, %.split ], [ %.22988, %bb.i ], [ %.02986, %bb.axv ]
  %.9 = phi ptr [ %.02972, %bb.h ], [ %.02972, %.loopexit5491 ], [ %.02972, %sqlite3VdbeSorterCompare.exit ], [ %i.iv, %bb.m ], [ %.02972, %sqlite3VdbeDeleteAuxData.exit ], [ %.02972, %bb.n ], [ %i.jm, %.thread4755 ], [ %i.kd, %bb.o ], [ %i.kr, %bb.p ], [ %.02972, %bb.q ], [ %i.nd, %bb.ag ], [ %.02972, %out2Prerelease.exit ], [ %.02972, %out2Prerelease.exit4096 ], [ %.02972, %out2Prerelease.exit4098 ], [ %.02972, %bb.be ], [ %.02972, %bb.bd ], [ %.02972, %out2Prerelease.exit4105 ], [ %.02972, %bb.l ], [ %.02972, %bb.bi ], [ %.02972, %bb.bo ], [ %.02972, %.thread4710 ], [ %.02972, %bb.bdz ], [ %.12973, %.preheader ], [ %.02972, %bb.atv ], [ %.02972, %bb.da ], [ %.02972, %out2Prerelease.exit4107 ], [ %.02972, %bb.de ], [ %.02972, %sqlite3VdbeMemSetNull.exit4150 ], [ %.02972, %bb.dd ], [ %.02972, %bb.fn ], [ %.02972, %bb.cv ], [ %.02972, %sqlite3VdbeMemIntegerify.exit ], [ %.02972, %bb.hc ], [ %.02972, %bb.he ], [ %.02972, %bb.hd ], [ %.02972, %.thread4732 ], [ %.02972, %bb.fu ], [ %.02972, %bb.ii ], [ %.02972, %bb.fq ], [ %i.are, %bb.iw ], [ %i.ark, %bb.iy ], [ %i.arp, %bb.iz ], [ %.02972, %bb.qf ], [ %.02972, %bb.dl ], [ %.02972, %bb.jx ], [ %.02972, %bb.kb ], [ %.02972, %bb.ki ], [ %.02972, %sqlite3VdbeMemSetNull.exit4198 ], [ %.02972, %bb.kn ], [ %.02972, %sqlite3VdbeBooleanValue.exit4206 ], [ %.02972, %sqlite3VdbeBooleanValue.exit4214 ], [ %.02972, %bb.lb ], [ %.02972, %bb.lj ], [ %.02972, %bb.ke ], [ %.02972, %bb.lo ], [ %.02972, %bb.ls ], [ %.02972, %bb.lr ], [ %.02972, %bb.hr ], [ %.02972, %bb.ml ], [ %.02972, %bb.mk ], [ %.02972, %bb.jn ], [ %.02972, %bb.amx ], [ %.02972, %.thread4836 ], [ %.02972, %.thread4867 ], [ %.02972, %out2Prerelease.exit4280 ], [ %.02972, %bb.wt ], [ %.02972, %bb.xi ], [ %.02972, %.thread4873 ], [ %.02972, %.thread4886 ], [ %.02972, %bb.mh ], [ %.02972, %bb.yf ], [ %.02972, %.thread4899 ], [ %.02972, %sqlite3VdbeFreeCursor.exit ], [ %.02972, %bb.ye ], [ %.02972, %.thread4964 ], [ %.02972, %bb.il ], [ %i.dcf, %.thread4949 ], [ %.02972, %.thread4982 ], [ %.02972, %bb.aak ], [ %.02972, %bb.abg ], [ %.02972, %out2Prerelease.exit4312 ], [ %.02972, %.thread4991 ], [ %.02972, %.thread4995 ], [ %.02972, %sqlite3BtreeTransferRow.exit ], [ %.02972, %bb.mb ], [ %.02972, %bb.aeu ], [ %.02972, %bb.bez ], [ %.02972, %sqlite3VdbeSorterRowkey.exit.thread5030 ], [ %.02972, %bb.aeq ], [ %.02972, %.thread5045 ], [ %.02972, %bb.aft ], [ %.02972, %.thread5057 ], [ %.02972, %bb.agj ], [ %.02972, %bb.agu ], [ %.02972, %bb.sz ], [ %.02972, %.thread5142 ], [ %.02972, %sqlite3VdbeSorterRewind.exit.thread5096 ], [ %.02972, %.thread5152 ], [ %.02972, %sqlite3VdbeMemSetNull.exit4379.thread ], [ %.02972, %.thread5145 ], [ %.02972, %..si.unfold.true.jt13 ], [ %.02972, %.thread5181 ], [ %.02972, %bb.anh ], [ %.02972, %bb.amr ], [ %.02972, %.thread5190 ], [ %.02972, %.thread5193 ], [ %.02972, %.thread5212 ], [ %.02972, %bb.aoe ], [ %.02972, %sqlite3UnlinkAndDeleteTable.exit ], [ %.02972, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.02972, %sqlite3BtreeTransferRow.exit.thread ], [ %.02972, %bb.arr ], [ %.02972, %bb.aru ], [ %.02972, %bb.ank ], [ %.02972, %bb.ash ], [ %.02972, %.loopexit.i4396 ], [ %.02972, %bb.asx ], [ %.02972, %bb.asz ], [ %.02972, %bb.ata ], [ %.02972, %bb.atd ], [ %.02972, %bb.atc ], [ %.02972, %bb.atf ], [ %.02972, %bb.ate ], [ %.02972, %bb.aaf ], [ %.02972, %bb.atw ], [ %.02972, %sqlite3AddInt64.exit4465 ], [ %.02972, %bb.auc ], [ %.02972, %bb.aug ], [ %.02972, %bb.auf ], [ %.02972, %sqlite3VdbeMemRelease.exit4473 ], [ %.02972, %sqlite3VdbeMemSetInt64.exit4489.2 ], [ %.02972, %bb.avo ], [ %.02972, %bb.awx ], [ %.02972, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.02972, %bb.axw ], [ %.02972, %sqlite3VdbeMemSetNull.exit ], [ %.02972, %bb.axx ], [ %.02972, %bb.axy ], [ %.02972, %sqlite3BtreeIncrVacuum.exit ], [ %.02972, %bb.azl ], [ %.02972, %sqlite3VdbeMemRelease.exit4563 ], [ %.02972, %sqlite3VtabCallDestroy.exit ], [ %.02972, %.thread5315 ], [ %.02972, %.thread5322 ], [ %.02972, %bb.bbd ], [ %.02972, %bb.ayv ], [ %.02972, %sqlite3VdbeMemSetNull.exit4581.thread ], [ %.02972, %bb.bbf ], [ %.02972, %bb.bbu ], [ %.02972, %bb.bcb ], [ %.02972, %out2Prerelease.exit4591 ], [ %.02972, %sqlite3BtreeMaxPageCount.exit ], [ %.02972, %sqlite3BtreeLockTable.exit ], [ %.02972, %bb.bds ], [ %.02972, %.thread5357 ], [ %.02972, %bb.bdw ], [ %.02972, %bb.beb ], [ %.02972, %bb.bec ], [ %.02972, %filterHash.exit ], [ %.02972, %bb.bep ], [ %.02972, %bb.gr ], [ %.02972, %sqlite3VdbeMemIntegerify.exit4460 ], [ %.02972, %bb.iu ], [ %.02972, %bb.jo ], [ %.02972, %bb.aag ], [ %.02972, %bb.aah ], [ %.02972, %bb.cy ], [ %.02972, %bb.cz ], [ %.02972, %bb.dc ], [ %.02972, %bb.fp ], [ %.02972, %bb.ft ], [ %.02972, %bb.hj ], [ %.02972, %.thread4745 ], [ %.02972, %bb.jw ], [ %.02972, %bb.ka ], [ %.02972, %bb.kd ], [ %.02972, %bb.ln ], [ %.02972, %bb.lq ], [ %.02972, %bb.lt ], [ %.02972, %bb.lu ], [ %.42976.ph, %sqlite3VdbeMemSetNull.exit4228.thread ], [ %.02972, %bb.pj ], [ %.02972, %bb.aaj ], [ %.02972, %bb.aos ], [ %.02972, %bb.ast ], [ %.02972, %bb.asu ], [ %.02972, %bb.asv ], [ %.02972, %bb.axu ], [ %.02972, %bb.ce ], [ %.02972, %bb.ayb ], [ %.02972, %sqlite3VtabCallDestroy.exit.thread ], [ %.02972, %bb.bdv ], [ %.02972, %bb.bdy ], [ %.02972, %bb.dz ], [ %.02972, %bb.dm ], [ %.02972, %bb.hm ], [ %.02972, %bb.hl ], [ %.02972, %bb.mc ], [ %.02972, %bb.mi ], [ %.02972, %bb.aer ], [ %.02972, %bb.aes ], [ %.02972, %bb.aet ], [ %.02972, %bb.afs ], [ %.02972, %bb.afu ], [ %.02972, %bb.agk ], [ %.02972, %bb.agv ], [ %.02972, %bb.amq ], [ %.02972, %bb.anj ], [ %.02972, %.thread5219 ], [ %.02972, %.loopexit5488 ], [ %.02972, %bb.avm ], [ %.02972, %bb.avn ], [ %.02972, %bb.aya ], [ %.02972, %bb.im ], [ %.02972, %bb.alb ], [ %.02972, %.lr.ph6269 ], [ %.02972, %bb.py ], [ %.02972, %sqlite3VdbeRealValue.exit.i4211 ], [ %.02972, %.split ], [ %.12973, %bb.i ], [ %.02972, %bb.axv ]
  %.4 = phi ptr [ %.02970, %bb.h ], [ %.02970, %.loopexit5491 ], [ %.02970, %sqlite3VdbeSorterCompare.exit ], [ %.02970, %bb.m ], [ %.02970, %sqlite3VdbeDeleteAuxData.exit ], [ %.02970, %bb.n ], [ %.02970, %.thread4755 ], [ %.02970, %bb.o ], [ %.02970, %bb.p ], [ %.02970, %bb.q ], [ %.pre7260, %bb.ag ], [ %.02970, %out2Prerelease.exit ], [ %.02970, %out2Prerelease.exit4096 ], [ %.02970, %out2Prerelease.exit4098 ], [ %.02970, %bb.be ], [ %.02970, %bb.bd ], [ %.02970, %out2Prerelease.exit4105 ], [ %.02970, %bb.l ], [ %.02970, %bb.bi ], [ %.02970, %bb.bo ], [ %.02970, %.thread4710 ], [ %.02970, %bb.bdz ], [ %.1, %.preheader ], [ %.02970, %bb.atv ], [ %.02970, %bb.da ], [ %.02970, %out2Prerelease.exit4107 ], [ %.02970, %bb.de ], [ %.02970, %sqlite3VdbeMemSetNull.exit4150 ], [ %.02970, %bb.dd ], [ %.02970, %bb.fn ], [ %.02970, %bb.cv ], [ %.02970, %sqlite3VdbeMemIntegerify.exit ], [ %.02970, %bb.hc ], [ %.02970, %bb.he ], [ %.02970, %bb.hd ], [ %.02970, %.thread4732 ], [ %.02970, %bb.fu ], [ %.02970, %bb.ii ], [ %.02970, %bb.fq ], [ %.02970, %bb.iw ], [ %.02970, %bb.iy ], [ %.02970, %bb.iz ], [ %.02970, %bb.qf ], [ %.02970, %bb.dl ], [ %.02970, %bb.jx ], [ %.02970, %bb.kb ], [ %.02970, %bb.ki ], [ %.02970, %sqlite3VdbeMemSetNull.exit4198 ], [ %.02970, %bb.kn ], [ %.02970, %sqlite3VdbeBooleanValue.exit4206 ], [ %.02970, %sqlite3VdbeBooleanValue.exit4214 ], [ %.02970, %bb.lb ], [ %.02970, %bb.lj ], [ %.02970, %bb.ke ], [ %.02970, %bb.lo ], [ %.02970, %bb.ls ], [ %.02970, %bb.lr ], [ %.02970, %bb.hr ], [ %.02970, %bb.ml ], [ %.02970, %bb.mk ], [ %.02970, %bb.jn ], [ %.02970, %bb.amx ], [ %.02970, %.thread4836 ], [ %.02970, %.thread4867 ], [ %.02970, %out2Prerelease.exit4280 ], [ %.02970, %bb.wt ], [ %.02970, %bb.xi ], [ %.02970, %.thread4873 ], [ %.02970, %.thread4886 ], [ %.02970, %bb.mh ], [ %.02970, %bb.yf ], [ %.02970, %.thread4899 ], [ %.02970, %sqlite3VdbeFreeCursor.exit ], [ %.02970, %bb.ye ], [ %.02970, %.thread4964 ], [ %.02970, %bb.il ], [ %.02970, %.thread4949 ], [ %.02970, %.thread4982 ], [ %.02970, %bb.aak ], [ %.02970, %bb.abg ], [ %.02970, %out2Prerelease.exit4312 ], [ %.02970, %.thread4991 ], [ %.02970, %.thread4995 ], [ %.02970, %sqlite3BtreeTransferRow.exit ], [ %.02970, %bb.mb ], [ %.02970, %bb.aeu ], [ %.02970, %bb.bez ], [ %.02970, %sqlite3VdbeSorterRowkey.exit.thread5030 ], [ %.02970, %bb.aeq ], [ %.02970, %.thread5045 ], [ %.02970, %bb.aft ], [ %.02970, %.thread5057 ], [ %.02970, %bb.agj ], [ %.02970, %bb.agu ], [ %.02970, %bb.sz ], [ %.02970, %.thread5142 ], [ %.02970, %sqlite3VdbeSorterRewind.exit.thread5096 ], [ %.02970, %.thread5152 ], [ %.02970, %sqlite3VdbeMemSetNull.exit4379.thread ], [ %.02970, %.thread5145 ], [ %.02970, %..si.unfold.true.jt13 ], [ %.02970, %.thread5181 ], [ %.02970, %bb.anh ], [ %.02970, %bb.amr ], [ %.02970, %.thread5190 ], [ %.02970, %.thread5193 ], [ %.02970, %.thread5212 ], [ %.02970, %bb.aoe ], [ %.02970, %sqlite3UnlinkAndDeleteTable.exit ], [ %.02970, %sqlite3UnlinkAndDeleteIndex.exit ], [ %.02970, %sqlite3BtreeTransferRow.exit.thread ], [ %.02970, %bb.arr ], [ %.02970, %bb.aru ], [ %.02970, %bb.ank ], [ %.02970, %bb.ash ], [ %.02970, %.loopexit.i4396 ], [ %.02970, %bb.asx ], [ %.02970, %bb.asz ], [ %.02970, %bb.ata ], [ %.02970, %bb.atd ], [ %.02970, %bb.atc ], [ %.02970, %bb.atf ], [ %.02970, %bb.ate ], [ %.02970, %bb.aaf ], [ %.02970, %bb.atw ], [ %.02970, %sqlite3AddInt64.exit4465 ], [ %.02970, %bb.auc ], [ %.02970, %bb.aug ], [ %.02970, %bb.auf ], [ %.02970, %sqlite3VdbeMemRelease.exit4473 ], [ %.02970, %sqlite3VdbeMemSetInt64.exit4489.2 ], [ %.02970, %bb.avo ], [ %.02970, %bb.awx ], [ %.02970, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.02970, %bb.axw ], [ %.02970, %sqlite3VdbeMemSetNull.exit ], [ %.02970, %bb.axx ], [ %.02970, %bb.axy ], [ %.02970, %sqlite3BtreeIncrVacuum.exit ], [ %.02970, %bb.azl ], [ %.02970, %sqlite3VdbeMemRelease.exit4563 ], [ %.02970, %sqlite3VtabCallDestroy.exit ], [ %.02970, %.thread5315 ], [ %.02970, %.thread5322 ], [ %.02970, %bb.bbd ], [ %.02970, %bb.ayv ], [ %.02970, %sqlite3VdbeMemSetNull.exit4581.thread ], [ %.02970, %bb.bbf ], [ %.02970, %bb.bbu ], [ %.02970, %bb.bcb ], [ %.02970, %out2Prerelease.exit4591 ], [ %.02970, %sqlite3BtreeMaxPageCount.exit ], [ %.02970, %sqlite3BtreeLockTable.exit ], [ %.02970, %bb.bds ], [ %.02970, %.thread5357 ], [ %.02970, %bb.bdw ], [ %.02970, %bb.beb ], [ %.02970, %bb.bec ], [ %.02970, %filterHash.exit ], [ %.02970, %bb.bep ], [ %.02970, %bb.gr ], [ %.02970, %sqlite3VdbeMemIntegerify.exit4460 ], [ %.02970, %bb.iu ], [ %.02970, %bb.jo ], [ %.02970, %bb.aag ], [ %.02970, %bb.aah ], [ %.02970, %bb.cy ], [ %.02970, %bb.cz ], [ %.02970, %bb.dc ], [ %.02970, %bb.fp ], [ %.02970, %bb.ft ], [ %.02970, %bb.hj ], [ %.02970, %.thread4745 ], [ %.02970, %bb.jw ], [ %.02970, %bb.ka ], [ %.02970, %bb.kd ], [ %.02970, %bb.ln ], [ %.02970, %bb.lq ], [ %.02970, %bb.lt ], [ %.02970, %bb.lu ], [ %.02970, %sqlite3VdbeMemSetNull.exit4228.thread ], [ %.02970, %bb.pj ], [ %.02970, %bb.aaj ], [ %.02970, %bb.aos ], [ %.02970, %bb.ast ], [ %.02970, %bb.asu ], [ %.02970, %bb.asv ], [ %.02970, %bb.axu ], [ %.02970, %bb.ce ], [ %.02970, %bb.ayb ], [ %.02970, %sqlite3VtabCallDestroy.exit.thread ], [ %.02970, %bb.bdv ], [ %.02970, %bb.bdy ], [ %.02970, %bb.dz ], [ %.02970, %bb.dm ], [ %.02970, %bb.hm ], [ %.02970, %bb.hl ], [ %.02970, %bb.mc ], [ %.02970, %bb.mi ], [ %.02970, %bb.aer ], [ %.02970, %bb.aes ], [ %.02970, %bb.aet ], [ %.02970, %bb.afs ], [ %.02970, %bb.afu ], [ %.02970, %bb.agk ], [ %.02970, %bb.agv ], [ %.02970, %bb.amq ], [ %.02970, %bb.anj ], [ %.02970, %.thread5219 ], [ %.02970, %.loopexit5488 ], [ %.02970, %bb.avm ], [ %.02970, %bb.avn ], [ %.02970, %bb.aya ], [ %.02970, %bb.im ], [ %.02970, %bb.alb ], [ %.02970, %.lr.ph6269 ], [ %.02970, %bb.py ], [ %.02970, %sqlite3VdbeRealValue.exit.i4211 ], [ %.02970, %.split ], [ %.1, %bb.i ], [ %.02970, %bb.axv ]
  %i.ivr = getelementptr inbounds nuw i8, ptr %.9, i64 32
  br label %bb.h

sqlite3VdbeMemSetNull.exit4222.loopexit12567:     ; preds = %bb.uv, %.thread4819, %sqlite3Strlen30.exit4260, %bb.xq, %bb.yc, %bb.agq, %sqlite3FaultSim.exit.i.i.i.i, %sqlite3FaultSim.exit.thread.i.i.i.i, %bb.akb, %bb.ahb, %sqlite3VdbeSorterRewind.exit, %.thread5145, %bb.aly, %sqlite3VdbeChangeEncoding.exit4505, %bb.bcb, %sqlite3VdbeChangeEncoding.exit4589, %sqlite3BtreeIsEmpty.exit, %bb.hg, %.thread4732, %bb.xi, %bb.abg, %bb.aoe, %bb.awx, %sqlite3VtabCallDestroy.exit, %bb.hb, %bb.wx, %sqlite3VdbeSorterNext.exit, %bb.wt, %sqlite3BtreeTransferRow.exit, %bb.anh, %bb.azl, %sqlite3VdbeMemRelease.exit4563, %bb.me, %bb.ye, %bb.aep, %sqlite3VdbeMemClearAndResize.exit.i, %bb.afr, %bb.amr, %bb.ank, %sqlite3VdbeMemRelease.exit4473, %sqlite3BtreeIncrVacuum.exit, %._crit_edge6251, %bb.bbv, %sqlite3VdbeDeleteAuxData.exit, %sqlite3VdbeChangeEncoding.exit4431.thread
  %.111.ph = phi i32 [ %.107, %sqlite3VdbeDeleteAuxData.exit ], [ %i.igm, %bb.bbv ], [ %i.iec, %._crit_edge6251 ], [ %.2.i4516, %sqlite3BtreeIncrVacuum.exit ], [ %.85, %sqlite3VdbeMemRelease.exit4473 ], [ %i.fuj, %bb.ank ], [ %i.fqi, %bb.amr ], [ %i.ehl, %bb.afr ], [ 7, %sqlite3VdbeMemClearAndResize.exit.i ], [ %i.ebh, %bb.aep ], [ %i.cvt, %bb.ye ], [ %i.bdj, %bb.me ], [ %.97, %sqlite3VdbeMemRelease.exit4563 ], [ %.132.i5303, %bb.azl ], [ %i.ftm, %bb.anh ], [ %i.dxv, %sqlite3BtreeTransferRow.exit ], [ %i.cmc, %bb.wt ], [ %.68, %sqlite3VdbeSorterNext.exit ], [ 516, %bb.wx ], [ 20, %bb.hb ], [ %i.hyb, %sqlite3VtabCallDestroy.exit ], [ %i.hkg, %bb.awx ], [ %i.fxm, %bb.aoe ], [ %i.djc, %bb.abg ], [ %.43, %bb.xi ], [ %i.amf, %.thread4732 ], [ %i.amb, %bb.hg ], [ %.10.i, %sqlite3BtreeIsEmpty.exit ], [ %i.ihn, %bb.bcb ], [ %.92, %sqlite3VdbeChangeEncoding.exit4505 ], [ %i.fnf, %.thread5145 ], [ %.67, %sqlite3VdbeSorterRewind.exit ], [ %i.eni, %bb.ahb ], [ %i.fbp, %bb.akb ], [ 7, %sqlite3FaultSim.exit.thread.i.i.i.i ], [ 7, %sqlite3FaultSim.exit.i.i.i.i ], [ %i.elb, %bb.agq ], [ %i.cvg, %bb.yc ], [ %i.csz, %bb.xq ], [ %i.cbl, %sqlite3Strlen30.exit4260 ], [ %.29.lcssa, %.thread4819 ], [ %i.cgc, %bb.uv ], [ %i.fnd, %bb.aly ], [ 9, %sqlite3VdbeChangeEncoding.exit4431.thread ], [ %i.ihh, %sqlite3VdbeChangeEncoding.exit4589 ]
  %.10.ph = phi ptr [ %.02972, %sqlite3VdbeDeleteAuxData.exit ], [ %.02972, %bb.bbv ], [ %.02972, %._crit_edge6251 ], [ %.02972, %sqlite3BtreeIncrVacuum.exit ], [ %.02972, %sqlite3VdbeMemRelease.exit4473 ], [ %.02972, %bb.ank ], [ %.02972, %bb.amr ], [ %.02972, %bb.afr ], [ %.02972, %sqlite3VdbeMemClearAndResize.exit.i ], [ %.02972, %bb.aep ], [ %.02972, %bb.ye ], [ %.02972, %bb.me ], [ %.02972, %sqlite3VdbeMemRelease.exit4563 ], [ %.02972, %bb.azl ], [ %.02972, %bb.anh ], [ %.02972, %sqlite3BtreeTransferRow.exit ], [ %.02972, %bb.wt ], [ %.02972, %sqlite3VdbeSorterNext.exit ], [ %.02972, %bb.wx ], [ %.02972, %bb.hb ], [ %.02972, %sqlite3VtabCallDestroy.exit ], [ %.02972, %bb.awx ], [ %.02972, %bb.aoe ], [ %.02972, %bb.abg ], [ %.02972, %bb.xi ], [ %.02972, %.thread4732 ], [ %.02972, %bb.hg ], [ %.02972, %sqlite3BtreeIsEmpty.exit ], [ %.02972, %bb.bcb ], [ %.02972, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.02972, %.thread5145 ], [ %.02972, %sqlite3VdbeSorterRewind.exit ], [ %.02972, %bb.ahb ], [ %.02972, %bb.akb ], [ %.02972, %sqlite3FaultSim.exit.thread.i.i.i.i ], [ %.02972, %sqlite3FaultSim.exit.i.i.i.i ], [ %.02972, %bb.agq ], [ %.02972, %bb.yc ], [ %.02972, %bb.xq ], [ %.02972, %sqlite3Strlen30.exit4260 ], [ %.02972, %.thread4819 ], [ %.02972, %bb.uv ], [ %.02972, %bb.aly ], [ %.12973, %sqlite3VdbeChangeEncoding.exit4431.thread ], [ %.02972, %sqlite3VdbeChangeEncoding.exit4589 ]
  %.5.ph = phi ptr [ %.02970, %sqlite3VdbeDeleteAuxData.exit ], [ %.02970, %bb.bbv ], [ %.02970, %._crit_edge6251 ], [ %.02970, %sqlite3BtreeIncrVacuum.exit ], [ %.02970, %sqlite3VdbeMemRelease.exit4473 ], [ %.02970, %bb.ank ], [ %.02970, %bb.amr ], [ %.02970, %bb.afr ], [ %.02970, %sqlite3VdbeMemClearAndResize.exit.i ], [ %.02970, %bb.aep ], [ %.02970, %bb.ye ], [ %.02970, %bb.me ], [ %.02970, %sqlite3VdbeMemRelease.exit4563 ], [ %.02970, %bb.azl ], [ %.02970, %bb.anh ], [ %.02970, %sqlite3BtreeTransferRow.exit ], [ %.02970, %bb.wt ], [ %.02970, %sqlite3VdbeSorterNext.exit ], [ %.02970, %bb.wx ], [ %.02970, %bb.hb ], [ %.02970, %sqlite3VtabCallDestroy.exit ], [ %.02970, %bb.awx ], [ %.02970, %bb.aoe ], [ %.02970, %bb.abg ], [ %.02970, %bb.xi ], [ %.02970, %.thread4732 ], [ %.02970, %bb.hg ], [ %.02970, %sqlite3BtreeIsEmpty.exit ], [ %.02970, %bb.bcb ], [ %.02970, %sqlite3VdbeChangeEncoding.exit4505 ], [ %.02970, %.thread5145 ], [ %.02970, %sqlite3VdbeSorterRewind.exit ], [ %.02970, %bb.ahb ], [ %.02970, %bb.akb ], [ %.02970, %sqlite3FaultSim.exit.thread.i.i.i.i ], [ %.02970, %sqlite3FaultSim.exit.i.i.i.i ], [ %.02970, %bb.agq ], [ %.02970, %bb.yc ], [ %.02970, %bb.xq ], [ %.02970, %sqlite3Strlen30.exit4260 ], [ %.02970, %.thread4819 ], [ %.02970, %bb.uv ], [ %.02970, %bb.aly ], [ %.1, %sqlite3VdbeChangeEncoding.exit4431.thread ], [ %.02970, %sqlite3VdbeChangeEncoding.exit4589 ]
  br label %sqlite3VdbeMemSetNull.exit4222

sqlite3VdbeMemSetNull.exit4222:                   ; preds = %bb.akh, %bb.agt, %bb.uf, %.lr.ph6305, %bb.j, %bb.bgh, %sqlite3VdbeMemSetNull.exit4222.loopexit12567, %bb.f, %.thread7670, %sqlite3BtreeTransferRow.exit.thread7673, %sqlite3BtreeTransferRow.exit.thread7676, %sqlite3VtabCallDestroy.exit.thread7687, %bb.ays, %bb.ayr, %bb.awo, %bb.ajr, %bb.akq, %sqlite3_mutex_enter.exit.i.i72.i.i, %bb.akt, %bb.aku, %bb.ajq, %sqlite3_mutex_enter.exit.i.i75.i.i.i, %._crit_edge.i.i.i, %bb.yb, %.thread4823, %bb.tj, %.critedge3914, %bb.tw, %bb.anu, %.loopexit5493, %.thread5018, %.thread4918, %sqlite3VdbeMemSetNull.exit4228, %sqlite3VdbeMemSetNull.exit4581, %bb.baz, %bb.bas, %bb.avz, %sqlite3VdbeChangeEncoding.exit4481, %.critedge46, %sqlite3VdbeChangeEncoding.exit4431, %bb.aod, %bb.ano, %.loopexit5496, %.loopexit5497, %sqlite3VdbeMemSetNull.exit4379, %.loopexit5498, %bb.alw, %bb.agp, %bb.agf, %bb.acr, %.split.loop.exit6325, %bb.aba, %.loopexit5479, %.loopexit5501, %bb.vh, %bb.tg, %bb.pz, %sqlite3VdbeCheckFkImmediate.exit, %sqlite3OomFault.exit4669, %sqlite3VdbeMemSetNull.exit4134
  %.43056 = phi i64 [ %.73059, %sqlite3OomFault.exit4669 ], [ %.13053, %.loopexit5497 ], [ %.13053, %sqlite3VdbeMemSetNull.exit4222.loopexit12567 ], [ %.13053, %.loopexit5496 ], [ %.13053, %sqlite3VdbeMemSetNull.exit4134 ], [ %.13053, %sqlite3VdbeCheckFkImmediate.exit ], [ %.13053, %bb.uf ], [ %.13053, %sqlite3VdbeMemSetNull.exit4581 ], [ %.13053, %bb.anu ], [ %.13053, %bb.ano ], [ %.13053, %sqlite3VdbeMemSetNull.exit4228 ], [ %.13053, %bb.pz ], [ %.13053, %bb.tg ], [ %.13053, %._crit_edge.i.i.i ], [ %.13053, %bb.vh ], [ %.13053, %.loopexit5501 ], [ %.13053, %.thread7670 ], [ %.13053, %bb.aod ], [ %.13053, %bb.ays ], [ %.13053, %.thread4823 ], [ %.13053, %sqlite3VdbeChangeEncoding.exit4431 ], [ %.13053, %.thread4918 ], [ %.13053, %.loopexit5479 ], [ %.13053, %bb.aba ], [ %.13053, %.critedge46 ], [ %.13053, %.split.loop.exit6325 ], [ %.13053, %bb.acr ], [ %.13053, %bb.bas ], [ %.13053, %sqlite3VdbeChangeEncoding.exit4481 ], [ %.13053, %.thread5018 ], [ %.13053, %bb.avz ], [ %.13053, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.13053, %bb.agf ], [ %.13053, %bb.agp ], [ %.13053, %bb.yb ], [ %.13053, %.lr.ph6305 ], [ %.13053, %bb.baz ], [ %.13053, %.loopexit5493 ], [ %.13053, %bb.alw ], [ %.13053, %bb.ajr ], [ %.13053, %.loopexit5498 ], [ %.13053, %sqlite3VdbeMemSetNull.exit4379 ], [ %.13053, %bb.awo ], [ %.13053, %bb.ajq ], [ %.13053, %bb.aku ], [ %.13053, %bb.akt ], [ -1, %bb.j ], [ -1, %bb.bgh ], [ %.13053, %bb.tw ], [ %.13053, %.critedge3914 ], [ %.13053, %bb.tj ], [ %.13053, %sqlite3_mutex_enter.exit.i.i72.i.i ], [ %.13053, %bb.akq ], [ %.13053, %bb.agt ], [ %.13053, %sqlite3VtabCallDestroy.exit.thread7687 ], [ %.13053, %bb.ayr ], [ %.13053, %sqlite3BtreeTransferRow.exit.thread7676 ], [ %.13053, %sqlite3BtreeTransferRow.exit.thread7673 ], [ %.03052, %bb.f ], [ %.13053, %bb.akh ] ; 4 uses
  %.13048 = phi i64 [ %.33050, %sqlite3OomFault.exit4669 ], [ %i.hp, %.loopexit5497 ], [ %i.hp, %sqlite3VdbeMemSetNull.exit4222.loopexit12567 ], [ %i.hp, %.loopexit5496 ], [ %i.hp, %sqlite3VdbeMemSetNull.exit4134 ], [ %i.hp, %sqlite3VdbeCheckFkImmediate.exit ], [ %i.hp, %bb.uf ], [ %i.hp, %sqlite3VdbeMemSetNull.exit4581 ], [ %i.hp, %bb.anu ], [ %i.hp, %bb.ano ], [ %i.hp, %sqlite3VdbeMemSetNull.exit4228 ], [ %i.hp, %bb.pz ], [ %i.hp, %bb.tg ], [ %i.hp, %._crit_edge.i.i.i ], [ %i.hp, %bb.vh ], [ %i.hp, %.loopexit5501 ], [ %i.hp, %.thread7670 ], [ %i.hp, %bb.aod ], [ %i.hp, %bb.ays ], [ %i.hp, %.thread4823 ], [ %i.hp, %sqlite3VdbeChangeEncoding.exit4431 ], [ %i.hp, %.thread4918 ], [ %i.hp, %.loopexit5479 ], [ %i.hp, %bb.aba ], [ %i.hp, %.critedge46 ], [ %i.hp, %.split.loop.exit6325 ], [ %i.hp, %bb.acr ], [ %i.hp, %bb.bas ], [ %i.hp, %sqlite3VdbeChangeEncoding.exit4481 ], [ %i.hp, %.thread5018 ], [ %i.hp, %bb.avz ], [ %i.hp, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %i.hp, %bb.agf ], [ %i.hp, %bb.agp ], [ %i.hp, %bb.yb ], [ %i.hp, %.lr.ph6305 ], [ %i.hp, %bb.baz ], [ %i.hp, %.loopexit5493 ], [ %i.hp, %bb.alw ], [ %i.hp, %bb.ajr ], [ %i.hp, %.loopexit5498 ], [ %i.hp, %sqlite3VdbeMemSetNull.exit4379 ], [ %i.hp, %bb.awo ], [ %i.hp, %bb.ajq ], [ %i.hp, %bb.aku ], [ %i.hp, %bb.akt ], [ %i.hp, %bb.j ], [ %.23049, %bb.bgh ], [ %i.hp, %bb.tw ], [ %i.hp, %.critedge3914 ], [ %i.hp, %bb.tj ], [ %i.hp, %sqlite3_mutex_enter.exit.i.i72.i.i ], [ %i.hp, %bb.akq ], [ %i.hp, %bb.agt ], [ %i.hp, %sqlite3VtabCallDestroy.exit.thread7687 ], [ %i.hp, %bb.ayr ], [ %i.hp, %sqlite3BtreeTransferRow.exit.thread7676 ], [ %i.hp, %sqlite3BtreeTransferRow.exit.thread7673 ], [ 0, %bb.f ], [ %i.hp, %bb.akh ] ; 4 uses
  %.43005 = phi i8 [ %.63007, %sqlite3OomFault.exit4669 ], [ %.03001, %.loopexit5497 ], [ %.03001, %sqlite3VdbeMemSetNull.exit4222.loopexit12567 ], [ %.03001, %.loopexit5496 ], [ %.03001, %sqlite3VdbeMemSetNull.exit4134 ], [ %.03001, %sqlite3VdbeCheckFkImmediate.exit ], [ %.03001, %bb.uf ], [ %.03001, %sqlite3VdbeMemSetNull.exit4581 ], [ %.03001, %bb.anu ], [ %.03001, %bb.ano ], [ %.03001, %sqlite3VdbeMemSetNull.exit4228 ], [ %.03001, %bb.pz ], [ %.03001, %bb.tg ], [ %.03001, %._crit_edge.i.i.i ], [ %.03001, %bb.vh ], [ %.03001, %.loopexit5501 ], [ %.03001, %.thread7670 ], [ %.03001, %bb.aod ], [ %.03001, %bb.ays ], [ %.03001, %.thread4823 ], [ %.03001, %sqlite3VdbeChangeEncoding.exit4431 ], [ %.03001, %.thread4918 ], [ %.03001, %.loopexit5479 ], [ %.03001, %bb.aba ], [ %.03001, %.critedge46 ], [ %.03001, %.split.loop.exit6325 ], [ %.03001, %bb.acr ], [ %.03001, %bb.bas ], [ %.03001, %sqlite3VdbeChangeEncoding.exit4481 ], [ %.03001, %.thread5018 ], [ %.03001, %bb.avz ], [ %.03001, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.03001, %bb.agf ], [ %.03001, %bb.agp ], [ %.03001, %bb.yb ], [ %.03001, %.lr.ph6305 ], [ %.03001, %bb.baz ], [ %.03001, %.loopexit5493 ], [ %.03001, %bb.alw ], [ %.03001, %bb.ajr ], [ %.03001, %.loopexit5498 ], [ %.03001, %sqlite3VdbeMemSetNull.exit4379 ], [ %.03001, %bb.awo ], [ %.03001, %bb.ajq ], [ %.03001, %bb.aku ], [ %.03001, %bb.akt ], [ %.03001, %bb.j ], [ %.53006, %bb.bgh ], [ %.03001, %bb.tw ], [ %.03001, %.critedge3914 ], [ %.03001, %bb.tj ], [ %.03001, %sqlite3_mutex_enter.exit.i.i72.i.i ], [ %.03001, %bb.akq ], [ %.03001, %bb.agt ], [ %.03001, %sqlite3VtabCallDestroy.exit.thread7687 ], [ %.03001, %bb.ayr ], [ %.03001, %sqlite3BtreeTransferRow.exit.thread7676 ], [ %.03001, %sqlite3BtreeTransferRow.exit.thread7673 ], [ 0, %bb.f ], [ %.03001, %bb.akh ] ; 5 uses
  %.111 = phi i32 [ 7, %sqlite3OomFault.exit4669 ], [ %.76, %.loopexit5497 ], [ %.111.ph, %sqlite3VdbeMemSetNull.exit4222.loopexit12567 ], [ %.77, %.loopexit5496 ], [ 18, %sqlite3VdbeMemSetNull.exit4134 ], [ %i.zk, %sqlite3VdbeCheckFkImmediate.exit ], [ %i.ceb, %bb.uf ], [ %.100, %sqlite3VdbeMemSetNull.exit4581 ], [ %i.fvq, %bb.anu ], [ %i.fva, %bb.ano ], [ %.23, %sqlite3VdbeMemSetNull.exit4228 ], [ 3091, %bb.pz ], [ %i.cao, %bb.tg ], [ %.7.i.i.i, %._crit_edge.i.i.i ], [ %.37, %bb.vh ], [ %.42, %.loopexit5501 ], [ 11, %.thread7670 ], [ %.82, %bb.aod ], [ %.0.i4532, %bb.ays ], [ %i.cdk, %.thread4823 ], [ %i.glr, %sqlite3VdbeChangeEncoding.exit4431 ], [ %.54, %.thread4918 ], [ %.56, %.loopexit5479 ], [ %.57, %bb.aba ], [ 1, %.critedge46 ], [ %.62, %.split.loop.exit6325 ], [ %i.dok, %bb.acr ], [ %.98, %bb.bas ], [ %.88, %sqlite3VdbeChangeEncoding.exit4481 ], [ 7, %.thread5018 ], [ %.120.i, %bb.avz ], [ %.7.i.i.i, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.65, %bb.agf ], [ %i.ekj, %bb.agp ], [ %.46, %bb.yb ], [ %i.cel, %.lr.ph6305 ], [ %i.ibs, %bb.baz ], [ %.106, %.loopexit5493 ], [ %.69, %bb.alw ], [ %.7.i.i.i, %bb.ajr ], [ %.71, %.loopexit5498 ], [ %.73, %sqlite3VdbeMemSetNull.exit4379 ], [ 1, %bb.awo ], [ %.7.i.i.i, %bb.ajq ], [ 7, %bb.aku ], [ 7, %bb.akt ], [ 9, %bb.j ], [ 9, %bb.bgh ], [ 5, %bb.tw ], [ 1, %.critedge3914 ], [ 5, %bb.tj ], [ 7, %sqlite3_mutex_enter.exit.i.i72.i.i ], [ 7, %bb.akq ], [ %i.emd, %bb.agt ], [ 6, %sqlite3VtabCallDestroy.exit.thread7687 ], [ %.0.i4532, %bb.ayr ], [ 11, %sqlite3BtreeTransferRow.exit.thread7676 ], [ 11, %sqlite3BtreeTransferRow.exit.thread7673 ], [ 9, %bb.f ], [ %i.fda, %bb.akh ] ; 2 uses
  %.10 = phi ptr [ %.13, %sqlite3OomFault.exit4669 ], [ %.02972, %.loopexit5497 ], [ %.10.ph, %sqlite3VdbeMemSetNull.exit4222.loopexit12567 ], [ %.02972, %.loopexit5496 ], [ %.02972, %sqlite3VdbeMemSetNull.exit4134 ], [ %.02972, %sqlite3VdbeCheckFkImmediate.exit ], [ %.02972, %bb.uf ], [ %.02972, %sqlite3VdbeMemSetNull.exit4581 ], [ %.02972, %bb.anu ], [ %.02972, %bb.ano ], [ %.02972, %sqlite3VdbeMemSetNull.exit4228 ], [ %.02972, %bb.pz ], [ %.02972, %bb.tg ], [ %.02972, %._crit_edge.i.i.i ], [ %.02972, %bb.vh ], [ %.02972, %.loopexit5501 ], [ %.02972, %.thread7670 ], [ %.02972, %bb.aod ], [ %.02972, %bb.ays ], [ %.02972, %.thread4823 ], [ %.02972, %sqlite3VdbeChangeEncoding.exit4431 ], [ %.02972, %.thread4918 ], [ %.02972, %.loopexit5479 ], [ %.02972, %bb.aba ], [ %.02972, %.critedge46 ], [ %.02972, %.split.loop.exit6325 ], [ %.02972, %bb.acr ], [ %.02972, %bb.bas ], [ %.02972, %sqlite3VdbeChangeEncoding.exit4481 ], [ %.02972, %.thread5018 ], [ %.02972, %bb.avz ], [ %.02972, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.02972, %bb.agf ], [ %.02972, %bb.agp ], [ %.02972, %bb.yb ], [ %.02972, %.lr.ph6305 ], [ %.02972, %bb.baz ], [ %.02972, %.loopexit5493 ], [ %.02972, %bb.alw ], [ %.02972, %bb.ajr ], [ %.02972, %.loopexit5498 ], [ %.02972, %sqlite3VdbeMemSetNull.exit4379 ], [ %.02972, %bb.awo ], [ %.02972, %bb.ajq ], [ %.02972, %bb.aku ], [ %.02972, %bb.akt ], [ %.12973, %bb.j ], [ %.11, %bb.bgh ], [ %.02972, %bb.tw ], [ %.02972, %.critedge3914 ], [ %.02972, %bb.tj ], [ %.02972, %sqlite3_mutex_enter.exit.i.i72.i.i ], [ %.02972, %bb.akq ], [ %.02972, %bb.agt ], [ %.02972, %sqlite3VtabCallDestroy.exit.thread7687 ], [ %.02972, %bb.ayr ], [ %.02972, %sqlite3BtreeTransferRow.exit.thread7676 ], [ %.02972, %sqlite3BtreeTransferRow.exit.thread7673 ], [ %i.an, %bb.f ], [ %.02972, %bb.akh ] ; 5 uses
  %.5 = phi ptr [ %.7, %sqlite3OomFault.exit4669 ], [ %.02970, %.loopexit5497 ], [ %.5.ph, %sqlite3VdbeMemSetNull.exit4222.loopexit12567 ], [ %.02970, %.loopexit5496 ], [ %.02970, %sqlite3VdbeMemSetNull.exit4134 ], [ %.02970, %sqlite3VdbeCheckFkImmediate.exit ], [ %.02970, %bb.uf ], [ %.02970, %sqlite3VdbeMemSetNull.exit4581 ], [ %.02970, %bb.anu ], [ %.02970, %bb.ano ], [ %.02970, %sqlite3VdbeMemSetNull.exit4228 ], [ %.02970, %bb.pz ], [ %.02970, %bb.tg ], [ %.02970, %._crit_edge.i.i.i ], [ %.02970, %bb.vh ], [ %.02970, %.loopexit5501 ], [ %.02970, %.thread7670 ], [ %.02970, %bb.aod ], [ %.02970, %bb.ays ], [ %.02970, %.thread4823 ], [ %.02970, %sqlite3VdbeChangeEncoding.exit4431 ], [ %.02970, %.thread4918 ], [ %.02970, %.loopexit5479 ], [ %.02970, %bb.aba ], [ %.02970, %.critedge46 ], [ %.02970, %.split.loop.exit6325 ], [ %.02970, %bb.acr ], [ %.02970, %bb.bas ], [ %.02970, %sqlite3VdbeChangeEncoding.exit4481 ], [ %.02970, %.thread5018 ], [ %.02970, %bb.avz ], [ %.02970, %sqlite3_mutex_enter.exit.i.i75.i.i.i ], [ %.02970, %bb.agf ], [ %.02970, %bb.agp ], [ %.02970, %bb.yb ], [ %.02970, %.lr.ph6305 ], [ %.02970, %bb.baz ], [ %.02970, %.loopexit5493 ], [ %.02970, %bb.alw ], [ %.02970, %bb.ajr ], [ %.02970, %.loopexit5498 ], [ %.02970, %sqlite3VdbeMemSetNull.exit4379 ], [ %.02970, %bb.awo ], [ %.02970, %bb.ajq ], [ %.02970, %bb.aku ], [ %.02970, %bb.akt ], [ %.1, %bb.j ], [ %.6, %bb.bgh ], [ %.02970, %bb.tw ], [ %.02970, %.critedge3914 ], [ %.02970, %bb.tj ], [ %.02970, %sqlite3_mutex_enter.exit.i.i72.i.i ], [ %.02970, %bb.akq ], [ %.02970, %bb.agt ], [ %.02970, %sqlite3VtabCallDestroy.exit.thread7687 ], [ %.02970, %bb.ayr ], [ %.02970, %sqlite3BtreeTransferRow.exit.thread7676 ], [ %.02970, %sqlite3BtreeTransferRow.exit.thread7673 ], [ %i.an, %bb.f ], [ %.02970, %bb.akh ] ; 5 uses
  %i.ivs = getelementptr inbounds nuw i8, ptr %i.ao, i64 103 ; 3 uses
  %i.ivt = load i8, ptr %i.ivs, align 1, !tbaa !918
  %.not3885 = icmp eq i8 %i.ivt, 0
  br i1 %.not3885, label %bb.bfg, label %bb.bfi

bb.bfg:                                           ; preds = %sqlite3VdbeMemSetNull.exit4222
  %i.ivu = icmp eq i32 %.111, 8458
  br i1 %i.ivu, label %bb.bfh, label %bb.bfi

bb.bfh:                                           ; preds = %bb.bfg
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 105897, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.bfi

bb.bfi:                                           ; preds = %sqlite3VdbeMemSetNull.exit4222, %bb.bfg, %bb.bfh
  %.112 = phi i32 [ %.111, %bb.bfg ], [ 11, %bb.bfh ], [ 7, %sqlite3VdbeMemSetNull.exit4222 ] ; 7 uses
  %i.ivv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ivw = load ptr, ptr %i.ivv, align 8, !tbaa !948
  %i.ivx = icmp eq ptr %i.ivw, null
  %i.ivy = icmp ne i32 %.112, 3082                ; 2 uses
  %or.cond50 = select i1 %i.ivx, i1 %i.ivy, i1 false
  br i1 %or.cond50, label %bb.bfj, label %bb.bfp

bb.bfj:                                           ; preds = %bb.bfi
  switch i32 %.112, label %bb.bfm [
    i32 516, label %sqlite3ErrStr.exit
    i32 100, label %bb.bfk
    i32 101, label %bb.bfl
  ]

bb.bfk:                                           ; preds = %bb.bfj
  br label %sqlite3ErrStr.exit

bb.bfl:                                           ; preds = %bb.bfj
  br label %sqlite3ErrStr.exit

bb.bfm:                                           ; preds = %bb.bfj
  %i.ivz = and i32 %.112, 255                     ; 2 uses
  %i.iwa = icmp samesign ult i32 %i.ivz, 29
  br i1 %i.iwa, label %bb.bfn, label %sqlite3ErrStr.exit

bb.bfn:                                           ; preds = %bb.bfm
  %i.iwb = zext nneg i32 %i.ivz to i64            ; 2 uses
  %i.iwc = shl nuw nsw i64 1, %i.iwb
  %i.iwd = and i64 %i.iwc, 21037060
  %.not.not.i = icmp eq i64 %i.iwd, 0
  br i1 %.not.not.i, label %bb.bfo, label %sqlite3ErrStr.exit

bb.bfo:                                           ; preds = %bb.bfn
  %i.iwe = getelementptr inbounds nuw [8 x i8], ptr @sqlite3ErrStr.aMsg, i64 %i.iwb
  %i.iwf = load ptr, ptr %i.iwe, align 8, !tbaa !741
  br label %sqlite3ErrStr.exit

sqlite3ErrStr.exit:                               ; preds = %bb.bfj, %bb.bfk, %bb.bfl, %bb.bfm, %bb.bfn, %bb.bfo
  %.0.i4644 = phi ptr [ %i.iwf, %bb.bfo ], [ @.str.1488, %bb.bfn ], [ @.str.1488, %bb.bfm ], [ @.str.1491, %bb.bfl ], [ @.str.1490, %bb.bfk ], [ @.str.1489, %bb.bfj ]
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef %.0.i4644)
  br label %bb.bfp

bb.bfp:                                           ; preds = %sqlite3ErrStr.exit, %bb.bfi
  store i32 %.112, ptr %i.be, align 4, !tbaa !904
  %i.iwg = and i32 %.112, 251
  %or.cond.i4645 = icmp eq i32 %i.iwg, 10
  %or.cond6.i = and i1 %i.ivy, %or.cond.i4645
  br i1 %or.cond6.i, label %bb.bfq, label %sqlite3SystemError.exit

bb.bfq:                                           ; preds = %bb.bfp
  %i.iwh = load ptr, ptr %i.ao, align 8, !tbaa !909 ; 2 uses
  %i.iwi = getelementptr inbounds nuw i8, ptr %i.iwh, i64 128
  %i.iwj = load ptr, ptr %i.iwi, align 8, !tbaa !979 ; 2 uses
  %.not.i.i4646 = icmp eq ptr %i.iwj, null
  br i1 %.not.i.i4646, label %sqlite3OsGetLastError.exit.i, label %bb.bfr

bb.bfr:                                           ; preds = %bb.bfq
  %i.iwk = call i32 %i.iwj(ptr noundef nonnull %i.iwh, i32 noundef 0, ptr noundef null) #58, !inline_history !52
  br label %sqlite3OsGetLastError.exit.i

sqlite3OsGetLastError.exit.i:                     ; preds = %bb.bfr, %bb.bfq
  %i.iwl = phi i32 [ %i.iwk, %bb.bfr ], [ 0, %bb.bfq ]
  %i.iwm = getelementptr inbounds nuw i8, ptr %i.ao, i64 92
  store i32 %i.iwl, ptr %i.iwm, align 4, !tbaa !980
  br label %sqlite3SystemError.exit

sqlite3SystemError.exit:                          ; preds = %bb.bfp, %sqlite3OsGetLastError.exit.i
  call fastcc void @sqlite3VdbeLogAbort(ptr noundef nonnull %0, i32 noundef %.112, ptr noundef %.10, ptr noundef %.5)
  %i.iwn = getelementptr inbounds nuw i8, ptr %0, i64 199
  %i.iwo = load i8, ptr %i.iwn, align 1, !tbaa !692
  %i.iwp = icmp eq i8 %i.iwo, 2
  br i1 %i.iwp, label %bb.bfs, label %bb.bft

bb.bfs:                                           ; preds = %sqlite3SystemError.exit
  %i.iwq = call fastcc i32 @sqlite3VdbeHalt(ptr noundef nonnull %0) ; 0 uses
  br label %bb.bft

bb.bft:                                           ; preds = %bb.bfs, %sqlite3SystemError.exit
  switch i32 %.112, label %sqlite3OomFault.exit [
    i32 3082, label %bb.bfu
    i32 11, label %bb.bga
  ]

bb.bfu:                                           ; preds = %bb.bft
  %i.iwr = load i8, ptr %i.ivs, align 1, !tbaa !918
  %i.iws = icmp eq i8 %i.iwr, 0
  br i1 %i.iws, label %bb.bfv, label %sqlite3OomFault.exit

bb.bfv:                                           ; preds = %bb.bfu
  %i.iwt = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.iwu = load i8, ptr %i.iwt, align 8, !tbaa !919
  %i.iwv = icmp eq i8 %i.iwu, 0
  br i1 %i.iwv, label %bb.bfw, label %sqlite3OomFault.exit

bb.bfw:                                           ; preds = %bb.bfv
  store i8 1, ptr %i.ivs, align 1, !tbaa !918
  %i.iww = getelementptr inbounds nuw i8, ptr %i.ao, i64 220
  %i.iwx = load i32, ptr %i.iww, align 4, !tbaa !920
  %i.iwy = icmp sgt i32 %i.iwx, 0
  br i1 %i.iwy, label %bb.bfx, label %bb.bfy

bb.bfx:                                           ; preds = %bb.bfw
  %i.iwz = getelementptr inbounds nuw i8, ptr %i.ao, i64 400
  store atomic volatile i32 1, ptr %i.iwz monotonic, align 8
  br label %bb.bfy

bb.bfy:                                           ; preds = %bb.bfx, %bb.bfw
  %i.ixa = getelementptr inbounds nuw i8, ptr %i.ao, i64 408 ; 2 uses
  %i.ixb = load i32, ptr %i.ixa, align 8, !tbaa !921
  %i.ixc = add i32 %i.ixb, 1
  store i32 %i.ixc, ptr %i.ixa, align 8, !tbaa !921
  %i.ixd = getelementptr inbounds nuw i8, ptr %i.ao, i64 412
  store i16 0, ptr %i.ixd, align 4, !tbaa !922
  %i.ixe = getelementptr inbounds nuw i8, ptr %i.ao, i64 344 ; 2 uses
  %i.ixf = load ptr, ptr %i.ixe, align 8, !tbaa !768 ; 2 uses
  %.not.i4648 = icmp eq ptr %i.ixf, null
  br i1 %.not.i4648, label %sqlite3OomFault.exit, label %bb.bfz

bb.bfz:                                           ; preds = %bb.bfy
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ixf, ptr noundef nonnull @.str.125), !inline_history !48
  %i.ixg = load ptr, ptr %i.ixe, align 8, !tbaa !768 ; 2 uses
  %i.ixh = getelementptr inbounds nuw i8, ptr %i.ixg, i64 24
  store i32 7, ptr %i.ixh, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.ixg, i64 224
  %.018.i4649 = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i4649, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i4650

.lr.ph.i4650:                                     ; preds = %bb.bfz, %.lr.ph.i4650
  %.020.i = phi ptr [ %.0.i4651, %.lr.ph.i4650 ], [ %.018.i4649, %bb.bfz ] ; 3 uses
  %i.ixi = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.ixj = load i32, ptr %i.ixi, align 4, !tbaa !780
  %i.ixk = add nsw i32 %i.ixj, 1
  store i32 %i.ixk, ptr %i.ixi, align 4, !tbaa !780
  %i.ixl = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ixl, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i4651 = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i4651, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i4650, !llvm.loop !36

bb.bga:                                           ; preds = %bb.bft
  %i.ixm = getelementptr inbounds nuw i8, ptr %i.ao, i64 101
  %i.ixn = load i8, ptr %i.ixm, align 1, !tbaa !934
  %i.ixo = icmp eq i8 %i.ixn, 0
  br i1 %i.ixo, label %bb.bgb, label %sqlite3OomFault.exit

bb.bgb:                                           ; preds = %bb.bga
  %i.ixp = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.ixq = load i64, ptr %i.ixp, align 8, !tbaa !917
  %i.ixr = or i64 %i.ixq, 8589934592
  store i64 %i.ixr, ptr %i.ixp, align 8, !tbaa !917
  br label %sqlite3OomFault.exit

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i4650, %bb.bfz, %bb.bfy, %bb.bfv, %bb.bfu, %bb.bft, %bb.bgb, %bb.bga
  %.not3886 = icmp eq i8 %.43005, 0
  br i1 %.not3886, label %sqlite3ResetOneSchema.exit, label %bb.bgc

bb.bgc:                                           ; preds = %sqlite3OomFault.exit
  %i.ixs = zext i8 %.43005 to i64
  %i.ixt = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ixu = load ptr, ptr %i.ixt, align 8, !tbaa !605 ; 2 uses
  %i.ixv = getelementptr [32 x i8], ptr %i.ixu, i64 %i.ixs
  %i.ixw = getelementptr i8, ptr %i.ixv, i64 -8
  %i.ixx = load ptr, ptr %i.ixw, align 8, !tbaa !642
  %i.ixy = getelementptr inbounds nuw i8, ptr %i.ixx, i64 114 ; 2 uses
  %i.ixz = load i16, ptr %i.ixy, align 2, !tbaa !1013
  %i.iya = or i16 %i.ixz, 8
  store i16 %i.iya, ptr %i.ixy, align 2, !tbaa !1013
  %i.iyb = getelementptr inbounds nuw i8, ptr %i.ixu, i64 56
  %i.iyc = load ptr, ptr %i.iyb, align 8, !tbaa !642
  %i.iyd = getelementptr inbounds nuw i8, ptr %i.iyc, i64 114 ; 2 uses
  %i.iye = load i16, ptr %i.iyd, align 2, !tbaa !1013
  %i.iyf = or i16 %i.iye, 8
  store i16 %i.iyf, ptr %i.iyd, align 2, !tbaa !1013
  %i.iyg = getelementptr inbounds nuw i8, ptr %i.ao, i64 44 ; 2 uses
  %i.iyh = load i32, ptr %i.iyg, align 4, !tbaa !1014
  %i.iyi = and i32 %i.iyh, -17
  store i32 %i.iyi, ptr %i.iyg, align 4, !tbaa !1014
  %i.iyj = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.iyk = load i32, ptr %i.iyj, align 8, !tbaa !1012
  %i.iyl = icmp eq i32 %i.iyk, 0
  br i1 %i.iyl, label %.preheader.i4653, label %sqlite3ResetOneSchema.exit

.preheader.i4653:                                 ; preds = %bb.bgc
  %i.iym = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.iyn = load i32, ptr %i.iym, align 8, !tbaa !604 ; 2 uses
  %i.iyo = icmp sgt i32 %i.iyn, 0
  br i1 %i.iyo, label %.lr.ph.i4654, label %sqlite3ResetOneSchema.exit

.lr.ph.i4654:                                     ; preds = %.preheader.i4653, %bb.bge
  %i.iyp = phi i32 [ %i.iyx, %bb.bge ], [ %i.iyn, %.preheader.i4653 ]
  %indvars.iv.i4655 = phi i64 [ %indvars.iv.next.i4658, %bb.bge ], [ 0, %.preheader.i4653 ] ; 2 uses
  %i.iyq = load ptr, ptr %i.ixt, align 8, !tbaa !605
  %i.iyr = getelementptr inbounds nuw [32 x i8], ptr %i.iyq, i64 %indvars.iv.i4655
  %i.iys = getelementptr inbounds nuw i8, ptr %i.iyr, i64 24
  %i.iyt = load ptr, ptr %i.iys, align 8, !tbaa !642 ; 2 uses
  %i.iyu = getelementptr inbounds nuw i8, ptr %i.iyt, i64 114
  %i.iyv = load i16, ptr %i.iyu, align 2, !tbaa !1013
  %i.iyw = and i16 %i.iyv, 8
  %.not.i4656 = icmp eq i16 %i.iyw, 0
  br i1 %.not.i4656, label %bb.bge, label %bb.bgd

bb.bgd:                                           ; preds = %.lr.ph.i4654
  call void @sqlite3SchemaClear(ptr noundef nonnull %i.iyt)
end_hunk_1
begin_hunk_2_@sqlite3Update:bb.a
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !2049 ; 2 uses
  %.not.i892 = icmp eq ptr %i.we, null
  %..i = select i1 %.not.i892, ptr %0, ptr %i.we
  %i.wf = getelementptr inbounds nuw i8, ptr %..i, i64 32
  store i8 1, ptr %i.wf, align 8, !tbaa !1200
  br label %bb.ei

bb.do:                                            ; preds = %bb.dm
  br i1 %.not801, label %bb.dp, label %.thread79

.thread79:                                        ; preds = %.thread58, %bb.do
  %.46697 = phi i32 [ %.4, %bb.do ], [ %.2754, %.thread58 ]
  %.07316995 = phi i32 [ %.0731, %bb.do ], [ 0, %.thread58 ]
  %.07297193 = phi i32 [ %.0729, %bb.do ], [ 0, %.thread58 ]
  %.07287391 = phi i32 [ %.0728, %bb.do ], [ %i.vk, %.thread58 ]
  %.07277789 = phi i16 [ %.0727, %bb.do ], [ %i.vi, %.thread58 ]
  %.07157887 = phi i32 [ %.0715, %bb.do ], [ %i.vo, %.thread58 ]
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.ul, i32 noundef 16)
  br label %bb.dy

bb.dp:                                            ; preds = %bb.do
  %i.wg = load i8, ptr %i.sz, align 2, !tbaa !2015
  %i.wh = icmp ne i8 %i.wg, 0
  %or.cond15 = or i1 %i.tf, %i.wh
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.tg
  %i.wi = icmp ne i8 %i.po, 0
  %or.cond19 = or i1 %or.cond17, %i.wi
  %i.wj = load i32, ptr %i.b, align 4
  %i.wk = icmp ne i32 %i.wj, 0
  %or.cond21 = select i1 %or.cond19, i1 true, i1 %i.wk
  br i1 %or.cond21, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wl = icmp eq ptr %3, null
  br i1 %i.wl, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !795
  %i.wo = and i32 %i.wn, 4194304
  %.not813 = icmp eq i32 %i.wo, 0
  br i1 %.not813, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dp
  %.0732 = phi i16 [ 4, %bb.dp ], [ 12, %bb.ds ], [ 4, %bb.dr ]
  %i.wp = call fastcc ptr @sqlite3WhereBegin(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef zeroext %.0732, i32 noundef %.0751) ; 8 uses
  %i.wq = icmp eq ptr %i.wp, null
  br i1 %i.wq, label %bb.id, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 40
  %i.ws = load i64, ptr %i.wr, align 8            ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ws to i32 ; 4 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.ws, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 6 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wp, i64 66
  %i.wu = load i8, ptr %i.wt, align 2, !tbaa !733 ; 3 uses
  %i.wv = getelementptr i8, ptr %i.wp, i64 68
  %.val862 = load i8, ptr %i.wv, align 4
  %i.ww = and i8 %.val862, 1                      ; 4 uses
  %.not814 = icmp eq i8 %i.wu, 1
  br i1 %.not814, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wx = zext i8 %i.wu to i32
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !2049 ; 2 uses
  %.not.i893 = icmp eq ptr %i.wz, null
  %..i894 = select i1 %.not.i893, ptr %0, ptr %i.wz
  %i.xa = getelementptr inbounds nuw i8, ptr %..i894, i64 32
  store i8 1, ptr %i.xa, align 8, !tbaa !1200
  %i.xb = icmp eq i8 %i.wu, 2
  br i1 %i.xb, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.xc = icmp slt i64 %i.ws, 0
  %.not815 = icmp eq i32 %.4, %.sroa.5.0.extract.trunc
  %or.cond852 = select i1 %i.xc, i1 true, i1 %.not815
  br i1 %or.cond852, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xd = sub nsw i32 %.sroa.5.0.extract.trunc, %i.cq
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds i8, ptr %i.ed, i64 %i.xe
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !733
  %.not816 = icmp eq i8 %i.xg, 0
  %spec.select853 = select i1 %.not816, i32 2, i32 0
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.du, %bb.dv, %.thread79
  %.46696 = phi i32 [ %.4, %bb.du ], [ %.4, %bb.dw ], [ %.4, %bb.dx ], [ %.4, %bb.dv ], [ %.46697, %.thread79 ] ; 8 uses
  %.07316994 = phi i32 [ %.0731, %bb.du ], [ %.0731, %bb.dw ], [ %.0731, %bb.dx ], [ %.0731, %bb.dv ], [ %.07316995, %.thread79 ] ; 8 uses
  %.07297192 = phi i32 [ %.0729, %bb.du ], [ %.0729, %bb.dw ], [ %.0729, %bb.dx ], [ %.0729, %bb.dv ], [ %.07297193, %.thread79 ] ; 4 uses
  %.07287390 = phi i32 [ %.0728, %bb.du ], [ %.0728, %bb.dw ], [ %.0728, %bb.dx ], [ %.0728, %bb.dv ], [ %.07287391, %.thread79 ] ; 11 uses
  %.07277788 = phi i16 [ %.0727, %bb.du ], [ %.0727, %bb.dw ], [ %.0727, %bb.dx ], [ %.0727, %bb.dv ], [ %.07277789, %.thread79 ] ; 8 uses
  %.07157886 = phi i32 [ %.0715, %bb.du ], [ %.0715, %bb.dw ], [ %.0715, %bb.dx ], [ %.0715, %bb.dv ], [ %.07157887, %.thread79 ] ; 6 uses
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.extract.trunc, %bb.du ], [ %.sroa.5.0.extract.trunc, %bb.dw ], [ %.sroa.5.0.extract.trunc, %bb.dx ], [ %.sroa.5.0.extract.trunc, %bb.dv ], [ undef, %.thread79 ] ; 6 uses
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc, %bb.du ], [ %.sroa.0.0.extract.trunc, %bb.dw ], [ %.sroa.0.0.extract.trunc, %bb.dx ], [ %.sroa.0.0.extract.trunc, %bb.dv ], [ undef, %.thread79 ] ; 6 uses
  %.0760 = phi ptr [ %i.wp, %bb.du ], [ %i.wp, %bb.dw ], [ %i.wp, %bb.dx ], [ %i.wp, %bb.dv ], [ null, %.thread79 ] ; 6 uses
  %.1736 = phi i32 [ 1, %bb.du ], [ 2, %bb.dw ], [ %spec.select853, %bb.dx ], [ %i.wx, %bb.dv ], [ 1, %.thread79 ] ; 6 uses
  %.0725.shrunk = phi i8 [ %i.ww, %bb.du ], [ %i.ww, %bb.dw ], [ %i.ww, %bb.dx ], [ %i.ww, %bb.dv ], [ 0, %.thread79 ] ; 6 uses
  %i.xh = load i32, ptr %i.cs, align 8, !tbaa !1084
  %i.xi = and i32 %i.xh, 128
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %bb.dz, label %.preheader122

.preheader122:                                    ; preds = %bb.dy
  %i.xk = sext i16 %.07277788 to i32              ; 6 uses
  %i.xl = icmp sgt i16 %.07277788, 0
  br i1 %i.xl, label %.lr.ph217, label %._crit_edge218

.lr.ph217:                                        ; preds = %.preheader122
  %i.xm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %wide.trip.count = zext nneg i32 %i.xk to i64
  br label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.xn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870382, i32 noundef 137, i32 noundef %.46696, i32 noundef %.0723) ; 0 uses
  %i.xo = icmp eq i32 %.1736, 0
  br i1 %i.xo, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.xp = load i32, ptr %i.sv, align 4, !tbaa !1175
  %i.xq = add nsw i32 %i.xp, 1                    ; 2 uses
  store i32 %i.xq, ptr %i.sv, align 4, !tbaa !1175
  store i32 %i.xq, ptr %i.sy, align 4, !tbaa !570
  %i.xr = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870382, i32 noundef 130, i32 noundef %.07316994, i32 noundef %.0717, i32 noundef %.0723) ; 0 uses
  br label %bb.ei

bb.eb:                                            ; preds = %bb.dz
  %.not819 = icmp eq i32 %.07297192, 0
  br i1 %.not819, label %bb.ei, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call fastcc void @sqlite3VdbeChangeToNoop(ptr noundef nonnull %.0.i870382, i32 noundef %.07297192)
  br label %bb.ei

bb.ed:                                            ; preds = %.lr.ph217, %bb.ed
  %indvars.iv286 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next287, %bb.ed ] ; 3 uses
  %i.xs = load ptr, ptr %i.xm, align 8, !tbaa !1161
  %i.xt = getelementptr inbounds nuw [2 x i8], ptr %i.xs, i64 %indvars.iv286
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !783
  %i.xv = sext i16 %i.xu to i32
  %i.xw = trunc i64 %indvars.iv286 to i32
  %i.xx = add i32 %.07287390, %i.xw
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef nonnull %.0.i870382, ptr noundef nonnull %i.t, i32 noundef %.46696, i32 noundef %i.xv, i32 noundef %i.xx)
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge218, label %bb.ed, !llvm.loop !4721

._crit_edge218:                                   ; preds = %bb.ed, %.preheader122
  %.not817 = icmp eq i32 %.1736, 0
  br i1 %.not817, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %._crit_edge218
  %.not818 = icmp eq i32 %.07297192, 0
  br i1 %.not818, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call fastcc void @sqlite3VdbeChangeToNoop(ptr noundef nonnull %.0.i870382, i32 noundef %.07297192)
  br label %bb.ei

bb.eg:                                            ; preds = %._crit_edge218
  %i.xy = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !1759 ; 2 uses
  %.not.i895 = icmp eq ptr %i.xz, null
  br i1 %.not.i895, label %bb.eh, label %sqlite3IndexAffinityStr.exit

bb.eh:                                            ; preds = %bb.eg
  %i.ya = call fastcc ptr @computeIndexAffStr(ptr noundef nonnull %i.e, ptr noundef nonnull %i.dg), !inline_history !327
  br label %sqlite3IndexAffinityStr.exit

sqlite3IndexAffinityStr.exit:                     ; preds = %bb.eg, %bb.eh
  %.0.i896 = phi ptr [ %i.ya, %bb.eh ], [ %i.xz, %bb.eg ]
  %i.yb = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %.0.i870382, i32 noundef 99, i32 noundef %.07287390, i32 noundef %i.xk, i32 noundef %.07157886, ptr noundef %.0.i896, i32 noundef %i.xk) ; 0 uses
  %i.yc = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870382, i32 noundef 140, i32 noundef %.07316994, i32 noundef %.07157886, i32 noundef %.07287390, i32 noundef %i.xk) ; 0 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ee, %bb.ef, %bb.eb, %bb.ec, %bb.ea, %sqlite3IndexAffinityStr.exit, %bb.dn
  %i.yd = phi i1 [ true, %bb.dn ], [ false, %bb.ea ], [ false, %bb.eb ], [ false, %bb.ec ], [ false, %sqlite3IndexAffinityStr.exit ], [ false, %bb.ee ], [ false, %bb.ef ] ; 3 uses
  %.072776 = phi i16 [ %.072775, %bb.dn ], [ %.07277788, %bb.ea ], [ %.07277788, %bb.eb ], [ %.07277788, %bb.ec ], [ %.07277788, %sqlite3IndexAffinityStr.exit ], [ %.07277788, %bb.ee ], [ %.07277788, %bb.ef ] ; 3 uses
  %.072872 = phi i32 [ %.072874, %bb.dn ], [ %.07287390, %bb.ea ], [ %.07287390, %bb.eb ], [ %.07287390, %bb.ec ], [ %.07287390, %sqlite3IndexAffinityStr.exit ], [ %.07287390, %bb.ee ], [ %.07287390, %bb.ef ] ; 2 uses
  %.073168 = phi i32 [ %.073170, %bb.dn ], [ %.07316994, %bb.ea ], [ %.07316994, %bb.eb ], [ %.07316994, %bb.ec ], [ %.07316994, %sqlite3IndexAffinityStr.exit ], [ %.07316994, %bb.ee ], [ %.07316994, %bb.ef ] ; 9 uses
  %.465 = phi i32 [ %.467, %bb.dn ], [ %.46696, %bb.ea ], [ %.46696, %bb.eb ], [ %.46696, %bb.ec ], [ %.46696, %sqlite3IndexAffinityStr.exit ], [ %.46696, %bb.ee ], [ %.46696, %bb.ef ] ; 20 uses
  %.sroa.5.1 = phi i32 [ undef, %bb.dn ], [ %.sroa.5.0, %bb.ea ], [ %.sroa.5.0, %bb.eb ], [ %.sroa.5.0, %bb.ec ], [ %.sroa.5.0, %sqlite3IndexAffinityStr.exit ], [ %.sroa.5.0, %bb.ee ], [ %.sroa.5.0, %bb.ef ] ; 3 uses
  %.sroa.0.1 = phi i32 [ undef, %bb.dn ], [ %.sroa.0.0, %bb.ea ], [ %.sroa.0.0, %bb.eb ], [ %.sroa.0.0, %bb.ec ], [ %.sroa.0.0, %sqlite3IndexAffinityStr.exit ], [ %.sroa.0.0, %bb.ee ], [ %.sroa.0.0, %bb.ef ] ; 3 uses
  %.1761 = phi ptr [ null, %bb.dn ], [ %.0760, %bb.ea ], [ %.0760, %bb.eb ], [ %.0760, %bb.ec ], [ %.0760, %sqlite3IndexAffinityStr.exit ], [ %.0760, %bb.ee ], [ %.0760, %bb.ef ] ; 2 uses
  %.2737 = phi i32 [ 0, %bb.dn ], [ 0, %bb.ea ], [ %.1736, %bb.eb ], [ %.1736, %bb.ec ], [ 0, %sqlite3IndexAffinityStr.exit ], [ %.1736, %bb.ee ], [ %.1736, %bb.ef ] ; 7 uses
  %.0730 = phi i32 [ %.pre-phi322, %bb.dn ], [ 0, %bb.ea ], [ 0, %bb.eb ], [ 0, %bb.ec ], [ 0, %sqlite3IndexAffinityStr.exit ], [ %i.xk, %bb.ee ], [ %i.xk, %bb.ef ] ; 3 uses
  %.1726.shrunk = phi i8 [ 1, %bb.dn ], [ %.0725.shrunk, %bb.ea ], [ %.0725.shrunk, %bb.eb ], [ %.0725.shrunk, %bb.ec ], [ %.0725.shrunk, %sqlite3IndexAffinityStr.exit ], [ %.0725.shrunk, %bb.ee ], [ %.0725.shrunk, %bb.ef ]
  %.1716 = phi i32 [ %.072874, %bb.dn ], [ %.07157886, %bb.ea ], [ %.07157886, %bb.eb ], [ %.07157886, %bb.ec ], [ %.07157886, %sqlite3IndexAffinityStr.exit ], [ %.07287390, %bb.ee ], [ %.07287390, %bb.ef ] ; 6 uses
  %.1726 = zext nneg i8 %.1726.shrunk to i32      ; 2 uses
  br i1 %.not801, label %bb.ej, label %bb.fl

bb.ej:                                            ; preds = %bb.ei
  %i.ye = icmp ne i32 %.2737, 2                   ; 2 uses
  %or.cond23 = select i1 %i.uh, i1 %i.ye, i1 false
  br i1 %or.cond23, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call fastcc void @sqlite3WhereEnd(ptr noundef %.1761)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  br i1 %i.ce, label %bb.ey, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store i32 0, ptr %i.c, align 4, !tbaa !570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store i32 0, ptr %i.d, align 4, !tbaa !570
  %cond = icmp eq i32 %.2737, 0
  br i1 %cond, label %.thread99, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.yf = icmp sgt i32 %.sroa.0.1, -1
  br i1 %i.yf, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.yg = sub nsw i32 %.sroa.0.1, %i.cq
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds i8, ptr %i.ed, i64 %i.yh
  store i8 0, ptr %i.yi, align 1, !tbaa !733
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.yj = icmp sgt i32 %.sroa.5.1, -1             ; 2 uses
  br i1 %i.yj, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.yk = sub nsw i32 %.sroa.5.1, %i.cq
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds i8, ptr %i.ed, i64 %i.yl
  store i8 0, ptr %i.ym, align 1, !tbaa !733
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq
  br i1 %i.ye, label %.thread99, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.neg = sext i1 %i.yj to i32
  %i.yn = add nsw i32 %.0757.lcssa, %.neg
  %i.yo = icmp sgt i32 %i.yn, 0
  br i1 %i.yo, label %bb.et, label %.thread99

.thread99:                                        ; preds = %bb.es, %bb.er, %bb.em
  %i.yp = call fastcc i32 @sqlite3OpenTableAndIndices(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 116, i8 noundef zeroext 0, i32 noundef %i.cq, ptr noundef nonnull %i.ed, ptr noundef %i.c, ptr noundef %i.d) ; 0 uses
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.et:                                            ; preds = %bb.es
  %i.yq = call fastcc i32 @sqlite3VdbeAddOp0(ptr noundef nonnull %.0.i870382, i32 noundef 15) ; 4 uses
  %i.yr = call fastcc i32 @sqlite3OpenTableAndIndices(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 116, i8 noundef zeroext 0, i32 noundef %i.cq, ptr noundef nonnull %i.ed, ptr noundef %i.c, ptr noundef %i.d) ; 0 uses
  %.not821 = icmp eq i32 %i.yq, 0
  br i1 %.not821, label %sqlite3VdbeJumpHereOrPopInst.exit, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ys = getelementptr inbounds nuw i8, ptr %.0.i870382, i64 144 ; 2 uses
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !703 ; 2 uses
  %i.yu = add nsw i32 %i.yt, -1
  %i.yv = icmp eq i32 %i.yq, %i.yu
  br i1 %i.yv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 %i.yq, ptr %i.ys, align 8, !tbaa !703
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.ew:                                            ; preds = %bb.eu
  %i.yw = load ptr, ptr %.0.i870382, align 8, !tbaa !679
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 103
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !918
  %.not.i.i.i897 = icmp eq i8 %i.yy, 0
  br i1 %.not.i.i.i897, label %bb.ex, label %sqlite3VdbeChangeP2.exit.i

bb.ex:                                            ; preds = %bb.ew
  %i.yz = getelementptr inbounds nuw i8, ptr %.0.i870382, i64 136
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !702
  %i.zb = sext i32 %i.yq to i64
  %i.zc = getelementptr inbounds [32 x i8], ptr %i.za, i64 %i.zb
  br label %sqlite3VdbeChangeP2.exit.i

sqlite3VdbeChangeP2.exit.i:                       ; preds = %bb.ex, %bb.ew
  %.0.i.i.i = phi ptr [ %i.zc, %bb.ex ], [ @sqlite3VdbeGetOp.dummy, %bb.ew ]
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.yt, ptr %i.zd, align 8, !tbaa !927
  br label %sqlite3VdbeJumpHereOrPopInst.exit

sqlite3VdbeJumpHereOrPopInst.exit:                ; preds = %sqlite3VdbeChangeP2.exit.i, %bb.ev, %.thread99, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %bb.ey

bb.ey:                                            ; preds = %sqlite3VdbeJumpHereOrPopInst.exit, %bb.el
  %.not822 = icmp eq i32 %.2737, 0
  br i1 %.not822, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.not823 = icmp eq i32 %.sroa.0.1, %.465
  %.not824 = icmp eq i32 %.sroa.5.1, %.465
  %or.cond855 = select i1 %.not823, i1 true, i1 %.not824
  br i1 %or.cond855, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ze = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870382, i32 noundef 28, i32 noundef %.465, i32 noundef %i.ul, i32 noundef %.1716, i32 noundef %.0730) ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.not825 = icmp eq i32 %.2737, 1
  br i1 %.not825, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.zf = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.zg = add nsw i32 %i.zf, -1                   ; 2 uses
  store i32 %i.zg, ptr %i.uj, align 4, !tbaa !1881
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.0733 = phi i32 [ %i.zg, %bb.fc ], [ %i.ul, %bb.fb ]
  %.not826 = icmp eq ptr %i.dg, null
  %i.zh = select i1 %.not826, i32 %.0723, i32 %.1716
  %i.zi = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870382, i32 noundef 51, i32 noundef %i.zh, i32 noundef %i.ul) ; 0 uses
  br label %bb.fl

bb.fe:                                            ; preds = %bb.ey
  %i.zj = icmp ne ptr %i.dg, null                 ; 2 uses
  %or.cond25 = or i1 %i.zj, %i.yd
  br i1 %or.cond25, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.zk = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.zl = add nsw i32 %i.zk, -1                   ; 8 uses
  store i32 %i.zl, ptr %i.uj, align 4, !tbaa !1881
  %i.zm = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870382, i32 noundef 36, i32 noundef %.073168, i32 noundef %i.ul) ; 0 uses
  %i.zn = getelementptr i8, ptr %.0.i870382, i64 144
  %.val = load i32, ptr %i.zn, align 8, !tbaa !703 ; 4 uses
  br i1 %i.yd, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.ce, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.zj, label %.preheader, label %bb.fi

.preheader:                                       ; preds = %bb.fh
  %i.zo = sext i16 %.072776 to i32                ; 2 uses
  %i.zp = icmp sgt i16 %.072776, 0
  br i1 %i.zp, label %.lr.ph221, label %._crit_edge222

.lr.ph221:                                        ; preds = %.preheader, %.lr.ph221
  %.5220 = phi i32 [ %i.zs, %.lr.ph221 ], [ 0, %.preheader ] ; 3 uses
  %i.zq = add nsw i32 %.5220, %.072872
  %i.zr = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870382, i32 noundef 96, i32 noundef %.073168, i32 noundef %.5220, i32 noundef %i.zq) ; 0 uses
  %i.zs = add nuw nsw i32 %.5220, 1               ; 2 uses
  %exitcond289.not = icmp eq i32 %i.zs, %i.zo
  br i1 %exitcond289.not, label %._crit_edge222, label %.lr.ph221, !llvm.loop !4722

._crit_edge222:                                   ; preds = %.lr.ph221, %.preheader
  %i.zt = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870382, i32 noundef 28, i32 noundef %.465, i32 noundef %i.zl, i32 noundef %.072872, i32 noundef %i.zo) ; 0 uses
  br label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.zu = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870382, i32 noundef 137, i32 noundef %.073168, i32 noundef %.0723) ; 0 uses
  %i.zv = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870382, i32 noundef 31, i32 noundef %.465, i32 noundef %i.zl, i32 noundef %.0723) ; 0 uses
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ff
  %i.zw = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870382, i32 noundef 136, i32 noundef %.073168, i32 noundef %.1716) ; 0 uses
  %i.zx = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870382, i32 noundef 28, i32 noundef %.465, i32 noundef %i.zl, i32 noundef %.1716, i32 noundef 0) ; 0 uses
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fe
  %i.zy = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870382, i32 noundef 36, i32 noundef %.073168, i32 noundef %i.ul) ; 0 uses
  %i.zz = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.aaa = add nsw i32 %i.zz, -1                  ; 3 uses
  store i32 %i.aaa, ptr %i.uj, align 4, !tbaa !1881
  %i.aab = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870382, i32 noundef 137, i32 noundef %.073168, i32 noundef %.0723)
  %i.aac = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870382, i32 noundef 31, i32 noundef %.465, i32 noundef %i.aaa, i32 noundef %.0723) ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fd, %bb.fj, %._crit_edge222, %bb.fi, %bb.fg, %bb.fk, %bb.ei
  %.0762 = phi i32 [ 0, %bb.fd ], [ %.val, %bb.fg ], [ %.val, %._crit_edge222 ], [ %.val, %bb.fi ], [ %.val, %bb.fj ], [ %i.aab, %bb.fk ], [ 0, %bb.ei ]
  %.1734 = phi i32 [ %.0733, %bb.fd ], [ %i.zl, %bb.fg ], [ %i.zl, %._crit_edge222 ], [ %i.zl, %bb.fi ], [ %i.zl, %bb.fj ], [ %i.aaa, %bb.fk ], [ %i.ul, %bb.ei ] ; 9 uses
  %.not827 = icmp eq i8 %.0744.lcssa398, 0        ; 2 uses
  br i1 %.not827, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.uh, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %.0741.lcssa400, i32 noundef %.1722)
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.aad = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870382, i32 noundef 96, i32 noundef %.073168, i32 noundef %.0738.lcssa402, i32 noundef %.1722) ; 0 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aae = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i870382, i32 noundef 13, i32 noundef %.1722) ; 0 uses
end_hunk_2
begin_hunk_3_@fts3SegmentMerge:bb.a
  %.not153.not.i = icmp eq ptr %i.iq, null
  br i1 %.not153.not.i, label %.thread152, label %bb.bc

bb.bc:                                            ; preds = %sqlite3_realloc64.exit190.i
  %i.ir = shl nsw i32 %i.dg, 1
  store i32 %i.ir, ptr %i.ii, align 4, !tbaa !6234
  store ptr %i.iq, ptr %i.il, align 8, !tbaa !6235
  store ptr %i.iq, ptr %i.ed, align 8, !tbaa !6231
  br label %fts3SegWriterAdd.exit

fts3SegWriterAdd.exit:                            ; preds = %sqlite3Fts3PutVarint.exit187._crit_edge.i, %bb.bc
  %.pre-phi.i = phi i64 [ %.pre242.i, %sqlite3Fts3PutVarint.exit187._crit_edge.i ], [ %i.io, %bb.bc ]
  %i.is = phi ptr [ %.pre241.i, %sqlite3Fts3PutVarint.exit187._crit_edge.i ], [ %i.iq, %bb.bc ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.is, ptr align 1 %i.df, i64 %.pre-phi.i, i1 false)
  store i32 %i.dg, ptr %i.ef, align 8, !tbaa !6232
  br label %bb.y, !llvm.loop !6213

bb.bd:                                            ; preds = %bb.y
  br i1 %i.j, label %bb.bt, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.it = load ptr, ptr %5, align 8, !tbaa !2639
  %i.iu = load i32, ptr %i.g, align 8, !tbaa !2638 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store ptr null, ptr %i.a, align 8, !tbaa !889
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph.preheader.i, label %._crit_edge.thread.i

.lr.ph.preheader.i:                               ; preds = %bb.be
  %i.iw = zext nneg i32 %i.iu to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !2641
  %i.iz = call fastcc i32 @fts3DeleteSegment(ptr noundef nonnull %0, ptr noundef %i.iy), !inline_history !6214 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 0                    ; 2 uses
  %i.jb = icmp samesign ult i64 %indvars.iv.next.i, %i.iw
  %i.jc = select i1 %i.ja, i1 %i.jb, i1 false
  br i1 %i.jc, label %.lr.ph.i, label %._crit_edge.i75, !llvm.loop !6215

._crit_edge.i75:                                  ; preds = %.lr.ph.i
  br i1 %i.ja, label %._crit_edge.thread.i, label %fts3DeleteSegdir.exit.thread

._crit_edge.thread.i:                             ; preds = %._crit_edge.i75, %bb.be
  br i1 %i.ct, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %._crit_edge.thread.i
  %i.jd = call fastcc i32 @fts3SqlStmt(ptr noundef nonnull %0, i32 noundef 26, ptr noundef %i.a, ptr noundef null), !inline_history !6214 ; 2 uses
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.bg, label %fts3DeleteSegdir.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.jf = load ptr, ptr %i.a, align 8, !tbaa !889 ; 9 uses
  %i.jg = getelementptr i8, ptr %0, i64 492       ; 2 uses
  %.val34.i = load i32, ptr %i.jg, align 4, !tbaa !2606
  %i.jh = sext i32 %1 to i64                      ; 2 uses
  %i.ji = sext i32 %.val34.i to i64
  %i.jj = mul nsw i64 %i.ji, %i.jh
  %i.jk = sext i32 %2 to i64                      ; 2 uses
  %i.jl = add nsw i64 %i.jj, %i.jk
  %i.jm = shl nsw i64 %i.jl, 10                   ; 2 uses
  %i.jn = call fastcc i32 @vdbeUnbind(ptr noundef %i.jf, i32 noundef 0), !inline_history !6216
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.bh, label %sqlite3_bind_int64.exit.i71

bb.bh:                                            ; preds = %bb.bg
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 128
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !693 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 20 ; 2 uses
  %i.js = load i16, ptr %i.jr, align 4, !tbaa !686
  %i.jt = and i16 %i.js, -28672
  %.not.i.i.i72 = icmp eq i16 %i.jt, 0
  br i1 %.not.i.i.i72, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.jq, i64 noundef %i.jm), !inline_history !6216
  br label %sqlite3VdbeMemSetInt64.exit.i.i73

bb.bj:                                            ; preds = %bb.bh
  store i64 %i.jm, ptr %i.jq, align 8, !tbaa !733
  store i16 4, ptr %i.jr, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i.i73

sqlite3VdbeMemSetInt64.exit.i.i73:                ; preds = %bb.bj, %bb.bi
  %i.ju = load ptr, ptr %i.jf, align 8, !tbaa !679
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !594 ; 2 uses
  %.not.i8.i.i74 = icmp eq ptr %i.jw, null
  br i1 %.not.i8.i.i74, label %sqlite3_bind_int64.exit.i71, label %bb.bk

bb.bk:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i73
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.jx(ptr noundef nonnull %i.jw) #58, !inline_history !6217
  br label %sqlite3_bind_int64.exit.i71

sqlite3_bind_int64.exit.i71:                      ; preds = %bb.bk, %sqlite3VdbeMemSetInt64.exit.i.i73, %bb.bg
  %.val33.i = load i32, ptr %i.jg, align 4, !tbaa !2606
  %i.jy = sext i32 %.val33.i to i64
  %i.jz = mul nsw i64 %i.jy, %i.jh
  %i.ka = add nsw i64 %i.jz, %i.jk
  %i.kb = shl nsw i64 %i.ka, 10
  %i.kc = or disjoint i64 %i.kb, 1023             ; 2 uses
  %i.kd = call fastcc i32 @vdbeUnbind(ptr noundef %i.jf, i32 noundef 1), !inline_history !6216
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.bl, label %fts3DeleteSegdir.exit

bb.bl:                                            ; preds = %sqlite3_bind_int64.exit.i71
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jf, i64 128
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !693 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 56 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 76 ; 2 uses
  %i.kj = load i16, ptr %i.ki, align 4, !tbaa !686
  %i.kk = and i16 %i.kj, -28672
  %.not.i.i35.i = icmp eq i16 %i.kk, 0
  br i1 %.not.i.i35.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.kh, i64 noundef %i.kc), !inline_history !6216
  br label %sqlite3VdbeMemSetInt64.exit.i36.i

bb.bn:                                            ; preds = %bb.bl
  store i64 %i.kc, ptr %i.kh, align 8, !tbaa !733
  store i16 4, ptr %i.ki, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i36.i

sqlite3VdbeMemSetInt64.exit.i36.i:                ; preds = %bb.bn, %bb.bm
  %i.kl = load ptr, ptr %i.jf, align 8, !tbaa !679
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !594 ; 2 uses
  %.not.i8.i37.i = icmp eq ptr %i.kn, null
  br i1 %.not.i8.i37.i, label %fts3DeleteSegdir.exit, label %.sink.split.i

bb.bo:                                            ; preds = %._crit_edge.thread.i
  %i.ko = call fastcc i32 @fts3SqlStmt(ptr noundef nonnull %0, i32 noundef 16, ptr noundef %i.a, ptr noundef null), !inline_history !6214 ; 2 uses
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.bp, label %fts3DeleteSegdir.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.kq = load ptr, ptr %i.a, align 8, !tbaa !889 ; 6 uses
  %i.kr = getelementptr i8, ptr %0, i64 492
  %.val.i70 = load i32, ptr %i.kr, align 4, !tbaa !2606
  %i.ks = sext i32 %1 to i64
  %i.kt = sext i32 %.val.i70 to i64
  %i.ku = mul nsw i64 %i.kt, %i.ks
  %i.kv = sext i32 %2 to i64
  %i.kw = add nsw i64 %i.ku, %i.kv
  %i.kx = shl nsw i64 %i.kw, 10
  %i.ky = sext i32 %3 to i64
  %i.kz = add nsw i64 %i.kx, %i.ky                ; 2 uses
  %i.la = call fastcc i32 @vdbeUnbind(ptr noundef %i.kq, i32 noundef 0), !inline_history !6216
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.bq, label %fts3DeleteSegdir.exit

bb.bq:                                            ; preds = %bb.bp
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kq, i64 128
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !693 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 20 ; 2 uses
  %i.lf = load i16, ptr %i.le, align 4, !tbaa !686
  %i.lg = and i16 %i.lf, -28672
  %.not.i.i39.i = icmp eq i16 %i.lg, 0
  br i1 %.not.i.i39.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.ld, i64 noundef %i.kz), !inline_history !6216
  br label %sqlite3VdbeMemSetInt64.exit.i40.i

bb.bs:                                            ; preds = %bb.bq
  store i64 %i.kz, ptr %i.ld, align 8, !tbaa !733
  store i16 4, ptr %i.le, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i40.i

sqlite3VdbeMemSetInt64.exit.i40.i:                ; preds = %bb.bs, %bb.br
  %i.lh = load ptr, ptr %i.kq, align 8, !tbaa !679
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !594 ; 2 uses
  %.not.i8.i41.i = icmp eq ptr %i.lj, null
  br i1 %.not.i8.i41.i, label %fts3DeleteSegdir.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %sqlite3VdbeMemSetInt64.exit.i40.i, %sqlite3VdbeMemSetInt64.exit.i36.i
  %.sink.i = phi ptr [ %i.kn, %sqlite3VdbeMemSetInt64.exit.i36.i ], [ %i.lj, %sqlite3VdbeMemSetInt64.exit.i40.i ]
  %.ph.i = phi ptr [ %i.jf, %sqlite3VdbeMemSetInt64.exit.i36.i ], [ %i.kq, %sqlite3VdbeMemSetInt64.exit.i40.i ]
  %i.lk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.lk(ptr noundef nonnull %.sink.i) #58, !inline_history !6214
  br label %fts3DeleteSegdir.exit

fts3DeleteSegdir.exit.thread:                     ; preds = %._crit_edge.i75, %bb.bo, %bb.bf
  %.027.i.ph = phi i32 [ %i.jd, %bb.bf ], [ %i.ko, %bb.bo ], [ %i.iz, %._crit_edge.i75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.thread138

fts3DeleteSegdir.exit:                            ; preds = %sqlite3_bind_int64.exit.i71, %sqlite3VdbeMemSetInt64.exit.i36.i, %bb.bp, %sqlite3VdbeMemSetInt64.exit.i40.i, %.sink.split.i
  %i.ll = phi ptr [ %i.kq, %sqlite3VdbeMemSetInt64.exit.i40.i ], [ %i.jf, %sqlite3_bind_int64.exit.i71 ], [ %i.jf, %sqlite3VdbeMemSetInt64.exit.i36.i ], [ %i.kq, %bb.bp ], [ %.ph.i, %.sink.split.i ] ; 2 uses
  %i.lm = call i32 @sqlite3_step(ptr noundef %i.ll), !inline_history !6214 ; 0 uses
  %i.ln = call i32 @sqlite3_reset(ptr noundef %i.ll), !inline_history !6214 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.lo = icmp eq i32 %i.ln, 0
  %i.lp = icmp ne ptr %.093181, null
  %or.cond4 = and i1 %i.lo, %i.lp
  br i1 %or.cond4, label %bb.bu, label %.thread138

bb.bt:                                            ; preds = %bb.bd
  %.old3.not = icmp eq ptr %.093181, null
  br i1 %.old3.not, label %fts3SegWriterFree.exit, label %bb.bu

bb.bu:                                            ; preds = %fts3DeleteSegdir.exit, %bb.bt
  %i.lq = load ptr, ptr %.093181, align 8, !tbaa !6236
  %.not.i76 = icmp eq ptr %i.lq, null
  br i1 %.not.i76, label %bb.cc, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lr = getelementptr inbounds nuw i8, ptr %.093181, i64 16 ; 3 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !6228 ; 3 uses
  %i.lt = add nsw i64 %i.ls, 1
  store i64 %i.lt, ptr %i.lr, align 8, !tbaa !6228
  %i.lu = getelementptr inbounds nuw i8, ptr %.093181, i64 56
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !6226
  %i.lw = getelementptr inbounds nuw i8, ptr %.093181, i64 52
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !6230
  %i.ly = call fastcc i32 @fts3WriteSegment(ptr noundef nonnull %0, i64 noundef %i.ls, ptr noundef %i.lv, i32 noundef %i.lx), !inline_history !6218 ; 2 uses
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.bw, label %fts3SegWriterFlush.exit.thread

bb.bw:                                            ; preds = %bb.bv
  %i.ma = load ptr, ptr %.093181, align 8, !tbaa !6236 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.093181, i64 8 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !6229 ; 2 uses
  %i.md = load i64, ptr %i.lr, align 8, !tbaa !6228 ; 2 uses
  %i.me = load ptr, ptr %i.ma, align 8, !tbaa !2817 ; 2 uses
  %.not71.i.i = icmp eq ptr %i.me, null
  br i1 %.not71.i.i, label %.preheader.i.i, label %.lr.ph.i.i77

.preheader.i.loopexit.i:                          ; preds = %tailrecurse.i.i
  %i.mf = trunc i32 %i.oe to i8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %bb.bw
  %.tr51.lcssa.i.i = phi ptr [ %i.ma, %bb.bw ], [ %i.od, %.preheader.i.loopexit.i ] ; 2 uses
  %.tr52.lcssa.i.i = phi i8 [ 1, %bb.bw ], [ %i.mf, %.preheader.i.loopexit.i ]
  %.tr53.lcssa.i.i = phi i64 [ %i.mc, %bb.bw ], [ %.tr5475.i.i, %.preheader.i.loopexit.i ] ; 2 uses
  %.tr54.lcssa.i.i = phi i64 [ %i.md, %bb.bw ], [ %.042.lcssa94.i.i, %.preheader.i.loopexit.i ]
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.preheader.i.i
  %.04.i.i.i.i = phi i64 [ %i.mh, %bb.bx ], [ %.tr53.lcssa.i.i, %.preheader.i.i ]
  %.0.i.i.i.i = phi i32 [ %i.mg, %bb.bx ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.mg = add nuw nsw i32 %.0.i.i.i.i, 1
  %i.mh = lshr i64 %.04.i.i.i.i, 7                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.mh, 0
  br i1 %.not.i.i.i.i, label %sqlite3Fts3VarintLen.exit.i.i.i, label %bb.bx, !llvm.loop !488

sqlite3Fts3VarintLen.exit.i.i.i:                  ; preds = %bb.bx
  %i.mi = sub nsw i32 9, %.0.i.i.i.i              ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.tr51.lcssa.i.i, i64 64 ; 3 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !2818
  %i.ml = sext i32 %i.mi to i64                   ; 2 uses
  %i.mm = getelementptr inbounds i8, ptr %i.mk, i64 %i.ml
  store i8 %.tr52.lcssa.i.i, ptr %i.mm, align 1, !tbaa !733
  %i.mn = load ptr, ptr %i.mj, align 8, !tbaa !2818
  %i.mo = sub nsw i32 10, %.0.i.i.i.i
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds i8, ptr %i.mn, i64 %i.mp
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %sqlite3Fts3VarintLen.exit.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.mq, %sqlite3Fts3VarintLen.exit.i.i.i ], [ %i.mt, %bb.by ] ; 3 uses
  %.0.i7.i.i.i = phi i64 [ %.tr53.lcssa.i.i, %sqlite3Fts3VarintLen.exit.i.i.i ], [ %i.mu, %bb.by ] ; 2 uses
  %i.mr = trunc i64 %.0.i7.i.i.i to i8            ; 2 uses
  %i.ms = or i8 %i.mr, -128
  %i.mt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 1
  store i8 %i.ms, ptr %.08.i.i.i.i, align 1, !tbaa !733
  %i.mu = lshr i64 %.0.i7.i.i.i, 7                ; 2 uses
  %.not.i8.i.i.i = icmp eq i64 %i.mu, 0
  br i1 %.not.i8.i.i.i, label %bb.cb, label %bb.by, !llvm.loop !489

.lr.ph.i.i77:                                     ; preds = %bb.bw, %tailrecurse.i.i
  %i.mv = phi ptr [ %i.of, %tailrecurse.i.i ], [ %i.me, %bb.bw ]
  %.tr5475.i.i = phi i64 [ %.042.lcssa94.i.i, %tailrecurse.i.i ], [ %i.md, %bb.bw ] ; 4 uses
  %.tr5374.i.i = phi i64 [ %.tr5475.i.i, %tailrecurse.i.i ], [ %i.mc, %bb.bw ]
  %.tr5273.i.i = phi i32 [ %i.oe, %tailrecurse.i.i ], [ 1, %bb.bw ] ; 2 uses
  %.tr5172.i.i = phi ptr [ %i.od, %tailrecurse.i.i ], [ %i.ma, %bb.bw ] ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.tr5172.i.i, i64 16
  %.04065.i.i = load ptr, ptr %i.mw, align 8, !tbaa !2819 ; 2 uses
  %.not81.i.i = icmp eq ptr %.04065.i.i, null
  br i1 %.not81.i.i, label %tailrecurse.i.i, label %.preheader58.lr.ph.i.i

.preheader58.lr.ph.i.i:                           ; preds = %.lr.ph.i.i77
  %i.mx = trunc i32 %.tr5273.i.i to i8
  br label %.preheader58.i.i

.preheader58.i.i:                                 ; preds = %fts3TreeFinishNode.exit50.i.i, %.preheader58.lr.ph.i.i
  %.04068.i.i = phi ptr [ %.04065.i.i, %.preheader58.lr.ph.i.i ], [ %.040.i.i, %fts3TreeFinishNode.exit50.i.i ] ; 4 uses
  %.04167.i.i = phi i64 [ %.tr5374.i.i, %.preheader58.lr.ph.i.i ], [ %i.ny, %fts3TreeFinishNode.exit50.i.i ] ; 3 uses
  %.04266.i.i = phi i64 [ %.tr5475.i.i, %.preheader58.lr.ph.i.i ], [ %i.nt, %fts3TreeFinishNode.exit50.i.i ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.preheader58.i.i
  %.04.i.i43.i.i = phi i64 [ %i.mz, %bb.bz ], [ %.04167.i.i, %.preheader58.i.i ]
  %.0.i.i44.i.i = phi i32 [ %i.my, %bb.bz ], [ 0, %.preheader58.i.i ] ; 3 uses
  %i.my = add nuw nsw i32 %.0.i.i44.i.i, 1
  %i.mz = lshr i64 %.04.i.i43.i.i, 7              ; 2 uses
  %.not.i.i45.i.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i45.i.i, label %sqlite3Fts3VarintLen.exit.i46.i.i, label %bb.bz, !llvm.loop !488

sqlite3Fts3VarintLen.exit.i46.i.i:                ; preds = %bb.bz
  %i.na = sub nsw i32 9, %.0.i.i44.i.i            ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.04068.i.i, i64 64 ; 3 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !2818
  %i.nd = sext i32 %i.na to i64                   ; 2 uses
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 %i.nd
  store i8 %i.mx, ptr %i.ne, align 1, !tbaa !733
  %i.nf = load ptr, ptr %i.nb, align 8, !tbaa !2818
  %i.ng = sub nsw i32 10, %.0.i.i44.i.i
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds i8, ptr %i.nf, i64 %i.nh
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %sqlite3Fts3VarintLen.exit.i46.i.i
  %.08.i.i47.i.i = phi ptr [ %i.ni, %sqlite3Fts3VarintLen.exit.i46.i.i ], [ %i.nl, %bb.ca ] ; 3 uses
  %.0.i7.i48.i.i = phi i64 [ %.04167.i.i, %sqlite3Fts3VarintLen.exit.i46.i.i ], [ %i.nm, %bb.ca ] ; 2 uses
  %i.nj = trunc i64 %.0.i7.i48.i.i to i8          ; 2 uses
  %i.nk = or i8 %i.nj, -128
  %i.nl = getelementptr inbounds nuw i8, ptr %.08.i.i47.i.i, i64 1
  store i8 %i.nk, ptr %.08.i.i47.i.i, align 1, !tbaa !733
  %i.nm = lshr i64 %.0.i7.i48.i.i, 7              ; 2 uses
  %.not.i8.i49.i.i = icmp eq i64 %i.nm, 0
  br i1 %.not.i8.i49.i.i, label %fts3TreeFinishNode.exit50.i.i, label %bb.ca, !llvm.loop !489

fts3TreeFinishNode.exit50.i.i:                    ; preds = %bb.ca
  store i8 %i.nj, ptr %.08.i.i47.i.i, align 1, !tbaa !733
  %i.nn = getelementptr inbounds nuw i8, ptr %.04068.i.i, i64 56
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !2820
  %i.np = sub nsw i32 %i.no, %i.na
  %i.nq = load ptr, ptr %i.nb, align 8, !tbaa !2818
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 %i.nd
  %i.ns = call fastcc i32 @fts3WriteSegment(ptr noundef nonnull %0, i64 noundef %.04266.i.i, ptr noundef %i.nr, i32 noundef %i.np), !inline_history !6219 ; 2 uses
  %i.nt = add nsw i64 %.04266.i.i, 1              ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.04068.i.i, i64 24
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !2821
  %i.nw = add nsw i32 %i.nv, 1
  %i.nx = sext i32 %i.nw to i64
  %i.ny = add nsw i64 %.04167.i.i, %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %.04068.i.i, i64 8
  %.040.i.i = load ptr, ptr %i.nz, align 8, !tbaa !2819 ; 2 uses
  %i.oa = icmp ne ptr %.040.i.i, null
  %i.ob = icmp eq i32 %i.ns, 0                    ; 2 uses
  %i.oc = select i1 %i.oa, i1 %i.ob, i1 false
  br i1 %i.oc, label %.preheader58.i.i, label %._crit_edge.i.i, !llvm.loop !6220

._crit_edge.i.i:                                  ; preds = %fts3TreeFinishNode.exit50.i.i
  br i1 %i.ob, label %._crit_edge.i.tailrecurse.i_crit_edge.i, label %fts3SegWriterFlush.exit.thread

._crit_edge.i.tailrecurse.i_crit_edge.i:          ; preds = %._crit_edge.i.i
  %.pre.i = load ptr, ptr %.tr5172.i.i, align 8, !tbaa !2817
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %._crit_edge.i.tailrecurse.i_crit_edge.i, %.lr.ph.i.i77
  %i.od = phi ptr [ %.pre.i, %._crit_edge.i.tailrecurse.i_crit_edge.i ], [ %i.mv, %.lr.ph.i.i77 ] ; 3 uses
  %.042.lcssa94.i.i = phi i64 [ %i.nt, %._crit_edge.i.tailrecurse.i_crit_edge.i ], [ %.tr5475.i.i, %.lr.ph.i.i77 ] ; 2 uses
  %i.oe = add nuw nsw i32 %.tr5273.i.i, 1         ; 2 uses
  %i.of = load ptr, ptr %i.od, align 8, !tbaa !2817 ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.of, null
  br i1 %.not.i.i78, label %.preheader.i.loopexit.i, label %.lr.ph.i.i77

bb.cb:                                            ; preds = %bb.by
  store i8 %i.mr, ptr %.08.i.i.i.i, align 1, !tbaa !733
  %i.og = add nsw i64 %.tr54.lcssa.i.i, -1
  %i.oh = getelementptr inbounds nuw i8, ptr %.tr51.lcssa.i.i, i64 56
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !2820
  %i.oj = sub nsw i32 %i.oi, %i.mi
  %i.ok = load ptr, ptr %i.mj, align 8, !tbaa !2818
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 %i.ml
  %i.om = load i64, ptr %i.mb, align 8, !tbaa !6229
  %i.on = getelementptr inbounds nuw i8, ptr %.093181, i64 64
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !6233
  %i.op = call fastcc i32 @fts3WriteSegdir(ptr noundef nonnull %0, i64 noundef %.046124, i32 noundef %.098123, i64 noundef %i.om, i64 noundef %i.ls, i64 noundef %i.og, i64 noundef %i.oo, ptr noundef %i.ol, i32 noundef %i.oj), !inline_history !6218
  br label %fts3SegWriterFlush.exit

bb.cc:                                            ; preds = %bb.bu
  %i.oq = getelementptr inbounds nuw i8, ptr %.093181, i64 64
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !6233
  %i.os = getelementptr inbounds nuw i8, ptr %.093181, i64 56
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !6226
  %i.ou = getelementptr inbounds nuw i8, ptr %.093181, i64 52
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !6230
  %i.ow = call fastcc i32 @fts3WriteSegdir(ptr noundef nonnull %0, i64 noundef %.046124, i32 noundef %.098123, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef %i.or, ptr noundef %i.ot, i32 noundef %i.ov), !inline_history !6218
  br label %fts3SegWriterFlush.exit

fts3SegWriterFlush.exit.thread:                   ; preds = %._crit_edge.i.i, %bb.bv
  %.2.i.ph = phi i32 [ %i.ly, %bb.bv ], [ %i.ns, %._crit_edge.i.i ]
  %i.ox = load i32, ptr %i.dd, align 4, !tbaa !2766
  %i.oy = add i32 %i.ox, 1
  store i32 %i.oy, ptr %i.dd, align 4, !tbaa !2766
  br label %.thread138

fts3SegWriterFlush.exit:                          ; preds = %bb.cb, %bb.cc
  %.2.i = phi i32 [ %i.ow, %bb.cc ], [ %i.op, %bb.cb ] ; 2 uses
  %i.oz = load i32, ptr %i.dd, align 4, !tbaa !2766
  %i.pa = add i32 %i.oz, 1
end_hunk_3
begin_hunk_4_@sqlite3Fts3Incrmerge:bb.a
  %i.ut = load i32, ptr %i.cn, align 8, !tbaa !2834 ; 6 uses
  br i1 %.lcssa.i, label %bb.ds, label %blobGrowBuffer.exit127.thread.i

bb.ds:                                            ; preds = %._crit_edge195.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tz, i64 20 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !2827
  %i.uw = icmp sgt i32 %i.ut, %i.uv
  br i1 %i.uw, label %bb.dt, label %blobGrowBuffer.exit127.i

bb.dt:                                            ; preds = %bb.ds
  %i.ux = load ptr, ptr %i.us, align 8, !tbaa !2828
  %i.uy = call i32 @sqlite3_initialize(), !inline_history !6313
  %.not.i.i123.i = icmp eq i32 %i.uy, 0
  br i1 %.not.i.i123.i, label %sqlite3_realloc64.exit.i125.i, label %blobGrowBuffer.exit127.thread.i

sqlite3_realloc64.exit.i125.i:                    ; preds = %bb.dt
  %i.uz = sext i32 %i.ut to i64
  %i.va = call fastcc ptr @sqlite3Realloc(ptr noundef %i.ux, i64 noundef %i.uz), !inline_history !6313 ; 2 uses
  %.not.i126.i = icmp eq ptr %i.va, null
  br i1 %.not.i126.i, label %blobGrowBuffer.exit127.thread.i, label %bb.du

bb.du:                                            ; preds = %sqlite3_realloc64.exit.i125.i
  store i32 %i.ut, ptr %i.uu, align 4, !tbaa !2827
  store ptr %i.va, ptr %i.us, align 8, !tbaa !2828
  br label %blobGrowBuffer.exit127.i

blobGrowBuffer.exit127.i:                         ; preds = %bb.du, %bb.ds
  %i.vb = icmp sgt i32 %i.ut, 0
  br i1 %i.vb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %blobGrowBuffer.exit127.i
  %i.vc = load ptr, ptr %i.us, align 8, !tbaa !6352
  %i.vd = load ptr, ptr %i.cm, align 8, !tbaa !2833
  %i.ve = zext nneg i32 %i.ut to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vc, ptr align 1 %i.vd, i64 %i.ve, i1 false)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %blobGrowBuffer.exit127.i
  %i.vf = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i32 %i.ut, ptr %i.vf, align 8, !tbaa !6353
  %.not639 = icmp eq i64 %indvars.iv210.i, 0
  br i1 %.not639, label %blobGrowBuffer.exit127.thread.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #58
  store ptr null, ptr %i.h, align 8, !tbaa !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  store i32 0, ptr %i.i, align 4, !tbaa !570
  %i.vg = getelementptr i8, ptr %i.tz, i64 -40
  %i.vh = load i64, ptr %i.ck, align 8, !tbaa !2835 ; 2 uses
  store i64 %i.vh, ptr %i.vg, align 8, !tbaa !6349
  %i.vi = call fastcc i32 @sqlite3Fts3ReadBlock(ptr noundef %0, i64 noundef %i.vh, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i), !inline_history !6292 ; 2 uses
  %i.vj = getelementptr i8, ptr %i.tz, i64 -16    ; 3 uses
  %i.vk = load i32, ptr %i.i, align 4, !tbaa !570 ; 3 uses
  %i.vl = load i32, ptr %i.ci, align 8, !tbaa !2772
  %.100.i = call i32 @llvm.smax.i32(i32 %i.vk, i32 %i.vl)
  %i.vm = add nsw i32 %.100.i, 20                 ; 3 uses
  %i.vn = icmp eq i32 %i.vi, 0
  br i1 %i.vn, label %bb.dy, label %blobGrowBuffer.exit132.thread.i

bb.dy:                                            ; preds = %bb.dx
  %i.vo = getelementptr i8, ptr %i.tz, i64 -4     ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !2827
  %i.vq = icmp sgt i32 %i.vm, %i.vp
  %.pre216.i = load ptr, ptr %i.vj, align 8, !tbaa !2828 ; 2 uses
  br i1 %i.vq, label %bb.dz, label %blobGrowBuffer.exit132.i

bb.dz:                                            ; preds = %bb.dy
  %i.vr = call i32 @sqlite3_initialize(), !inline_history !6313
  %.not.i.i128.i = icmp eq i32 %i.vr, 0
  br i1 %.not.i.i128.i, label %sqlite3_realloc64.exit.i130.i, label %blobGrowBuffer.exit132.thread.i

sqlite3_realloc64.exit.i130.i:                    ; preds = %bb.dz
  %i.vs = sext i32 %i.vm to i64
  %i.vt = call fastcc ptr @sqlite3Realloc(ptr noundef %.pre216.i, i64 noundef %i.vs), !inline_history !6313 ; 3 uses
  %.not.i131.i = icmp eq ptr %i.vt, null
  br i1 %.not.i131.i, label %blobGrowBuffer.exit132.thread.i, label %bb.ea

bb.ea:                                            ; preds = %sqlite3_realloc64.exit.i130.i
  store i32 %i.vm, ptr %i.vo, align 4, !tbaa !2827
  store ptr %i.vt, ptr %i.vj, align 8, !tbaa !2828
  br label %blobGrowBuffer.exit132.i

blobGrowBuffer.exit132.i:                         ; preds = %bb.ea, %bb.dy
  %i.vu = phi ptr [ %i.vt, %bb.ea ], [ %.pre216.i, %bb.dy ]
  %i.vv = load ptr, ptr %i.h, align 8, !tbaa !741
  %i.vw = sext i32 %i.vk to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vu, ptr align 1 %i.vv, i64 %i.vw, i1 false)
  %i.vx = getelementptr i8, ptr %i.tz, i64 -8
  store i32 %i.vk, ptr %i.vx, align 8, !tbaa !6350
  %i.vy = load ptr, ptr %i.vj, align 8, !tbaa !6351
  %i.vz = getelementptr inbounds i8, ptr %i.vy, i64 %i.vw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.vz, i8 0, i64 20, i1 false)
  br label %blobGrowBuffer.exit132.thread.i

blobGrowBuffer.exit132.thread.i:                  ; preds = %blobGrowBuffer.exit132.i, %sqlite3_realloc64.exit.i130.i, %bb.dz, %bb.dx
  %.10175.i = phi i32 [ 0, %blobGrowBuffer.exit132.i ], [ 7, %bb.dz ], [ 7, %sqlite3_realloc64.exit.i130.i ], [ %i.vi, %bb.dx ]
  %i.wa = load ptr, ptr %i.h, align 8, !tbaa !741 ; 4 uses
  %i.wb = icmp eq ptr %i.wa, null
  br i1 %i.wb, label %sqlite3_free.exit137.i, label %bb.eb

bb.eb:                                            ; preds = %blobGrowBuffer.exit132.thread.i
  %i.wc = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i133.i = icmp eq i32 %i.wc, 0
  br i1 %.not.i133.i, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.wd = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i134.i = icmp eq ptr %i.wd, null
  br i1 %.not.i.i134.i, label %sqlite3_mutex_enter.exit.i135.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.we = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.we(ptr noundef nonnull %i.wd) #58, !inline_history !6307
  br label %sqlite3_mutex_enter.exit.i135.i

sqlite3_mutex_enter.exit.i135.i:                  ; preds = %bb.ed, %bb.ec
  %i.wf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.wg = call i32 %i.wf(ptr noundef nonnull %i.wa) #58, !inline_history !6308
  %i.wh = sext i32 %i.wg to i64
  %i.wi = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.wj = sub nsw i64 %i.wi, %i.wh
  store i64 %i.wj, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.wk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.wl = add nsw i64 %i.wk, -1
  store i64 %i.wl, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.wm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.wm(ptr noundef nonnull %i.wa) #58, !inline_history !6309
  %i.wn = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i136.i = icmp eq ptr %i.wn, null
  br i1 %.not.i4.i136.i, label %sqlite3_free.exit137.i, label %bb.ee

bb.ee:                                            ; preds = %sqlite3_mutex_enter.exit.i135.i
  %i.wo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.wo(ptr noundef nonnull %i.wn) #58, !inline_history !6310
  br label %sqlite3_free.exit137.i

bb.ef:                                            ; preds = %bb.eb
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.wp(ptr noundef nonnull %i.wa) #58, !inline_history !6309
  br label %sqlite3_free.exit137.i

sqlite3_free.exit137.i:                           ; preds = %bb.ef, %bb.ee, %sqlite3_mutex_enter.exit.i135.i, %blobGrowBuffer.exit132.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #58
  br label %blobGrowBuffer.exit127.thread.i

blobGrowBuffer.exit127.thread.i:                  ; preds = %._crit_edge195.i, %bb.dt, %sqlite3_realloc64.exit.i125.i, %bb.dw, %sqlite3_free.exit137.i
  %.3164.ph.i = phi i32 [ %storemerge98.lcssa.i, %._crit_edge195.i ], [ 7, %sqlite3_realloc64.exit.i125.i ], [ 7, %bb.dt ], [ 0, %bb.dw ], [ %.10175.i, %sqlite3_free.exit137.i ] ; 4 uses
  %.val.pr.i = load ptr, ptr %i.cm, align 8, !tbaa !2833 ; 4 uses
  %i.wq = icmp eq ptr %.val.pr.i, null
  br i1 %i.wq, label %nodeReaderRelease.exit142.i, label %bb.eg

bb.eg:                                            ; preds = %blobGrowBuffer.exit127.thread.i
  %i.wr = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i138.i = icmp eq i32 %i.wr, 0
  br i1 %.not.i.i138.i, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ws = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i139.i = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i139.i, label %sqlite3_mutex_enter.exit.i.i140.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.wt(ptr noundef nonnull %i.ws) #58, !inline_history !6303
  br label %sqlite3_mutex_enter.exit.i.i140.i

sqlite3_mutex_enter.exit.i.i140.i:                ; preds = %bb.ei, %bb.eh
  %i.wu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.wv = call i32 %i.wu(ptr noundef nonnull %.val.pr.i) #58, !inline_history !6304
  %i.ww = sext i32 %i.wv to i64
  %i.wx = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.wy = sub nsw i64 %i.wx, %i.ww
  store i64 %i.wy, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.wz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.xa = add nsw i64 %i.wz, -1
  store i64 %i.xa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.xb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.xb(ptr noundef nonnull %.val.pr.i) #58, !inline_history !6305
  %i.xc = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i141.i = icmp eq ptr %i.xc, null
  br i1 %.not.i4.i.i141.i, label %nodeReaderRelease.exit142.i, label %bb.ej

bb.ej:                                            ; preds = %sqlite3_mutex_enter.exit.i.i140.i
  %i.xd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.xd(ptr noundef nonnull %i.xc) #58, !inline_history !6306
  br label %nodeReaderRelease.exit142.i

bb.ek:                                            ; preds = %bb.eg
  %i.xe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.xe(ptr noundef nonnull %.val.pr.i) #58, !inline_history !6305
  br label %nodeReaderRelease.exit142.i

nodeReaderRelease.exit142.i:                      ; preds = %bb.dq, %bb.ek, %bb.ej, %sqlite3_mutex_enter.exit.i.i140.i, %blobGrowBuffer.exit127.thread.i
  %.3164.i249 = phi i32 [ %.3164.ph.i, %blobGrowBuffer.exit127.thread.i ], [ %.3164.ph.i, %bb.ek ], [ %.3164.ph.i, %bb.ej ], [ %.3164.ph.i, %sqlite3_mutex_enter.exit.i.i140.i ], [ 0, %bb.dq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %indvars.iv.next211.i = add nsw i64 %indvars.iv210.i, -1
  %i.xf = icmp sgt i64 %indvars.iv210.i, 0
  %i.xg = icmp eq i32 %.3164.i249, 0
  %6 = select i1 %i.xf, i1 %i.xg, i1 false
  br i1 %6, label %bb.dq, label %.loopexit.i, !llvm.loop !6315

.loopexit.i:                                      ; preds = %nodeReaderRelease.exit142.i, %bb.dl
  %.5.i = phi i32 [ %.1162.i, %bb.dl ], [ %.3164.i249, %nodeReaderRelease.exit142.i ]
  %.5.fr.i = freeze i32 %.5.i                     ; 2 uses
  %i.xh = call i32 @sqlite3_reset(ptr noundef %i.mq), !inline_history !6292
  %i.xi = icmp eq i32 %.5.fr.i, 0
  %spec.select.i154 = select i1 %i.xi, i32 %i.xh, i32 %.5.fr.i
  br label %fts3IncrmergeLoad.exit

fts3IncrmergeLoad.exit:                           ; preds = %bb.bz, %bb.cp, %bb.cq, %.thread178.i, %.thread176.i, %.loopexit.thread.i, %.loopexit.i
  %.3.i149 = phi i32 [ %i.pg, %bb.cq ], [ %i.mo, %bb.bz ], [ %i.ph, %.thread178.i ], [ %i.pf, %bb.cp ], [ 267, %.thread176.i ], [ 7, %.loopexit.thread.i ], [ %spec.select.i154, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  br label %bb.fc

bb.el:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr null, ptr %i.b, align 8, !tbaa !889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store ptr null, ptr %i.c, align 8, !tbaa !889
  %i.xj = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 29, ptr noundef %i.b, ptr noundef null), !inline_history !6316 ; 2 uses
  %i.xk = icmp eq i32 %i.xj, 0
  br i1 %i.xk, label %bb.em, label %fts3IncrmergeWriter.exit

bb.em:                                            ; preds = %bb.el
  %i.xl = load ptr, ptr %i.b, align 8, !tbaa !889 ; 9 uses
  %i.xm = call fastcc i32 @vdbeUnbind(ptr noundef %i.xl, i32 noundef 0), !inline_history !6317
  %i.xn = icmp eq i32 %i.xm, 0
  br i1 %i.xn, label %bb.en, label %sqlite3_bind_int64.exit.i172

bb.en:                                            ; preds = %bb.em
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xl, i64 128
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !693 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 20 ; 2 uses
  %i.xr = load i16, ptr %i.xq, align 4, !tbaa !686
  %i.xs = and i16 %i.xr, -28672
  %.not.i.i.i175 = icmp eq i16 %i.xs, 0
  br i1 %.not.i.i.i175, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.xp, i64 noundef range(i64 0, -9223372036854775808) %.3104), !inline_history !6317
  br label %sqlite3VdbeMemSetInt64.exit.i.i176

bb.ep:                                            ; preds = %bb.en
  store i64 %.3104, ptr %i.xp, align 8, !tbaa !733
  store i16 4, ptr %i.xq, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i.i176

sqlite3VdbeMemSetInt64.exit.i.i176:               ; preds = %bb.ep, %bb.eo
  %i.xt = load ptr, ptr %i.xl, align 8, !tbaa !679
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !594 ; 2 uses
  %.not.i8.i.i177 = icmp eq ptr %i.xv, null
  br i1 %.not.i8.i.i177, label %sqlite3_bind_int64.exit.i172, label %bb.eq

bb.eq:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i.i176
  %i.xw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.xw(ptr noundef nonnull %i.xv) #58, !inline_history !6318
  br label %sqlite3_bind_int64.exit.i172

sqlite3_bind_int64.exit.i172:                     ; preds = %bb.eq, %sqlite3VdbeMemSetInt64.exit.i.i176, %bb.em
  %i.xx = load i32, ptr %i.bc, align 8, !tbaa !2638
  %i.xy = sext i32 %i.xx to i64                   ; 2 uses
  %i.xz = call fastcc i32 @vdbeUnbind(ptr noundef %i.xl, i32 noundef 1), !inline_history !6317
  %i.ya = icmp eq i32 %i.xz, 0
  br i1 %i.ya, label %bb.er, label %sqlite3_bind_int64.exit44.i

bb.er:                                            ; preds = %sqlite3_bind_int64.exit.i172
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xl, i64 128
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !693 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 56 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 76 ; 2 uses
  %i.yf = load i16, ptr %i.ye, align 4, !tbaa !686
  %i.yg = and i16 %i.yf, -28672
  %.not.i.i41.i = icmp eq i16 %i.yg, 0
  br i1 %.not.i.i41.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.yd, i64 noundef %i.xy), !inline_history !6317
  br label %sqlite3VdbeMemSetInt64.exit.i42.i

bb.et:                                            ; preds = %bb.er
  store i64 %i.xy, ptr %i.yd, align 8, !tbaa !733
  store i16 4, ptr %i.ye, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetInt64.exit.i42.i

sqlite3VdbeMemSetInt64.exit.i42.i:                ; preds = %bb.et, %bb.es
  %i.yh = load ptr, ptr %i.xl, align 8, !tbaa !679
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !594 ; 2 uses
  %.not.i8.i43.i = icmp eq ptr %i.yj, null
  br i1 %.not.i8.i43.i, label %sqlite3_bind_int64.exit44.i, label %bb.eu

bb.eu:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.i42.i
  %i.yk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.yk(ptr noundef nonnull %i.yj) #58, !inline_history !6318
  br label %sqlite3_bind_int64.exit44.i

sqlite3_bind_int64.exit44.i:                      ; preds = %bb.eu, %sqlite3VdbeMemSetInt64.exit.i42.i, %sqlite3_bind_int64.exit.i172
  %i.yl = call i32 @sqlite3_step(ptr noundef %i.xl), !inline_history !6316
  %i.ym = icmp eq i32 %i.yl, 100
  br i1 %i.ym, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %sqlite3_bind_int64.exit44.i
  %i.yn = call i64 @sqlite3_column_int64(ptr noundef %i.xl, i32 noundef 0), !inline_history !6316
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %sqlite3_bind_int64.exit44.i
  %.0.i173 = phi i64 [ %i.yn, %bb.ev ], [ 0, %sqlite3_bind_int64.exit44.i ] ; 17 uses
  %i.yo = call i32 @sqlite3_reset(ptr noundef %i.xl), !inline_history !6316 ; 2 uses
  %.not.i174 = icmp eq i32 %i.yo, 0
  br i1 %.not.i174, label %bb.ex, label %fts3IncrmergeWriter.exit

bb.ex:                                            ; preds = %bb.ew
  %i.yp = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 10, ptr noundef %i.c, ptr noundef null), !inline_history !6316 ; 2 uses
  %i.yq = icmp eq i32 %i.yp, 0
  br i1 %i.yq, label %bb.ey, label %fts3IncrmergeWriter.exit

bb.ey:                                            ; preds = %bb.ex
  %i.yr = load ptr, ptr %i.c, align 8, !tbaa !889 ; 3 uses
  %i.ys = call i32 @sqlite3_step(ptr noundef %i.yr), !inline_history !6316
  %i.yt = icmp eq i32 %i.ys, 100
  br i1 %i.yt, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.yu = call i64 @sqlite3_column_int64(ptr noundef %i.yr, i32 noundef 0), !inline_history !6316 ; 2 uses
  store i64 %i.yu, ptr %i.bf, align 8, !tbaa !6344
  %i.yv = shl nsw i64 %.0.i173, 4
  %i.yw = add i64 %i.yv, -1
  %i.yx = add i64 %i.yw, %i.yu
  store i64 %i.yx, ptr %i.bg, align 8, !tbaa !6345
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.yy = call i32 @sqlite3_reset(ptr noundef %i.yr), !inline_history !6316 ; 2 uses
  %.not39.i = icmp eq i32 %i.yy, 0
  br i1 %.not39.i, label %bb.fb, label %fts3IncrmergeWriter.exit

bb.fb:                                            ; preds = %bb.fa
  %i.yz = load i64, ptr %i.bg, align 8, !tbaa !6345
  %i.za = call fastcc i32 @fts3WriteSegment(ptr noundef %0, i64 noundef %i.yz, ptr noundef null, i32 noundef 0), !inline_history !6316 ; 2 uses
  %.not40.i = icmp eq i32 %i.za, 0
  br i1 %.not40.i, label %.thread.loopexit.i, label %fts3IncrmergeWriter.exit

.thread.loopexit.i:                               ; preds = %bb.fb
  store i64 %.3104, ptr %i.bh, align 8, !tbaa !6346
  store i64 %.0.i173, ptr %i.s, align 8, !tbaa !6343
  store i32 %.0229, ptr %i.bi, align 8, !tbaa !6347
  %i.zb = load i64, ptr %i.bf, align 8, !tbaa !6344 ; 16 uses
  store i64 %i.zb, ptr %i.bj, align 8, !tbaa !6349
  %i.zc = add nsw i64 %i.zb, %.0.i173
  store i64 %i.zc, ptr %i.bk, align 8, !tbaa !6349
  %i.zd = shl nsw i64 %.0.i173, 1
  %i.ze = add nsw i64 %i.zb, %i.zd
  store i64 %i.ze, ptr %i.bl, align 8, !tbaa !6349
  %i.zf = mul nsw i64 %.0.i173, 3
  %i.zg = add nsw i64 %i.zb, %i.zf
  store i64 %i.zg, ptr %i.bm, align 8, !tbaa !6349
  %i.zh = shl nsw i64 %.0.i173, 2
  %i.zi = add nsw i64 %i.zb, %i.zh
  store i64 %i.zi, ptr %i.bn, align 8, !tbaa !6349
  %i.zj = mul nsw i64 %.0.i173, 5
  %i.zk = add nsw i64 %i.zb, %i.zj
  store i64 %i.zk, ptr %i.bo, align 8, !tbaa !6349
  %i.zl = mul nsw i64 %.0.i173, 6
  %i.zm = add nsw i64 %i.zb, %i.zl
  store i64 %i.zm, ptr %i.bp, align 8, !tbaa !6349
  %i.zn = mul nsw i64 %.0.i173, 7
  %i.zo = add nsw i64 %i.zb, %i.zn
  store i64 %i.zo, ptr %i.bq, align 8, !tbaa !6349
  %i.zp = shl nsw i64 %.0.i173, 3
  %i.zq = add nsw i64 %i.zb, %i.zp
  store i64 %i.zq, ptr %i.br, align 8, !tbaa !6349
  %i.zr = mul nsw i64 %.0.i173, 9
  %i.zs = add nsw i64 %i.zb, %i.zr
  store i64 %i.zs, ptr %i.bs, align 8, !tbaa !6349
  %i.zt = mul nsw i64 %.0.i173, 10
  %i.zu = add nsw i64 %i.zb, %i.zt
  store i64 %i.zu, ptr %i.bt, align 8, !tbaa !6349
  %i.zv = mul nsw i64 %.0.i173, 11
  %i.zw = add nsw i64 %i.zb, %i.zv
  store i64 %i.zw, ptr %i.bu, align 8, !tbaa !6349
  %i.zx = mul nsw i64 %.0.i173, 12
  %i.zy = add nsw i64 %i.zb, %i.zx
  store i64 %i.zy, ptr %i.bv, align 8, !tbaa !6349
  %i.zz = mul nsw i64 %.0.i173, 13
  %i.aaa = add nsw i64 %i.zb, %i.zz
  store i64 %i.aaa, ptr %i.bw, align 8, !tbaa !6349
  %i.aab = mul nsw i64 %.0.i173, 14
  %i.aac = add nsw i64 %i.zb, %i.aab
  store i64 %i.aac, ptr %i.bx, align 8, !tbaa !6349
  %i.aad = mul nsw i64 %.0.i173, 15
  %i.aae = add nsw i64 %i.zb, %i.aad
  store i64 %i.aae, ptr %i.by, align 8, !tbaa !6349
  br label %fts3IncrmergeWriter.exit

fts3IncrmergeWriter.exit:                         ; preds = %bb.el, %bb.ew, %bb.ex, %bb.fa, %bb.fb, %.thread.loopexit.i
  %.035.i = phi i32 [ %i.za, %bb.fb ], [ %i.yo, %bb.ew ], [ %i.yy, %bb.fa ], [ %i.yp, %bb.ex ], [ %i.xj, %bb.el ], [ 0, %.thread.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
end_hunk_4
