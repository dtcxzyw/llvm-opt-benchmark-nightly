inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@ucs2lib_fastsearch:bb.a
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = load i16, ptr %2, align 2, !tbaa !208
  %i.f = tail call fastcc i64 @ucs2lib_find_char(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %i.e)
  br label %ucs2lib_rfind_char.exit

bb.g:                                             ; preds = %bb.e
  %i.g = load i16, ptr %2, align 2, !tbaa !208    ; 4 uses
  %i.h = icmp sgt i64 %1, 40
  br i1 %i.h, label %bb.h, label %.thread67.i

bb.h:                                             ; preds = %bb.g
  %i.i = and i16 %i.g, 255                        ; 2 uses
  %i.j = zext nneg i16 %i.i to i32
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %.thread67.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %.preheader.i
  %.041.i = phi i64 [ %.142.ph59.i, %bb.r ], [ %1, %.preheader.i ] ; 2 uses
  %i.l = shl nuw i64 %.041.i, 1
  %i.m = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.j, i64 noundef %i.l) #38 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ucs2lib_rfind_char.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = sub i64 %i.p, %i.k
  %i.s = ashr exact i64 %i.r, 1                   ; 5 uses
  %i.t = load i16, ptr %i.q, align 2, !tbaa !208
  %i.u = icmp eq i16 %i.t, %i.g
  br i1 %i.u, label %ucs2lib_rfind_char.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = sub i64 %.041.i, %i.s
  %i.w = icmp sgt i64 %i.v, 40
  br i1 %i.w, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = icmp slt i64 %i.s, 41
  br i1 %i.x, label %.thread67.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.q, i64 -80
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.046.i = phi ptr [ %i.q, %bb.m ], [ %i.aa, %bb.o ] ; 3 uses
  %i.z = icmp ugt ptr %.046.i, %i.y
  br i1 %i.z, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %.046.i, i64 -2   ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !208
  %i.ac = icmp eq i16 %i.ab, %i.g
  br i1 %i.ac, label %bb.p, label %bb.n, !llvm.loop !487

bb.p:                                             ; preds = %bb.o
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ad, %i.k
  %i.af = ashr exact i64 %i.ae, 1
  br label %ucs2lib_rfind_char.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = ptrtoint ptr %.046.i to i64
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = ashr exact i64 %i.ah, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.142.ph59.i = phi i64 [ %i.s, %bb.k ], [ %i.ai, %bb.q ] ; 3 uses
  %i.aj = icmp sgt i64 %.142.ph59.i, 40
  br i1 %i.aj, label %bb.i, label %.thread67.i, !llvm.loop !488

.thread67.i:                                      ; preds = %bb.r, %bb.l, %bb.h, %bb.g
  %.445.i = phi i64 [ %1, %bb.g ], [ %1, %bb.h ], [ %i.s, %bb.l ], [ %.142.ph59.i, %bb.r ]
  %i.ak = getelementptr [2 x i8], ptr %0, i64 %.445.i
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.thread67.i
  %.147.i = phi ptr [ %i.ak, %.thread67.i ], [ %i.am, %bb.t ] ; 2 uses
  %i.al = icmp ugt ptr %.147.i, %0
  br i1 %i.al, label %bb.t, label %ucs2lib_rfind_char.exit

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr i8, ptr %.147.i, i64 -2   ; 3 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !208
  %i.ao = icmp eq i16 %i.an, %i.g
  br i1 %i.ao, label %bb.u, label %bb.s, !llvm.loop !489

bb.u:                                             ; preds = %bb.t
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %0 to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 1
  br label %ucs2lib_rfind_char.exit

bb.v:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %4, 9223372036854775807
  %i.au = load i16, ptr %2, align 2, !tbaa !208   ; 3 uses
  br i1 %i.at, label %.lr.ph.i.preheader, label %.lr.ph.i67

.lr.ph.i.preheader:                               ; preds = %bb.v
  %min.iters.check182 = icmp ult i64 %1, 4
  br i1 %min.iters.check182, label %.lr.ph.i.preheader202, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i.preheader
  %n.vec185 = and i64 %1, -4                      ; 3 uses
  %broadcast.splatinsert186 = insertelement <2 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat187 = shufflevector <2 x i16> %broadcast.splatinsert186, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph183
  %index189 = phi i64 [ 0, %vector.ph183 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %vec.phi190 = phi <2 x i64> [ zeroinitializer, %vector.ph183 ], [ %i.bb, %vector.body188 ]
  %vec.phi191 = phi <2 x i64> [ zeroinitializer, %vector.ph183 ], [ %i.bc, %vector.body188 ]
  %i.av = getelementptr [2 x i8], ptr %0, i64 %index189 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %wide.load192 = load <2 x i16>, ptr %i.av, align 2, !tbaa !208
  %wide.load193 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !208
  %i.ax = icmp eq <2 x i16> %wide.load192, %broadcast.splat187
  %i.ay = icmp eq <2 x i16> %wide.load193, %broadcast.splat187
  %i.az = zext <2 x i1> %i.ax to <2 x i64>
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = add <2 x i64> %vec.phi190, %i.az        ; 2 uses
  %i.bc = add <2 x i64> %vec.phi191, %i.ba        ; 2 uses
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next194, %n.vec185
  br i1 %i.bd, label %middle.block195, label %vector.body188, !llvm.loop !823

middle.block195:                                  ; preds = %vector.body188
  %bin.rdx196 = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx196) ; 2 uses
  %cmp.n197 = icmp eq i64 %1, %n.vec185
  br i1 %cmp.n197, label %ucs2lib_rfind_char.exit, label %.lr.ph.i.preheader202

.lr.ph.i.preheader202:                            ; preds = %.lr.ph.i.preheader, %middle.block195
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec185, %middle.block195 ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.be, %middle.block195 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader202, %.lr.ph.i
  %.09.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader202 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader202 ]
  %i.bf = getelementptr [2 x i8], ptr %0, i64 %.09.i
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !208
  %i.bh = icmp eq i16 %i.bg, %i.au
  %i.bi = zext i1 %i.bh to i64
  %spec.select.i = add i64 %.078.i, %i.bi         ; 2 uses
  %i.bj = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %1
  br i1 %exitcond.not.i, label %ucs2lib_rfind_char.exit, label %.lr.ph.i, !llvm.loop !824

.lr.ph.i67:                                       ; preds = %bb.v, %bb.x
  %.016.i = phi i64 [ %.1.i, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.01115.i = phi i64 [ %i.bp, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %i.bk = getelementptr [2 x i8], ptr %0, i64 %.01115.i
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !208
  %i.bm = icmp eq i16 %i.bl, %i.au
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i67
  %i.bn = add i64 %.016.i, 1                      ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %4
  br i1 %i.bo, label %ucs2lib_rfind_char.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i67
  %.1.i = phi i64 [ %i.bn, %bb.w ], [ %.016.i, %.lr.ph.i67 ] ; 2 uses
  %i.bp = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %i.bp, %1
  br i1 %exitcond.not.i68, label %ucs2lib_rfind_char.exit, label %.lr.ph.i67, !llvm.loop !825

bb.y:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.as, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = icmp slt i64 %1, 2500
  br i1 %i.bq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = icmp samesign ult i64 %3, 100
  %i.bs = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bs, %i.br
  %i.bt = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bt, %or.cond3
  br i1 %or.cond5, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bu = add nsw i64 %3, -1                      ; 12 uses
  %i.bv = getelementptr [2 x i8], ptr %2, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !208 ; 4 uses
  %min.iters.check = icmp ult i64 %3, 7
  br i1 %min.iters.check, label %.lr.ph.i69.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ab
  %n.vec = and i64 %i.bu, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert149 = insertelement <2 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat150 = shufflevector <2 x i16> %broadcast.splatinsert149, <2 x i16> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi151 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cj, %vector.body ]
  %i.bx = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %i.by = getelementptr [2 x i8], ptr %2, i64 %index
  %wide.load = load <2 x i16>, ptr %i.by, align 2, !tbaa !208 ; 2 uses
  %i.bz = and <2 x i16> %wide.load, splat (i16 63)
  %i.ca = zext nneg <2 x i16> %i.bz to <2 x i64>
  %i.cb = shl nuw <2 x i64> splat (i64 1), %i.ca
  %i.cc = or <2 x i64> %i.cb, %vec.phi            ; 2 uses
  %i.cd = icmp eq <2 x i16> %wide.load, %broadcast.splat150
  %i.ce = freeze <2 x i1> %i.cd                   ; 2 uses
  %i.cf = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cg = add nsw <2 x i64> %broadcast.splat, %i.cf
  %i.ch = bitcast <2 x i1> %i.ce to i2
  %.not200 = icmp eq i2 %i.ch, 0                  ; 2 uses
  %i.ci = select i1 %.not200, <2 x i1> %i.bx, <2 x i1> %i.ce ; 2 uses
  %i.cj = select i1 %.not200, <2 x i64> %vec.phi151, <2 x i64> %i.cg ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !826

middle.block:                                     ; preds = %vector.body
  %i.cl = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.cc) ; 2 uses
  %i.cm = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cj, <2 x i1> %i.ci, i64 %i.bu) ; 2 uses
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %bb.ab, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ab ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ab ], [ %i.cl, %middle.block ]
  %.07898.i.ph = phi i64 [ %i.bu, %bb.ab ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i69

._crit_edge.i:                                    ; preds = %.lr.ph.i69, %middle.block
  %.lcssa148 = phi i64 [ %i.cl, %middle.block ], [ %i.eb, %.lr.ph.i69 ]
  %.179.i.lcssa = phi i64 [ %i.cm, %middle.block ], [ %.179.i, %.lr.ph.i69 ]
  %i.cn = sub i64 %1, %3                          ; 4 uses
  %i.co = getelementptr [2 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.cp = and i16 %i.bw, 63
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = or i64 %.lcssa148, %i.cr                ; 2 uses
  %.not108.i = icmp slt i64 %i.cn, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.al
  %.066110.us.i = phi i64 [ %i.dt, %bb.al ], [ 0, %._crit_edge.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.al ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.ct = getelementptr [2 x i8], ptr %i.co, i64 %.066110.us.i
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !208
  %i.cv = icmp eq i16 %i.cu, %i.bw
  br i1 %i.cv, label %.preheader.us.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph113.split.us.i
  %i.cw = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cw, %i.cn
  br i1 %.not88.us.i, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr [2 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !208
  %i.cz = and i16 %i.cy, 63
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = and i64 %i.db, %i.cs
  %.not89.us.i = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dd, %.066110.us.i
  br label %bb.al

bb.ae:                                            ; preds = %.preheader.us.i, %bb.am
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.du, %bb.am ] ; 4 uses
  %i.de = getelementptr [2 x i8], ptr %i.dv, i64 %.0102.us.i
  %i.df = load i16, ptr %i.de, align 2, !tbaa !208
  %i.dg = getelementptr [2 x i8], ptr %2, i64 %.0102.us.i
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !208
  %.not90.us.i = icmp eq i16 %i.df, %i.dh
  br i1 %.not90.us.i, label %bb.am, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.ae
  %i.di = icmp eq i64 %.0102.us.i, %i.bu
  br i1 %i.di, label %._crit_edge104.us.thread.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge104.us.i
  %i.dj = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.dj, %i.cn
  br i1 %.not91.us.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr [2 x i8], ptr %i.co, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !208
  %i.dm = and i16 %i.dl, 63
  %i.dn = zext nneg i16 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = and i64 %i.do, %i.cs
  %.not92.us.i = icmp eq i64 %i.dp, 0
  br i1 %.not92.us.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ah ], [ %3, %bb.ag ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.al

._crit_edge104.us.thread.i:                       ; preds = %bb.am, %._crit_edge104.us.i
  br i1 %i.b, label %bb.aj, label %ucs2lib_rfind_char.exit

bb.aj:                                            ; preds = %._crit_edge104.us.thread.i
  %i.dq = add i64 %.074109.us.i, 1                ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %4
  br i1 %i.dr, label %ucs2lib_rfind_char.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = add i64 %.066110.us.i, %i.bu
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ad, %bb.ac
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.ac ], [ %.074109.us.i, %bb.ad ], [ %.074109.us.i, %bb.ai ], [ %i.dq, %bb.ak ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.ac ], [ %spec.select.us.i, %bb.ad ], [ %.167.us.i, %bb.ai ], [ %i.ds, %bb.ak ]
  %i.dt = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dt, %i.cn
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !827

bb.am:                                            ; preds = %bb.ae
  %i.du = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.du, %i.bu
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.ae, !llvm.loop !828

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dv = getelementptr [2 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ae

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %.lr.ph.i69
  %.068100.i = phi i64 [ %i.ef, %.lr.ph.i69 ], [ %.068100.i.ph, %.lr.ph.i69.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.eb, %.lr.ph.i69 ], [ %.06999.i.ph, %.lr.ph.i69.preheader ]
  %.07898.i = phi i64 [ %.179.i, %.lr.ph.i69 ], [ %.07898.i.ph, %.lr.ph.i69.preheader ]
  %i.dw = getelementptr [2 x i8], ptr %2, i64 %.068100.i
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !208 ; 2 uses
  %i.dy = and i16 %i.dx, 63
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = or i64 %i.ea, %.06999.i                 ; 2 uses
  %i.ec = icmp eq i16 %i.dx, %i.bw
  %i.ed = xor i64 %.068100.i, -1
  %i.ee = add nsw i64 %i.bu, %i.ed
  %.179.i = select i1 %i.ec, i64 %i.ee, i64 %.07898.i ; 2 uses
  %i.ef = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.ef, %i.bu
  br i1 %exitcond.not.i70, label %._crit_edge.i, label %.lr.ph.i69, !llvm.loop !829

.loopexit.i:                                      ; preds = %bb.al, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.al ]
  %i.eg = select i1 %i.b, i64 %.377.ph.i, i64 -1
  br label %ucs2lib_rfind_char.exit

bb.an:                                            ; preds = %bb.aa
  %i.eh = lshr i64 %3, 2
  %i.ei = mul nuw nsw i64 %i.eh, 3
  %i.ej = lshr i64 %1, 2
  %i.ek = icmp samesign ult i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.el = icmp eq i32 %5, 1
  br i1 %i.el, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.em = tail call fastcc i64 @ucs2lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs2lib_rfind_char.exit

bb.aq:                                            ; preds = %bb.ao
  %i.en = tail call fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs2lib_rfind_char.exit

bb.ar:                                            ; preds = %bb.an
  %i.eo = tail call fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs2lib_rfind_char.exit

bb.as:                                            ; preds = %bb.y
  %i.ep = add nsw i64 %3, -1                      ; 9 uses
  %i.eq = load i16, ptr %2, align 2, !tbaa !208   ; 4 uses
  %i.er = and i16 %i.eq, 63
  %i.es = zext nneg i16 %i.er to i64
  %i.et = shl nuw i64 1, %i.es                    ; 2 uses
end_hunk_0
begin_hunk_1_@ucs4lib_fastsearch:bb.a
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  br label %ucs4lib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.01721.i, i64 4   ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.d
  br i1 %i.s, label %.lr.ph.i, label %ucs4lib_find_char.exit, !llvm.loop !485

bb.j:                                             ; preds = %bb.d
  %i.t = load i32, ptr %2, align 4, !tbaa !7      ; 4 uses
  %i.u = icmp sgt i64 %1, 40
  br i1 %i.u, label %bb.k, label %.thread67.i

bb.k:                                             ; preds = %bb.j
  %i.v = and i32 %i.t, 255                        ; 2 uses
  %.not.i67 = icmp eq i32 %i.v, 0
  br i1 %.not.i67, label %.thread67.i, label %.preheader.i68

.preheader.i68:                                   ; preds = %bb.k
  %i.w = ptrtoint ptr %0 to i64                   ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.u, %.preheader.i68
  %.041.i = phi i64 [ %.142.ph59.i, %bb.u ], [ %1, %.preheader.i68 ] ; 2 uses
  %i.x = shl i64 %.041.i, 2
  %i.y = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.v, i64 noundef %i.x) #38 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ucs4lib_find_char.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.w
  %i.ae = ashr exact i64 %i.ad, 2                 ; 5 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ag = icmp eq i32 %i.af, %i.t
  br i1 %i.ag, label %ucs4lib_find_char.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = sub i64 %.041.i, %i.ae
  %i.ai = icmp sgt i64 %i.ah, 40
  br i1 %i.ai, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp slt i64 %i.ae, 41
  br i1 %i.aj, label %.thread67.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr i8, ptr %i.ac, i64 -160
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.046.i = phi ptr [ %i.ac, %bb.p ], [ %i.am, %bb.r ] ; 3 uses
  %i.al = icmp ugt ptr %.046.i, %i.ak
  br i1 %i.al, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %.046.i, i64 -4   ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, %i.t
  br i1 %i.ao, label %bb.s, label %bb.q, !llvm.loop !490

bb.s:                                             ; preds = %bb.r
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ap, %i.w
  %i.ar = ashr exact i64 %i.aq, 2
  br label %ucs4lib_find_char.exit

bb.t:                                             ; preds = %bb.q
  %i.as = ptrtoint ptr %.046.i to i64
  %i.at = sub i64 %i.as, %i.w
  %i.au = ashr exact i64 %i.at, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  %.142.ph59.i = phi i64 [ %i.ae, %bb.n ], [ %i.au, %bb.t ] ; 3 uses
  %i.av = icmp sgt i64 %.142.ph59.i, 40
  br i1 %i.av, label %bb.l, label %.thread67.i, !llvm.loop !491

.thread67.i:                                      ; preds = %bb.u, %bb.o, %bb.k, %bb.j
  %.445.i = phi i64 [ %1, %bb.j ], [ %1, %bb.k ], [ %i.ae, %bb.o ], [ %.142.ph59.i, %bb.u ]
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %.445.i
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.thread67.i
  %.147.i = phi ptr [ %i.aw, %.thread67.i ], [ %i.ay, %bb.w ] ; 2 uses
  %i.ax = icmp ugt ptr %.147.i, %0
  br i1 %i.ax, label %bb.w, label %ucs4lib_find_char.exit

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr i8, ptr %.147.i, i64 -4   ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = icmp eq i32 %i.az, %i.t
  br i1 %i.ba, label %bb.x, label %bb.v, !llvm.loop !492

bb.x:                                             ; preds = %bb.w
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %0 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  br label %ucs4lib_find_char.exit

bb.y:                                             ; preds = %bb.d
  %i.bf = icmp eq i64 %4, 9223372036854775807
  %i.bg = load i32, ptr %2, align 4, !tbaa !7     ; 3 uses
  br i1 %i.bf, label %.lr.ph.i69.preheader, label %.lr.ph.i70

.lr.ph.i69.preheader:                             ; preds = %bb.y
  %min.iters.check198 = icmp ult i64 %1, 4
  br i1 %min.iters.check198, label %.lr.ph.i69.preheader218, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i69.preheader
  %n.vec201 = and i64 %1, -4                      ; 3 uses
  %broadcast.splatinsert202 = insertelement <2 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat203 = shufflevector <2 x i32> %broadcast.splatinsert202, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph199
  %index205 = phi i64 [ 0, %vector.ph199 ], [ %index.next210, %vector.body204 ] ; 2 uses
  %vec.phi206 = phi <2 x i64> [ zeroinitializer, %vector.ph199 ], [ %i.bn, %vector.body204 ]
  %vec.phi207 = phi <2 x i64> [ zeroinitializer, %vector.ph199 ], [ %i.bo, %vector.body204 ]
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %index205 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %wide.load208 = load <2 x i32>, ptr %i.bh, align 4, !tbaa !7
  %wide.load209 = load <2 x i32>, ptr %i.bi, align 4, !tbaa !7
  %i.bj = icmp eq <2 x i32> %wide.load208, %broadcast.splat203
  %i.bk = icmp eq <2 x i32> %wide.load209, %broadcast.splat203
  %i.bl = zext <2 x i1> %i.bj to <2 x i64>
  %i.bm = zext <2 x i1> %i.bk to <2 x i64>
  %i.bn = add <2 x i64> %vec.phi206, %i.bl        ; 2 uses
  %i.bo = add <2 x i64> %vec.phi207, %i.bm        ; 2 uses
  %index.next210 = add nuw i64 %index205, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next210, %n.vec201
  br i1 %i.bp, label %middle.block211, label %vector.body204, !llvm.loop !853

middle.block211:                                  ; preds = %vector.body204
  %bin.rdx212 = add <2 x i64> %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx212) ; 2 uses
  %cmp.n213 = icmp eq i64 %1, %n.vec201
  br i1 %cmp.n213, label %ucs4lib_find_char.exit, label %.lr.ph.i69.preheader218

.lr.ph.i69.preheader218:                          ; preds = %.lr.ph.i69.preheader, %middle.block211
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec201, %middle.block211 ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.bq, %middle.block211 ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader218, %.lr.ph.i69
  %.09.i = phi i64 [ %i.bv, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader218 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader218 ]
  %i.br = getelementptr [4 x i8], ptr %0, i64 %.09.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = icmp eq i32 %i.bs, %i.bg
  %i.bu = zext i1 %i.bt to i64
  %spec.select.i = add i64 %.078.i, %i.bu         ; 2 uses
  %i.bv = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %1
  br i1 %exitcond.not.i, label %ucs4lib_find_char.exit, label %.lr.ph.i69, !llvm.loop !854

.lr.ph.i70:                                       ; preds = %bb.y, %bb.aa
  %.016.i = phi i64 [ %.1.i, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %.01115.i = phi i64 [ %i.cb, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %.01115.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = icmp eq i32 %i.bx, %i.bg
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i70
  %i.bz = add i64 %.016.i, 1                      ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %4
  br i1 %i.ca, label %ucs4lib_find_char.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i70
  %.1.i = phi i64 [ %i.bz, %bb.z ], [ %.016.i, %.lr.ph.i70 ] ; 2 uses
  %i.cb = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %i.cb, %1
  br i1 %exitcond.not.i71, label %ucs4lib_find_char.exit, label %.lr.ph.i70, !llvm.loop !855

bb.ab:                                            ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.av, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cc = icmp slt i64 %1, 2500
  br i1 %i.cc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = icmp samesign ult i64 %3, 100
  %i.ce = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.ce, %i.cd
  %i.cf = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.cf, %or.cond3
  br i1 %or.cond5, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cg = add nsw i64 %3, -1                      ; 12 uses
  %i.ch = getelementptr [4 x i8], ptr %2, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7  ; 4 uses
  %min.iters.check = icmp ult i64 %3, 13
  br i1 %min.iters.check, label %.lr.ph.i72.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ae
  %n.vec = and i64 %i.cg, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat166 = shufflevector <2 x i32> %broadcast.splatinsert165, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi167 = phi <2 x i64> [ %broadcast.splat, %vector.ph ], [ %i.cv, %vector.body ]
  %i.cj = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %index
  %wide.load = load <2 x i32>, ptr %i.ck, align 4, !tbaa !7 ; 2 uses
  %i.cl = and <2 x i32> %wide.load, splat (i32 63)
  %i.cm = zext nneg <2 x i32> %i.cl to <2 x i64>
  %i.cn = shl nuw <2 x i64> splat (i64 1), %i.cm
  %i.co = or <2 x i64> %i.cn, %vec.phi            ; 2 uses
  %i.cp = icmp eq <2 x i32> %wide.load, %broadcast.splat166
  %i.cq = freeze <2 x i1> %i.cp                   ; 2 uses
  %i.cr = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cs = add nsw <2 x i64> %broadcast.splat, %i.cr
  %i.ct = bitcast <2 x i1> %i.cq to i2
  %.not216 = icmp eq i2 %i.ct, 0                  ; 2 uses
  %i.cu = select i1 %.not216, <2 x i1> %i.cj, <2 x i1> %i.cq ; 2 uses
  %i.cv = select i1 %.not216, <2 x i64> %vec.phi167, <2 x i64> %i.cs ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !856

middle.block:                                     ; preds = %vector.body
  %i.cx = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.co) ; 2 uses
  %i.cy = tail call i64 @llvm.experimental.vector.extract.last.active.v2i64(<2 x i64> %i.cv, <2 x i1> %i.cu, i64 %i.cg) ; 2 uses
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %bb.ae, %middle.block
  %.068100.i.ph = phi i64 [ 0, %bb.ae ], [ %n.vec, %middle.block ]
  %.06999.i.ph = phi i64 [ 0, %bb.ae ], [ %i.cx, %middle.block ]
  %.07898.i.ph = phi i64 [ %i.cg, %bb.ae ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i72

._crit_edge.i:                                    ; preds = %.lr.ph.i72, %middle.block
  %.lcssa164 = phi i64 [ %i.cx, %middle.block ], [ %i.en, %.lr.ph.i72 ]
  %.179.i.lcssa = phi i64 [ %i.cy, %middle.block ], [ %.179.i, %.lr.ph.i72 ]
  %i.cz = sub i64 %1, %3                          ; 4 uses
  %i.da = getelementptr [4 x i8], ptr %0, i64 %i.cg ; 3 uses
  %i.db = and i32 %i.ci, 63
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = or i64 %.lcssa164, %i.dd                ; 2 uses
  %.not108.i = icmp slt i64 %i.cz, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.ao, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.ef, %bb.ao ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.ao ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.df = getelementptr [4 x i8], ptr %i.da, i64 %.066110.us.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = icmp eq i32 %i.dg, %i.ci
  br i1 %i.dh, label %.preheader.us.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph113.split.us.i
  %i.di = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.di, %i.cz
  br i1 %.not88.us.i, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr [4 x i8], ptr %i.da, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7
  %i.dl = and i32 %i.dk, 63
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dn, %i.de
  %.not89.us.i = icmp eq i64 %i.do, 0
  %i.dp = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.dp, %.066110.us.i
  br label %bb.ao

bb.ah:                                            ; preds = %.preheader.us.i, %bb.ap
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.eg, %bb.ap ] ; 4 uses
  %i.dq = getelementptr [4 x i8], ptr %i.eh, i64 %.0102.us.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = getelementptr [4 x i8], ptr %2, i64 %.0102.us.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %.not90.us.i = icmp eq i32 %i.dr, %i.dt
  br i1 %.not90.us.i, label %bb.ap, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.ah
  %i.du = icmp eq i64 %.0102.us.i, %i.cg
  br i1 %i.du, label %._crit_edge104.us.thread.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge104.us.i
  %i.dv = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.dv, %i.cz
  br i1 %.not91.us.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr [4 x i8], ptr %i.da, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7
  %i.dy = and i32 %i.dx, 63
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %i.de
  %.not92.us.i = icmp eq i64 %i.eb, 0
  br i1 %.not92.us.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ak ], [ %3, %bb.aj ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.ao

._crit_edge104.us.thread.i:                       ; preds = %bb.ap, %._crit_edge104.us.i
  br i1 %.not93.i, label %bb.am, label %ucs4lib_find_char.exit

bb.am:                                            ; preds = %._crit_edge104.us.thread.i
  %i.ec = add i64 %.074109.us.i, 1                ; 2 uses
  %i.ed = icmp eq i64 %i.ec, %4
  br i1 %i.ed, label %ucs4lib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ee = add i64 %.066110.us.i, %i.cg
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ag, %bb.af
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.af ], [ %.074109.us.i, %bb.ag ], [ %.074109.us.i, %bb.al ], [ %i.ec, %bb.an ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.af ], [ %spec.select.us.i, %bb.ag ], [ %.167.us.i, %bb.al ], [ %i.ee, %bb.an ]
  %i.ef = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.ef, %i.cz
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !857

bb.ap:                                            ; preds = %bb.ah
  %i.eg = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.eg, %i.cg
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.ah, !llvm.loop !858

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.eh = getelementptr [4 x i8], ptr %0, i64 %.066110.us.i
  br label %bb.ah

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader, %.lr.ph.i72
  %.068100.i = phi i64 [ %i.er, %.lr.ph.i72 ], [ %.068100.i.ph, %.lr.ph.i72.preheader ] ; 3 uses
  %.06999.i = phi i64 [ %i.en, %.lr.ph.i72 ], [ %.06999.i.ph, %.lr.ph.i72.preheader ]
  %.07898.i = phi i64 [ %.179.i, %.lr.ph.i72 ], [ %.07898.i.ph, %.lr.ph.i72.preheader ]
  %i.ei = getelementptr [4 x i8], ptr %2, i64 %.068100.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7  ; 2 uses
  %i.ek = and i32 %i.ej, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el
  %i.en = or i64 %i.em, %.06999.i                 ; 2 uses
  %i.eo = icmp eq i32 %i.ej, %i.ci
  %i.ep = xor i64 %.068100.i, -1
  %i.eq = add nsw i64 %i.cg, %i.ep
  %.179.i = select i1 %i.eo, i64 %i.eq, i64 %.07898.i ; 2 uses
  %i.er = add nuw nsw i64 %.068100.i, 1           ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.er, %i.cg
  br i1 %exitcond.not.i73, label %._crit_edge.i, label %.lr.ph.i72, !llvm.loop !859

.loopexit.i:                                      ; preds = %bb.ao, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.ao ]
  %i.es = icmp eq i32 %5, 0
  %i.et = select i1 %i.es, i64 %.377.ph.i, i64 -1
  br label %ucs4lib_find_char.exit

bb.aq:                                            ; preds = %bb.ad
  %i.eu = lshr i64 %3, 2
  %i.ev = mul nuw nsw i64 %i.eu, 3
  %i.ew = lshr i64 %1, 2
  %i.ex = icmp samesign ult i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ey = icmp eq i32 %5, 1
  br i1 %i.ey, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ez = tail call fastcc i64 @ucs4lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs4lib_find_char.exit

bb.at:                                            ; preds = %bb.ar
  %i.fa = tail call fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs4lib_find_char.exit

bb.au:                                            ; preds = %bb.aq
  %i.fb = tail call fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs4lib_find_char.exit

bb.av:                                            ; preds = %bb.ab
end_hunk_1
