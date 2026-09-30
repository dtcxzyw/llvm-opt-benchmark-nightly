Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatbs?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlatbs_:bb.a
  %i.cr = fneg double %i.cp
  %i.cs = select i1 %i.cq, double %i.cp, double %i.cr ; 4 uses
  store double %.0532635, ptr %i.c, align 8, !tbaa !22
  %i.ct = fcmp oge double %i.cs, 1.000000e+00
  %i.cu = select i1 %i.ct, double 1.000000e+00, double %i.cs
  %i.cv = fmul double %.0512636, %i.cu            ; 2 uses
  %i.cw = fcmp ole double %.0532635, %i.cv
  %i.cx = select i1 %i.cw, double %.0532635, double %i.cv ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv709
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !22
  %i.da = fadd double %i.cs, %i.cz                ; 2 uses
  %i.db = fcmp ult double %i.da, %i.af
  %i.dc = fdiv double %i.cs, %i.da
  %i.dd = fmul double %.0512636, %i.dc
  %.1513 = select i1 %i.db, double 0.000000e+00, double %i.dd
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, %i.cj ; 3 uses
  %i.de = icmp sge i64 %indvars.iv.next710, %i.ck
  %i.df = icmp sle i64 %indvars.iv.next710, %i.ck
  %.in584 = select i1 %.not.not.not, i1 %i.df, i1 %i.de
  br i1 %.in584, label %.lr.ph638, label %.loopexit621, !llvm.loop !10

bb.ad:                                            ; preds = %bb.aa
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !22
  %i.dg = fcmp oge double %i.bx, %i.af
  %i.dh = select i1 %i.dg, double %i.bx, double %i.af
  %i.di = fdiv double 1.000000e+00, %i.dh         ; 2 uses
  %i.dj = fcmp oge double %i.di, 1.000000e+00
  %i.dk = select i1 %i.dj, double 1.000000e+00, double %i.di ; 3 uses
  %i.dl = icmp sge i32 %.0, %.0494
  %i.dm = icmp sle i32 %.0, %.0494
  %.in583641 = select i1 %.not.not.not, i1 %i.dm, i1 %i.dl
  %i.dn = fcmp ugt double %i.dk, %i.af
  %or.cond642 = select i1 %.in583641, i1 %i.dn, i1 false
  br i1 %or.cond642, label %.lr.ph645.preheader, label %.loopexit621

.lr.ph645.preheader:                              ; preds = %bb.ad
  %i.do = sext i32 %.0 to i64
  %i.dp = sext i32 %.0535 to i64
  %i.dq = sext i32 %.0494 to i64                  ; 2 uses
  br label %.lr.ph645

.lr.ph645:                                        ; preds = %.lr.ph645.preheader, %.lr.ph645
  %indvars.iv712 = phi i64 [ %i.do, %.lr.ph645.preheader ], [ %indvars.iv.next713, %.lr.ph645 ] ; 2 uses
  %.2514643 = phi double [ %i.dk, %.lr.ph645.preheader ], [ %i.dv, %.lr.ph645 ]
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv712
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !22
  %i.dt = fadd double %i.ds, 1.000000e+00
  %i.du = fdiv double 1.000000e+00, %i.dt
  %i.dv = fmul double %.2514643, %i.du            ; 3 uses
  %indvars.iv.next713 = add nsw i64 %indvars.iv712, %i.dp ; 3 uses
  %i.dw = icmp sge i64 %indvars.iv.next713, %i.dq
  %i.dx = icmp sle i64 %indvars.iv.next713, %i.dq
  %.in583 = select i1 %.not.not.not, i1 %i.dx, i1 %i.dw
  %i.dy = fcmp ugt double %i.dv, %i.af
  %or.cond = select i1 %.in583, i1 %i.dy, i1 false
  br i1 %or.cond, label %.lr.ph645, label %.loopexit621, !llvm.loop !11

bb.ae:                                            ; preds = %bb.w
  br i1 %.not.not.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = load i32, ptr %5, align 4, !tbaa !20
  %i.ea = add nsw i32 %i.dz, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.1536 = phi i32 [ 1, %bb.af ], [ -1, %bb.ae ]  ; 7 uses
  %.1500 = phi i32 [ %i.ea, %bb.af ], [ 1, %bb.ae ] ; 6 uses
  %.1495 = phi i32 [ %i.by, %bb.af ], [ 1, %bb.ae ] ; 12 uses
  %.1 = phi i32 [ 1, %bb.af ], [ %i.by, %bb.ae ]  ; 11 uses
  %i.eb = load double, ptr %i.e, align 8, !tbaa !22 ; 2 uses
  %i.ec = fcmp une double %i.eb, 1.000000e+00
  br i1 %i.ec, label %.loopexit621, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not569, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = fcmp oge double %i.bx, %i.af
  %i.ee = select i1 %i.ed, double %i.bx, double %i.af
  %i.ef = fdiv double 1.000000e+00, %i.ee         ; 4 uses
  store i32 %.1495, ptr %i.a, align 4, !tbaa !20
  %i.eg = icmp sge i32 %.1, %.1495
  %i.eh = icmp sle i32 %.1, %.1495
  %.in581647 = select i1 %.not.not.not, i1 %i.eg, i1 %i.eh
  br i1 %.in581647, label %.lr.ph651.preheader, label %._crit_edge

.lr.ph651.preheader:                              ; preds = %bb.ai
  %i.ei = sext i32 %.1 to i64
  %i.ej = sext i32 %.1536 to i64
  %i.ek = sext i32 %.1495 to i64                  ; 2 uses
  %i.el = sext i32 %i.g to i64
  %i.em = sext i32 %.1500 to i64
  %invariant.gep789 = getelementptr [8 x i8], ptr %i.i, i64 %i.em
  br label %.lr.ph651

.lr.ph651:                                        ; preds = %.lr.ph651.preheader, %bb.aj
  %indvars.iv715 = phi i64 [ %i.ei, %.lr.ph651.preheader ], [ %indvars.iv.next716, %bb.aj ] ; 3 uses
  %.3515649 = phi double [ %i.ef, %.lr.ph651.preheader ], [ %i.et, %bb.aj ] ; 4 uses
  %.1533648 = phi double [ %i.ef, %.lr.ph651.preheader ], [ %.2534, %bb.aj ] ; 3 uses
  %i.en = fcmp ugt double %.3515649, %i.af
  br i1 %i.en, label %bb.aj, label %.loopexit621

bb.aj:                                            ; preds = %.lr.ph651
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv715
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !22
  %i.eq = fadd double %i.ep, 1.000000e+00         ; 3 uses
  %i.er = fdiv double %.1533648, %i.eq            ; 2 uses
  %i.es = fcmp ole double %.3515649, %i.er
  %i.et = select i1 %i.es, double %.3515649, double %i.er ; 2 uses
  %i.eu = mul nsw i64 %indvars.iv715, %i.el
  %gep790 = getelementptr [8 x i8], ptr %invariant.gep789, i64 %i.eu
  %i.ev = load double, ptr %gep790, align 8, !tbaa !22 ; 4 uses
  store double %i.ev, ptr %i.c, align 8, !tbaa !22
  %i.ew = fcmp oge double %i.ev, 0.000000e+00
  %i.ex = fneg double %i.ev
  %i.ey = select i1 %i.ew, double %i.ev, double %i.ex ; 2 uses
  %i.ez = fcmp ogt double %i.eq, %i.ey
  %i.fa = fdiv double %i.ey, %i.eq
  %i.fb = fmul double %.1533648, %i.fa
  %.2534 = select i1 %i.ez, double %i.fb, double %.1533648 ; 2 uses
  %indvars.iv.next716 = add nsw i64 %indvars.iv715, %i.ej ; 3 uses
  %i.fc = icmp sge i64 %indvars.iv.next716, %i.ek
  %i.fd = icmp sle i64 %indvars.iv.next716, %i.ek
  %.in581 = select i1 %.not.not.not, i1 %i.fc, i1 %i.fd
  br i1 %.in581, label %.lr.ph651, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.aj, %bb.ai
  %.1533.lcssa = phi double [ %i.ef, %bb.ai ], [ %.2534, %bb.aj ] ; 2 uses
  %.3515.lcssa = phi double [ %i.ef, %bb.ai ], [ %i.et, %bb.aj ] ; 2 uses
  %i.fe = fcmp ole double %.3515.lcssa, %.1533.lcssa
  %i.ff = select i1 %i.fe, double %.3515.lcssa, double %.1533.lcssa
  br label %.loopexit621

bb.ak:                                            ; preds = %bb.ah
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !22
  %i.fg = fcmp oge double %i.bx, %i.af
  %i.fh = select i1 %i.fg, double %i.bx, double %i.af
  %i.fi = fdiv double 1.000000e+00, %i.fh         ; 2 uses
  %i.fj = fcmp oge double %i.fi, 1.000000e+00
  %i.fk = select i1 %i.fj, double 1.000000e+00, double %i.fi ; 3 uses
  %i.fl = icmp sge i32 %.1, %.1495
  %i.fm = icmp sle i32 %.1, %.1495
  %.in654 = select i1 %.not.not.not, i1 %i.fl, i1 %i.fm
  %i.fn = fcmp ugt double %i.fk, %i.af
  %or.cond600655 = select i1 %.in654, i1 %i.fn, i1 false
  br i1 %or.cond600655, label %.lr.ph659.preheader, label %.loopexit621

.lr.ph659.preheader:                              ; preds = %bb.ak
  %i.fo = sext i32 %.1 to i64
  %i.fp = sext i32 %.1536 to i64
  %i.fq = sext i32 %.1495 to i64                  ; 2 uses
  br label %.lr.ph659

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %.lr.ph659
  %indvars.iv718 = phi i64 [ %i.fo, %.lr.ph659.preheader ], [ %indvars.iv.next719, %.lr.ph659 ] ; 2 uses
  %.4516656 = phi double [ %i.fk, %.lr.ph659.preheader ], [ %i.fu, %.lr.ph659 ]
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv718
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !22
  %i.ft = fadd double %i.fs, 1.000000e+00
  %i.fu = fdiv double %.4516656, %i.ft            ; 3 uses
  %indvars.iv.next719 = add nsw i64 %indvars.iv718, %i.fp ; 3 uses
  %i.fv = icmp sge i64 %indvars.iv.next719, %i.fq
  %i.fw = icmp sle i64 %indvars.iv.next719, %i.fq
  %.in = select i1 %.not.not.not, i1 %i.fv, i1 %i.fw
  %i.fx = fcmp ugt double %i.fu, %i.af
  %or.cond600 = select i1 %.in, i1 %i.fx, i1 false
  br i1 %or.cond600, label %.lr.ph659, label %.loopexit621, !llvm.loop !13

.loopexit621:                                     ; preds = %.lr.ph638, %bb.ac, %.lr.ph645, %.lr.ph651, %.lr.ph659, %bb.ab, %bb.ad, %bb.ak, %bb.ag, %bb.z, %._crit_edge
  %i.fy = phi double [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %bb.ad ], [ %i.cb, %bb.z ], [ 1.000000e+00, %.lr.ph645 ], [ 1.000000e+00, %bb.ak ], [ %i.eb, %bb.ag ], [ 1.000000e+00, %bb.ab ], [ 1.000000e+00, %.lr.ph659 ], [ 1.000000e+00, %.lr.ph651 ], [ 1.000000e+00, %bb.ac ], [ 1.000000e+00, %.lr.ph638 ]
  %i.fz = phi i32 [ %.1536, %._crit_edge ], [ %.0535, %bb.ad ], [ %.0535, %bb.z ], [ %.0535, %.lr.ph645 ], [ %.1536, %bb.ak ], [ %.1536, %bb.ag ], [ %.0535, %bb.ab ], [ %.1536, %.lr.ph659 ], [ %.1536, %.lr.ph651 ], [ %.0535, %bb.ac ], [ %.0535, %.lr.ph638 ] ; 3 uses
  %.5517 = phi double [ %i.ff, %._crit_edge ], [ %i.dk, %bb.ad ], [ 0.000000e+00, %bb.z ], [ %i.dv, %.lr.ph645 ], [ %i.fk, %bb.ak ], [ 0.000000e+00, %bb.ag ], [ %i.cf, %bb.ab ], [ %i.fu, %.lr.ph659 ], [ %.3515649, %.lr.ph651 ], [ %i.cx, %bb.ac ], [ %.0512636, %.lr.ph638 ]
  %.2501 = phi i32 [ %.1500, %._crit_edge ], [ %.0499, %bb.ad ], [ %.0499, %bb.z ], [ %.0499, %.lr.ph645 ], [ %.1500, %bb.ak ], [ %.1500, %bb.ag ], [ %.0499, %bb.ab ], [ %.1500, %.lr.ph659 ], [ %.1500, %.lr.ph651 ], [ %.0499, %bb.ac ], [ %.0499, %.lr.ph638 ] ; 3 uses
  %i.ga = phi i32 [ %.1495, %._crit_edge ], [ %.0494, %bb.ad ], [ %.0494, %bb.z ], [ %.0494, %.lr.ph645 ], [ %.1495, %bb.ak ], [ %.1495, %bb.ag ], [ %.0494, %bb.ab ], [ %.1495, %.lr.ph659 ], [ %.1495, %.lr.ph651 ], [ %.0494, %bb.ac ], [ %.0494, %.lr.ph638 ] ; 5 uses
  %.2 = phi i32 [ %.1, %._crit_edge ], [ %.0, %bb.ad ], [ %.0, %bb.z ], [ %.0, %.lr.ph645 ], [ %.1, %bb.ak ], [ %.1, %bb.ag ], [ %.0, %bb.ab ], [ %.1, %.lr.ph659 ], [ %.1, %.lr.ph651 ], [ %.0, %bb.ac ], [ %.0, %.lr.ph638 ] ; 4 uses
  %i.gb = fmul double %.5517, %i.fy
  %i.gc = fcmp ogt double %i.gb, %i.af
  br i1 %i.gc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.loopexit621
  call void @dtbsv_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull @c__1) #6
  %.pr614 = load double, ptr %i.e, align 8, !tbaa !22
  br label %bb.ct

bb.am:                                            ; preds = %.loopexit621
  %i.gd = fcmp ogt double %i.bx, %i.ag
  br i1 %i.gd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ge = fdiv double %i.ag, %i.bx
  store double %i.ge, ptr %9, align 8, !tbaa !22
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef %8, ptr noundef nonnull @c__1) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0518 = phi double [ %i.ag, %bb.an ], [ %i.bx, %bb.am ] ; 2 uses
  %i.gf = icmp slt i32 %i.fz, 0                   ; 3 uses
  %i.gg = icmp sge i32 %.2, %i.ga
  %i.gh = icmp sle i32 %.2, %i.ga
  %.in585687 = select i1 %i.gf, i1 %i.gg, i1 %i.gh ; 2 uses
  br i1 %.not566, label %bb.bn, label %12

12:                                               ; preds = %bb.ao
  br i1 %.in585687, label %.lr.ph669, label %.loopexit619

.lr.ph669:                                        ; preds = %12
  %i.gi = sext i32 %.2 to i64
  %i.gj = sext i32 %i.fz to i64
  %i.gk = sext i32 %i.g to i64                    ; 2 uses
  %i.gl = sext i32 %.2501 to i64
  %invariant.gep791 = getelementptr [8 x i8], ptr %i.i, i64 %i.gl
  %i.gm = sext i32 %i.ga to i64                   ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph669, %bb.bm
  %indvars.iv724 = phi i64 [ %i.gi, %.lr.ph669 ], [ %indvars.iv.next725, %bb.bm ] ; 14 uses
  %.1519666 = phi double [ %.0518, %.lr.ph669 ], [ %.5523, %bb.bm ] ; 4 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv724 ; 8 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !22 ; 6 uses
  store double %i.go, ptr %i.c, align 8, !tbaa !22
  %i.gp = fcmp oge double %i.go, 0.000000e+00
  %i.gq = fneg double %i.go
  %i.gr = select i1 %i.gp, double %i.go, double %i.gq ; 5 uses
  br i1 %.not569, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gs = mul nsw i64 %indvars.iv724, %i.gk
  %gep792 = getelementptr [8 x i8], ptr %invariant.gep791, i64 %i.gs
  %i.gt = load double, ptr %gep792, align 8, !tbaa !22
  %i.gu = load double, ptr %i.e, align 8, !tbaa !22
  %i.gv = fmul double %i.gt, %i.gu
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gw = load double, ptr %i.e, align 8, !tbaa !22 ; 2 uses
  %i.gx = fcmp oeq double %i.gw, 1.000000e+00
  br i1 %i.gx, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0526 = phi double [ %i.gv, %bb.aq ], [ %i.gw, %bb.ar ] ; 4 uses
  %i.gy = fcmp oge double %.0526, 0.000000e+00
  %i.gz = fneg double %.0526
  %i.ha = select i1 %i.gy, double %.0526, double %i.gz ; 5 uses
  %i.hb = fcmp ogt double %i.ha, %i.af
  br i1 %i.hb, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hc = fcmp olt double %i.ha, 1.000000e+00
  %i.hd = fmul double %i.ag, %i.ha
  %i.he = fcmp ogt double %i.gr, %i.hd
  %or.cond602 = select i1 %i.hc, i1 %i.he, i1 false
  br i1 %or.cond602, label %bb.au, label %.sink.split

bb.au:                                            ; preds = %bb.at
  %i.hf = fdiv double 1.000000e+00, %i.gr
  br label %.sink.split.sink.split.sink.split

bb.av:                                            ; preds = %bb.as
  %i.hg = fcmp ogt double %i.ha, 0.000000e+00
  br i1 %i.hg, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.hh = fmul double %i.ag, %i.ha                ; 2 uses
  %i.hi = fcmp ogt double %i.gr, %i.hh
  br i1 %i.hi, label %bb.ax, label %.sink.split

bb.ax:                                            ; preds = %bb.aw
  %i.hj = fdiv double %i.hh, %i.gr                ; 2 uses
  store double %i.hj, ptr %i.f, align 8, !tbaa !22
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv724
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !22 ; 2 uses
  %i.hm = fcmp ogt double %i.hl, 1.000000e+00
  br i1 %i.hm, label %bb.ay, label %.sink.split.sink.split

bb.ay:                                            ; preds = %bb.ax
  %i.hn = fdiv double %i.hj, %i.hl
  br label %.sink.split.sink.split.sink.split

bb.az:                                            ; preds = %bb.av
  %i.ho = load i32, ptr %4, align 4, !tbaa !20    ; 3 uses
  store i32 %i.ho, ptr %i.b, align 4, !tbaa !20
  %.not596661 = icmp slt i32 %i.ho, 1
  br i1 %.not596661, label %.thread606, label %.lr.ph664.preheader

.lr.ph664.preheader:                              ; preds = %bb.az
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %8, i8 0, i64 %i.hq, i1 false), !tbaa !22
  br label %.thread606

.thread606:                                       ; preds = %.lr.ph664.preheader, %bb.az
  store double 1.000000e+00, ptr %i.gn, align 8, !tbaa !22
  store double 0.000000e+00, ptr %9, align 8, !tbaa !22
  br label %bb.bd

.sink.split.sink.split.sink.split:                ; preds = %bb.au, %bb.ay
  %.sink821 = phi double [ %i.hn, %bb.ay ], [ %i.hf, %bb.au ]
  store double %.sink821, ptr %i.f, align 8, !tbaa !22
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %bb.ax
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.hr = load double, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.hs = load double, ptr %9, align 8, !tbaa !22
  %i.ht = fmul double %i.hr, %i.hs
  store double %i.ht, ptr %9, align 8, !tbaa !22
  %i.hu = fmul double %.1519666, %i.hr
  %.pre = load double, ptr %i.gn, align 8, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.aw, %bb.at
  %.sink807 = phi double [ %i.go, %bb.at ], [ %i.go, %bb.aw ], [ %.pre, %.sink.split.sink.split ]
  %.4522.ph = phi double [ %.1519666, %bb.at ], [ %.1519666, %bb.aw ], [ %i.hu, %.sink.split.sink.split ]
  %i.hv = fdiv double %.sink807, %.0526           ; 5 uses
  store double %i.hv, ptr %i.gn, align 8, !tbaa !22
  store double %i.hv, ptr %i.c, align 8, !tbaa !22
  %i.hw = fcmp oge double %i.hv, 0.000000e+00
  %i.hx = fneg double %i.hv
  %i.hy = select i1 %i.hw, double %i.hv, double %i.hx
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.ar
  %.4522 = phi double [ %.1519666, %bb.ar ], [ %.4522.ph, %.sink.split ] ; 4 uses
  %.0493 = phi double [ %i.gr, %bb.ar ], [ %i.hy, %.sink.split ] ; 3 uses
  %i.hz = fcmp ogt double %.0493, 1.000000e+00
  br i1 %i.hz, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ia = fdiv double 1.000000e+00, %.0493        ; 3 uses
  store double %i.ia, ptr %i.f, align 8, !tbaa !22
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv724
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !22
  %i.id = fsub double %i.ag, %.4522
  %i.ie = fmul double %i.id, %i.ia
  %i.if = fcmp ogt double %i.ic, %i.ie
  br i1 %i.if, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.ig = fmul nnan double %i.ia, 5.000000e-01
  store double %i.ig, ptr %i.f, align 8, !tbaa !22
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.ih = load double, ptr %i.f, align 8, !tbaa !22
  %i.ii = load double, ptr %9, align 8, !tbaa !22
  %i.ij = fmul double %i.ih, %i.ii
  br label %.sink.split808

bb.bd:                                            ; preds = %.thread606, %bb.ba
  %.0493611 = phi double [ 1.000000e+00, %.thread606 ], [ %.0493, %bb.ba ]
  %.4522610 = phi double [ 0.000000e+00, %.thread606 ], [ %.4522, %bb.ba ] ; 3 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv724
  %i.il = load double, ptr %i.ik, align 8, !tbaa !22
  %i.im = fmul double %.0493611, %i.il
  %i.in = fsub double %i.ag, %.4522610
  %i.io = fcmp ogt double %i.im, %i.in
  br i1 %i.io, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull @c_b36, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.ip = load double, ptr %9, align 8, !tbaa !22
  %i.iq = fmul double %i.ip, 5.000000e-01
  br label %.sink.split808

.sink.split808:                                   ; preds = %bb.bc, %bb.be
  %.sink809 = phi double [ %i.iq, %bb.be ], [ %i.ij, %bb.bc ]
  %.4522609.ph = phi double [ %.4522610, %bb.be ], [ %.4522, %bb.bc ]
  store double %.sink809, ptr %9, align 8, !tbaa !22
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split808, %bb.bd, %bb.bb
  %.4522609 = phi double [ %.4522610, %bb.bd ], [ %.4522, %bb.bb ], [ %.4522609.ph, %.sink.split808 ] ; 2 uses
  br i1 %.not.not.not, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ir = icmp sgt i64 %indvars.iv724, 1
  br i1 %i.ir, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.is = load i32, ptr %5, align 4, !tbaa !20    ; 3 uses
  store i32 %i.is, ptr %i.b, align 4, !tbaa !20
  %i.it = trunc i64 %indvars.iv724 to i32
  %i.iu = add i32 %i.it, -1                       ; 2 uses
  %i.iv = call i32 @llvm.smin.i32(i32 %i.is, i32 %i.iu) ; 3 uses
  store i32 %i.iv, ptr %i.d, align 4, !tbaa !20
  %i.iw = load double, ptr %i.gn, align 8, !tbaa !22
  %i.ix = fneg double %i.iw
  %i.iy = load double, ptr %i.e, align 8, !tbaa !22
  %i.iz = fmul double %i.iy, %i.ix
  store double %i.iz, ptr %i.c, align 8, !tbaa !22
  %i.ja = trunc i64 %indvars.iv724 to i32
  %i.jb = mul i32 %i.g, %i.ja
  %i.jc = add i32 %i.jb, 1
  %i.jd = add i32 %i.jc, %i.is
  %i.je = sub i32 %i.jd, %i.iv
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jf
  %i.jh = sext i32 %i.iv to i64
  %i.ji = sub nsw i64 %indvars.iv724, %i.jh
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ji
  call void @daxpy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef %i.jg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.jj, ptr noundef nonnull @c__1) #6
  store i32 %i.iu, ptr %i.b, align 4, !tbaa !20
  %i.jk = call i32 @idamax_(ptr noundef nonnull %i.b, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.jl
  br label %.sink.split810

bb.bi:                                            ; preds = %bb.bf
  %i.jn = load i32, ptr %4, align 4, !tbaa !20    ; 2 uses
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp slt i64 %indvars.iv724, %i.jo
  br i1 %i.jp, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.jq = load i32, ptr %5, align 4, !tbaa !20    ; 2 uses
  store i32 %i.jq, ptr %i.b, align 4, !tbaa !20
  %i.jr = trunc nsw i64 %indvars.iv724 to i32     ; 2 uses
  %i.js = sub nsw i32 %i.jn, %i.jr                ; 2 uses
  %i.jt = call i32 @llvm.smin.i32(i32 %i.jq, i32 %i.js) ; 2 uses
  store i32 %i.jt, ptr %i.d, align 4, !tbaa !20
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jv = load double, ptr %i.gn, align 8, !tbaa !22
  %i.jw = fneg double %i.jv
  %i.jx = load double, ptr %i.e, align 8, !tbaa !22
  %i.jy = fmul double %i.jx, %i.jw
  store double %i.jy, ptr %i.c, align 8, !tbaa !22
  %i.jz = mul nsw i64 %indvars.iv724, %i.gk
  %i.ka = getelementptr [8 x i8], ptr %i.i, i64 %i.jz
  %i.kb = getelementptr i8, ptr %i.ka, i64 16
  %i.kc = getelementptr i8, ptr %i.gn, i64 8
  call void @daxpy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef %i.kb, ptr noundef nonnull @c__1, ptr noundef %i.kc, ptr noundef nonnull @c__1) #6
  %.pre739 = load i32, ptr %4, align 4, !tbaa !20
  %.pre743 = sub nsw i32 %.pre739, %i.jr
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pre-phi = phi i32 [ %.pre743, %bb.bk ], [ %i.js, %bb.bj ]
  store i32 %.pre-phi, ptr %i.b, align 4, !tbaa !20
  %i.kd = getelementptr i8, ptr %i.gn, i64 8
  %i.ke = call i32 @idamax_(ptr noundef nonnull %i.b, ptr noundef %i.kd, ptr noundef nonnull @c__1) #6
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv724
  %i.kh = getelementptr [8 x i8], ptr %i.kg, i64 %i.kf
  br label %.sink.split810

.sink.split810:                                   ; preds = %bb.bl, %bb.bh
  %.sink816.in = phi ptr [ %i.jm, %bb.bh ], [ %i.kh, %bb.bl ]
  %.sink816 = load double, ptr %.sink816.in, align 8, !tbaa !22 ; 4 uses
  store double %.sink816, ptr %i.c, align 8, !tbaa !22
  %i.ki = fcmp oge double %.sink816, 0.000000e+00
  %i.kj = fneg double %.sink816
  %i.kk = select i1 %i.ki, double %.sink816, double %i.kj
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split810, %bb.bg, %bb.bi
  %.5523 = phi double [ %.4522609, %bb.bi ], [ %.4522609, %bb.bg ], [ %i.kk, %.sink.split810 ]
  %indvars.iv.next725 = add nsw i64 %indvars.iv724, %i.gj ; 3 uses
  %i.kl = icmp sge i64 %indvars.iv.next725, %i.gm
  %i.km = icmp sle i64 %indvars.iv.next725, %i.gm
  %.in594 = select i1 %i.gf, i1 %i.kl, i1 %i.km
  br i1 %.in594, label %bb.ap, label %.loopexit619, !llvm.loop !14

bb.bn:                                            ; preds = %bb.ao
  br i1 %.in585687, label %.lr.ph693, label %.loopexit619

.lr.ph693:                                        ; preds = %bb.bn, %bb.cs
  %.7690 = phi i32 [ %i.sh, %bb.cs ], [ %.2, %bb.bn ] ; 14 uses
  %.6524689 = phi double [ %i.sg, %bb.cs ], [ %.0518, %bb.bn ] ; 5 uses
  %.1527688 = phi double [ %.5531, %bb.cs ], [ undef, %bb.bn ]
  %i.kn = sext i32 %.7690 to i64                  ; 3 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.kn ; 11 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !22 ; 4 uses
  store double %i.kp, ptr %i.c, align 8, !tbaa !22
  %i.kq = fcmp oge double %i.kp, 0.000000e+00
  %i.kr = fneg double %i.kp
  %i.ks = select i1 %i.kq, double %i.kp, double %i.kr
  %i.kt = load double, ptr %i.e, align 8, !tbaa !22 ; 5 uses
  %i.ku = fcmp oge double %.6524689, 1.000000e+00
  %i.kv = select i1 %i.ku, double %.6524689, double 1.000000e+00
  %i.kw = fdiv double 1.000000e+00, %i.kv         ; 3 uses
  store double %i.kw, ptr %i.f, align 8, !tbaa !22
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.kn
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !22
  %i.kz = fsub double %i.ag, %i.ks
  %i.la = fmul double %i.kw, %i.kz
  %i.lb = fcmp ogt double %i.ky, %i.la
  br i1 %i.lb, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %.lr.ph693
  %i.lc = fmul double %i.kw, 5.000000e-01         ; 3 uses
  store double %i.lc, ptr %i.f, align 8, !tbaa !22
  br i1 %.not569, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ld = mul nsw i32 %.7690, %i.g
  %i.le = add nsw i32 %i.ld, %.2501
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !22
  %i.li = fmul double %i.kt, %i.lh
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.2528 = phi double [ %i.li, %bb.bp ], [ %i.kt, %bb.bo ] ; 6 uses
  %i.lj = fcmp oge double %.2528, 0.000000e+00
  %i.lk = fneg double %.2528
  %i.ll = select i1 %i.lj, double %.2528, double %i.lk ; 2 uses
  %i.lm = fcmp ogt double %i.ll, 1.000000e+00
  br i1 %i.lm, label %bb.br, label %thread-pre-split612

bb.br:                                            ; preds = %bb.bq
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !22
  %i.ln = fmul double %i.lc, %i.ll                ; 2 uses
  %i.lo = fcmp oge double %i.ln, 1.000000e+00
  %i.lp = select i1 %i.lo, double 1.000000e+00, double %i.ln ; 2 uses
  store double %i.lp, ptr %i.f, align 8, !tbaa !22
  %i.lq = fdiv double %i.kt, %.2528
  br label %thread-pre-split612

thread-pre-split612:                              ; preds = %bb.bq, %bb.br
  %i.lr = phi double [ %i.lp, %bb.br ], [ %i.lc, %bb.bq ]
  %.0497 = phi double [ %i.lq, %bb.br ], [ %i.kt, %bb.bq ] ; 2 uses
  %i.ls = fcmp olt double %i.lr, 1.000000e+00
  br i1 %i.ls, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %thread-pre-split612
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.lt = load double, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.lu = load double, ptr %9, align 8, !tbaa !22
  %i.lv = fmul double %i.lt, %i.lu
  store double %i.lv, ptr %9, align 8, !tbaa !22
  %i.lw = fmul double %.6524689, %i.lt
  br label %bb.bt

bb.bt:                                            ; preds = %thread-pre-split612, %bb.bs, %.lr.ph693
  %.3529 = phi double [ %.2528, %bb.bs ], [ %.2528, %thread-pre-split612 ], [ %.1527688, %.lr.ph693 ] ; 2 uses
  %.7525 = phi double [ %i.lw, %bb.bs ], [ %.6524689, %thread-pre-split612 ], [ %.6524689, %.lr.ph693 ] ; 6 uses
  %.1498 = phi double [ %.0497, %bb.bs ], [ %.0497, %thread-pre-split612 ], [ %i.kt, %.lr.ph693 ] ; 16 uses
  %i.lx = fcmp oeq double %.1498, 1.000000e+00
  %i.ly = load i32, ptr %5, align 4, !tbaa !20    ; 7 uses
  br i1 %i.lx, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  store i32 %i.ly, ptr %i.b, align 4, !tbaa !20
  br i1 %.not.not.not, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lz = add nsw i32 %.7690, -1
  %i.ma = call i32 @llvm.smin.i32(i32 %i.ly, i32 %i.lz) ; 3 uses
  store i32 %i.ma, ptr %i.d, align 4, !tbaa !20
  %i.mb = mul nsw i32 %.7690, %i.g
  %i.mc = add i32 %i.mb, 1
  %i.md = add i32 %i.mc, %i.ly
  %i.me = sub i32 %i.md, %i.ma
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.mf
  %i.mh = sub nsw i32 %.7690, %i.ma
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.mi
  %i.mk = call double @ddot_(ptr noundef nonnull %i.d, ptr noundef %i.mg, ptr noundef nonnull @c__1, ptr noundef nonnull %i.mj, ptr noundef nonnull @c__1) #6
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bu
  %i.ml = load i32, ptr %4, align 4, !tbaa !20
  %i.mm = sub nsw i32 %i.ml, %.7690
  %i.mn = call i32 @llvm.smin.i32(i32 %i.ly, i32 %i.mm) ; 2 uses
  store i32 %i.mn, ptr %i.d, align 4, !tbaa !20
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.mp = mul nsw i32 %.7690, %i.g
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr [8 x i8], ptr %i.i, i64 %i.mq
  %i.ms = getelementptr i8, ptr %i.mr, i64 16
  %i.mt = getelementptr i8, ptr %i.ko, i64 8
  %i.mu = call double @ddot_(ptr noundef nonnull %i.d, ptr noundef %i.ms, ptr noundef nonnull @c__1, ptr noundef %i.mt, ptr noundef nonnull @c__1) #6
  br label %.loopexit

bb.by:                                            ; preds = %bb.bt
  br i1 %.not.not.not, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mv = add nsw i32 %.7690, -1
  %i.mw = call i32 @llvm.smin.i32(i32 %i.ly, i32 %i.mv) ; 7 uses
  store i32 %i.mw, ptr %i.d, align 4, !tbaa !20
  store i32 %i.mw, ptr %i.b, align 4, !tbaa !20
  %.not589670 = icmp slt i32 %i.mw, 1
  br i1 %.not589670, label %.loopexit, label %.lr.ph674

.lr.ph674:                                        ; preds = %bb.bz
  %i.mx = mul nsw i32 %.7690, %i.g
  %i.my = add i32 %i.ly, %i.mx
  %i.mz = sub i32 %i.my, %i.mw                    ; 5 uses
  %i.na = xor i32 %i.mw, -1
  %i.nb = add i32 %.7690, %i.na
  %i.nc = sext i32 %i.nb to i64
  %invariant.gep793 = getelementptr [8 x i8], ptr %i.j, i64 %i.nc ; 5 uses
  %i.nd = zext nneg i32 %i.mw to i64              ; 2 uses
  %xtraiter = and i64 %i.nd, 3                    ; 3 uses
  %i.ne = icmp ult i32 %i.mw, 4
  br i1 %i.ne, label %.epil.preheader, label %.lr.ph674.new

.lr.ph674.new:                                    ; preds = %.lr.ph674
  %unroll_iter = and i64 %i.nd, 2147483644
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.lr.ph674.new
  %indvars.iv727 = phi i64 [ 1, %.lr.ph674.new ], [ %indvars.iv.next728.3, %bb.ca ] ; 6 uses
  %.0509671 = phi double [ 0.000000e+00, %.lr.ph674.new ], [ %i.ok, %bb.ca ]
  %niter = phi i64 [ 0, %.lr.ph674.new ], [ %niter.next.3, %bb.ca ]
  %i.nf = trunc nuw nsw i64 %indvars.iv727 to i32
  %i.ng = add i32 %i.mz, %i.nf
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nh
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !22
  %i.nk = fmul double %.1498, %i.nj
  %gep794 = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv727
  %i.nl = load double, ptr %gep794, align 8, !tbaa !22
  %i.nm = call double @llvm.fmuladd.f64(double %i.nk, double %i.nl, double %.0509671)
  %indvars.iv.next728 = add nuw nsw i64 %indvars.iv727, 1 ; 2 uses
  %i.nn = trunc nuw nsw i64 %indvars.iv.next728 to i32
  %i.no = add i32 %i.mz, %i.nn
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.np
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !22
  %i.ns = fmul double %.1498, %i.nr
  %gep794.1 = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv.next728
  %i.nt = load double, ptr %gep794.1, align 8, !tbaa !22
  %i.nu = call double @llvm.fmuladd.f64(double %i.ns, double %i.nt, double %i.nm)
  %indvars.iv.next728.1 = add nuw nsw i64 %indvars.iv727, 2 ; 2 uses
  %i.nv = trunc nuw nsw i64 %indvars.iv.next728.1 to i32
  %i.nw = add i32 %i.mz, %i.nv
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nx
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !22
  %i.oa = fmul double %.1498, %i.nz
  %gep794.2 = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv.next728.1
  %i.ob = load double, ptr %gep794.2, align 8, !tbaa !22
  %i.oc = call double @llvm.fmuladd.f64(double %i.oa, double %i.ob, double %i.nu)
  %indvars.iv.next728.2 = add nuw nsw i64 %indvars.iv727, 3 ; 2 uses
  %i.od = trunc nuw nsw i64 %indvars.iv.next728.2 to i32
  %i.oe = add i32 %i.mz, %i.od
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !22
  %i.oi = fmul double %.1498, %i.oh
  %gep794.3 = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv.next728.2
  %i.oj = load double, ptr %gep794.3, align 8, !tbaa !22
  %i.ok = call double @llvm.fmuladd.f64(double %i.oi, double %i.oj, double %i.oc) ; 3 uses
  %indvars.iv.next728.3 = add nuw nsw i64 %indvars.iv727, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit833.unr-lcssa, label %bb.ca, !llvm.loop !15

bb.cb:                                            ; preds = %bb.by
  %i.ol = load i32, ptr %4, align 4, !tbaa !20
  %i.om = sub nsw i32 %i.ol, %.7690
  %i.on = call i32 @llvm.smin.i32(i32 %i.ly, i32 %i.om) ; 5 uses
  store i32 %i.on, ptr %i.d, align 4, !tbaa !20
  store i32 %i.on, ptr %i.b, align 4, !tbaa !20
  %.not587676 = icmp slt i32 %i.on, 1
  br i1 %.not587676, label %.loopexit, label %.lr.ph680

end_hunk_0
begin_hunk_1_@dlatbs_:bb.a
  %gep798.6 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731.5
  %i.ps = load double, ptr %gep798.6, align 8, !tbaa !22
  %i.pt = call double @llvm.fmuladd.f64(double %i.pr, double %i.ps, double %i.pp)
  %indvars.iv.next731.7 = add nuw nsw i64 %indvars.iv730, 8 ; 3 uses
  %gep796.7 = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.7
  %i.pu = load double, ptr %gep796.7, align 8, !tbaa !22
  %i.pv = fmul double %.1498, %i.pu
  %gep798.7 = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv.next731.6
  %i.pw = load double, ptr %gep798.7, align 8, !tbaa !22
  %i.px = call double @llvm.fmuladd.f64(double %i.pv, double %i.pw, double %i.pt) ; 3 uses
  %niter853.next.7 = add i64 %niter853, 8         ; 2 uses
  %niter853.ncmp.7 = icmp eq i64 %niter853.next.7, %unroll_iter852
  br i1 %niter853.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %bb.cc, !llvm.loop !16

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cc
  %lcmp.mod849.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod849.not, label %.loopexit, label %.epil.preheader846

.epil.preheader846:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph680
  %indvars.iv730.epil.init = phi i64 [ 1, %.lr.ph680 ], [ %indvars.iv.next731.7, %.loopexit.loopexit.unr-lcssa ]
  %.1510677.epil.init = phi double [ 0.000000e+00, %.lr.ph680 ], [ %i.px, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod851 = icmp ne i64 %xtraiter847, 0
  call void @llvm.assume(i1 %lcmp.mod851)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.epil.preheader846
  %indvars.iv730.epil = phi i64 [ %indvars.iv730.epil.init, %.epil.preheader846 ], [ %indvars.iv.next731.epil, %bb.cd ] ; 2 uses
  %.1510677.epil = phi double [ %.1510677.epil.init, %.epil.preheader846 ], [ %i.qb, %bb.cd ]
  %epil.iter848 = phi i64 [ 0, %.epil.preheader846 ], [ %epil.iter848.next, %bb.cd ]
  %indvars.iv.next731.epil = add nuw nsw i64 %indvars.iv730.epil, 1 ; 2 uses
  %gep796.epil = getelementptr [8 x i8], ptr %invariant.gep795, i64 %indvars.iv.next731.epil
  %i.py = load double, ptr %gep796.epil, align 8, !tbaa !22
  %i.pz = fmul double %.1498, %i.py
  %gep798.epil = getelementptr [8 x i8], ptr %invariant.gep797, i64 %indvars.iv730.epil
  %i.qa = load double, ptr %gep798.epil, align 8, !tbaa !22
  %i.qb = call double @llvm.fmuladd.f64(double %i.pz, double %i.qa, double %.1510677.epil) ; 2 uses
  %epil.iter848.next = add i64 %epil.iter848, 1   ; 2 uses
  %epil.iter848.cmp.not = icmp eq i64 %epil.iter848.next, %xtraiter847
  br i1 %epil.iter848.cmp.not, label %.loopexit, label %bb.cd, !llvm.loop !17

.loopexit.loopexit833.unr-lcssa:                  ; preds = %bb.ca
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit833.unr-lcssa, %.lr.ph674
  %indvars.iv727.epil.init = phi i64 [ 1, %.lr.ph674 ], [ %indvars.iv.next728.3, %.loopexit.loopexit833.unr-lcssa ]
  %.0509671.epil.init = phi double [ 0.000000e+00, %.lr.ph674 ], [ %i.ok, %.loopexit.loopexit833.unr-lcssa ]
  %lcmp.mod845 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod845)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %.epil.preheader
  %indvars.iv727.epil = phi i64 [ %indvars.iv727.epil.init, %.epil.preheader ], [ %indvars.iv.next728.epil, %bb.ce ] ; 3 uses
  %.0509671.epil = phi double [ %.0509671.epil.init, %.epil.preheader ], [ %i.qj, %bb.ce ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ce ]
  %i.qc = trunc nuw nsw i64 %indvars.iv727.epil to i32
  %i.qd = add i32 %i.mz, %i.qc
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.qe
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !22
  %i.qh = fmul double %.1498, %i.qg
  %gep794.epil = getelementptr [8 x i8], ptr %invariant.gep793, i64 %indvars.iv727.epil
  %i.qi = load double, ptr %gep794.epil, align 8, !tbaa !22
  %i.qj = call double @llvm.fmuladd.f64(double %i.qh, double %i.qi, double %.0509671.epil) ; 2 uses
  %indvars.iv.next728.epil = add nuw nsw i64 %indvars.iv727.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.ce, !llvm.loop !18

.loopexit:                                        ; preds = %.loopexit.loopexit833.unr-lcssa, %bb.ce, %.loopexit.loopexit.unr-lcssa, %bb.cd, %bb.bz, %bb.cb, %bb.bv, %bb.bx, %bb.bw
  %.2511 = phi double [ %i.mk, %bb.bv ], [ %i.mu, %bb.bx ], [ 0.000000e+00, %bb.bw ], [ %i.qb, %bb.cd ], [ 0.000000e+00, %bb.cb ], [ 0.000000e+00, %bb.bz ], [ %i.px, %.loopexit.loopexit.unr-lcssa ], [ %i.ok, %.loopexit.loopexit833.unr-lcssa ], [ %i.qj, %bb.ce ] ; 2 uses
  %i.qk = load double, ptr %i.e, align 8, !tbaa !22 ; 4 uses
  %i.ql = fcmp oeq double %.1498, %i.qk
  %i.qm = load double, ptr %i.ko, align 8, !tbaa !22 ; 2 uses
  br i1 %i.ql, label %bb.cf, label %bb.cr

bb.cf:                                            ; preds = %.loopexit
  %i.qn = fsub double %i.qm, %.2511               ; 8 uses
  store double %i.qn, ptr %i.ko, align 8, !tbaa !22
  store double %i.qn, ptr %i.c, align 8, !tbaa !22
  %i.qo = fcmp oge double %i.qn, 0.000000e+00
  %i.qp = fneg double %i.qn
  %i.qq = select i1 %i.qo, double %i.qn, double %i.qp ; 4 uses
  br i1 %.not569, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qr = mul nsw i32 %.7690, %i.g
  %i.qs = add nsw i32 %i.qr, %.2501
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.qt
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !22
  %i.qw = fmul double %i.qk, %i.qv
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.qx = fcmp oeq double %i.qk, 1.000000e+00
  br i1 %i.qx, label %bb.cs, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.4530 = phi double [ %i.qw, %bb.cg ], [ %i.qk, %bb.ch ] ; 8 uses
  %i.qy = fcmp oge double %.4530, 0.000000e+00
  %i.qz = fneg double %.4530
  %i.ra = select i1 %i.qy, double %.4530, double %i.qz ; 5 uses
  %i.rb = fcmp ogt double %i.ra, %i.af
  br i1 %i.rb, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.rc = fcmp olt double %i.ra, 1.000000e+00
  %i.rd = fmul double %i.ag, %i.ra
  %i.re = fcmp ogt double %i.qq, %i.rd
  %or.cond604 = select i1 %i.rc, i1 %i.re, i1 false
  br i1 %or.cond604, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.rf = fdiv double 1.000000e+00, %i.qq
  store double %i.rf, ptr %i.f, align 8, !tbaa !22
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.rg = load double, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.rh = load double, ptr %9, align 8, !tbaa !22
  %i.ri = fmul double %i.rg, %i.rh
  store double %i.ri, ptr %9, align 8, !tbaa !22
  %i.rj = fmul double %.7525, %i.rg
  %.pre741 = load double, ptr %i.ko, align 8, !tbaa !22
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.rk = phi double [ %.pre741, %bb.ck ], [ %i.qn, %bb.cj ]
  %.8 = phi double [ %i.rj, %bb.ck ], [ %.7525, %bb.cj ]
  %i.rl = fdiv double %i.rk, %.4530               ; 2 uses
  store double %i.rl, ptr %i.ko, align 8, !tbaa !22
  br label %bb.cs

bb.cm:                                            ; preds = %bb.ci
  %i.rm = fcmp ogt double %i.ra, 0.000000e+00
  br i1 %i.rm, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.rn = fmul double %i.ag, %i.ra                ; 2 uses
  %i.ro = fcmp ogt double %i.qq, %i.rn
  br i1 %i.ro, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.rp = fdiv double %i.rn, %i.qq
  store double %i.rp, ptr %i.f, align 8, !tbaa !22
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef nonnull @c__1) #6
  %i.rq = load double, ptr %i.f, align 8, !tbaa !22 ; 2 uses
  %i.rr = load double, ptr %9, align 8, !tbaa !22
  %i.rs = fmul double %i.rq, %i.rr
  store double %i.rs, ptr %9, align 8, !tbaa !22
  %i.rt = fmul double %.7525, %i.rq
  %.pre740 = load double, ptr %i.ko, align 8, !tbaa !22
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ru = phi double [ %.pre740, %bb.co ], [ %i.qn, %bb.cn ]
  %.9 = phi double [ %i.rt, %bb.co ], [ %.7525, %bb.cn ]
  %i.rv = fdiv double %i.ru, %.4530               ; 2 uses
  store double %i.rv, ptr %i.ko, align 8, !tbaa !22
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cm
  %i.rw = load i32, ptr %4, align 4, !tbaa !20    ; 3 uses
  store i32 %i.rw, ptr %i.b, align 4, !tbaa !20
  %.not593682 = icmp slt i32 %i.rw, 1
  br i1 %.not593682, label %._crit_edge686, label %.lr.ph685.preheader

.lr.ph685.preheader:                              ; preds = %bb.cq
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = shl nuw nsw i64 %i.rx, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %8, i8 0, i64 %i.ry, i1 false), !tbaa !22
  br label %._crit_edge686

._crit_edge686:                                   ; preds = %.lr.ph685.preheader, %bb.cq
  store double 1.000000e+00, ptr %i.ko, align 8, !tbaa !22
  store double 0.000000e+00, ptr %9, align 8, !tbaa !22
  %.pre742 = load double, ptr %i.ko, align 8, !tbaa !22
  br label %bb.cs

bb.cr:                                            ; preds = %.loopexit
  %i.rz = fdiv double %i.qm, %.3529
  %i.sa = fsub double %i.rz, %.2511               ; 2 uses
  store double %i.sa, ptr %i.ko, align 8, !tbaa !22
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ch, %bb.cp, %._crit_edge686, %bb.cl, %bb.cr
  %i.sb = phi double [ %i.rl, %bb.cl ], [ %i.rv, %bb.cp ], [ %.pre742, %._crit_edge686 ], [ %i.qn, %bb.ch ], [ %i.sa, %bb.cr ] ; 4 uses
  %.5531 = phi double [ %.4530, %bb.cl ], [ %.4530, %bb.cp ], [ %.4530, %._crit_edge686 ], [ 1.000000e+00, %bb.ch ], [ %.3529, %bb.cr ]
  %.10 = phi double [ %.8, %bb.cl ], [ %.9, %bb.cp ], [ 0.000000e+00, %._crit_edge686 ], [ %.7525, %bb.ch ], [ %.7525, %bb.cr ] ; 2 uses
  store double %i.sb, ptr %i.c, align 8, !tbaa !22
  %i.sc = fcmp oge double %i.sb, 0.000000e+00
  %i.sd = fneg double %i.sb
  %i.se = select i1 %i.sc, double %i.sb, double %i.sd ; 2 uses
  %i.sf = fcmp oge double %.10, %i.se
  %i.sg = select i1 %i.sf, double %.10, double %i.se
  %i.sh = add nsw i32 %i.fz, %.7690               ; 3 uses
  %i.si = icmp sge i32 %i.sh, %i.ga
  %i.sj = icmp sle i32 %i.sh, %i.ga
  %.in585 = select i1 %i.gf, i1 %i.si, i1 %i.sj
  br i1 %.in585, label %.lr.ph693, label %.loopexit619, !llvm.loop !19

.loopexit619:                                     ; preds = %bb.bm, %bb.cs, %12, %bb.bn
  %i.sk = load double, ptr %i.e, align 8, !tbaa !22 ; 2 uses
  %i.sl = load double, ptr %9, align 8, !tbaa !22
  %i.sm = fdiv double %i.sl, %i.sk
  store double %i.sm, ptr %9, align 8, !tbaa !22
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit619, %bb.al
  %i.sn = phi double [ %i.sk, %.loopexit619 ], [ %.pr614, %bb.al ] ; 2 uses
  %i.so = fcmp une double %i.sn, 1.000000e+00
  br i1 %i.so, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.sp = fdiv double 1.000000e+00, %i.sn
  store double %i.sp, ptr %i.c, align 8, !tbaa !22
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull %i.c, ptr noundef nonnull %10, ptr noundef nonnull @c__1) #6
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu, %bb.n, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare double @dasum_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtbsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !23}
!9 = distinct !{!9, !23}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !23}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !24}
!18 = distinct !{!18, !24}
!19 = distinct !{!19, !23}
!20 = !{!5, !5, i64 0}
!21 = !{!"double", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
