Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/assign?download=true
inline.NumInlined: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@LeftNetsAssign:bb.a

.lr.ph63:                                         ; preds = %._crit_edge, %.loopexit
  %.03061 = phi i64 [ %.030, %.loopexit ], [ %.03058, %._crit_edge ] ; 8 uses
  %.060 = phi i64 [ %.4, %.loopexit ], [ 0, %._crit_edge ] ; 6 uses
  %i.g = load ptr, ptr @TOP, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03061
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 7 uses
  %i.j = load ptr, ptr @BOT, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.03061
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14   ; 5 uses
  %.not36 = icmp eq i64 %i.i, %i.l
  %.not37 = icmp eq i64 %i.i, 0                   ; 2 uses
  br i1 %.not36, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph63
  br i1 %.not37, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @LAST, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = icmp eq i64 %i.o, %.03061
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @CROSSING, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.i
  store i64 1, ptr %i.r, align 8, !tbaa !14
  %i.s = add i64 %.060, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1 = phi i64 [ %i.s, %bb.e ], [ %.060, %bb.d ], [ %.060, %bb.c ] ; 3 uses
  %.not39 = icmp eq i64 %i.l, 0
  br i1 %.not39, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr @LAST, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.l
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  %i.w = icmp eq i64 %i.v, %.03061
  br i1 %i.w, label %.sink.split, label %bb.j

bb.h:                                             ; preds = %.lr.ph63
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr @LAST, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !14
  %i.aa = icmp eq i64 %i.z, %.03061
  br i1 %i.aa, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.g
  %.sink96 = phi i64 [ %i.l, %bb.g ], [ %i.i, %bb.i ]
  %.060.sink = phi i64 [ %.1, %bb.g ], [ %.060, %bb.i ]
  %i.ab = load ptr, ptr @CROSSING, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sink96
  store i64 1, ptr %i.ac, align 8, !tbaa !14
  %i.ad = add i64 %.060.sink, 1
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.i, %bb.f, %bb.g
  %.2 = phi i64 [ %.060, %bb.i ], [ %.1, %bb.g ], [ %.1, %bb.f ], [ %.060, %bb.h ], [ %i.ad, %.sink.split ] ; 3 uses
  %i.ae = load ptr, ptr @FIRST, align 8, !tbaa !20 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %i.ah = icmp eq i64 %i.ag, %.03061
  br i1 %i.ah, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.l
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.ak = icmp eq i64 %i.aj, %.03061
  br i1 %i.ak, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not4054 = icmp eq i64 %.2, 0
  br i1 %.not4054, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %bb.l
  %.pre = load ptr, ptr @CROSSING, align 8, !tbaa !20
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %Select.exit
  %i.al = phi ptr [ %i.ei, %Select.exit ], [ %.pre, %.lr.ph57.preheader ] ; 5 uses
  %.355 = phi i64 [ %i.ek, %Select.exit ], [ %.2, %.lr.ph57.preheader ]
  %i.am = load ptr, ptr @VCG, align 8, !tbaa !23
  %i.an = load ptr, ptr @HCG, align 8, !tbaa !25
  %i.ao = load ptr, ptr @netsAssign, align 8, !tbaa !20
  %i.ap = load i64, ptr @channelNets, align 8, !tbaa !14 ; 2 uses
  %.not63.i = icmp eq i64 %i.ap, 0
  br i1 %.not63.i, label %Select.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.lr.ph57
  %i.aq = load ptr, ptr @costMatrix, align 8, !tbaa !18
  %i.ar = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph74.i.preheader, label %.lr.ph66.split.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i, %.lr.ph66.i
  %.ph = phi i64 [ 0, %.lr.ph66.i ], [ %i.bc, %.preheader.i ]
  br label %.lr.ph74.i

.preheader.i:                                     ; preds = %._crit_edge.i42
  %i.at = icmp eq i64 %.pr, 0
  br i1 %i.at, label %Select.exit, label %.lr.ph74.i.preheader

.lr.ph66.split.i:                                 ; preds = %.lr.ph66.i, %._crit_edge.i42
  %i.au = phi i64 [ %i.bc, %._crit_edge.i42 ], [ %i.ar, %.lr.ph66.i ]
  %i.av = phi i64 [ %.pr, %._crit_edge.i42 ], [ %i.ap, %.lr.ph66.i ]
  %i.aw = phi i64 [ %i.bd, %._crit_edge.i42 ], [ 1, %.lr.ph66.i ]
  %.04264.i = phi i64 [ %i.be, %._crit_edge.i42 ], [ 1, %.lr.ph66.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04264.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %.not5761.i = icmp eq i64 %i.aw, 0
  br i1 %.not5761.i, label %._crit_edge.i42, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph66.split.i, %.lr.ph.i41
  %.04162.i = phi i64 [ %i.ba, %.lr.ph.i41 ], [ 1, %.lr.ph66.split.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04162.i
  store i64 0, ptr %i.az, align 8, !tbaa !14
  %i.ba = add i64 %.04162.i, 1                    ; 2 uses
  %i.bb = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 3 uses
  %.not57.i = icmp ugt i64 %i.ba, %i.bb
  br i1 %.not57.i, label %._crit_edge.loopexit.i, label %.lr.ph.i41, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i41
  %.pre.i = load i64, ptr @channelNets, align 8, !tbaa !14
  br label %._crit_edge.i42

._crit_edge.i42:                                  ; preds = %._crit_edge.loopexit.i, %.lr.ph66.split.i
  %i.bc = phi i64 [ %i.bb, %._crit_edge.loopexit.i ], [ %i.au, %.lr.ph66.split.i ] ; 2 uses
  %.pr = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.av, %.lr.ph66.split.i ] ; 3 uses
  %i.bd = phi i64 [ %i.bb, %._crit_edge.loopexit.i ], [ 0, %.lr.ph66.split.i ]
  %i.be = add i64 %.04264.i, 1                    ; 2 uses
  %.not.i = icmp ugt i64 %i.be, %.pr
  br i1 %.not.i, label %.preheader.i, label %.lr.ph66.split.i, !llvm.loop !2

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %.loopexit.i
  %i.bf = phi i64 [ %.fr.i, %.loopexit.i ], [ %.ph, %.lr.ph74.i.preheader ]
  %.14373.i = phi i64 [ %i.cu, %.loopexit.i ], [ 1, %.lr.ph74.i.preheader ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.14373.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !14
  %.not51.i = icmp eq i64 %i.bh, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph74.i
  %i.bi = load ptr, ptr @costMatrix, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.14373.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20 ; 3 uses
  tail call void @LongestPathVCG(ptr noundef %i.am, i64 noundef %.14373.i) #11
  %i.bl = load ptr, ptr @tracksNoHCV, align 8, !tbaa !20
  tail call void @NoHCV(ptr noundef %i.an, i64 noundef %.14373.i, ptr noundef %i.ao, ptr noundef %i.bl) #11
  %i.bm = load i64, ptr @cardTopNotPref, align 8, !tbaa !14 ; 3 uses
  %i.bn = load i64, ptr @cardBotNotPref, align 8, !tbaa !14 ; 3 uses
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bo, 0
  %.pre77.i = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 3 uses
  br i1 %.not.i.i, label %IdealTrack.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = sub i64 %.pre77.i, %i.bn
  %i.bq = mul i64 %i.bp, %i.bm
  %i.br = add i64 %i.bm, 1
  %i.bs = mul i64 %i.bn, %i.br
  %i.bt = add i64 %i.bq, %i.bs
  %i.bu = udiv i64 %i.bt, %i.bo
  br label %IdealTrack.exit.i

IdealTrack.exit.i:                                ; preds = %bb.n, %bb.m
  %storemerge.i.i = phi i64 [ %i.bu, %bb.n ], [ 1, %bb.m ]
  %.not5267.i = icmp eq i64 %.pre77.i, 0
  br i1 %.not5267.i, label %.loopexit.i, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %IdealTrack.exit.i
  %i.bv = load ptr, ptr @tracksNoHCV, align 8, !tbaa !20
  %i.bw = load ptr, ptr @tracksNotPref, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph71.i
  %i.bx = phi i64 [ %.pre77.i, %.lr.ph71.i ], [ %i.cs, %bb.w ] ; 3 uses
  %.168.i = phi i64 [ 1, %.lr.ph71.i ], [ %i.cr, %bb.w ] ; 9 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.168.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !14
  %.not53.i = icmp eq i64 %i.bz, 0
  br i1 %.not53.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load i64, ptr @cardNotPref, align 8, !tbaa !14 ; 2 uses
  %.not54.i = icmp eq i64 %i.ca, %i.bx
  br i1 %.not54.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.168.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !14
  %.not56.i = icmp eq i64 %i.cc, 0
  br i1 %.not56.i, label %bb.u, label %.thread.i

bb.r:                                             ; preds = %bb.p
  %i.cd = load i64, ptr @cardBotNotPref, align 8, !tbaa !14
  %i.ce = sub i64 %i.bx, %i.cd                    ; 2 uses
  %i.cf = icmp ugt i64 %.168.i, %i.ce
  br i1 %i.cf, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.cg = load i64, ptr @cardTopNotPref, align 8, !tbaa !14 ; 2 uses
  %.not55.i = icmp ugt i64 %.168.i, %i.cg
  br i1 %.not55.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = add i64 %i.ce, %i.bx
  %i.ci = sub i64 %i.ch, %i.cg
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.sink95.i = phi i64 [ %i.ci, %bb.t ], [ %i.ca, %bb.q ]
  %i.cj = mul i64 %.sink95.i, 100                 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.168.i
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !14
  %i.cl = icmp slt i64 %i.cj, 1000000
  br i1 %i.cl, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.u, %bb.s, %bb.r, %bb.q
  %i.cm = phi i64 [ %i.cj, %bb.u ], [ 10000, %bb.q ], [ 10000, %bb.s ], [ 10000, %bb.r ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.168.i
  %i.co = sub i64 %storemerge.i.i, %.168.i
  %spec.select.i43 = tail call i64 @llvm.abs.i64(i64 %i.co, i1 true)
  %i.cp = add nsw i64 %i.cm, %spec.select.i43
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !14
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.168.i
  store i64 1000000, ptr %i.cq, align 8, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i, %bb.u
  %i.cr = add i64 %.168.i, 1                      ; 2 uses
  %i.cs = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 3 uses
  %.not52.i = icmp ugt i64 %i.cr, %i.cs
  br i1 %.not52.i, label %.loopexit.i, label %bb.o, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.w, %IdealTrack.exit.i, %.lr.ph74.i
  %i.ct = phi i64 [ %i.bf, %.lr.ph74.i ], [ 0, %IdealTrack.exit.i ], [ %i.cs, %bb.w ]
  %.fr.i = freeze i64 %i.ct                       ; 3 uses
  %i.cu = add i64 %.14373.i, 1                    ; 2 uses
  %i.cv = load i64, ptr @channelNets, align 8, !tbaa !14 ; 7 uses
  %.not50.i = icmp ugt i64 %i.cu, %i.cv
  br i1 %.not50.i, label %BuildCostMatrix.exit, label %.lr.ph74.i, !llvm.loop !4

BuildCostMatrix.exit:                             ; preds = %.loopexit.i
  %.not30.i = icmp eq i64 %i.cv, 0
  br i1 %.not30.i, label %Select.exit, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %BuildCostMatrix.exit
  %i.cw = load ptr, ptr @costMatrix, align 8
  %.not2527.i = icmp eq i64 %.fr.i, 0
  br i1 %.not2527.i, label %.lr.ph35.split.us.i.preheader, label %.lr.ph35.split.preheader.i

.lr.ph35.split.us.i.preheader:                    ; preds = %.lr.ph35.i
  %xtraiter = and i64 %i.cv, 1
  %i.cx = icmp eq i64 %i.cv, 1
  br i1 %i.cx, label %.lr.ph35.split.us.i.epil.preheader, label %.lr.ph35.split.us.i.preheader.new

.lr.ph35.split.us.i.preheader.new:                ; preds = %.lr.ph35.split.us.i.preheader
  %unroll_iter = and i64 %i.cv, -2
  br label %.lr.ph35.split.us.i

.lr.ph35.split.preheader.i:                       ; preds = %.lr.ph35.i
  %i.cy = add i64 %.fr.i, 1                       ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 2) ; 2 uses
  %i.cz = add i64 %umax.i, -1                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 5
  %n.vec = and i64 %i.cz, -4                      ; 3 uses
  %i.da = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br label %.lr.ph35.split.i

.lr.ph35.split.us.i:                              ; preds = %.lr.ph35.split.us.i, %.lr.ph35.split.us.i.preheader.new
  %.033.us.i = phi i64 [ -1, %.lr.ph35.split.us.i.preheader.new ], [ %.1.us.i.1, %.lr.ph35.split.us.i ] ; 2 uses
  %.02032.us.i = phi i64 [ 0, %.lr.ph35.split.us.i.preheader.new ], [ %.121.us.i.1, %.lr.ph35.split.us.i ]
  %.02331.us.i = phi i64 [ 1, %.lr.ph35.split.us.i.preheader.new ], [ %i.dk, %.lr.ph35.split.us.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph35.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph35.split.us.i ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.02331.us.i
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !14
  %.not24.us.i = icmp eq i64 %i.dc, 0             ; 2 uses
  %i.dd = icmp sgt i64 %.033.us.i, -1
  %i.de = select i1 %.not24.us.i, i1 true, i1 %i.dd
  %.121.us.i = select i1 %i.de, i64 %.02032.us.i, i64 %.02331.us.i
  %.1.us.i = select i1 %.not24.us.i, i64 %.033.us.i, i64 0 ; 2 uses
  %i.df = add nuw i64 %.02331.us.i, 1             ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !14
  %.not24.us.i.1 = icmp eq i64 %i.dh, 0           ; 2 uses
  %i.di = icmp sgt i64 %.1.us.i, -1
  %i.dj = select i1 %.not24.us.i.1, i1 true, i1 %i.di
  %.121.us.i.1 = select i1 %i.dj, i64 %.121.us.i, i64 %i.df ; 3 uses
  %.1.us.i.1 = select i1 %.not24.us.i.1, i64 %.1.us.i, i64 0 ; 2 uses
  %i.dk = add nuw i64 %.02331.us.i, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Select.exit.loopexit.unr-lcssa, label %.lr.ph35.split.us.i, !llvm.loop !0

.lr.ph35.split.i:                                 ; preds = %bb.x, %.lr.ph35.split.preheader.i
  %.033.i = phi i64 [ %.1.i, %bb.x ], [ -1, %.lr.ph35.split.preheader.i ] ; 3 uses
  %.02032.i = phi i64 [ %.121.i, %bb.x ], [ 0, %.lr.ph35.split.preheader.i ] ; 2 uses
  %.02331.i = phi i64 [ %i.eb, %bb.x ], [ 1, %.lr.ph35.split.preheader.i ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.02331.i
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !14
  %.not24.i = icmp eq i64 %i.dm, 0
  br i1 %.not24.i, label %bb.x, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph35.split.i
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.02331.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !20 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ds, %vector.body ], [ zeroinitializer, %.lr.ph.i ]
  %vec.phi102 = phi <2 x i64> [ %i.dt, %vector.body ], [ zeroinitializer, %.lr.ph.i ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !14
  %wide.load103 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !14
  %i.ds = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.dt = add <2 x i64> %wide.load103, %vec.phi102 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01929.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.dv, %middle.block ]
  %.02228.i.ph = phi i64 [ 1, %.lr.ph.i ], [ %i.da, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01929.i = phi i64 [ %i.dy, %scalar.ph ], [ %.01929.i.ph, %scalar.ph.preheader ]
  %.02228.i = phi i64 [ %i.dz, %scalar.ph ], [ %.02228.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.02228.i
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !14
  %i.dy = add nsw i64 %i.dx, %.01929.i            ; 2 uses
  %i.dz = add nuw i64 %.02228.i, 1                ; 2 uses
  %exitcond.i = icmp eq i64 %i.dz, %umax.i
  br i1 %exitcond.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !38

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa101 = phi i64 [ %i.dv, %middle.block ], [ %i.dy, %scalar.ph ] ; 2 uses
  %i.ea = icmp sgt i64 %.lcssa101, %.033.i
  %spec.select.i = select i1 %i.ea, i64 %.02331.i, i64 %.02032.i
  %spec.select26.i = tail call i64 @llvm.smax.i64(i64 %.lcssa101, i64 %.033.i)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %.lr.ph35.split.i
  %.121.i = phi i64 [ %.02032.i, %.lr.ph35.split.i ], [ %spec.select.i, %._crit_edge.i ] ; 2 uses
  %.1.i = phi i64 [ %.033.i, %.lr.ph35.split.i ], [ %spec.select26.i, %._crit_edge.i ]
  %i.eb = add nuw i64 %.02331.i, 1
  %exitcond40.i = icmp eq i64 %.02331.i, %i.cv
  br i1 %exitcond40.i, label %Select.exit, label %.lr.ph35.split.i, !llvm.loop !0

Select.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph35.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Select.exit, label %.lr.ph35.split.us.i.epil.preheader

.lr.ph35.split.us.i.epil.preheader:               ; preds = %Select.exit.loopexit.unr-lcssa, %.lr.ph35.split.us.i.preheader
  %.033.us.i.epil.init = phi i64 [ -1, %.lr.ph35.split.us.i.preheader ], [ %.1.us.i.1, %Select.exit.loopexit.unr-lcssa ]
  %.02032.us.i.epil.init = phi i64 [ 0, %.lr.ph35.split.us.i.preheader ], [ %.121.us.i.1, %Select.exit.loopexit.unr-lcssa ]
  %.02331.us.i.epil.init = phi i64 [ 1, %.lr.ph35.split.us.i.preheader ], [ %i.dk, %Select.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod113 = trunc i64 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.02331.us.i.epil.init
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !14
  %.not24.us.i.epil = icmp eq i64 %i.ed, 0
  %i.ee = icmp sgt i64 %.033.us.i.epil.init, -1
  %i.ef = select i1 %.not24.us.i.epil, i1 true, i1 %i.ee
  %.121.us.i.epil = select i1 %i.ef, i64 %.02032.us.i.epil.init, i64 %.02331.us.i.epil.init
  br label %Select.exit

Select.exit:                                      ; preds = %bb.x, %.lr.ph35.split.us.i.epil.preheader, %Select.exit.loopexit.unr-lcssa, %.preheader.i, %.lr.ph57, %BuildCostMatrix.exit
  %.020.lcssa.i = phi i64 [ 0, %BuildCostMatrix.exit ], [ 0, %.lr.ph57 ], [ %.121.us.i.epil, %.lr.ph35.split.us.i.epil.preheader ], [ 0, %.preheader.i ], [ %.121.us.i.1, %Select.exit.loopexit.unr-lcssa ], [ %.121.i, %bb.x ] ; 2 uses
  %i.eg = load ptr, ptr @VCG, align 8, !tbaa !23
  %i.eh = load ptr, ptr @netsAssign, align 8, !tbaa !20
  tail call void @Assign(ptr noundef %i.eg, ptr noundef %i.eh, i64 noundef %.020.lcssa.i)
  %i.ei = load ptr, ptr @CROSSING, align 8, !tbaa !20 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.020.lcssa.i
  store i64 0, ptr %i.ej, align 8, !tbaa !14
  %i.ek = add i64 %.355, -1                       ; 2 uses
  %.not40 = icmp eq i64 %i.ek, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph57, !llvm.loop !39

.loopexit:                                        ; preds = %Select.exit, %bb.l, %bb.k
  %.4 = phi i64 [ %.2, %bb.k ], [ 0, %bb.l ], [ 0, %Select.exit ]
  %.030 = add i64 %.03061, -1                     ; 2 uses
  %.not35 = icmp eq i64 %.030, 0
  br i1 %.not35, label %._crit_edge64, label %.lr.ph63, !llvm.loop !40

._crit_edge64:                                    ; preds = %.loopexit, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RightNetsAssign() local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr @channelNets, align 8, !tbaa !14
  %.not52 = icmp eq i64 %i.a, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@RightNetsAssign:bb.a

.lr.ph63:                                         ; preds = %._crit_edge, %.loopexit
  %.03061 = phi i64 [ %.030, %.loopexit ], [ %.03058, %._crit_edge ] ; 8 uses
  %.060 = phi i64 [ %.4, %.loopexit ], [ 0, %._crit_edge ] ; 6 uses
  %i.h = load ptr, ptr @TOP, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.03061
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14   ; 7 uses
  %i.k = load ptr, ptr @BOT, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.03061
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14   ; 5 uses
  %.not36 = icmp eq i64 %i.j, %i.m
  %.not37 = icmp eq i64 %i.j, 0                   ; 2 uses
  br i1 %.not36, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.lr.ph63
  br i1 %.not37, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @FIRST, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.j
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14
  %i.q = icmp eq i64 %i.p, %.03061
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @CROSSING, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.j
  store i64 1, ptr %i.s, align 8, !tbaa !14
  %i.t = add i64 %.060, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.1 = phi i64 [ %i.t, %bb.e ], [ %.060, %bb.d ], [ %.060, %bb.c ] ; 3 uses
  %.not39 = icmp eq i64 %i.m, 0
  br i1 %.not39, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr @FIRST, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.m
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = icmp eq i64 %i.w, %.03061
  br i1 %i.x, label %.sink.split, label %bb.j

bb.h:                                             ; preds = %.lr.ph63
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr @FIRST, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.j
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14
  %i.ab = icmp eq i64 %i.aa, %.03061
  br i1 %i.ab, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.g
  %.sink96 = phi i64 [ %i.m, %bb.g ], [ %i.j, %bb.i ]
  %.060.sink = phi i64 [ %.1, %bb.g ], [ %.060, %bb.i ]
  %i.ac = load ptr, ptr @CROSSING, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sink96
  store i64 1, ptr %i.ad, align 8, !tbaa !14
  %i.ae = add i64 %.060.sink, 1
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h, %bb.i, %bb.f, %bb.g
  %.2 = phi i64 [ %.060, %bb.i ], [ %.1, %bb.g ], [ %.1, %bb.f ], [ %.060, %bb.h ], [ %i.ae, %.sink.split ] ; 3 uses
  %i.af = load ptr, ptr @LAST, align 8, !tbaa !20 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.j
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.ai = icmp eq i64 %i.ah, %.03061
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.m
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.al = icmp eq i64 %i.ak, %.03061
  br i1 %i.al, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not4054 = icmp eq i64 %.2, 0
  br i1 %.not4054, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %bb.l
  %.pre = load ptr, ptr @CROSSING, align 8, !tbaa !20
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %Select.exit
  %i.am = phi ptr [ %i.ej, %Select.exit ], [ %.pre, %.lr.ph57.preheader ] ; 5 uses
  %.355 = phi i64 [ %i.el, %Select.exit ], [ %.2, %.lr.ph57.preheader ]
  %i.an = load ptr, ptr @VCG, align 8, !tbaa !23
  %i.ao = load ptr, ptr @HCG, align 8, !tbaa !25
  %i.ap = load ptr, ptr @netsAssign, align 8, !tbaa !20
  %i.aq = load i64, ptr @channelNets, align 8, !tbaa !14 ; 2 uses
  %.not63.i = icmp eq i64 %i.aq, 0
  br i1 %.not63.i, label %Select.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.lr.ph57
  %i.ar = load ptr, ptr @costMatrix, align 8, !tbaa !18
  %i.as = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph74.i.preheader, label %.lr.ph66.split.i

.lr.ph74.i.preheader:                             ; preds = %.preheader.i, %.lr.ph66.i
  %.ph = phi i64 [ 0, %.lr.ph66.i ], [ %i.bd, %.preheader.i ]
  br label %.lr.ph74.i

.preheader.i:                                     ; preds = %._crit_edge.i42
  %i.au = icmp eq i64 %.pr, 0
  br i1 %i.au, label %Select.exit, label %.lr.ph74.i.preheader

.lr.ph66.split.i:                                 ; preds = %.lr.ph66.i, %._crit_edge.i42
  %i.av = phi i64 [ %i.bd, %._crit_edge.i42 ], [ %i.as, %.lr.ph66.i ]
  %i.aw = phi i64 [ %.pr, %._crit_edge.i42 ], [ %i.aq, %.lr.ph66.i ]
  %i.ax = phi i64 [ %i.be, %._crit_edge.i42 ], [ 1, %.lr.ph66.i ]
  %.04264.i = phi i64 [ %i.bf, %._crit_edge.i42 ], [ 1, %.lr.ph66.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.04264.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  %.not5761.i = icmp eq i64 %i.ax, 0
  br i1 %.not5761.i, label %._crit_edge.i42, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph66.split.i, %.lr.ph.i41
  %.04162.i = phi i64 [ %i.bb, %.lr.ph.i41 ], [ 1, %.lr.ph66.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.04162.i
  store i64 0, ptr %i.ba, align 8, !tbaa !14
  %i.bb = add i64 %.04162.i, 1                    ; 2 uses
  %i.bc = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 3 uses
  %.not57.i = icmp ugt i64 %i.bb, %i.bc
  br i1 %.not57.i, label %._crit_edge.loopexit.i, label %.lr.ph.i41, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i41
  %.pre.i = load i64, ptr @channelNets, align 8, !tbaa !14
  br label %._crit_edge.i42

._crit_edge.i42:                                  ; preds = %._crit_edge.loopexit.i, %.lr.ph66.split.i
  %i.bd = phi i64 [ %i.bc, %._crit_edge.loopexit.i ], [ %i.av, %.lr.ph66.split.i ] ; 2 uses
  %.pr = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.aw, %.lr.ph66.split.i ] ; 3 uses
  %i.be = phi i64 [ %i.bc, %._crit_edge.loopexit.i ], [ 0, %.lr.ph66.split.i ]
  %i.bf = add i64 %.04264.i, 1                    ; 2 uses
  %.not.i = icmp ugt i64 %i.bf, %.pr
  br i1 %.not.i, label %.preheader.i, label %.lr.ph66.split.i, !llvm.loop !2

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %.loopexit.i
  %i.bg = phi i64 [ %.fr.i, %.loopexit.i ], [ %.ph, %.lr.ph74.i.preheader ]
  %.14373.i = phi i64 [ %i.cv, %.loopexit.i ], [ 1, %.lr.ph74.i.preheader ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.14373.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  %.not51.i = icmp eq i64 %i.bi, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph74.i
  %i.bj = load ptr, ptr @costMatrix, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.14373.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20 ; 3 uses
  tail call void @LongestPathVCG(ptr noundef %i.an, i64 noundef %.14373.i) #11
  %i.bm = load ptr, ptr @tracksNoHCV, align 8, !tbaa !20
  tail call void @NoHCV(ptr noundef %i.ao, i64 noundef %.14373.i, ptr noundef %i.ap, ptr noundef %i.bm) #11
  %i.bn = load i64, ptr @cardTopNotPref, align 8, !tbaa !14 ; 3 uses
  %i.bo = load i64, ptr @cardBotNotPref, align 8, !tbaa !14 ; 3 uses
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 0
  %.pre77.i = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 3 uses
  br i1 %.not.i.i, label %IdealTrack.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = sub i64 %.pre77.i, %i.bo
  %i.br = mul i64 %i.bq, %i.bn
  %i.bs = add i64 %i.bn, 1
  %i.bt = mul i64 %i.bo, %i.bs
  %i.bu = add i64 %i.br, %i.bt
  %i.bv = udiv i64 %i.bu, %i.bp
  br label %IdealTrack.exit.i

IdealTrack.exit.i:                                ; preds = %bb.n, %bb.m
  %storemerge.i.i = phi i64 [ %i.bv, %bb.n ], [ 1, %bb.m ]
  %.not5267.i = icmp eq i64 %.pre77.i, 0
  br i1 %.not5267.i, label %.loopexit.i, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %IdealTrack.exit.i
  %i.bw = load ptr, ptr @tracksNoHCV, align 8, !tbaa !20
  %i.bx = load ptr, ptr @tracksNotPref, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph71.i
  %i.by = phi i64 [ %.pre77.i, %.lr.ph71.i ], [ %i.ct, %bb.w ] ; 3 uses
  %.168.i = phi i64 [ 1, %.lr.ph71.i ], [ %i.cs, %bb.w ] ; 9 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.168.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !14
  %.not53.i = icmp eq i64 %i.ca, 0
  br i1 %.not53.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load i64, ptr @cardNotPref, align 8, !tbaa !14 ; 2 uses
  %.not54.i = icmp eq i64 %i.cb, %i.by
  br i1 %.not54.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.168.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !14
  %.not56.i = icmp eq i64 %i.cd, 0
  br i1 %.not56.i, label %bb.u, label %.thread.i

bb.r:                                             ; preds = %bb.p
  %i.ce = load i64, ptr @cardBotNotPref, align 8, !tbaa !14
  %i.cf = sub i64 %i.by, %i.ce                    ; 2 uses
  %i.cg = icmp ugt i64 %.168.i, %i.cf
  br i1 %i.cg, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.ch = load i64, ptr @cardTopNotPref, align 8, !tbaa !14 ; 2 uses
  %.not55.i = icmp ugt i64 %.168.i, %i.ch
  br i1 %.not55.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = add i64 %i.cf, %i.by
  %i.cj = sub i64 %i.ci, %i.ch
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.sink95.i = phi i64 [ %i.cj, %bb.t ], [ %i.cb, %bb.q ]
  %i.ck = mul i64 %.sink95.i, 100                 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.168.i
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !14
  %i.cm = icmp slt i64 %i.ck, 1000000
  br i1 %i.cm, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.u, %bb.s, %bb.r, %bb.q
  %i.cn = phi i64 [ %i.ck, %bb.u ], [ 10000, %bb.q ], [ 10000, %bb.s ], [ 10000, %bb.r ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.168.i
  %i.cp = sub i64 %storemerge.i.i, %.168.i
  %spec.select.i43 = tail call i64 @llvm.abs.i64(i64 %i.cp, i1 true)
  %i.cq = add nsw i64 %i.cn, %spec.select.i43
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !14
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.168.i
  store i64 1000000, ptr %i.cr, align 8, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i, %bb.u
  %i.cs = add i64 %.168.i, 1                      ; 2 uses
  %i.ct = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 3 uses
  %.not52.i = icmp ugt i64 %i.cs, %i.ct
  br i1 %.not52.i, label %.loopexit.i, label %bb.o, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.w, %IdealTrack.exit.i, %.lr.ph74.i
  %i.cu = phi i64 [ %i.bg, %.lr.ph74.i ], [ 0, %IdealTrack.exit.i ], [ %i.ct, %bb.w ]
  %.fr.i = freeze i64 %i.cu                       ; 3 uses
  %i.cv = add i64 %.14373.i, 1                    ; 2 uses
  %i.cw = load i64, ptr @channelNets, align 8, !tbaa !14 ; 7 uses
  %.not50.i = icmp ugt i64 %i.cv, %i.cw
  br i1 %.not50.i, label %BuildCostMatrix.exit, label %.lr.ph74.i, !llvm.loop !4

BuildCostMatrix.exit:                             ; preds = %.loopexit.i
  %.not30.i = icmp eq i64 %i.cw, 0
  br i1 %.not30.i, label %Select.exit, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %BuildCostMatrix.exit
  %i.cx = load ptr, ptr @costMatrix, align 8
  %.not2527.i = icmp eq i64 %.fr.i, 0
  br i1 %.not2527.i, label %.lr.ph35.split.us.i.preheader, label %.lr.ph35.split.preheader.i

.lr.ph35.split.us.i.preheader:                    ; preds = %.lr.ph35.i
  %xtraiter = and i64 %i.cw, 1
  %i.cy = icmp eq i64 %i.cw, 1
  br i1 %i.cy, label %.lr.ph35.split.us.i.epil.preheader, label %.lr.ph35.split.us.i.preheader.new

.lr.ph35.split.us.i.preheader.new:                ; preds = %.lr.ph35.split.us.i.preheader
  %unroll_iter = and i64 %i.cw, -2
  br label %.lr.ph35.split.us.i

.lr.ph35.split.preheader.i:                       ; preds = %.lr.ph35.i
  %i.cz = add i64 %.fr.i, 1                       ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 2) ; 2 uses
  %i.da = add i64 %umax.i, -1                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 5
  %n.vec = and i64 %i.da, -4                      ; 3 uses
  %i.db = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br label %.lr.ph35.split.i

.lr.ph35.split.us.i:                              ; preds = %.lr.ph35.split.us.i, %.lr.ph35.split.us.i.preheader.new
  %.033.us.i = phi i64 [ -1, %.lr.ph35.split.us.i.preheader.new ], [ %.1.us.i.1, %.lr.ph35.split.us.i ] ; 2 uses
  %.02032.us.i = phi i64 [ 0, %.lr.ph35.split.us.i.preheader.new ], [ %.121.us.i.1, %.lr.ph35.split.us.i ]
  %.02331.us.i = phi i64 [ 1, %.lr.ph35.split.us.i.preheader.new ], [ %i.dl, %.lr.ph35.split.us.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph35.split.us.i.preheader.new ], [ %niter.next.1, %.lr.ph35.split.us.i ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.02331.us.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !14
  %.not24.us.i = icmp eq i64 %i.dd, 0             ; 2 uses
  %i.de = icmp sgt i64 %.033.us.i, -1
  %i.df = select i1 %.not24.us.i, i1 true, i1 %i.de
  %.121.us.i = select i1 %i.df, i64 %.02032.us.i, i64 %.02331.us.i
  %.1.us.i = select i1 %.not24.us.i, i64 %.033.us.i, i64 0 ; 2 uses
  %i.dg = add nuw i64 %.02331.us.i, 1             ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !14
  %.not24.us.i.1 = icmp eq i64 %i.di, 0           ; 2 uses
  %i.dj = icmp sgt i64 %.1.us.i, -1
  %i.dk = select i1 %.not24.us.i.1, i1 true, i1 %i.dj
  %.121.us.i.1 = select i1 %i.dk, i64 %.121.us.i, i64 %i.dg ; 3 uses
  %.1.us.i.1 = select i1 %.not24.us.i.1, i64 %.1.us.i, i64 0 ; 2 uses
  %i.dl = add nuw i64 %.02331.us.i, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Select.exit.loopexit.unr-lcssa, label %.lr.ph35.split.us.i, !llvm.loop !0

.lr.ph35.split.i:                                 ; preds = %bb.x, %.lr.ph35.split.preheader.i
  %.033.i = phi i64 [ %.1.i, %bb.x ], [ -1, %.lr.ph35.split.preheader.i ] ; 3 uses
  %.02032.i = phi i64 [ %.121.i, %bb.x ], [ 0, %.lr.ph35.split.preheader.i ] ; 2 uses
  %.02331.i = phi i64 [ %i.ec, %bb.x ], [ 1, %.lr.ph35.split.preheader.i ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.02331.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !14
  %.not24.i = icmp eq i64 %i.dn, 0
  br i1 %.not24.i, label %bb.x, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph35.split.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.02331.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dt, %vector.body ], [ zeroinitializer, %.lr.ph.i ]
  %vec.phi102 = phi <2 x i64> [ %i.du, %vector.body ], [ zeroinitializer, %.lr.ph.i ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %wide.load = load <2 x i64>, ptr %i.dr, align 8, !tbaa !14
  %wide.load103 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !14
  %i.dt = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.du = add <2 x i64> %wide.load103, %vec.phi102 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.du, %i.dt
  %i.dw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01929.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.dw, %middle.block ]
  %.02228.i.ph = phi i64 [ 1, %.lr.ph.i ], [ %i.db, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01929.i = phi i64 [ %i.dz, %scalar.ph ], [ %.01929.i.ph, %scalar.ph.preheader ]
  %.02228.i = phi i64 [ %i.ea, %scalar.ph ], [ %.02228.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.02228.i
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !14
  %i.dz = add nsw i64 %i.dy, %.01929.i            ; 2 uses
  %i.ea = add nuw i64 %.02228.i, 1                ; 2 uses
  %exitcond.i = icmp eq i64 %i.ea, %umax.i
  br i1 %exitcond.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !43

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa101 = phi i64 [ %i.dw, %middle.block ], [ %i.dz, %scalar.ph ] ; 2 uses
  %i.eb = icmp sgt i64 %.lcssa101, %.033.i
  %spec.select.i = select i1 %i.eb, i64 %.02331.i, i64 %.02032.i
  %spec.select26.i = tail call i64 @llvm.smax.i64(i64 %.lcssa101, i64 %.033.i)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %.lr.ph35.split.i
  %.121.i = phi i64 [ %.02032.i, %.lr.ph35.split.i ], [ %spec.select.i, %._crit_edge.i ] ; 2 uses
  %.1.i = phi i64 [ %.033.i, %.lr.ph35.split.i ], [ %spec.select26.i, %._crit_edge.i ]
  %i.ec = add nuw i64 %.02331.i, 1
  %exitcond40.i = icmp eq i64 %.02331.i, %i.cw
  br i1 %exitcond40.i, label %Select.exit, label %.lr.ph35.split.i, !llvm.loop !0

Select.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph35.split.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Select.exit, label %.lr.ph35.split.us.i.epil.preheader

.lr.ph35.split.us.i.epil.preheader:               ; preds = %Select.exit.loopexit.unr-lcssa, %.lr.ph35.split.us.i.preheader
  %.033.us.i.epil.init = phi i64 [ -1, %.lr.ph35.split.us.i.preheader ], [ %.1.us.i.1, %Select.exit.loopexit.unr-lcssa ]
  %.02032.us.i.epil.init = phi i64 [ 0, %.lr.ph35.split.us.i.preheader ], [ %.121.us.i.1, %Select.exit.loopexit.unr-lcssa ]
  %.02331.us.i.epil.init = phi i64 [ 1, %.lr.ph35.split.us.i.preheader ], [ %i.dl, %Select.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod113 = trunc i64 %i.cw to i1
  tail call void @llvm.assume(i1 %lcmp.mod113)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.02331.us.i.epil.init
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !14
  %.not24.us.i.epil = icmp eq i64 %i.ee, 0
  %i.ef = icmp sgt i64 %.033.us.i.epil.init, -1
  %i.eg = select i1 %.not24.us.i.epil, i1 true, i1 %i.ef
  %.121.us.i.epil = select i1 %i.eg, i64 %.02032.us.i.epil.init, i64 %.02331.us.i.epil.init
  br label %Select.exit

Select.exit:                                      ; preds = %bb.x, %.lr.ph35.split.us.i.epil.preheader, %Select.exit.loopexit.unr-lcssa, %.preheader.i, %.lr.ph57, %BuildCostMatrix.exit
  %.020.lcssa.i = phi i64 [ 0, %BuildCostMatrix.exit ], [ 0, %.lr.ph57 ], [ %.121.us.i.epil, %.lr.ph35.split.us.i.epil.preheader ], [ 0, %.preheader.i ], [ %.121.us.i.1, %Select.exit.loopexit.unr-lcssa ], [ %.121.i, %bb.x ] ; 2 uses
  %i.eh = load ptr, ptr @VCG, align 8, !tbaa !23
  %i.ei = load ptr, ptr @netsAssign, align 8, !tbaa !20
  tail call void @Assign(ptr noundef %i.eh, ptr noundef %i.ei, i64 noundef %.020.lcssa.i)
  %i.ej = load ptr, ptr @CROSSING, align 8, !tbaa !20 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.020.lcssa.i
  store i64 0, ptr %i.ek, align 8, !tbaa !14
  %i.el = add i64 %.355, -1                       ; 2 uses
  %.not40 = icmp eq i64 %i.el, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph57, !llvm.loop !44

.loopexit:                                        ; preds = %Select.exit, %bb.l, %bb.k
  %.4 = phi i64 [ %.2, %bb.k ], [ 0, %bb.l ], [ 0, %Select.exit ]
  %.030 = add i64 %.03061, 1                      ; 2 uses
  %i.em = load i64, ptr @channelColumns, align 8, !tbaa !14
  %.not35 = icmp ugt i64 %.030, %i.em
  br i1 %.not35, label %._crit_edge64, label %.lr.ph63, !llvm.loop !45

._crit_edge64:                                    ; preds = %.loopexit, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Select(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  tail call void @BuildCostMatrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4)
  %i.a = load i64, ptr @channelNets, align 8, !tbaa !14 ; 3 uses
end_hunk_1
begin_hunk_2_@Assign:bb.a
  br label %.thread91

.thread91:                                        ; preds = %._crit_edge, %._crit_edge105, %bb.r, %bb.s, %._crit_edge110
  %i.br = phi i64 [ %i.z, %._crit_edge ], [ %i.ap, %._crit_edge105 ], [ %i.bh, %bb.r ], [ %.pre123, %bb.s ], [ %i.bd, %._crit_edge110 ]
  %.not79112 = icmp eq i64 %i.br, 0
  br i1 %.not79112, label %._crit_edge118, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.thread91
  %.pre125 = load ptr, ptr @tracksAssign, align 8, !tbaa !20
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.x
  %i.bs = phi ptr [ %i.cc, %bb.x ], [ %.pre125, %.lr.ph117.preheader ] ; 2 uses
  %.0116 = phi i64 [ %.1, %bb.x ], [ 1000000, %.lr.ph117.preheader ] ; 5 uses
  %.057115 = phi i64 [ %.158, %bb.x ], [ undef, %.lr.ph117.preheader ] ; 4 uses
  %.059114 = phi i64 [ %.160, %bb.x ], [ 0, %.lr.ph117.preheader ] ; 3 uses
  %.467113 = phi i64 [ %i.cd, %bb.x ], [ 1, %.lr.ph117.preheader ] ; 7 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.467113
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !14
  %.not80 = icmp eq i64 %i.bu, 0
  br i1 %.not80, label %bb.x, label %bb.t

bb.t:                                             ; preds = %.lr.ph117
  %i.bv = load ptr, ptr @netsAssign, align 8, !tbaa !20
  %i.bw = tail call i64 @VCV(ptr noundef %0, i64 noundef %2, i64 noundef %.467113, ptr noundef %i.bv) #11 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %.0116
  %.pre124 = load ptr, ptr @tracksAssign, align 8, !tbaa !20 ; 3 uses
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.by = sub i64 %.467113, %storemerge.i
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.by, i1 true)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bz = icmp eq i64 %i.bw, %.0116
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ca = sub i64 %.467113, %storemerge.i
  %spec.select88 = tail call i64 @llvm.abs.i64(i64 %i.ca, i1 true) ; 2 uses
  %i.cb = icmp slt i64 %spec.select88, %.057115
  %spec.select151 = select i1 %i.cb, i64 %.467113, i64 %.059114
  %spec.select152 = tail call i64 @llvm.smin.i64(i64 %spec.select88, i64 %.057115)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %.lr.ph117, %bb.v
  %i.cc = phi ptr [ %i.bs, %.lr.ph117 ], [ %.pre124, %bb.u ], [ %.pre124, %bb.v ], [ %.pre124, %bb.w ]
  %.160 = phi i64 [ %.059114, %.lr.ph117 ], [ %.467113, %bb.u ], [ %.059114, %bb.v ], [ %spec.select151, %bb.w ] ; 2 uses
  %.158 = phi i64 [ %.057115, %.lr.ph117 ], [ %spec.select, %bb.u ], [ %.057115, %bb.v ], [ %spec.select152, %bb.w ]
  %.1 = phi i64 [ %.0116, %.lr.ph117 ], [ %i.bw, %bb.u ], [ %.0116, %bb.v ], [ %.0116, %bb.w ]
  %i.cd = add i64 %.467113, 1                     ; 2 uses
  %i.ce = load i64, ptr @channelTracks, align 8, !tbaa !14
  %.not79 = icmp ugt i64 %i.cd, %i.ce
  br i1 %.not79, label %._crit_edge118, label %.lr.ph117, !llvm.loop !52

._crit_edge118:                                   ; preds = %bb.x, %.thread91
  %.059.lcssa = phi i64 [ 0, %.thread91 ], [ %.160, %bb.x ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store i64 %.059.lcssa, ptr %i.cf, align 8, !tbaa !14
  ret void
}

declare void @LongestPathVCG(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @NoHCV(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @IdealTrack(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = add i64 %2, %1                           ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 %0, %2
  %i.c = mul i64 %i.b, %1
  %i.d = add i64 %1, 1
  %i.e = mul i64 %2, %i.d
  %i.f = add i64 %i.c, %i.e
  %i.g = udiv i64 %i.f, %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.g, %bb.b ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !14
  ret void
}

declare i64 @VCV(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BuildCostMatrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr @channelNets, align 8, !tbaa !14 ; 2 uses
  %.not63 = icmp eq i64 %i.a, 0
  br i1 %.not63, label %._crit_edge75, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.b = load ptr, ptr @costMatrix, align 8, !tbaa !18
  %i.c = load i64, ptr @channelTracks, align 8, !tbaa !14
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.lr.ph74.preheader, label %.lr.ph66.split

.preheader:                                       ; preds = %._crit_edge
  %i.e = icmp eq i64 %i.m, 0
  br i1 %i.e, label %._crit_edge75, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %.lr.ph66, %.preheader
  br label %.lr.ph74

.lr.ph66.split:                                   ; preds = %.lr.ph66, %._crit_edge
  %i.f = phi i64 [ %i.m, %._crit_edge ], [ %i.a, %.lr.ph66 ]
  %i.g = phi i64 [ %i.n, %._crit_edge ], [ 1, %.lr.ph66 ]
  %.04264 = phi i64 [ %i.o, %._crit_edge ], [ 1, %.lr.ph66 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.04264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %.not5761 = icmp eq i64 %i.g, 0
  br i1 %.not5761, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph66.split, %.lr.ph
  %.04162 = phi i64 [ %i.k, %.lr.ph ], [ 1, %.lr.ph66.split ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.04162
  store i64 0, ptr %i.j, align 8, !tbaa !14
  %i.k = add i64 %.04162, 1                       ; 2 uses
  %i.l = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 2 uses
  %.not57 = icmp ugt i64 %i.k, %i.l
  br i1 %.not57, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr @channelNets, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph66.split
  %i.m = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %.lr.ph66.split ] ; 3 uses
  %i.n = phi i64 [ %i.l, %._crit_edge.loopexit ], [ 0, %.lr.ph66.split ]
  %i.o = add i64 %.04264, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.m
  br i1 %.not, label %.preheader, label %.lr.ph66.split, !llvm.loop !2

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %.loopexit
  %.14373 = phi i64 [ %i.bc, %.loopexit ], [ 1, %.lr.ph74.preheader ] ; 5 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.14373
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %.not51 = icmp eq i64 %i.q, 0
  br i1 %.not51, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph74
  %i.r = load ptr, ptr @costMatrix, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.14373
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 3 uses
  tail call void @LongestPathVCG(ptr noundef %0, i64 noundef %.14373) #11
  %i.u = load ptr, ptr @tracksNoHCV, align 8, !tbaa !20
  tail call void @NoHCV(ptr noundef %1, i64 noundef %.14373, ptr noundef %2, ptr noundef %i.u) #11
  %i.v = load i64, ptr @cardTopNotPref, align 8, !tbaa !14 ; 3 uses
  %i.w = load i64, ptr @cardBotNotPref, align 8, !tbaa !14 ; 3 uses
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  %.pre77 = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 3 uses
  br i1 %.not.i, label %IdealTrack.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = sub i64 %.pre77, %i.w
  %i.z = mul i64 %i.y, %i.v
  %i.aa = add i64 %i.v, 1
  %i.ab = mul i64 %i.w, %i.aa
  %i.ac = add i64 %i.z, %i.ab
  %i.ad = udiv i64 %i.ac, %i.x
  br label %IdealTrack.exit

IdealTrack.exit:                                  ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ %i.ad, %bb.c ], [ 1, %bb.b ]
  %.not5267 = icmp eq i64 %.pre77, 0
  br i1 %.not5267, label %.loopexit, label %.lr.ph71

.lr.ph71:                                         ; preds = %IdealTrack.exit
  %i.ae = load ptr, ptr @tracksNoHCV, align 8, !tbaa !20
  %i.af = load ptr, ptr @tracksNotPref, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph71, %bb.l
  %i.ag = phi i64 [ %.pre77, %.lr.ph71 ], [ %i.bb, %bb.l ] ; 3 uses
  %.168 = phi i64 [ 1, %.lr.ph71 ], [ %i.ba, %bb.l ] ; 9 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.168
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14
  %.not53 = icmp eq i64 %i.ai, 0
  br i1 %.not53, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr @cardNotPref, align 8, !tbaa !14 ; 2 uses
  %.not54 = icmp eq i64 %i.aj, %i.ag
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.168
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %.not56 = icmp eq i64 %i.al, 0
  br i1 %.not56, label %bb.j, label %.thread

bb.g:                                             ; preds = %bb.e
  %i.am = load i64, ptr @cardBotNotPref, align 8, !tbaa !14
  %i.an = sub i64 %i.ag, %i.am                    ; 2 uses
  %i.ao = icmp ugt i64 %.168, %i.an
  br i1 %i.ao, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr @cardTopNotPref, align 8, !tbaa !14 ; 2 uses
  %.not55 = icmp ugt i64 %.168, %i.ap
  br i1 %.not55, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add i64 %i.an, %i.ag
  %i.ar = sub i64 %i.aq, %i.ap
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.sink95 = phi i64 [ %i.ar, %bb.i ], [ %i.aj, %bb.f ]
  %i.as = mul i64 %.sink95, 100                   ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.168
  store i64 %i.as, ptr %i.at, align 8, !tbaa !14
  %i.au = icmp slt i64 %i.as, 1000000
  br i1 %i.au, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.g, %bb.h, %bb.f, %bb.j
  %i.av = phi i64 [ %i.as, %bb.j ], [ 10000, %bb.f ], [ 10000, %bb.h ], [ 10000, %bb.g ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.168
  %i.ax = sub i64 %storemerge.i, %.168
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.ax, i1 true)
  %i.ay = add nsw i64 %i.av, %spec.select
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !14
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.168
  store i64 1000000, ptr %i.az, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread, %bb.j
  %i.ba = add i64 %.168, 1                        ; 2 uses
  %i.bb = load i64, ptr @channelTracks, align 8, !tbaa !14 ; 2 uses
  %.not52 = icmp ugt i64 %i.ba, %i.bb
  br i1 %.not52, label %.loopexit, label %bb.d, !llvm.loop !3

.loopexit:                                        ; preds = %bb.l, %IdealTrack.exit, %.lr.ph74
  %i.bc = add i64 %.14373, 1                      ; 2 uses
  %i.bd = load i64, ptr @channelNets, align 8, !tbaa !14
  %.not50 = icmp ugt i64 %i.bc, %i.bd
  br i1 %.not50, label %._crit_edge75, label %.lr.ph74, !llvm.loop !4

._crit_edge75:                                    ; preds = %.loopexit, %bb.a, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{!2, !21, !28}
!3 = distinct !{!3, !21}
!4 = distinct !{!4, !21}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"any p2 pointer", !15, i64 0}
!17 = !{!"p2 long", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 long", !15, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"p1 _ZTS12_nodeVCGType", !15, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS12_nodeHCGType", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unswitch.partial.disable"}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21, !26, !27}
!34 = distinct !{!34, !21, !27, !26}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21, !26, !27}
!38 = distinct !{!38, !21, !27, !26}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21, !26, !27}
!43 = distinct !{!43, !21, !27, !26}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21, !26, !27}
!47 = distinct !{!47, !21, !27, !26}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
end_hunk_2
