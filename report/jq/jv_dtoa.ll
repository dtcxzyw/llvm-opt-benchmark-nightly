Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv_dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@jvp_strtod:bb.a
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %3 = alloca %union.U, align 8                   ; 61 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store double 0.000000e+00, ptr %3, align 8, !tbaa !21
  %i.g = load i8, ptr %1, align 1, !tbaa !21      ; 2 uses
  switch i8 %i.g, label %bb.d [
    i8 45, label %bb.b
    i8 43, label %bb.c
    i8 0, label %Bfree.exit617
  ]

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
  %.0455.lcssa121012251237 = phi i32 [ %.0455.lcssa121012251236, %bb.r ], [ %i.aa, %bb.j ] ; 2 uses
  %.5746 = phi ptr [ %i.cs, %bb.r ], [ %i.aw, %bb.j ] ; 3 uses
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
  %.0455.lcssa121012251236 = phi i32 [ 0, %bb.k ], [ %.0455.lcssa121012251237, %bb.l ]
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
  %4 = add nsw i32 %i.br, %.1449                  ; 3 uses
  %.not576941 = icmp slt i32 %.2445, 1
  br i1 %.not576941, label %._crit_edge948, label %.lr.ph947.preheader

.lr.ph947.preheader:                              ; preds = %bb.n
  %xtraiter1635 = and i32 %.2445, 1
  %i.bt = icmp eq i32 %.2445, 1
  br i1 %i.bt, label %.lr.ph947.epil.preheader, label %.lr.ph947.preheader.new

.lr.ph947.preheader.new:                          ; preds = %.lr.ph947.preheader
  %unroll_iter1641 = and i32 %.2445, 2147483646
  br label %.lr.ph947

.lr.ph947:                                        ; preds = %.lr.ph947, %.lr.ph947.preheader.new
  %.4412945 = phi i32 [ %.3411, %.lr.ph947.preheader.new ], [ %.5413.1, %.lr.ph947 ] ; 2 uses
  %.4418944 = phi i32 [ %.3417, %.lr.ph947.preheader.new ], [ %.5419.1, %.lr.ph947 ] ; 2 uses
  %.3458943 = phi i32 [ %.2457, %.lr.ph947.preheader.new ], [ %i.bz, %.lr.ph947 ] ; 5 uses
  %niter1642 = phi i32 [ 0, %.lr.ph947.preheader.new ], [ %niter1642.next.1, %.lr.ph947 ]
  %i.bu = icmp slt i32 %.3458943, 9
  %i.bv = mul i32 %.4418944, 10
  %i.bw = mul i32 %.4412945, 10
  %.5419 = select i1 %i.bu, i32 %i.bv, i32 %.4418944 ; 2 uses
  %i.bx = add i32 %.3458943, -16
  %i.by = icmp ult i32 %i.bx, -7
  %.5413 = select i1 %i.by, i32 %.4412945, i32 %i.bw ; 2 uses
  %i.bz = add nsw i32 %.3458943, 2                ; 2 uses
  %i.ca = icmp slt i32 %.3458943, 8
  %i.cb = mul i32 %.5419, 10
  %i.cc = mul i32 %.5413, 10
  %.5419.1 = select i1 %i.ca, i32 %i.cb, i32 %.5419 ; 3 uses
  %i.cd = add i32 %.3458943, -15
  %i.ce = icmp ult i32 %i.cd, -7
  %.5413.1 = select i1 %i.ce, i32 %.5413, i32 %i.cc ; 3 uses
  %niter1642.next.1 = add nuw nsw i32 %niter1642, 2 ; 2 uses
  %niter1642.ncmp.1 = icmp eq i32 %niter1642.next.1, %unroll_iter1641
  br i1 %niter1642.ncmp.1, label %._crit_edge948.loopexit.unr-lcssa, label %.lr.ph947, !llvm.loop !36

._crit_edge948.loopexit.unr-lcssa:                ; preds = %.lr.ph947
  %lcmp.mod1637.not = icmp eq i32 %xtraiter1635, 0
  br i1 %lcmp.mod1637.not, label %._crit_edge948.loopexit, label %.lr.ph947.epil.preheader

.lr.ph947.epil.preheader:                         ; preds = %._crit_edge948.loopexit.unr-lcssa, %.lr.ph947.preheader
  %.4412945.epil.init = phi i32 [ %.3411, %.lr.ph947.preheader ], [ %.5413.1, %._crit_edge948.loopexit.unr-lcssa ] ; 2 uses
  %.4418944.epil.init = phi i32 [ %.3417, %.lr.ph947.preheader ], [ %.5419.1, %._crit_edge948.loopexit.unr-lcssa ] ; 2 uses
  %.3458943.epil.init = phi i32 [ %.2457, %.lr.ph947.preheader ], [ %i.bz, %._crit_edge948.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1640 = trunc i32 %.2445 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1640)
  %i.cf = icmp slt i32 %.3458943.epil.init, 9
  %i.cg = mul i32 %.4418944.epil.init, 10
  %i.ch = mul i32 %.4412945.epil.init, 10
  %.5419.epil = select i1 %i.cf, i32 %i.cg, i32 %.4418944.epil.init
  %i.ci = add i32 %.3458943.epil.init, -16
  %i.cj = icmp ult i32 %i.ci, -7
  %.5413.epil = select i1 %i.cj, i32 %.4412945.epil.init, i32 %i.ch
  br label %._crit_edge948.loopexit

._crit_edge948.loopexit:                          ; preds = %._crit_edge948.loopexit.unr-lcssa, %.lr.ph947.epil.preheader
  %.5419.lcssa = phi i32 [ %.5419.1, %._crit_edge948.loopexit.unr-lcssa ], [ %.5419.epil, %.lr.ph947.epil.preheader ]
  %.5413.lcssa = phi i32 [ %.5413.1, %._crit_edge948.loopexit.unr-lcssa ], [ %.5413.epil, %.lr.ph947.epil.preheader ]
  %i.ck = add i32 %.2457, %.2445
  br label %._crit_edge948

._crit_edge948:                                   ; preds = %._crit_edge948.loopexit, %bb.n
  %.3458.lcssa = phi i32 [ %.2457, %bb.n ], [ %i.ck, %._crit_edge948.loopexit ] ; 3 uses
  %.4418.lcssa = phi i32 [ %.3417, %bb.n ], [ %.5419.lcssa, %._crit_edge948.loopexit ] ; 3 uses
  %.4412.lcssa = phi i32 [ %.3411, %bb.n ], [ %.5413.lcssa, %._crit_edge948.loopexit ] ; 3 uses
  %i.cl = add nsw i32 %.3458.lcssa, 1             ; 3 uses
  %i.cm = icmp slt i32 %.3458.lcssa, 9
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge948
  %i.cn = mul i32 %.4418.lcssa, 10
  %i.co = add i32 %i.cn, %i.bs
  br label %bb.r

bb.p:                                             ; preds = %._crit_edge948
  %i.cp = icmp samesign ult i32 %.3458.lcssa, 16
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = mul i32 %.4412.lcssa, 10
  %i.cr = add i32 %i.cq, %i.bs
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.m
  %.4459 = phi i32 [ %.2457, %bb.m ], [ %i.cl, %bb.p ], [ %i.cl, %bb.q ], [ %i.cl, %bb.o ]
  %.2450 = phi i32 [ %.1449, %bb.m ], [ %4, %bb.p ], [ %4, %bb.q ], [ %4, %bb.o ]
  %.3446 = phi i32 [ %i.br, %bb.m ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ]
  %.3440 = phi i32 [ %.2439, %bb.m ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ]
  %.7421 = phi i32 [ %.3417, %bb.m ], [ %.4418.lcssa, %bb.p ], [ %.4418.lcssa, %bb.q ], [ %i.co, %bb.o ]
  %.7 = phi i32 [ %.3411, %bb.m ], [ %.4412.lcssa, %bb.p ], [ %i.cr, %bb.q ], [ %.4412.lcssa, %bb.o ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.6, i64 1
  br label %bb.l, !llvm.loop !37

bb.s:                                             ; preds = %.critedge.thread, %.critedge, %bb.l, %._crit_edge937
  %.0455.lcssa12101224 = phi i32 [ %.0455.lcssa121012251237, %bb.l ], [ 0, %._crit_edge937 ], [ %i.aa, %.critedge ], [ 0, %.critedge.thread ] ; 2 uses
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
  %i.ct = and i32 %.3485, -33
  %or.cond3 = icmp eq i32 %i.ct, 69
  br i1 %or.cond3, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.cu = icmp ne i32 %.5460, 0
  %i.cv = icmp ne i32 %.4447, 0
  %or.cond5 = select i1 %i.cu, i1 true, i1 %i.cv
  %or.cond7 = or i1 %i.k, %or.cond5
  br i1 %or.cond7, label %bb.u, label %Bfree.exit617

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %.7747, i64 1 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21  ; 2 uses
  switch i8 %i.cx, label %bb.x [
    i8 45, label %bb.v
    i8 43, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cy = phi i1 [ false, %bb.v ], [ true, %bb.u ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.7747, i64 2 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.8748 = phi ptr [ %i.cw, %bb.u ], [ %i.cz, %bb.w ] ; 2 uses
  %.4486.in = phi i8 [ %i.cx, %bb.u ], [ %i.da, %bb.w ] ; 3 uses
  %.1476 = phi i1 [ true, %bb.u ], [ %i.cy, %bb.w ]
  %.4486 = sext i8 %.4486.in to i32               ; 2 uses
  %i.db = add i8 %.4486.in, -48
  %or.cond9 = icmp ult i8 %i.db, 10
  br i1 %or.cond9, label %.preheader788, label %bb.y

.preheader788:                                    ; preds = %bb.x
  %i.dc = icmp eq i8 %.4486.in, 48
  br i1 %i.dc, label %.lr.ph953, label %._crit_edge954

.lr.ph953:                                        ; preds = %.preheader788, %.lr.ph953
  %.9749952 = phi ptr [ %i.dd, %.lr.ph953 ], [ %.8748, %.preheader788 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.9749952, i64 1 ; 3 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !21  ; 2 uses
  %i.df = icmp eq i8 %i.de, 48
  br i1 %i.df, label %.lr.ph953, label %._crit_edge954.loopexit, !llvm.loop !38

._crit_edge954.loopexit:                          ; preds = %.lr.ph953
  %i.dg = sext i8 %i.de to i32
  br label %._crit_edge954

._crit_edge954:                                   ; preds = %._crit_edge954.loopexit, %.preheader788
  %.9749.lcssa = phi ptr [ %.8748, %.preheader788 ], [ %i.dd, %._crit_edge954.loopexit ] ; 3 uses
  %.5487.lcssa = phi i32 [ %.4486, %.preheader788 ], [ %i.dg, %._crit_edge954.loopexit ] ; 3 uses
  %i.dh = add nsw i32 %.5487.lcssa, -49
  %or.cond11 = icmp ult i32 %i.dh, 9
  br i1 %or.cond11, label %.preheader787, label %bb.y

.preheader787:                                    ; preds = %._crit_edge954
  %.0423957 = add nsw i32 %.5487.lcssa, -48       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.9749.lcssa, i64 1 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !21  ; 2 uses
  %i.dk = sext i8 %i.dj to i32                    ; 2 uses
  %i.dl = add i8 %i.dj, -48
  %i.dm = icmp ult i8 %i.dl, 10
  br i1 %i.dm, label %.lr.ph959, label %._crit_edge960

.lr.ph959:                                        ; preds = %.preheader787, %.lr.ph959
  %i.dn = phi i32 [ %i.dt, %.lr.ph959 ], [ %i.dk, %.preheader787 ]
  %i.do = phi ptr [ %i.dr, %.lr.ph959 ], [ %i.di, %.preheader787 ]
  %.0423958 = phi i32 [ %.0423, %.lr.ph959 ], [ %.0423957, %.preheader787 ]
  %i.dp = mul nsw i32 %.0423958, 10
  %i.dq = add nsw i32 %i.dp, %i.dn                ; 2 uses
  %.0423 = add nsw i32 %i.dq, -48                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !21  ; 2 uses
  %i.dt = sext i8 %i.ds to i32                    ; 2 uses
  %i.du = add i8 %i.ds, -48
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %.lr.ph959, label %._crit_edge960.loopexit, !llvm.loop !39

._crit_edge960.loopexit:                          ; preds = %.lr.ph959
  %i.dw = icmp sgt i32 %i.dq, 20047
  br label %._crit_edge960

._crit_edge960:                                   ; preds = %._crit_edge960.loopexit, %.preheader787
  %.0423.in.lcssa = phi i1 [ false, %.preheader787 ], [ %i.dw, %._crit_edge960.loopexit ]
  %.0423.lcssa = phi i32 [ %.0423957, %.preheader787 ], [ %.0423, %._crit_edge960.loopexit ]
  %.lcssa913 = phi ptr [ %i.di, %.preheader787 ], [ %i.dr, %._crit_edge960.loopexit ] ; 2 uses
  %.lcssa912 = phi i32 [ %i.dk, %.preheader787 ], [ %i.dt, %._crit_edge960.loopexit ]
  %i.dx = ptrtoint ptr %.lcssa913 to i64
  %i.dy = ptrtoint ptr %.9749.lcssa to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = icmp sgt i64 %i.dz, 8
  %or.cond13 = select i1 %i.ea, i1 true, i1 %.0423.in.lcssa
  %..0423 = select i1 %or.cond13, i32 19999, i32 %.0423.lcssa ; 2 uses
  %i.eb = sub nsw i32 0, %..0423
  %spec.select586 = select i1 %.1476, i32 %..0423, i32 %i.eb
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge960, %._crit_edge954, %bb.s
  %.11751 = phi ptr [ %.lcssa913, %._crit_edge960 ], [ %.9749.lcssa, %._crit_edge954 ], [ %.7747, %bb.s ], [ %.7747, %bb.x ] ; 22 uses
  %.0498 = phi ptr [ %.7747, %._crit_edge960 ], [ %.7747, %._crit_edge954 ], [ %1, %bb.s ], [ %.7747, %bb.x ] ; 6 uses
  %.6488 = phi i32 [ %.lcssa912, %._crit_edge960 ], [ %.5487.lcssa, %._crit_edge954 ], [ %.3485, %bb.s ], [ %.4486, %bb.x ]
  %.1480 = phi i32 [ %spec.select586, %._crit_edge960 ], [ 0, %._crit_edge954 ], [ 0, %bb.s ], [ 0, %bb.x ]
  %.not533 = icmp eq i32 %.5460, 0
  br i1 %.not533, label %bb.z, label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.ec = icmp ne i32 %.4447, 0
  %or.cond15 = or i1 %i.k, %i.ec
  br i1 %or.cond15, label %Bfree.exit617, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not534 = icmp eq i32 %.sroa.12.0, 0
  br i1 %.not534, label %bb.ab, label %Bfree.exit617

bb.ab:                                            ; preds = %bb.aa
  switch i32 %.6488, label %Bfree.exit617 [
    i32 105, label %bb.ac
    i32 73, label %bb.ac
    i32 110, label %bb.ai
    i32 78, label %bb.ai
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %.11751, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !21  ; 2 uses
  %i.ef = sext i8 %i.ee to i32                    ; 2 uses
  %i.eg = add i8 %i.ee, -65
  %or.cond.i = icmp ult i8 %i.eg, 26
  %i.eh = or disjoint i32 %i.ef, 32
  %spec.select.i = select i1 %or.cond.i, i32 %i.eh, i32 %i.ef
  %.not15.i = icmp eq i32 %spec.select.i, 110
  br i1 %.not15.i, label %bb.ad, label %Bfree.exit617

.preheader:                                       ; preds = %bb.ad
  %i.ei = getelementptr i8, ptr %.11751, i64 3
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !21  ; 2 uses
  %i.ek = sext i8 %i.ej to i32                    ; 2 uses
  %i.el = add i8 %i.ej, -65
  %or.cond.i596 = icmp ult i8 %i.el, 26
  %i.em = or disjoint i32 %i.ek, 32
  %spec.select.i597 = select i1 %or.cond.i596, i32 %i.em, i32 %i.ek
  %.not15.i598 = icmp eq i32 %spec.select.i597, 105
  br i1 %.not15.i598, label %bb.ae, label %match.exit600

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %.11751, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !21  ; 2 uses
  %i.ep = sext i8 %i.eo to i32                    ; 2 uses
  %i.eq = add i8 %i.eo, -65
  %or.cond.i.1 = icmp ult i8 %i.eq, 26
  %i.er = or disjoint i32 %i.ep, 32
  %spec.select.i.1 = select i1 %or.cond.i.1, i32 %i.er, i32 %i.ep
  %.not15.i.1 = icmp eq i32 %spec.select.i.1, 102
  br i1 %.not15.i.1, label %.preheader, label %Bfree.exit617
end_hunk_0
begin_hunk_1_@mult:bb.a
  %i.af = getelementptr i8, ptr %.0.i, i64 24     ; 3 uses
  %i.ag = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.ag, 2                    ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %.idx
  %i.ai = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Balloc.exit
  %.0.i81 = ptrtoaddr ptr %.0.i to i64            ; 3 uses
  %i.aj = add i64 %.idx, %.0.i81
  %i.ak = add i64 %i.aj, 24
  %i.al = add i64 %.0.i81, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.al)
  %i.am = add i64 %umax, -25
  %i.an = sub i64 %i.am, %.0.i81
  %i.ao = and i64 %i.an, -4
  %i.ap = add i64 %i.ao, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.ap, i1 false), !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %Balloc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 24 ; 2 uses
  %i.ar = sext i32 %i.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select66, i64 24 ; 2 uses
  %i.au = sext i32 %i.k to i64
  %.idx79 = shl nsw i64 %i.au, 2
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %.idx79
  %i.aw = icmp sgt i32 %i.k, 0
  br i1 %i.aw, label %.lr.ph73, label %.preheader

.preheader:                                       ; preds = %bb.g, %._crit_edge
  br i1 %i.ai, label %.lr.ph76, label %.critedge

.lr.ph73:                                         ; preds = %._crit_edge, %bb.g
  %.05471 = phi ptr [ %i.bn, %bb.g ], [ %i.af, %._crit_edge ] ; 2 uses
  %.05670 = phi ptr [ %i.ax, %bb.g ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05670, i64 4 ; 2 uses
  %i.ay = load i32, ptr %.05670, align 4, !tbaa !27 ; 2 uses
  %.not65 = icmp eq i32 %i.ay, 0
  br i1 %.not65, label %bb.g, label %.preheader67

.preheader67:                                     ; preds = %.lr.ph73
  %i.az = zext i32 %i.ay to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader67, %bb.e
  %.158 = phi ptr [ %i.ba, %bb.e ], [ %i.aq, %.preheader67 ] ; 2 uses
  %.055 = phi ptr [ %i.bk, %bb.e ], [ %.05471, %.preheader67 ] ; 3 uses
  %.0 = phi i64 [ %i.bi, %bb.e ], [ 0, %.preheader67 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.158, i64 4 ; 2 uses
  %i.bb = load i32, ptr %.158, align 4, !tbaa !27
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.az
  %i.be = load i32, ptr %.055, align 4, !tbaa !27
  %i.bf = zext i32 %i.be to i64
  %i.bg = add nuw nsw i64 %.0, %i.bf
  %i.bh = add nuw i64 %i.bg, %i.bd                ; 2 uses
  %i.bi = lshr i64 %i.bh, 32                      ; 2 uses
  %i.bj = trunc i64 %i.bh to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %.055, i64 4 ; 2 uses
  store i32 %i.bj, ptr %.055, align 4, !tbaa !27
  %i.bl = icmp ult ptr %i.ba, %i.as
  br i1 %i.bl, label %bb.e, label %bb.f, !llvm.loop !51

bb.f:                                             ; preds = %bb.e
  %i.bm = trunc nuw i64 %i.bi to i32
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph73, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.05471, i64 4
  %i.bo = icmp ult ptr %i.ax, %i.av
  br i1 %i.bo, label %.lr.ph73, label %.preheader, !llvm.loop !52

.lr.ph76:                                         ; preds = %.preheader, %bb.h
  %.175 = phi ptr [ %i.bp, %bb.h ], [ %i.ah, %.preheader ]
  %.05974 = phi i32 [ %i.br, %bb.h ], [ %i.l, %.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.175, i64 -4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph76
  %i.br = add nsw i32 %.05974, -1
  %i.bs = icmp sgt i32 %.05974, 1
  br i1 %i.bs, label %.lr.ph76, label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %.lr.ph76, %bb.h, %.preheader
  %.059.lcssa = phi i32 [ %i.l, %.preheader ], [ 0, %bb.h ], [ %.05974, %.lr.ph76 ]
  store i32 %.059.lcssa, ptr %i.ad, align 4, !tbaa !28
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lshift(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 -2147483593, -2147483648) %2) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ashr i32 %2, 5                           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = add nsw i32 %i.f, %i.b                   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25   ; 2 uses
  %.not53 = icmp slt i32 %i.g, %i.i
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04455 = phi i32 [ %i.j, %.lr.ph ], [ %i.d, %bb.a ]
  %.04554 = phi i32 [ %i.k, %.lr.ph ], [ %i.i, %bb.a ]
  %i.j = add nsw i32 %.04455, 1                   ; 2 uses
  %i.k = shl i32 %.04554, 1                       ; 2 uses
  %.not = icmp slt i32 %i.g, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.044.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.l = icmp slt i32 %.044.lcssa, 8
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.m = sext i32 %.044.lcssa to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  store ptr %i.p, ptr %i.n, align 8, !tbaa !16
  br label %Balloc.exit

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.q = shl nuw i32 1, %.044.lcssa               ; 2 uses
  %i.r = add nsw i32 %i.q, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 32
  %i.v = tail call ptr @jv_mem_alloc(i64 noundef %i.u) #10 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %.044.lcssa, ptr %i.w, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.q, ptr %i.x, align 4, !tbaa !25
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.c ], [ %i.v, %bb.d ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.z, align 8, !tbaa !26
  %i.aa = getelementptr i8, ptr %.0.i, i64 24     ; 2 uses
  %i.ab = icmp sgt i32 %i.b, 0
  br i1 %i.ab, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %Balloc.exit
  %i.ac = zext nneg i32 %i.b to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false), !tbaa !27
  %i.ae = add nsw i32 %i.b, -1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = getelementptr i8, ptr %.0.i, i64 %i.ag
  %scevgep = getelementptr i8, ptr %i.ah, i64 28
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %.lr.ph58.preheader, %Balloc.exit
  %.040.lcssa = phi ptr [ %i.aa, %Balloc.exit ], [ %scevgep, %.lr.ph58.preheader ] ; 6 uses
  %.040.lcssa74 = ptrtoaddr ptr %.040.lcssa to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !28
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.am = and i32 %2, 31                          ; 3 uses
  %.not49 = icmp eq i32 %i.am, 0
  br i1 %.not49, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %._crit_edge59
  %i.an = shl nsw i64 %i.ak, 2
  %i.ao = add i64 %i.an, %i.a
  %i.ap = add i64 %i.ao, 24
  %i.aq = add i64 %i.a, 28
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.aq)
  %i.as = add i64 %i.ar, -25
  %i.at = sub i64 %i.as, %i.a                     ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 60
  br i1 %min.iters.check, label %.preheader.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.aw = sub i64 %.040.lcssa74, %i.a
  %i.ax = add i64 %i.aw, -25
  %diff.check = icmp ult i64 %i.ax, 31
  br i1 %diff.check, label %.preheader.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %3 = shl i64 %n.vec, 2                          ; 2 uses
  %4 = getelementptr i8, ptr %i.ai, i64 %3
  %5 = getelementptr i8, ptr %.040.lcssa, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.ay ; 2 uses
  %next.gep75 = getelementptr i8, ptr %.040.lcssa, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !27
  %wide.load76 = load <4 x i32>, ptr %i.az, align 4, !tbaa !27
  %i.ba = getelementptr i8, ptr %next.gep75, i64 16
  store <4 x i32> %wide.load, ptr %next.gep75, align 4, !tbaa !27
  store <4 x i32> %wide.load76, ptr %i.ba, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader78

.preheader.preheader78:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.142.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.preheader.preheader ], [ %4, %middle.block ]
  %.2.ph = phi ptr [ %.040.lcssa, %vector.memcheck ], [ %.040.lcssa, %.preheader.preheader ], [ %5, %middle.block ]
  br label %.preheader

bb.e:                                             ; preds = %._crit_edge59
  %i.bc = sub nuw nsw i32 32, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.041 = phi ptr [ %i.ai, %bb.e ], [ %i.bh, %bb.f ] ; 3 uses
  %.1 = phi ptr [ %.040.lcssa, %bb.e ], [ %i.bg, %bb.f ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.e ], [ %i.bj, %bb.f ]
  %i.bd = load i32, ptr %.041, align 4, !tbaa !27
  %i.be = shl i32 %i.bd, %i.am
  %i.bf = or i32 %i.be, %.0
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  store i32 %i.bf, ptr %.1, align 4, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %.041, i64 4 ; 2 uses
  %i.bi = load i32, ptr %.041, align 4, !tbaa !27
  %i.bj = lshr i32 %i.bi, %i.bc                   ; 3 uses
  %i.bk = icmp ult ptr %i.bh, %i.al
  br i1 %i.bk, label %bb.f, label %bb.g, !llvm.loop !56

bb.g:                                             ; preds = %bb.f
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !27
  %.not50 = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %.not50 to i32
  %spec.select = add nsw i32 %i.g, %i.bl
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader78, %.preheader
  %.142 = phi ptr [ %i.bm, %.preheader ], [ %.142.ph, %.preheader.preheader78 ] ; 2 uses
  %.2 = phi ptr [ %i.bo, %.preheader ], [ %.2.ph, %.preheader.preheader78 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.142, i64 4 ; 2 uses
  %i.bn = load i32, ptr %.142, align 4, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i32 %i.bn, ptr %.2, align 4, !tbaa !27
  %i.bp = icmp ult ptr %i.bm, %i.al
  br i1 %i.bp, label %.preheader, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.g
  %.043 = phi i32 [ %spec.select, %bb.g ], [ %i.g, %middle.block ], [ %i.g, %.preheader ]
  store i32 %.043, ptr %i.y, align 4, !tbaa !28
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 7
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit
  tail call void @jv_mem_free(ptr noundef nonnull %1) #10
  br label %Bfree.exit

bb.i:                                             ; preds = %.loopexit
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !16
  store ptr %i.bu, ptr %1, align 8, !tbaa !18
  store ptr %1, ptr %i.bt, align 8, !tbaa !16
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.h, %bb.i
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @diff(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.d to i64                     ; 2 uses
  %.idx.i = shl nsw i64 %i.f, 2
  %.add.i = add nsw i64 %.idx.i, 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.017.idx.i = phi i64 [ %.add.i, %bb.b ], [ %.017.add.i, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.j, %bb.e ]
  %.017.add.i = add nsw i64 %.017.idx.i, -4       ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %1, i64 %.017.add.i
  %i.i = load i32, ptr %.ptr.i, align 4, !tbaa !27 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.0.i, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27   ; 2 uses
  %.not23.i = icmp eq i32 %i.i, %i.k
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %i.i, %i.k
  %i.m = select i1 %i.l, i32 -1, i32 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.not24.i = icmp sgt i64 %.017.idx.i, 28
  br i1 %.not24.i, label %bb.c, label %cmp.exit

cmp.exit:                                         ; preds = %bb.e
  %i.n = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %.not.i59 = icmp eq ptr %i.n, null
  br i1 %.not.i59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %cmp.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  store ptr %i.o, ptr %0, align 8, !tbaa !16
  br label %Balloc.exit

bb.g:                                             ; preds = %cmp.exit
  %i.p = tail call ptr @jv_mem_alloc(i64 noundef 32) #10 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !25
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.f, %bb.g
  %.0.i60 = phi ptr [ %i.n, %bb.f ], [ %i.p, %bb.g ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i60, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i60, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !26
  store i32 1, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i60, i64 24
  store i32 0, ptr %i.u, align 8, !tbaa !27
  br label %bb.n

bb.h:                                             ; preds = %bb.a, %bb.d
  %.018.i.ph = phi i32 [ %i.m, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %i.v = icmp slt i32 %.018.i.ph, 0               ; 2 uses
  %. = select i1 %i.v, ptr %2, ptr %1             ; 3 uses
  %.57 = select i1 %i.v, ptr %1, ptr %2           ; 2 uses
  %.018.i.ph.lobit = lshr i32 %.018.i.ph, 31
  %i.w = getelementptr inbounds nuw i8, ptr %., i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !19   ; 4 uses
  %i.y = icmp slt i32 %i.x, 8
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %.not.i62 = icmp eq ptr %i.ab, null
  br i1 %.not.i62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !16
  br label %Balloc.exit63

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ad = shl nuw i32 1, %i.x                     ; 2 uses
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 32
  %i.ai = tail call ptr @jv_mem_alloc(i64 noundef %i.ah) #10 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.x, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 %i.ad, ptr %i.ak, align 4, !tbaa !25
  br label %Balloc.exit63

Balloc.exit63:                                    ; preds = %bb.j, %bb.k
  %.0.i61 = phi ptr [ %i.ab, %bb.j ], [ %i.ai, %bb.k ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i61, i64 20 ; 2 uses
  store i32 0, ptr %i.al, align 4, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i61, i64 16
  store i32 %.018.i.ph.lobit, ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %., i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %., i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.57, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %.57, i64 24 ; 2 uses
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i61, i64 24
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %Balloc.exit63
  %.048 = phi ptr [ %i.ap, %Balloc.exit63 ], [ %i.aw, %bb.l ] ; 2 uses
  %.047 = phi ptr [ %i.as, %Balloc.exit63 ], [ %i.az, %bb.l ] ; 2 uses
  %.045 = phi ptr [ %i.av, %Balloc.exit63 ], [ %i.bh, %bb.l ] ; 2 uses
  %.0 = phi i64 [ 0, %Balloc.exit63 ], [ %i.bf, %bb.l ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.048, i64 4 ; 3 uses
  %i.ax = load i32, ptr %.048, align 4, !tbaa !27
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.047, i64 4 ; 2 uses
  %i.ba = load i32, ptr %.047, align 4, !tbaa !27
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %.0, %i.bb
  %i.bd = sub nsw i64 %i.ay, %i.bc                ; 2 uses
end_hunk_1
begin_hunk_2_@jvp_dtoa:bb.a
bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.1469 = phi i32 [ 0, %bb.ab ], [ 1, %bb.y ]
  %i.da = add nsw i32 %.2474, %3                  ; 2 uses
  %i.db = add nsw i32 %i.da, 1                    ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.db, i32 1)
  br label %bb.ad

default.unreachable:                              ; preds = %bb.y
  unreachable

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.0523 = phi i32 [ %spec.store.select, %bb.aa ], [ %3, %bb.ac ] ; 3 uses
  %.1503 = phi i32 [ %spec.store.select, %bb.aa ], [ %spec.store.select4, %bb.ac ] ; 2 uses
  %.0489 = phi i32 [ %spec.store.select, %bb.aa ], [ %i.db, %bb.ac ] ; 3 uses
  %.0488 = phi i32 [ %spec.store.select, %bb.aa ], [ %i.da, %bb.ac ] ; 3 uses
  %.2470 = phi i32 [ %.0468, %bb.aa ], [ %.1469, %bb.ac ] ; 3 uses
  %.not9.i = icmp samesign ult i32 %.1503, 28
  br i1 %.not9.i, label %._crit_edge.thread.i, label %.lr.ph.i620.preheader

.lr.ph.i620.preheader:                            ; preds = %bb.ad
  %invariant.op = add nsw i32 %.1503, -24
  br label %.lr.ph.i620

.lr.ph.i620:                                      ; preds = %.lr.ph.i620.preheader, %.lr.ph.i620
  %.011.i = phi i32 [ %i.dc, %.lr.ph.i620 ], [ 0, %.lr.ph.i620.preheader ] ; 2 uses
  %.0810.i = phi i32 [ %i.dd, %.lr.ph.i620 ], [ 4, %.lr.ph.i620.preheader ]
  %i.dc = add nuw nsw i32 %.011.i, 1              ; 3 uses
  %i.dd = shl i32 %.0810.i, 1                     ; 2 uses
  %.not.i621 = icmp sgt i32 %i.dd, %invariant.op
  br i1 %.not.i621, label %._crit_edge.i622, label %.lr.ph.i620, !llvm.loop !63

._crit_edge.i622:                                 ; preds = %.lr.ph.i620
  %i.de = icmp samesign ult i32 %.011.i, 7
  br i1 %i.de, label %._crit_edge.thread.i, label %bb.af

._crit_edge.thread.i:                             ; preds = %bb.y, %bb.y, %._crit_edge.i622, %bb.ad
  %.2470717 = phi i32 [ %.2470, %._crit_edge.i622 ], [ %.2470, %bb.ad ], [ 1, %bb.y ], [ 1, %bb.y ] ; 2 uses
  %.0488712 = phi i32 [ %.0488, %._crit_edge.i622 ], [ %.0488, %bb.ad ], [ -1, %bb.y ], [ -1, %bb.y ] ; 2 uses
  %.0489709 = phi i32 [ %.0489, %._crit_edge.i622 ], [ %.0489, %bb.ad ], [ -1, %bb.y ], [ -1, %bb.y ] ; 2 uses
  %.0523706 = phi i32 [ %.0523, %._crit_edge.i622 ], [ %.0523, %bb.ad ], [ 0, %bb.y ], [ 0, %bb.y ] ; 2 uses
  %.0.lcssa15.i = phi i32 [ %i.dc, %._crit_edge.i622 ], [ 0, %bb.ad ], [ 0, %bb.y ], [ 0, %bb.y ] ; 3 uses
  %i.df = zext nneg i32 %.0.lcssa15.i to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.df ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !18
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !16
  br label %rv_alloc.exit

bb.af:                                            ; preds = %._crit_edge.thread.i, %._crit_edge.i622
  %.2470716 = phi i32 [ %.2470717, %._crit_edge.thread.i ], [ %.2470, %._crit_edge.i622 ]
  %.0488711 = phi i32 [ %.0488712, %._crit_edge.thread.i ], [ %.0488, %._crit_edge.i622 ]
  %.0489708 = phi i32 [ %.0489709, %._crit_edge.thread.i ], [ %.0489, %._crit_edge.i622 ]
  %.0523705 = phi i32 [ %.0523706, %._crit_edge.thread.i ], [ %.0523, %._crit_edge.i622 ]
  %.0.lcssa14.i = phi i32 [ %.0.lcssa15.i, %._crit_edge.thread.i ], [ %i.dc, %._crit_edge.i622 ] ; 3 uses
  %i.dj = shl nuw i32 1, %.0.lcssa14.i            ; 2 uses
  %i.dk = add nsw i32 %i.dj, -1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 32
  %i.do = tail call ptr @jv_mem_alloc(i64 noundef %i.dn) #10 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i32 %.0.lcssa14.i, ptr %i.dp, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 %i.dj, ptr %i.dq, align 4, !tbaa !25
  br label %rv_alloc.exit

rv_alloc.exit:                                    ; preds = %bb.ae, %bb.af
  %.2470715 = phi i32 [ %.2470717, %bb.ae ], [ %.2470716, %bb.af ] ; 2 uses
  %.0488710 = phi i32 [ %.0488712, %bb.ae ], [ %.0488711, %bb.af ] ; 4 uses
  %.0489707 = phi i32 [ %.0489709, %bb.ae ], [ %.0489708, %bb.af ] ; 11 uses
  %.0523704 = phi i32 [ %.0523706, %bb.ae ], [ %.0523705, %bb.af ] ; 2 uses
  %.0.lcssa16.i = phi i32 [ %.0.lcssa15.i, %bb.ae ], [ %.0.lcssa14.i, %bb.af ]
  %.0.i.i = phi ptr [ %i.dh, %bb.ae ], [ %i.do, %bb.af ] ; 23 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store i32 0, ptr %i.dr, align 4, !tbaa !28
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store i32 0, ptr %i.ds, align 8, !tbaa !26
  store i32 %.0.lcssa16.i, ptr %.0.i.i, align 8, !tbaa !27
  %.ptr750.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 10 uses
  %or.cond6 = icmp ult i32 %.0489707, 15
  %or.cond8 = and i1 %i.cy, %or.cond6
  br i1 %or.cond8, label %bb.ag, label %bb.bd

bb.ag:                                            ; preds = %rv_alloc.exit
  %i.dt = load double, ptr %7, align 8, !tbaa !21 ; 6 uses
  %i.du = icmp sgt i32 %.2474, 0
  br i1 %i.du, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dv = and i32 %.2474, 15
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !23 ; 2 uses
  %i.dz = lshr i32 %.2474, 4                      ; 2 uses
  %i.ea = and i32 %.2474, 256
  %.not559 = icmp eq i32 %i.ea, 0                 ; 3 uses
  %i.eb = and i32 %i.dz, 15
  %i.ec = fdiv double %i.dt, 1.000000e+256
  %i.ed = select i1 %.not559, double %i.dt, double %i.ec
  %.0495 = select i1 %.not559, i32 2, i32 3       ; 2 uses
  %.0484 = select i1 %.not559, i32 %i.dz, i32 %i.eb ; 2 uses
  %.not560861 = icmp eq i32 %.0484, 0
  br i1 %.not560861, label %._crit_edge, label %.lr.ph866

.lr.ph866:                                        ; preds = %bb.ah, %bb.aj
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %.0416865 = phi double [ %.1417, %bb.aj ], [ %i.dy, %bb.ah ] ; 2 uses
  %.1485864 = phi i32 [ %i.ej, %bb.aj ], [ %.0484, %bb.ah ] ; 2 uses
  %.1496863 = phi i32 [ %.2497, %bb.aj ], [ %.0495, %bb.ah ] ; 2 uses
  %i.ee = and i32 %.1485864, 1
  %.not587 = icmp eq i32 %i.ee, 0
  br i1 %.not587, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph866
  %i.ef = add nsw i32 %.1496863, 1
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1019
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !23
  %i.ei = fmul double %.0416865, %i.eh
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph866, %bb.ai
  %.2497 = phi i32 [ %i.ef, %bb.ai ], [ %.1496863, %.lr.ph866 ] ; 2 uses
  %.1417 = phi double [ %i.ei, %bb.ai ], [ %.0416865, %.lr.ph866 ] ; 2 uses
  %i.ej = lshr i32 %.1485864, 1                   ; 2 uses
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 1
  %.not560 = icmp eq i32 %i.ej, 0
  br i1 %.not560, label %._crit_edge, label %.lr.ph866, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.aj, %bb.ah
  %.1496.lcssa = phi i32 [ %.0495, %bb.ah ], [ %.2497, %bb.aj ]
  %.0416.lcssa = phi double [ %i.dy, %bb.ah ], [ %.1417, %bb.aj ]
  %i.ek = fdiv double %i.ed, %.0416.lcssa
  br label %.loopexit767

bb.ak:                                            ; preds = %bb.ag
  %i.el = sub nsw i32 0, %.2474                   ; 4 uses
  %.not556 = icmp eq i32 %.2474, 0
  br i1 %.not556, label %.loopexit767, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = and i32 %i.el, 15
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !23
  %i.eq = fmul double %i.dt, %i.ep                ; 2 uses
  %i.er = lshr i32 %i.el, 4                       ; 2 uses
  %.not557856 = icmp eq i32 %i.er, 0
  br i1 %.not557856, label %.loopexit767, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.an ], [ 0, %bb.al ] ; 2 uses
  %.2486859 = phi i32 [ %i.ez, %bb.an ], [ %i.er, %bb.al ] ; 2 uses
  %.3498858 = phi i32 [ %.4499, %bb.an ], [ 2, %bb.al ] ; 2 uses
  %i.es = phi double [ %i.ey, %bb.an ], [ %i.eq, %bb.al ] ; 2 uses
  %i.et = and i32 %.2486859, 1
  %.not558 = icmp eq i32 %i.et, 0
  br i1 %.not558, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph
  %i.eu = add nsw i32 %.3498858, 1
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !23
  %i.ex = fmul double %i.ew, %i.es
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %bb.am
  %i.ey = phi double [ %i.ex, %bb.am ], [ %i.es, %.lr.ph ] ; 2 uses
  %.4499 = phi i32 [ %i.eu, %bb.am ], [ %.3498858, %.lr.ph ] ; 2 uses
  %i.ez = lshr i32 %.2486859, 1                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not557 = icmp eq i32 %i.ez, 0
  br i1 %.not557, label %.loopexit767, label %.lr.ph, !llvm.loop !65

.loopexit767:                                     ; preds = %bb.an, %bb.al, %bb.ak, %._crit_edge
  %i.fa = phi double [ %i.ek, %._crit_edge ], [ %i.dt, %bb.ak ], [ %i.eq, %bb.al ], [ %i.ey, %bb.an ] ; 3 uses
  %.5500 = phi i32 [ %.1496.lcssa, %._crit_edge ], [ 2, %bb.ak ], [ 2, %bb.al ], [ %.4499, %bb.an ] ; 2 uses
  %.0483 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.ak ], [ %i.el, %bb.al ], [ %i.el, %bb.an ] ; 3 uses
  %i.fb = fcmp olt double %i.fa, 1.000000e+00
  %or.cond10 = select i1 %or.cond, i1 %i.fb, i1 false
  %i.fc = icmp sgt i32 %.0489707, 0
  %or.cond12 = and i1 %i.fc, %or.cond10
  br i1 %or.cond12, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.loopexit767
  %i.fd = icmp slt i32 %.0488710, 1
  br i1 %i.fd, label %.loopexit766, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fe = add nsw i32 %.2474, -1
  %i.ff = fmul nnan double %i.fa, 1.000000e+01
  %i.fg = add nsw i32 %.5500, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit767
  %.promoted891 = phi double [ %i.ff, %bb.ap ], [ %i.fa, %.loopexit767 ] ; 6 uses
  %.6501 = phi i32 [ %i.fg, %bb.ap ], [ %.5500, %.loopexit767 ]
  %.1490 = phi i32 [ %.0488710, %bb.ap ], [ %.0489707, %.loopexit767 ] ; 5 uses
  %.3475 = phi i32 [ %i.fe, %bb.ap ], [ %.2474, %.loopexit767 ] ; 6 uses
  %i.fh = sitofp i32 %.6501 to double
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.fh, double %.promoted891, double 7.000000e+00)
  %i.fj = bitcast double %i.fi to i64             ; 2 uses
  %i.fk = and i64 %i.fj, -4294967296
  %.sroa.075.4.insert.ext = add i64 %i.fk, -234187180623265792
  %.sroa.075.4.insert.mask = and i64 %i.fj, 4294967295
  %.sroa.075.4.insert.insert = or disjoint i64 %.sroa.075.4.insert.ext, %.sroa.075.4.insert.mask
  %i.fl = bitcast i64 %.sroa.075.4.insert.insert to double ; 4 uses
  %i.fm = icmp eq i32 %.1490, 0
  br i1 %i.fm, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fn = fadd double %.promoted891, -5.000000e+00 ; 2 uses
  %i.fo = fcmp ogt double %i.fn, %i.fl
  br i1 %i.fo, label %cmp.exit641.thread724, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fp = fneg double %i.fl
  %i.fq = fcmp olt double %i.fn, %i.fp
  br i1 %i.fq, label %cmp.exit641.thread, label %.loopexit766

bb.at:                                            ; preds = %bb.aq
  %.not561 = icmp eq i32 %.2470715, 0
  %8 = zext nneg i32 %.1490 to i64
  %9 = getelementptr [8 x i8], ptr @tens, i64 %8
  %10 = getelementptr i8, ptr %9, i64 -8
  %11 = load double, ptr %10, align 8, !tbaa !23  ; 2 uses
  br i1 %.not561, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fr = fdiv double 5.000000e-01, %11
  %i.fs = fsub double %i.fr, %i.fl                ; 3 uses
  %i.ft = icmp slt i32 %.2474, 0
  %i.fu = icmp sgt i32 %.0483, 306
  %or.cond14 = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond14, label %.lr.ph874.preheader, label %bb.ay

.lr.ph874.preheader:                              ; preds = %bb.au
  %i.fv = add nsw i32 %.0483, -256
  %i.fw = lshr i32 %i.fv, 4
  %i.fx = and i32 %.0483, 15
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !23
  %i.gb = fmul double %i.ga, f0x31E5866C8349626D
  br label %.lr.ph874

.lr.ph874:                                        ; preds = %.lr.ph874.preheader, %bb.aw
  %indvars.iv1022 = phi i64 [ 0, %.lr.ph874.preheader ], [ %indvars.iv.next1023, %bb.aw ] ; 2 uses
  %.sroa.0.0872 = phi double [ %i.gb, %.lr.ph874.preheader ], [ %.sroa.0.1, %bb.aw ] ; 2 uses
  %.3487871 = phi i32 [ %i.fw, %.lr.ph874.preheader ], [ %i.gg, %bb.aw ] ; 2 uses
  %i.gc = and i32 %.3487871, 1
  %.not564 = icmp eq i32 %i.gc, 0
  br i1 %.not564, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph874
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1022
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !23
  %i.gf = fmul double %.sroa.0.0872, %i.ge
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph874, %bb.av
  %.sroa.0.1 = phi double [ %i.gf, %bb.av ], [ %.sroa.0.0872, %.lr.ph874 ] ; 3 uses
  %i.gg = lshr i32 %.3487871, 1                   ; 2 uses
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1
  %.not562 = icmp eq i32 %i.gg, 0
  br i1 %.not562, label %._crit_edge875, label %.lr.ph874, !llvm.loop !66

._crit_edge875:                                   ; preds = %bb.aw
  %i.gh = fcmp olt double %i.fs, %.sroa.0.1
  br i1 %i.gh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge875
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge875, %bb.ax, %bb.au
  %.sroa.075.0 = phi double [ %.sroa.0.1, %bb.ax ], [ %i.fs, %._crit_edge875 ], [ %i.fs, %bb.au ] ; 2 uses
  %i.gi = fptosi double %.promoted891 to i32      ; 2 uses
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = fsub double %.promoted891, %i.gj        ; 2 uses
  %i.gl = trunc i32 %i.gi to i8
  %i.gm = add i8 %i.gl, 48
  store i8 %i.gm, ptr %.ptr750.ptr, align 4, !tbaa !21
  %i.gn = fsub double 1.000000e+00, %i.gk
  %i.go = fcmp olt double %i.gn, %.sroa.075.0
  br i1 %i.go, label %.loopexit764, label %.lr.ph887.preheader

.lr.ph887.preheader:                              ; preds = %bb.ay
  %i.gp = add nuw i32 %.1490, 4
  %wide.trip.count = zext i32 %i.gp to i64
  br label %.lr.ph887

.lr.ph887:                                        ; preds = %.lr.ph887.preheader, %bb.ba
  %.0.add885 = phi i64 [ %.0.add, %bb.ba ], [ 5, %.lr.ph887.preheader ] ; 4 uses
  %i.gq = phi double [ %i.gw, %bb.ba ], [ %i.gk, %.lr.ph887.preheader ] ; 2 uses
  %.sroa.075.1884 = phi double [ %i.gs, %bb.ba ], [ %.sroa.075.0, %.lr.ph887.preheader ] ; 2 uses
  %i.gr = fcmp olt double %i.gq, %.sroa.075.1884
  br i1 %i.gr, label %Bfree.exit695.loopexit765, label %bb.az

bb.az:                                            ; preds = %.lr.ph887
  %exitcond.not = icmp eq i64 %.0.add885, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit766, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gs = fmul double %.sroa.075.1884, 1.000000e+01 ; 2 uses
  %i.gt = fmul double %i.gq, 1.000000e+01         ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.0.add885
  %i.gu = fptosi double %i.gt to i32              ; 2 uses
  %i.gv = sitofp i32 %i.gu to double
  %i.gw = fsub double %i.gt, %i.gv                ; 2 uses
  %i.gx = trunc i32 %i.gu to i8
  %i.gy = add i8 %i.gx, 48
  %.0.add = add nuw nsw i64 %.0.add885, 1         ; 2 uses
  store i8 %i.gy, ptr %.0.ptr, align 1, !tbaa !21
  %i.gz = fsub double 1.000000e+00, %i.gw
  %i.ha = fcmp olt double %i.gz, %i.gs
  br i1 %i.ha, label %.loopexit764, label %.lr.ph887

bb.bb:                                            ; preds = %bb.at
  %12 = fmul double %11, %i.fl                    ; 2 uses
  %i.hb = fptosi double %.promoted891 to i32      ; 2 uses
  %i.hc = sitofp i32 %i.hb to double
  %i.hd = fsub double %.promoted891, %i.hc        ; 3 uses
  %i.he = fcmp oeq double %i.hd, 0.000000e+00
  %i.hf = trunc i32 %i.hb to i8
  %i.hg = add i8 %i.hf, 48
  store i8 %i.hg, ptr %.ptr750.ptr, align 4, !tbaa !21
  %i.hh = icmp eq i32 %.1490, 1
  %i.hi = or i1 %i.he, %i.hh
  br i1 %i.hi, label %._crit_edge900, label %.lr.ph899

._crit_edge900:                                   ; preds = %.lr.ph899, %bb.bb
  %.lcssa892 = phi double [ %i.hd, %bb.bb ], [ %i.hv, %.lr.ph899 ] ; 2 uses
  %.1.add.lcssa890 = phi i64 [ 5, %bb.bb ], [ %.1.add, %.lr.ph899 ] ; 2 uses
  %i.hj = fadd double %12, 5.000000e-01
  %i.hk = fcmp ogt double %.lcssa892, %i.hj
  br i1 %i.hk, label %.loopexit764, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge900
  %i.hl = fsub double 5.000000e-01, %12
  %i.hm = fcmp olt double %.lcssa892, %i.hl
  br i1 %i.hm, label %.preheader762.preheader, label %.loopexit766

.preheader762.preheader:                          ; preds = %bb.bc
  %.ptr753.le = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.1.add.lcssa890
  br label %.preheader762

.preheader762:                                    ; preds = %.preheader762.preheader, %.preheader762
  %.2 = phi ptr [ %i.hn, %.preheader762 ], [ %.ptr753.le, %.preheader762.preheader ] ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !21
  %i.hp = icmp eq i8 %i.ho, 48
  br i1 %i.hp, label %.preheader762, label %Bfree.exit695, !llvm.loop !67

.lr.ph899:                                        ; preds = %bb.bb, %.lr.ph899
  %.1.add897 = phi i64 [ %.1.add, %.lr.ph899 ], [ 5, %bb.bb ] ; 2 uses
  %spec.select593896 = phi i32 [ %spec.select593, %.lr.ph899 ], [ %.1490, %bb.bb ]
  %i.hq = phi double [ %i.hv, %.lr.ph899 ], [ %i.hd, %bb.bb ]
  %.6508895 = phi i32 [ %i.hr, %.lr.ph899 ], [ 1, %bb.bb ]
  %i.hr = add nuw nsw i32 %.6508895, 1            ; 3 uses
  %i.hs = fmul double %i.hq, 1.000000e+01         ; 2 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.1.add897
  %i.ht = fptosi double %i.hs to i32              ; 2 uses
  %i.hu = sitofp i32 %i.ht to double
  %i.hv = fsub double %i.hs, %i.hu                ; 3 uses
  %i.hw = fcmp une double %i.hv, 0.000000e+00
  %spec.select593 = select i1 %i.hw, i32 %spec.select593896, i32 %i.hr ; 2 uses
  %i.hx = trunc i32 %i.ht to i8
  %i.hy = add i8 %i.hx, 48
  %.1.add = add nuw nsw i64 %.1.add897, 1         ; 2 uses
  store i8 %i.hy, ptr %.1.ptr, align 1, !tbaa !21
  %i.hz = icmp eq i32 %i.hr, %spec.select593
  br i1 %i.hz, label %._crit_edge900, label %.lr.ph899

.loopexit766:                                     ; preds = %bb.az, %bb.bc, %bb.as, %bb.ao
  store double %i.dt, ptr %7, align 8, !tbaa !21
  %i.ia = bitcast double %i.dt to i64             ; 2 uses
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = lshr i64 %i.ia, 32
  %i.id = trunc nuw i64 %i.ic to i32
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit766, %rv_alloc.exit
  %i.ie = phi i32 [ %i.ib, %.loopexit766 ], [ %i.cn, %rv_alloc.exit ] ; 2 uses
  %i.if = phi i32 [ %i.id, %.loopexit766 ], [ %i.co, %rv_alloc.exit ] ; 2 uses
  %i.ig = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %i.ih = icmp sgt i32 %i.ig, -1
  %i.ii = icmp slt i32 %.2474, 15
  %or.cond16 = and i1 %i.ii, %i.ih
  br i1 %or.cond16, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %i.ij = sext i32 %.2474 to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr @tens, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !23 ; 7 uses
  %i.im = icmp slt i32 %.0523704, 0
  %i.in = icmp slt i32 %.0489707, 1
  %or.cond18 = and i1 %i.in, %i.im
  br i1 %or.cond18, label %bb.bf, label %.preheader

.preheader:                                       ; preds = %bb.be
  %.promoted911 = load double, ptr %7, align 8, !tbaa !21 ; 2 uses
  %i.io = fdiv double %.promoted911, %i.il
  %i.ip = fptosi double %i.io to i32              ; 3 uses
  %i.iq = sitofp i32 %i.ip to double
  %i.ir = fneg double %i.iq
  %i.is = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.il, double %.promoted911) ; 3 uses
  %i.it = trunc i32 %i.ip to i8
  %i.iu = add i8 %i.it, 48
  store i8 %i.iu, ptr %.ptr750.ptr, align 4, !tbaa !21
  %i.iv = fcmp une double %i.is, 0.000000e+00
  br i1 %i.iv, label %.lr.ph917.preheader, label %Bfree.exit695.loopexit

.lr.ph917.preheader:                              ; preds = %.preheader
  %i.iw = icmp eq i32 %.0489707, 1
  br i1 %i.iw, label %.lr.ph917._crit_edge, label %.lr.ph1279

bb.bf:                                            ; preds = %bb.be
  %i.ix = icmp slt i32 %.0489707, 0
  br i1 %i.ix, label %cmp.exit641.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iy = load double, ptr %7, align 8, !tbaa !21
  %i.iz = fmul double %i.il, 5.000000e+00
  %i.ja = fcmp ugt double %i.iy, %i.iz
  br i1 %i.ja, label %cmp.exit641.thread724, label %cmp.exit641.thread

.lr.ph917:                                        ; preds = %.lr.ph1279
  %i.jb = add nuw nsw i32 %.75099151278, 1        ; 2 uses
  %i.jc = icmp eq i32 %i.jb, %.0489707
  br i1 %i.jc, label %.lr.ph917._crit_edge, label %.lr.ph1279

.lr.ph917._crit_edge:                             ; preds = %.lr.ph917, %.lr.ph917.preheader
  %.4.add916.lcssa = phi i64 [ 5, %.lr.ph917.preheader ], [ %.4.add, %.lr.ph917 ] ; 3 uses
  %.lcssa1199 = phi double [ %i.is, %.lr.ph917.preheader ], [ %i.jt, %.lr.ph917 ]
  %.lcssa1197 = phi i32 [ %i.ip, %.lr.ph917.preheader ], [ %i.jq, %.lr.ph917 ]
  %i.jd = fmul double %.lcssa1199, 2.000000e+00   ; 2 uses
  %i.je = fcmp ogt double %i.jd, %i.il
  br i1 %i.je, label %.loopexit764, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph917._crit_edge
  %.ptr755.le = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.4.add916.lcssa
  %i.jf = fcmp une double %i.jd, %i.il
  %i.jg = and i32 %.lcssa1197, 1
  %.not582 = icmp eq i32 %i.jg, 0
  %or.cond594 = select i1 %i.jf, i1 true, i1 %.not582
  br i1 %or.cond594, label %Bfree.exit695, label %.loopexit764

.loopexit764:                                     ; preds = %bb.ba, %bb.ay, %bb.bh, %.lr.ph917._crit_edge, %._crit_edge900
  %.5477 = phi i32 [ %.2474, %.lr.ph917._crit_edge ], [ %.2474, %bb.bh ], [ %.3475, %._crit_edge900 ], [ %.3475, %bb.ay ], [ %.3475, %bb.ba ] ; 2 uses
  %.5.idx = phi i64 [ %.4.add916.lcssa, %.lr.ph917._crit_edge ], [ %.4.add916.lcssa, %bb.bh ], [ %.1.add.lcssa890, %._crit_edge900 ], [ 5, %bb.ay ], [ %.0.add, %bb.ba ]
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %.loopexit764
  %.6.idx = phi i64 [ %.5.idx, %.loopexit764 ], [ %.6.add, %bb.bj ] ; 2 uses
  %.6.add = add nsw i64 %.6.idx, -1               ; 4 uses
  %.ptr752 = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.add
  %i.jh = load i8, ptr %.ptr752, align 1, !tbaa !21 ; 2 uses
  %i.ji = icmp eq i8 %i.jh, 57
  br i1 %i.ji, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %bb.bi
  %i.jj = icmp eq i64 %.6.add, 4
  br i1 %i.jj, label %bb.bk, label %bb.bi, !llvm.loop !68

bb.bk:                                            ; preds = %bb.bj
  %i.jk = add nsw i32 %.5477, 1
  store i8 48, ptr %.ptr750.ptr, align 4, !tbaa !21
  br label %bb.bl

.loopexit:                                        ; preds = %bb.bi
  %.ptr752.le = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.add
  %i.jl = add i8 %i.jh, 1
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit, %bb.bk
  %i.jm = phi i8 [ 49, %bb.bk ], [ %i.jl, %.loopexit ]
  %.ptr752770 = phi ptr [ %.ptr750.ptr, %bb.bk ], [ %.ptr752.le, %.loopexit ]
  %.6478 = phi i32 [ %i.jk, %bb.bk ], [ %.5477, %.loopexit ]
  %.6.ptr772 = getelementptr inbounds i8, ptr %.0.i.i, i64 %.6.idx
  store i8 %i.jm, ptr %.ptr752770, align 1, !tbaa !21
  br label %Bfree.exit695

.lr.ph1279:                                       ; preds = %.lr.ph917.preheader, %.lr.ph917
  %.75099151278 = phi i32 [ %i.jb, %.lr.ph917 ], [ 1, %.lr.ph917.preheader ]
  %i.jn = phi double [ %i.jt, %.lr.ph917 ], [ %i.is, %.lr.ph917.preheader ]
  %.4.add9161277 = phi i64 [ %.4.add, %.lr.ph917 ], [ 5, %.lr.ph917.preheader ] ; 2 uses
  %i.jo = fmul double %i.jn, 1.000000e+01         ; 2 uses
  %.4.ptr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.4.add9161277
  %i.jp = fdiv double %i.jo, %i.il
  %i.jq = fptosi double %i.jp to i32              ; 3 uses
  %i.jr = sitofp i32 %i.jq to double
  %i.js = fneg double %i.jr
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.js, double %i.il, double %i.jo) ; 3 uses
  %i.ju = trunc i32 %i.jq to i8
  %i.jv = add i8 %i.ju, 48
  %.4.add = add nuw nsw i64 %.4.add9161277, 1     ; 3 uses
  store i8 %i.jv, ptr %.4.ptr, align 1, !tbaa !21
  %i.jw = fcmp une double %i.jt, 0.000000e+00
  br i1 %i.jw, label %.lr.ph917, label %Bfree.exit695.loopexit

bb.bm:                                            ; preds = %bb.bd
  %i.jx = icmp eq i32 %.2470715, 0                ; 5 uses
  br i1 %i.jx, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jy = add nsw i32 %i.ig, 1075
  %i.jz = sub nsw i32 54, %i.cp
  %i.ka = select i1 %.not555.not, i32 %i.jy, i32 %i.jz ; 2 uses
  %i.kb = add nsw i32 %i.ka, %.1517
  %i.kc = add nsw i32 %i.ka, %.1463
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !16 ; 3 uses
  %.not.i.i623 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i623, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !18
  store ptr %i.kf, ptr %i.kd, align 8, !tbaa !16
  br label %i2b.exit

bb.bp:                                            ; preds = %bb.bn
  %i.kg = tail call ptr @jv_mem_alloc(i64 noundef 36) #10 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i32 1, ptr %i.kh, align 8, !tbaa !19
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  store i32 2, ptr %i.ki, align 4, !tbaa !25
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.bo, %bb.bp
  %.0.i.i624 = phi ptr [ %i.ke, %bb.bo ], [ %i.kg, %bb.bp ] ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 20
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 16
  store i32 0, ptr %i.kk, align 8, !tbaa !26
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i.i624, i64 24
  store i32 1, ptr %i.kl, align 8, !tbaa !27
  store i32 1, ptr %i.kj, align 4, !tbaa !28
  br label %bb.bq

bb.bq:                                            ; preds = %i2b.exit, %bb.bm
end_hunk_2
