Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mjpegenc_huffman?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_mjpeg_encode_huffman_close:bb.a
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ai = icmp sgt i32 %.0197.val238.i, %.val237.i
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = load i64, ptr %i.z, align 4
  %i.ak = load i64, ptr %.0197267.i, align 4
  store i64 %i.ak, ptr %i.z, align 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.g, %bb.f
  %.sink.i = phi i64 [ %i.aj, %bb.i ], [ %i.ag, %bb.f ], [ %i.ah, %bb.g ]
  store i64 %.sink.i, ptr %.0197267.i, align 4
  %.val232.i.pre = load i32, ptr %i.ad, align 4, !tbaa !14
  %.0194.val233.i.pre = load i32, ptr %i.ab, align 4, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.h
  %.0194.val233.i = phi i32 [ %.0194.val239.i, %bb.h ], [ %.0194.val233.i.pre, %.sink.split.i ]
  %.val232.i = phi i32 [ %.val237.i, %bb.h ], [ %.val232.i.pre, %.sink.split.i ]
  %.0192.i = phi i32 [ 1, %bb.h ], [ 0, %.sink.split.i ]
  %i.al = icmp sgt i32 %.val232.i, %.0194.val233.i
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr %.0194268.i, align 4
  %i.an = load i64, ptr %i.z, align 4
  store i64 %i.an, ptr %.0194268.i, align 4
  store i64 %i.am, ptr %i.z, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1193.i = phi i32 [ 0, %bb.k ], [ %.0192.i, %bb.j ]
  %i.ao = icmp eq ptr %.0197267.i, %i.t
  br i1 %i.ao, label %.thread.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.z, align 4             ; 2 uses
  %i.aq = load i64, ptr %i.r, align 4
  store i64 %i.aq, ptr %i.z, align 4
  store i64 %i.ap, ptr %i.r, align 4
  %.not224261.i = icmp ugt ptr %i.u, %i.t
  br i1 %.not224261.i, label %._crit_edge.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.m
  %i.ar = getelementptr i8, ptr %.0194268.i, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge228.i, %.preheader.lr.ph.i
  %.0188263.i = phi ptr [ %i.u, %.preheader.lr.ph.i ], [ %.2.i.a, %.critedge228.i ]
  %.0189262.i = phi ptr [ %i.t, %.preheader.lr.ph.i ], [ %.2191.i, %.critedge228.i ] ; 4 uses
  %.val231.i = load i32, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.i
  %.1258.i = phi ptr [ %.0188263.i, %.preheader.i ], [ %i.au, %bb.o ] ; 3 uses
  %i.as = getelementptr i8, ptr %.1258.i, i64 4
  %.1.val.i = load i32, ptr %i.as, align 4, !tbaa !14
  %i.at = icmp slt i32 %.1.val.i, %.val231.i
  br i1 %i.at, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.1258.i, i64 8 ; 3 uses
  %.not226.i = icmp ugt ptr %i.au, %.0189262.i
  br i1 %.not226.i, label %.critedge.i, label %bb.n, !llvm.loop !17

.critedge.i:                                      ; preds = %bb.o, %bb.n
  %.1.lcssa.i = phi ptr [ %i.au, %bb.o ], [ %.1258.i, %bb.n ] ; 7 uses
  %.not227259.i = icmp ugt ptr %.1.lcssa.i, %.0189262.i
  br i1 %.not227259.i, label %.critedge228.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.p
  %.1190260.i = phi ptr [ %i.ax, %bb.p ], [ %.0189262.i, %.critedge.i ] ; 5 uses
  %i.av = getelementptr i8, ptr %.1190260.i, i64 4
  %.1190.val.i = load i32, ptr %i.av, align 4, !tbaa !14
  %i.aw = icmp sgt i32 %.1190.val.i, %.val231.i
  br i1 %i.aw, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds i8, ptr %.1190260.i, i64 -8 ; 3 uses
  %.not227.i = icmp ugt ptr %.1.lcssa.i, %i.ax
  br i1 %.not227.i, label %.critedge228.i, label %.lr.ph.i, !llvm.loop !19

.critedge2.i:                                     ; preds = %.lr.ph.i
  %i.ay = load i64, ptr %.1190260.i, align 4
  %i.az = load i64, ptr %.1.lcssa.i, align 4
  store i64 %i.az, ptr %.1190260.i, align 4
  store i64 %i.ay, ptr %.1.lcssa.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 8
  %i.bb = getelementptr inbounds i8, ptr %.1190260.i, i64 -8
  br label %.critedge228.i

.critedge228.i:                                   ; preds = %bb.p, %.critedge2.i, %.critedge.i
  %.2191.i = phi ptr [ %i.bb, %.critedge2.i ], [ %.0189262.i, %.critedge.i ], [ %i.ax, %bb.p ] ; 3 uses
  %.2.i.a = phi ptr [ %i.ba, %.critedge2.i ], [ %.1.lcssa.i, %.critedge.i ], [ %.1.lcssa.i, %bb.p ] ; 3 uses
  %.not224.i = icmp ugt ptr %.2.i.a, %.2191.i
  br i1 %.not224.i, label %._crit_edge.loopexit.i, label %.preheader.i, !llvm.loop !20

._crit_edge.loopexit.i:                           ; preds = %.critedge228.i
  %.pre.i = load i64, ptr %i.r, align 4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %i.bc = phi i64 [ %i.ap, %bb.m ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0189.lcssa.i = phi ptr [ %i.t, %bb.m ], [ %.2191.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0188.lcssa.i = phi ptr [ %i.u, %bb.m ], [ %.2.i.a, %._crit_edge.loopexit.i ] ; 7 uses
  %i.bd = load i64, ptr %.0188.lcssa.i, align 4
  store i64 %i.bc, ptr %.0188.lcssa.i, align 4
  store i64 %i.bd, ptr %i.r, align 4
  %.not225.i = icmp eq i32 %.1193.i, 0
  br i1 %.not225.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds i8, ptr %.0188.lcssa.i, i64 -8
  %i.bf = icmp eq ptr %i.z, %i.be
  %i.bg = icmp eq ptr %i.z, %.0188.lcssa.i
  %or.cond.i = or i1 %i.bg, %i.bf
  br i1 %or.cond.i, label %.preheader252.i, label %bb.s

.preheader252.i:                                  ; preds = %bb.q, %bb.r
  %.0187.i = phi ptr [ %i.bi, %bb.r ], [ %.0197267.i, %bb.q ] ; 5 uses
  %i.bh = icmp ult ptr %.0187.i, %.0194268.i
  br i1 %i.bh, label %bb.r, label %.critedge4.i

bb.r:                                             ; preds = %.preheader252.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0187.i, i64 8
  %i.bj = getelementptr i8, ptr %.0187.i, i64 4
  %.0187.val.i = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bk = getelementptr i8, ptr %.0187.i, i64 12
  %.val.i = load i32, ptr %i.bk, align 4, !tbaa !14
  %.not251.i = icmp sgt i32 %.0187.val.i, %.val.i
  br i1 %.not251.i, label %.critedge4.i, label %.preheader252.i, !llvm.loop !21

.critedge4.i:                                     ; preds = %bb.r, %.preheader252.i
  %i.bl = icmp eq ptr %.0187.i, %.0194268.i
  br i1 %i.bl, label %.thread.loopexit.i, label %bb.s

bb.s:                                             ; preds = %.critedge4.i, %bb.q, %._crit_edge.i
  %i.bm = ptrtoint ptr %.0188.lcssa.i to i64      ; 2 uses
  %i.bn = sub i64 %i.v, %i.bm
  %i.bo = sub i64 %i.bm, %i.w
  %i.bp = icmp slt i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  store ptr %.0197267.i, ptr %i.bq, align 16, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.0189.lcssa.i, ptr %i.br, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %.0188.lcssa.i, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %.0188.lcssa.i, i64 8
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 16, !tbaa !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %.0194268.i, ptr %i.bv, align 8, !tbaa !15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1198.i = phi ptr [ %i.bs, %bb.t ], [ %.0197267.i, %bb.u ] ; 2 uses
  %.1195.i = phi ptr [ %.0194268.i, %bb.t ], [ %.0189.lcssa.i, %bb.u ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bw = icmp ult ptr %.1198.i, %.1195.i
  br i1 %i.bw, label %.lr.ph270.i, label %.thread.loopexit.i

bb.w:                                             ; preds = %.lr.ph270.i
  %i.bx = trunc nsw i64 %indvars.iv.i to i32      ; 2 uses
  %i.by = getelementptr i8, ptr %.0197267.i, i64 4
  %.0197.val.i = load i32, ptr %i.by, align 4, !tbaa !14
  %i.bz = getelementptr i8, ptr %.0194268.i, i64 4
  %.0194.val.i = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.ca = icmp sgt i32 %.0197.val.i, %.0194.val.i
  br i1 %i.ca, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.cb = load i64, ptr %.0194268.i, align 4
  %i.cc = load i64, ptr %.0197267.i, align 4
  store i64 %i.cc, ptr %.0194268.i, align 4
  store i64 %i.cb, ptr %.0197267.i, align 4
  br label %.thread.i

.thread.loopexit.i:                               ; preds = %bb.v, %.critedge4.i, %bb.l
  %.1201257.ph.in.i = phi i64 [ %indvars.iv.i, %.critedge4.i ], [ %indvars.iv.i, %bb.l ], [ %indvars.iv.next.i, %bb.v ]
  %.1201257.ph.i = trunc i64 %.1201257.ph.in.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %bb.x, %bb.w, %bb.c
  %.1201257.i = phi i32 [ %i.bx, %bb.x ], [ %i.bx, %bb.w ], [ %i.i, %bb.c ], [ %.1201257.ph.i, %.thread.loopexit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.1201257.i, 0
  br i1 %.not.i, label %bb.y, label %bb.c, !llvm.loop !22

bb.y:                                             ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.y
  %.0201292.i = phi ptr [ %4, %bb.y ], [ %.0202291.i, %bb.af ] ; 17 uses
  %.0202291.i = phi ptr [ %5, %bb.y ], [ %.0201292.i, %bb.af ] ; 6 uses
  %.0203290.i = phi i32 [ 0, %bb.y ], [ %i.fn, %bb.af ] ; 2 uses
  %.0205289.i = phi i32 [ undef, %bb.y ], [ %.0204.i, %bb.af ]
  store i32 0, ptr %.0201292.i, align 4, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %.0201292.i, i64 4 ; 10 uses
  store i32 0, ptr %i.cd, align 4, !tbaa !14
  %.not222.i = icmp eq i32 %.0203290.i, 16
  %spec.select.i = select i1 %.not222.i, i32 %.0205289.i, i32 0
  %i.ce = getelementptr inbounds nuw i8, ptr %.0202291.i, i64 2064 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0202291.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0202291.i, i64 4120 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0201292.i, i64 4120 ; 5 uses
  br label %.outer

.outer:                                           ; preds = %._crit_edge279.i, %bb.z
  %.2208.i.ph = phi i32 [ %i.du, %._crit_edge279.i ], [ 0, %bb.z ] ; 5 uses
  %.0204.i.ph = phi i32 [ %.0204.i, %._crit_edge279.i ], [ %spec.select.i, %bb.z ]
  %7 = or disjoint i32 %.2208.i.ph, 1             ; 2 uses
  %8 = zext nneg i32 %.2208.i.ph to i64           ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %8
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %10
  br label %bb.aa

bb.aa:                                            ; preds = %.outer, %._crit_edge310.i
  %.0204.i = phi i32 [ %i.dr, %._crit_edge310.i ], [ %.0204.i.ph, %.outer ] ; 5 uses
  %.not22 = icmp sgt i32 %.0204.i, %.1.1
  br i1 %.not22, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %12 = or disjoint i32 %.2208.i.ph, 1
  %i.ci = load i32, ptr %.0202291.i, align 4, !tbaa !12
  %i.cj = icmp slt i32 %12, %i.ci
  br i1 %i.cj, label %.critedge6.i, label %bb.af

.critedge6.i:                                     ; preds = %bb.ab
  %i.ck = load i32, ptr %.0201292.i, align 4, !tbaa !12 ; 2 uses
  %i.cl = add nsw i32 %i.ck, 1                    ; 2 uses
  store i32 %i.cl, ptr %.0201292.i, align 4, !tbaa !12
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.cp = sext i32 %i.cl to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cp
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !14
  %.pre317.i = zext nneg i32 %.2208.i.ph to i64
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.cr = load i32, ptr %.0201292.i, align 4, !tbaa !12 ; 2 uses
  %i.cs = add nsw i32 %i.cr, 1                    ; 2 uses
  store i32 %i.cs, ptr %.0201292.i, align 4, !tbaa !12
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !14
  %i.cw = sext i32 %i.cs to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.cw
  store i32 %i.cv, ptr %i.cx, align 4, !tbaa !14
  %13 = load i32, ptr %.0202291.i, align 4, !tbaa !12
  %.not238.i = icmp slt i32 %7, %13
  %14 = sext i32 %.0204.i to i64                  ; 2 uses
  br i1 %.not238.i, label %bb.ad, label %._crit_edge310.i

bb.ad:                                            ; preds = %bb.ac
  %15 = getelementptr inbounds [8 x i8], ptr %6, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.cy = load i32, ptr %16, align 4, !tbaa !11
  %17 = load i32, ptr %9, align 4, !tbaa !14
  %i.cz = load i32, ptr %11, align 4, !tbaa !14
  %i.da = add nsw i32 %i.cz, %17
  %i.db = icmp slt i32 %i.cy, %i.da
  br i1 %i.db, label %._crit_edge310.i, label %bb.ae

._crit_edge310.i:                                 ; preds = %bb.ad, %bb.ac
  %i.dc = getelementptr inbounds [8 x i8], ptr %6, i64 %14 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !9
  %i.de = load i32, ptr %.0201292.i, align 4, !tbaa !12
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !14 ; 2 uses
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !14
  %i.dj = sext i32 %i.dh to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dj
  store i32 %i.dd, ptr %i.dk, align 4, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !11
  %i.dn = load i32, ptr %.0201292.i, align 4, !tbaa !12
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [4 x i8], ptr %.0201292.i, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 2060
  store i32 %i.dm, ptr %i.dq, align 4, !tbaa !14
  %i.dr = add nsw i32 %.0204.i, 1
  br label %bb.aa, !llvm.loop !23

bb.ae:                                            ; preds = %bb.ad, %.critedge6.i
  %.pre-phi.i = phi i64 [ %.pre317.i, %.critedge6.i ], [ %8, %bb.ad ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.pre-phi.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !14 ; 2 uses
  %i.du = add nuw nsw i32 %.2208.i.ph, 2          ; 2 uses
  %18 = zext nneg i32 %i.du to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %18
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !14 ; 2 uses
  %i.dx = icmp slt i32 %i.dt, %i.dw
  br i1 %i.dx, label %.lr.ph278.preheader.i, label %._crit_edge279.i

.lr.ph278.preheader.i:                            ; preds = %bb.ae
  %i.dy = sext i32 %i.dt to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.dw to i64      ; 3 uses
  %i.dz = sub nsw i64 %wide.trip.count.i, %i.dy
  %xtraiter = and i64 %i.dz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph278.i.prol.loopexit, label %.lr.ph278.i.prol

.lr.ph278.i.prol:                                 ; preds = %.lr.ph278.preheader.i
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.dy
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !14
  %i.ec = load i32, ptr %.0201292.i, align 4, !tbaa !12
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !14 ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !14
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.eh
  store i32 %i.eb, ptr %i.ei, align 4, !tbaa !14
  %indvars.iv.next296.i.prol = add nsw i64 %i.dy, 1
  br label %.lr.ph278.i.prol.loopexit

.lr.ph278.i.prol.loopexit:                        ; preds = %.lr.ph278.i.prol, %.lr.ph278.preheader.i
  %indvars.iv295.i.unr = phi i64 [ %i.dy, %.lr.ph278.preheader.i ], [ %indvars.iv.next296.i.prol, %.lr.ph278.i.prol ]
  %i.ej = add nsw i64 %wide.trip.count.i, -1
  %i.ek = icmp eq i64 %i.ej, %i.dy
  br i1 %i.ek, label %._crit_edge279.i, label %.lr.ph278.i

.lr.ph278.i:                                      ; preds = %.lr.ph278.i.prol.loopexit, %.lr.ph278.i
  %indvars.iv295.i = phi i64 [ %indvars.iv.next296.i.1, %.lr.ph278.i ], [ %indvars.iv295.i.unr, %.lr.ph278.i.prol.loopexit ] ; 3 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %indvars.iv295.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !14
  %i.en = load i32, ptr %.0201292.i, align 4, !tbaa !12
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14 ; 2 uses
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !14
  %i.es = sext i32 %i.eq to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.es
  store i32 %i.em, ptr %i.et, align 4, !tbaa !14
  %i.eu = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv295.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14
  %i.ex = load i32, ptr %.0201292.i, align 4, !tbaa !12
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !14 ; 2 uses
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !14
  %i.fc = sext i32 %i.fa to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fc
  store i32 %i.ew, ptr %i.fd, align 4, !tbaa !14
  %indvars.iv.next296.i.1 = add nsw i64 %indvars.iv295.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next296.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge279.i, label %.lr.ph278.i, !llvm.loop !24

._crit_edge279.i:                                 ; preds = %.lr.ph278.i.prol.loopexit, %.lr.ph278.i, %bb.ae
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.pre-phi.i ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !14
  %i.fg = getelementptr i8, ptr %i.fe, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !14
  %i.fi = add nsw i32 %i.fh, %i.ff
  %i.fj = load i32, ptr %.0201292.i, align 4, !tbaa !12
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr [4 x i8], ptr %.0201292.i, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 2060
  store i32 %i.fi, ptr %i.fm, align 4, !tbaa !14
  br label %.outer, !llvm.loop !23

bb.af:                                            ; preds = %bb.ab
  %i.fn = add nuw nsw i32 %.0203290.i, 1          ; 2 uses
  %exitcond299.not.i = icmp eq i32 %i.fn, 17
  br i1 %exitcond299.not.i, label %bb.ag, label %bb.z, !llvm.loop !25

bb.ag:                                            ; preds = %bb.af
  %i.fo = load i32, ptr %.0201292.i, align 4, !tbaa !12
  %i.fp = call i32 @llvm.smin.i32(i32 %i.fo, i32 %.1.1)
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !14
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph287.i, label %._crit_edge288.i

.lr.ph287.i:                                      ; preds = %bb.ag, %.lr.ph287.i
  %indvars.iv300.i = phi i64 [ %indvars.iv.next301.i, %.lr.ph287.i ], [ 0, %bb.ag ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv300.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !14
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !14
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !14
  %indvars.iv.next301.i = add nuw nsw i64 %indvars.iv300.i, 1 ; 2 uses
  %i.ga = load i32, ptr %i.fr, align 4, !tbaa !14
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next301.i, %i.gb
  br i1 %i.gc, label %.lr.ph287.i, label %._crit_edge288.i, !llvm.loop !26

._crit_edge288.i:                                 ; preds = %.lr.ph287.i, %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %1, i8 0, i64 17, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %._crit_edge288.i
  %indvars.iv304.i = phi i64 [ 0, %._crit_edge288.i ], [ %indvars.iv.next305.i.3, %bb.ah ] ; 5 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.i
  %i.ge = load i32, ptr %i.gd, align 16, !tbaa !14
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %1, i64 %i.gf ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !27
  %i.gi = add i8 %i.gh, 1
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !27
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !14
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %1, i64 %i.gm ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !27
  %i.gp = add i8 %i.go, 1
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !27
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !14
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gt ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !27
  %i.gw = add i8 %i.gv, 1
  store i8 %i.gw, ptr %i.gu, align 1, !tbaa !27
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !14
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %1, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !27
  %i.hd = add i8 %i.hc, 1
  store i8 %i.hd, ptr %i.hb, align 1, !tbaa !27
  %indvars.iv.next305.i.3 = add nuw nsw i64 %indvars.iv304.i, 4 ; 2 uses
  %exitcond308.not.i.3 = icmp eq i64 %indvars.iv.next305.i.3, 256
  br i1 %exitcond308.not.i.3, label %mjpegenc_huffman_compute_bits.exit, label %bb.ah, !llvm.loop !28

mjpegenc_huffman_compute_bits.exit:               ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.he = icmp sgt i32 %.1.1, 0
  br i1 %i.he, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %mjpegenc_huffman_compute_bits.exit
  %wide.trip.count = zext nneg i32 %.1.1 to i64   ; 2 uses
  %xtraiter80 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.hf = icmp ult i32 %.1.1, 4
  br i1 %i.hf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

bb.ai:                                            ; preds = %bb.am, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.am ] ; 4 uses
  %.02129 = phi i32 [ 0, %bb.a ], [ %.1.1, %bb.am ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !14 ; 2 uses
  %.not = icmp eq i32 %i.hh, 0
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hi = sext i32 %.02129 to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %6, i64 %i.hi ; 2 uses
  %i.hk = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hk, ptr %i.hj, align 8, !tbaa !9
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store i32 %i.hh, ptr %i.hl, align 4, !tbaa !11
  %i.hm = add nsw i32 %.02129, 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.1 = phi i32 [ %i.hm, %bb.aj ], [ %.02129, %bb.ai ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !14 ; 2 uses
  %.not.1 = icmp eq i32 %i.ho, 0
  br i1 %.not.1, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hp = sext i32 %.1 to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %6, i64 %i.hp ; 2 uses
  %i.hr = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.hr, ptr %i.hq, align 8, !tbaa !9
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i32 %i.ho, ptr %i.hs, align 4, !tbaa !11
  %i.ht = add nsw i32 %.1, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1.1 = phi i32 [ %i.ht, %bb.al ], [ %.1, %bb.ak ] ; 7 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %bb.b, label %bb.ai, !llvm.loop !29

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv39.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next40.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = icmp ne i64 %xtraiter80, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv39.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next40.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.hu = sub nsw i64 %i.c, %indvars.iv39.epil
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !9
  %i.hx = trunc i32 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39.epil
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !27
  %indvars.iv.next40.epil = add nuw nsw i64 %indvars.iv39.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter80
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !30

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %mjpegenc_huffman_compute_bits.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv39 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next40.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.hz = sub nsw i64 %i.c, %indvars.iv39
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !9
  %i.ic = trunc i32 %i.ib to i8
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv39
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !27
  %indvars.iv.next40 = or disjoint i64 %indvars.iv39, 1 ; 2 uses
  %i.ie = sub nsw i64 %i.c, %indvars.iv.next40
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !9
  %i.ih = trunc i32 %i.ig to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next40
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !27
  %indvars.iv.next40.1 = or disjoint i64 %indvars.iv39, 2 ; 2 uses
  %i.ij = sub nsw i64 %i.c, %indvars.iv.next40.1
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !9
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next40.1
  store i8 %i.im, ptr %i.in, align 1, !tbaa !27
  %indvars.iv.next40.2 = or disjoint i64 %indvars.iv39, 3 ; 2 uses
  %i.io = sub nsw i64 %i.c, %indvars.iv.next40.2
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !9
  %i.ir = trunc i32 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next40.2
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !27
  %indvars.iv.next40.3 = add nuw nsw i64 %indvars.iv39, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
end_hunk_0
