Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nbayes?download=true
inline.NumInlined: 455
inline.NumDeleted: 174
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv2ml25NormalBayesClassifierImpl5trainERKNS_3PtrINS0_9TrainDataEEEi:bb.a
  %i.oy = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.pa = icmp sgt i32 %i.af, 0                   ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.pc = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.pd = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.pf = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.pg = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.ph = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %36, i64 20
  %i.pp = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.ps = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.pt = getelementptr inbounds nuw i8, ptr %38, i64 20
  %i.pu = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.pz = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %41, i64 20
  %i.qb = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %wide.trip.count518 = and i64 %i.z, 2147483647
  %wide.trip.count497 = zext i32 %i.af to i64     ; 9 uses
  %xtraiter = and i64 %wide.trip.count497, 1
  %i.ql = icmp eq i32 %i.af, 1
  %unroll_iter = and i64 %wide.trip.count497, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod665 = trunc i32 %i.af to i1
  %xtraiter666 = and i32 %i.af, 1
  %i.qm = icmp eq i32 %i.af, 1
  %unroll_iter670 = and i32 %i.af, 2147483646
  %lcmp.mod667.not = icmp eq i32 %xtraiter666, 0
  %lcmp.mod669 = trunc i32 %i.af to i1
  %xtraiter672 = and i64 %wide.trip.count497, 3   ; 3 uses
  %i.qn = icmp ult i32 %i.af, 4
  %unroll_iter676 = and i64 %wide.trip.count497, 2147483644
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  %lcmp.mod675 = icmp ne i64 %xtraiter672, 0
  %xtraiter678 = and i64 %wide.trip.count497, 7   ; 3 uses
  %i.qo = icmp ult i32 %i.af, 8
  %unroll_iter683 = and i64 %wide.trip.count497, 2147483640
  %lcmp.mod680.not = icmp eq i64 %xtraiter678, 0
  %lcmp.mod682 = icmp ne i64 %xtraiter678, 0
  %xtraiter685 = and i64 %wide.trip.count497, 7   ; 3 uses
  %i.qp = icmp ult i32 %i.af, 8
  %unroll_iter690 = and i64 %wide.trip.count497, 2147483640
  %lcmp.mod687.not = icmp eq i64 %xtraiter685, 0
  %lcmp.mod689 = icmp ne i64 %xtraiter685, 0
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph447, %_ZN2cv3Mat2atIdEERT_i.exit388
  %indvars.iv515 = phi i64 [ 0, %.lr.ph447 ], [ %indvars.iv.next516, %_ZN2cv3Mat2atIdEERT_i.exit388 ] ; 16 uses
  %i.qq = load ptr, ptr %i.ot, align 8, !tbaa !64
  %i.qr = getelementptr inbounds nuw [208 x i8], ptr %i.qq, i64 %indvars.iv515 ; 12 uses
  %i.qs = load ptr, ptr %i.ou, align 8, !tbaa !64
  %i.qt = getelementptr inbounds nuw [208 x i8], ptr %i.qs, i64 %indvars.iv515
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !106 ; 3 uses
  %i.qw = load ptr, ptr %i.ov, align 8, !tbaa !64
  %i.qx = getelementptr inbounds nuw [208 x i8], ptr %i.qw, i64 %indvars.iv515
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !106 ; 3 uses
  %i.ra = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.rb = getelementptr inbounds nuw [208 x i8], ptr %i.ra, i64 %indvars.iv515
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !106 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.re = load ptr, ptr %i.ox, align 8, !tbaa !64
  %i.rf = getelementptr inbounds nuw [208 x i8], ptr %i.re, i64 %indvars.iv515
  store i64 0, ptr %i.oz, align 8
  store i32 50397184, ptr %31, align 8, !tbaa !102
  store ptr %i.rf, ptr %i.oy, align 8, !tbaa !104
  invoke void @_ZN2cv12completeSymmERKNS_17_InputOutputArrayEb(ptr noundef nonnull align 8 dereferenceable(24) %31, i1 noundef zeroext false)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br i1 %i.pa, label %.lr.ph419.preheader, label %._crit_edge420

.lr.ph419.preheader:                              ; preds = %bb.dv
  br i1 %i.ql, label %.lr.ph419.epil.preheader, label %.lr.ph419

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.dy
  %indvars.iv473 = phi i64 [ %indvars.iv.next474.1, %bb.dy ], [ 0, %.lr.ph419.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.dy ], [ 0, %.lr.ph419.preheader ]
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv473
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !57 ; 2 uses
  %.not265 = icmp eq i32 %i.rh, 0
  br i1 %.not265, label %.lr.ph419.1, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph419
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv473
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !112
  %i.rk = sitofp i32 %i.rh to double
  %i.rl = fdiv double %i.rj, %i.rk
  br label %.lr.ph419.1

.lr.ph419.1:                                      ; preds = %.lr.ph419, %bb.dw
  %i.rm = phi double [ %i.rl, %bb.dw ], [ 0.000000e+00, %.lr.ph419 ]
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv473
  store double %i.rm, ptr %i.rn, align 8, !tbaa !112
  %indvars.iv.next474 = or disjoint i64 %indvars.iv473, 1 ; 3 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv.next474
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !57 ; 2 uses
  %.not265.1 = icmp eq i32 %i.rp, 0
  br i1 %.not265.1, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph419.1
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv.next474
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !112
  %i.rs = sitofp i32 %i.rp to double
  %i.rt = fdiv double %i.rr, %i.rs
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.lr.ph419.1
  %i.ru = phi double [ %i.rt, %bb.dx ], [ 0.000000e+00, %.lr.ph419.1 ]
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv.next474
  store double %i.ru, ptr %i.rv, align 8, !tbaa !112
  %indvars.iv.next474.1 = add nuw nsw i64 %indvars.iv473, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge420.loopexit.unr-lcssa, label %.lr.ph419, !llvm.loop !119

bb.dz:                                            ; preds = %bb.du
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.et

._crit_edge420.loopexit.unr-lcssa:                ; preds = %bb.dy
  br i1 %lcmp.mod.not, label %._crit_edge420, label %.lr.ph419.epil.preheader

.lr.ph419.epil.preheader:                         ; preds = %._crit_edge420.loopexit.unr-lcssa, %.lr.ph419.preheader
  %indvars.iv473.epil.init = phi i64 [ 0, %.lr.ph419.preheader ], [ %indvars.iv.next474.1, %._crit_edge420.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod665)
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv473.epil.init
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !57 ; 2 uses
  %.not265.epil = icmp eq i32 %i.ry, 0
  br i1 %.not265.epil, label %._crit_edge420.loopexit.epilog-lcssa, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph419.epil.preheader
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv473.epil.init
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !112
  %i.sb = sitofp i32 %i.ry to double
  %i.sc = fdiv double %i.sa, %i.sb
  br label %._crit_edge420.loopexit.epilog-lcssa

._crit_edge420.loopexit.epilog-lcssa:             ; preds = %bb.ea, %.lr.ph419.epil.preheader
  %i.sd = phi double [ %i.sc, %bb.ea ], [ 0.000000e+00, %.lr.ph419.epil.preheader ]
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv473.epil.init
  store double %i.sd, ptr %i.se, align 8, !tbaa !112
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %._crit_edge420.loopexit.epilog-lcssa, %._crit_edge420.loopexit.unr-lcssa, %bb.dv
  %i.sf = load ptr, ptr %i.ou, align 8, !tbaa !64
  %i.sg = getelementptr inbounds nuw [208 x i8], ptr %i.sf, i64 %indvars.iv515
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !106
  %i.sj = load ptr, ptr %i.ov, align 8, !tbaa !64
  %i.sk = getelementptr inbounds nuw [208 x i8], ptr %i.sj, i64 %indvars.iv515
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !106 ; 9 uses
  %i.sn = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.so = getelementptr inbounds nuw [208 x i8], ptr %i.sn, i64 %indvars.iv515
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !106 ; 9 uses
  br i1 %i.pa, label %.lr.ph426, label %._crit_edge427

.lr.ph426:                                        ; preds = %._crit_edge420
  %i.sr = load ptr, ptr %i.ox, align 8, !tbaa !64
  %i.ss = getelementptr inbounds nuw [208 x i8], ptr %i.sr, i64 %indvars.iv515 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !106 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 128
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !84 ; 2 uses
  %i.sx = load ptr, ptr %i.pb, align 8, !tbaa !106 ; 3 uses
  %i.sy = load i64, ptr %i.pc, align 8, !tbaa !84 ; 2 uses
  %i.sz = add i64 %i.sy, 8                        ; 2 uses
  %i.ta = add i64 %i.sw, 8                        ; 2 uses
  br label %bb.eb

bb.eb:                                            ; preds = %.lr.ph426, %.split423.us
  %indvars.iv492 = phi i64 [ 0, %.lr.ph426 ], [ %indvars.iv.next493, %.split423.us ] ; 12 uses
  %indvars.iv490 = phi i64 [ 1, %.lr.ph426 ], [ %indvars.iv.next491, %.split423.us ] ; 9 uses
  %i.tb = mul i64 %i.sz, %indvars.iv492
  %i.tc = getelementptr i8, ptr %i.sx, i64 %i.tb
  %scevgep620 = getelementptr i8, ptr %i.tc, i64 8 ; 3 uses
  %i.td = shl nuw nsw i64 %indvars.iv492, 3
  %43 = add nuw i64 %i.td, 8                      ; 2 uses
  %scevgep621 = getelementptr i8, ptr %i.sm, i64 %43
  %i.te = mul i64 %i.ta, %indvars.iv492
  %i.tf = getelementptr i8, ptr %i.su, i64 %i.te
  %scevgep622 = getelementptr i8, ptr %i.tf, i64 8
  %scevgep623 = getelementptr i8, ptr %i.sq, i64 %43
  %i.tg = mul i64 %i.sz, %indvars.iv492
  %i.th = getelementptr i8, ptr %i.sx, i64 %i.tg
  %scevgep = getelementptr i8, ptr %i.th, i64 8   ; 3 uses
  %i.ti = shl nuw nsw i64 %indvars.iv492, 3
  %44 = add nuw i64 %i.ti, 8                      ; 2 uses
  %scevgep586 = getelementptr i8, ptr %i.sm, i64 %44
  %i.tj = mul i64 %i.ta, %indvars.iv492
  %i.tk = getelementptr i8, ptr %i.su, i64 %i.tj
  %scevgep587 = getelementptr i8, ptr %i.tk, i64 8
  %scevgep588 = getelementptr i8, ptr %i.sq, i64 %44
  %i.tl = mul i64 %i.sw, %indvars.iv492
  %i.tm = getelementptr i8, ptr %i.su, i64 %i.tl  ; 6 uses
  %i.tn = mul i64 %i.sy, %indvars.iv492
  %i.to = getelementptr i8, ptr %i.sx, i64 %i.tn  ; 10 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv492
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !112 ; 4 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %indvars.iv492
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !112 ; 5 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv492
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !57
  %.fr449 = freeze i32 %i.tu                      ; 3 uses
  %i.tv = fneg double %i.ts                       ; 4 uses
  %i.tw = sitofp i32 %.fr449 to double            ; 4 uses
  %i.tx = icmp sgt i32 %.fr449, 1
  %i.ty = add nsw i32 %.fr449, -1
  %i.tz = uitofp nneg i32 %i.ty to double         ; 2 uses
  br i1 %i.tx, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.eb
  %min.iters.check636 = icmp samesign ult i64 %indvars.iv490, 4
  br i1 %min.iters.check636, label %.split.preheader657, label %vector.memcheck619

vector.memcheck619:                               ; preds = %.split.preheader
  %bound0624 = icmp ult ptr %i.to, %scevgep621
  %bound1625 = icmp ult ptr %i.sm, %scevgep620
  %found.conflict626 = and i1 %bound0624, %bound1625
  %bound0627 = icmp ult ptr %i.to, %scevgep622
  %bound1628 = icmp ult ptr %i.tm, %scevgep620
  %found.conflict629 = and i1 %bound0627, %bound1628
  %conflict.rdx630 = or i1 %found.conflict626, %found.conflict629
  %bound0631 = icmp ult ptr %i.to, %scevgep623
  %bound1632 = icmp ult ptr %i.sq, %scevgep620
  %found.conflict633 = and i1 %bound0631, %bound1632
  %conflict.rdx634 = or i1 %conflict.rdx630, %found.conflict633
  br i1 %conflict.rdx634, label %.split.preheader657, label %vector.ph637

vector.ph637:                                     ; preds = %vector.memcheck619
  %n.vec638 = and i64 %indvars.iv490, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert639 = insertelement <2 x double> poison, double %i.tv, i64 0
  %broadcast.splat640 = shufflevector <2 x double> %broadcast.splatinsert639, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert641 = insertelement <2 x double> poison, double %i.tq, i64 0
  %broadcast.splat642 = shufflevector <2 x double> %broadcast.splatinsert641, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert643 = insertelement <2 x double> poison, double %i.ts, i64 0
  %broadcast.splat644 = shufflevector <2 x double> %broadcast.splatinsert643, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert645 = insertelement <2 x double> poison, double %i.tw, i64 0
  %broadcast.splat646 = shufflevector <2 x double> %broadcast.splatinsert645, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body647

vector.body647:                                   ; preds = %vector.body647, %vector.ph637
  %index648 = phi i64 [ 0, %vector.ph637 ], [ %index.next652, %vector.body647 ] ; 5 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %index648
  %wide.load649 = load <2 x double>, ptr %i.ua, align 8, !tbaa !112, !alias.scope !120 ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %index648
  %wide.load650 = load <2 x double>, ptr %i.ub, align 8, !tbaa !112, !alias.scope !123
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %index648
  %wide.load651 = load <2 x double>, ptr %i.uc, align 8, !tbaa !112, !alias.scope !125
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat640, <2 x double> %wide.load651, <2 x double> %wide.load650)
  %i.ue = fneg <2 x double> %wide.load649
  %i.uf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ue, <2 x double> %broadcast.splat642, <2 x double> %i.ud)
  %i.ug = fmul <2 x double> %broadcast.splat644, %wide.load649
  %i.uh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ug, <2 x double> %broadcast.splat646, <2 x double> %i.uf)
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %index648
  store <2 x double> %i.uh, ptr %i.ui, align 8, !tbaa !112, !alias.scope !127, !noalias !129
  %index.next652 = add nuw i64 %index648, 2       ; 2 uses
  %i.uj = icmp eq i64 %index.next652, %n.vec638
  br i1 %i.uj, label %middle.block653, label %vector.body647, !llvm.loop !130

middle.block653:                                  ; preds = %vector.body647
  %cmp.n654 = icmp eq i64 %indvars.iv490, %n.vec638
  br i1 %cmp.n654, label %.split423.us, label %.split.preheader657

.split.preheader657:                              ; preds = %vector.memcheck619, %.split.preheader, %middle.block653
  %indvars.iv478.ph = phi i64 [ 0, %vector.memcheck619 ], [ 0, %.split.preheader ], [ %n.vec638, %middle.block653 ]
  br label %.split

.split.us.preheader:                              ; preds = %bb.eb
  %min.iters.check597 = icmp samesign ult i64 %indvars.iv490, 2
  br i1 %min.iters.check597, label %.split.us.preheader656, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.us.preheader
  %bound0 = icmp ult ptr %i.to, %scevgep586
  %bound1 = icmp ult ptr %i.sm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0589 = icmp ult ptr %i.to, %scevgep587
  %bound1590 = icmp ult ptr %i.tm, %scevgep
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx = or i1 %found.conflict, %found.conflict591
  %bound0592 = icmp ult ptr %i.to, %scevgep588
  %bound1593 = icmp ult ptr %i.sq, %scevgep
  %found.conflict594 = and i1 %bound0592, %bound1593
  %conflict.rdx595 = or i1 %conflict.rdx, %found.conflict594
  br i1 %conflict.rdx595, label %.split.us.preheader656, label %vector.ph598

vector.ph598:                                     ; preds = %vector.memcheck
  %n.vec599 = and i64 %indvars.iv490, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert600 = insertelement <2 x double> poison, double %i.tv, i64 0
  %broadcast.splat601 = shufflevector <2 x double> %broadcast.splatinsert600, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert602 = insertelement <2 x double> poison, double %i.tq, i64 0
  %broadcast.splat603 = shufflevector <2 x double> %broadcast.splatinsert602, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert604 = insertelement <2 x double> poison, double %i.ts, i64 0
  %broadcast.splat605 = shufflevector <2 x double> %broadcast.splatinsert604, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert606 = insertelement <2 x double> poison, double %i.tw, i64 0
  %broadcast.splat607 = shufflevector <2 x double> %broadcast.splatinsert606, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert608 = insertelement <2 x double> poison, double %i.tz, i64 0
  %broadcast.splat609 = shufflevector <2 x double> %broadcast.splatinsert608, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body610

vector.body610:                                   ; preds = %vector.body610, %vector.ph598
  %index611 = phi i64 [ 0, %vector.ph598 ], [ %index.next615, %vector.body610 ] ; 5 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %index611
  %wide.load612 = load <2 x double>, ptr %i.uk, align 8, !tbaa !112, !alias.scope !131 ; 2 uses
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %index611
  %wide.load613 = load <2 x double>, ptr %i.ul, align 8, !tbaa !112, !alias.scope !134
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %index611
  %wide.load614 = load <2 x double>, ptr %i.um, align 8, !tbaa !112, !alias.scope !136
  %i.un = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat601, <2 x double> %wide.load614, <2 x double> %wide.load613)
  %i.uo = fneg <2 x double> %wide.load612
  %i.up = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> %broadcast.splat603, <2 x double> %i.un)
  %i.uq = fmul <2 x double> %broadcast.splat605, %wide.load612
  %i.ur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uq, <2 x double> %broadcast.splat607, <2 x double> %i.up)
  %i.us = fdiv <2 x double> %i.ur, %broadcast.splat609
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %index611
  store <2 x double> %i.us, ptr %i.ut, align 8, !tbaa !112, !alias.scope !138, !noalias !140
  %index.next615 = add nuw i64 %index611, 2       ; 2 uses
  %i.uu = icmp eq i64 %index.next615, %n.vec599
  br i1 %i.uu, label %middle.block616, label %vector.body610, !llvm.loop !141

middle.block616:                                  ; preds = %vector.body610
  %cmp.n617 = icmp eq i64 %indvars.iv490, %n.vec599
  br i1 %cmp.n617, label %.split423.us, label %.split.us.preheader656

.split.us.preheader656:                           ; preds = %vector.memcheck, %.split.us.preheader, %middle.block616
  %indvars.iv485.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.us.preheader ], [ %n.vec599, %middle.block616 ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader656, %.split.us
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %.split.us ], [ %indvars.iv485.ph, %.split.us.preheader656 ] ; 5 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %indvars.iv485
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !112 ; 2 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %indvars.iv485
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !112
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv485
  %i.va = load double, ptr %i.uz, align 8, !tbaa !112
  %i.vb = call double @llvm.fmuladd.f64(double %i.tv, double %i.va, double %i.uy)
  %i.vc = fneg double %i.uw
  %i.vd = call double @llvm.fmuladd.f64(double %i.vc, double %i.tq, double %i.vb)
  %i.ve = fmul double %i.ts, %i.uw
  %i.vf = call double @llvm.fmuladd.f64(double %i.ve, double %i.tw, double %i.vd)
  %i.vg = fdiv double %i.vf, %i.tz
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %indvars.iv485
  store double %i.vg, ptr %i.vh, align 8, !tbaa !112
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %exitcond489.not = icmp eq i64 %indvars.iv.next486, %indvars.iv490
  br i1 %exitcond489.not, label %.split423.us, label %.split.us, !llvm.loop !142

.split:                                           ; preds = %.split.preheader657, %.split
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %.split ], [ %indvars.iv478.ph, %.split.preheader657 ] ; 5 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %indvars.iv478
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !112 ; 2 uses
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %indvars.iv478
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !112
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv478
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !112
  %i.vo = call double @llvm.fmuladd.f64(double %i.tv, double %i.vn, double %i.vl)
  %i.vp = fneg double %i.vj
  %i.vq = call double @llvm.fmuladd.f64(double %i.vp, double %i.tq, double %i.vo)
  %i.vr = fmul double %i.ts, %i.vj
  %i.vs = call double @llvm.fmuladd.f64(double %i.vr, double %i.tw, double %i.vq)
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %indvars.iv478
  store double %i.vs, ptr %i.vt, align 8, !tbaa !112
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next479, %indvars.iv490
  br i1 %exitcond484.not, label %.split423.us, label %.split, !llvm.loop !143

.split423.us:                                     ; preds = %.split, %.split.us, %middle.block653, %middle.block616
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 2 uses
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1
  %exitcond498.not = icmp eq i64 %indvars.iv.next493, %wide.trip.count497
  br i1 %exitcond498.not, label %._crit_edge427, label %bb.eb, !llvm.loop !144

._crit_edge427:                                   ; preds = %.split423.us, %._crit_edge420
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  store i64 0, ptr %i.pe, align 8
  store i32 50397184, ptr %32, align 8, !tbaa !102
  store ptr %29, ptr %i.pd, align 8, !tbaa !104
  invoke void @_ZN2cv12completeSymmERKNS_17_InputOutputArrayEb(ptr noundef nonnull align 8 dereferenceable(24) %32, i1 noundef zeroext true)
          to label %bb.ec unwind label %bb.eh

bb.ec:                                            ; preds = %._crit_edge427
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  store i32 0, ptr %i.pf, align 8, !tbaa !99
  store i32 0, ptr %i.pg, align 4, !tbaa !101
  store i32 16842752, ptr %33, align 8, !tbaa !102
  store ptr %29, ptr %i.ph, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  store i64 0, ptr %i.pj, align 8
  store i32 33619968, ptr %34, align 8, !tbaa !102
  store ptr %i.qr, ptr %i.pi, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
end_hunk_0
