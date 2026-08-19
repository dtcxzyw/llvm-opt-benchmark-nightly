inline.NumInlined: 856
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv18DISOpticalFlowImpl25precomputeStructureTensorERNS_3MatES2_S2_S2_S2_S2_S2_:bb.a
vector.memcheck579:                               ; preds = %.lr.ph337
  %i.ld = ptrtoaddr ptr %i.lc to i64              ; 5 uses
  %i.le = ptrtoaddr ptr %i.lb to i64              ; 5 uses
  %i.lf = ptrtoaddr ptr %i.la to i64              ; 5 uses
  %i.lg = ptrtoaddr ptr %i.kz to i64              ; 5 uses
  %i.lh = sub i64 %i.c, %i.f
  %diff.check = icmp ugt i64 %i.lh, -16
  %i.li = sub i64 %i.c, %i.i
  %diff.check580 = icmp ugt i64 %i.li, -16
  %conflict.rdx581 = or i1 %diff.check, %diff.check580
  %i.lj = sub i64 %i.c, %i.l
  %diff.check582 = icmp ugt i64 %i.lj, -16
  %conflict.rdx583 = or i1 %conflict.rdx581, %diff.check582
  %i.lk = sub i64 %i.c, %i.o
  %diff.check584 = icmp ugt i64 %i.lk, -16
  %conflict.rdx585 = or i1 %conflict.rdx583, %diff.check584
  %i.ll = sub i64 %i.lg, %i.c
  %diff.check586 = icmp ugt i64 %i.ll, -16
  %conflict.rdx587 = or i1 %conflict.rdx585, %diff.check586
  %i.lm = sub i64 %i.c, %i.lf
  %diff.check588 = icmp ugt i64 %i.lm, -16
  %conflict.rdx589 = or i1 %conflict.rdx587, %diff.check588
  %i.ln = sub i64 %i.c, %i.le
  %diff.check590 = icmp ugt i64 %i.ln, -16
  %conflict.rdx591 = or i1 %conflict.rdx589, %diff.check590
  %i.lo = sub i64 %i.c, %i.ld
  %diff.check592 = icmp ugt i64 %i.lo, -16
  %conflict.rdx593 = or i1 %conflict.rdx591, %diff.check592
  %i.lp = sub i64 %i.c, %i.fh
  %diff.check594 = icmp ugt i64 %i.lp, -16
  %conflict.rdx595 = or i1 %conflict.rdx593, %diff.check594
  %i.lq = sub i64 %i.f, %i.i
  %diff.check596 = icmp ugt i64 %i.lq, -16
  %conflict.rdx597 = or i1 %conflict.rdx595, %diff.check596
  %i.lr = sub i64 %i.f, %i.l
  %diff.check598 = icmp ugt i64 %i.lr, -16
  %conflict.rdx599 = or i1 %conflict.rdx597, %diff.check598
  %i.ls = sub i64 %i.f, %i.o
  %diff.check600 = icmp ugt i64 %i.ls, -16
  %conflict.rdx601 = or i1 %conflict.rdx599, %diff.check600
  %i.lt = sub i64 %i.lg, %i.f
  %diff.check602 = icmp ugt i64 %i.lt, -16
  %conflict.rdx603 = or i1 %conflict.rdx601, %diff.check602
  %i.lu = sub i64 %i.lf, %i.f
  %diff.check604 = icmp ugt i64 %i.lu, -16
  %conflict.rdx605 = or i1 %conflict.rdx603, %diff.check604
  %i.lv = sub i64 %i.f, %i.le
  %diff.check606 = icmp ugt i64 %i.lv, -16
  %conflict.rdx607 = or i1 %conflict.rdx605, %diff.check606
  %i.lw = sub i64 %i.f, %i.ld
  %diff.check608 = icmp ugt i64 %i.lw, -16
  %conflict.rdx609 = or i1 %conflict.rdx607, %diff.check608
  %i.lx = sub i64 %i.f, %i.fh
  %diff.check610 = icmp ugt i64 %i.lx, -16
  %conflict.rdx611 = or i1 %conflict.rdx609, %diff.check610
  %i.ly = sub i64 %i.i, %i.l
  %diff.check612 = icmp ugt i64 %i.ly, -16
  %conflict.rdx613 = or i1 %conflict.rdx611, %diff.check612
  %i.lz = sub i64 %i.i, %i.o
  %diff.check614 = icmp ugt i64 %i.lz, -16
  %conflict.rdx615 = or i1 %conflict.rdx613, %diff.check614
  %i.ma = sub i64 %i.lg, %i.i
  %diff.check616 = icmp ugt i64 %i.ma, -16
  %conflict.rdx617 = or i1 %conflict.rdx615, %diff.check616
  %i.mb = sub i64 %i.lf, %i.i
  %diff.check618 = icmp ugt i64 %i.mb, -16
  %conflict.rdx619 = or i1 %conflict.rdx617, %diff.check618
  %i.mc = sub i64 %i.le, %i.i
  %diff.check620 = icmp ugt i64 %i.mc, -16
  %conflict.rdx621 = or i1 %conflict.rdx619, %diff.check620
  %i.md = sub i64 %i.i, %i.ld
  %diff.check622 = icmp ugt i64 %i.md, -16
  %conflict.rdx623 = or i1 %conflict.rdx621, %diff.check622
  %i.me = sub i64 %i.i, %i.fh
  %diff.check624 = icmp ugt i64 %i.me, -16
  %conflict.rdx625 = or i1 %conflict.rdx623, %diff.check624
  %i.mf = sub i64 %i.l, %i.o
  %diff.check626 = icmp ugt i64 %i.mf, -16
  %conflict.rdx627 = or i1 %conflict.rdx625, %diff.check626
  %i.mg = sub i64 %i.lg, %i.l
  %diff.check628 = icmp ugt i64 %i.mg, -16
  %conflict.rdx629 = or i1 %conflict.rdx627, %diff.check628
  %i.mh = sub i64 %i.lf, %i.l
  %diff.check630 = icmp ugt i64 %i.mh, -16
  %conflict.rdx631 = or i1 %conflict.rdx629, %diff.check630
  %i.mi = sub i64 %i.le, %i.l
  %diff.check632 = icmp ugt i64 %i.mi, -16
  %conflict.rdx633 = or i1 %conflict.rdx631, %diff.check632
  %i.mj = sub i64 %i.ld, %i.l
  %diff.check634 = icmp ugt i64 %i.mj, -16
  %conflict.rdx635 = or i1 %conflict.rdx633, %diff.check634
  %i.mk = sub i64 %i.l, %i.fh
  %diff.check636 = icmp ugt i64 %i.mk, -16
  %conflict.rdx637 = or i1 %conflict.rdx635, %diff.check636
  %i.ml = sub i64 %i.lg, %i.o
  %diff.check638 = icmp ugt i64 %i.ml, -16
  %conflict.rdx639 = or i1 %conflict.rdx637, %diff.check638
  %i.mm = sub i64 %i.lf, %i.o
  %diff.check640 = icmp ugt i64 %i.mm, -16
  %conflict.rdx641 = or i1 %conflict.rdx639, %diff.check640
  %i.mn = sub i64 %i.le, %i.o
  %diff.check642 = icmp ugt i64 %i.mn, -16
  %conflict.rdx643 = or i1 %conflict.rdx641, %diff.check642
  %i.mo = sub i64 %i.ld, %i.o
  %diff.check644 = icmp ugt i64 %i.mo, -16
  %conflict.rdx645 = or i1 %conflict.rdx643, %diff.check644
  %i.mp = sub i64 %i.fh, %i.o
  %diff.check646 = icmp ugt i64 %i.mp, -16
  %conflict.rdx647 = or i1 %conflict.rdx645, %diff.check646
  br i1 %conflict.rdx647, label %scalar.ph648.preheader, label %vector.ph650

vector.ph650:                                     ; preds = %vector.memcheck579
  %n.vec651 = and i64 %wide.trip.count378, 2147483644 ; 3 uses
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph650
  %index653 = phi i64 [ 0, %vector.ph650 ], [ %index.next659, %vector.body652 ] ; 11 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %index653
  %wide.load654 = load <4 x float>, ptr %i.mq, align 4, !tbaa !50
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index653
  store <4 x float> %wide.load654, ptr %i.mr, align 4, !tbaa !50
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %index653
  %wide.load655 = load <4 x float>, ptr %i.ms, align 4, !tbaa !50
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index653
  store <4 x float> %wide.load655, ptr %i.mt, align 4, !tbaa !50
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %index653
  %wide.load656 = load <4 x float>, ptr %i.mu, align 4, !tbaa !50
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index653
  store <4 x float> %wide.load656, ptr %i.mv, align 4, !tbaa !50
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index653
  %wide.load657 = load <4 x float>, ptr %i.mw, align 4, !tbaa !50
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index653
  store <4 x float> %wide.load657, ptr %i.mx, align 4, !tbaa !50
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index653
  %wide.load658 = load <4 x float>, ptr %i.my, align 4, !tbaa !50
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index653
  store <4 x float> %wide.load658, ptr %i.mz, align 4, !tbaa !50
  %index.next659 = add nuw i64 %index653, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next659, %n.vec651
  br i1 %i.na, label %middle.block660, label %vector.body652, !llvm.loop !155

middle.block660:                                  ; preds = %vector.body652
  %cmp.n661 = icmp eq i64 %n.vec651, %wide.trip.count378
  br i1 %cmp.n661, label %.preheader297, label %scalar.ph648.preheader

scalar.ph648.preheader:                           ; preds = %vector.memcheck579, %.lr.ph337, %middle.block660
  %indvars.iv375.ph = phi i64 [ 0, %vector.memcheck579 ], [ 0, %.lr.ph337 ], [ %n.vec651, %middle.block660 ]
  br label %scalar.ph648

._crit_edge333:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count373
  br i1 %exitcond374.not, label %.lr.ph337, label %.preheader299, !llvm.loop !156

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %scalar.ph ], [ %indvars.iv365.ph, %scalar.ph.preheader ] ; 7 uses
  %i.nb = add nuw nsw i64 %indvars.iv365, %i.kh   ; 5 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.nb
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !50
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv365 ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !50
  %i.ng = fadd float %i.nd, %i.nf
  store float %i.ng, ptr %i.ne, align 4, !tbaa !50
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.nb
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !50
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv365 ; 2 uses
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !50
  %i.nl = fadd float %i.ni, %i.nk
  store float %i.nl, ptr %i.nj, align 4, !tbaa !50
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.nb
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !50
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv365 ; 2 uses
  %i.np = load float, ptr %i.no, align 4, !tbaa !50
  %i.nq = fadd float %i.nn, %i.np
  store float %i.nq, ptr %i.no, align 4, !tbaa !50
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.nb
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !50
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv365 ; 2 uses
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !50
  %i.nv = fadd float %i.ns, %i.nu
  store float %i.nv, ptr %i.nt, align 4, !tbaa !50
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.nb
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !50
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv365 ; 2 uses
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !50
  %i.oa = fadd float %i.nx, %i.nz
  store float %i.oa, ptr %i.ny, align 4, !tbaa !50
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next366, %i.fq
  br i1 %exitcond369.not, label %._crit_edge333, label %scalar.ph, !llvm.loop !157

.preheader297:                                    ; preds = %scalar.ph648, %middle.block660, %.preheader300.thread
  %i.ob = phi i32 [ %i.fp, %.preheader300.thread ], [ %i.fm, %middle.block660 ], [ %i.fm, %scalar.ph648 ] ; 4 uses
  %i.oc = icmp slt i32 %i.ob, %i.aa
  %.pre397 = load ptr, ptr %13, align 8           ; 13 uses
  br i1 %i.oc, label %.preheader296.lr.ph, label %._crit_edge346

.preheader296.lr.ph:                              ; preds = %.preheader297
  %.pre397679 = ptrtoaddr ptr %.pre397 to i64     ; 5 uses
  %i.od = load ptr, ptr %9, align 8               ; 10 uses
  %14 = ptrtoaddr ptr %i.od to i64                ; 5 uses
  %i.oe = load ptr, ptr %10, align 8              ; 9 uses
  %i.of = ptrtoaddr ptr %i.oe to i64              ; 5 uses
  %15 = load ptr, ptr %11, align 8                ; 9 uses
  %i.og = ptrtoaddr ptr %15 to i64                ; 5 uses
  %i.oh = load ptr, ptr %12, align 8              ; 12 uses
  %i.oi = ptrtoaddr ptr %i.oh to i64              ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !19 ; 2 uses
  %i.ol = sext i32 %i.ob to i64                   ; 4 uses
  %wide.trip.count393 = sext i32 %i.aa to i64     ; 3 uses
  %wide.trip.count383 = zext i32 %i.av to i64     ; 7 uses
  %wide.trip.count388 = zext nneg i32 %i.av to i64
  %i.om = sub i64 %i.c, %14
  %i.on = sub i64 %i.f, %14
  %i.oo = sub i64 %i.f, %i.of
  %i.op = sub i64 %i.i, %14
  %i.oq = sub i64 %i.i, %i.of
  %i.or = sub i64 %i.i, %i.og
  %i.os = sub i64 %i.l, %14
  %i.ot = sub i64 %i.l, %i.of
  %i.ou = sub i64 %i.l, %i.og
  %i.ov = sub i64 %i.l, %i.oi
  %i.ow = sub i64 %i.o, %14
  %i.ox = sub i64 %i.o, %i.of
  %i.oy = sub i64 %i.o, %i.og
  %i.oz = sub i64 %i.o, %i.oi
  %i.pa = sub i64 %i.o, %.pre397679
  %i.pb = shl nuw nsw i64 %wide.trip.count383, 2  ; 6 uses
  %scevgep750 = getelementptr i8, ptr %i.od, i64 %i.pb ; 4 uses
  %scevgep751 = getelementptr i8, ptr %i.oe, i64 %i.pb ; 3 uses
  %scevgep752 = getelementptr i8, ptr %15, i64 %i.pb ; 3 uses
  %scevgep753 = getelementptr i8, ptr %i.oh, i64 %i.pb ; 6 uses
  %scevgep754 = getelementptr i8, ptr %.pre397, i64 %i.pb ; 6 uses
  %i.pc = xor i64 %i.ol, -1
  %i.pd = add nsw i64 %i.pc, %wide.trip.count393
  %i.pe = mul i64 %.pre-phi, %i.pd
  %i.pf = add i64 %i.pe, %wide.trip.count383
  %i.pg = shl i64 %i.pf, 2                        ; 5 uses
  %scevgep755 = getelementptr i8, ptr %i.q, i64 %i.pg ; 5 uses
  %i.ph = mul nsw i64 %.pre-phi, %i.ol
  %i.pi = shl i64 %i.ph, 2                        ; 5 uses
  %scevgep756 = getelementptr i8, ptr %i.q, i64 %i.pi ; 5 uses
  %i.pj = shl nsw i64 %wide.trip.count393, 2
  %i.pk = add nsw i64 %i.pj, -4
  %i.pl = mul i64 %.pre-phi, %i.pk
  %i.pm = add i64 %i.pl, %i.pb                    ; 5 uses
  %scevgep757 = getelementptr i8, ptr %i.q, i64 %i.pm ; 5 uses
  %scevgep758 = getelementptr i8, ptr %i.s, i64 %i.pg ; 5 uses
  %scevgep759 = getelementptr i8, ptr %i.s, i64 %i.pi ; 5 uses
  %scevgep760 = getelementptr i8, ptr %i.s, i64 %i.pm ; 5 uses
  %scevgep761 = getelementptr i8, ptr %i.u, i64 %i.pg ; 5 uses
  %scevgep762 = getelementptr i8, ptr %i.u, i64 %i.pi ; 5 uses
  %scevgep763 = getelementptr i8, ptr %i.u, i64 %i.pm ; 5 uses
  %scevgep764 = getelementptr i8, ptr %i.w, i64 %i.pg ; 5 uses
  %scevgep765 = getelementptr i8, ptr %i.w, i64 %i.pi ; 5 uses
  %i.pn = insertelement <4 x ptr> poison, ptr %i.q, i64 0
  %i.po = insertelement <4 x ptr> %i.pn, ptr %i.s, i64 1
  %i.pp = insertelement <4 x ptr> %i.po, ptr %i.u, i64 2
  %i.pq = insertelement <4 x ptr> %i.pp, ptr %i.w, i64 3
  %i.pr = insertelement <4 x ptr> poison, ptr %scevgep756, i64 0
  %i.ps = insertelement <4 x ptr> %i.pr, ptr %scevgep759, i64 1
  %i.pt = insertelement <4 x ptr> %i.ps, ptr %scevgep762, i64 2
  %i.pu = insertelement <4 x ptr> %i.pt, ptr %scevgep765, i64 3
  %i.pv = shufflevector <4 x ptr> %i.pq, <4 x ptr> %i.pu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %scevgep766 = getelementptr i8, ptr %i.w, i64 %i.pm ; 5 uses
  %scevgep767 = getelementptr i8, ptr %i.y, i64 %i.pg ; 5 uses
  %scevgep768 = getelementptr i8, ptr %i.y, i64 %i.pi ; 5 uses
  %scevgep769 = getelementptr i8, ptr %i.y, i64 %i.pm ; 5 uses
  %i.pw = insertelement <8 x ptr> poison, ptr %i.od, i64 0
  %i.px = shufflevector <8 x ptr> %i.pw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.py = insertelement <8 x ptr> poison, ptr %scevgep751, i64 0 ; 2 uses
  %i.pz = insertelement <8 x ptr> %i.py, ptr %scevgep752, i64 1
  %i.qa = insertelement <8 x ptr> %i.pz, ptr %scevgep753, i64 2
  %i.qb = insertelement <8 x ptr> %i.qa, ptr %scevgep754, i64 3
  %i.qc = insertelement <8 x ptr> %i.qb, ptr %scevgep755, i64 4
  %i.qd = insertelement <8 x ptr> %i.qc, ptr %scevgep757, i64 5
  %i.qe = insertelement <8 x ptr> %i.qd, ptr %scevgep758, i64 6
  %i.qf = insertelement <8 x ptr> %i.qe, ptr %scevgep760, i64 7
  %i.qg = insertelement <8 x ptr> poison, ptr %i.oe, i64 0 ; 2 uses
  %i.qh = insertelement <8 x ptr> %i.qg, ptr %15, i64 1
  %i.qi = insertelement <8 x ptr> %i.qh, ptr %i.oh, i64 2
  %i.qj = insertelement <8 x ptr> %i.qi, ptr %.pre397, i64 3
  %i.qk = insertelement <8 x ptr> %i.qj, ptr %i.q, i64 4
  %i.ql = insertelement <8 x ptr> %i.qk, ptr %scevgep756, i64 5
  %i.qm = insertelement <8 x ptr> %i.ql, ptr %i.s, i64 6
  %i.qn = insertelement <8 x ptr> %i.qm, ptr %scevgep759, i64 7
  %i.qo = insertelement <8 x ptr> poison, ptr %scevgep750, i64 0
  %i.qp = shufflevector <8 x ptr> %i.qo, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qq = shufflevector <8 x ptr> %i.qg, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qr = insertelement <8 x ptr> poison, ptr %scevgep752, i64 0 ; 2 uses
  %i.qs = insertelement <8 x ptr> %i.qr, ptr %scevgep753, i64 1
  %i.qt = insertelement <8 x ptr> %i.qs, ptr %scevgep754, i64 2
  %i.qu = insertelement <8 x ptr> %i.qt, ptr %scevgep755, i64 3
  %i.qv = insertelement <8 x ptr> %i.qu, ptr %scevgep757, i64 4
  %i.qw = insertelement <8 x ptr> %i.qv, ptr %scevgep758, i64 5
  %i.qx = insertelement <8 x ptr> %i.qw, ptr %scevgep760, i64 6
  %i.qy = insertelement <8 x ptr> %i.qx, ptr %scevgep761, i64 7
  %i.qz = insertelement <8 x ptr> poison, ptr %15, i64 0 ; 2 uses
  %i.ra = insertelement <8 x ptr> %i.qz, ptr %i.oh, i64 1
  %i.rb = insertelement <8 x ptr> %i.ra, ptr %.pre397, i64 2
  %i.rc = insertelement <8 x ptr> %i.rb, ptr %i.q, i64 3
  %i.rd = insertelement <8 x ptr> %i.rc, ptr %scevgep756, i64 4
  %i.re = insertelement <8 x ptr> %i.rd, ptr %i.s, i64 5
  %i.rf = insertelement <8 x ptr> %i.re, ptr %scevgep759, i64 6
  %i.rg = insertelement <8 x ptr> %i.rf, ptr %i.u, i64 7
  %i.rh = shufflevector <8 x ptr> %i.py, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ri = shufflevector <8 x ptr> %i.qz, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.rj = insertelement <8 x ptr> poison, ptr %scevgep753, i64 0 ; 2 uses
  %i.rk = insertelement <8 x ptr> %i.rj, ptr %scevgep754, i64 1
  %i.rl = insertelement <8 x ptr> %i.rk, ptr %scevgep755, i64 2
  %i.rm = insertelement <8 x ptr> %i.rl, ptr %scevgep757, i64 3
  %i.rn = insertelement <8 x ptr> %i.rm, ptr %scevgep758, i64 4
  %i.ro = insertelement <8 x ptr> %i.rn, ptr %scevgep760, i64 5
  %i.rp = insertelement <8 x ptr> %i.ro, ptr %scevgep761, i64 6
  %i.rq = insertelement <8 x ptr> %i.rp, ptr %scevgep763, i64 7
  %i.rr = insertelement <8 x ptr> poison, ptr %i.oh, i64 0 ; 2 uses
  %i.rs = insertelement <8 x ptr> %i.rr, ptr %.pre397, i64 1
  %i.rt = insertelement <8 x ptr> %i.rs, ptr %i.q, i64 2
  %i.ru = insertelement <8 x ptr> %i.rt, ptr %scevgep756, i64 3
  %i.rv = insertelement <8 x ptr> %i.ru, ptr %i.s, i64 4
  %i.rw = insertelement <8 x ptr> %i.rv, ptr %scevgep759, i64 5
  %i.rx = insertelement <8 x ptr> %i.rw, ptr %i.u, i64 6
  %i.ry = insertelement <8 x ptr> %i.rx, ptr %scevgep762, i64 7
  %i.rz = shufflevector <8 x ptr> %i.qr, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.sa = shufflevector <8 x ptr> %i.rr, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.sb = insertelement <8 x ptr> poison, ptr %scevgep754, i64 0 ; 2 uses
  %i.sc = insertelement <8 x ptr> %i.sb, ptr %scevgep755, i64 1
  %i.sd = insertelement <8 x ptr> %i.sc, ptr %scevgep757, i64 2
  %i.se = insertelement <8 x ptr> %i.sd, ptr %scevgep758, i64 3
  %i.sf = insertelement <8 x ptr> %i.se, ptr %scevgep760, i64 4
  %i.sg = insertelement <8 x ptr> %i.sf, ptr %scevgep761, i64 5
  %i.sh = insertelement <8 x ptr> %i.sg, ptr %scevgep763, i64 6
  %i.si = insertelement <8 x ptr> %i.sh, ptr %scevgep764, i64 7
  %i.sj = insertelement <8 x ptr> poison, ptr %.pre397, i64 0 ; 2 uses
  %i.sk = insertelement <8 x ptr> %i.sj, ptr %i.q, i64 1
  %i.sl = insertelement <8 x ptr> %i.sk, ptr %scevgep756, i64 2
  %i.sm = insertelement <8 x ptr> %i.sl, ptr %i.s, i64 3
  %i.sn = insertelement <8 x ptr> %i.sm, ptr %scevgep759, i64 4
  %i.so = insertelement <8 x ptr> %i.sn, ptr %i.u, i64 5
  %i.sp = insertelement <8 x ptr> %i.so, ptr %scevgep762, i64 6
  %i.sq = insertelement <8 x ptr> %i.sp, ptr %i.w, i64 7
  %i.sr = shufflevector <8 x ptr> %i.rj, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ss = shufflevector <8 x ptr> %i.sj, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.st = insertelement <8 x ptr> poison, ptr %scevgep755, i64 0
  %i.su = insertelement <8 x ptr> %i.st, ptr %scevgep758, i64 1
  %i.sv = insertelement <8 x ptr> %i.su, ptr %scevgep761, i64 2
  %i.sw = insertelement <8 x ptr> %i.sv, ptr %scevgep764, i64 3
  %i.sx = insertelement <8 x ptr> %i.sw, ptr %scevgep757, i64 4
  %i.sy = insertelement <8 x ptr> %i.sx, ptr %scevgep760, i64 5
  %i.sz = insertelement <8 x ptr> %i.sy, ptr %scevgep763, i64 6
  %i.ta = insertelement <8 x ptr> %i.sz, ptr %scevgep766, i64 7
  %i.tb = shufflevector <8 x ptr> %i.sb, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.tc = insertelement <4 x ptr> poison, ptr %i.od, i64 0
  %i.td = shufflevector <4 x ptr> %i.tc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.te = insertelement <4 x ptr> poison, ptr %scevgep761, i64 0
  %i.tf = insertelement <4 x ptr> %i.te, ptr %scevgep763, i64 1
  %i.tg = insertelement <4 x ptr> %i.tf, ptr %scevgep764, i64 2
  %i.th = insertelement <4 x ptr> %i.tg, ptr %scevgep766, i64 3
  %i.ti = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.tj = insertelement <4 x ptr> %i.ti, ptr %scevgep762, i64 1
  %i.tk = insertelement <4 x ptr> %i.tj, ptr %i.w, i64 2
  %i.tl = insertelement <4 x ptr> %i.tk, ptr %scevgep765, i64 3
  %i.tm = insertelement <4 x ptr> poison, ptr %scevgep750, i64 0
  %i.tn = shufflevector <4 x ptr> %i.tm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.to = insertelement <4 x ptr> poison, ptr %i.oe, i64 0
  %i.tp = shufflevector <4 x ptr> %i.to, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tq = insertelement <4 x ptr> poison, ptr %scevgep763, i64 0
  %i.tr = insertelement <4 x ptr> %i.tq, ptr %scevgep764, i64 1
  %i.ts = insertelement <4 x ptr> %i.tr, ptr %scevgep766, i64 2
  %i.tt = insertelement <4 x ptr> %i.ts, ptr %scevgep767, i64 3
  %i.tu = insertelement <4 x ptr> poison, ptr %scevgep762, i64 0
  %i.tv = insertelement <4 x ptr> %i.tu, ptr %i.w, i64 1
  %i.tw = insertelement <4 x ptr> %i.tv, ptr %scevgep765, i64 2
  %i.tx = insertelement <4 x ptr> %i.tw, ptr %i.y, i64 3
  %i.ty = insertelement <4 x ptr> poison, ptr %scevgep751, i64 0
  %i.tz = shufflevector <4 x ptr> %i.ty, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ua = insertelement <4 x ptr> poison, ptr %15, i64 0
  %i.ub = shufflevector <4 x ptr> %i.ua, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.uc = insertelement <4 x ptr> poison, ptr %scevgep764, i64 0
  %i.ud = insertelement <4 x ptr> %i.uc, ptr %scevgep766, i64 1
  %i.ue = insertelement <4 x ptr> %i.ud, ptr %scevgep767, i64 2
  %i.uf = insertelement <4 x ptr> %i.ue, ptr %scevgep769, i64 3
  %i.ug = insertelement <4 x ptr> poison, ptr %i.w, i64 0
  %i.uh = insertelement <4 x ptr> %i.ug, ptr %scevgep765, i64 1
  %i.ui = insertelement <4 x ptr> %i.uh, ptr %i.y, i64 2
  %i.uj = insertelement <4 x ptr> %i.ui, ptr %scevgep768, i64 3
  %i.uk = insertelement <4 x ptr> poison, ptr %scevgep752, i64 0
  %i.ul = shufflevector <4 x ptr> %i.uk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %invariant.op = sub i32 1, %i.ob
  %min.iters.check1059 = icmp ult i32 %i.av, 40
  %i.um = icmp ult <8 x ptr> %i.px, %i.qf
  %i.un = icmp ult <8 x ptr> %i.qn, %i.qp
  %stride.check = icmp slt i64 %.pre-phi, 0
  %i.uo = and <8 x i1> %i.um, %i.un
  %i.up = icmp ult <4 x ptr> %i.td, %i.th
  %i.uq = icmp ult <4 x ptr> %i.tl, %i.tn
  %i.ur = and <4 x i1> %i.up, %i.uq
  %bound0824 = icmp ult ptr %i.od, %scevgep767
  %bound1825 = icmp ult ptr %i.y, %scevgep750
  %found.conflict826 = and i1 %bound0824, %bound1825
  %bound0829 = icmp ult ptr %i.od, %scevgep769
  %bound1830 = icmp ult ptr %scevgep768, %scevgep750
  %found.conflict831 = and i1 %bound0829, %bound1830
  %i.us = icmp ult <8 x ptr> %i.qq, %i.qy
  %i.ut = icmp ult <8 x ptr> %i.rg, %i.rh
  %i.uu = and <8 x i1> %i.us, %i.ut
  %i.uv = icmp ult <4 x ptr> %i.tp, %i.tt
  %i.uw = icmp ult <4 x ptr> %i.tx, %i.tz
  %i.ux = and <4 x i1> %i.uv, %i.uw
  %bound0891 = icmp ult ptr %i.oe, %scevgep769
  %bound1892 = icmp ult ptr %scevgep768, %scevgep751
  %found.conflict893 = and i1 %bound0891, %bound1892
  %i.uy = icmp ult <8 x ptr> %i.ri, %i.rq
  %i.uz = icmp ult <8 x ptr> %i.ry, %i.rz
  %i.va = and <8 x i1> %i.uy, %i.uz
  %i.vb = icmp ult <4 x ptr> %i.ub, %i.uf
  %i.vc = icmp ult <4 x ptr> %i.uj, %i.ul
  %i.vd = and <4 x i1> %i.vb, %i.vc
  %i.ve = icmp ult <8 x ptr> %i.sa, %i.si
  %i.vf = icmp ult <8 x ptr> %i.sq, %i.sr
  %i.vg = and <8 x i1> %i.ve, %i.vf
  %bound0993 = icmp ult ptr %i.oh, %scevgep766
  %bound1994 = icmp ult ptr %scevgep765, %scevgep753
  %found.conflict995 = and i1 %bound0993, %bound1994
  %bound0998 = icmp ult ptr %i.oh, %scevgep767
  %bound1999 = icmp ult ptr %i.y, %scevgep753
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %bound01003 = icmp ult ptr %i.oh, %scevgep769
  %bound11004 = icmp ult ptr %scevgep768, %scevgep753
  %found.conflict1005 = and i1 %bound01003, %bound11004
  %i.vh = icmp ult <8 x ptr> %i.ss, %i.ta
  %i.vi = icmp ult <8 x ptr> %i.pv, %i.tb
  %i.vj = and <8 x i1> %i.vh, %i.vi
  %bound01048 = icmp ult ptr %.pre397, %scevgep767
  %bound11049 = icmp ult ptr %i.y, %scevgep754
  %found.conflict1050 = and i1 %bound01048, %bound11049
  %bound01053 = icmp ult ptr %.pre397, %scevgep769
  %bound11054 = icmp ult ptr %scevgep768, %scevgep754
  %found.conflict1055 = and i1 %bound01053, %bound11054
  %rdx.op = or <8 x i1> %i.uo, %i.uu
  %rdx.op1101 = or <8 x i1> %rdx.op, %i.va
  %rdx.op1102 = or <8 x i1> %rdx.op1101, %i.vg
  %rdx.op1103 = or <8 x i1> %rdx.op1102, %i.vj
  %i.vk = bitcast <8 x i1> %rdx.op1103 to i8
  %i.vl = icmp ne i8 %i.vk, 0
  %rdx.op1131 = or <4 x i1> %i.ur, %i.ux
  %rdx.op1132 = or <4 x i1> %rdx.op1131, %i.vd
  %i.vm = bitcast <4 x i1> %rdx.op1132 to i4
  %i.vn = icmp ne i4 %i.vm, 0
  %op.rdx1133 = or i1 %i.vn, %found.conflict826
  %op.rdx1134 = or i1 %found.conflict831, %found.conflict893
  %op.rdx1135 = or i1 %found.conflict995, %found.conflict1000
  %op.rdx1136 = or i1 %found.conflict1005, %found.conflict1050
  %op.rdx1137 = or i1 %found.conflict1055, %stride.check
  %op.rdx1141 = or i1 %op.rdx1133, %op.rdx1134
  %op.rdx1142 = or i1 %op.rdx1135, %op.rdx1136
  %op.rdx1145 = or i1 %op.rdx1141, %op.rdx1142
  %op.rdx1147 = or i1 %op.rdx1145, %op.rdx1137
  %op.rdx1148 = or i1 %op.rdx1147, %i.vl
  %n.vec1061 = and i64 %wide.trip.count383, 2147483644 ; 3 uses
  %cmp.n1081 = icmp eq i64 %n.vec1061, %wide.trip.count383
  %invariant.op1183 = sub i32 1, %i.ob
  %min.iters.check735 = icmp ult i32 %i.av, 52
  %i.vo = sub i64 %i.c, %i.f
  %diff.check664 = icmp ugt i64 %i.vo, -16
  %i.vp = sub i64 %i.c, %i.i
  %diff.check665 = icmp ugt i64 %i.vp, -16
  %i.vq = sub i64 %i.c, %i.l
  %diff.check667 = icmp ugt i64 %i.vq, -16
  %i.vr = sub i64 %i.c, %i.o
  %diff.check669 = icmp ugt i64 %i.vr, -16
  %i.vs = sub i64 %i.f, %i.i
  %diff.check682 = icmp ugt i64 %i.vs, -16
  %i.vt = sub i64 %i.f, %i.l
  %diff.check684 = icmp ugt i64 %i.vt, -16
  %i.vu = sub i64 %i.f, %i.o
  %diff.check686 = icmp ugt i64 %i.vu, -16
  %invariant.op1184 = add i64 %i.ot, -1
  %invariant.op1185 = add i64 %i.os, -1
  %invariant.op1187 = add i64 %i.or, -1
  %invariant.op1189 = add i64 %i.oq, -1
  %invariant.op1191 = add i64 %i.op, -1
  %invariant.op1193 = add i64 %i.oo, -1
  %invariant.op1195 = add i64 %i.on, -1
  %invariant.op1197 = add i64 %i.om, -1
  %invariant.op1199 = sub i64 %i.c, %i.of
  %invariant.op1201 = sub i64 %i.c, %i.og
  %invariant.op1203 = sub i64 %i.c, %i.oi
  %invariant.op1205 = sub i64 %i.c, %.pre397679
  %invariant.op1207 = sub i64 %i.f, %i.og
  %invariant.op1209 = sub i64 %i.l, %.pre397679
  %i.vv = sub i64 %i.l, %i.o
  %invariant.op1211 = sub i64 %i.i, %.pre397679
  %invariant.op1213 = sub i64 %i.i, %i.oi
  %i.vw = sub i64 %i.i, %i.o
  %i.vx = sub i64 %i.i, %i.l
  %invariant.op1215 = sub i64 %i.f, %.pre397679
  %invariant.op1217 = sub i64 %i.f, %i.oi
  %diff.check712 = icmp ugt i64 %i.vv, -16
  %diff.check700 = icmp ugt i64 %i.vw, -16
  %diff.check698 = icmp ugt i64 %i.vx, -16
  %i.vy = insertelement <8 x i1> poison, i1 %diff.check698, i64 2
  %i.vz = insertelement <8 x i1> %i.vy, i1 %diff.check700, i64 3
  %i.wa = insertelement <8 x i1> %i.vz, i1 %diff.check712, i64 6
  %invariant.op1219 = add i64 %i.ou, -1
  %invariant.op1221 = add i64 %i.ov, -1
  %invariant.op1223 = add i64 %i.ow, -1
  %invariant.op1225 = add i64 %i.ox, -1
  %invariant.op1227 = add i64 %i.oy, -1
  %invariant.op1229 = add i64 %i.oz, -1
  %invariant.op1231 = add i64 %i.pa, -1
  %op.rdx1083 = or i1 %diff.check665, %diff.check667
  %op.rdx1087 = or i1 %diff.check684, %diff.check686
  %invariant.op1233 = or i1 %diff.check664, %op.rdx1083
  %invariant.op1234 = or i1 %diff.check682, %op.rdx1087
  %n.vec737 = and i64 %wide.trip.count383, 2147483644 ; 3 uses
  %cmp.n747 = icmp eq i64 %n.vec737, %wide.trip.count383
  br label %.preheader296

scalar.ph648:                                     ; preds = %scalar.ph648.preheader, %scalar.ph648
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %scalar.ph648 ], [ %indvars.iv375.ph, %scalar.ph648.preheader ] ; 11 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv375
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !50
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv375
  store float %i.wc, ptr %i.wd, align 4, !tbaa !50
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv375
  %i.wf = load float, ptr %i.we, align 4, !tbaa !50
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv375
  store float %i.wf, ptr %i.wg, align 4, !tbaa !50
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv375
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !50
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv375
  store float %i.wi, ptr %i.wj, align 4, !tbaa !50
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv375
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !50
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv375
  store float %i.wl, ptr %i.wm, align 4, !tbaa !50
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv375
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !50
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv375
  store float %i.wo, ptr %i.wp, align 4, !tbaa !50
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond379.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count378
  br i1 %exitcond379.not, label %.preheader297, label %scalar.ph648, !llvm.loop !158

.preheader296:                                    ; preds = %.preheader296.lr.ph, %bb.w
  %indvars.iv390 = phi i64 [ %i.ol, %.preheader296.lr.ph ], [ %indvars.iv.next391, %bb.w ] ; 5 uses
  %.0225344 = phi i32 [ 1, %.preheader296.lr.ph ], [ %.1, %bb.w ] ; 4 uses
  br i1 %i.fi, label %.lr.ph339, label %._crit_edge340.thread

.lr.ph339:                                        ; preds = %.preheader296
  %i.wq = mul nsw i64 %indvars.iv390, %.pre-phi   ; 2 uses
  %i.wr = sub nsw i64 %indvars.iv390, %i.ol
  %i.ws = mul nsw i64 %i.wr, %.pre-phi            ; 2 uses
  %brmerge1235 = select i1 %min.iters.check1059, i1 true, i1 %op.rdx1148
  br i1 %brmerge1235, label %scalar.ph1058.preheader, label %vector.body1062

vector.body1062:                                  ; preds = %.lr.ph339, %vector.body1062
  %index1063 = phi i64 [ %index.next1079, %vector.body1062 ], [ 0, %.lr.ph339 ] ; 8 uses
  %i.wt = add nsw i64 %index1063, %i.wq           ; 5 uses
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.wt
  %wide.load1064 = load <4 x float>, ptr %i.wu, align 4, !tbaa !50, !alias.scope !159
  %i.wv = add nsw i64 %index1063, %i.ws           ; 5 uses
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.wv
  %wide.load1065 = load <4 x float>, ptr %i.ww, align 4, !tbaa !50, !alias.scope !162
  %i.wx = fsub <4 x float> %wide.load1064, %wide.load1065
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %index1063 ; 2 uses
  %wide.load1066 = load <4 x float>, ptr %i.wy, align 4, !tbaa !50, !alias.scope !164, !noalias !166
  %i.wz = fadd <4 x float> %i.wx, %wide.load1066
  store <4 x float> %i.wz, ptr %i.wy, align 4, !tbaa !50, !alias.scope !164, !noalias !166
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.wt
  %wide.load1067 = load <4 x float>, ptr %i.xa, align 4, !tbaa !50, !alias.scope !179
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.wv
  %wide.load1068 = load <4 x float>, ptr %i.xb, align 4, !tbaa !50, !alias.scope !180
  %i.xc = fsub <4 x float> %wide.load1067, %wide.load1068
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %index1063 ; 2 uses
  %wide.load1069 = load <4 x float>, ptr %i.xd, align 4, !tbaa !50, !alias.scope !181, !noalias !182
  %i.xe = fadd <4 x float> %i.xc, %wide.load1069
  store <4 x float> %i.xe, ptr %i.xd, align 4, !tbaa !50, !alias.scope !181, !noalias !182
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.wt
  %wide.load1070 = load <4 x float>, ptr %i.xf, align 4, !tbaa !50, !alias.scope !183
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.wv
  %wide.load1071 = load <4 x float>, ptr %i.xg, align 4, !tbaa !50, !alias.scope !184
  %i.xh = fsub <4 x float> %wide.load1070, %wide.load1071
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %index1063 ; 2 uses
  %wide.load1072 = load <4 x float>, ptr %i.xi, align 4, !tbaa !50, !alias.scope !185, !noalias !186
  %i.xj = fadd <4 x float> %i.xh, %wide.load1072
  store <4 x float> %i.xj, ptr %i.xi, align 4, !tbaa !50, !alias.scope !185, !noalias !186
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.wt
  %wide.load1073 = load <4 x float>, ptr %i.xk, align 4, !tbaa !50, !alias.scope !187
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.wv
  %wide.load1074 = load <4 x float>, ptr %i.xl, align 4, !tbaa !50, !alias.scope !188
  %i.xm = fsub <4 x float> %wide.load1073, %wide.load1074
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index1063 ; 2 uses
  %wide.load1075 = load <4 x float>, ptr %i.xn, align 4, !tbaa !50, !alias.scope !189, !noalias !190
  %i.xo = fadd <4 x float> %i.xm, %wide.load1075
  store <4 x float> %i.xo, ptr %i.xn, align 4, !tbaa !50, !alias.scope !189, !noalias !190
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.wt
  %wide.load1076 = load <4 x float>, ptr %i.xp, align 4, !tbaa !50, !alias.scope !191
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.wv
  %wide.load1077 = load <4 x float>, ptr %i.xq, align 4, !tbaa !50, !alias.scope !192
  %i.xr = fsub <4 x float> %wide.load1076, %wide.load1077
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.pre397, i64 %index1063 ; 2 uses
  %wide.load1078 = load <4 x float>, ptr %i.xs, align 4, !tbaa !50, !alias.scope !193, !noalias !194
  %i.xt = fadd <4 x float> %i.xr, %wide.load1078
  store <4 x float> %i.xt, ptr %i.xs, align 4, !tbaa !50, !alias.scope !193, !noalias !194
  %index.next1079 = add nuw i64 %index1063, 4     ; 2 uses
  %i.xu = icmp eq i64 %index.next1079, %n.vec1061
  br i1 %i.xu, label %middle.block1080, label %vector.body1062, !llvm.loop !195

middle.block1080:                                 ; preds = %vector.body1062
  br i1 %cmp.n1081, label %._crit_edge340, label %scalar.ph1058.preheader

scalar.ph1058.preheader:                          ; preds = %.lr.ph339, %middle.block1080
  %indvars.iv380.ph = phi i64 [ %n.vec1061, %middle.block1080 ], [ 0, %.lr.ph339 ]
  br label %scalar.ph1058

._crit_edge346.loopexit:                          ; preds = %bb.w
  %.pre396 = load ptr, ptr %13, align 8, !tbaa !117
  br label %._crit_edge346

._crit_edge346:                                   ; preds = %._crit_edge346.loopexit, %.preheader297
  %i.xv = phi ptr [ %.pre396, %._crit_edge346.loopexit ], [ %.pre397, %.preheader297 ] ; 3 uses
  %.not.i.i272 = icmp eq ptr %i.xv, %i.fd
  %i.xw = icmp eq ptr %i.xv, null
  %or.cond.i273 = or i1 %.not.i.i272, %i.xw
  br i1 %or.cond.i273, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, label %bb.p

bb.p:                                             ; preds = %._crit_edge346
  call void @_ZdaPv(ptr noundef nonnull %i.xv) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274

_ZN2cv10AutoBufferIfLm264EED2Ev.exit274:          ; preds = %._crit_edge346, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.xx = load ptr, ptr %12, align 8, !tbaa !117  ; 3 uses
  %.not.i.i275 = icmp eq ptr %i.xx, %i.fg
  %i.xy = icmp eq ptr %i.xx, null
  %or.cond.i276 = or i1 %.not.i.i275, %i.xy
  br i1 %or.cond.i276, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277, label %bb.q

bb.q:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274
  call void @_ZdaPv(ptr noundef nonnull %i.xx) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277

_ZN2cv10AutoBufferIfLm264EED2Ev.exit277:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit274, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.xz = load ptr, ptr %11, align 8, !tbaa !117  ; 3 uses
  %.not.i.i278 = icmp eq ptr %i.xz, %i.fe
  %i.ya = icmp eq ptr %i.xz, null
  %or.cond.i279 = or i1 %.not.i.i278, %i.ya
  br i1 %or.cond.i279, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280, label %bb.r

bb.r:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277
  call void @_ZdaPv(ptr noundef nonnull %i.xz) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280

_ZN2cv10AutoBufferIfLm264EED2Ev.exit280:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit277, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.yb = load ptr, ptr %10, align 8, !tbaa !117  ; 3 uses
  %.not.i.i281 = icmp eq ptr %i.yb, %i.ff
  %i.yc = icmp eq ptr %i.yb, null
  %or.cond.i282 = or i1 %.not.i.i281, %i.yc
  br i1 %or.cond.i282, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283, label %bb.s

bb.s:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280
  call void @_ZdaPv(ptr noundef nonnull %i.yb) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283

_ZN2cv10AutoBufferIfLm264EED2Ev.exit283:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit280, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.yd = load ptr, ptr %9, align 8, !tbaa !117   ; 3 uses
  %.not.i.i284 = icmp eq ptr %i.yd, %i.aw
  %i.ye = icmp eq ptr %i.yd, null
  %or.cond.i285 = or i1 %.not.i.i284, %i.ye
  br i1 %or.cond.i285, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286, label %bb.t

bb.t:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283
  call void @_ZdaPv(ptr noundef nonnull %i.yd) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286

_ZN2cv10AutoBufferIfLm264EED2Ev.exit286:          ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit283, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.yf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.yg, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yh = landingpad { ptr, i32 }
          catch ptr null
  %i.yi = extractvalue { ptr, i32 } %i.yh, 0
  call void @__clang_call_terminate(ptr %i.yi) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit286, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

._crit_edge340:                                   ; preds = %scalar.ph1058, %middle.block1080
  %i.yj = trunc nsw i64 %indvars.iv390 to i32
  %.reass420.reass = add i32 %i.yj, %invariant.op1183
  %i.yk = srem i32 %.reass420.reass, %i.ok
  %i.yl = icmp eq i32 %i.yk, 0
  br i1 %i.yl, label %.lr.ph342, label %bb.w

._crit_edge340.thread:                            ; preds = %.preheader296
  %i.ym = trunc nsw i64 %indvars.iv390 to i32
  %.reass.reass = add i32 %i.ym, %invariant.op
  %i.yn = srem i32 %.reass.reass, %i.ok
  %i.yo = icmp eq i32 %i.yn, 0
  br i1 %i.yo, label %._crit_edge343, label %bb.w

.lr.ph342:                                        ; preds = %._crit_edge340
  %i.yp = mul nsw i32 %.0225344, %i.av
  %i.yq = sext i32 %i.yp to i64                   ; 3 uses
  br i1 %min.iters.check735, label %scalar.ph734.preheader, label %vector.memcheck663

vector.memcheck663:                               ; preds = %.lr.ph342
  %i.yr = shl nsw i64 %i.yq, 2                    ; 25 uses
  %.reass = add i64 %i.yr, %invariant.op1184
  %.reass1186 = add i64 %i.yr, %invariant.op1185
  %.reass1188 = add i64 %i.yr, %invariant.op1187
  %.reass1190 = add i64 %i.yr, %invariant.op1189
  %.reass1192 = add i64 %i.yr, %invariant.op1191
  %.reass1194 = add i64 %i.yr, %invariant.op1193
  %.reass1196 = add i64 %i.yr, %invariant.op1195
  %.reass1198 = add i64 %i.yr, %invariant.op1197
  %diff.check716 = icmp ult i64 %.reass, 15
  %diff.check714 = icmp ult i64 %.reass1186, 15
  %diff.check706 = icmp ult i64 %.reass1188, 15
  %diff.check704 = icmp ult i64 %.reass1190, 15
  %diff.check702 = icmp ult i64 %.reass1192, 15
  %diff.check690 = icmp ult i64 %.reass1194, 15
  %diff.check688 = icmp ult i64 %.reass1196, 15
  %diff.check671 = icmp ult i64 %.reass1198, 15
  %.reass1200 = add i64 %i.yr, %invariant.op1199
  %diff.check673 = icmp ugt i64 %.reass1200, -16
  %.reass1202 = add i64 %i.yr, %invariant.op1201
  %diff.check675 = icmp ugt i64 %.reass1202, -16
  %.reass1204 = add i64 %i.yr, %invariant.op1203
  %diff.check677 = icmp ugt i64 %.reass1204, -16
  %.reass1206 = add i64 %i.yr, %invariant.op1205
  %diff.check680 = icmp ugt i64 %.reass1206, -16
  %.reass1208 = add i64 %i.yr, %invariant.op1207
  %diff.check692 = icmp ugt i64 %.reass1208, -16
  %.reass1210 = add i64 %i.yr, %invariant.op1209
  %.reass1212 = add i64 %i.yr, %invariant.op1211
  %.reass1214 = add i64 %i.yr, %invariant.op1213
  %.reass1216 = add i64 %i.yr, %invariant.op1215
  %.reass1218 = add i64 %i.yr, %invariant.op1217
  %diff.check722 = icmp ugt i64 %.reass1210, -16
  %diff.check710 = icmp ugt i64 %.reass1212, -16
  %diff.check708 = icmp ugt i64 %.reass1214, -16
  %diff.check696 = icmp ugt i64 %.reass1216, -16
  %diff.check694 = icmp ugt i64 %.reass1218, -16
  %i.ys = insertelement <8 x i1> %i.wa, i1 %diff.check694, i64 0
  %i.yt = insertelement <8 x i1> %i.ys, i1 %diff.check696, i64 1
  %i.yu = insertelement <8 x i1> %i.yt, i1 %diff.check708, i64 4
  %i.yv = insertelement <8 x i1> %i.yu, i1 %diff.check710, i64 5
  %i.yw = insertelement <8 x i1> %i.yv, i1 %diff.check722, i64 7
  %i.yx = insertelement <8 x i1> poison, i1 %diff.check671, i64 0
  %i.yy = insertelement <8 x i1> %i.yx, i1 %diff.check688, i64 1
  %i.yz = insertelement <8 x i1> %i.yy, i1 %diff.check690, i64 2
  %i.za = insertelement <8 x i1> %i.yz, i1 %diff.check702, i64 3
  %i.zb = insertelement <8 x i1> %i.za, i1 %diff.check704, i64 4
  %i.zc = insertelement <8 x i1> %i.zb, i1 %diff.check706, i64 5
  %i.zd = insertelement <8 x i1> %i.zc, i1 %diff.check714, i64 6
  %i.ze = insertelement <8 x i1> %i.zd, i1 %diff.check716, i64 7
  %i.zf = shufflevector <8 x i1> %i.yw, <8 x i1> %i.ze, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %.reass1220 = add i64 %i.yr, %invariant.op1219
  %diff.check718 = icmp ult i64 %.reass1220, 15
  %.reass1222 = add i64 %i.yr, %invariant.op1221
  %diff.check720 = icmp ult i64 %.reass1222, 15
  %.reass1224 = add i64 %i.yr, %invariant.op1223
  %diff.check724 = icmp ult i64 %.reass1224, 15
  %.reass1226 = add i64 %i.yr, %invariant.op1225
  %diff.check726 = icmp ult i64 %.reass1226, 15
  %.reass1228 = add i64 %i.yr, %invariant.op1227
  %diff.check728 = icmp ult i64 %.reass1228, 15
  %.reass1230 = add i64 %i.yr, %invariant.op1229
  %diff.check730 = icmp ult i64 %.reass1230, 15
  %.reass1232 = add i64 %i.yr, %invariant.op1231
  %diff.check732 = icmp ult i64 %.reass1232, 15
  %i.zg = bitcast <16 x i1> %i.zf to i16
  %i.zh = icmp ne i16 %i.zg, 0
  %op.rdx1084 = or i1 %diff.check669, %diff.check673
  %op.rdx1085 = or i1 %diff.check675, %diff.check677
  %op.rdx1088 = or i1 %diff.check692, %diff.check718
  %op.rdx1089 = or i1 %diff.check720, %diff.check724
  %op.rdx1090 = or i1 %diff.check726, %diff.check728
  %op.rdx1091 = or i1 %diff.check730, %diff.check732
  %op.rdx1092.reass = or i1 %i.zh, %invariant.op1233
  %op.rdx1093 = or i1 %op.rdx1084, %op.rdx1085
  %op.rdx1094.reass = or i1 %diff.check680, %invariant.op1234
  %op.rdx1095 = or i1 %op.rdx1088, %op.rdx1089
  %op.rdx1096 = or i1 %op.rdx1090, %op.rdx1091
  %op.rdx1097 = or i1 %op.rdx1092.reass, %op.rdx1093
  %op.rdx1098 = or i1 %op.rdx1094.reass, %op.rdx1095
  %op.rdx1099 = or i1 %op.rdx1097, %op.rdx1098
  %op.rdx1100 = or i1 %op.rdx1099, %op.rdx1096
  br i1 %op.rdx1100, label %scalar.ph734.preheader, label %vector.body738

vector.body738:                                   ; preds = %vector.memcheck663, %vector.body738
  %index739 = phi i64 [ %index.next745, %vector.body738 ], [ 0, %vector.memcheck663 ] ; 7 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %index739
  %wide.load740 = load <4 x float>, ptr %i.zi, align 4, !tbaa !50
  %i.zj = add nsw i64 %index739, %i.yq            ; 5 uses
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.zj
  store <4 x float> %wide.load740, ptr %i.zk, align 4, !tbaa !50
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %index739
  %wide.load741 = load <4 x float>, ptr %i.zl, align 4, !tbaa !50
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.zj
  store <4 x float> %wide.load741, ptr %i.zm, align 4, !tbaa !50
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %index739
  %wide.load742 = load <4 x float>, ptr %i.zn, align 4, !tbaa !50
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.zj
  store <4 x float> %wide.load742, ptr %i.zo, align 4, !tbaa !50
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index739
  %wide.load743 = load <4 x float>, ptr %i.zp, align 4, !tbaa !50
  %i.zq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.zj
  store <4 x float> %wide.load743, ptr %i.zq, align 4, !tbaa !50
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.pre397, i64 %index739
  %wide.load744 = load <4 x float>, ptr %i.zr, align 4, !tbaa !50
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.zj
  store <4 x float> %wide.load744, ptr %i.zs, align 4, !tbaa !50
  %index.next745 = add nuw i64 %index739, 4       ; 2 uses
  %i.zt = icmp eq i64 %index.next745, %n.vec737
  br i1 %i.zt, label %middle.block746, label %vector.body738, !llvm.loop !196

middle.block746:                                  ; preds = %vector.body738
  br i1 %cmp.n747, label %._crit_edge343, label %scalar.ph734.preheader

scalar.ph734.preheader:                           ; preds = %vector.memcheck663, %.lr.ph342, %middle.block746
  %indvars.iv385.ph = phi i64 [ 0, %vector.memcheck663 ], [ 0, %.lr.ph342 ], [ %n.vec737, %middle.block746 ]
  br label %scalar.ph734

scalar.ph1058:                                    ; preds = %scalar.ph1058.preheader, %scalar.ph1058
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %scalar.ph1058 ], [ %indvars.iv380.ph, %scalar.ph1058.preheader ] ; 8 uses
  %i.zu = add nsw i64 %indvars.iv380, %i.wq       ; 5 uses
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.zu
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !50
  %i.zx = add nsw i64 %indvars.iv380, %i.ws       ; 5 uses
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.zx
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !50
  %i.aaa = fsub float %i.zw, %i.zz
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv380 ; 2 uses
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !50
  %i.aad = fadd float %i.aaa, %i.aac
  store float %i.aad, ptr %i.aab, align 4, !tbaa !50
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.zu
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !50
  %i.aag = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.zx
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !50
  %i.aai = fsub float %i.aaf, %i.aah
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv380 ; 2 uses
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !50
  %i.aal = fadd float %i.aai, %i.aak
  store float %i.aal, ptr %i.aaj, align 4, !tbaa !50
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.zu
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !50
  %i.aao = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.zx
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !50
  %i.aaq = fsub float %i.aan, %i.aap
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv380 ; 2 uses
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !50
  %i.aat = fadd float %i.aaq, %i.aas
  store float %i.aat, ptr %i.aar, align 4, !tbaa !50
  %i.aau = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.zu
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !50
  %i.aaw = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.zx
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !50
  %i.aay = fsub float %i.aav, %i.aax
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv380 ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !50
  %i.abb = fadd float %i.aay, %i.aba
  store float %i.abb, ptr %i.aaz, align 4, !tbaa !50
  %i.abc = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.zu
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !50
  %i.abe = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.zx
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !50
  %i.abg = fsub float %i.abd, %i.abf
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.pre397, i64 %indvars.iv380 ; 2 uses
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !50
  %i.abj = fadd float %i.abg, %i.abi
  store float %i.abj, ptr %i.abh, align 4, !tbaa !50
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next381, %wide.trip.count383
  br i1 %exitcond384.not, label %._crit_edge340, label %scalar.ph1058, !llvm.loop !197

._crit_edge343:                                   ; preds = %scalar.ph734, %middle.block746, %._crit_edge340.thread
  %i.abk = add nsw i32 %.0225344, 1
  br label %bb.w

scalar.ph734:                                     ; preds = %scalar.ph734.preheader, %scalar.ph734
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %scalar.ph734 ], [ %indvars.iv385.ph, %scalar.ph734.preheader ] ; 7 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv385
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !50
  %i.abn = add nsw i64 %indvars.iv385, %i.yq      ; 5 uses
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.abn
  store float %i.abm, ptr %i.abo, align 4, !tbaa !50
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv385
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !50
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.abn
  store float %i.abq, ptr %i.abr, align 4, !tbaa !50
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %indvars.iv385
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !50
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.abn
  store float %i.abt, ptr %i.abu, align 4, !tbaa !50
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv385
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !50
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.abn
  store float %i.abw, ptr %i.abx, align 4, !tbaa !50
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.pre397, i64 %indvars.iv385
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !50
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.abn
  store float %i.abz, ptr %i.aca, align 4, !tbaa !50
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count388
  br i1 %exitcond389.not, label %._crit_edge343, label %scalar.ph734, !llvm.loop !198

bb.w:                                             ; preds = %._crit_edge340.thread, %._crit_edge340, %._crit_edge343
  %.1 = phi i32 [ %i.abk, %._crit_edge343 ], [ %.0225344, %._crit_edge340 ], [ %.0225344, %._crit_edge340.thread ]
  %indvars.iv.next391 = add nsw i64 %indvars.iv390, 1 ; 2 uses
  %exitcond394.not = icmp eq i64 %indvars.iv.next391, %wide.trip.count393
  br i1 %exitcond394.not, label %._crit_edge346.loopexit, label %.preheader296, !llvm.loop !199

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.o, %bb.n
  %i.acb = phi ptr [ %i.ej, %bb.n ], [ %.pre395, %bb.o ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.kf, %bb.n ], [ %i.kg, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %.not.i.i287 = icmp eq ptr %i.acb, %i.eh
  %i.acc = icmp eq ptr %i.acb, null
  %or.cond.i288 = or i1 %.not.i.i287, %i.acc
  br i1 %or.cond.i288, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289, label %bb.x

bb.x:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.acb) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289

_ZN2cv10AutoBufferIfLm264EED2Ev.exit289:          ; preds = %bb.x, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ke, %bb.m ], [ %.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit ], [ %.pn, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.acd = load ptr, ptr %10, align 8, !tbaa !117 ; 3 uses
  %.not.i.i290 = icmp eq ptr %i.acd, %i.ee
  %i.ace = icmp eq ptr %i.acd, null
  %or.cond.i291 = or i1 %.not.i.i290, %i.ace
  br i1 %or.cond.i291, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292, label %bb.y

bb.y:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289
  call void @_ZdaPv(ptr noundef nonnull %i.acd) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292

_ZN2cv10AutoBufferIfLm264EED2Ev.exit292:          ; preds = %bb.y, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.kd, %bb.l ], [ %.pn.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit289 ], [ %.pn.pn, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.acf = load ptr, ptr %9, align 8, !tbaa !117  ; 3 uses
  %.not.i.i293 = icmp eq ptr %i.acf, %i.aw
  %i.acg = icmp eq ptr %i.acf, null
  %or.cond.i294 = or i1 %.not.i.i293, %i.acg
  br i1 %or.cond.i294, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit295, label %bb.z

bb.z:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292
  call void @_ZdaPv(ptr noundef nonnull %i.acf) #23
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit295

_ZN2cv10AutoBufferIfLm264EED2Ev.exit295:          ; preds = %bb.z, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292, %bb.k
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kc, %bb.k ], [ %.pn.pn.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit292 ], [ %.pn.pn.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_ZN2cv18DISOpticalFlowImpl23autoSelectCoarsestScaleEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3024) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to float
  %i.b = fmul nnan float %i.a, 2.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !115
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul nnan float %i.e, 5.000000e+00
  %i.g = fdiv float %i.b, %i.f
  %i.h = tail call noundef float @log2f(float noundef %i.g) #21
  %i.i = tail call noundef float @llvm.floor.f32(float %i.h)
  %i.j = fptosi float %i.i to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN2cv18DISOpticalFlowImpl28autoSelectPatchSizeAndScalesEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3024) initializes((12, 16), (20, 24)) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.d = sitofp i32 %1 to float
  %i.e = fmul nnan float %i.d, 2.000000e+00       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  switch i32 %i.b, label %bb.e [
    i32 1, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i32 8, ptr %i.c, align 4, !tbaa !115
  %i.g = fdiv float %i.e, 4.000000e+01
  %i.h = tail call noundef float @log2f(float noundef %i.g) #21
  %i.i = tail call noundef float @llvm.floor.f32(float %i.h)
  %i.j = fptosi float %i.i to i32                 ; 2 uses
  %.sroa.speculated.i = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.j, i32 0)
  store i32 %.sroa.speculated.i, ptr %i.f, align 4, !tbaa !91
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 2)
  %.sroa.speculated23 = add nsw i32 %i.k, -2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store i32 12, ptr %i.c, align 4, !tbaa !115
  %i.l = fdiv float %i.e, 6.000000e+01
  %i.m = tail call noundef float @log2f(float noundef %i.l) #21
  %i.n = tail call noundef float @llvm.floor.f32(float %i.m)
  %i.o = fptosi float %i.n to i32                 ; 2 uses
  %.sroa.speculated.i4 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.o, i32 0)
  store i32 %.sroa.speculated.i4, ptr %i.f, align 4, !tbaa !91
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 4)
  %.sroa.speculated18 = add nsw i32 %i.p, -4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i32 12, ptr %i.c, align 4, !tbaa !115
  %i.q = fdiv float %i.e, 6.000000e+01
  %i.r = tail call noundef float @log2f(float noundef %i.q) #21
  %i.s = tail call noundef float @llvm.floor.f32(float %i.r)
  %i.t = fptosi float %i.s to i32                 ; 2 uses
  %.sroa.speculated.i6 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.t, i32 0)
  store i32 %.sroa.speculated.i6, ptr %i.f, align 4, !tbaa !91
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 5)
  %.sroa.speculated13 = add nsw i32 %i.u, -5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 8, ptr %i.c, align 4, !tbaa !115
  %i.v = fdiv float %i.e, 4.000000e+01
  %i.w = tail call noundef float @log2f(float noundef %i.v) #21
  %i.x = tail call noundef float @llvm.floor.f32(float %i.w)
  %i.y = fptosi float %i.x to i32                 ; 2 uses
  %.sroa.speculated.i8 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.y, i32 0)
  store i32 %.sroa.speculated.i8, ptr %i.f, align 4, !tbaa !91
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 2)
  %.sroa.speculated = add nsw i32 %i.z, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.speculated.sink = phi i32 [ %.sroa.speculated, %bb.e ], [ %.sroa.speculated13, %bb.d ], [ %.sroa.speculated18, %bb.c ], [ %.sroa.speculated23, %bb.b ]
  store i32 %.sroa.speculated.sink, ptr %i.a, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv18DISOpticalFlowImpl26PatchInverseSearch_ParBodyC2ERS0_iiRNS_3MatES4_S4_S4_S4_S4_S4_S4_ii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(104) initializes((0, 28), (32, 104)) %0, ptr noundef nonnull align 8 dereferenceable(3024) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %12, i32 noundef %13) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv18DISOpticalFlowImpl26PatchInverseSearch_ParBodyE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !206
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !207
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %5, ptr %i.e, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %6, ptr %i.f, align 8, !tbaa !209
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %7, ptr %i.g, align 8, !tbaa !210
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %8, ptr %i.h, align 8, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %9, ptr %i.i, align 8, !tbaa !212
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %10, ptr %i.j, align 8, !tbaa !213
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %11, ptr %i.k, align 8, !tbaa !214
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %12, ptr %i.l, align 8, !tbaa !215
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %13, ptr %i.m, align 4, !tbaa !216
  %i.n = sitofp i32 %3 to double
  %i.o = sitofp i32 %2 to double
  %i.p = fdiv double %i.n, %i.o
  %i.q = tail call double @llvm.ceil.f64(double %i.p)
  %i.r = fptosi double %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.r, ptr %i.s, align 4, !tbaa !217
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv18DISOpticalFlowImpl26PatchInverseSearch_ParBodyclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
