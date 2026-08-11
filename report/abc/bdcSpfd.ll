inline.NumInlined: 142
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Bdc_SpfdDecompose:bb.a
bb.l:                                             ; preds = %bb.k
  %.not9.i11.i492 = icmp eq ptr %.pre751, null
  %i.li = zext nneg i32 %spec.select.i490 to i64
  %i.lj = shl nuw nsw i64 %i.li, 3                ; 2 uses
  br i1 %.not9.i11.i492, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lk = call ptr @realloc(ptr noundef nonnull %.pre751, i64 noundef %i.lj) #24
  br label %Vec_PtrGrow.exit12.sink.split.i493

bb.n:                                             ; preds = %bb.l
  %i.ll = call noalias ptr @malloc(i64 noundef %i.lj) #22
  br label %Vec_PtrGrow.exit12.sink.split.i493

Vec_PtrGrow.exit12.sink.split.i493:               ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.lf, %bb.j ], [ %i.le, %bb.i ], [ %i.lk, %bb.m ], [ %i.ll, %bb.n ] ; 2 uses
  %spec.select.sink.i494 = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i490, %bb.m ], [ %spec.select.i490, %bb.n ]
  store ptr %storemerge, ptr %i.bc, align 8, !tbaa !8
  store i32 %spec.select.sink.i494, ptr %i.az, align 8, !tbaa !21
  %.pre752 = load i32, ptr %i.ba, align 4, !tbaa !34
  br label %Vec_PtrPush.exit497

Vec_PtrPush.exit497:                              ; preds = %._crit_edge585.Vec_PtrPush.exit497_crit_edge, %bb.k, %Vec_PtrGrow.exit12.sink.split.i493
  %i.lm = phi i32 [ %i.kz, %._crit_edge585.Vec_PtrPush.exit497_crit_edge ], [ %i.kz, %bb.k ], [ %.pre752, %Vec_PtrGrow.exit12.sink.split.i493 ] ; 2 uses
  %i.ln = phi ptr [ %.pre750, %._crit_edge585.Vec_PtrPush.exit497_crit_edge ], [ %.pre751, %bb.k ], [ %storemerge, %Vec_PtrGrow.exit12.sink.split.i493 ]
  %i.lo = add nsw i32 %i.lm, 1
  store i32 %i.lo, ptr %i.ba, align 4, !tbaa !34
  %i.lp = sext i32 %i.lm to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.ln, i64 %i.lp
  store ptr %i.iz, ptr %i.lq, align 8, !tbaa !12
  %i.lr = load i32, ptr %i.bd, align 8, !tbaa !22
  %i.ls = icmp eq i32 %i.lr, 1
  br i1 %i.ls, label %Vec_IntGrow.exit11.sink.split.i501, label %Vec_PtrPush.exit497.Vec_IntPush.exit505_crit_edge

Vec_PtrPush.exit497.Vec_IntPush.exit505_crit_edge: ; preds = %Vec_PtrPush.exit497
  %.pre753 = load ptr, ptr %i.bg, align 8, !tbaa !25
  br label %Vec_IntPush.exit505

Vec_IntGrow.exit11.sink.split.i501:               ; preds = %Vec_PtrPush.exit497
  %i.lt = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.in, i64 noundef 64) #24 ; 2 uses
  store ptr %i.lt, ptr %i.bg, align 8, !tbaa !25
  store i32 16, ptr %i.bd, align 8, !tbaa !22
  br label %Vec_IntPush.exit505

Vec_IntPush.exit505:                              ; preds = %Vec_PtrPush.exit497.Vec_IntPush.exit505_crit_edge, %Vec_IntGrow.exit11.sink.split.i501
  %i.lu = phi ptr [ %.pre753, %Vec_PtrPush.exit497.Vec_IntPush.exit505_crit_edge ], [ %i.lt, %Vec_IntGrow.exit11.sink.split.i501 ]
  store i32 2, ptr %i.be, align 4, !tbaa !26
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store i32 %.0440.lcssa, ptr %i.lv, align 4, !tbaa !35
  %i.lw = icmp sgt i32 %.0440.lcssa, 0
  br i1 %i.lw, label %.lr.ph588.preheader, label %._crit_edge589

.lr.ph588.preheader:                              ; preds = %Vec_IntPush.exit505
  %wide.trip.count680 = zext nneg i32 %.0440.lcssa to i64
  %invariant.op855 = and <2 x i64> %i.m, splat (i64 6148914691236517205)
  %invariant.op857 = and <2 x i64> %i.n, splat (i64 6148914691236517205)
  br label %.lr.ph588

bb.o:                                             ; preds = %.lr.ph588
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge589, label %.lr.ph588, !llvm.loop !41

.lr.ph588:                                        ; preds = %.lr.ph588.preheader, %bb.o
  %indvars.iv677 = phi i64 [ 0, %.lr.ph588.preheader ], [ %indvars.iv.next678, %bb.o ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %indvars.iv677 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !13 ; 4 uses
  %i.ma = xor i64 %i.lz, -1
  %i.mb = insertelement <2 x i64> poison, i64 %i.ma, i64 0
  %i.mc = shufflevector <2 x i64> %i.mb, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.md = and <2 x i64> %i.mc, %i.m
  %.reass856 = and <2 x i64> %i.mc, %invariant.op855
  %i.me = lshr <2 x i64> %i.md, splat (i64 1)
  %i.mf = and <2 x i64> %i.me, splat (i64 6148914691236517205)
  %i.mg = add nuw <2 x i64> %i.mf, %.reass856     ; 2 uses
  %i.mh = and <2 x i64> %i.mg, splat (i64 3689348814741910323)
  %i.mi = lshr <2 x i64> %i.mg, splat (i64 2)
  %i.mj = and <2 x i64> %i.mi, splat (i64 3689348814741910323)
  %i.mk = insertelement <2 x i64> poison, i64 %i.lz, i64 0
  %i.ml = shufflevector <2 x i64> %i.mk, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mm = and <2 x i64> %i.ml, %i.n
  %.reass858 = and <2 x i64> %i.ml, %invariant.op857
  %i.mn = lshr <2 x i64> %i.mm, splat (i64 1)
  %i.mo = and <2 x i64> %i.mn, splat (i64 6148914691236517205)
  %i.mp = add nuw <2 x i64> %i.mo, %.reass858     ; 2 uses
  %i.mq = and <2 x i64> %i.mp, splat (i64 3689348814741910323)
  %i.mr = lshr <2 x i64> %i.mp, splat (i64 2)
  %i.ms = and <2 x i64> %i.mr, splat (i64 3689348814741910323)
  %i.mt = add nuw nsw <2 x i64> %i.mj, %i.mh      ; 2 uses
  %i.mu = and <2 x i64> %i.mt, splat (i64 506381209866536711)
  %i.mv = lshr <2 x i64> %i.mt, splat (i64 4)
  %i.mw = and <2 x i64> %i.mv, splat (i64 506381209866536711)
  %i.mx = add nuw nsw <2 x i64> %i.mw, %i.mu      ; 2 uses
  %i.my = and <2 x i64> %i.mx, splat (i64 4222189076152335)
  %i.mz = lshr <2 x i64> %i.mx, splat (i64 8)
  %i.na = and <2 x i64> %i.mz, splat (i64 4222189076152335)
  %i.nb = add nuw nsw <2 x i64> %i.na, %i.my      ; 2 uses
  %i.nc = and <2 x i64> %i.nb, splat (i64 133143986207)
  %i.nd = lshr <2 x i64> %i.nb, splat (i64 16)
  %i.ne = and <2 x i64> %i.nd, splat (i64 133143986207)
  %i.nf = add nuw nsw <2 x i64> %i.ne, %i.nc      ; 2 uses
  %i.ng = lshr <2 x i64> %i.nf, splat (i64 32)
  %i.nh = add nuw nsw <2 x i64> %i.ng, %i.nf
  %i.ni = add nuw nsw <2 x i64> %i.ms, %i.mq      ; 2 uses
  %i.nj = and <2 x i64> %i.ni, splat (i64 506381209866536711)
  %i.nk = lshr <2 x i64> %i.ni, splat (i64 4)
  %i.nl = and <2 x i64> %i.nk, splat (i64 506381209866536711)
  %i.nm = add nuw nsw <2 x i64> %i.nl, %i.nj      ; 2 uses
  %i.nn = and <2 x i64> %i.nm, splat (i64 4222189076152335)
  %i.no = lshr <2 x i64> %i.nm, splat (i64 8)
  %i.np = and <2 x i64> %i.no, splat (i64 4222189076152335)
  %i.nq = add nuw nsw <2 x i64> %i.np, %i.nn      ; 2 uses
  %i.nr = and <2 x i64> %i.nq, splat (i64 133143986207)
  %i.ns = lshr <2 x i64> %i.nq, splat (i64 16)
  %i.nt = and <2 x i64> %i.ns, splat (i64 133143986207)
  %i.nu = add nuw nsw <2 x i64> %i.nt, %i.nr      ; 2 uses
  %i.nv = lshr <2 x i64> %i.nu, splat (i64 32)
  %i.nw = add nuw nsw <2 x i64> %i.nv, %i.nu
  %i.nx = mul <2 x i64> %i.nh, %i.nw
  %i.ny = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.nx)
  %i.nz = load i64, ptr %i.lx, align 8
  %i.oa = shl i64 %i.ny, 52
  %i.ob = and i64 %i.nz, 4503599627370495
  %i.oc = or disjoint i64 %i.oa, %i.ob
  store i64 %i.oc, ptr %i.lx, align 8
  %i.od = icmp eq i64 %0, %i.lz
  %i.oe = xor i64 %i.lz, %0
  %i.of = icmp eq i64 %i.oe, -1
  %or.cond477 = or i1 %i.od, %i.of
  br i1 %or.cond477, label %.thread543, label %bb.o

.thread543:                                       ; preds = %.lr.ph588
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.ba

._crit_edge589:                                   ; preds = %bb.o, %Vec_IntPush.exit505
  %i.og = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.0440.lcssa, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.oh = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #21
  %i.oi = icmp slt i32 %i.oh, 0
  br i1 %i.oi, label %Abc_Clock.exit507, label %bb.p

bb.p:                                             ; preds = %._crit_edge589
  %i.oj = load i64, ptr %6, align 8, !tbaa !36
  %i.ok = mul nsw i64 %i.oj, 1000000
  %i.ol = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !38
  %i.on = sdiv i64 %i.om, 1000
  %i.oo = add nsw i64 %i.on, %i.ok
  br label %Abc_Clock.exit507

Abc_Clock.exit507:                                ; preds = %._crit_edge589, %bb.p
  %.0.i506 = phi i64 [ %i.oo, %bb.p ], [ -1, %._crit_edge589 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.op = add i64 %.0.i506, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.14)
  %i.oq = sitofp i64 %i.op to double
  %i.or = fdiv double %i.oq, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, double noundef %i.or)
  %i.os = sext i32 %i.g to i64
  %i.ot = call noalias ptr @calloc(i64 noundef %i.os, i64 noundef 16) #23 ; 6 uses
  %.not632 = icmp slt i32 %3, 2
  br i1 %.not632, label %._crit_edge635, label %.lr.ph634

.lr.ph634:                                        ; preds = %Abc_Clock.exit507
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ov = sext i32 %2 to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ox = zext i32 %2 to i64
  %wide.trip.count744 = zext i32 %i.d to i64
  %invariant.op889 = and <2 x i64> %i.o, splat (i64 6148914691236517205)
  %invariant.op891 = and <2 x i64> %i.p, splat (i64 6148914691236517205)
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph634, %Abc_Clock.exit535
  %indvars.iv739.a = phi i64 [ 2, %.lr.ph634 ], [ %indvars.iv.next740.a, %Abc_Clock.exit535 ] ; 4 uses
  %indvars.iv737 = phi i64 [ 1, %.lr.ph634 ], [ %indvars.iv.next738, %Abc_Clock.exit535 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.oy = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #21
  %i.oz = icmp slt i32 %i.oy, 0
  br i1 %i.oz, label %.lr.ph601, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.pa = load i64, ptr %5, align 8, !tbaa !36
  %.neg555 = mul i64 %i.pa, -1000000
  %i.pb = load i64, ptr %i.ou, align 8, !tbaa !38
  %.neg554 = sdiv i64 %i.pb, -1000
  %.neg556 = add i64 %.neg554, %.neg555
  br label %.lr.ph601

.lr.ph601:                                        ; preds = %bb.r, %bb.q
  %.0.i508.neg = phi i64 [ %.neg556, %bb.r ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.pc = add nsw i64 %indvars.iv739.a, -1        ; 4 uses
  %.val481 = load ptr, ptr %i.bc, align 8, !tbaa !8 ; 2 uses
  %i.pd = getelementptr inbounds [8 x i8], ptr %.val481, i64 %i.pc
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !12 ; 3 uses
  %.val484 = load ptr, ptr %i.bg, align 8, !tbaa !25 ; 6 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %.val484, i64 %i.pc
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !35 ; 6 uses
  %i.ph = icmp slt i32 %i.pg, 1
  %i.pi = shl i64 %i.pc, 32
  %i.pj = and i64 %i.pi, 1095216660480            ; 5 uses
  %8 = mul i32 %i.pg, 5                           ; 2 uses
  %wide.trip.count689 = zext nneg i32 %i.pg to i64
  br label %bb.s

.preheader558:                                    ; preds = %._crit_edge597
  %i.pk = icmp sgt i32 %i.pg, 0
  br i1 %i.pk, label %.lr.ph618, label %._crit_edge619

.lr.ph618:                                        ; preds = %.preheader558
  %i.pl = and i64 %i.pc, 255                      ; 6 uses
  %i.pm = shl nuw nsw i64 %i.pl, 32               ; 5 uses
  %i.pn = zext nneg i32 %i.pg to i64
  %wide.trip.count717 = zext nneg i32 %i.pg to i64 ; 2 uses
  %invariant.op874 = or disjoint i64 %i.pm, %i.pl
  %invariant.op877 = or disjoint i64 %i.pm, %i.pl
  %invariant.op880 = or disjoint i64 %i.pm, %i.pl
  %invariant.op883 = or disjoint i64 %i.pm, %i.pl
  %invariant.op886 = or disjoint i64 %i.pm, %i.pl
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph601, %._crit_edge597
  %indvars.iv696 = phi i64 [ 0, %.lr.ph601 ], [ %indvars.iv.next697, %._crit_edge597 ] ; 4 uses
  %.2600 = phi i32 [ 0, %.lr.ph601 ], [ %.3.lcssa, %._crit_edge597 ] ; 3 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %.val481, i64 %indvars.iv696
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !12
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.val484, i64 %indvars.iv696
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !35 ; 3 uses
  %i.ps = icmp slt i32 %i.pr, 1
  %brmerge = select i1 %i.ps, i1 true, i1 %i.ph
  br i1 %brmerge, label %._crit_edge597, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %bb.s
  %i.pt = and i64 %indvars.iv696, 255             ; 5 uses
  %wide.trip.count694 = zext nneg i32 %i.pr to i64
  %invariant.op859 = or disjoint i64 %i.pj, %i.pt
  %invariant.op862 = or disjoint i64 %i.pj, %i.pt
  %invariant.op865 = or disjoint i64 %i.pj, %i.pt
  %invariant.op868 = or disjoint i64 %i.pj, %i.pt
  %invariant.op871 = or disjoint i64 %i.pj, %i.pt
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge593.us
  %indvars.iv691 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next692, %._crit_edge593.us ] ; 3 uses
  %indvars.iv682 = phi i32 [ %.2600, %.preheader.us.preheader ], [ %indvars.iv.next683, %._crit_edge593.us ] ; 2 uses
  %9 = sext i32 %indvars.iv682 to i64
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %indvars.iv691
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8 ; 5 uses
  %i.pw = shl i64 %indvars.iv691, 8
  %i.px = and i64 %i.pw, 1048320                  ; 5 uses
  %invariant.op861 = or disjoint i64 %invariant.op859, %i.px
  %invariant.op864 = or disjoint i64 %invariant.op862, %i.px
  %invariant.op867 = or disjoint i64 %invariant.op865, %i.px
  %invariant.op870 = or disjoint i64 %invariant.op868, %i.px
  %invariant.op873 = or disjoint i64 %invariant.op871, %i.px
  br label %bb.t

bb.t:                                             ; preds = %.preheader.us, %bb.t
  %indvars.iv684.a = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next685, %bb.t ] ; 3 uses
  %indvars.iv682.a = phi i64 [ %9, %.preheader.us ], [ %indvars.iv.next683.a, %bb.t ] ; 2 uses
  %i.py = load i64, ptr %i.pv, align 8, !tbaa !13
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %indvars.iv684.a
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 5 uses
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !13
  %i.qc = and i64 %i.qb, %i.py
  %i.qd = getelementptr [16 x i8], ptr %i.ot, i64 %indvars.iv682.a ; 11 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store i64 %i.qc, ptr %i.qe, align 8, !tbaa !13
  %i.qf = load i64, ptr %i.qd, align 8
  %i.qg = and i64 %i.qf, -4503599627370496
  %i.qh = shl i64 %indvars.iv684.a, 40
  %i.qi = and i64 %i.qh, 4502500115742720         ; 5 uses
  %.reass788.reass = or disjoint i64 %i.qg, %invariant.op861
  %i.qj = or disjoint i64 %.reass788.reass, %i.qi
  store i64 %i.qj, ptr %i.qd, align 8
  %i.qk = load i64, ptr %i.pv, align 8, !tbaa !13
  %i.ql = xor i64 %i.qk, -1
  %i.qm = load i64, ptr %i.qa, align 8, !tbaa !13
  %i.qn = and i64 %i.qm, %i.ql
  %i.qo = getelementptr i8, ptr %i.qd, i64 16     ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qd, i64 24
  store i64 %i.qn, ptr %i.qp, align 8, !tbaa !13
  %i.qq = load i64, ptr %i.qo, align 8
  %i.qr = and i64 %i.qq, -4503599627370496
  %.reass791.reass = or disjoint i64 %i.qr, %invariant.op864
  %i.qs = or disjoint i64 %.reass791.reass, %i.qi
  %i.qt = or disjoint i64 %i.qs, 1048576
  store i64 %i.qt, ptr %i.qo, align 8
  %i.qu = load i64, ptr %i.pv, align 8, !tbaa !13
  %i.qv = load i64, ptr %i.qa, align 8, !tbaa !13
  %i.qw = xor i64 %i.qv, -1
  %i.qx = and i64 %i.qu, %i.qw
  %i.qy = getelementptr i8, ptr %i.qd, i64 32     ; 2 uses
  %i.qz = getelementptr i8, ptr %i.qd, i64 40
  store i64 %i.qx, ptr %i.qz, align 8, !tbaa !13
  %i.ra = load i64, ptr %i.qy, align 8
  %i.rb = and i64 %i.ra, -4503599627370496
  %.reass794.reass = or disjoint i64 %i.rb, %invariant.op867
  %i.rc = or disjoint i64 %.reass794.reass, %i.qi
  %i.rd = or disjoint i64 %i.rc, 2097152
  store i64 %i.rd, ptr %i.qy, align 8
  %i.re = load i64, ptr %i.pv, align 8, !tbaa !13
  %i.rf = load i64, ptr %i.qa, align 8, !tbaa !13
  %.demorgan468.us = or i64 %i.rf, %i.re
  %i.rg = xor i64 %.demorgan468.us, -1
  %i.rh = getelementptr i8, ptr %i.qd, i64 48     ; 2 uses
  %i.ri = getelementptr i8, ptr %i.qd, i64 56
  store i64 %i.rg, ptr %i.ri, align 8, !tbaa !13
  %i.rj = load i64, ptr %i.rh, align 8
  %i.rk = and i64 %i.rj, -4503599627370496
  %.reass797.reass = or disjoint i64 %i.rk, %invariant.op870
  %i.rl = or disjoint i64 %.reass797.reass, %i.qi
  %i.rm = or disjoint i64 %i.rl, 3145728
  store i64 %i.rm, ptr %i.rh, align 8
  %i.rn = load i64, ptr %i.pv, align 8, !tbaa !13
  %i.ro = load i64, ptr %i.qa, align 8, !tbaa !13
  %i.rp = xor i64 %i.ro, %i.rn
  %i.rq = getelementptr i8, ptr %i.qd, i64 64     ; 2 uses
  %i.rr = getelementptr i8, ptr %i.qd, i64 72
  store i64 %i.rp, ptr %i.rr, align 8, !tbaa !13
  %i.rs = load i64, ptr %i.rq, align 8
  %i.rt = and i64 %i.rs, -4503599627370496
  %indvars.iv.next683.a = add nsw i64 %indvars.iv682.a, 5
  %.reass800.reass = or disjoint i64 %i.rt, %invariant.op873
  %i.ru = or disjoint i64 %.reass800.reass, %i.qi
  %i.rv = or disjoint i64 %i.ru, 4194304
  store i64 %i.rv, ptr %i.rq, align 8
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684.a, 1 ; 2 uses
  %exitcond690.not = icmp eq i64 %indvars.iv.next685, %wide.trip.count689
  br i1 %exitcond690.not, label %._crit_edge593.us, label %bb.t, !llvm.loop !42

._crit_edge593.us:                                ; preds = %bb.t
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %indvars.iv.next683 = add i32 %indvars.iv682, %8
  %exitcond695.not = icmp eq i64 %indvars.iv.next692, %wide.trip.count694
  br i1 %exitcond695.not, label %._crit_edge597.loopexit, label %.preheader.us, !llvm.loop !43

._crit_edge597.loopexit:                          ; preds = %._crit_edge593.us
  %10 = mul i32 %8, %i.pr
  %11 = add i32 %.2600, %10
  br label %._crit_edge597

._crit_edge597:                                   ; preds = %bb.s, %._crit_edge597.loopexit
  %.3.lcssa = phi i32 [ %.2600, %bb.s ], [ %11, %._crit_edge597.loopexit ] ; 3 uses
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond702.not = icmp eq i64 %indvars.iv.next697, %indvars.iv737
  br i1 %exitcond702.not, label %.preheader558, label %bb.s, !llvm.loop !44

.loopexit.loopexit:                               ; preds = %bb.v
  %i.rw = trunc nsw i64 %indvars.iv.next704 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.u
  %.6.lcssa = phi i32 [ %.5617, %bb.u ], [ %i.rw, %.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next706.a = add nuw nsw i64 %indvars.iv705.a, 1
  %exitcond718.not = icmp eq i64 %indvars.iv.next715, %wide.trip.count717
  br i1 %exitcond718.not, label %._crit_edge619, label %bb.u, !llvm.loop !45

bb.u:                                             ; preds = %.lr.ph618, %.loopexit
  %indvars.iv714 = phi i64 [ 0, %.lr.ph618 ], [ %indvars.iv.next715, %.loopexit ] ; 3 uses
  %indvars.iv705.a = phi i64 [ 1, %.lr.ph618 ], [ %indvars.iv.next706.a, %.loopexit ] ; 2 uses
  %.5617 = phi i32 [ %.3.lcssa, %.lr.ph618 ], [ %.6.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv.next715 = add nuw nsw i64 %indvars.iv714, 1 ; 3 uses
  %i.rx = icmp samesign ult i64 %indvars.iv.next715, %i.pn
  br i1 %i.rx, label %.lr.ph614, label %.loopexit

.lr.ph614:                                        ; preds = %bb.u
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %indvars.iv714
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 5 uses
  %i.sa = shl i64 %indvars.iv714, 8
  %i.sb = and i64 %i.sa, 1048320                  ; 5 uses
  %i.sc = sext i32 %.5617 to i64
  %invariant.op876 = or disjoint i64 %invariant.op874, %i.sb
  %invariant.op879 = or disjoint i64 %invariant.op877, %i.sb
  %invariant.op882 = or disjoint i64 %invariant.op880, %i.sb
  %invariant.op885 = or disjoint i64 %invariant.op883, %i.sb
  %invariant.op888 = or disjoint i64 %invariant.op886, %i.sb
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph614, %bb.v
  %indvars.iv707 = phi i64 [ %indvars.iv705.a, %.lr.ph614 ], [ %indvars.iv.next708, %bb.v ] ; 3 uses
  %indvars.iv703 = phi i64 [ %i.sc, %.lr.ph614 ], [ %indvars.iv.next704, %bb.v ] ; 2 uses
  %i.sd = load i64, ptr %i.rz, align 8, !tbaa !13
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %indvars.iv707
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 5 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !13
  %i.sh = and i64 %i.sg, %i.sd
  %i.si = getelementptr [16 x i8], ptr %i.ot, i64 %indvars.iv703 ; 11 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store i64 %i.sh, ptr %i.sj, align 8, !tbaa !13
  %i.sk = load i64, ptr %i.si, align 8
  %i.sl = and i64 %i.sk, -4503599627370496
  %i.sm = shl i64 %indvars.iv707, 40
  %i.sn = and i64 %i.sm, 4502500115742720         ; 5 uses
  %.reass803.reass = or disjoint i64 %i.sl, %invariant.op876
  %i.so = or disjoint i64 %.reass803.reass, %i.sn
  store i64 %i.so, ptr %i.si, align 8
  %i.sp = load i64, ptr %i.rz, align 8, !tbaa !13
  %i.sq = xor i64 %i.sp, -1
  %i.sr = load i64, ptr %i.sf, align 8, !tbaa !13
  %i.ss = and i64 %i.sr, %i.sq
  %i.st = getelementptr i8, ptr %i.si, i64 16     ; 2 uses
  %i.su = getelementptr i8, ptr %i.si, i64 24
  store i64 %i.ss, ptr %i.su, align 8, !tbaa !13
  %i.sv = load i64, ptr %i.st, align 8
  %i.sw = and i64 %i.sv, -4503599627370496
  %.reass806.reass = or disjoint i64 %i.sw, %invariant.op879
  %i.sx = or disjoint i64 %.reass806.reass, %i.sn
  %i.sy = or disjoint i64 %i.sx, 1048576
  store i64 %i.sy, ptr %i.st, align 8
  %i.sz = load i64, ptr %i.rz, align 8, !tbaa !13
  %i.ta = load i64, ptr %i.sf, align 8, !tbaa !13
  %i.tb = xor i64 %i.ta, -1
  %i.tc = and i64 %i.sz, %i.tb
  %i.td = getelementptr i8, ptr %i.si, i64 32     ; 2 uses
  %i.te = getelementptr i8, ptr %i.si, i64 40
  store i64 %i.tc, ptr %i.te, align 8, !tbaa !13
  %i.tf = load i64, ptr %i.td, align 8
  %i.tg = and i64 %i.tf, -4503599627370496
  %.reass809.reass = or disjoint i64 %i.tg, %invariant.op882
  %i.th = or disjoint i64 %.reass809.reass, %i.sn
  %i.ti = or disjoint i64 %i.th, 2097152
  store i64 %i.ti, ptr %i.td, align 8
  %i.tj = load i64, ptr %i.rz, align 8, !tbaa !13
  %i.tk = load i64, ptr %i.sf, align 8, !tbaa !13
  %.demorgan = or i64 %i.tk, %i.tj
  %i.tl = xor i64 %.demorgan, -1
  %i.tm = getelementptr i8, ptr %i.si, i64 48     ; 2 uses
  %i.tn = getelementptr i8, ptr %i.si, i64 56
  store i64 %i.tl, ptr %i.tn, align 8, !tbaa !13
  %i.to = load i64, ptr %i.tm, align 8
  %i.tp = and i64 %i.to, -4503599627370496
  %.reass812.reass = or disjoint i64 %i.tp, %invariant.op885
  %i.tq = or disjoint i64 %.reass812.reass, %i.sn
  %i.tr = or disjoint i64 %i.tq, 3145728
  store i64 %i.tr, ptr %i.tm, align 8
  %i.ts = load i64, ptr %i.rz, align 8, !tbaa !13
  %i.tt = load i64, ptr %i.sf, align 8, !tbaa !13
  %i.tu = xor i64 %i.tt, %i.ts
  %i.tv = getelementptr i8, ptr %i.si, i64 64     ; 2 uses
  %i.tw = getelementptr i8, ptr %i.si, i64 72
  store i64 %i.tu, ptr %i.tw, align 8, !tbaa !13
  %i.tx = load i64, ptr %i.tv, align 8
  %i.ty = and i64 %i.tx, -4503599627370496
  %indvars.iv.next704 = add nsw i64 %indvars.iv703, 5 ; 2 uses
  %.reass815.reass = or disjoint i64 %i.ty, %invariant.op888
  %i.tz = or disjoint i64 %.reass815.reass, %i.sn
  %i.ua = or disjoint i64 %i.tz, 4194304
  store i64 %i.ua, ptr %i.tv, align 8
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond713.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count717
  br i1 %exitcond713.not, label %.loopexit.loopexit, label %bb.v, !llvm.loop !46

._crit_edge619:                                   ; preds = %.loopexit, %.preheader558
  %.5.lcssa = phi i32 [ %.3.lcssa, %.preheader558 ], [ %.6.lcssa, %.loopexit ] ; 7 uses
  store i32 0, ptr %i.bi, align 4, !tbaa !26
  %i.ub = icmp sgt i32 %.5.lcssa, 0               ; 2 uses
  br i1 %i.ub, label %.lr.ph623.preheader, label %._crit_edge619.._crit_edge624_crit_edge

._crit_edge619.._crit_edge624_crit_edge:          ; preds = %._crit_edge619
  %.val485.pre = load ptr, ptr %i.bk, align 8, !tbaa !25
  br label %._crit_edge624

.lr.ph623.preheader:                              ; preds = %._crit_edge619
  %wide.trip.count722 = zext nneg i32 %.5.lcssa to i64
  br label %.lr.ph623

bb.w:                                             ; preds = %Vec_IntPush.exit517
  %indvars.iv.next720 = add nuw nsw i64 %indvars.iv719, 1 ; 2 uses
  %exitcond723.not = icmp eq i64 %indvars.iv.next720, %wide.trip.count722
  br i1 %exitcond723.not, label %._crit_edge624, label %.lr.ph623, !llvm.loop !47

.lr.ph623:                                        ; preds = %.lr.ph623.preheader, %bb.w
  %indvars.iv719 = phi i64 [ 0, %.lr.ph623.preheader ], [ %indvars.iv.next720, %bb.w ] ; 2 uses
  %i.uc = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv719 ; 8 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8 ; 5 uses
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !13 ; 3 uses
  %i.uf = xor i64 %i.ue, -1
  %i.ug = insertelement <2 x i64> poison, i64 %i.uf, i64 0
  %i.uh = shufflevector <2 x i64> %i.ug, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ui = and <2 x i64> %i.uh, %i.o
  %.reass890 = and <2 x i64> %i.uh, %invariant.op889
  %i.uj = lshr <2 x i64> %i.ui, splat (i64 1)
  %i.uk = and <2 x i64> %i.uj, splat (i64 6148914691236517205)
  %i.ul = add nuw <2 x i64> %i.uk, %.reass890     ; 2 uses
  %i.um = and <2 x i64> %i.ul, splat (i64 3689348814741910323)
  %i.un = lshr <2 x i64> %i.ul, splat (i64 2)
  %i.uo = and <2 x i64> %i.un, splat (i64 3689348814741910323)
  %i.up = insertelement <2 x i64> poison, i64 %i.ue, i64 0
  %i.uq = shufflevector <2 x i64> %i.up, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ur = and <2 x i64> %i.uq, %i.p
  %.reass892 = and <2 x i64> %i.uq, %invariant.op891
  %i.us = lshr <2 x i64> %i.ur, splat (i64 1)
  %i.ut = and <2 x i64> %i.us, splat (i64 6148914691236517205)
  %i.uu = add nuw <2 x i64> %i.ut, %.reass892     ; 2 uses
  %i.uv = and <2 x i64> %i.uu, splat (i64 3689348814741910323)
  %i.uw = lshr <2 x i64> %i.uu, splat (i64 2)
  %i.ux = and <2 x i64> %i.uw, splat (i64 3689348814741910323)
  %i.uy = add nuw nsw <2 x i64> %i.uo, %i.um      ; 2 uses
  %i.uz = and <2 x i64> %i.uy, splat (i64 506381209866536711)
  %i.va = lshr <2 x i64> %i.uy, splat (i64 4)
  %i.vb = and <2 x i64> %i.va, splat (i64 506381209866536711)
  %i.vc = add nuw nsw <2 x i64> %i.vb, %i.uz      ; 2 uses
  %i.vd = and <2 x i64> %i.vc, splat (i64 4222189076152335)
  %i.ve = lshr <2 x i64> %i.vc, splat (i64 8)
  %i.vf = and <2 x i64> %i.ve, splat (i64 4222189076152335)
  %i.vg = add nuw nsw <2 x i64> %i.vf, %i.vd      ; 2 uses
  %i.vh = and <2 x i64> %i.vg, splat (i64 133143986207)
  %i.vi = lshr <2 x i64> %i.vg, splat (i64 16)
  %i.vj = and <2 x i64> %i.vi, splat (i64 133143986207)
  %i.vk = add nuw nsw <2 x i64> %i.vj, %i.vh      ; 2 uses
  %i.vl = lshr <2 x i64> %i.vk, splat (i64 32)
  %i.vm = add nuw nsw <2 x i64> %i.vl, %i.vk
  %i.vn = trunc <2 x i64> %i.vm to <2 x i16>
  %i.vo = add nuw nsw <2 x i64> %i.ux, %i.uv      ; 2 uses
  %i.vp = and <2 x i64> %i.vo, splat (i64 506381209866536711)
  %i.vq = lshr <2 x i64> %i.vo, splat (i64 4)
  %i.vr = and <2 x i64> %i.vq, splat (i64 506381209866536711)
  %i.vs = add nuw nsw <2 x i64> %i.vr, %i.vp      ; 2 uses
  %i.vt = and <2 x i64> %i.vs, splat (i64 4222189076152335)
  %i.vu = lshr <2 x i64> %i.vs, splat (i64 8)
  %i.vv = and <2 x i64> %i.vu, splat (i64 4222189076152335)
  %i.vw = add nuw nsw <2 x i64> %i.vv, %i.vt      ; 2 uses
  %i.vx = and <2 x i64> %i.vw, splat (i64 133143986207)
  %i.vy = lshr <2 x i64> %i.vw, splat (i64 16)
  %i.vz = and <2 x i64> %i.vy, splat (i64 133143986207)
  %i.wa = add nuw nsw <2 x i64> %i.vz, %i.vx      ; 2 uses
  %i.wb = lshr <2 x i64> %i.wa, splat (i64 32)
  %i.wc = add nuw nsw <2 x i64> %i.wb, %i.wa
  %i.wd = trunc <2 x i64> %i.wc to <2 x i16>
  %i.we = mul nuw <2 x i16> %i.vn, %i.wd          ; 2 uses
  %i.wf = extractelement <2 x i16> %i.we, i64 0
  %i.wg = zext i16 %i.wf to i32
  %i.wh = extractelement <2 x i16> %i.we, i64 1
  %i.wi = zext i16 %i.wh to i32
  %i.wj = add nuw nsw i32 %i.wg, %i.wi
  %i.wk = load i64, ptr %i.uc, align 8
  %i.wl = and i32 %i.wj, 4095                     ; 3 uses
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = shl nuw i64 %i.wm, 52
  %i.wo = and i64 %i.wk, 4503599627370495
  %i.wp = or disjoint i64 %i.wn, %i.wo
  store i64 %i.wp, ptr %i.uc, align 8
  %i.wq = icmp samesign ugt i32 %i.wl, 300
end_hunk_0
