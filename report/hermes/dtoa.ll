Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/dtoa?download=true
inline.NumInlined: 101
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hermes_g_strtod:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 88, i1 false)
  store i32 288, ptr %3, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0446.i = phi ptr [ %0, %bb.a ], [ %i.l, %bb.c ] ; 4 uses
  %i.i = load i8, ptr %.0446.i, align 1, !tbaa !19 ; 2 uses
  switch i8 %i.i, label %.loopexit751.i [
    i8 45, label %.loopexit752.i.loopexit
    i8 43, label %.loopexit752.i
    i8 0, label %.loopexit750.i
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

.loopexit752.i.loopexit:                          ; preds = %bb.b
  br label %.loopexit752.i

.loopexit752.i:                                   ; preds = %bb.b, %.loopexit752.i.loopexit
  %.0458.i = phi i32 [ 1, %.loopexit752.i.loopexit ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0446.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19    ; 2 uses
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %.loopexit750.i, label %.loopexit751.i

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0446.i, i64 1
  br label %bb.b

.loopexit751.i:                                   ; preds = %bb.b, %.loopexit752.i
  %i.m = phi i8 [ %i.k, %.loopexit752.i ], [ %i.i, %bb.b ] ; 2 uses
  %.1459.i = phi i32 [ %.0458.i, %.loopexit752.i ], [ 0, %bb.b ] ; 10 uses
  %.1447.i = phi ptr [ %i.j, %.loopexit752.i ], [ %.0446.i, %bb.b ] ; 2 uses
  %i.n = icmp eq i8 %i.m, 48                      ; 3 uses
  br i1 %i.n, label %.preheader748.i, label %.loopexit749.i

.preheader748.i:                                  ; preds = %.loopexit751.i, %.preheader748.i
  %.2448.i = phi ptr [ %i.o, %.preheader748.i ], [ %.1447.i, %.loopexit751.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.2448.i, i64 1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  switch i8 %i.p, label %.loopexit749.i [
    i8 48, label %.preheader748.i
    i8 0, label %.loopexit750.i
  ]

.loopexit749.i:                                   ; preds = %.preheader748.i, %.loopexit751.i
  %i.q = phi i8 [ %i.m, %.loopexit751.i ], [ %i.p, %.preheader748.i ] ; 3 uses
  %.3449.i = phi ptr [ %.1447.i, %.loopexit751.i ], [ %i.o, %.preheader748.i ] ; 10 uses
  %i.r = sext i8 %i.q to i32                      ; 2 uses
  %i.s = add i8 %i.q, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph.i, label %.critedge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit749.i, %bb.g
  %i.u = phi i32 [ %i.ag, %bb.g ], [ %i.r, %.loopexit749.i ] ; 2 uses
  %.0420877.i = phi i32 [ %.1421.i, %bb.g ], [ 0, %.loopexit749.i ] ; 3 uses
  %.0426876.i = phi i32 [ %.1427.i, %bb.g ], [ 0, %.loopexit749.i ] ; 3 uses
  %.4450875.i = phi ptr [ %i.ae, %bb.g ], [ %.3449.i, %.loopexit749.i ] ; 2 uses
  %.0479874.i = phi i32 [ %i.ad, %bb.g ], [ 0, %.loopexit749.i ] ; 3 uses
  %i.v = icmp samesign ult i32 %.0479874.i, 9
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = mul i32 %.0426876.i, 10
  %i.x = add nsw i32 %i.u, -48
  %i.y = add i32 %i.x, %i.w
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = icmp samesign ult i32 %.0479874.i, 17
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = mul i32 %.0420877.i, 10
  %i.ab = add nsw i32 %i.u, -48
  %i.ac = add i32 %i.ab, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1427.i = phi i32 [ %i.y, %bb.d ], [ %.0426876.i, %bb.f ], [ %.0426876.i, %bb.e ] ; 3 uses
  %.1421.i = phi i32 [ %.0420877.i, %bb.d ], [ %i.ac, %bb.f ], [ %.0420877.i, %bb.e ] ; 3 uses
  %i.ad = add nuw nsw i32 %.0479874.i, 1          ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.4450875.i, i64 1 ; 5 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19  ; 3 uses
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = add i8 %i.af, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ak = ptrtoint ptr %.3449.i to i64            ; 3 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32                  ; 4 uses
  %i.an = trunc i64 %i.aj to i32
  %i.ao = trunc i64 %i.ak to i32
  %i.ap = sub i32 %i.an, %i.ao
  br label %.lr.ph886.i

.lr.ph886.i:                                      ; preds = %bb.h, %._crit_edge.i
  %.0442884.i = phi ptr [ %i.aq, %bb.h ], [ %i.ae, %._crit_edge.i ]
  %.0461883.i = phi i32 [ %i.at, %bb.h ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.0442884.i, i64 -1 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19
  %i.as = icmp eq i8 %i.ar, 48
  br i1 %i.as, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph886.i
  %i.at = add nuw nsw i32 %.0461883.i, 1
  %i.au = icmp ugt ptr %i.aq, %.3449.i
  br i1 %i.au, label %.lr.ph886.i, label %.critedge.i, !llvm.loop !31

.critedge.i:                                      ; preds = %bb.h, %.lr.ph886.i
  %.0461.lcssa.i.ph = phi i32 [ %i.ap, %bb.h ], [ %.0461883.i, %.lr.ph886.i ] ; 2 uses
  %i.av = icmp eq i8 %i.af, 46
  br i1 %i.av, label %bb.i, label %bb.q

.critedge.thread.i:                               ; preds = %.loopexit749.i
  %i.aw = ptrtoint ptr %.3449.i to i64
  %i.ax = icmp eq i8 %i.q, 46
  br i1 %i.ax, label %.preheader747.i, label %bb.q

bb.i:                                             ; preds = %.critedge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.4450875.i, i64 2 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.ak
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = sub nsw i32 %i.bb, %i.am
  br label %bb.j

.preheader747.i:                                  ; preds = %.critedge.thread.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.3449.i, i64 1 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19  ; 2 uses
  %i.bf = icmp eq i8 %i.be, 48
  br i1 %i.bf, label %.lr.ph892.i, label %._crit_edge893.i

.lr.ph892.i:                                      ; preds = %.preheader747.i, %.lr.ph892.i
  %.5451891.i = phi ptr [ %i.bh, %.lr.ph892.i ], [ %i.bd, %.preheader747.i ]
  %.0467890.i = phi i32 [ %i.bg, %.lr.ph892.i ], [ 0, %.preheader747.i ]
  %i.bg = add nuw nsw i32 %.0467890.i, 1          ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.5451891.i, i64 1 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 48
  br i1 %i.bj, label %.lr.ph892.i, label %._crit_edge893.i, !llvm.loop !32

._crit_edge893.i:                                 ; preds = %.lr.ph892.i, %.preheader747.i
  %.0506.lcssa.in.i = phi i8 [ %i.be, %.preheader747.i ], [ %i.bi, %.lr.ph892.i ]
  %.0467.lcssa.i = phi i32 [ 0, %.preheader747.i ], [ %i.bg, %.lr.ph892.i ] ; 2 uses
  %.5451.lcssa.i = phi ptr [ %i.bd, %.preheader747.i ], [ %i.bh, %.lr.ph892.i ] ; 4 uses
  %.0506.lcssa.i = sext i8 %.0506.lcssa.in.i to i32 ; 3 uses
  %i.bk = add nsw i32 %.0506.lcssa.i, -49
  %or.cond.i = icmp ult i32 %i.bk, 9
  br i1 %or.cond.i, label %._crit_edge904.i.thread, label %bb.q

bb.j:                                             ; preds = %bb.p, %bb.i
  %i.bl = phi i32 [ %i.cz, %bb.p ], [ %i.bc, %bb.i ] ; 5 uses
  %.0479.lcssa117011871198.i = phi i32 [ %.0479.lcssa117011871197.i17, %bb.p ], [ %i.ad, %bb.i ] ; 5 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i19, %bb.p ], [ %i.bb, %bb.i ] ; 5 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i21, %bb.p ], [ %i.am, %bb.i ] ; 5 uses
  %.1480.i = phi i32 [ %.4483.i, %bb.p ], [ %i.ad, %bb.i ] ; 6 uses
  %.0472.i = phi i32 [ %.2474.i, %bb.p ], [ 0, %bb.i ] ; 3 uses
  %.1468.i = phi i32 [ %.3470.i, %bb.p ], [ 0, %bb.i ] ; 8 uses
  %.1462.i = phi i32 [ %.3464.i, %bb.p ], [ %.0461.lcssa.i.ph, %bb.i ] ; 2 uses
  %.6452.i = phi ptr [ %i.da, %bb.p ], [ %i.ay, %bb.i ] ; 6 uses
  %.0443.i = phi ptr [ %.1444.i28, %bb.p ], [ %.3449.i, %bb.i ] ; 5 uses
  %.2428.i = phi i32 [ %.7433.i, %bb.p ], [ %.1427.i, %bb.i ] ; 5 uses
  %.2422.i = phi i32 [ %.7.i, %bb.p ], [ %.1421.i, %bb.i ] ; 5 uses
  %.1507.in.i = load i8, ptr %.6452.i, align 1, !tbaa !19
  %.1507.i = sext i8 %.1507.in.i to i32           ; 2 uses
  %i.bm = add nsw i32 %.1507.i, -48               ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bo = add i32 %.1468.i, 1                     ; 2 uses
  %.not595.i = icmp eq i32 %i.bm, 0
  br i1 %.not595.i, label %bb.p, label %bb.l

._crit_edge904.i.thread:                          ; preds = %._crit_edge893.i
  %i.bp = ptrtoint ptr %.5451.lcssa.i to i64
  %i.bq = sub i64 %i.aw, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = add nsw i32 %i.br, 1
  %i.bt = add nsw i32 %.0506.lcssa.i, -48
  %i.bu = add nsw i32 %.0467.lcssa.i, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = add nsw i32 %i.bo, %.0472.i             ; 3 uses
  %4 = icmp sgt i32 %.1468.i, 0
  br i1 %4, label %.lr.ph903.i.preheader, label %._crit_edge904.i

.lr.ph903.i.preheader:                            ; preds = %bb.l
  %xtraiter660 = and i32 %.1468.i, 1
  %i.bw = icmp eq i32 %.1468.i, 1
  br i1 %i.bw, label %.lr.ph903.i.epil.preheader, label %.lr.ph903.i.preheader.new

.lr.ph903.i.preheader.new:                        ; preds = %.lr.ph903.i.preheader
  %unroll_iter666 = and i32 %.1468.i, 2147483646
  br label %.lr.ph903.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i, %.lr.ph903.i.preheader.new
  %.4424901.i = phi i32 [ %.2422.i, %.lr.ph903.i.preheader.new ], [ %.5425.i.1, %.lr.ph903.i ] ; 2 uses
  %.4430900.i = phi i32 [ %.2428.i, %.lr.ph903.i.preheader.new ], [ %.5431.i.1, %.lr.ph903.i ] ; 2 uses
  %.3482899.i = phi i32 [ %.1480.i, %.lr.ph903.i.preheader.new ], [ %i.cc, %.lr.ph903.i ] ; 5 uses
  %niter667 = phi i32 [ 0, %.lr.ph903.i.preheader.new ], [ %niter667.next.1, %.lr.ph903.i ]
  %i.bx = icmp slt i32 %.3482899.i, 9
  %i.by = mul i32 %.4430900.i, 10
  %i.bz = mul i32 %.4424901.i, 10
  %.5431.i = select i1 %i.bx, i32 %i.by, i32 %.4430900.i ; 2 uses
  %i.ca = add i32 %.3482899.i, -17
  %i.cb = icmp ult i32 %i.ca, -8
  %.5425.i = select i1 %i.cb, i32 %.4424901.i, i32 %i.bz ; 2 uses
  %i.cc = add nsw i32 %.3482899.i, 2              ; 2 uses
  %i.cd = icmp slt i32 %.3482899.i, 8
  %i.ce = mul i32 %.5431.i, 10
  %i.cf = mul i32 %.5425.i, 10
  %.5431.i.1 = select i1 %i.cd, i32 %i.ce, i32 %.5431.i ; 3 uses
  %i.cg = add i32 %.3482899.i, -16
  %i.ch = icmp ult i32 %i.cg, -8
  %.5425.i.1 = select i1 %i.ch, i32 %.5425.i, i32 %i.cf ; 3 uses
  %niter667.next.1 = add nuw nsw i32 %niter667, 2 ; 2 uses
  %niter667.ncmp.1 = icmp eq i32 %niter667.next.1, %unroll_iter666
  br i1 %niter667.ncmp.1, label %._crit_edge904.loopexit.i.unr-lcssa, label %.lr.ph903.i, !llvm.loop !33

._crit_edge904.loopexit.i.unr-lcssa:              ; preds = %.lr.ph903.i
  %lcmp.mod662.not = icmp eq i32 %xtraiter660, 0
  br i1 %lcmp.mod662.not, label %._crit_edge904.loopexit.i, label %.lr.ph903.i.epil.preheader

.lr.ph903.i.epil.preheader:                       ; preds = %._crit_edge904.loopexit.i.unr-lcssa, %.lr.ph903.i.preheader
  %.4424901.i.epil.init = phi i32 [ %.2422.i, %.lr.ph903.i.preheader ], [ %.5425.i.1, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %.4430900.i.epil.init = phi i32 [ %.2428.i, %.lr.ph903.i.preheader ], [ %.5431.i.1, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %.3482899.i.epil.init = phi i32 [ %.1480.i, %.lr.ph903.i.preheader ], [ %i.cc, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod665 = trunc i32 %.1468.i to i1
  call void @llvm.assume(i1 %lcmp.mod665)
  %i.ci = icmp slt i32 %.3482899.i.epil.init, 9
  %i.cj = mul i32 %.4430900.i.epil.init, 10
  %i.ck = mul i32 %.4424901.i.epil.init, 10
  %.5431.i.epil = select i1 %i.ci, i32 %i.cj, i32 %.4430900.i.epil.init
  %i.cl = add i32 %.3482899.i.epil.init, -17
  %i.cm = icmp ult i32 %i.cl, -8
  %.5425.i.epil = select i1 %i.cm, i32 %.4424901.i.epil.init, i32 %i.ck
  br label %._crit_edge904.loopexit.i

._crit_edge904.loopexit.i:                        ; preds = %._crit_edge904.loopexit.i.unr-lcssa, %.lr.ph903.i.epil.preheader
  %.5431.i.lcssa = phi i32 [ %.5431.i.1, %._crit_edge904.loopexit.i.unr-lcssa ], [ %.5431.i.epil, %.lr.ph903.i.epil.preheader ]
  %.5425.i.lcssa = phi i32 [ %.5425.i.1, %._crit_edge904.loopexit.i.unr-lcssa ], [ %.5425.i.epil, %.lr.ph903.i.epil.preheader ]
  %i.cn = add i32 %.1468.i, %.1480.i
  br label %._crit_edge904.i

._crit_edge904.i:                                 ; preds = %._crit_edge904.loopexit.i, %bb.l
  %.3482.lcssa.i = phi i32 [ %.1480.i, %bb.l ], [ %i.cn, %._crit_edge904.loopexit.i ] ; 3 uses
  %.4430.lcssa.i = phi i32 [ %.2428.i, %bb.l ], [ %.5431.i.lcssa, %._crit_edge904.loopexit.i ] ; 3 uses
  %.4424.lcssa.i = phi i32 [ %.2422.i, %bb.l ], [ %.5425.i.lcssa, %._crit_edge904.loopexit.i ] ; 3 uses
  %i.co = add nsw i32 %.3482.lcssa.i, 1           ; 3 uses
  %i.cp = icmp slt i32 %.3482.lcssa.i, 9
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge904.i.thread, %._crit_edge904.i
  %i.cq = phi i32 [ 1, %._crit_edge904.i.thread ], [ %i.co, %._crit_edge904.i ]
  %.4424.lcssa.i62 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.4424.lcssa.i, %._crit_edge904.i ]
  %.4430.lcssa.i61 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.4430.lcssa.i, %._crit_edge904.i ]
  %i.cr = phi i32 [ %i.bt, %._crit_edge904.i.thread ], [ %i.bm, %._crit_edge904.i ]
  %.1444.i274360 = phi ptr [ %.5451.lcssa.i, %._crit_edge904.i.thread ], [ %.0443.i, %._crit_edge904.i ]
  %.7453.i254459 = phi ptr [ %.5451.lcssa.i, %._crit_edge904.i.thread ], [ %.6452.i, %._crit_edge904.i ]
  %.sroa.0.1.i204558 = phi i32 [ %i.br, %._crit_edge904.i.thread ], [ %.sroa.0.0.i, %._crit_edge904.i ]
  %.sroa.6.1.i184657 = phi i32 [ %i.bs, %._crit_edge904.i.thread ], [ %.sroa.6.0.i, %._crit_edge904.i ]
  %.0479.lcssa117011871197.i164756 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.0479.lcssa117011871198.i, %._crit_edge904.i ]
  %i.cs = phi i32 [ 1, %._crit_edge904.i.thread ], [ %i.bl, %._crit_edge904.i ]
  %i.ct = phi i32 [ %i.bu, %._crit_edge904.i.thread ], [ %i.bv, %._crit_edge904.i ]
  %i.cu = mul i32 %.4430.lcssa.i61, 10
  %i.cv = add i32 %i.cu, %i.cr
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge904.i
  %i.cw = icmp samesign ult i32 %.3482.lcssa.i, 17
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cx = mul i32 %.4424.lcssa.i, 10
  %i.cy = add i32 %i.cx, %i.bm
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.1444.i28 = phi ptr [ %.0443.i, %bb.k ], [ %.0443.i, %bb.n ], [ %.0443.i, %bb.o ], [ %.1444.i274360, %bb.m ]
  %.7453.i26 = phi ptr [ %.6452.i, %bb.k ], [ %.6452.i, %bb.n ], [ %.6452.i, %bb.o ], [ %.7453.i254459, %bb.m ]
  %.sroa.0.1.i21 = phi i32 [ %.sroa.0.0.i, %bb.k ], [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0.0.i, %bb.o ], [ %.sroa.0.1.i204558, %bb.m ]
  %.sroa.6.1.i19 = phi i32 [ %.sroa.6.0.i, %bb.k ], [ %.sroa.6.0.i, %bb.n ], [ %.sroa.6.0.i, %bb.o ], [ %.sroa.6.1.i184657, %bb.m ]
  %.0479.lcssa117011871197.i17 = phi i32 [ %.0479.lcssa117011871198.i, %bb.k ], [ %.0479.lcssa117011871198.i, %bb.n ], [ %.0479.lcssa117011871198.i, %bb.o ], [ %.0479.lcssa117011871197.i164756, %bb.m ]
  %i.cz = phi i32 [ %i.bl, %bb.k ], [ %i.bl, %bb.n ], [ %i.bl, %bb.o ], [ %i.cs, %bb.m ]
  %.4483.i = phi i32 [ %.1480.i, %bb.k ], [ %i.co, %bb.n ], [ %i.co, %bb.o ], [ %i.cq, %bb.m ]
  %.2474.i = phi i32 [ %.0472.i, %bb.k ], [ %i.bv, %bb.n ], [ %i.bv, %bb.o ], [ %i.ct, %bb.m ]
  %.3470.i = phi i32 [ %i.bo, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.3464.i = phi i32 [ %.1462.i, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.7433.i = phi i32 [ %.2428.i, %bb.k ], [ %.4430.lcssa.i, %bb.n ], [ %.4430.lcssa.i, %bb.o ], [ %i.cv, %bb.m ]
  %.7.i = phi i32 [ %.2422.i, %bb.k ], [ %.4424.lcssa.i, %bb.n ], [ %i.cy, %bb.o ], [ %.4424.lcssa.i62, %bb.m ]
  %i.da = getelementptr inbounds nuw i8, ptr %.7453.i26, i64 1
  br label %bb.j, !llvm.loop !34

bb.q:                                             ; preds = %bb.j, %._crit_edge893.i, %.critedge.thread.i, %.critedge.i
  %.0479.lcssa11701186.i = phi i32 [ %.0479.lcssa117011871198.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.sroa.12.0.i = phi i32 [ %i.bl, %bb.j ], [ 1, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.6.2.i = phi i32 [ %.sroa.6.0.i, %bb.j ], [ 1, %._crit_edge893.i ], [ %i.am, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.0.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %i.am, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.3509.i = phi i32 [ %.1507.i, %bb.j ], [ %.0506.lcssa.i, %._crit_edge893.i ], [ %i.ag, %.critedge.i ], [ %i.r, %.critedge.thread.i ]
  %.5484.i = phi i32 [ %.1480.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 14 uses
  %.3475.i = phi i32 [ %.0472.i, %bb.j ], [ 0, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.4471.i = phi i32 [ %.1468.i, %bb.j ], [ %.0467.lcssa.i, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.4465.i = phi i32 [ %.1462.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.0461.lcssa.i.ph, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.8454.i = phi ptr [ %.6452.i, %bb.j ], [ %.5451.lcssa.i, %._crit_edge893.i ], [ %i.ae, %.critedge.i ], [ %.3449.i, %.critedge.thread.i ] ; 7 uses
  %.2445.i = phi ptr [ %.0443.i, %bb.j ], [ %.3449.i, %._crit_edge893.i ], [ %.3449.i, %.critedge.i ], [ %.3449.i, %.critedge.thread.i ] ; 15 uses
  %.8434.i = phi i32 [ %.2428.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.1427.i, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 5 uses
  %.8.i = phi i32 [ %.2422.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.1421.i, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %i.db = and i32 %.3509.i, -33
  %or.cond3.i = icmp eq i32 %i.db, 69
  br i1 %or.cond3.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.dc = icmp ne i32 %.5484.i, 0
  %i.dd = icmp ne i32 %.4471.i, 0
  %or.cond5.i = select i1 %i.dc, i1 true, i1 %i.dd
  %or.cond7.i = or i1 %i.n, %or.cond5.i
  br i1 %or.cond7.i, label %bb.s, label %.loopexit750.i

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %.8454.i, i64 1 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.df, label %bb.v [
    i8 45, label %bb.t
    i8 43, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dg = phi i1 [ false, %bb.t ], [ true, %bb.s ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.8454.i, i64 2 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.4510.in.i = phi i8 [ %i.df, %bb.s ], [ %i.di, %bb.u ] ; 3 uses
  %.1500.i = phi i1 [ true, %bb.s ], [ %i.dg, %bb.u ]
  %.9455.i = phi ptr [ %i.de, %bb.s ], [ %i.dh, %bb.u ] ; 2 uses
  %i.dj = add i8 %.4510.in.i, -48
  %or.cond9.i = icmp ult i8 %i.dj, 10
  br i1 %or.cond9.i, label %.preheader746.i, label %bb.x

.preheader746.i:                                  ; preds = %bb.v
  %i.dk = icmp eq i8 %.4510.in.i, 48
  br i1 %i.dk, label %.lr.ph909.i, label %._crit_edge910.i

.lr.ph909.i:                                      ; preds = %.preheader746.i, %.lr.ph909.i
  %.10456908.i = phi ptr [ %i.dl, %.lr.ph909.i ], [ %.9455.i, %.preheader746.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.10456908.i, i64 1 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !19  ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 48
  br i1 %i.dn, label %.lr.ph909.i, label %._crit_edge910.i, !llvm.loop !35

._crit_edge910.i:                                 ; preds = %.lr.ph909.i, %.preheader746.i
  %.5511.in.lcssa.i = phi i8 [ %.4510.in.i, %.preheader746.i ], [ %i.dm, %.lr.ph909.i ] ; 2 uses
  %.10456.lcssa.i = phi ptr [ %.9455.i, %.preheader746.i ], [ %i.dl, %.lr.ph909.i ] ; 3 uses
  %i.do = add i8 %.5511.in.lcssa.i, -49
  %or.cond11.i = icmp ult i8 %i.do, 9
  br i1 %or.cond11.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge910.i
  %narrow.i = add nsw i8 %.5511.in.lcssa.i, -48
  %i.dp = zext nneg i8 %narrow.i to i32           ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.10456.lcssa.i, i64 1 ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19  ; 2 uses
  %i.ds = add i8 %i.dr, -48
  %i.dt = icmp ult i8 %i.ds, 10
  br i1 %i.dt, label %.lr.ph915.i, label %._crit_edge916.i

.lr.ph915.i:                                      ; preds = %bb.w, %.lr.ph915.i
  %i.du = phi i8 [ %i.eb, %.lr.ph915.i ], [ %i.dr, %bb.w ]
  %i.dv = phi ptr [ %i.ea, %.lr.ph915.i ], [ %i.dq, %bb.w ]
  %.0435913.i = phi i32 [ %i.dz, %.lr.ph915.i ], [ %i.dp, %bb.w ]
  %i.dw = zext nneg i8 %i.du to i32
  %i.dx = mul i32 %.0435913.i, 10
  %i.dy = add nsw i32 %i.dw, -48
  %i.dz = add i32 %i.dy, %i.dx                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !19  ; 2 uses
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  br i1 %i.ed, label %.lr.ph915.i, label %._crit_edge916.loopexit.i, !llvm.loop !36

._crit_edge916.loopexit.i:                        ; preds = %.lr.ph915.i
end_hunk_0
begin_hunk_1_@hermes_g_strtod:bb.a
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !15
  store ptr %i.hq, ptr %.1.i, align 8, !tbaa !17
  store ptr %.1.i, ptr %i.hp, align 8, !tbaa !15
  br label %Bfree.exit622.i

Bfree.exit622.i:                                  ; preds = %bb.bd, %bb.bc, %Bfree.exit620.i.a, %bb.ao
  %i.hr = tail call ptr @__errno_location() #18
  store i32 34, ptr %i.hr, align 4, !tbaa !7
  br label %.loopexit750.i

bb.be:                                            ; preds = %bb.an
  %i.hs = icmp samesign ugt i32 %i.fy, 31
  br i1 %i.hs, label %.lr.ph927.preheader.i, label %._crit_edge928.i

.lr.ph927.preheader.i:                            ; preds = %bb.be
  %i.ht = lshr i32 %i.fy, 4
  br label %.lr.ph927.i

.lr.ph927.i:                                      ; preds = %bb.bg, %.lr.ph927.preheader.i
  %indvars.iv1060.i.a = phi i64 [ 0, %.lr.ph927.preheader.i ], [ %indvars.iv.next1061.i, %bb.bg ] ; 2 uses
  %.0501924.i = phi i32 [ %i.ht, %.lr.ph927.preheader.i ], [ %i.ia, %bb.bg ] ; 3 uses
  %i.hu = phi double [ %.promoted922.i, %.lr.ph927.preheader.i ], [ %i.hz, %bb.bg ] ; 2 uses
  %i.hv = and i32 %.0501924.i, 1
  %.not591.i = icmp eq i32 %i.hv, 0
  br i1 %.not591.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph927.i
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1060.i.a
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !21
  %i.hy = fmul double %i.hu, %i.hx
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph927.i
  %i.hz = phi double [ %i.hu, %.lr.ph927.i ], [ %i.hy, %bb.bf ] ; 2 uses
  %indvars.iv.next1061.i = add nuw nsw i64 %indvars.iv1060.i.a, 1 ; 2 uses
  %i.ia = lshr i32 %.0501924.i, 1
  %i.ib = icmp samesign ugt i32 %.0501924.i, 3
  br i1 %i.ib, label %.lr.ph927.i, label %._crit_edge928.i, !llvm.loop !37

._crit_edge928.i:                                 ; preds = %bb.bg, %bb.be
  %.lcssa923.i = phi double [ %.promoted922.i, %bb.be ], [ %i.hz, %bb.bg ] ; 2 uses
  %.0486.lcssa.i = phi i64 [ 0, %bb.be ], [ %indvars.iv.next1061.i, %bb.bg ]
  store double %.lcssa923.i, ptr %2, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.id = bitcast double %.lcssa923.i to i64
  %i.ie = lshr i64 %i.id, 32
  %i.if = trunc nuw i64 %i.ie to i32
  %i.ig = add i32 %i.if, -55574528
  store i32 %i.ig, ptr %i.ic, align 4, !tbaa !19
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %.0486.lcssa.i
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !21
  %i.ij = load double, ptr %2, align 8, !tbaa !19
  %i.ik = fmul double %i.ii, %i.ij                ; 2 uses
  store double %i.ik, ptr %2, align 8, !tbaa !19
  %i.il = bitcast double %i.ik to i64
  %i.im = lshr i64 %i.il, 32
  %i.in = trunc nuw i64 %i.im to i32              ; 2 uses
  %i.io = and i32 %i.in, 2146435072               ; 2 uses
  %i.ip = icmp samesign ugt i32 %i.io, 2090860544
  br i1 %i.ip, label %.loopexit.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge928.i
  %i.iq = icmp samesign ugt i32 %i.io, 2089811968
  br i1 %i.iq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 2146435071, ptr %i.ic, align 4, !tbaa !19
  store i32 -1, ptr %2, align 8, !tbaa !19
  br label %bb.cb

bb.bj:                                            ; preds = %bb.bh
  %i.ir = add i32 %i.in, 55574528
  store i32 %i.ir, ptr %i.ic, align 4, !tbaa !19
  br label %bb.cb

bb.bk:                                            ; preds = %bb.aj
  %i.is = icmp slt i32 %i.fy, 0
  br i1 %i.is, label %bb.bl, label %bb.cb

bb.bl:                                            ; preds = %bb.bk
  %i.it = sub nsw i32 0, %i.fy                    ; 4 uses
  %i.iu = and i32 %i.it, 15                       ; 2 uses
  %.not560.i = icmp eq i32 %i.iu, 0
  br i1 %.not560.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.iv
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !21
  %i.iy = fdiv double %i.fw, %i.ix                ; 2 uses
  store double %i.iy, ptr %2, align 8, !tbaa !19
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.promoted.i = phi double [ %i.iy, %bb.bm ], [ %i.fw, %bb.bl ]
  %i.iz = lshr i32 %i.it, 4                       ; 2 uses
  %.not561.i = icmp eq i32 %i.iz, 0
  br i1 %.not561.i, label %bb.cb, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ja = icmp samesign ugt i32 %i.it, 511
  br i1 %i.ja, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bo, %bb.bq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bq ], [ 0, %bb.bo ] ; 2 uses
  %.1502920.i = phi i32 [ %i.jh, %bb.bq ], [ %i.iz, %bb.bo ] ; 2 uses
  %i.jb = phi double [ %i.jg, %bb.bq ], [ %.promoted.i, %bb.bo ] ; 2 uses
  %i.jc = and i32 %.1502920.i, 1
  %.not565.i = icmp eq i32 %i.jc, 0
  br i1 %.not565.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.preheader
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv.i
  %i.je = load double, ptr %i.jd, align 8, !tbaa !21
  %i.jf = fmul double %i.jb, %i.je
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.preheader
  %i.jg = phi double [ %i.jb, %.preheader ], [ %i.jf, %bb.bp ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.jh = lshr i32 %.1502920.i, 1                 ; 2 uses
  %.not563.i = icmp eq i32 %i.jh, 0
  br i1 %.not563.i, label %bb.br, label %.preheader, !llvm.loop !38

bb.br:                                            ; preds = %bb.bq
  %.not562.i = icmp samesign ult i32 %i.it, 256   ; 2 uses
  %spec.select731.i = select i1 %.not562.i, i32 0, i32 106
  store double %i.jg, ptr %2, align 8
  %i.ji = bitcast double %i.jg to i64             ; 2 uses
  %i.jj = lshr i64 %i.ji, 32
  %i.jk = trunc nuw i64 %i.jj to i32              ; 2 uses
  %i.jl = trunc i64 %i.ji to i32
  br i1 %.not562.i, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.jn = lshr i32 %i.jk, 20
  %i.jo = and i32 %i.jn, 2047                     ; 6 uses
  %i.jp = sub nuw nsw i32 107, %i.jo
  %i.jq = icmp samesign ult i32 %i.jo, 107
  br i1 %i.jq, label %bb.bt, label %thread-pre-split.i

bb.bt:                                            ; preds = %bb.bs
  %i.jr = icmp samesign ult i32 %i.jo, 76
  br i1 %i.jr, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.js = icmp samesign ult i32 %i.jo, 53
  br i1 %i.js, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %2, align 8, !tbaa !19
  %i.jt = icmp samesign ult i32 %i.jo, 55
  br i1 %i.jt, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 57671680, ptr %i.jm, align 4, !tbaa !19
  br label %thread-pre-split.i

bb.bx:                                            ; preds = %bb.bv
  %i.ju = sub nuw nsw i32 75, %i.jo
  %i.jv = shl nsw i32 -1, %i.ju
  %i.jw = and i32 %i.jv, %i.jk
  store i32 %i.jw, ptr %i.jm, align 4, !tbaa !19
  br label %thread-pre-split.i

bb.by:                                            ; preds = %bb.bt
  %i.jx = shl nsw i32 -1, %i.jp
  %i.jy = and i32 %i.jx, %i.jl
  store i32 %i.jy, ptr %2, align 8, !tbaa !19
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bs
  %.pr.i = load double, ptr %2, align 8, !tbaa !19
  br label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split.i, %bb.br
  %i.jz = phi double [ %.pr.i, %thread-pre-split.i ], [ %i.jg, %bb.br ]
  %i.ka = fcmp une double %i.jz, 0.000000e+00
  br i1 %i.ka, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.iw, %bb.fd, %sulp.exit653.i, %.loopexit, %bb.bz, %bb.bu, %bb.bo
  %.2417.i = phi ptr [ %.4419.i, %bb.iw ], [ %.4419.i, %.loopexit ], [ undef, %bb.bz ], [ %.4419.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4419.i, %sulp.exit653.i ]
  %.2412.i = phi ptr [ %.4414.i, %bb.iw ], [ %.4414.i, %.loopexit ], [ undef, %bb.bz ], [ %.4414.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4414.i, %sulp.exit653.i ]
  %.2409.i = phi ptr [ null, %bb.iw ], [ %.231.lcssa.i.i, %.loopexit ], [ null, %bb.bz ], [ %.231.lcssa.i.i, %bb.fd ], [ null, %bb.bo ], [ null, %bb.bu ], [ %.231.lcssa.i.i, %sulp.exit653.i ]
  %.2404.i = phi ptr [ %.4406.i, %bb.iw ], [ %.4406.i, %.loopexit ], [ undef, %bb.bz ], [ %.4406.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4406.i, %sulp.exit653.i ]
  %.2.i = phi ptr [ %.5.i, %bb.iw ], [ %i.tj, %.loopexit ], [ undef, %bb.bz ], [ %i.tj, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %i.tj, %sulp.exit653.i ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.ao

bb.cb:                                            ; preds = %bb.bz, %bb.bn, %bb.bk, %bb.bj, %bb.bi, %bb.am
  %.sroa.44710.1.i = phi i32 [ 0, %bb.am ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bn ], [ %spec.select731.i, %bb.bz ], [ 0, %bb.bk ] ; 5 uses
  %i.kb = sub nsw i32 %.5484.i, %.4465.i          ; 6 uses
  %i.kc = icmp sgt i32 %.5484.i, 40
  br i1 %i.kc, label %bb.cc, label %.loopexit744.i

bb.cc:                                            ; preds = %bb.cb
  %i.kd = icmp slt i32 %spec.select597.i.a, 18
  %i.ke = add nsw i32 %.sroa.12.0.i, 18
  %.2488.i = select i1 %i.kd, i32 %i.ke, i32 18
  %5 = add nsw i32 %.sroa.0.2.i, -1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.1494.i = phi i32 [ 18, %bb.cc ], [ %i.ki, %bb.cd ] ; 12 uses
  %.3489.i = phi i32 [ %.2488.i, %bb.cc ], [ %.4490.i, %bb.cd ]
  %6 = add nsw i32 %.3489.i, -1                   ; 3 uses
  %7 = icmp slt i32 %6, %.sroa.6.2.i
  %spec.select596.i = call i32 @llvm.smin.i32(i32 %6, i32 %5)
  %.4490.i = select i1 %7, i32 %spec.select596.i, i32 %6 ; 2 uses
  %i.kf = sext i32 %.4490.i to i64
  %i.kg = getelementptr inbounds i8, ptr %.2445.i, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !19
  %.not570.i.a = icmp eq i8 %i.kh, 48
  %i.ki = add nsw i32 %.1494.i, -1
  br i1 %.not570.i.a, label %bb.cd, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kj = sub nsw i32 %.5484.i, %.1494.i
  %i.kk = add nsw i32 %i.kj, %i.el                ; 4 uses
  %spec.select599.i = call i32 @llvm.smin.i32(i32 %spec.select597.i.a, i32 %.1494.i) ; 9 uses
  %i.kl = icmp slt i32 %.1494.i, 9
  br i1 %i.kl, label %.preheader745.i, label %.loopexit744.i

.preheader745.i:                                  ; preds = %bb.ce
  %i.km = icmp sgt i32 %spec.select599.i, 0
  br i1 %i.km, label %.lr.ph933.preheader.i, label %.preheader.i

.lr.ph933.preheader.i:                            ; preds = %.preheader745.i
  %wide.trip.count.i = zext nneg i32 %spec.select599.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.kn = icmp ult i32 %spec.select599.i, 4
  br i1 %i.kn, label %.lr.ph933.i.epil.preheader, label %.lr.ph933.preheader.i.new

.lr.ph933.preheader.i.new:                        ; preds = %.lr.ph933.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph933.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph933.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph933.i.epil.preheader

.lr.ph933.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph933.preheader.i
  %indvars.iv1063.i.epil.init = phi i64 [ 0, %.lr.ph933.preheader.i ], [ %indvars.iv.next1064.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.9932.i.epil.init = phi i32 [ 0, %.lr.ph933.preheader.i ], [ %i.mg, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod657 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod657)
  br label %.lr.ph933.i.epil

.lr.ph933.i.epil:                                 ; preds = %.lr.ph933.i.epil, %.lr.ph933.i.epil.preheader
  %indvars.iv1063.i.epil = phi i64 [ %indvars.iv1063.i.epil.init, %.lr.ph933.i.epil.preheader ], [ %indvars.iv.next1064.i.epil, %.lr.ph933.i.epil ] ; 2 uses
  %.9932.i.epil = phi i32 [ %.9932.i.epil.init, %.lr.ph933.i.epil.preheader ], [ %i.kt, %.lr.ph933.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph933.i.epil.preheader ], [ %epil.iter.next, %.lr.ph933.i.epil ]
  %i.ko = mul i32 %.9932.i.epil, 10
  %i.kp = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i.epil
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !19
  %i.kr = sext i8 %i.kq to i32
  %i.ks = add i32 %i.ko, -48
  %i.kt = add i32 %i.ks, %i.kr                    ; 2 uses
  %indvars.iv.next1064.i.epil = add nuw nsw i64 %indvars.iv1063.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph933.i.epil, !llvm.loop !39

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph933.i.epil, %.preheader745.i
  %.2495.lcssa.i = phi i32 [ 0, %.preheader745.i ], [ %spec.select599.i, %.lr.ph933.i.epil ], [ %spec.select599.i, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa.i = phi i32 [ 0, %.preheader745.i ], [ %i.mg, %.preheader.i.loopexit.unr-lcssa ], [ %i.kt, %.lr.ph933.i.epil ] ; 3 uses
  %i.ku = icmp slt i32 %.2495.lcssa.i, %.1494.i
  br i1 %i.ku, label %.lr.ph939.preheader.i, label %._crit_edge.thread.i.i.thread

.lr.ph939.preheader.i:                            ; preds = %.preheader.i
  %i.kv = sext i32 %.sroa.6.2.i to i64            ; 2 uses
  %i.kw = sub i32 %.1494.i, %.2495.lcssa.i
  %xtraiter658 = and i32 %i.kw, 3                 ; 2 uses
  %lcmp.mod659.not = icmp eq i32 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %.lr.ph939.i.prol.loopexit, label %.lr.ph939.i.prol

.lr.ph939.i.prol:                                 ; preds = %.lr.ph939.preheader.i, %.lr.ph939.i.prol
  %indvars.iv1068.i.prol = phi i64 [ %indvars.iv.next1069.i.prol, %.lr.ph939.i.prol ], [ %i.kv, %.lr.ph939.preheader.i ] ; 2 uses
  %.10938.i.prol = phi i32 [ %i.lc, %.lr.ph939.i.prol ], [ %.9.lcssa.i, %.lr.ph939.preheader.i ]
  %.3496936.i.prol = phi i32 [ %i.ld, %.lr.ph939.i.prol ], [ %.2495.lcssa.i, %.lr.ph939.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph939.i.prol ], [ 0, %.lr.ph939.preheader.i ]
  %i.kx = mul i32 %.10938.i.prol, 10
  %indvars.iv.next1069.i.prol = add nsw i64 %indvars.iv1068.i.prol, 1 ; 2 uses
  %i.ky = getelementptr inbounds i8, ptr %.2445.i, i64 %indvars.iv1068.i.prol
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !19
  %i.la = sext i8 %i.kz to i32
  %i.lb = add i32 %i.kx, -48
  %i.lc = add i32 %i.lb, %i.la                    ; 3 uses
  %i.ld = add nuw nsw i32 %.3496936.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter658
  br i1 %prol.iter.cmp.not, label %.lr.ph939.i.prol.loopexit, label %.lr.ph939.i.prol, !llvm.loop !40

.lr.ph939.i.prol.loopexit:                        ; preds = %.lr.ph939.i.prol, %.lr.ph939.preheader.i
  %.lcssa627.unr = phi i32 [ poison, %.lr.ph939.preheader.i ], [ %i.lc, %.lr.ph939.i.prol ]
  %indvars.iv1068.i.unr = phi i64 [ %i.kv, %.lr.ph939.preheader.i ], [ %indvars.iv.next1069.i.prol, %.lr.ph939.i.prol ]
  %.10938.i.unr = phi i32 [ %.9.lcssa.i, %.lr.ph939.preheader.i ], [ %i.lc, %.lr.ph939.i.prol ]
  %.3496936.i.unr = phi i32 [ %.2495.lcssa.i, %.lr.ph939.preheader.i ], [ %i.ld, %.lr.ph939.i.prol ]
  %i.le = sub i32 %.2495.lcssa.i, %.1494.i
  %i.lf = icmp ugt i32 %i.le, -4
  br i1 %i.lf, label %._crit_edge.thread.i.i.thread, label %.lr.ph939.i

.lr.ph933.i:                                      ; preds = %.lr.ph933.i, %.lr.ph933.preheader.i.new
  %indvars.iv1063.i = phi i64 [ 0, %.lr.ph933.preheader.i.new ], [ %indvars.iv.next1064.i.3, %.lr.ph933.i ] ; 5 uses
  %.9932.i = phi i32 [ 0, %.lr.ph933.preheader.i.new ], [ %i.mg, %.lr.ph933.i ]
  %niter = phi i64 [ 0, %.lr.ph933.preheader.i.new ], [ %niter.next.3, %.lr.ph933.i ]
  %i.lg = mul i32 %.9932.i, 10
  %i.lh = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !19
  %i.lj = sext i8 %i.li to i32
  %i.lk = add i32 %i.lg, -48
  %i.ll = add i32 %i.lk, %i.lj
  %i.lm = mul i32 %i.ll, 10
  %i.ln = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !19
  %i.lq = sext i8 %i.lp to i32
  %i.lr = add i32 %i.lm, -48
  %i.ls = add i32 %i.lr, %i.lq
  %i.lt = mul i32 %i.ls, 10
  %i.lu = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !19
  %i.lx = sext i8 %i.lw to i32
  %i.ly = add i32 %i.lt, -48
  %i.lz = add i32 %i.ly, %i.lx
  %i.ma = mul i32 %i.lz, 10
  %i.mb = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 3
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !19
  %i.me = sext i8 %i.md to i32
  %i.mf = add i32 %i.ma, -48
  %i.mg = add i32 %i.mf, %i.me                    ; 3 uses
  %indvars.iv.next1064.i.3 = add nuw nsw i64 %indvars.iv1063.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph933.i, !llvm.loop !41

.lr.ph939.i:                                      ; preds = %.lr.ph939.i.prol.loopexit, %.lr.ph939.i
  %indvars.iv1068.i = phi i64 [ %indvars.iv.next1069.i.3, %.lr.ph939.i ], [ %indvars.iv1068.i.unr, %.lr.ph939.i.prol.loopexit ] ; 5 uses
  %.10938.i = phi i32 [ %i.nh, %.lr.ph939.i ], [ %.10938.i.unr, %.lr.ph939.i.prol.loopexit ]
  %.3496936.i = phi i32 [ %i.ni, %.lr.ph939.i ], [ %.3496936.i.unr, %.lr.ph939.i.prol.loopexit ]
  %i.mh = mul i32 %.10938.i, 10
  %i.mi = getelementptr inbounds i8, ptr %.2445.i, i64 %indvars.iv1068.i
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !19
  %i.mk = sext i8 %i.mj to i32
  %i.ml = add i32 %i.mh, -48
  %i.mm = add i32 %i.ml, %i.mk
  %i.mn = mul i32 %i.mm, 10
  %i.mo = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1068.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 1
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !19
  %i.mr = sext i8 %i.mq to i32
  %i.ms = add i32 %i.mn, -48
  %i.mt = add i32 %i.ms, %i.mr
  %i.mu = mul i32 %i.mt, 10
  %i.mv = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1068.i
  %i.mw = getelementptr i8, ptr %i.mv, i64 2
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !19
  %i.my = sext i8 %i.mx to i32
  %i.mz = add i32 %i.mu, -48
  %i.na = add i32 %i.mz, %i.my
  %i.nb = mul i32 %i.na, 10
  %indvars.iv.next1069.i.3 = add nsw i64 %indvars.iv1068.i, 4
  %i.nc = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1068.i
  %i.nd = getelementptr i8, ptr %i.nc, i64 3
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !19
  %i.nf = sext i8 %i.ne to i32
  %i.ng = add i32 %i.nb, -48
  %i.nh = add i32 %i.ng, %i.nf                    ; 2 uses
  %i.ni = add nuw nsw i32 %.3496936.i, 4          ; 2 uses
  %exitcond1072.not.i.3 = icmp eq i32 %i.ni, %.1494.i
  br i1 %exitcond1072.not.i.3, label %._crit_edge.thread.i.i.thread, label %.lr.ph939.i, !llvm.loop !42

.loopexit744.i:                                   ; preds = %bb.ce, %bb.cb
  %.2505.i = phi i32 [ %i.el, %bb.cb ], [ %i.kk, %bb.ce ] ; 4 uses
  %.6485.i = phi i32 [ %.5484.i, %bb.cb ], [ %.1494.i, %bb.ce ] ; 6 uses
  %.2478.i = phi i32 [ %spec.select597.i.a, %bb.cb ], [ %spec.select599.i, %bb.ce ] ; 4 uses
  %i.nj = add nuw nsw i32 %.6485.i, 8
  %i.nk = sdiv i32 %i.nj, 9
  %i.nl = icmp sgt i32 %.6485.i, 9
  br i1 %i.nl, label %.lr.ph.i.i, label %._crit_edge.thread.i.i.thread

.lr.ph.i.i:                                       ; preds = %.loopexit744.i, %.lr.ph.i.i
  %.040.i.i = phi i32 [ %i.nm, %.lr.ph.i.i ], [ 1, %.loopexit744.i ]
  %.02739.i.i = phi i32 [ %i.nn, %.lr.ph.i.i ], [ 0, %.loopexit744.i ] ; 3 uses
  %i.nm = shl i32 %.040.i.i, 1                    ; 2 uses
  %i.nn = add nuw nsw i32 %.02739.i.i, 1          ; 5 uses
  %i.no = icmp sgt i32 %i.nk, %i.nm
  br i1 %i.no, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !43

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.np = icmp samesign ult i32 %.02739.i.i, 7
  br i1 %i.np, label %._crit_edge.thread.i.i, label %bb.cg

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert284.a = zext nneg i32 %i.nn to i64
  %.phi.trans.insert285 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert284.a
  %.pre = load ptr, ptr %.phi.trans.insert285, align 8, !tbaa !15 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i.thread, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.thread.i.i
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nr = zext nneg i32 %i.nn to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = load ptr, ptr %.pre, align 8, !tbaa !17
  store ptr %i.nt, ptr %i.ns, align 8, !tbaa !15
end_hunk_1
