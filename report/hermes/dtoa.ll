inline.NumInlined: 101
inline.NumDeleted: 16
begin_hunk_0_@hermes_g_strtod:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0451.i = phi ptr [ %0, %bb.a ], [ %i.l, %bb.c ] ; 4 uses
  %i.i = load i8, ptr %.0451.i, align 1, !tbaa !19 ; 2 uses
  switch i8 %i.i, label %.loopexit752.i [
    i8 45, label %.loopexit753.i.loopexit
    i8 43, label %.loopexit753.i
    i8 0, label %.loopexit751.i
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

.loopexit753.i.loopexit:                          ; preds = %bb.b
  br label %.loopexit753.i

.loopexit753.i:                                   ; preds = %bb.b, %.loopexit753.i.loopexit
  %.0463.i = phi i32 [ 1, %.loopexit753.i.loopexit ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0451.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19    ; 2 uses
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %.loopexit751.i, label %.loopexit752.i

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0451.i, i64 1
  br label %bb.b

.loopexit752.i:                                   ; preds = %bb.b, %.loopexit753.i
  %i.m = phi i8 [ %i.k, %.loopexit753.i ], [ %i.i, %bb.b ] ; 2 uses
  %.1464.i = phi i32 [ %.0463.i, %.loopexit753.i ], [ 0, %bb.b ] ; 10 uses
  %.1452.i = phi ptr [ %i.j, %.loopexit753.i ], [ %.0451.i, %bb.b ] ; 2 uses
  %i.n = icmp eq i8 %i.m, 48                      ; 3 uses
  br i1 %i.n, label %.preheader749.i, label %.loopexit750.i

.preheader749.i:                                  ; preds = %.loopexit752.i, %.preheader749.i
  %.2453.i = phi ptr [ %i.o, %.preheader749.i ], [ %.1452.i, %.loopexit752.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.2453.i, i64 1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  switch i8 %i.p, label %.loopexit750.i [
    i8 48, label %.preheader749.i
    i8 0, label %.loopexit751.i
  ]

.loopexit750.i:                                   ; preds = %.preheader749.i, %.loopexit752.i
  %i.q = phi i8 [ %i.m, %.loopexit752.i ], [ %i.p, %.preheader749.i ] ; 3 uses
  %.3454.i = phi ptr [ %.1452.i, %.loopexit752.i ], [ %i.o, %.preheader749.i ] ; 10 uses
  %.34541055.i = ptrtoint ptr %.3454.i to i64     ; 4 uses
  %i.r = sext i8 %i.q to i32                      ; 2 uses
  %i.s = add i8 %i.q, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph.i, label %.critedge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit750.i, %bb.g
  %i.u = phi i32 [ %i.ag, %bb.g ], [ %i.r, %.loopexit750.i ] ; 2 uses
  %.0422878.i = phi i32 [ %.1423.i, %bb.g ], [ 0, %.loopexit750.i ] ; 3 uses
  %.0428877.i = phi i32 [ %.1429.i, %bb.g ], [ 0, %.loopexit750.i ] ; 3 uses
  %.4455876.i = phi ptr [ %i.ae, %bb.g ], [ %.3454.i, %.loopexit750.i ] ; 2 uses
  %.0484875.i = phi i32 [ %i.ad, %bb.g ], [ 0, %.loopexit750.i ] ; 3 uses
  %i.v = icmp samesign ult i32 %.0484875.i, 9
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = mul i32 %.0428877.i, 10
  %i.x = add nsw i32 %i.u, -48
  %i.y = add i32 %i.x, %i.w
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.z = icmp samesign ult i32 %.0484875.i, 17
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = mul i32 %.0422878.i, 10
  %i.ab = add nsw i32 %i.u, -48
  %i.ac = add i32 %i.ab, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1429.i = phi i32 [ %i.y, %bb.d ], [ %.0428877.i, %bb.f ], [ %.0428877.i, %bb.e ] ; 3 uses
  %.1423.i = phi i32 [ %.0422878.i, %bb.d ], [ %i.ac, %bb.f ], [ %.0422878.i, %bb.e ] ; 3 uses
  %i.ad = add nuw nsw i32 %.0484875.i, 1          ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.4455876.i, i64 1 ; 6 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19  ; 3 uses
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = add i8 %i.af, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.g
  %.pre1075.i = ptrtoint ptr %i.ae to i64         ; 2 uses
  %i.aj = sub i64 %.pre1075.i, %.34541055.i
  %i.ak = trunc i64 %i.aj to i32                  ; 4 uses
  %i.al = icmp ugt ptr %i.ae, %.3454.i
  br i1 %i.al, label %.lr.ph887.preheader.i, label %.critedge.i

.lr.ph887.preheader.i:                            ; preds = %._crit_edge.i
  %i.am = trunc i64 %.pre1075.i to i32
  %i.an = trunc i64 %.34541055.i to i32
  %i.ao = sub i32 %i.am, %i.an
  br label %.lr.ph887.i

.lr.ph887.i:                                      ; preds = %bb.h, %.lr.ph887.preheader.i
  %.0447885.i = phi ptr [ %i.ap, %bb.h ], [ %i.ae, %.lr.ph887.preheader.i ]
  %.0466884.i = phi i32 [ %i.as, %bb.h ], [ 0, %.lr.ph887.preheader.i ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.0447885.i, i64 -1 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = icmp eq i8 %i.aq, 48
  br i1 %i.ar, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.lr.ph887.i
  %i.as = add nuw nsw i32 %.0466884.i, 1
  %i.at = icmp ugt ptr %i.ap, %.3454.i
  br i1 %i.at, label %.lr.ph887.i, label %.critedge.i, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.h, %.lr.ph887.i, %._crit_edge.i
  %.0466.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ %i.ao, %bb.h ], [ %.0466884.i, %.lr.ph887.i ] ; 2 uses
  %i.au = icmp eq i8 %i.af, 46
  br i1 %i.au, label %bb.i, label %bb.q

.critedge.thread.i:                               ; preds = %.loopexit750.i
  %i.av = icmp eq i8 %i.q, 46
  br i1 %i.av, label %.preheader748.i, label %bb.q

bb.i:                                             ; preds = %.critedge.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.4455876.i, i64 2 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %.34541055.i
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = sub nsw i32 %i.az, %i.ak
  br label %bb.j

.preheader748.i:                                  ; preds = %.critedge.thread.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.3454.i, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 48
  br i1 %i.bd, label %.lr.ph893.i, label %._crit_edge894.i

.lr.ph893.i:                                      ; preds = %.preheader748.i, %.lr.ph893.i
  %.5456892.i = phi ptr [ %i.bf, %.lr.ph893.i ], [ %i.bb, %.preheader748.i ]
  %.0472891.i = phi i32 [ %i.be, %.lr.ph893.i ], [ 0, %.preheader748.i ]
  %i.be = add nuw nsw i32 %.0472891.i, 1          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.5456892.i, i64 1 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 48
  br i1 %i.bh, label %.lr.ph893.i, label %._crit_edge894.i, !llvm.loop !22

._crit_edge894.i:                                 ; preds = %.lr.ph893.i, %.preheader748.i
  %.0512.lcssa.in.i = phi i8 [ %i.bc, %.preheader748.i ], [ %i.bg, %.lr.ph893.i ]
  %.0472.lcssa.i = phi i32 [ 0, %.preheader748.i ], [ %i.be, %.lr.ph893.i ] ; 2 uses
  %.5456.lcssa.i = phi ptr [ %i.bb, %.preheader748.i ], [ %i.bf, %.lr.ph893.i ] ; 4 uses
  %.0512.lcssa.i = sext i8 %.0512.lcssa.in.i to i32 ; 3 uses
  %i.bi = add nsw i32 %.0512.lcssa.i, -49
  %or.cond.i = icmp ult i32 %i.bi, 9
  br i1 %or.cond.i, label %._crit_edge905.i.thread, label %bb.q

bb.j:                                             ; preds = %bb.p, %bb.i
  %i.bj = phi i32 [ %i.cx, %bb.p ], [ %i.ba, %bb.i ] ; 5 uses
  %.0484.lcssa116211791190.i = phi i32 [ %.0484.lcssa116211791189.i17, %bb.p ], [ %i.ad, %bb.i ] ; 5 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i19, %bb.p ], [ %i.az, %bb.i ] ; 5 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i21, %bb.p ], [ %i.ak, %bb.i ] ; 5 uses
  %.1485.i = phi i32 [ %.4488.i, %bb.p ], [ %i.ad, %bb.i ] ; 6 uses
  %.0477.i = phi i32 [ %.2479.i, %bb.p ], [ 0, %bb.i ] ; 3 uses
  %.1473.i = phi i32 [ %.3475.i, %bb.p ], [ 0, %bb.i ] ; 8 uses
  %.1467.i = phi i32 [ %.3469.i, %bb.p ], [ %.0466.lcssa.i, %bb.i ] ; 2 uses
  %.6457.i = phi ptr [ %i.cy, %bb.p ], [ %i.aw, %bb.i ] ; 6 uses
  %.0448.i = phi ptr [ %.1449.i28, %bb.p ], [ %.3454.i, %bb.i ] ; 5 uses
  %.2430.i = phi i32 [ %.7435.i, %bb.p ], [ %.1429.i, %bb.i ] ; 5 uses
  %.2424.i = phi i32 [ %.7.i, %bb.p ], [ %.1423.i, %bb.i ] ; 5 uses
  %.1513.in.i = load i8, ptr %.6457.i, align 1, !tbaa !19
  %.1513.i = sext i8 %.1513.in.i to i32           ; 2 uses
  %i.bk = add nsw i32 %.1513.i, -48               ; 4 uses
  %i.bl = icmp ult i32 %i.bk, 10
  br i1 %i.bl, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bm = add i32 %.1473.i, 1                     ; 2 uses
  %.not595.i = icmp eq i32 %i.bk, 0
  br i1 %.not595.i, label %bb.p, label %bb.l

._crit_edge905.i.thread:                          ; preds = %._crit_edge894.i
  %i.bn = ptrtoint ptr %.5456.lcssa.i to i64
  %i.bo = sub i64 %.34541055.i, %i.bn
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1
  %i.br = add nsw i32 %.0512.lcssa.i, -48
  %i.bs = add nsw i32 %.0472.lcssa.i, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = add nsw i32 %i.bm, %.0477.i             ; 3 uses
  %4 = icmp sgt i32 %.1473.i, 0
  br i1 %4, label %.lr.ph904.i.preheader, label %._crit_edge905.i

.lr.ph904.i.preheader:                            ; preds = %bb.l
  %xtraiter677 = and i32 %.1473.i, 1
  %i.bu = icmp eq i32 %.1473.i, 1
  br i1 %i.bu, label %.lr.ph904.i.epil.preheader, label %.lr.ph904.i.preheader.new

.lr.ph904.i.preheader.new:                        ; preds = %.lr.ph904.i.preheader
  %unroll_iter683 = and i32 %.1473.i, 2147483646
  br label %.lr.ph904.i

.lr.ph904.i:                                      ; preds = %.lr.ph904.i, %.lr.ph904.i.preheader.new
  %.4426902.i = phi i32 [ %.2424.i, %.lr.ph904.i.preheader.new ], [ %.5427.i.1, %.lr.ph904.i ] ; 2 uses
  %.4432901.i = phi i32 [ %.2430.i, %.lr.ph904.i.preheader.new ], [ %.5433.i.1, %.lr.ph904.i ] ; 2 uses
  %.3487900.i = phi i32 [ %.1485.i, %.lr.ph904.i.preheader.new ], [ %i.ca, %.lr.ph904.i ] ; 5 uses
  %niter684 = phi i32 [ 0, %.lr.ph904.i.preheader.new ], [ %niter684.next.1, %.lr.ph904.i ]
  %i.bv = icmp slt i32 %.3487900.i, 9
  %i.bw = mul i32 %.4432901.i, 10
  %i.bx = mul i32 %.4426902.i, 10
  %.5433.i = select i1 %i.bv, i32 %i.bw, i32 %.4432901.i ; 2 uses
  %i.by = add i32 %.3487900.i, -17
  %i.bz = icmp ult i32 %i.by, -8
  %.5427.i = select i1 %i.bz, i32 %.4426902.i, i32 %i.bx ; 2 uses
  %i.ca = add nsw i32 %.3487900.i, 2              ; 2 uses
  %i.cb = icmp slt i32 %.3487900.i, 8
  %i.cc = mul i32 %.5433.i, 10
  %i.cd = mul i32 %.5427.i, 10
  %.5433.i.1 = select i1 %i.cb, i32 %i.cc, i32 %.5433.i ; 3 uses
  %i.ce = add i32 %.3487900.i, -16
  %i.cf = icmp ult i32 %i.ce, -8
  %.5427.i.1 = select i1 %i.cf, i32 %.5427.i, i32 %i.cd ; 3 uses
  %niter684.next.1 = add i32 %niter684, 2         ; 2 uses
  %niter684.ncmp.1 = icmp eq i32 %niter684.next.1, %unroll_iter683
  br i1 %niter684.ncmp.1, label %._crit_edge905.loopexit.i.unr-lcssa, label %.lr.ph904.i, !llvm.loop !23

._crit_edge905.loopexit.i.unr-lcssa:              ; preds = %.lr.ph904.i
  %lcmp.mod679.not = icmp eq i32 %xtraiter677, 0
  br i1 %lcmp.mod679.not, label %._crit_edge905.loopexit.i, label %.lr.ph904.i.epil.preheader

.lr.ph904.i.epil.preheader:                       ; preds = %._crit_edge905.loopexit.i.unr-lcssa, %.lr.ph904.i.preheader
  %.4426902.i.epil.init = phi i32 [ %.2424.i, %.lr.ph904.i.preheader ], [ %.5427.i.1, %._crit_edge905.loopexit.i.unr-lcssa ] ; 2 uses
  %.4432901.i.epil.init = phi i32 [ %.2430.i, %.lr.ph904.i.preheader ], [ %.5433.i.1, %._crit_edge905.loopexit.i.unr-lcssa ] ; 2 uses
  %.3487900.i.epil.init = phi i32 [ %.1485.i, %.lr.ph904.i.preheader ], [ %i.ca, %._crit_edge905.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod682 = trunc i32 %.1473.i to i1
  call void @llvm.assume(i1 %lcmp.mod682)
  %i.cg = icmp slt i32 %.3487900.i.epil.init, 9
  %i.ch = mul i32 %.4432901.i.epil.init, 10
  %i.ci = mul i32 %.4426902.i.epil.init, 10
  %.5433.i.epil = select i1 %i.cg, i32 %i.ch, i32 %.4432901.i.epil.init
  %i.cj = add i32 %.3487900.i.epil.init, -17
  %i.ck = icmp ult i32 %i.cj, -8
  %.5427.i.epil = select i1 %i.ck, i32 %.4426902.i.epil.init, i32 %i.ci
  br label %._crit_edge905.loopexit.i

._crit_edge905.loopexit.i:                        ; preds = %._crit_edge905.loopexit.i.unr-lcssa, %.lr.ph904.i.epil.preheader
  %.5433.i.lcssa = phi i32 [ %.5433.i.1, %._crit_edge905.loopexit.i.unr-lcssa ], [ %.5433.i.epil, %.lr.ph904.i.epil.preheader ]
  %.5427.i.lcssa = phi i32 [ %.5427.i.1, %._crit_edge905.loopexit.i.unr-lcssa ], [ %.5427.i.epil, %.lr.ph904.i.epil.preheader ]
  %i.cl = add i32 %.1473.i, %.1485.i
  br label %._crit_edge905.i

._crit_edge905.i:                                 ; preds = %._crit_edge905.loopexit.i, %bb.l
  %.3487.lcssa.i = phi i32 [ %.1485.i, %bb.l ], [ %i.cl, %._crit_edge905.loopexit.i ] ; 3 uses
  %.4432.lcssa.i = phi i32 [ %.2430.i, %bb.l ], [ %.5433.i.lcssa, %._crit_edge905.loopexit.i ] ; 3 uses
  %.4426.lcssa.i = phi i32 [ %.2424.i, %bb.l ], [ %.5427.i.lcssa, %._crit_edge905.loopexit.i ] ; 3 uses
  %i.cm = add nsw i32 %.3487.lcssa.i, 1           ; 3 uses
  %i.cn = icmp slt i32 %.3487.lcssa.i, 9
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge905.i.thread, %._crit_edge905.i
  %i.co = phi i32 [ 1, %._crit_edge905.i.thread ], [ %i.cm, %._crit_edge905.i ]
  %.4426.lcssa.i62 = phi i32 [ 0, %._crit_edge905.i.thread ], [ %.4426.lcssa.i, %._crit_edge905.i ]
  %.4432.lcssa.i61 = phi i32 [ 0, %._crit_edge905.i.thread ], [ %.4432.lcssa.i, %._crit_edge905.i ]
  %i.cp = phi i32 [ %i.br, %._crit_edge905.i.thread ], [ %i.bk, %._crit_edge905.i ]
  %.1449.i274360 = phi ptr [ %.5456.lcssa.i, %._crit_edge905.i.thread ], [ %.0448.i, %._crit_edge905.i ]
  %.7458.i254459 = phi ptr [ %.5456.lcssa.i, %._crit_edge905.i.thread ], [ %.6457.i, %._crit_edge905.i ]
  %.sroa.0.1.i204558 = phi i32 [ %i.bp, %._crit_edge905.i.thread ], [ %.sroa.0.0.i, %._crit_edge905.i ]
  %.sroa.6.1.i184657 = phi i32 [ %i.bq, %._crit_edge905.i.thread ], [ %.sroa.6.0.i, %._crit_edge905.i ]
  %.0484.lcssa116211791189.i164756 = phi i32 [ 0, %._crit_edge905.i.thread ], [ %.0484.lcssa116211791190.i, %._crit_edge905.i ]
  %i.cq = phi i32 [ 1, %._crit_edge905.i.thread ], [ %i.bj, %._crit_edge905.i ]
  %i.cr = phi i32 [ %i.bs, %._crit_edge905.i.thread ], [ %i.bt, %._crit_edge905.i ]
  %i.cs = mul i32 %.4432.lcssa.i61, 10
  %i.ct = add i32 %i.cs, %i.cp
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge905.i
  %i.cu = icmp samesign ult i32 %.3487.lcssa.i, 17
  br i1 %i.cu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cv = mul i32 %.4426.lcssa.i, 10
  %i.cw = add i32 %i.cv, %i.bk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.1449.i28 = phi ptr [ %.0448.i, %bb.k ], [ %.0448.i, %bb.n ], [ %.0448.i, %bb.o ], [ %.1449.i274360, %bb.m ]
  %.7458.i26 = phi ptr [ %.6457.i, %bb.k ], [ %.6457.i, %bb.n ], [ %.6457.i, %bb.o ], [ %.7458.i254459, %bb.m ]
  %.sroa.0.1.i21 = phi i32 [ %.sroa.0.0.i, %bb.k ], [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0.0.i, %bb.o ], [ %.sroa.0.1.i204558, %bb.m ]
  %.sroa.6.1.i19 = phi i32 [ %.sroa.6.0.i, %bb.k ], [ %.sroa.6.0.i, %bb.n ], [ %.sroa.6.0.i, %bb.o ], [ %.sroa.6.1.i184657, %bb.m ]
  %.0484.lcssa116211791189.i17 = phi i32 [ %.0484.lcssa116211791190.i, %bb.k ], [ %.0484.lcssa116211791190.i, %bb.n ], [ %.0484.lcssa116211791190.i, %bb.o ], [ %.0484.lcssa116211791189.i164756, %bb.m ]
  %i.cx = phi i32 [ %i.bj, %bb.k ], [ %i.bj, %bb.n ], [ %i.bj, %bb.o ], [ %i.cq, %bb.m ]
  %.4488.i = phi i32 [ %.1485.i, %bb.k ], [ %i.cm, %bb.n ], [ %i.cm, %bb.o ], [ %i.co, %bb.m ]
  %.2479.i = phi i32 [ %.0477.i, %bb.k ], [ %i.bt, %bb.n ], [ %i.bt, %bb.o ], [ %i.cr, %bb.m ]
  %.3475.i = phi i32 [ %i.bm, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.3469.i = phi i32 [ %.1467.i, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.7435.i = phi i32 [ %.2430.i, %bb.k ], [ %.4432.lcssa.i, %bb.n ], [ %.4432.lcssa.i, %bb.o ], [ %i.ct, %bb.m ]
  %.7.i = phi i32 [ %.2424.i, %bb.k ], [ %.4426.lcssa.i, %bb.n ], [ %i.cw, %bb.o ], [ %.4426.lcssa.i62, %bb.m ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.7458.i26, i64 1
  br label %bb.j, !llvm.loop !24

bb.q:                                             ; preds = %bb.j, %._crit_edge894.i, %.critedge.thread.i, %.critedge.i
  %.0484.lcssa11621178.i = phi i32 [ %.0484.lcssa116211791190.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.sroa.12.0.i = phi i32 [ %i.bj, %bb.j ], [ 1, %._crit_edge894.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.6.2.i = phi i32 [ %.sroa.6.0.i, %bb.j ], [ 1, %._crit_edge894.i ], [ %i.ak, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.0.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %i.ak, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.3515.i = phi i32 [ %.1513.i, %bb.j ], [ %.0512.lcssa.i, %._crit_edge894.i ], [ %i.ag, %.critedge.i ], [ %i.r, %.critedge.thread.i ]
  %.5489.i = phi i32 [ %.1485.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 14 uses
  %.3480.i = phi i32 [ %.0477.i, %bb.j ], [ 0, %._crit_edge894.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.4476.i = phi i32 [ %.1473.i, %bb.j ], [ %.0472.lcssa.i, %._crit_edge894.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.4470.i = phi i32 [ %.1467.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %.0466.lcssa.i, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.8459.i = phi ptr [ %.6457.i, %bb.j ], [ %.5456.lcssa.i, %._crit_edge894.i ], [ %i.ae, %.critedge.i ], [ %.3454.i, %.critedge.thread.i ] ; 7 uses
  %.2450.i = phi ptr [ %.0448.i, %bb.j ], [ %.3454.i, %._crit_edge894.i ], [ %.3454.i, %.critedge.i ], [ %.3454.i, %.critedge.thread.i ] ; 15 uses
  %.8436.i = phi i32 [ %.2430.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %.1429.i, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 5 uses
  %.8.i = phi i32 [ %.2424.i, %bb.j ], [ 0, %._crit_edge894.i ], [ %.1423.i, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %i.cz = and i32 %.3515.i, -33
  %or.cond3.i = icmp eq i32 %i.cz, 69
  br i1 %or.cond3.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.da = icmp ne i32 %.5489.i, 0
  %i.db = icmp ne i32 %.4476.i, 0
  %or.cond5.i = select i1 %i.da, i1 true, i1 %i.db
  %or.cond7.i = or i1 %i.n, %or.cond5.i
  br i1 %or.cond7.i, label %bb.s, label %.loopexit751.i

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %.8459.i, i64 1 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.dd, label %bb.v [
    i8 45, label %bb.t
    i8 43, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.de = phi i1 [ false, %bb.t ], [ true, %bb.s ]
  %i.df = getelementptr inbounds nuw i8, ptr %.8459.i, i64 2 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.4516.in.i = phi i8 [ %i.dd, %bb.s ], [ %i.dg, %bb.u ] ; 3 uses
  %.1506.i = phi i1 [ true, %bb.s ], [ %i.de, %bb.u ]
  %.9460.i = phi ptr [ %i.dc, %bb.s ], [ %i.df, %bb.u ] ; 2 uses
  %i.dh = add i8 %.4516.in.i, -48
  %or.cond9.i = icmp ult i8 %i.dh, 10
  br i1 %or.cond9.i, label %.preheader747.i, label %bb.x

.preheader747.i:                                  ; preds = %bb.v
  %i.di = icmp eq i8 %.4516.in.i, 48
  br i1 %i.di, label %.lr.ph910.i, label %._crit_edge911.i

.lr.ph910.i:                                      ; preds = %.preheader747.i, %.lr.ph910.i
  %.10461909.i = phi ptr [ %i.dj, %.lr.ph910.i ], [ %.9460.i, %.preheader747.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.10461909.i, i64 1 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !19  ; 2 uses
  %i.dl = icmp eq i8 %i.dk, 48
  br i1 %i.dl, label %.lr.ph910.i, label %._crit_edge911.i, !llvm.loop !25

._crit_edge911.i:                                 ; preds = %.lr.ph910.i, %.preheader747.i
  %.5517.in.lcssa.i = phi i8 [ %.4516.in.i, %.preheader747.i ], [ %i.dk, %.lr.ph910.i ] ; 2 uses
  %.10461.lcssa.i = phi ptr [ %.9460.i, %.preheader747.i ], [ %i.dj, %.lr.ph910.i ] ; 3 uses
  %i.dm = add i8 %.5517.in.lcssa.i, -49
  %or.cond11.i = icmp ult i8 %i.dm, 9
  br i1 %or.cond11.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge911.i
  %narrow.i = add nsw i8 %.5517.in.lcssa.i, -48
  %i.dn = zext nneg i8 %narrow.i to i32           ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.10461.lcssa.i, i64 1 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !19  ; 2 uses
  %i.dq = add i8 %i.dp, -48
  %i.dr = icmp ult i8 %i.dq, 10
  br i1 %i.dr, label %.lr.ph916.i, label %._crit_edge917.i

.lr.ph916.i:                                      ; preds = %bb.w, %.lr.ph916.i
  %i.ds = phi i8 [ %i.dz, %.lr.ph916.i ], [ %i.dp, %bb.w ]
  %i.dt = phi ptr [ %i.dy, %.lr.ph916.i ], [ %i.do, %bb.w ]
  %.0440914.i = phi i32 [ %i.dx, %.lr.ph916.i ], [ %i.dn, %bb.w ]
  %i.du = zext nneg i8 %i.ds to i32
  %i.dv = mul i32 %.0440914.i, 10
  %i.dw = add nsw i32 %i.du, -48
  %i.dx = add i32 %i.dw, %i.dv                    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 3 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !19  ; 2 uses
  %i.ea = add i8 %i.dz, -48
  %i.eb = icmp ult i8 %i.ea, 10
  br i1 %i.eb, label %.lr.ph916.i, label %._crit_edge917.loopexit.i, !llvm.loop !26

._crit_edge917.loopexit.i:                        ; preds = %.lr.ph916.i
end_hunk_0
begin_hunk_1_@hermes_g_strtod:bb.a
  %i.ij = phi i32 [ %i.gs, %.lr.ph926.preheader.i ], [ %i.it, %bb.bg ]
  %indvars.iv1057.i.a = phi i64 [ 0, %.lr.ph926.preheader.i ], [ %indvars.iv.next1058.i, %bb.bg ] ; 2 uses
  %.0507923.i = phi i32 [ %i.ih, %.lr.ph926.preheader.i ], [ %i.iv, %bb.bg ] ; 3 uses
  %i.ik = phi double [ %.promoted1342.i, %.lr.ph926.preheader.i ], [ %i.iu, %bb.bg ] ; 2 uses
  %i.il = and i32 %.0507923.i, 1
  %.not591.i = icmp eq i32 %i.il, 0
  br i1 %.not591.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph926.i
  %i.im = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1057.i.a
  %i.in = load double, ptr %i.im, align 8, !tbaa !27
  %i.io = fmul double %i.ik, %i.in                ; 3 uses
  %i.ip = bitcast double %i.io to i64
  %i.iq = lshr i64 %i.ip, 32
  %i.ir = trunc nuw i64 %i.iq to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph926.i
  %i.is = phi double [ %i.ii, %.lr.ph926.i ], [ %i.io, %bb.bf ] ; 2 uses
  %i.it = phi i32 [ %i.ij, %.lr.ph926.i ], [ %i.ir, %bb.bf ] ; 2 uses
  %i.iu = phi double [ %i.ik, %.lr.ph926.i ], [ %i.io, %bb.bf ]
  %indvars.iv.next1058.i = add nuw nsw i64 %indvars.iv1057.i.a, 1 ; 2 uses
  %i.iv = lshr i32 %.0507923.i, 1
  %i.iw = icmp samesign ugt i32 %.0507923.i, 3
  br i1 %i.iw, label %.lr.ph926.i, label %._crit_edge927.loopexit.i, !llvm.loop !30

._crit_edge927.loopexit.i:                        ; preds = %bb.bg
  store double %i.is, ptr %2, align 8
  %i.ix = and i64 %indvars.iv.next1058.i, 4294967295
  br label %._crit_edge927.i

._crit_edge927.i:                                 ; preds = %._crit_edge927.loopexit.i, %bb.be
  %i.iy = phi i32 [ %i.gs, %bb.be ], [ %i.it, %._crit_edge927.loopexit.i ]
  %.0492.lcssa.i = phi i64 [ 0, %bb.be ], [ %i.ix, %._crit_edge927.loopexit.i ]
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ja = add i32 %i.iy, -55574528
  store i32 %i.ja, ptr %i.iz, align 4, !tbaa !19
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %.0492.lcssa.i
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !27
  %i.jd = load double, ptr %2, align 8, !tbaa !19
  %i.je = fmul double %i.jc, %i.jd                ; 2 uses
  store double %i.je, ptr %2, align 8, !tbaa !19
  %i.jf = bitcast double %i.je to i64
  %i.jg = lshr i64 %i.jf, 32
  %i.jh = trunc nuw i64 %i.jg to i32              ; 2 uses
  %i.ji = and i32 %i.jh, 2146435072               ; 2 uses
  %i.jj = icmp samesign ugt i32 %i.ji, 2090860544
  br i1 %i.jj, label %.loopexit.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge927.i
  %i.jk = icmp samesign ugt i32 %i.ji, 2089811968
  br i1 %i.jk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 2146435071, ptr %i.iz, align 4, !tbaa !19
  store i32 -1, ptr %2, align 8, !tbaa !19
  br label %bb.cb

bb.bj:                                            ; preds = %bb.bh
  %i.jl = add i32 %i.jh, 55574528
  store i32 %i.jl, ptr %i.iz, align 4, !tbaa !19
  br label %bb.cb

bb.bk:                                            ; preds = %bb.aj
  %i.jm = icmp slt i32 %i.gi, 0
  br i1 %i.jm, label %bb.bl, label %bb.cb

bb.bl:                                            ; preds = %bb.bk
  %i.jn = sub nsw i32 0, %i.gi                    ; 4 uses
  %i.jo = and i32 %i.jn, 15                       ; 2 uses
  %.not560.i = icmp eq i32 %i.jo, 0
  br i1 %.not560.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !27
  %i.js = fdiv double %i.gg, %i.jr                ; 3 uses
  store double %i.js, ptr %2, align 8, !tbaa !19
  %i.jt = bitcast double %i.js to i64             ; 2 uses
  %i.ju = lshr i64 %i.jt, 32
  %i.jv = trunc nuw i64 %i.ju to i32
  %i.jw = trunc i64 %i.jt to i32
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.jx = phi i32 [ %i.jw, %bb.bm ], [ %i.gf, %bb.bl ]
  %i.jy = phi i32 [ %i.jv, %bb.bm ], [ %i.ge, %bb.bl ]
  %.promoted1340.i = phi double [ %i.js, %bb.bm ], [ %i.gg, %bb.bl ] ; 2 uses
  %i.jz = lshr i32 %i.jn, 4                       ; 2 uses
  %.not561.i = icmp eq i32 %i.jz, 0
  br i1 %.not561.i, label %bb.cb, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ka = icmp samesign ugt i32 %i.jn, 511
  br i1 %i.ka, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bo, %bb.bq
  %i.kb = phi double [ %i.kn, %bb.bq ], [ %.promoted1340.i, %bb.bo ]
  %i.kc = phi i32 [ %i.ko, %bb.bq ], [ %i.jx, %bb.bo ]
  %i.kd = phi i32 [ %i.kp, %bb.bq ], [ %i.jy, %bb.bo ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bq ], [ 0, %bb.bo ] ; 2 uses
  %.1508920.i = phi i32 [ %i.kr, %bb.bq ], [ %i.jz, %bb.bo ] ; 2 uses
  %i.ke = phi double [ %i.kq, %bb.bq ], [ %.promoted1340.i, %bb.bo ] ; 2 uses
  %i.kf = and i32 %.1508920.i, 1
  %.not565.i = icmp eq i32 %i.kf, 0
  br i1 %.not565.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.preheader
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv.i
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !27
  %i.ki = fmul double %i.ke, %i.kh                ; 3 uses
  %i.kj = bitcast double %i.ki to i64             ; 2 uses
  %i.kk = lshr i64 %i.kj, 32
  %i.kl = trunc nuw i64 %i.kk to i32
  %i.km = trunc i64 %i.kj to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.preheader
  %i.kn = phi double [ %i.kb, %.preheader ], [ %i.ki, %bb.bp ] ; 3 uses
  %i.ko = phi i32 [ %i.kc, %.preheader ], [ %i.km, %bb.bp ] ; 2 uses
  %i.kp = phi i32 [ %i.kd, %.preheader ], [ %i.kl, %bb.bp ] ; 3 uses
  %i.kq = phi double [ %i.ke, %.preheader ], [ %i.ki, %bb.bp ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.kr = lshr i32 %.1508920.i, 1                 ; 2 uses
  %.not563.i = icmp eq i32 %i.kr, 0
  br i1 %.not563.i, label %bb.br, label %.preheader, !llvm.loop !31

bb.br:                                            ; preds = %bb.bq
  store double %i.kn, ptr %2, align 8
  %.not562.i = icmp samesign ult i32 %i.jn, 256   ; 2 uses
  %spec.select732.i = select i1 %.not562.i, i32 0, i32 106
  br i1 %.not562.i, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.kt = lshr i32 %i.kp, 20
  %i.ku = and i32 %i.kt, 2047                     ; 6 uses
  %i.kv = sub nsw i32 107, %i.ku
  %i.kw = icmp samesign ult i32 %i.ku, 107
  br i1 %i.kw, label %bb.bt, label %thread-pre-split

bb.bt:                                            ; preds = %bb.bs
  %i.kx = icmp samesign ult i32 %i.ku, 76
  br i1 %i.kx, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.ky = icmp samesign ult i32 %i.ku, 53
  br i1 %i.ky, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %2, align 8, !tbaa !19
  %i.kz = icmp samesign ult i32 %i.ku, 55
  br i1 %i.kz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 57671680, ptr %i.ks, align 4, !tbaa !19
  br label %thread-pre-split

bb.bx:                                            ; preds = %bb.bv
  %i.la = sub nuw nsw i32 75, %i.ku
  %i.lb = shl nsw i32 -1, %i.la
  %i.lc = and i32 %i.lb, %i.kp
  store i32 %i.lc, ptr %i.ks, align 4, !tbaa !19
  br label %thread-pre-split

bb.by:                                            ; preds = %bb.bt
  %i.ld = shl nsw i32 -1, %i.kv
  %i.le = and i32 %i.ld, %i.ko
  store i32 %i.le, ptr %2, align 8, !tbaa !19
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bs, %bb.bw, %bb.bx, %bb.by
  %.pr = load double, ptr %2, align 8, !tbaa !19
  br label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split, %bb.br
  %i.lf = phi double [ %.pr, %thread-pre-split ], [ %i.kn, %bb.br ]
  %i.lg = fcmp une double %i.lf, 0.000000e+00
  br i1 %i.lg, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.iw, %bb.fd, %sulp.exit653.i, %.loopexit, %bb.bz, %bb.bu, %bb.bo
  %.2419.i = phi ptr [ %.4421.i, %bb.iw ], [ %.4421.i, %.loopexit ], [ undef, %bb.bz ], [ %.4421.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4421.i, %sulp.exit653.i ]
  %.2412.i = phi ptr [ %.4414.i, %bb.iw ], [ %.4414.i, %.loopexit ], [ undef, %bb.bz ], [ %.4414.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4414.i, %sulp.exit653.i ]
  %.2409.i = phi ptr [ null, %bb.iw ], [ %.234.lcssa.i.i, %.loopexit ], [ null, %bb.bz ], [ %.234.lcssa.i.i, %bb.fd ], [ null, %bb.bo ], [ null, %bb.bu ], [ %.234.lcssa.i.i, %sulp.exit653.i ]
  %.2404.i = phi ptr [ %.4406.i, %bb.iw ], [ %.4406.i, %.loopexit ], [ undef, %bb.bz ], [ %.4406.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4406.i, %sulp.exit653.i ]
  %.2.i = phi ptr [ %.5.i, %bb.iw ], [ %i.uq, %.loopexit ], [ undef, %bb.bz ], [ %i.uq, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %i.uq, %sulp.exit653.i ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.ao

bb.cb:                                            ; preds = %bb.bz, %bb.bn, %bb.bk, %bb.bj, %bb.bi, %bb.am
  %.sroa.44711.1.i = phi i32 [ 0, %bb.am ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bn ], [ %spec.select732.i, %bb.bz ], [ 0, %bb.bk ] ; 6 uses
  %i.lh = sub nsw i32 %.5489.i, %.4470.i          ; 6 uses
  %i.li = icmp sgt i32 %.5489.i, 40
  br i1 %i.li, label %bb.cc, label %.loopexit745.i

bb.cc:                                            ; preds = %bb.cb
  %i.lj = icmp slt i32 %spec.select597.i.a, 18
  %i.lk = add nsw i32 %.sroa.12.0.i, 18
  %.2494.i = select i1 %i.lj, i32 %i.lk, i32 18
  %5 = add nsw i32 %.sroa.0.2.i, -1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.1500.i = phi i32 [ 18, %bb.cc ], [ %i.lo, %bb.cd ] ; 12 uses
  %.3495.i = phi i32 [ %.2494.i, %bb.cc ], [ %.4496.i, %bb.cd ]
  %6 = add nsw i32 %.3495.i, -1                   ; 3 uses
  %7 = icmp slt i32 %6, %.sroa.6.2.i
  %spec.select596.i = call i32 @llvm.smin.i32(i32 %6, i32 %5)
  %.4496.i = select i1 %7, i32 %spec.select596.i, i32 %6 ; 2 uses
  %i.ll = sext i32 %.4496.i to i64
  %i.lm = getelementptr inbounds i8, ptr %.2450.i, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !19
  %.not570.i.a = icmp eq i8 %i.ln, 48
  %i.lo = add nsw i32 %.1500.i, -1
  br i1 %.not570.i.a, label %bb.cd, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lp = sub nsw i32 %.5489.i, %.1500.i
  %i.lq = add nsw i32 %i.lp, %i.ej                ; 4 uses
  %spec.select599.i = call i32 @llvm.smin.i32(i32 %spec.select597.i.a, i32 %.1500.i) ; 9 uses
  %i.lr = icmp slt i32 %.1500.i, 9
  br i1 %i.lr, label %.preheader746.i, label %.loopexit745.i

.preheader746.i:                                  ; preds = %bb.ce
  %i.ls = icmp sgt i32 %spec.select599.i, 0
  br i1 %i.ls, label %.lr.ph931.preheader.i, label %.preheader.i

.lr.ph931.preheader.i:                            ; preds = %.preheader746.i
  %wide.trip.count.i = zext nneg i32 %spec.select599.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.lt = icmp ult i32 %spec.select599.i, 4
  br i1 %i.lt, label %.lr.ph931.i.epil.preheader, label %.lr.ph931.preheader.i.new

.lr.ph931.preheader.i.new:                        ; preds = %.lr.ph931.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph931.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph931.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph931.i.epil.preheader

.lr.ph931.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph931.preheader.i
  %indvars.iv1060.i.epil.init = phi i64 [ 0, %.lr.ph931.preheader.i ], [ %indvars.iv.next1061.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.9930.i.epil.init = phi i32 [ 0, %.lr.ph931.preheader.i ], [ %i.nm, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod674 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod674)
  br label %.lr.ph931.i.epil

.lr.ph931.i.epil:                                 ; preds = %.lr.ph931.i.epil, %.lr.ph931.i.epil.preheader
  %indvars.iv1060.i.epil = phi i64 [ %indvars.iv1060.i.epil.init, %.lr.ph931.i.epil.preheader ], [ %indvars.iv.next1061.i.epil, %.lr.ph931.i.epil ] ; 2 uses
  %.9930.i.epil = phi i32 [ %.9930.i.epil.init, %.lr.ph931.i.epil.preheader ], [ %i.lz, %.lr.ph931.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph931.i.epil.preheader ], [ %epil.iter.next, %.lr.ph931.i.epil ]
  %i.lu = mul i32 %.9930.i.epil, 10
  %i.lv = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i.epil
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !19
  %i.lx = sext i8 %i.lw to i32
  %i.ly = add i32 %i.lu, -48
  %i.lz = add i32 %i.ly, %i.lx                    ; 2 uses
  %indvars.iv.next1061.i.epil = add nuw nsw i64 %indvars.iv1060.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph931.i.epil, !llvm.loop !32

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph931.i.epil, %.preheader746.i
  %.2501.lcssa.i = phi i32 [ 0, %.preheader746.i ], [ %spec.select599.i, %.lr.ph931.i.epil ], [ %spec.select599.i, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa.i = phi i32 [ 0, %.preheader746.i ], [ %i.nm, %.preheader.i.loopexit.unr-lcssa ], [ %i.lz, %.lr.ph931.i.epil ] ; 3 uses
  %i.ma = icmp slt i32 %.2501.lcssa.i, %.1500.i
  br i1 %i.ma, label %.lr.ph937.preheader.i, label %._crit_edge.thread.i.i.thread

.lr.ph937.preheader.i:                            ; preds = %.preheader.i
  %i.mb = sext i32 %.sroa.6.2.i to i64            ; 2 uses
  %i.mc = sub i32 %.1500.i, %.2501.lcssa.i
  %xtraiter675 = and i32 %i.mc, 3                 ; 2 uses
  %lcmp.mod676.not = icmp eq i32 %xtraiter675, 0
  br i1 %lcmp.mod676.not, label %.lr.ph937.i.prol.loopexit, label %.lr.ph937.i.prol

.lr.ph937.i.prol:                                 ; preds = %.lr.ph937.preheader.i, %.lr.ph937.i.prol
  %indvars.iv1065.i.prol = phi i64 [ %indvars.iv.next1066.i.prol, %.lr.ph937.i.prol ], [ %i.mb, %.lr.ph937.preheader.i ] ; 2 uses
  %.10936.i.prol = phi i32 [ %i.mi, %.lr.ph937.i.prol ], [ %.9.lcssa.i, %.lr.ph937.preheader.i ]
  %.3502934.i.prol = phi i32 [ %i.mj, %.lr.ph937.i.prol ], [ %.2501.lcssa.i, %.lr.ph937.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph937.i.prol ], [ 0, %.lr.ph937.preheader.i ]
  %i.md = mul i32 %.10936.i.prol, 10
  %indvars.iv.next1066.i.prol = add nsw i64 %indvars.iv1065.i.prol, 1 ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %.2450.i, i64 %indvars.iv1065.i.prol
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !19
  %i.mg = sext i8 %i.mf to i32
  %i.mh = add i32 %i.md, -48
  %i.mi = add i32 %i.mh, %i.mg                    ; 3 uses
  %i.mj = add nuw nsw i32 %.3502934.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter675
  br i1 %prol.iter.cmp.not, label %.lr.ph937.i.prol.loopexit, label %.lr.ph937.i.prol, !llvm.loop !34

.lr.ph937.i.prol.loopexit:                        ; preds = %.lr.ph937.i.prol, %.lr.ph937.preheader.i
  %.lcssa641.unr = phi i32 [ poison, %.lr.ph937.preheader.i ], [ %i.mi, %.lr.ph937.i.prol ]
  %indvars.iv1065.i.unr = phi i64 [ %i.mb, %.lr.ph937.preheader.i ], [ %indvars.iv.next1066.i.prol, %.lr.ph937.i.prol ]
  %.10936.i.unr = phi i32 [ %.9.lcssa.i, %.lr.ph937.preheader.i ], [ %i.mi, %.lr.ph937.i.prol ]
  %.3502934.i.unr = phi i32 [ %.2501.lcssa.i, %.lr.ph937.preheader.i ], [ %i.mj, %.lr.ph937.i.prol ]
  %i.mk = sub i32 %.2501.lcssa.i, %.1500.i
  %i.ml = icmp ugt i32 %i.mk, -4
  br i1 %i.ml, label %._crit_edge.thread.i.i.thread, label %.lr.ph937.i

.lr.ph931.i:                                      ; preds = %.lr.ph931.i, %.lr.ph931.preheader.i.new
  %indvars.iv1060.i = phi i64 [ 0, %.lr.ph931.preheader.i.new ], [ %indvars.iv.next1061.i.3, %.lr.ph931.i ] ; 5 uses
  %.9930.i = phi i32 [ 0, %.lr.ph931.preheader.i.new ], [ %i.nm, %.lr.ph931.i ]
  %niter = phi i64 [ 0, %.lr.ph931.preheader.i.new ], [ %niter.next.3, %.lr.ph931.i ]
  %i.mm = mul i32 %.9930.i, 10
  %i.mn = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !19
  %i.mp = sext i8 %i.mo to i32
  %i.mq = add i32 %i.mm, -48
  %i.mr = add i32 %i.mq, %i.mp
  %i.ms = mul i32 %i.mr, 10
  %i.mt = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 1
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !19
  %i.mw = sext i8 %i.mv to i32
  %i.mx = add i32 %i.ms, -48
  %i.my = add i32 %i.mx, %i.mw
  %i.mz = mul i32 %i.my, 10
  %i.na = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !19
  %i.nd = sext i8 %i.nc to i32
  %i.ne = add i32 %i.mz, -48
  %i.nf = add i32 %i.ne, %i.nd
  %i.ng = mul i32 %i.nf, 10
  %i.nh = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv1060.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 3
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !19
  %i.nk = sext i8 %i.nj to i32
  %i.nl = add i32 %i.ng, -48
  %i.nm = add i32 %i.nl, %i.nk                    ; 3 uses
  %indvars.iv.next1061.i.3 = add nuw nsw i64 %indvars.iv1060.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph931.i, !llvm.loop !35

.lr.ph937.i:                                      ; preds = %.lr.ph937.i.prol.loopexit, %.lr.ph937.i
  %indvars.iv1065.i = phi i64 [ %indvars.iv.next1066.i.3, %.lr.ph937.i ], [ %indvars.iv1065.i.unr, %.lr.ph937.i.prol.loopexit ] ; 5 uses
  %.10936.i = phi i32 [ %i.on, %.lr.ph937.i ], [ %.10936.i.unr, %.lr.ph937.i.prol.loopexit ]
  %.3502934.i = phi i32 [ %i.oo, %.lr.ph937.i ], [ %.3502934.i.unr, %.lr.ph937.i.prol.loopexit ]
  %i.nn = mul i32 %.10936.i, 10
  %i.no = getelementptr inbounds i8, ptr %.2450.i, i64 %indvars.iv1065.i
  %i.np = load i8, ptr %i.no, align 1, !tbaa !19
  %i.nq = sext i8 %i.np to i32
  %i.nr = add i32 %i.nn, -48
  %i.ns = add i32 %i.nr, %i.nq
  %i.nt = mul i32 %i.ns, 10
  %i.nu = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1065.i
  %i.nv = getelementptr i8, ptr %i.nu, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !19
  %i.nx = sext i8 %i.nw to i32
  %i.ny = add i32 %i.nt, -48
  %i.nz = add i32 %i.ny, %i.nx
  %i.oa = mul i32 %i.nz, 10
  %i.ob = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1065.i
  %i.oc = getelementptr i8, ptr %i.ob, i64 2
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !19
  %i.oe = sext i8 %i.od to i32
  %i.of = add i32 %i.oa, -48
  %i.og = add i32 %i.of, %i.oe
  %i.oh = mul i32 %i.og, 10
  %indvars.iv.next1066.i.3 = add nsw i64 %indvars.iv1065.i, 4
  %i.oi = getelementptr i8, ptr %.2450.i, i64 %indvars.iv1065.i
  %i.oj = getelementptr i8, ptr %i.oi, i64 3
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !19
  %i.ol = sext i8 %i.ok to i32
  %i.om = add i32 %i.oh, -48
  %i.on = add i32 %i.om, %i.ol                    ; 2 uses
  %i.oo = add nuw nsw i32 %.3502934.i, 4          ; 2 uses
  %exitcond1069.not.i.3 = icmp eq i32 %i.oo, %.1500.i
  br i1 %exitcond1069.not.i.3, label %._crit_edge.thread.i.i.thread, label %.lr.ph937.i, !llvm.loop !36

.loopexit745.i:                                   ; preds = %bb.ce, %bb.cb
  %.2511.i = phi i32 [ %i.ej, %bb.cb ], [ %i.lq, %bb.ce ] ; 4 uses
  %.6490.i = phi i32 [ %.5489.i, %bb.cb ], [ %.1500.i, %bb.ce ] ; 6 uses
  %.2483.i = phi i32 [ %spec.select597.i.a, %bb.cb ], [ %spec.select599.i, %bb.ce ] ; 4 uses
  %i.op = add nsw i32 %.6490.i, 8
  %i.oq = sdiv i32 %i.op, 9
  %i.or = icmp sgt i32 %.6490.i, 9
  br i1 %i.or, label %.lr.ph.i.i, label %._crit_edge.thread.i.i.thread

.lr.ph.i.i:                                       ; preds = %.loopexit745.i, %.lr.ph.i.i
  %.040.i.i = phi i32 [ %i.os, %.lr.ph.i.i ], [ 1, %.loopexit745.i ]
  %.02839.i.i = phi i32 [ %i.ot, %.lr.ph.i.i ], [ 0, %.loopexit745.i ] ; 3 uses
  %i.os = shl i32 %.040.i.i, 1                    ; 2 uses
  %i.ot = add nuw nsw i32 %.02839.i.i, 1          ; 5 uses
  %i.ou = icmp sgt i32 %i.oq, %i.os
  br i1 %i.ou, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !37

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.ov = icmp samesign ult i32 %.02839.i.i, 7
  br i1 %i.ov, label %._crit_edge.thread.i.i, label %bb.cg

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.phi.trans.insert292.a = zext nneg i32 %i.ot to i64
  %.phi.trans.insert293 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert, i64 %.phi.trans.insert292.a
  %.pre = load ptr, ptr %.phi.trans.insert293, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %._crit_edge.thread.i.i.thread, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.thread.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ox = zext nneg i32 %i.ot to i64
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.ox
  %i.oz = load ptr, ptr %.pre, align 8, !tbaa !15
  store ptr %i.oz, ptr %i.oy, align 8, !tbaa !13
end_hunk_1
