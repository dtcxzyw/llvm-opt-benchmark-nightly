Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/serial_tree_learner?download=true
inline.NumInlined: 18193
inline.NumDeleted: 6360
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN8LightGBM27CumulativeFeatureConstraintC2ENS_26FeatureMinOrMaxConstraintsES1_b:bb.a
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !714

_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi double [ %.pre, %.lr.ph.i.preheader ], [ %i.ah, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.021.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ad, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.021.i.epil.init
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !309 ; 2 uses
  %i.al = fcmp olt double %i.ak, %.epil.init
  %i.am = select i1 %i.al, double %.epil.init, double %i.ak
  store double %i.am, ptr %i.aj, align 8, !tbaa !309
  br label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit

_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit.loopexit.unr-lcssa, %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !431
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !308 ; 5 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp eq i64 %i.as, 8
  br i1 %i.at, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit13, label %bb.i

bb.i:                                             ; preds = %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit
  %i.au = ashr exact i64 %i.as, 3                 ; 2 uses
  %i.av = add nsw i64 %i.au, -1                   ; 4 uses
  %.not20.i9 = icmp eq i64 %i.av, 0
  br i1 %.not20.i9, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit13, label %.lr.ph.i10.preheader

.lr.ph.i10.preheader:                             ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.av
  %.pre43 = load double, ptr %.phi.trans.insert, align 8, !tbaa !309 ; 3 uses
  %xtraiter61 = and i64 %i.av, 1
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i10.prol.loopexit, label %.lr.ph.i10.prol

.lr.ph.i10.prol:                                  ; preds = %.lr.ph.i10.preheader
  %i.aw = add nsw i64 %i.au, -2                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aw ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !309 ; 2 uses
  %i.az = fcmp olt double %i.ay, %.pre43
  %i.ba = select i1 %i.az, double %.pre43, double %i.ay ; 2 uses
  store double %i.ba, ptr %i.ax, align 8, !tbaa !309
  br label %.lr.ph.i10.prol.loopexit

.lr.ph.i10.prol.loopexit:                         ; preds = %.lr.ph.i10.prol, %.lr.ph.i10.preheader
  %.unr63 = phi double [ %.pre43, %.lr.ph.i10.preheader ], [ %i.ba, %.lr.ph.i10.prol ]
  %.021.i11.unr = phi i64 [ %i.av, %.lr.ph.i10.preheader ], [ %i.aw, %.lr.ph.i10.prol ]
  %i.bb = icmp eq i64 %i.as, 16
  br i1 %i.bb, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit13, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10
  %i.bc = phi double [ %i.bm, %.lr.ph.i10 ], [ %.unr63, %.lr.ph.i10.prol.loopexit ] ; 2 uses
  %.021.i11 = phi i64 [ %i.bi, %.lr.ph.i10 ], [ %.021.i11.unr, %.lr.ph.i10.prol.loopexit ] ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.ap, i64 %.021.i11
  %i.be = getelementptr i8, ptr %i.bd, i64 -8     ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !309 ; 2 uses
  %i.bg = fcmp olt double %i.bf, %i.bc
  %i.bh = select i1 %i.bg, double %i.bc, double %i.bf ; 3 uses
  store double %i.bh, ptr %i.be, align 8, !tbaa !309
  %i.bi = add i64 %.021.i11, -2                   ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bi ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !309 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bh
  %i.bm = select i1 %i.bl, double %i.bh, double %i.bk ; 2 uses
  store double %i.bm, ptr %i.bj, align 8, !tbaa !309
  %.not.i12.1 = icmp eq i64 %i.bi, 0
  br i1 %.not.i12.1, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit13, label %.lr.ph.i10, !llvm.loop !714

_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit13: ; preds = %.lr.ph.i10.prol.loopexit, %.lr.ph.i10, %bb.i, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !431
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !308 ; 5 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 8
  br i1 %i.bt, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18, label %bb.j

bb.j:                                             ; preds = %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit13
  %i.bu = ashr exact i64 %i.bs, 3
  %i.bv = add nsw i64 %i.bu, -1                   ; 4 uses
  %.not20.i14 = icmp eq i64 %i.bv, 0
  br i1 %.not20.i14, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %bb.j
  %.pre44 = load double, ptr %i.bp, align 8, !tbaa !309 ; 2 uses
  %xtraiter64 = and i64 %i.bv, 1
  %i.bw = icmp eq i64 %i.bs, 16
  br i1 %i.bw, label %.lr.ph.i15.epil.preheader, label %.lr.ph.i15.preheader.new

.lr.ph.i15.preheader.new:                         ; preds = %.lr.ph.i15.preheader
  %unroll_iter69 = and i64 %i.bv, -2
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15, %.lr.ph.i15.preheader.new
  %i.bx = phi double [ %.pre44, %.lr.ph.i15.preheader.new ], [ %i.ch, %.lr.ph.i15 ] ; 2 uses
  %.021.i16 = phi i64 [ 0, %.lr.ph.i15.preheader.new ], [ %i.cd, %.lr.ph.i15 ] ; 2 uses
  %niter70 = phi i64 [ 0, %.lr.ph.i15.preheader.new ], [ %niter70.next.1, %.lr.ph.i15 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.021.i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !309 ; 2 uses
  %i.cb = fcmp olt double %i.bx, %i.ca
  %i.cc = select i1 %i.cb, double %i.bx, double %i.ca ; 3 uses
  store double %i.cc, ptr %i.bz, align 8, !tbaa !309
  %i.cd = add nuw i64 %.021.i16, 2                ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cd ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !309 ; 2 uses
  %i.cg = fcmp olt double %i.cc, %i.cf
  %i.ch = select i1 %i.cg, double %i.cc, double %i.cf ; 3 uses
  store double %i.ch, ptr %i.ce, align 8, !tbaa !309
  %niter70.next.1 = add nuw i64 %niter70, 2       ; 2 uses
  %niter70.ncmp.1 = icmp eq i64 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18.loopexit.unr-lcssa, label %.lr.ph.i15, !llvm.loop !714

_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18.loopexit.unr-lcssa: ; preds = %.lr.ph.i15
  %lcmp.mod67.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod67.not, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18, label %.lr.ph.i15.epil.preheader

.lr.ph.i15.epil.preheader:                        ; preds = %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18.loopexit.unr-lcssa, %.lr.ph.i15.preheader
  %.epil.init66 = phi double [ %.pre44, %.lr.ph.i15.preheader ], [ %i.ch, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18.loopexit.unr-lcssa ] ; 2 uses
  %.021.i16.epil.init = phi i64 [ 0, %.lr.ph.i15.preheader ], [ %i.cd, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18.loopexit.unr-lcssa ]
  %lcmp.mod68 = trunc i64 %i.bv to i1
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.021.i16.epil.init
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !309 ; 2 uses
  %i.cl = fcmp olt double %.epil.init66, %i.ck
  %i.cm = select i1 %i.cl, double %.epil.init66, double %i.ck
  store double %i.cm, ptr %i.cj, align 8, !tbaa !309
  br label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18

_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18: ; preds = %.lr.ph.i15.epil.preheader, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18.loopexit.unr-lcssa, %bb.j, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit13
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !431
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !308 ; 5 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 8
  br i1 %i.ct, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18
  %i.cu = ashr exact i64 %i.cs, 3                 ; 2 uses
  %i.cv = add nsw i64 %i.cu, -1                   ; 4 uses
  %.not20.i19 = icmp eq i64 %i.cv, 0
  br i1 %.not20.i19, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %bb.k
  %.phi.trans.insert45 = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cv
  %.pre46 = load double, ptr %.phi.trans.insert45, align 8, !tbaa !309 ; 3 uses
  %xtraiter71 = and i64 %i.cv, 1
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %.lr.ph.i20.prol.loopexit, label %.lr.ph.i20.prol

.lr.ph.i20.prol:                                  ; preds = %.lr.ph.i20.preheader
  %i.cw = add nsw i64 %i.cu, -2                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cw ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !309 ; 2 uses
  %i.cz = fcmp olt double %.pre46, %i.cy
  %i.da = select i1 %i.cz, double %.pre46, double %i.cy ; 2 uses
  store double %i.da, ptr %i.cx, align 8, !tbaa !309
  br label %.lr.ph.i20.prol.loopexit

.lr.ph.i20.prol.loopexit:                         ; preds = %.lr.ph.i20.prol, %.lr.ph.i20.preheader
  %.unr73 = phi double [ %.pre46, %.lr.ph.i20.preheader ], [ %i.da, %.lr.ph.i20.prol ]
  %.021.i21.unr = phi i64 [ %i.cv, %.lr.ph.i20.preheader ], [ %i.cw, %.lr.ph.i20.prol ]
  %i.db = icmp eq i64 %i.cs, 16
  br i1 %i.db, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20
  %i.dc = phi double [ %i.dm, %.lr.ph.i20 ], [ %.unr73, %.lr.ph.i20.prol.loopexit ] ; 2 uses
  %.021.i21 = phi i64 [ %i.di, %.lr.ph.i20 ], [ %.021.i21.unr, %.lr.ph.i20.prol.loopexit ] ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %i.cp, i64 %.021.i21
  %i.de = getelementptr i8, ptr %i.dd, i64 -8     ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !309 ; 2 uses
  %i.dg = fcmp olt double %i.dc, %i.df
  %i.dh = select i1 %i.dg, double %i.dc, double %i.df ; 3 uses
  store double %i.dh, ptr %i.de, align 8, !tbaa !309
  %i.di = add i64 %.021.i21, -2                   ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.di ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !309 ; 2 uses
  %i.dl = fcmp olt double %i.dh, %i.dk
  %i.dm = select i1 %i.dl, double %i.dh, double %i.dk ; 2 uses
  store double %i.dm, ptr %i.dj, align 8, !tbaa !309
  %.not.i22.1 = icmp eq i64 %i.di, 0
  br i1 %.not.i22.1, label %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23, label %.lr.ph.i20, !llvm.loop !714

_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23: ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20, %bb.k, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit18
  br i1 %3, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !403
  %6 = load ptr, ptr %0, align 8, !tbaa !222
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  %11 = add nsw i64 %10, -1
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %13 = load ptr, ptr %12, align 8, !tbaa !403
  %14 = load ptr, ptr %i.a, align 8, !tbaa !222
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 2
  %19 = add nsw i64 %18, -1
  br label %bb.n

bb.m:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !308 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.o

bb.n:                                             ; preds = %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23, %bb.l
  %.sink42 = phi i64 [ %11, %bb.l ], [ 0, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23 ] ; 2 uses
  %.sink40 = phi i64 [ %19, %bb.l ], [ 0, %_ZN8LightGBM27CumulativeFeatureConstraint18CumulativeExtremumEPFRKdS2_S2_EbPSt6vectorIdSaIdEE.exit23 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sink42, ptr %i.dp, align 8, !tbaa !439
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sink42, ptr %20, align 8, !tbaa !440
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sink40, ptr %21, align 8, !tbaa !441
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sink40, ptr %22, align 8, !tbaa !442
  ret void

bb.o:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !438
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.do to i64
  %i.du = sub i64 %i.ds, %i.dt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.du) #39
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.m, %bb.o
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !308 ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIdSaIdEED2Ev.exit25, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !438
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #39
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit25

_ZNSt6vectorIdSaIdEED2Ev.exit25:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.p
  %i.eb = load ptr, ptr %i.c, align 8, !tbaa !308 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIdSaIdEED2Ev.exit27, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit25
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !438
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #39
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit27

_ZNSt6vectorIdSaIdEED2Ev.exit27:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit25, %bb.q
  %i.eh = load ptr, ptr %i.b, align 8, !tbaa !308 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIdSaIdEED2Ev.exit29, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit27
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !438
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #39
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit29

_ZNSt6vectorIdSaIdEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit27, %bb.r
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit29
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !223
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  tail call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #39
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit29, %bb.s
  %i.et = load ptr, ptr %0, align 8, !tbaa !222   ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIjSaIjEED2Ev.exit32, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !223
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  tail call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #39
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit32

_ZNSt6vectorIjSaIjEED2Ev.exit32:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.t
  resume { ptr, i32 } %i.dn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(176) ptr @_ZN8LightGBM27CumulativeFeatureConstraintaSEOS0_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !222    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !329
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !329
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223
  store ptr %i.f, ptr %i.b, align 8, !tbaa !223
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #39
  br label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit

_ZNSt6vectorIjSaIjEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !222  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !223
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !329
  store <2 x ptr> %i.o, ptr %i.j, align 8, !tbaa !329
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !223
  store ptr %i.q, ptr %i.m, align 8, !tbaa !223
  %.not.i.i.i.i.i8 = icmp eq ptr %i.l, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i8, label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit9, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEEaSEOS1_.exit
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #39
  br label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit9

_ZNSt6vectorIjSaIjEEaSEOS1_.exit9:                ; preds = %_ZNSt6vectorIjSaIjEEaSEOS1_.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !308  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !438
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !269
  store <2 x ptr> %i.z, ptr %i.u, align 8, !tbaa !269
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !438
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !438
  %.not.i.i.i.i.i10 = icmp eq ptr %i.w, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i10, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEEaSEOS1_.exit9
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ae) #39
  br label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit

_ZNSt6vectorIdSaIdEEaSEOS1_.exit:                 ; preds = %_ZNSt6vectorIjSaIjEEaSEOS1_.exit9, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !308 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !438
  %i.ak = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !269
  store <2 x ptr> %i.ak, ptr %i.af, align 8, !tbaa !269
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !438
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !438
  %.not.i.i.i.i.i11 = icmp eq ptr %i.ah, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i11, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit12, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ap) #39
  br label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit12

_ZNSt6vectorIdSaIdEEaSEOS1_.exit12:               ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !308 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !438
  %i.av = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !269
  store <2 x ptr> %i.av, ptr %i.aq, align 8, !tbaa !269
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !438
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !438
  %.not.i.i.i.i.i13 = icmp eq ptr %i.as, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit14, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit12
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ba) #39
  br label %_ZNSt6vectorIdSaIdEEaSEOS1_.exit14

_ZNSt6vectorIdSaIdEEaSEOS1_.exit14:               ; preds = %_ZNSt6vectorIdSaIdEEaSEOS1_.exit12, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !308 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjSaIjEEaSERKS1_:bb.a

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !198
  store i32 %i.ah, ptr %i.i, align 4, !tbaa !198
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 4, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.r, label %bb.s, !prof !366

bb.r:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ai, ptr align 4 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !198
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !198
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !222
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !403
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !431
  %i.c = load ptr, ptr %1, align 8, !tbaa !308    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !438
  %i.i = load ptr, ptr %0, align 8, !tbaa !308    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, !prof !365

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #40 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !366

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.c, align 8, !tbaa !309
  store double %i.r, ptr %i.o, align 8, !tbaa !309
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !308    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !438
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #39
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !308
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !438
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !431  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 8
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !366

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 8
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load double, ptr %i.c, align 8, !tbaa !309
  store double %i.ae, ptr %i.i, align 8, !tbaa !309
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 8
  br i1 %i.af, label %bb.o, label %bb.p, !prof !366

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !308
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !431 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !308
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !431
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 8
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load double, ptr %i.c, align 8, !tbaa !309
  store double %i.ah, ptr %i.i, align 8, !tbaa !309
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 8, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.r, label %bb.s, !prof !366

bb.r:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ai, ptr align 8 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load double, ptr %i.ak, align 8, !tbaa !309
  store double %i.ap, ptr %i.ai, align 8, !tbaa !309
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !308
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !431
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt14__relocate_a_1IPN8LightGBM26AdvancedFeatureConstraintsES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat {
bb.a:
  %.not10 = icmp eq ptr %0, %1
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.bn, %.lr.ph ], [ %2, %bb.a ] ; 24 uses
  %.0911 = phi ptr [ %i.bm, %.lr.ph ], [ %0, %bb.a ] ; 25 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN8LightGBM26AdvancedFeatureConstraintsE, i64 16), ptr %.012, align 8, !tbaa !226, !alias.scope !720, !noalias !721
  %i.a = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.0911, i64 8 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !269, !alias.scope !721, !noalias !720
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !269, !alias.scope !720, !noalias !721
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %.0911, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !438, !alias.scope !721, !noalias !720
  store ptr %i.f, ptr %i.d, align 8, !tbaa !438, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %4 = getelementptr inbounds nuw i8, ptr %.012, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %.0911, i64 32 ; 2 uses
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !329, !alias.scope !721, !noalias !720
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !329, !alias.scope !720, !noalias !721
  %i.g = getelementptr inbounds nuw i8, ptr %.012, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %.0911, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !223, !alias.scope !721, !noalias !720
  store ptr %i.i, ptr %i.g, align 8, !tbaa !223, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %.0911, i64 56 ; 2 uses
  %7 = load <2 x ptr>, ptr %i.k, align 8, !tbaa !269, !alias.scope !721, !noalias !720
  store <2 x ptr> %7, ptr %i.j, align 8, !tbaa !269, !alias.scope !720, !noalias !721
  %i.l = getelementptr inbounds nuw i8, ptr %.012, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %.0911, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !438, !alias.scope !721, !noalias !720
  store ptr %i.n, ptr %i.l, align 8, !tbaa !438, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.o = getelementptr inbounds nuw i8, ptr %.012, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %.0911, i64 80 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !329, !alias.scope !721, !noalias !720
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !329, !alias.scope !720, !noalias !721
  %i.r = getelementptr inbounds nuw i8, ptr %.012, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %.0911, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !223, !alias.scope !721, !noalias !720
  store ptr %i.t, ptr %i.r, align 8, !tbaa !223, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.u = getelementptr inbounds nuw i8, ptr %.012, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %.0911, i64 104 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !329, !alias.scope !721, !noalias !720
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !329, !alias.scope !720, !noalias !721
  %i.x = getelementptr inbounds nuw i8, ptr %.012, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %.0911, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !223, !alias.scope !721, !noalias !720
  store ptr %i.z, ptr %i.x, align 8, !tbaa !223, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.v, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.aa = getelementptr inbounds nuw i8, ptr %.012, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911, i64 128 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !329, !alias.scope !721, !noalias !720
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !329, !alias.scope !720, !noalias !721
  %i.ad = getelementptr inbounds nuw i8, ptr %.012, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !223, !alias.scope !721, !noalias !720
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !223, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.ag = getelementptr inbounds nuw i8, ptr %.012, i64 152
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911, i64 152 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !269, !alias.scope !721, !noalias !720
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !269, !alias.scope !720, !noalias !721
  %i.aj = getelementptr inbounds nuw i8, ptr %.012, i64 168
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911, i64 168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !438, !alias.scope !721, !noalias !720
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !438, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.am = getelementptr inbounds nuw i8, ptr %.012, i64 176
  %i.an = getelementptr inbounds nuw i8, ptr %.0911, i64 176 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !269, !alias.scope !721, !noalias !720
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !269, !alias.scope !720, !noalias !721
  %i.ap = getelementptr inbounds nuw i8, ptr %.012, i64 192
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911, i64 192
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !438, !alias.scope !721, !noalias !720
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !438, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.as = getelementptr inbounds nuw i8, ptr %.012, i64 200
  %i.at = getelementptr inbounds nuw i8, ptr %.0911, i64 200 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !269, !alias.scope !721, !noalias !720
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !269, !alias.scope !720, !noalias !721
  %i.av = getelementptr inbounds nuw i8, ptr %.012, i64 216
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !438, !alias.scope !721, !noalias !720
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !438, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.ay = getelementptr inbounds nuw i8, ptr %.012, i64 224
  %i.az = getelementptr inbounds nuw i8, ptr %.0911, i64 224 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.az, align 8, !tbaa !269, !alias.scope !721, !noalias !720
  store <2 x ptr> %i.ba, ptr %i.ay, align 8, !tbaa !269, !alias.scope !720, !noalias !721
  %i.bb = getelementptr inbounds nuw i8, ptr %.012, i64 240
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911, i64 240
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !438, !alias.scope !721, !noalias !720
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !438, !alias.scope !720, !noalias !721
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !721, !noalias !720
  %i.be = getelementptr inbounds nuw i8, ptr %.012, i64 248
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !alias.scope !722
  %i.bg = getelementptr inbounds nuw i8, ptr %.012, i64 280
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911, i64 280
  %i.bi = load i16, ptr %i.bh, align 8, !alias.scope !721, !noalias !720
  store i16 %i.bi, ptr %i.bg, align 8, !alias.scope !720, !noalias !721
  %i.bj = load ptr, ptr %.0911, align 8, !tbaa !226, !alias.scope !721, !noalias !720
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !722
  tail call void %i.bl(ptr noundef nonnull align 8 dead_on_return(282) dereferenceable(282) %.0911) #18, !noalias !720, !inline_history !718
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911, i64 288 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012, i64 288 ; 2 uses
  %.not = icmp eq ptr %i.bm, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !719

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bn, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM26AdvancedFeatureConstraints5ResetEv(ptr noundef nonnull align 8 dereferenceable(282) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !431  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !308  ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp eq ptr %i.c, %i.d
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 1, %i.h
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.j)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !308
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.h, 1
  br i1 %i.k, label %bb.d, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.l
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.d
  store ptr %i.l, ptr %i.b, align 8, !tbaa !431
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

_ZNSt6vectorIdSaIdEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %bb.d, %bb.c, %bb.b
  %i.m = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i ]
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.m, align 8, !tbaa !309
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !403  ; 3 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !222  ; 6 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 2 uses
  %i.v = icmp eq ptr %i.p, %i.q
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %i.w = sub nuw nsw i64 1, %i.u
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.w)
  %.pre3.i = load ptr, ptr %i.n, align 8, !tbaa !222
  br label %_ZN8LightGBM26FeatureMinOrMaxConstraints5ResetEd.exit

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  %i.x = icmp ugt i64 %i.u, 1
  br i1 %i.x, label %bb.g, label %_ZN8LightGBM26FeatureMinOrMaxConstraints5ResetEd.exit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.p, %i.y
  br i1 %.not.i.i2.i, label %_ZN8LightGBM26FeatureMinOrMaxConstraints5ResetEd.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.g
  store ptr %i.y, ptr %i.o, align 8, !tbaa !403
  br label %_ZN8LightGBM26FeatureMinOrMaxConstraints5ResetEd.exit

_ZN8LightGBM26FeatureMinOrMaxConstraints5ResetEd.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i
  %i.z = phi ptr [ %.pre3.i, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ %i.q, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i ]
  store i32 0, ptr %i.z, align 4, !tbaa !198
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !431 ; 3 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !308 ; 6 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN8LightGBM26FeatureMinOrMaxConstraints5ResetEd.exit
  %i.aj = sub nuw nsw i64 1, %i.ah
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 noundef %i.aj)
  %.pre.i7 = load ptr, ptr %i.aa, align 8, !tbaa !308
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i1

bb.i:                                             ; preds = %_ZN8LightGBM26FeatureMinOrMaxConstraints5ResetEd.exit
  %i.ak = icmp ugt i64 %i.ah, 1
  br i1 %i.ak, label %bb.j, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i1

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ac, %i.al
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i1, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i6

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i6:     ; preds = %bb.j
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !431
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i1

_ZNSt6vectorIdSaIdEE6resizeEm.exit.i1:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i6, %bb.j, %bb.i, %bb.h
  %i.am = phi ptr [ %.pre.i7, %bb.h ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i6 ]
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.am, align 8, !tbaa !309
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !403 ; 3 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !222 ; 6 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 2 uses
  %i.av = icmp eq ptr %i.ap, %i.aq
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i1
  %i.aw = sub nuw nsw i64 1, %i.au
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.aw)
end_hunk_1
