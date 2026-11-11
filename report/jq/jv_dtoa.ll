Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv_dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@jvp_strtod:bb.a
bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0434 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21    ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %Bfree.exit617, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.j = phi i8 [ %i.g, %bb.a ], [ %i.i, %bb.c ]  ; 2 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.h, %bb.c ]    ; 2 uses
  %.1435 = phi i32 [ 0, %bb.a ], [ %.0434, %bb.c ] ; 14 uses
  %i.k = icmp eq i8 %i.j, 48                      ; 3 uses
  br i1 %i.k, label %.preheader790, label %.loopexit791

.preheader790:                                    ; preds = %bb.d, %.preheader790
  %.1742 = phi ptr [ %i.l, %.preheader790 ], [ %.0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.1742, i64 1 ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21    ; 2 uses
  switch i8 %i.m, label %.loopexit791 [
    i8 48, label %.preheader790
    i8 0, label %Bfree.exit617
  ]

.loopexit791:                                     ; preds = %.preheader790, %bb.d
  %i.n = phi i8 [ %i.j, %bb.d ], [ %i.m, %.preheader790 ] ; 3 uses
  %.2743 = phi ptr [ %.0, %bb.d ], [ %i.l, %.preheader790 ] ; 11 uses
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %i.p = add i8 %i.n, -48
  %i.q = icmp ult i8 %i.p, 10
  br i1 %i.q, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.loopexit791, %bb.h
  %i.r = phi i32 [ %i.ad, %bb.h ], [ %i.o, %.loopexit791 ] ; 2 uses
  %.0408921 = phi i32 [ %.1409, %bb.h ], [ 0, %.loopexit791 ] ; 3 uses
  %.0414920 = phi i32 [ %.1415, %bb.h ], [ 0, %.loopexit791 ] ; 3 uses
  %.0455919 = phi i32 [ %i.aa, %bb.h ], [ 0, %.loopexit791 ] ; 3 uses
  %.3744918 = phi ptr [ %i.ab, %bb.h ], [ %.2743, %.loopexit791 ] ; 2 uses
  %i.s = icmp samesign ult i32 %.0455919, 9
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.t = mul i32 %.0414920, 10
  %i.u = add i32 %i.t, -48
  %i.v = add i32 %i.u, %i.r
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.w = icmp samesign ult i32 %.0455919, 16
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = mul i32 %.0408921, 10
  %i.y = add i32 %i.x, -48
  %i.z = add i32 %i.y, %i.r
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.1415 = phi i32 [ %i.v, %bb.e ], [ %.0414920, %bb.g ], [ %.0414920, %bb.f ] ; 3 uses
  %.1409 = phi i32 [ %.0408921, %bb.e ], [ %i.z, %bb.g ], [ %.0408921, %bb.f ] ; 3 uses
  %i.aa = add nuw nsw i32 %.0455919, 1            ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.3744918, i64 1 ; 6 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21  ; 3 uses
  %i.ad = sext i8 %i.ac to i32                    ; 2 uses
  %i.ae = add i8 %i.ac, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ah = ptrtoint ptr %.2743 to i64              ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32                  ; 4 uses
  %i.ak = icmp ugt ptr %i.ab, %.2743
  br i1 %i.ak, label %.lr.ph930.preheader, label %.critedge

.lr.ph930.preheader:                              ; preds = %._crit_edge
  %i.al = trunc i64 %i.ag to i32
  %i.am = trunc i64 %i.ah to i32
  %i.an = sub i32 %i.al, %i.am
  br label %.lr.ph930

.lr.ph930:                                        ; preds = %.lr.ph930.preheader, %bb.i
  %.0430928 = phi ptr [ %i.ao, %bb.i ], [ %i.ab, %.lr.ph930.preheader ]
  %.0437927 = phi i32 [ %i.ar, %bb.i ], [ 0, %.lr.ph930.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.0430928, i64 -1 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.aq = icmp eq i8 %i.ap, 48
  br i1 %i.aq, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph930
  %i.ar = add nuw nsw i32 %.0437927, 1
  %i.as = icmp ugt ptr %i.ao, %.2743
  br i1 %i.as, label %.lr.ph930, label %.critedge, !llvm.loop !34

.critedge:                                        ; preds = %.lr.ph930, %bb.i, %._crit_edge
  %.0437.lcssa = phi i32 [ 0, %._crit_edge ], [ %.0437927, %.lr.ph930 ], [ %i.an, %bb.i ] ; 2 uses
  %i.at = icmp eq i8 %i.ac, 46
  br i1 %i.at, label %bb.j, label %bb.s

.critedge.thread:                                 ; preds = %.loopexit791
  %i.au = ptrtoint ptr %.2743 to i64
  %i.av = icmp eq i8 %i.n, 46
  br i1 %i.av, label %.preheader789, label %bb.s

bb.j:                                             ; preds = %.critedge
  %i.aw = getelementptr inbounds nuw i8, ptr %.3744918, i64 2 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.ah
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = sub nsw i32 %i.az, %i.aj
  br label %bb.l

.preheader789:                                    ; preds = %.critedge.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %.2743, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !21  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 48
  br i1 %i.bd, label %.lr.ph936, label %._crit_edge937

.lr.ph936:                                        ; preds = %.preheader789, %.lr.ph936
  %.0443935 = phi i32 [ %i.be, %.lr.ph936 ], [ 0, %.preheader789 ]
  %.4745934 = phi ptr [ %i.bf, %.lr.ph936 ], [ %i.bb, %.preheader789 ]
  %i.be = add nuw nsw i32 %.0443935, 1            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.4745934, i64 1 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 48
  br i1 %i.bh, label %.lr.ph936, label %._crit_edge937, !llvm.loop !35

._crit_edge937:                                   ; preds = %.lr.ph936, %.preheader789
  %.4745.lcssa = phi ptr [ %i.bb, %.preheader789 ], [ %i.bf, %.lr.ph936 ] ; 4 uses
  %.0482.lcssa.in = phi i8 [ %i.bc, %.preheader789 ], [ %i.bg, %.lr.ph936 ]
  %.0443.lcssa = phi i32 [ 0, %.preheader789 ], [ %i.be, %.lr.ph936 ] ; 2 uses
  %.0482.lcssa = sext i8 %.0482.lcssa.in to i32   ; 3 uses
  %i.bi = add nsw i32 %.0482.lcssa, -49
  %or.cond = icmp ult i32 %i.bi, 9
  br i1 %or.cond, label %bb.k, label %bb.s

bb.k:                                             ; preds = %._crit_edge937
  %i.bj = ptrtoint ptr %.4745.lcssa to i64
  %i.bk = sub i64 %i.au, %i.bj
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.r
  %i.bn = phi i32 [ %i.bq, %bb.r ], [ %i.ba, %bb.j ] ; 2 uses
  %.0455.lcssa122312381250 = phi i32 [ %.0455.lcssa122312381249, %bb.r ], [ %i.aa, %bb.j ] ; 2 uses
  %.5746 = phi ptr [ %i.ct, %bb.r ], [ %i.aw, %bb.j ] ; 3 uses
  %.sroa.6.0 = phi i32 [ %.sroa.6.1, %bb.r ], [ %i.az, %bb.j ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %.sroa.0.1, %bb.r ], [ %i.aj, %bb.j ] ; 2 uses
  %.1456 = phi i32 [ %.4459, %bb.r ], [ %i.aa, %bb.j ] ; 2 uses
  %.0448 = phi i32 [ %.2450, %bb.r ], [ 0, %bb.j ] ; 2 uses
  %.1444 = phi i32 [ %.3446, %bb.r ], [ 0, %bb.j ] ; 2 uses
  %.1438 = phi i32 [ %.3440, %bb.r ], [ %.0437.lcssa, %bb.j ] ; 2 uses
  %.0431 = phi ptr [ %.1432, %bb.r ], [ %.2743, %bb.j ] ; 2 uses
  %.2416 = phi i32 [ %.7421, %bb.r ], [ %.1415, %bb.j ] ; 2 uses
  %.2410 = phi i32 [ %.7, %bb.r ], [ %.1409, %bb.j ] ; 2 uses
  %.1483.in = load i8, ptr %.5746, align 1, !tbaa !21
  %.1483 = sext i8 %.1483.in to i32               ; 3 uses
  %i.bo = add nsw i32 %.1483, -48
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bq = phi i32 [ 1, %bb.k ], [ %i.bn, %bb.l ]
  %.0455.lcssa122312381249 = phi i32 [ 0, %bb.k ], [ %.0455.lcssa122312381250, %bb.l ]
  %.6 = phi ptr [ %.4745.lcssa, %bb.k ], [ %.5746, %bb.l ]
  %.sroa.6.1 = phi i32 [ %i.bm, %bb.k ], [ %.sroa.6.0, %bb.l ]
  %.sroa.0.1 = phi i32 [ %i.bl, %bb.k ], [ %.sroa.0.0, %bb.l ]
  %.2484 = phi i32 [ %.0482.lcssa, %bb.k ], [ %.1483, %bb.l ]
  %.2457 = phi i32 [ 0, %bb.k ], [ %.1456, %bb.l ] ; 5 uses
  %.1449 = phi i32 [ %.0443.lcssa, %bb.k ], [ %.0448, %bb.l ] ; 2 uses
  %.2445 = phi i32 [ 0, %bb.k ], [ %.1444, %bb.l ] ; 7 uses
  %.2439 = phi i32 [ 0, %bb.k ], [ %.1438, %bb.l ]
  %.1432 = phi ptr [ %.4745.lcssa, %bb.k ], [ %.0431, %bb.l ]
  %.3417 = phi i32 [ 0, %bb.k ], [ %.2416, %bb.l ] ; 4 uses
  %.3411 = phi i32 [ 0, %bb.k ], [ %.2410, %bb.l ] ; 4 uses
  %i.br = add i32 %.2445, 1                       ; 2 uses
  %i.bs = add nsw i32 %.2484, -48                 ; 3 uses
  %.not575 = icmp eq i32 %i.bs, 0
  br i1 %.not575, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = add nsw i32 %i.br, %.1449               ; 3 uses
  %.not576941 = icmp slt i32 %.2445, 1
  br i1 %.not576941, label %._crit_edge948, label %.lr.ph947.preheader

.lr.ph947.preheader:                              ; preds = %bb.n
  %xtraiter1638 = and i32 %.2445, 1
  %i.bu = icmp eq i32 %.2445, 1
  br i1 %i.bu, label %.lr.ph947.epil.preheader, label %.lr.ph947.preheader.new

.lr.ph947.preheader.new:                          ; preds = %.lr.ph947.preheader
  %unroll_iter1644 = and i32 %.2445, 2147483646
  br label %.lr.ph947

.lr.ph947:                                        ; preds = %.lr.ph947, %.lr.ph947.preheader.new
  %.4412945 = phi i32 [ %.3411, %.lr.ph947.preheader.new ], [ %.5413.1, %.lr.ph947 ] ; 2 uses
  %.4418944 = phi i32 [ %.3417, %.lr.ph947.preheader.new ], [ %.5419.1, %.lr.ph947 ] ; 3 uses
  %.3458943 = phi i32 [ %.2457, %.lr.ph947.preheader.new ], [ %i.ca, %.lr.ph947 ] ; 5 uses
  %niter1645 = phi i32 [ 0, %.lr.ph947.preheader.new ], [ %niter1645.next.1, %.lr.ph947 ]
  %i.bv = icmp slt i32 %.3458943, 9
  %i.bw = mul i32 %.4418944, 10
  %i.bx = mul i32 %.4412945, 10
  %.5419 = select i1 %i.bv, i32 %i.bw, i32 %.4418944
  %i.by = add i32 %.3458943, -16
  %i.bz = icmp ult i32 %i.by, -7
  %.5413 = select i1 %i.bz, i32 %.4412945, i32 %i.bx ; 2 uses
  %i.ca = add nsw i32 %.3458943, 2                ; 2 uses
  %i.cb = icmp slt i32 %.3458943, 8
  %i.cc = mul i32 %.4418944, 100
  %i.cd = mul i32 %.5413, 10
  %.5419.1 = select i1 %i.cb, i32 %i.cc, i32 %.5419 ; 3 uses
  %i.ce = add i32 %.3458943, -15
  %i.cf = icmp ult i32 %i.ce, -7
  %.5413.1 = select i1 %i.cf, i32 %.5413, i32 %i.cd ; 3 uses
  %niter1645.next.1 = add nuw nsw i32 %niter1645, 2 ; 2 uses
  %niter1645.ncmp.1 = icmp eq i32 %niter1645.next.1, %unroll_iter1644
  br i1 %niter1645.ncmp.1, label %._crit_edge948.loopexit.unr-lcssa, label %.lr.ph947, !llvm.loop !36

._crit_edge948.loopexit.unr-lcssa:                ; preds = %.lr.ph947
  %lcmp.mod1640.not = icmp eq i32 %xtraiter1638, 0
  br i1 %lcmp.mod1640.not, label %._crit_edge948.loopexit, label %.lr.ph947.epil.preheader

.lr.ph947.epil.preheader:                         ; preds = %._crit_edge948.loopexit.unr-lcssa, %.lr.ph947.preheader
  %.4412945.epil.init = phi i32 [ %.3411, %.lr.ph947.preheader ], [ %.5413.1, %._crit_edge948.loopexit.unr-lcssa ] ; 2 uses
  %.4418944.epil.init = phi i32 [ %.3417, %.lr.ph947.preheader ], [ %.5419.1, %._crit_edge948.loopexit.unr-lcssa ] ; 2 uses
  %.3458943.epil.init = phi i32 [ %.2457, %.lr.ph947.preheader ], [ %i.ca, %._crit_edge948.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1643 = trunc i32 %.2445 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1643)
  %i.cg = icmp slt i32 %.3458943.epil.init, 9
  %i.ch = mul i32 %.4418944.epil.init, 10
  %i.ci = mul i32 %.4412945.epil.init, 10
  %.5419.epil = select i1 %i.cg, i32 %i.ch, i32 %.4418944.epil.init
  %i.cj = add i32 %.3458943.epil.init, -16
  %i.ck = icmp ult i32 %i.cj, -7
  %.5413.epil = select i1 %i.ck, i32 %.4412945.epil.init, i32 %i.ci
  br label %._crit_edge948.loopexit

._crit_edge948.loopexit:                          ; preds = %._crit_edge948.loopexit.unr-lcssa, %.lr.ph947.epil.preheader
  %.5419.lcssa = phi i32 [ %.5419.1, %._crit_edge948.loopexit.unr-lcssa ], [ %.5419.epil, %.lr.ph947.epil.preheader ]
  %.5413.lcssa = phi i32 [ %.5413.1, %._crit_edge948.loopexit.unr-lcssa ], [ %.5413.epil, %.lr.ph947.epil.preheader ]
  %i.cl = add i32 %.2457, %.2445
  br label %._crit_edge948

._crit_edge948:                                   ; preds = %._crit_edge948.loopexit, %bb.n
  %.3458.lcssa = phi i32 [ %.2457, %bb.n ], [ %i.cl, %._crit_edge948.loopexit ] ; 3 uses
  %.4418.lcssa = phi i32 [ %.3417, %bb.n ], [ %.5419.lcssa, %._crit_edge948.loopexit ] ; 3 uses
  %.4412.lcssa = phi i32 [ %.3411, %bb.n ], [ %.5413.lcssa, %._crit_edge948.loopexit ] ; 3 uses
  %i.cm = add nsw i32 %.3458.lcssa, 1             ; 3 uses
  %i.cn = icmp slt i32 %.3458.lcssa, 9
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge948
  %i.co = mul i32 %.4418.lcssa, 10
  %i.cp = add i32 %i.co, %i.bs
  br label %bb.r

bb.p:                                             ; preds = %._crit_edge948
  %i.cq = icmp samesign ult i32 %.3458.lcssa, 16
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cr = mul i32 %.4412.lcssa, 10
  %i.cs = add i32 %i.cr, %i.bs
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.m
  %.4459 = phi i32 [ %.2457, %bb.m ], [ %i.cm, %bb.p ], [ %i.cm, %bb.q ], [ %i.cm, %bb.o ]
  %.2450 = phi i32 [ %.1449, %bb.m ], [ %i.bt, %bb.p ], [ %i.bt, %bb.q ], [ %i.bt, %bb.o ]
  %.3446 = phi i32 [ %i.br, %bb.m ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ]
  %.3440 = phi i32 [ %.2439, %bb.m ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ]
  %.7421 = phi i32 [ %.3417, %bb.m ], [ %.4418.lcssa, %bb.p ], [ %.4418.lcssa, %bb.q ], [ %i.cp, %bb.o ]
  %.7 = phi i32 [ %.3411, %bb.m ], [ %.4412.lcssa, %bb.p ], [ %i.cs, %bb.q ], [ %.4412.lcssa, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.6, i64 1
  br label %bb.l, !llvm.loop !37

bb.s:                                             ; preds = %.critedge.thread, %.critedge, %bb.l, %._crit_edge937
  %.0455.lcssa12231237 = phi i32 [ %.0455.lcssa122312381250, %bb.l ], [ 0, %._crit_edge937 ], [ %i.aa, %.critedge ], [ 0, %.critedge.thread ] ; 2 uses
  %.7747 = phi ptr [ %.5746, %bb.l ], [ %.4745.lcssa, %._crit_edge937 ], [ %i.ab, %.critedge ], [ %.2743, %.critedge.thread ] ; 7 uses
  %.sroa.12.0 = phi i32 [ %i.bn, %bb.l ], [ 1, %._crit_edge937 ], [ 0, %.critedge ], [ 0, %.critedge.thread ] ; 4 uses
  %.sroa.6.2 = phi i32 [ %.sroa.6.0, %bb.l ], [ 1, %._crit_edge937 ], [ %i.aj, %.critedge ], [ 0, %.critedge.thread ] ; 3 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.0, %bb.l ], [ 0, %._crit_edge937 ], [ %i.aj, %.critedge ], [ 0, %.critedge.thread ]
  %.3485 = phi i32 [ %.1483, %bb.l ], [ %.0482.lcssa, %._crit_edge937 ], [ %i.ad, %.critedge ], [ %i.o, %.critedge.thread ] ; 2 uses
  %.5460 = phi i32 [ %.1456, %bb.l ], [ 0, %._crit_edge937 ], [ %i.aa, %.critedge ], [ 0, %.critedge.thread ] ; 14 uses
  %.3451 = phi i32 [ %.0448, %bb.l ], [ 0, %._crit_edge937 ], [ 0, %.critedge ], [ 0, %.critedge.thread ]
  %.4447 = phi i32 [ %.1444, %bb.l ], [ %.0443.lcssa, %._crit_edge937 ], [ 0, %.critedge ], [ 0, %.critedge.thread ] ; 2 uses
  %.4441 = phi i32 [ %.1438, %bb.l ], [ 0, %._crit_edge937 ], [ %.0437.lcssa, %.critedge ], [ 0, %.critedge.thread ]
  %.2433 = phi ptr [ %.0431, %bb.l ], [ %.2743, %._crit_edge937 ], [ %.2743, %.critedge ], [ %.2743, %.critedge.thread ] ; 15 uses
  %.8422 = phi i32 [ %.2416, %bb.l ], [ 0, %._crit_edge937 ], [ %.1415, %.critedge ], [ 0, %.critedge.thread ] ; 4 uses
  %.8 = phi i32 [ %.2410, %bb.l ], [ 0, %._crit_edge937 ], [ %.1409, %.critedge ], [ 0, %.critedge.thread ]
  %i.cu = and i32 %.3485, -33
  %or.cond3 = icmp eq i32 %i.cu, 69
  br i1 %or.cond3, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.cv = icmp ne i32 %.5460, 0
  %i.cw = icmp ne i32 %.4447, 0
  %or.cond5 = select i1 %i.cv, i1 true, i1 %i.cw
  %or.cond7 = or i1 %i.k, %or.cond5
  br i1 %or.cond7, label %bb.u, label %Bfree.exit617

bb.u:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %.7747, i64 1 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !21  ; 2 uses
  switch i8 %i.cy, label %bb.x [
    i8 45, label %bb.v
    i8 43, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cz = phi i1 [ false, %bb.v ], [ true, %bb.u ]
  %i.da = getelementptr inbounds nuw i8, ptr %.7747, i64 2 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.8748 = phi ptr [ %i.cx, %bb.u ], [ %i.da, %bb.w ] ; 2 uses
  %.4486.in = phi i8 [ %i.cy, %bb.u ], [ %i.db, %bb.w ] ; 3 uses
  %.1476 = phi i1 [ true, %bb.u ], [ %i.cz, %bb.w ]
  %.4486 = sext i8 %.4486.in to i32               ; 2 uses
  %i.dc = add i8 %.4486.in, -48
  %or.cond9 = icmp ult i8 %i.dc, 10
  br i1 %or.cond9, label %.preheader788, label %bb.y

.preheader788:                                    ; preds = %bb.x
  %i.dd = icmp eq i8 %.4486.in, 48
  br i1 %i.dd, label %.lr.ph953, label %._crit_edge954

.lr.ph953:                                        ; preds = %.preheader788, %.lr.ph953
  %.9749952 = phi ptr [ %i.de, %.lr.ph953 ], [ %.8748, %.preheader788 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.9749952, i64 1 ; 3 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !21  ; 2 uses
  %i.dg = icmp eq i8 %i.df, 48
  br i1 %i.dg, label %.lr.ph953, label %._crit_edge954.loopexit, !llvm.loop !38

._crit_edge954.loopexit:                          ; preds = %.lr.ph953
  %i.dh = sext i8 %i.df to i32
  br label %._crit_edge954

._crit_edge954:                                   ; preds = %._crit_edge954.loopexit, %.preheader788
  %.9749.lcssa = phi ptr [ %.8748, %.preheader788 ], [ %i.de, %._crit_edge954.loopexit ] ; 3 uses
  %.5487.lcssa = phi i32 [ %.4486, %.preheader788 ], [ %i.dh, %._crit_edge954.loopexit ] ; 3 uses
  %i.di = add nsw i32 %.5487.lcssa, -49
  %or.cond11 = icmp ult i32 %i.di, 9
  br i1 %or.cond11, label %.preheader787, label %bb.y

.preheader787:                                    ; preds = %._crit_edge954
  %.0423957 = add nsw i32 %.5487.lcssa, -48       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.9749.lcssa, i64 1 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !21  ; 2 uses
  %i.dl = sext i8 %i.dk to i32                    ; 2 uses
  %i.dm = add i8 %i.dk, -48
  %i.dn = icmp ult i8 %i.dm, 10
  br i1 %i.dn, label %.lr.ph959, label %._crit_edge960

.lr.ph959:                                        ; preds = %.preheader787, %.lr.ph959
  %i.do = phi i32 [ %i.du, %.lr.ph959 ], [ %i.dl, %.preheader787 ]
  %i.dp = phi ptr [ %i.ds, %.lr.ph959 ], [ %i.dj, %.preheader787 ]
  %.0423958 = phi i32 [ %.0423, %.lr.ph959 ], [ %.0423957, %.preheader787 ]
  %i.dq = mul nsw i32 %.0423958, 10
  %i.dr = add nsw i32 %i.dq, %i.do                ; 2 uses
  %.0423 = add nsw i32 %i.dr, -48                 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !21  ; 2 uses
  %i.du = sext i8 %i.dt to i32                    ; 2 uses
  %i.dv = add i8 %i.dt, -48
  %i.dw = icmp ult i8 %i.dv, 10
  br i1 %i.dw, label %.lr.ph959, label %._crit_edge960.loopexit, !llvm.loop !39

._crit_edge960.loopexit:                          ; preds = %.lr.ph959
  %i.dx = icmp sgt i32 %i.dr, 20047
  br label %._crit_edge960

._crit_edge960:                                   ; preds = %._crit_edge960.loopexit, %.preheader787
  %.0423.in.lcssa = phi i1 [ false, %.preheader787 ], [ %i.dx, %._crit_edge960.loopexit ]
  %.0423.lcssa = phi i32 [ %.0423957, %.preheader787 ], [ %.0423, %._crit_edge960.loopexit ]
  %.lcssa913 = phi ptr [ %i.dj, %.preheader787 ], [ %i.ds, %._crit_edge960.loopexit ] ; 2 uses
  %.lcssa912 = phi i32 [ %i.dl, %.preheader787 ], [ %i.du, %._crit_edge960.loopexit ]
  %i.dy = ptrtoint ptr %.lcssa913 to i64
  %i.dz = ptrtoint ptr %.9749.lcssa to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = icmp sgt i64 %i.ea, 8
  %or.cond13 = select i1 %i.eb, i1 true, i1 %.0423.in.lcssa
  %..0423 = select i1 %or.cond13, i32 19999, i32 %.0423.lcssa ; 2 uses
  %i.ec = sub nsw i32 0, %..0423
  %spec.select586 = select i1 %.1476, i32 %..0423, i32 %i.ec
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge960, %._crit_edge954, %bb.s
  %.11751 = phi ptr [ %.lcssa913, %._crit_edge960 ], [ %.9749.lcssa, %._crit_edge954 ], [ %.7747, %bb.s ], [ %.7747, %bb.x ] ; 22 uses
  %.0498 = phi ptr [ %.7747, %._crit_edge960 ], [ %.7747, %._crit_edge954 ], [ %1, %bb.s ], [ %.7747, %bb.x ] ; 6 uses
  %.6488 = phi i32 [ %.lcssa912, %._crit_edge960 ], [ %.5487.lcssa, %._crit_edge954 ], [ %.3485, %bb.s ], [ %.4486, %bb.x ]
  %.1480 = phi i32 [ %spec.select586, %._crit_edge960 ], [ 0, %._crit_edge954 ], [ 0, %bb.s ], [ 0, %bb.x ]
  %.not533 = icmp eq i32 %.5460, 0
  br i1 %.not533, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.ed = icmp ne i32 %.4447, 0
  %or.cond15 = or i1 %i.k, %i.ed
  br i1 %or.cond15, label %Bfree.exit617, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not534 = icmp eq i32 %.sroa.12.0, 0
  br i1 %.not534, label %bb.ab, label %Bfree.exit617

bb.ab:                                            ; preds = %bb.aa
  switch i32 %.6488, label %Bfree.exit617 [
end_hunk_0
