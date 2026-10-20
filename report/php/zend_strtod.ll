Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_strtod?download=true
inline.NumInlined: 82
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@zend_strtod:bb.a
    i8 43, label %.loopexit738.loopexit
    i8 0, label %Bfree.exit584
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

.loopexit738.loopexit:                            ; preds = %bb.b
  br label %.loopexit738

.loopexit738:                                     ; preds = %bb.b, %.loopexit738.loopexit
  %.0426 = phi i32 [ 0, %.loopexit738.loopexit ], [ 1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0414, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52    ; 2 uses
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %Bfree.exit584, label %.loopexit737

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0414, i64 1
  br label %bb.b

.loopexit737:                                     ; preds = %bb.b, %.loopexit738
  %i.m = phi i8 [ %i.k, %.loopexit738 ], [ %i.i, %bb.b ] ; 2 uses
  %.1427 = phi i32 [ %.0426, %.loopexit738 ], [ 0, %bb.b ] ; 12 uses
  %.1415 = phi ptr [ %i.j, %.loopexit738 ], [ %.0414, %bb.b ] ; 2 uses
  %i.n = icmp eq i8 %i.m, 48                      ; 3 uses
  br i1 %i.n, label %.preheader735, label %.loopexit736

.preheader735:                                    ; preds = %.loopexit737, %.preheader735
  %.2416 = phi ptr [ %i.o, %.preheader735 ], [ %.1415, %.loopexit737 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.2416, i64 1 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52    ; 2 uses
  switch i8 %i.p, label %.loopexit736 [
    i8 48, label %.preheader735
    i8 0, label %Bfree.exit584
  ]

.loopexit736:                                     ; preds = %.preheader735, %.loopexit737
  %i.q = phi i8 [ %i.m, %.loopexit737 ], [ %i.p, %.preheader735 ] ; 3 uses
  %.3417 = phi ptr [ %.1415, %.loopexit737 ], [ %i.o, %.preheader735 ] ; 11 uses
  %i.r = sext i8 %i.q to i32                      ; 2 uses
  %i.s = add i8 %i.q, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.loopexit736, %bb.g
  %i.u = phi i32 [ %i.ag, %bb.g ], [ %i.r, %.loopexit736 ] ; 2 uses
  %.0394858 = phi i32 [ %.1395, %bb.g ], [ 0, %.loopexit736 ] ; 3 uses
  %.0400857 = phi i32 [ %.1401, %bb.g ], [ 0, %.loopexit736 ] ; 3 uses
  %.4418856 = phi ptr [ %i.ae, %bb.g ], [ %.3417, %.loopexit736 ] ; 2 uses
  %.0447855 = phi i32 [ %i.ad, %bb.g ], [ 0, %.loopexit736 ] ; 3 uses
  %i.v = icmp samesign ult i32 %.0447855, 9
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.w = mul i32 %.0400857, 10
  %i.x = add i32 %i.w, -48
  %i.y = add i32 %i.x, %i.u
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.z = icmp samesign ult i32 %.0447855, 17
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = mul i32 %.0394858, 10
  %i.ab = add i32 %i.aa, -48
  %i.ac = add i32 %i.ab, %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %.1401 = phi i32 [ %i.y, %bb.d ], [ %.0400857, %bb.f ], [ %.0400857, %bb.e ] ; 3 uses
  %.1395 = phi i32 [ %.0394858, %bb.d ], [ %i.ac, %bb.f ], [ %.0394858, %bb.e ] ; 3 uses
  %i.ad = add nuw nsw i32 %.0447855, 1            ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.4418856, i64 1 ; 6 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52  ; 3 uses
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = add i8 %i.af, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.g
  %i.aj = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ak = ptrtoint ptr %.3417 to i64              ; 3 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32                  ; 4 uses
  %i.an = icmp ugt ptr %i.ae, %.3417
  br i1 %i.an, label %.lr.ph867.preheader, label %.critedge

.lr.ph867.preheader:                              ; preds = %._crit_edge
  %i.ao = trunc i64 %i.aj to i32
  %i.ap = trunc i64 %i.ak to i32
  %i.aq = sub i32 %i.ao, %i.ap
  br label %.lr.ph867

.lr.ph867:                                        ; preds = %.lr.ph867.preheader, %bb.h
  %.0410865 = phi ptr [ %i.ar, %bb.h ], [ %i.ae, %.lr.ph867.preheader ]
  %.0429864 = phi i32 [ %i.au, %bb.h ], [ 0, %.lr.ph867.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.0410865, i64 -1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = icmp eq i8 %i.as, 48
  br i1 %i.at, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph867
  %i.au = add nuw nsw i32 %.0429864, 1
  %i.av = icmp ugt ptr %i.ar, %.3417
  br i1 %i.av, label %.lr.ph867, label %.critedge, !llvm.loop !67

.critedge:                                        ; preds = %.lr.ph867, %bb.h, %._crit_edge
  %.0429.lcssa = phi i32 [ 0, %._crit_edge ], [ %.0429864, %.lr.ph867 ], [ %i.aq, %bb.h ] ; 2 uses
  %i.aw = icmp eq i8 %i.af, 46
  br i1 %i.aw, label %bb.i, label %.thread

.critedge.thread:                                 ; preds = %.loopexit736
  %i.ax = ptrtoint ptr %.3417 to i64
  %i.ay = icmp eq i8 %i.q, 46
  br i1 %i.ay, label %.preheader734, label %.thread

bb.i:                                             ; preds = %.critedge
  %i.az = getelementptr inbounds nuw i8, ptr %.4418856, i64 2 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.ak
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %i.am
  br label %bb.k

.preheader734:                                    ; preds = %.critedge.thread
  %i.be = getelementptr inbounds nuw i8, ptr %.3417, i64 1 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !52  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 48
  br i1 %i.bg, label %.lr.ph873, label %._crit_edge874

.lr.ph873:                                        ; preds = %.preheader734, %.lr.ph873
  %.5419872 = phi ptr [ %i.bi, %.lr.ph873 ], [ %i.be, %.preheader734 ]
  %.0435871 = phi i32 [ %i.bh, %.lr.ph873 ], [ 0, %.preheader734 ]
  %i.bh = add nuw nsw i32 %.0435871, 1            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.5419872, i64 1 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !52  ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 48
  br i1 %i.bk, label %.lr.ph873, label %._crit_edge874, !llvm.loop !68

._crit_edge874:                                   ; preds = %.lr.ph873, %.preheader734
  %.0474.lcssa.in = phi i8 [ %i.bf, %.preheader734 ], [ %i.bj, %.lr.ph873 ]
  %.0435.lcssa = phi i32 [ 0, %.preheader734 ], [ %i.bh, %.lr.ph873 ] ; 2 uses
  %.5419.lcssa = phi ptr [ %i.be, %.preheader734 ], [ %i.bi, %.lr.ph873 ] ; 4 uses
  %.0474.lcssa = sext i8 %.0474.lcssa.in to i32   ; 3 uses
  %i.bl = add nsw i32 %.0474.lcssa, -49
  %or.cond = icmp ult i32 %i.bl, 9
  br i1 %or.cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %._crit_edge874
  %i.bm = ptrtoint ptr %.5419.lcssa to i64
  %i.bn = sub i64 %i.ax, %i.bm
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = add nsw i32 %i.bo, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.q
  %i.bq = phi i32 [ %i.bt, %bb.q ], [ %i.bd, %bb.i ] ; 2 uses
  %.0447.lcssa115111681179 = phi i32 [ %.0447.lcssa115111681178, %bb.q ], [ %i.ad, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi i32 [ %.sroa.6.1, %bb.q ], [ %i.bc, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %.sroa.0.1, %bb.q ], [ %i.am, %bb.i ] ; 2 uses
  %.1448 = phi i32 [ %.4451, %bb.q ], [ %i.ad, %bb.i ] ; 3 uses
  %.0440 = phi i32 [ %i.cx, %bb.q ], [ 0, %bb.i ] ; 3 uses
  %.1436 = phi i32 [ %.3438, %bb.q ], [ 0, %bb.i ] ; 2 uses
  %.1430 = phi i32 [ %.3432, %bb.q ], [ %.0429.lcssa, %bb.i ] ; 2 uses
  %.6420 = phi ptr [ %i.cw, %bb.q ], [ %i.az, %bb.i ] ; 3 uses
  %.0411 = phi ptr [ %.1412, %bb.q ], [ %.3417, %bb.i ] ; 2 uses
  %.2402 = phi i32 [ %.7407, %bb.q ], [ %.1401, %bb.i ] ; 2 uses
  %.2396 = phi i32 [ %.7, %bb.q ], [ %.1395, %bb.i ] ; 2 uses
  %.1475.in = load i8, ptr %.6420, align 1, !tbaa !52
  %.1475 = sext i8 %.1475.in to i32               ; 3 uses
  %i.br = add nsw i32 %.1475, -48
  %i.bs = icmp ult i32 %i.br, 10
  br i1 %i.bs, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bt = phi i32 [ 1, %bb.j ], [ %i.bq, %bb.k ]
  %.0447.lcssa115111681178 = phi i32 [ 0, %bb.j ], [ %.0447.lcssa115111681179, %bb.k ]
  %.sroa.6.1 = phi i32 [ %i.bp, %bb.j ], [ %.sroa.6.0, %bb.k ]
  %.sroa.0.1 = phi i32 [ %i.bo, %bb.j ], [ %.sroa.0.0, %bb.k ]
  %.2476 = phi i32 [ %.0474.lcssa, %bb.j ], [ %.1475, %bb.k ]
  %.2449 = phi i32 [ 0, %bb.j ], [ %.1448, %bb.k ] ; 5 uses
  %.1441 = phi i32 [ %.0435.lcssa, %bb.j ], [ %.0440, %bb.k ] ; 2 uses
  %.2437 = phi i32 [ 0, %bb.j ], [ %.1436, %bb.k ] ; 7 uses
  %.2431 = phi i32 [ 0, %bb.j ], [ %.1430, %bb.k ]
  %.7421 = phi ptr [ %.5419.lcssa, %bb.j ], [ %.6420, %bb.k ]
  %.1412 = phi ptr [ %.5419.lcssa, %bb.j ], [ %.0411, %bb.k ]
  %.3403 = phi i32 [ 0, %bb.j ], [ %.2402, %bb.k ] ; 4 uses
  %.3397 = phi i32 [ 0, %bb.j ], [ %.2396, %bb.k ] ; 4 uses
  %i.bu = add i32 %.2437, 1                       ; 2 uses
  %i.bv = add nsw i32 %.2476, -48                 ; 3 uses
  %.not560 = icmp eq i32 %i.bv, 0
  br i1 %.not560, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = add nsw i32 %i.bu, %.1441               ; 3 uses
  %3 = icmp sgt i32 %.2437, 0
  br i1 %3, label %.lr.ph884.preheader, label %._crit_edge885

.lr.ph884.preheader:                              ; preds = %bb.m
  %xtraiter1571 = and i32 %.2437, 1
  %i.bx = icmp eq i32 %.2437, 1
  br i1 %i.bx, label %.lr.ph884.epil.preheader, label %.lr.ph884.preheader.new

.lr.ph884.preheader.new:                          ; preds = %.lr.ph884.preheader
  %unroll_iter1577 = and i32 %.2437, 2147483646
  br label %.lr.ph884

.lr.ph884:                                        ; preds = %.lr.ph884, %.lr.ph884.preheader.new
  %.4398882 = phi i32 [ %.3397, %.lr.ph884.preheader.new ], [ %.5399.1, %.lr.ph884 ] ; 2 uses
  %.4404881 = phi i32 [ %.3403, %.lr.ph884.preheader.new ], [ %.5405.1, %.lr.ph884 ] ; 2 uses
  %.3450880 = phi i32 [ %.2449, %.lr.ph884.preheader.new ], [ %i.cd, %.lr.ph884 ] ; 5 uses
  %niter1578 = phi i32 [ 0, %.lr.ph884.preheader.new ], [ %niter1578.next.1, %.lr.ph884 ]
  %i.by = icmp slt i32 %.3450880, 9
  %i.bz = mul i32 %.4404881, 10
  %i.ca = mul i32 %.4398882, 10
  %.5405 = select i1 %i.by, i32 %i.bz, i32 %.4404881 ; 2 uses
  %i.cb = add i32 %.3450880, -17
  %i.cc = icmp ult i32 %i.cb, -8
  %.5399 = select i1 %i.cc, i32 %.4398882, i32 %i.ca ; 2 uses
  %i.cd = add nsw i32 %.3450880, 2                ; 2 uses
  %i.ce = icmp slt i32 %.3450880, 8
  %i.cf = mul i32 %.5405, 10
  %i.cg = mul i32 %.5399, 10
  %.5405.1 = select i1 %i.ce, i32 %i.cf, i32 %.5405 ; 3 uses
  %i.ch = add i32 %.3450880, -16
  %i.ci = icmp ult i32 %i.ch, -8
  %.5399.1 = select i1 %i.ci, i32 %.5399, i32 %i.cg ; 3 uses
  %niter1578.next.1 = add nuw nsw i32 %niter1578, 2 ; 2 uses
  %niter1578.ncmp.1 = icmp eq i32 %niter1578.next.1, %unroll_iter1577
  br i1 %niter1578.ncmp.1, label %._crit_edge885.loopexit.unr-lcssa, label %.lr.ph884, !llvm.loop !69

._crit_edge885.loopexit.unr-lcssa:                ; preds = %.lr.ph884
  %lcmp.mod1573.not = icmp eq i32 %xtraiter1571, 0
  br i1 %lcmp.mod1573.not, label %._crit_edge885.loopexit, label %.lr.ph884.epil.preheader

.lr.ph884.epil.preheader:                         ; preds = %._crit_edge885.loopexit.unr-lcssa, %.lr.ph884.preheader
  %.4398882.epil.init = phi i32 [ %.3397, %.lr.ph884.preheader ], [ %.5399.1, %._crit_edge885.loopexit.unr-lcssa ] ; 2 uses
  %.4404881.epil.init = phi i32 [ %.3403, %.lr.ph884.preheader ], [ %.5405.1, %._crit_edge885.loopexit.unr-lcssa ] ; 2 uses
  %.3450880.epil.init = phi i32 [ %.2449, %.lr.ph884.preheader ], [ %i.cd, %._crit_edge885.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1576 = trunc i32 %.2437 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1576)
  %i.cj = icmp slt i32 %.3450880.epil.init, 9
  %i.ck = mul i32 %.4404881.epil.init, 10
  %i.cl = mul i32 %.4398882.epil.init, 10
  %.5405.epil = select i1 %i.cj, i32 %i.ck, i32 %.4404881.epil.init
  %i.cm = add i32 %.3450880.epil.init, -17
  %i.cn = icmp ult i32 %i.cm, -8
  %.5399.epil = select i1 %i.cn, i32 %.4398882.epil.init, i32 %i.cl
  br label %._crit_edge885.loopexit

._crit_edge885.loopexit:                          ; preds = %._crit_edge885.loopexit.unr-lcssa, %.lr.ph884.epil.preheader
  %.5405.lcssa = phi i32 [ %.5405.1, %._crit_edge885.loopexit.unr-lcssa ], [ %.5405.epil, %.lr.ph884.epil.preheader ]
  %.5399.lcssa = phi i32 [ %.5399.1, %._crit_edge885.loopexit.unr-lcssa ], [ %.5399.epil, %.lr.ph884.epil.preheader ]
  %i.co = add i32 %.2449, %.2437
  br label %._crit_edge885

._crit_edge885:                                   ; preds = %._crit_edge885.loopexit, %bb.m
  %.3450.lcssa = phi i32 [ %.2449, %bb.m ], [ %i.co, %._crit_edge885.loopexit ] ; 3 uses
  %.4404.lcssa = phi i32 [ %.3403, %bb.m ], [ %.5405.lcssa, %._crit_edge885.loopexit ] ; 3 uses
  %.4398.lcssa = phi i32 [ %.3397, %bb.m ], [ %.5399.lcssa, %._crit_edge885.loopexit ] ; 3 uses
  %i.cp = add nsw i32 %.3450.lcssa, 1             ; 3 uses
  %i.cq = icmp slt i32 %.3450.lcssa, 9
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge885
  %i.cr = mul i32 %.4404.lcssa, 10
  %i.cs = add i32 %i.cr, %i.bv
  br label %bb.q

bb.o:                                             ; preds = %._crit_edge885
  %i.ct = icmp samesign ult i32 %.3450.lcssa, 17
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = mul i32 %.4398.lcssa, 10
  %i.cv = add i32 %i.cu, %i.bv
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.l
  %.4451 = phi i32 [ %.2449, %bb.l ], [ %i.cp, %bb.o ], [ %i.cp, %bb.p ], [ %i.cp, %bb.n ]
  %.2442 = phi i32 [ %.1441, %bb.l ], [ %i.bw, %bb.o ], [ %i.bw, %bb.p ], [ %i.bw, %bb.n ]
  %.3438 = phi i32 [ %i.bu, %bb.l ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.n ]
  %.3432 = phi i32 [ %.2431, %bb.l ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.n ]
  %.7407 = phi i32 [ %.3403, %bb.l ], [ %.4404.lcssa, %bb.o ], [ %.4404.lcssa, %bb.p ], [ %i.cs, %bb.n ]
  %.7 = phi i32 [ %.3397, %bb.l ], [ %.4398.lcssa, %bb.o ], [ %i.cv, %bb.p ], [ %.4398.lcssa, %bb.n ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.7421, i64 1
  %i.cx = freeze i32 %.2442
  br label %bb.k, !llvm.loop !70

bb.r:                                             ; preds = %bb.k
  %i.cy = icmp slt i32 %.1448, 0
  %spec.store.select = select i1 %i.cy, i32 17, i32 %.1448
  %i.cz = icmp slt i32 %.0440, 0
  %spec.select719 = select i1 %i.cz, i32 17, i32 %.0440
  br label %.thread

.thread:                                          ; preds = %.critedge.thread, %bb.r, %.critedge, %._crit_edge874
  %.0447.lcssa11511167 = phi i32 [ %i.ad, %.critedge ], [ %.0447.lcssa115111681179, %bb.r ], [ 0, %._crit_edge874 ], [ 0, %.critedge.thread ] ; 2 uses
  %spec.store.select708 = phi i32 [ %i.ad, %.critedge ], [ %spec.store.select, %bb.r ], [ 0, %._crit_edge874 ], [ 0, %.critedge.thread ] ; 14 uses
  %.8707 = phi i32 [ %.1395, %.critedge ], [ %.2396, %bb.r ], [ 0, %._crit_edge874 ], [ 0, %.critedge.thread ]
  %.8408706 = phi i32 [ %.1401, %.critedge ], [ %.2402, %bb.r ], [ 0, %._crit_edge874 ], [ 0, %.critedge.thread ] ; 4 uses
  %.2413705 = phi ptr [ %.3417, %.critedge ], [ %.0411, %bb.r ], [ %.3417, %._crit_edge874 ], [ %.3417, %.critedge.thread ] ; 15 uses
  %.8422704 = phi ptr [ %i.ae, %.critedge ], [ %.6420, %bb.r ], [ %.5419.lcssa, %._crit_edge874 ], [ %.3417, %.critedge.thread ] ; 7 uses
  %.4433703 = phi i32 [ %.0429.lcssa, %.critedge ], [ %.1430, %bb.r ], [ 0, %._crit_edge874 ], [ 0, %.critedge.thread ]
  %.4439702 = phi i32 [ 0, %.critedge ], [ %.1436, %bb.r ], [ %.0435.lcssa, %._crit_edge874 ], [ 0, %.critedge.thread ] ; 2 uses
  %.3477701 = phi i32 [ %i.ag, %.critedge ], [ %.1475, %bb.r ], [ %.0474.lcssa, %._crit_edge874 ], [ %i.r, %.critedge.thread ]
  %.sroa.0.2700 = phi i32 [ %i.am, %.critedge ], [ %.sroa.0.0, %bb.r ], [ 0, %._crit_edge874 ], [ 0, %.critedge.thread ]
  %.sroa.6.2699 = phi i32 [ %i.am, %.critedge ], [ %.sroa.6.0, %bb.r ], [ 1, %._crit_edge874 ], [ 0, %.critedge.thread ] ; 3 uses
  %.sroa.12.0698 = phi i32 [ 0, %.critedge ], [ %i.bq, %bb.r ], [ 1, %._crit_edge874 ], [ 0, %.critedge.thread ] ; 3 uses
  %i.da = phi i32 [ 0, %.critedge ], [ %spec.select719, %bb.r ], [ 0, %._crit_edge874 ], [ 0, %.critedge.thread ]
  %i.db = and i32 %.3477701, -33
  %or.cond3 = icmp eq i32 %i.db, 69
  br i1 %or.cond3, label %bb.s, label %bb.y

bb.s:                                             ; preds = %.thread
  %i.dc = icmp ne i32 %spec.store.select708, 0
  %i.dd = icmp ne i32 %.4439702, 0
  %or.cond5 = select i1 %i.dc, i1 true, i1 %i.dd
  %or.cond7 = or i1 %i.n, %or.cond5
  br i1 %or.cond7, label %bb.t, label %Bfree.exit584

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %.8422704, i64 1 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !52  ; 2 uses
  switch i8 %i.df, label %bb.w [
    i8 45, label %bb.u
    i8 43, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dg = phi i1 [ false, %bb.u ], [ true, %bb.t ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.8422704, i64 2 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.4478.in = phi i8 [ %i.df, %bb.t ], [ %i.di, %bb.v ] ; 3 uses
  %.1468 = phi i1 [ true, %bb.t ], [ %i.dg, %bb.v ]
  %.9423 = phi ptr [ %i.de, %bb.t ], [ %i.dh, %bb.v ] ; 2 uses
  %i.dj = add i8 %.4478.in, -48
  %or.cond9 = icmp ult i8 %i.dj, 10
  br i1 %or.cond9, label %.preheader733, label %bb.y

.preheader733:                                    ; preds = %bb.w
  %i.dk = icmp eq i8 %.4478.in, 48
  br i1 %i.dk, label %.lr.ph890, label %._crit_edge891

.lr.ph890:                                        ; preds = %.preheader733, %.lr.ph890
  %.10424889 = phi ptr [ %i.dl, %.lr.ph890 ], [ %.9423, %.preheader733 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.10424889, i64 1 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52  ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 48
  br i1 %i.dn, label %.lr.ph890, label %._crit_edge891, !llvm.loop !71

._crit_edge891:                                   ; preds = %.lr.ph890, %.preheader733
  %.5479.in.lcssa = phi i8 [ %.4478.in, %.preheader733 ], [ %i.dm, %.lr.ph890 ] ; 2 uses
  %.10424.lcssa = phi ptr [ %.9423, %.preheader733 ], [ %i.dl, %.lr.ph890 ] ; 3 uses
  %i.do = add i8 %.5479.in.lcssa, -49
  %or.cond11 = icmp ult i8 %i.do, 9
  br i1 %or.cond11, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge891
  %narrow = add nsw i8 %.5479.in.lcssa, -48
  %i.dp = zext nneg i8 %narrow to i32             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.10424.lcssa, i64 1 ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !52  ; 2 uses
  %i.ds = add i8 %i.dr, -48
  %i.dt = icmp ult i8 %i.ds, 10
  br i1 %i.dt, label %.lr.ph896, label %._crit_edge897

.lr.ph896:                                        ; preds = %bb.x, %.lr.ph896
  %i.du = phi i8 [ %i.eb, %.lr.ph896 ], [ %i.dr, %bb.x ]
  %i.dv = phi ptr [ %i.ea, %.lr.ph896 ], [ %i.dq, %bb.x ]
  %.0409894 = phi i32 [ %i.dz, %.lr.ph896 ], [ %i.dp, %bb.x ]
  %i.dw = zext nneg i8 %i.du to i32
  %i.dx = mul i32 %.0409894, 10
  %i.dy = add i32 %i.dx, -48
  %i.dz = add i32 %i.dy, %i.dw                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !52  ; 2 uses
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  br i1 %i.ed, label %.lr.ph896, label %._crit_edge897.loopexit, !llvm.loop !72

._crit_edge897.loopexit:                          ; preds = %.lr.ph896
  %i.ee = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 19999)
  br label %._crit_edge897

._crit_edge897:                                   ; preds = %._crit_edge897.loopexit, %bb.x
  %.0409.lcssa = phi i32 [ %i.dp, %bb.x ], [ %i.ee, %._crit_edge897.loopexit ]
  %.lcssa842 = phi ptr [ %i.dq, %bb.x ], [ %i.ea, %._crit_edge897.loopexit ] ; 2 uses
  %i.ef = ptrtoint ptr %.lcssa842 to i64
  %i.eg = ptrtoint ptr %.10424.lcssa to i64
  %i.eh = sub i64 %i.ef, %i.eg
end_hunk_0
begin_hunk_1_@zend_strtod:bb.a
  br label %Bfree.exit584

bb.be:                                            ; preds = %bb.bc
  %i.hk = sext i32 %i.hi to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.hk ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !14
  store ptr %i.hm, ptr %.1, align 8, !tbaa !16
  store ptr %.1, ptr %i.hl, align 8, !tbaa !14
  br label %Bfree.exit584

bb.bf:                                            ; preds = %bb.ao
  %i.hn = icmp samesign ugt i32 %i.fz, 31
  br i1 %i.hn, label %.lr.ph908.preheader, label %._crit_edge909

.lr.ph908.preheader:                              ; preds = %bb.bf
  %i.ho = lshr i32 %i.fz, 4
  br label %.lr.ph908

.lr.ph908:                                        ; preds = %.lr.ph908.preheader, %bb.bh
  %indvars.iv1041.a = phi i64 [ 0, %.lr.ph908.preheader ], [ %indvars.iv.next1042, %bb.bh ] ; 2 uses
  %.0469905 = phi i32 [ %i.ho, %.lr.ph908.preheader ], [ %i.hv, %bb.bh ] ; 3 uses
  %i.hp = phi double [ %.promoted903, %.lr.ph908.preheader ], [ %i.hu, %bb.bh ] ; 2 uses
  %i.hq = and i32 %.0469905, 1
  %.not556 = icmp eq i32 %i.hq, 0
  br i1 %.not556, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph908
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1041.a
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !54
  %i.ht = fmul double %i.hs, %i.hp
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph908, %bb.bg
  %i.hu = phi double [ %i.hp, %.lr.ph908 ], [ %i.ht, %bb.bg ] ; 2 uses
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041.a, 1 ; 2 uses
  %i.hv = lshr i32 %.0469905, 1
  %i.hw = icmp samesign ugt i32 %.0469905, 3
  br i1 %i.hw, label %.lr.ph908, label %._crit_edge909, !llvm.loop !73

._crit_edge909:                                   ; preds = %bb.bh, %bb.bf
  %.lcssa904 = phi double [ %.promoted903, %bb.bf ], [ %i.hu, %bb.bh ] ; 2 uses
  %.0454.lcssa = phi i64 [ 0, %bb.bf ], [ %indvars.iv.next1042, %bb.bh ]
  store double %.lcssa904, ptr %2, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.hy = bitcast double %.lcssa904 to i64
  %i.hz = lshr i64 %i.hy, 32
  %i.ia = trunc nuw i64 %i.hz to i32
  %i.ib = add i32 %i.ia, -55574528
  store i32 %i.ib, ptr %i.hx, align 4, !tbaa !52
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %.0454.lcssa
  %i.id = load double, ptr %i.ic, align 8, !tbaa !54
  %i.ie = load double, ptr %2, align 8, !tbaa !52
  %i.if = fmul double %i.id, %i.ie                ; 2 uses
  store double %i.if, ptr %2, align 8, !tbaa !52
  %i.ig = bitcast double %i.if to i64
  %i.ih = lshr i64 %i.ig, 32
  %i.ii = trunc nuw i64 %i.ih to i32              ; 2 uses
  %i.ij = and i32 %i.ii, 2146435072               ; 2 uses
  %i.ik = icmp samesign ugt i32 %i.ij, 2090860544
  br i1 %i.ik, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge909
  %i.il = icmp samesign ugt i32 %i.ij, 2089811968
  br i1 %i.il, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 2146435071, ptr %i.hx, align 4, !tbaa !52
  store i32 -1, ptr %2, align 8, !tbaa !52
  br label %bb.cc

bb.bk:                                            ; preds = %bb.bi
  %i.im = add i32 %i.ii, 55574528
  store i32 %i.im, ptr %i.hx, align 4, !tbaa !52
  br label %bb.cc

bb.bl:                                            ; preds = %bb.ak
  %i.in = icmp slt i32 %i.fz, 0
  br i1 %i.in, label %bb.bm, label %bb.cc

bb.bm:                                            ; preds = %bb.bl
  %i.io = sub nsw i32 0, %i.fz                    ; 4 uses
  %i.ip = and i32 %i.io, 15                       ; 2 uses
  %.not526 = icmp eq i32 %i.ip, 0
  br i1 %.not526, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8, !tbaa !54
  %i.it = fdiv double %i.fx, %i.is                ; 2 uses
  store double %i.it, ptr %2, align 8, !tbaa !52
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.promoted = phi double [ %i.it, %bb.bn ], [ %i.fx, %bb.bm ]
  %i.iu = lshr i32 %i.io, 4                       ; 2 uses
  %.not527 = icmp eq i32 %i.iu, 0
  br i1 %.not527, label %bb.cc, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iv = icmp samesign ugt i32 %i.io, 511
  br i1 %i.iv, label %bb.cb, label %.preheader1330

.preheader1330:                                   ; preds = %bb.bp, %bb.br
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.br ], [ 0, %bb.bp ] ; 2 uses
  %.1470901 = phi i32 [ %i.jc, %bb.br ], [ %i.iu, %bb.bp ] ; 2 uses
  %i.iw = phi double [ %i.jb, %bb.br ], [ %.promoted, %bb.bp ] ; 2 uses
  %i.ix = and i32 %.1470901, 1
  %.not531 = icmp eq i32 %i.ix, 0
  br i1 %.not531, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.preheader1330
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !54
  %i.ja = fmul double %i.iz, %i.iw
  br label %bb.br

bb.br:                                            ; preds = %.preheader1330, %bb.bq
  %i.jb = phi double [ %i.iw, %.preheader1330 ], [ %i.ja, %bb.bq ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.jc = lshr i32 %.1470901, 1                   ; 2 uses
  %.not529 = icmp eq i32 %i.jc, 0
  br i1 %.not529, label %bb.bs, label %.preheader1330, !llvm.loop !74

bb.bs:                                            ; preds = %bb.br
  %.not528 = icmp samesign ult i32 %i.io, 256     ; 2 uses
  %spec.select720 = select i1 %.not528, i32 0, i32 106
  store double %i.jb, ptr %2, align 8
  %i.jd = bitcast double %i.jb to i64             ; 2 uses
  %i.je = lshr i64 %i.jd, 32
  %i.jf = trunc nuw i64 %i.je to i32              ; 2 uses
  %i.jg = trunc i64 %i.jd to i32
  br i1 %.not528, label %bb.ca, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ji = lshr i32 %i.jf, 20
  %i.jj = and i32 %i.ji, 2047                     ; 6 uses
  %i.jk = sub nuw nsw i32 107, %i.jj
  %i.jl = icmp samesign ult i32 %i.jj, 107
  br i1 %i.jl, label %bb.bu, label %thread-pre-split

bb.bu:                                            ; preds = %bb.bt
  %i.jm = icmp samesign ult i32 %i.jj, 76
  br i1 %i.jm, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.jn = icmp samesign ult i32 %i.jj, 53
  br i1 %i.jn, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %2, align 8, !tbaa !52
  %i.jo = icmp samesign ult i32 %i.jj, 55
  br i1 %i.jo, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 57671680, ptr %i.jh, align 4, !tbaa !52
  br label %thread-pre-split

bb.by:                                            ; preds = %bb.bw
  %i.jp = sub nuw nsw i32 75, %i.jj
  %i.jq = shl nsw i32 -1, %i.jp
  %i.jr = and i32 %i.jq, %i.jf
  store i32 %i.jr, ptr %i.jh, align 4, !tbaa !52
  br label %thread-pre-split

bb.bz:                                            ; preds = %bb.bu
  %i.js = shl nsw i32 -1, %i.jk
  %i.jt = and i32 %i.js, %i.jg
  store i32 %i.jt, ptr %2, align 8, !tbaa !52
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bt, %bb.bx, %bb.by, %bb.bz
  %.pr = load double, ptr %2, align 8, !tbaa !52
  br label %bb.ca

bb.ca:                                            ; preds = %thread-pre-split, %bb.bs
  %i.ju = phi double [ %.pr, %thread-pre-split ], [ %i.jb, %bb.bs ]
  %i.jv = fcmp une double %i.ju, 0.000000e+00
  br i1 %i.jv, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %sulp.exit613, %bb.ek, %bb.iu, %bb.fd, %bb.ca, %bb.bv, %bb.bp
  %.2391 = phi ptr [ %.4393, %bb.iu ], [ %.4393, %bb.ek ], [ undef, %bb.ca ], [ %.4393, %bb.fd ], [ undef, %bb.bp ], [ undef, %bb.bv ], [ %.4393, %sulp.exit613 ]
  %.2386 = phi ptr [ %.4388, %bb.iu ], [ %.4388, %bb.ek ], [ undef, %bb.ca ], [ %.4388, %bb.fd ], [ undef, %bb.bp ], [ undef, %bb.bv ], [ %.4388, %sulp.exit613 ]
  %.2383 = phi ptr [ null, %bb.iu ], [ %.228.lcssa.i, %bb.ek ], [ null, %bb.ca ], [ %.228.lcssa.i, %bb.fd ], [ null, %bb.bp ], [ null, %bb.bv ], [ %.228.lcssa.i, %sulp.exit613 ]
  %.2378 = phi ptr [ %.4380, %bb.iu ], [ %.4380, %bb.ek ], [ undef, %bb.ca ], [ %.4380, %bb.fd ], [ undef, %bb.bp ], [ undef, %bb.bv ], [ %.4380, %sulp.exit613 ]
  %.2 = phi ptr [ %.5, %bb.iu ], [ %.3, %bb.ek ], [ undef, %bb.ca ], [ %i.rr, %bb.fd ], [ undef, %bb.bp ], [ undef, %bb.bv ], [ %i.rr, %sulp.exit613 ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !52
  br label %bb.ap

bb.cc:                                            ; preds = %bb.bl, %bb.ca, %bb.bo, %bb.an, %bb.bk, %bb.bj
  %.sroa.44670.1 = phi i32 [ 0, %bb.an ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ %spec.select720, %bb.ca ], [ 0, %bb.bl ] ; 5 uses
  %i.jw = sub nsw i32 %spec.store.select708, %.4433703 ; 6 uses
  %i.jx = icmp sgt i32 %spec.store.select708, 40
  br i1 %i.jx, label %bb.cd, label %.loopexit731

bb.cd:                                            ; preds = %bb.cc
  %i.jy = icmp slt i32 %spec.select562.a, 18
  %i.jz = add nsw i32 %.sroa.12.0698, 18
  %.2456 = select i1 %i.jy, i32 %i.jz, i32 18
  %4 = add nsw i32 %.sroa.0.2700, -1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %bb.cd
  %.1462 = phi i32 [ 18, %bb.cd ], [ %i.kd, %bb.ce ] ; 12 uses
  %.3457 = phi i32 [ %.2456, %bb.cd ], [ %.4458, %bb.ce ]
  %5 = add nsw i32 %.3457, -1                     ; 3 uses
  %6 = icmp slt i32 %5, %.sroa.6.2699
  %spec.select561 = tail call i32 @llvm.smin.i32(i32 %5, i32 %4)
  %.4458 = select i1 %6, i32 %spec.select561, i32 %5 ; 2 uses
  %i.ka = sext i32 %.4458 to i64
  %i.kb = getelementptr inbounds i8, ptr %.2413705, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !52
  %.not536.a = icmp eq i8 %i.kc, 48
  %i.kd = add nsw i32 %.1462, -1
  br i1 %.not536.a, label %bb.ce, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ke = sub nsw i32 %spec.store.select708, %.1462
  %i.kf = add nsw i32 %i.ke, %i.el                ; 4 uses
  %spec.select564 = tail call i32 @llvm.smin.i32(i32 %spec.select562.a, i32 %.1462) ; 9 uses
  %i.kg = icmp slt i32 %.1462, 9
  br i1 %i.kg, label %.preheader732, label %.loopexit731

.preheader732:                                    ; preds = %bb.cf
  %i.kh = icmp sgt i32 %spec.select564, 0
  br i1 %i.kh, label %.lr.ph914.preheader, label %.preheader

.lr.ph914.preheader:                              ; preds = %.preheader732
  %wide.trip.count = zext nneg i32 %spec.select564 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ki = icmp ult i32 %spec.select564, 4
  br i1 %i.ki, label %.lr.ph914.epil.preheader, label %.lr.ph914.preheader.new

.lr.ph914.preheader.new:                          ; preds = %.lr.ph914.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph914

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph914
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph914.epil.preheader

.lr.ph914.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph914.preheader
  %indvars.iv1044.epil.init = phi i64 [ 0, %.lr.ph914.preheader ], [ %indvars.iv.next1045.3, %.preheader.loopexit.unr-lcssa ]
  %.9913.epil.init = phi i32 [ 0, %.lr.ph914.preheader ], [ %i.mb, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1568 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1568)
  br label %.lr.ph914.epil

.lr.ph914.epil:                                   ; preds = %.lr.ph914.epil, %.lr.ph914.epil.preheader
  %indvars.iv1044.epil = phi i64 [ %indvars.iv1044.epil.init, %.lr.ph914.epil.preheader ], [ %indvars.iv.next1045.epil, %.lr.ph914.epil ] ; 2 uses
  %.9913.epil = phi i32 [ %.9913.epil.init, %.lr.ph914.epil.preheader ], [ %i.ko, %.lr.ph914.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph914.epil.preheader ], [ %epil.iter.next, %.lr.ph914.epil ]
  %i.kj = mul i32 %.9913.epil, 10
  %i.kk = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1044.epil
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !52
  %i.km = sext i8 %i.kl to i32
  %i.kn = add i32 %i.kj, -48
  %i.ko = add i32 %i.kn, %i.km                    ; 2 uses
  %indvars.iv.next1045.epil = add nuw nsw i64 %indvars.iv1044.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph914.epil, !llvm.loop !75

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph914.epil, %.preheader732
  %.2463.lcssa = phi i32 [ 0, %.preheader732 ], [ %spec.select564, %.lr.ph914.epil ], [ %spec.select564, %.preheader.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa = phi i32 [ 0, %.preheader732 ], [ %i.mb, %.preheader.loopexit.unr-lcssa ], [ %i.ko, %.lr.ph914.epil ] ; 3 uses
  %i.kp = icmp slt i32 %.2463.lcssa, %.1462
  br i1 %i.kp, label %.lr.ph920.preheader, label %._crit_edge.thread.i

.lr.ph920.preheader:                              ; preds = %.preheader
  %i.kq = sext i32 %.sroa.6.2699 to i64           ; 2 uses
  %i.kr = sub i32 %.1462, %.2463.lcssa
  %xtraiter1569 = and i32 %i.kr, 3                ; 2 uses
  %lcmp.mod1570.not = icmp eq i32 %xtraiter1569, 0
  br i1 %lcmp.mod1570.not, label %.lr.ph920.prol.loopexit, label %.lr.ph920.prol

.lr.ph920.prol:                                   ; preds = %.lr.ph920.preheader, %.lr.ph920.prol
  %indvars.iv1049.prol = phi i64 [ %indvars.iv.next1050.prol, %.lr.ph920.prol ], [ %i.kq, %.lr.ph920.preheader ] ; 2 uses
  %.10919.prol = phi i32 [ %i.kx, %.lr.ph920.prol ], [ %.9.lcssa, %.lr.ph920.preheader ]
  %.3464917.prol = phi i32 [ %i.ky, %.lr.ph920.prol ], [ %.2463.lcssa, %.lr.ph920.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph920.prol ], [ 0, %.lr.ph920.preheader ]
  %i.ks = mul i32 %.10919.prol, 10
  %indvars.iv.next1050.prol = add nsw i64 %indvars.iv1049.prol, 1 ; 2 uses
  %i.kt = getelementptr inbounds i8, ptr %.2413705, i64 %indvars.iv1049.prol
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !52
  %i.kv = sext i8 %i.ku to i32
  %i.kw = add i32 %i.ks, -48
  %i.kx = add i32 %i.kw, %i.kv                    ; 3 uses
  %i.ky = add nuw nsw i32 %.3464917.prol, 1       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1569
  br i1 %prol.iter.cmp.not, label %.lr.ph920.prol.loopexit, label %.lr.ph920.prol, !llvm.loop !76

.lr.ph920.prol.loopexit:                          ; preds = %.lr.ph920.prol, %.lr.ph920.preheader
  %.lcssa1538.unr = phi i32 [ poison, %.lr.ph920.preheader ], [ %i.kx, %.lr.ph920.prol ]
  %indvars.iv1049.unr = phi i64 [ %i.kq, %.lr.ph920.preheader ], [ %indvars.iv.next1050.prol, %.lr.ph920.prol ]
  %.10919.unr = phi i32 [ %.9.lcssa, %.lr.ph920.preheader ], [ %i.kx, %.lr.ph920.prol ]
  %.3464917.unr = phi i32 [ %.2463.lcssa, %.lr.ph920.preheader ], [ %i.ky, %.lr.ph920.prol ]
  %i.kz = sub i32 %.2463.lcssa, %.1462
  %i.la = icmp ugt i32 %i.kz, -4
  br i1 %i.la, label %._crit_edge.thread.i, label %.lr.ph920

.lr.ph914:                                        ; preds = %.lr.ph914, %.lr.ph914.preheader.new
  %indvars.iv1044 = phi i64 [ 0, %.lr.ph914.preheader.new ], [ %indvars.iv.next1045.3, %.lr.ph914 ] ; 5 uses
  %.9913 = phi i32 [ 0, %.lr.ph914.preheader.new ], [ %i.mb, %.lr.ph914 ]
  %niter = phi i64 [ 0, %.lr.ph914.preheader.new ], [ %niter.next.3, %.lr.ph914 ]
  %i.lb = mul i32 %.9913, 10
  %i.lc = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1044
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !52
  %i.le = sext i8 %i.ld to i32
  %i.lf = add i32 %i.lb, -48
  %i.lg = add i32 %i.lf, %i.le
  %i.lh = mul i32 %i.lg, 10
  %i.li = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1044
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !52
  %i.ll = sext i8 %i.lk to i32
  %i.lm = add i32 %i.lh, -48
  %i.ln = add i32 %i.lm, %i.ll
  %i.lo = mul i32 %i.ln, 10
  %i.lp = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1044
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !52
  %i.ls = sext i8 %i.lr to i32
  %i.lt = add i32 %i.lo, -48
  %i.lu = add i32 %i.lt, %i.ls
  %i.lv = mul i32 %i.lu, 10
  %i.lw = getelementptr inbounds nuw i8, ptr %.2413705, i64 %indvars.iv1044
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 3
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !52
  %i.lz = sext i8 %i.ly to i32
  %i.ma = add i32 %i.lv, -48
  %i.mb = add i32 %i.ma, %i.lz                    ; 3 uses
  %indvars.iv.next1045.3 = add nuw nsw i64 %indvars.iv1044, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph914, !llvm.loop !77

.lr.ph920:                                        ; preds = %.lr.ph920.prol.loopexit, %.lr.ph920
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050.3, %.lr.ph920 ], [ %indvars.iv1049.unr, %.lr.ph920.prol.loopexit ] ; 5 uses
  %.10919 = phi i32 [ %i.nc, %.lr.ph920 ], [ %.10919.unr, %.lr.ph920.prol.loopexit ]
  %.3464917 = phi i32 [ %i.nd, %.lr.ph920 ], [ %.3464917.unr, %.lr.ph920.prol.loopexit ]
  %i.mc = mul i32 %.10919, 10
  %i.md = getelementptr inbounds i8, ptr %.2413705, i64 %indvars.iv1049
  %i.me = load i8, ptr %i.md, align 1, !tbaa !52
  %i.mf = sext i8 %i.me to i32
  %i.mg = add i32 %i.mc, -48
  %i.mh = add i32 %i.mg, %i.mf
  %i.mi = mul i32 %i.mh, 10
  %i.mj = getelementptr i8, ptr %.2413705, i64 %indvars.iv1049
  %i.mk = getelementptr i8, ptr %i.mj, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !52
  %i.mm = sext i8 %i.ml to i32
  %i.mn = add i32 %i.mi, -48
  %i.mo = add i32 %i.mn, %i.mm
  %i.mp = mul i32 %i.mo, 10
  %i.mq = getelementptr i8, ptr %.2413705, i64 %indvars.iv1049
  %i.mr = getelementptr i8, ptr %i.mq, i64 2
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !52
  %i.mt = sext i8 %i.ms to i32
  %i.mu = add i32 %i.mp, -48
  %i.mv = add i32 %i.mu, %i.mt
  %i.mw = mul i32 %i.mv, 10
  %indvars.iv.next1050.3 = add nsw i64 %indvars.iv1049, 4
  %i.mx = getelementptr i8, ptr %.2413705, i64 %indvars.iv1049
  %i.my = getelementptr i8, ptr %i.mx, i64 3
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !52
  %i.na = sext i8 %i.mz to i32
  %i.nb = add i32 %i.mw, -48
  %i.nc = add i32 %i.nb, %i.na                    ; 2 uses
  %i.nd = add nuw nsw i32 %.3464917, 4            ; 2 uses
  %exitcond1053.not.3 = icmp eq i32 %i.nd, %.1462
  br i1 %exitcond1053.not.3, label %._crit_edge.thread.i, label %.lr.ph920, !llvm.loop !78

.loopexit731:                                     ; preds = %bb.cf, %bb.cc
  %.2473 = phi i32 [ %i.el, %bb.cc ], [ %i.kf, %bb.cf ] ; 3 uses
  %.6453 = phi i32 [ %spec.store.select708, %bb.cc ], [ %.1462, %bb.cf ] ; 5 uses
  %.2446 = phi i32 [ %spec.select562.a, %bb.cc ], [ %spec.select564, %bb.cf ] ; 3 uses
  %i.ne = add nuw nsw i32 %.6453, 8
  %i.nf = sdiv i32 %i.ne, 9
  %i.ng = icmp sgt i32 %.6453, 9
  br i1 %i.ng, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.loopexit731, %.lr.ph.i
  %.037.i = phi i32 [ %i.nh, %.lr.ph.i ], [ 1, %.loopexit731 ]
  %.02436.i = phi i32 [ %i.ni, %.lr.ph.i ], [ 0, %.loopexit731 ] ; 2 uses
  %i.nh = shl i32 %.037.i, 1                      ; 2 uses
  %i.ni = add nuw nsw i32 %.02436.i, 1            ; 3 uses
  %i.nj = icmp sgt i32 %i.nf, %i.nh
  br i1 %i.nj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.nk = icmp samesign ult i32 %.02436.i, 7
  br i1 %i.nk, label %._crit_edge.thread.i, label %bb.ch

._crit_edge.thread.i:                             ; preds = %.lr.ph920.prol.loopexit, %.lr.ph920, %.preheader, %._crit_edge.i, %.loopexit731
  %.111198 = phi i32 [ %.8408706, %._crit_edge.i ], [ %.8408706, %.loopexit731 ], [ %.9.lcssa, %.preheader ], [ %.lcssa1538.unr, %.lr.ph920.prol.loopexit ], [ %i.nc, %.lr.ph920 ] ; 2 uses
  %.24461195 = phi i32 [ %.2446, %._crit_edge.i ], [ %.2446, %.loopexit731 ], [ %spec.select564, %.preheader ], [ %spec.select564, %.lr.ph920 ], [ %spec.select564, %.lr.ph920.prol.loopexit ] ; 2 uses
  %.64531192 = phi i32 [ %.6453, %._crit_edge.i ], [ %.6453, %.loopexit731 ], [ %.1462, %.preheader ], [ %.1462, %.lr.ph920 ], [ %.1462, %.lr.ph920.prol.loopexit ] ; 2 uses
  %.24731189 = phi i32 [ %.2473, %._crit_edge.i ], [ %.2473, %.loopexit731 ], [ %i.kf, %.preheader ], [ %i.kf, %.lr.ph920 ], [ %i.kf, %.lr.ph920.prol.loopexit ] ; 2 uses
  %.024.lcssa55.i = phi i32 [ %i.ni, %._crit_edge.i ], [ 0, %.loopexit731 ], [ 0, %.preheader ], [ 0, %.lr.ph920 ], [ 0, %.lr.ph920.prol.loopexit ] ; 2 uses
  %i.nl = zext nneg i32 %.024.lcssa55.i to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1856), i64 %i.nl ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !14 ; 3 uses
  %.not.i.i = icmp eq ptr %i.nn, null
  br i1 %.not.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.thread.i
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !16
end_hunk_1
