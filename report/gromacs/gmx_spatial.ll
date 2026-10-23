Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_spatial?download=true
inline.NumInlined: 201
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z11gmx_spatialiPPc:bb.a
  br i1 %i.ma, label %bb.as, label %.split.us

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count540
  br i1 %exitcond541.not, label %..loopexit_crit_edge.us.us, label %bb.aq, !llvm.loop !25

..loopexit_crit_edge.us.us:                       ; preds = %bb.as, %.lr.ph445.split.us.us
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %exitcond546.not = icmp eq i64 %indvars.iv.next543, %wide.trip.count545
  br i1 %exitcond546.not, label %..loopexit386_crit_edge.us, label %.lr.ph445.split.us.us, !llvm.loop !26

..loopexit386_crit_edge.us:                       ; preds = %..loopexit_crit_edge.us.us, %.preheader385.us, %.lr.ph452.split.us
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count550
  br i1 %exitcond551.not, label %.preheader383, label %.lr.ph452.split.us, !llvm.loop !27

bb.at:                                            ; preds = %bb.am
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.an
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn242 = phi { ptr, i32 } [ %i.mc, %bb.au ], [ %i.mb, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.body

bb.aw:                                            ; preds = %.lr.ph440, %bb.aw
  %indvars.iv534 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next535, %bb.aw ] ; 2 uses
  %i.md = load ptr, ptr %i.kz, align 8, !tbaa !86
  %i.me = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv534
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !38
  %i.mh = sext i32 %i.mg to i64                   ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !87
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !12
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !18  ; 5 uses
  %i.mm = icmp eq i8 %i.ml, 67
  %spec.select261 = select i1 %i.mm, i32 6, i32 2
  %i.mn = icmp eq i8 %i.ml, 78
  %.1216 = select i1 %i.mn, i32 7, i32 %spec.select261
  %i.mo = icmp eq i8 %i.ml, 79
  %.2217 = select i1 %i.mo, i32 8, i32 %.1216
  %i.mp = icmp eq i8 %i.ml, 72
  %.3218 = select i1 %i.mp, i32 1, i32 %.2217
  %i.mq = icmp eq i8 %i.ml, 83
  %.4219 = select i1 %i.mq, i32 16, i32 %.3218
  %i.mr = load ptr, ptr %i.bd, align 8, !tbaa !60
  %i.ms = getelementptr inbounds [12 x i8], ptr %i.mr, i64 %i.mh ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !61
  %i.mu = fpext float %i.mt to double
  %i.mv = fmul double %i.mu, 1.000000e+01
  %i.mw = fdiv double %i.mv, f0x3FE0EF052047C080
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.my = load <2 x float>, ptr %i.mx, align 4, !tbaa !61
  %i.mz = fpext <2 x float> %i.my to <2 x double>
  %i.na = fmul <2 x double> %i.mz, splat (double 1.000000e+01)
  %i.nb = fdiv <2 x double> %i.na, splat (double f0x3FE0EF052047C080) ; 2 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 0
  %i.nd = extractelement <2 x double> %i.nb, i64 1
  %i.ne = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iz, ptr noundef nonnull @.str.67, i32 noundef %.4219, double noundef 0.000000e+00, double noundef %i.mw, double noundef %i.nc, double noundef %i.nd) #15 ; 0 uses
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %i.nf = load i32, ptr %i.n, align 4, !tbaa !38
  %i.ng = sext i32 %i.nf to i64
  %i.nh = icmp slt i64 %indvars.iv.next535, %i.ng
  br i1 %i.nh, label %bb.aw, label %.preheader387, !llvm.loop !28

.preheader383:                                    ; preds = %..loopexit386_crit_edge.us, %.lr.ph452, %.preheader387
  %i.ni = icmp slt i32 %i.it, %i.ix               ; 2 uses
  %i.nj = icmp slt <2 x i32> %i.iw, %i.iy         ; 2 uses
  %i.nk = extractelement <2 x i1> %i.nj, i64 0
  %or.cond658 = select i1 %i.ni, i1 %i.nk, i1 false
  %i.nl = extractelement <2 x i1> %i.nj, i64 1
  %or.cond659 = select i1 %or.cond658, i1 %i.nl, i1 false
  br i1 %or.cond659, label %.preheader382.us.us.preheader, label %._crit_edge485

.preheader382.us.us.preheader:                    ; preds = %.preheader383
  %i.nm = sext i32 %i.kq to i64                   ; 7 uses
  %i.nn = sext i32 %i.kp to i64                   ; 2 uses
  %i.no = sext i32 %i.ki to i64
  %i.np = sext i32 %i.kh to i64
  %i.nq = sext i32 %i.it to i64
  %i.nr = sext i32 %i.ix to i64
  %i.ns = add nsw i64 %i.nm, 1
  %smax = call i64 @llvm.smax.i64(i64 %i.nn, i64 %i.ns)
  %i.nt = sub i64 %smax, %i.nm                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.nt, 4
  %min.iters.check668 = icmp ult i64 %i.nt, 16
  %i.nu = and i64 %i.nt, 12
  %n.vec = and i64 %i.nt, -16                     ; 4 uses
  %i.nv = add i64 %n.vec, %i.nm
  %cmp.n = icmp eq i64 %i.nt, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.nu, 0
  %n.vec694 = and i64 %i.nt, -4                   ; 3 uses
  %i.nw = add i64 %n.vec694, %i.nm
  %cmp.n705 = icmp eq i64 %i.nt, %n.vec694
  br label %.preheader382.us.us

.preheader382.us.us:                              ; preds = %.preheader382.us.us.preheader, %._crit_edge475.split.us.us.us
  %indvars.iv558 = phi i64 [ %i.nq, %.preheader382.us.us.preheader ], [ %indvars.iv.next559, %._crit_edge475.split.us.us.us ] ; 2 uses
  %.0179483.us.us = phi i64 [ 0, %.preheader382.us.us.preheader ], [ %.lcssa, %._crit_edge475.split.us.us.us ]
  %.0182482.us.us = phi i32 [ 999, %.preheader382.us.us.preheader ], [ %.3185.us.us.us.lcssa, %._crit_edge475.split.us.us.us ]
  %.0186481.us.us = phi i32 [ 0, %.preheader382.us.us.preheader ], [ %spec.select265.us.us.us.lcssa, %._crit_edge475.split.us.us.us ]
  %i.nx = mul nsw i64 %i.fl, %indvars.iv558
  %i.ny = getelementptr inbounds [4 x i8], ptr %.sroa.0359.0, i64 %i.nx
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge467.us.us.us, %.preheader382.us.us
  %indvars.iv555 = phi i64 [ %indvars.iv.next556, %._crit_edge467.us.us.us ], [ %i.no, %.preheader382.us.us ] ; 2 uses
  %.1180473.us.us.us = phi i64 [ %.lcssa, %._crit_edge467.us.us.us ], [ %.0179483.us.us, %.preheader382.us.us ] ; 3 uses
  %.1183472.us.us.us = phi i32 [ %.3185.us.us.us.lcssa, %._crit_edge467.us.us.us ], [ %.0182482.us.us, %.preheader382.us.us ] ; 3 uses
  %.1187471.us.us.us = phi i32 [ %spec.select265.us.us.us.lcssa, %._crit_edge467.us.us.us ], [ %.0186481.us.us, %.preheader382.us.us ] ; 3 uses
  %i.nz = mul nsw i64 %indvars.iv555, %i.fa
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.ny, i64 %i.nz ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check668, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ob = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.1180473.us.us.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1183472.us.us.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert669 = insertelement <4 x i32> poison, i32 %.1187471.us.us.us, i64 0
  %broadcast.splat670 = shufflevector <4 x i32> %broadcast.splatinsert669, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.oa, i64 %i.nm
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.ob, %vector.ph ], [ %i.oj, %vector.body ]
  %vec.phi671 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ok, %vector.body ]
  %vec.phi672 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ol, %vector.body ]
  %vec.phi673 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.om, %vector.body ]
  %vec.phi674 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.or, %vector.body ]
  %vec.phi675 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.os, %vector.body ]
  %vec.phi676 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ot, %vector.body ]
  %vec.phi677 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ou, %vector.body ]
  %vec.phi678 = phi <4 x i32> [ %broadcast.splat670, %vector.ph ], [ %i.on, %vector.body ]
  %vec.phi679 = phi <4 x i32> [ %broadcast.splat670, %vector.ph ], [ %i.oo, %vector.body ]
  %vec.phi680 = phi <4 x i32> [ %broadcast.splat670, %vector.ph ], [ %i.op, %vector.body ]
  %vec.phi681 = phi <4 x i32> [ %broadcast.splat670, %vector.ph ], [ %i.oq, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.oe = getelementptr inbounds nuw i8, ptr %gep, i64 48
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !38 ; 3 uses
  %wide.load682 = load <4 x i32>, ptr %i.oc, align 4, !tbaa !38 ; 3 uses
  %wide.load683 = load <4 x i32>, ptr %i.od, align 4, !tbaa !38 ; 3 uses
  %wide.load684 = load <4 x i32>, ptr %i.oe, align 4, !tbaa !38 ; 3 uses
  %i.of = sext <4 x i32> %wide.load to <4 x i64>
  %i.og = sext <4 x i32> %wide.load682 to <4 x i64>
  %i.oh = sext <4 x i32> %wide.load683 to <4 x i64>
  %i.oi = sext <4 x i32> %wide.load684 to <4 x i64>
  %i.oj = add <4 x i64> %vec.phi, %i.of           ; 2 uses
  %i.ok = add <4 x i64> %vec.phi671, %i.og        ; 2 uses
  %i.ol = add <4 x i64> %vec.phi672, %i.oh        ; 2 uses
  %i.om = add <4 x i64> %vec.phi673, %i.oi        ; 2 uses
  %i.on = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi678) ; 2 uses
  %i.oo = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load682, <4 x i32> %vec.phi679) ; 2 uses
  %i.op = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load683, <4 x i32> %vec.phi680) ; 2 uses
  %i.oq = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load684, <4 x i32> %vec.phi681) ; 2 uses
  %i.or = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi674) ; 2 uses
  %i.os = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load682, <4 x i32> %vec.phi675) ; 2 uses
  %i.ot = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load683, <4 x i32> %vec.phi676) ; 2 uses
  %i.ou = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load684, <4 x i32> %vec.phi677) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ov = icmp eq i64 %index.next, %n.vec
  br i1 %i.ov, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.ok, %i.oj
  %bin.rdx685 = add <4 x i64> %i.ol, %bin.rdx
  %bin.rdx686 = add <4 x i64> %i.om, %bin.rdx685
  %i.ow = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx686) ; 3 uses
  %rdx.minmax = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.or, <4 x i32> %i.os)
  %rdx.minmax687 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax, <4 x i32> %i.ot)
  %rdx.minmax688 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %rdx.minmax687, <4 x i32> %i.ou)
  %i.ox = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax688) ; 3 uses
  %rdx.minmax689 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.on, <4 x i32> %i.oo)
  %rdx.minmax690 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %rdx.minmax689, <4 x i32> %i.op)
  %rdx.minmax691 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %rdx.minmax690, <4 x i32> %i.oq)
  %i.oy = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax691) ; 3 uses
  br i1 %cmp.n, label %._crit_edge467.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ow, %vec.epilog.iter.check ], [ %.1180473.us.us.us, %vector.main.loop.iter.check ]
  %bc.merge.rdx692 = phi i32 [ %i.ox, %vec.epilog.iter.check ], [ %.1183472.us.us.us, %vector.main.loop.iter.check ]
  %bc.merge.rdx693 = phi i32 [ %i.oy, %vec.epilog.iter.check ], [ %.1187471.us.us.us, %vector.main.loop.iter.check ]
  %11 = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert695 = insertelement <4 x i32> poison, i32 %bc.merge.rdx692, i64 0
  %broadcast.splat696 = shufflevector <4 x i32> %broadcast.splatinsert695, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert697 = insertelement <4 x i32> poison, i32 %bc.merge.rdx693, i64 0
  %broadcast.splat698 = shufflevector <4 x i32> %broadcast.splatinsert697, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep780 = getelementptr [4 x i8], ptr %i.oa, i64 %i.nm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index699 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next704, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi700 = phi <4 x i64> [ %11, %vec.epilog.ph ], [ %i.pa, %vec.epilog.vector.body ]
  %vec.phi701 = phi <4 x i32> [ %broadcast.splat696, %vec.epilog.ph ], [ %i.pc, %vec.epilog.vector.body ]
  %vec.phi702 = phi <4 x i32> [ %broadcast.splat698, %vec.epilog.ph ], [ %i.pb, %vec.epilog.vector.body ]
  %gep781 = getelementptr [4 x i8], ptr %invariant.gep780, i64 %index699
  %wide.load703 = load <4 x i32>, ptr %gep781, align 4, !tbaa !38 ; 3 uses
  %i.oz = sext <4 x i32> %wide.load703 to <4 x i64>
  %i.pa = add <4 x i64> %vec.phi700, %i.oz        ; 2 uses
  %i.pb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load703, <4 x i32> %vec.phi702) ; 2 uses
  %i.pc = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load703, <4 x i32> %vec.phi701) ; 2 uses
  %index.next704 = add nuw i64 %index699, 4       ; 2 uses
  %i.pd = icmp eq i64 %index.next704, %n.vec694
  br i1 %i.pd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.pe = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.pa) ; 2 uses
  %i.pf = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.pc) ; 2 uses
  %i.pg = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.pb) ; 2 uses
  br i1 %cmp.n705, label %._crit_edge467.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv552.ph = phi i64 [ %i.nm, %iter.check ], [ %i.nv, %vec.epilog.iter.check ], [ %i.nw, %vec.epilog.middle.block ]
  %.2181465.us.us.us.ph = phi i64 [ %.1180473.us.us.us, %iter.check ], [ %i.ow, %vec.epilog.iter.check ], [ %i.pe, %vec.epilog.middle.block ]
  %.2184464.us.us.us.ph = phi i32 [ %.1183472.us.us.us, %iter.check ], [ %i.ox, %vec.epilog.iter.check ], [ %i.pf, %vec.epilog.middle.block ]
  %.2188463.us.us.us.ph = phi i32 [ %.1187471.us.us.us, %iter.check ], [ %i.oy, %vec.epilog.iter.check ], [ %i.pg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv552 = phi i64 [ %indvars.iv.next553, %vec.epilog.scalar.ph ], [ %indvars.iv552.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.2181465.us.us.us = phi i64 [ %i.pk, %vec.epilog.scalar.ph ], [ %.2181465.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.2184464.us.us.us = phi i32 [ %.3185.us.us.us, %vec.epilog.scalar.ph ], [ %.2184464.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.2188463.us.us.us = phi i32 [ %spec.select265.us.us.us, %vec.epilog.scalar.ph ], [ %.2188463.us.us.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %indvars.iv552
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !38 ; 3 uses
  %i.pj = sext i32 %i.pi to i64
  %i.pk = add nsw i64 %.2181465.us.us.us, %i.pj   ; 2 uses
  %spec.select265.us.us.us = call i32 @llvm.smax.i32(i32 %i.pi, i32 %.2188463.us.us.us) ; 2 uses
  %.3185.us.us.us = call i32 @llvm.smin.i32(i32 %i.pi, i32 %.2184464.us.us.us) ; 2 uses
  %indvars.iv.next553 = add nsw i64 %indvars.iv552, 1 ; 2 uses
  %i.pl = icmp slt i64 %indvars.iv.next553, %i.nn
  br i1 %i.pl, label %vec.epilog.scalar.ph, label %._crit_edge467.us.us.us, !llvm.loop !31

._crit_edge467.us.us.us:                          ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i64 [ %i.pe, %vec.epilog.middle.block ], [ %i.ow, %middle.block ], [ %i.pk, %vec.epilog.scalar.ph ] ; 3 uses
  %spec.select265.us.us.us.lcssa = phi i32 [ %i.pg, %vec.epilog.middle.block ], [ %i.oy, %middle.block ], [ %spec.select265.us.us.us, %vec.epilog.scalar.ph ] ; 3 uses
  %.3185.us.us.us.lcssa = phi i32 [ %i.pf, %vec.epilog.middle.block ], [ %i.ox, %middle.block ], [ %.3185.us.us.us, %vec.epilog.scalar.ph ] ; 3 uses
  %indvars.iv.next556 = add nsw i64 %indvars.iv555, 1 ; 2 uses
  %i.pm = icmp slt i64 %indvars.iv.next556, %i.np
  br i1 %i.pm, label %iter.check, label %._crit_edge475.split.us.us.us, !llvm.loop !32

._crit_edge475.split.us.us.us:                    ; preds = %._crit_edge467.us.us.us
  %indvars.iv.next559 = add nsw i64 %indvars.iv558, 1 ; 2 uses
  %i.pn = icmp slt i64 %indvars.iv.next559, %i.nr
  br i1 %i.pn, label %.preheader382.us.us, label %._crit_edge485.loopexit, !llvm.loop !33

.split.us:                                        ; preds = %bb.ar
  %i.po = trunc nuw nsw i64 %indvars.iv547 to i32
  %i.pp = trunc nuw nsw i64 %indvars.iv542 to i32
  %i.pq = trunc nuw nsw i64 %indvars.iv537 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.77, i32 noundef %i.po, i32 noundef %i.pp, i32 noundef %i.pq, i32 noundef %i.lz)
          to label %.noexc283 unwind label %bb.az

.noexc283:                                        ; preds = %.split.us
  %i.pr = load ptr, ptr %2, align 8, !tbaa !17
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.76, ptr noundef %i.pr, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ11gmx_spatialiPPcENK3$_0clEv", ptr noundef nonnull @.str.56, i32 noundef 422) #17
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.noexc283
  unreachable

bb.ay:                                            ; preds = %.noexc283
  %i.ps = landingpad { ptr, i32 }
          cleanup
  %i.pt = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281: ; preds = %bb.ay
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !18
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.body.thread

bb.az:                                            ; preds = %.split.us
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

._crit_edge485.loopexit:                          ; preds = %._crit_edge475.split.us.us.us
  %i.pz = sitofp i64 %.lcssa to double            ; 2 uses
  %i.qa = sitofp i32 %.3185.us.us.us.lcssa to double ; 2 uses
  %i.qb = uitofp nneg i32 %spec.select265.us.us.us.lcssa to double
  %i.qc = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.qd = insertelement <2 x double> %i.qc, double %i.qa, i64 1
  br label %._crit_edge485

._crit_edge485:                                   ; preds = %._crit_edge485.loopexit, %.preheader383
  %.0186.lcssa = phi double [ 0.000000e+00, %.preheader383 ], [ %i.qb, %._crit_edge485.loopexit ] ; 2 uses
  %.0182.lcssa = phi double [ 9.990000e+02, %.preheader383 ], [ %i.qa, %._crit_edge485.loopexit ]
  %.0179.lcssa = phi double [ 0.000000e+00, %.preheader383 ], [ %i.pz, %._crit_edge485.loopexit ]
  %i.qe = phi <2 x double> [ <double 0.000000e+00, double 9.990000e+02>, %.preheader383 ], [ %i.qd, %._crit_edge485.loopexit ]
  %i.qf = mul nsw i32 %i.kb, %i.kj
  %i.qg = mul nsw i32 %i.qf, %i.kr                ; 4 uses
  %i.qh = load i8, ptr @_ZZ11gmx_spatialiPPcE8bCALCDIV, align 1, !tbaa !79, !range !80, !noundef !81
  %i.qi = trunc nuw i8 %i.qh to i1
  %i.qj = sitofp i32 %i.qg to double
  %i.qk = uitofp nneg i32 %i.ip to double
  %i.ql = fmul nnan double %i.qk, %i.qj
  %i.qm = fdiv double %i.ql, %.0179.lcssa
  %.0178 = select i1 %i.qi, double %i.qm, double 1.000000e+00 ; 4 uses
  br i1 %i.ni, label %.preheader380.lr.ph, label %._crit_edge504

.preheader380.lr.ph:                              ; preds = %._crit_edge485
  %i.qn = icmp slt <2 x i32> %i.iw, %i.iy         ; 2 uses
  %i.qo = uitofp nneg i32 %i.ip to double
  %i.qp = extractelement <2 x i1> %i.qn, i64 0
  br i1 %i.qp, label %.preheader380.us.preheader, label %.preheader380

.preheader380.us.preheader:                       ; preds = %.preheader380.lr.ph
  %i.qq = sext i32 %i.kq to i64
  %i.qr = sext i32 %i.kp to i64
  %i.qs = sext i32 %i.ki to i64
  %i.qt = sext i32 %i.kh to i64
  %i.qu = sext i32 %i.it to i64
  %i.qv = sext i32 %i.ix to i64
  %i.qw = extractelement <2 x i1> %i.qn, i64 1
  br label %.preheader380.us

.preheader380.us:                                 ; preds = %.preheader380.us.preheader, %._crit_edge502.us
  %indvars.iv567 = phi i64 [ %i.qu, %.preheader380.us.preheader ], [ %indvars.iv.next568, %._crit_edge502.us ] ; 2 uses
  %i.qx = mul nsw i64 %i.fl, %indvars.iv567
  %i.qy = getelementptr inbounds [4 x i8], ptr %.sroa.0359.0, i64 %i.qx
  br i1 %i.qw, label %.preheader.us.us, label %.preheader.us506

.preheader.us506:                                 ; preds = %.preheader380.us, %.preheader.us506
  %.0501.us507 = phi i32 [ %i.qz, %.preheader.us506 ], [ %i.ki, %.preheader380.us ]
  %fputc248.us508 = call i32 @fputc(i32 10, ptr %i.iz) ; 0 uses
  %i.qz = add nsw i32 %.0501.us507, 1             ; 2 uses
  %i.ra = icmp slt i32 %i.qz, %i.kh
  br i1 %i.ra, label %.preheader.us506, label %._crit_edge502.us, !llvm.loop !34

.preheader.us.us:                                 ; preds = %.preheader380.us, %._crit_edge500.us.us
  %indvars.iv564 = phi i64 [ %indvars.iv.next565, %._crit_edge500.us.us ], [ %i.qs, %.preheader380.us ] ; 2 uses
  %i.rb = mul nsw i64 %indvars.iv564, %i.fa
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.qy, i64 %i.rb
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader.us.us
  %indvars.iv561 = phi i64 [ %indvars.iv.next562, %bb.ba ], [ %i.qq, %.preheader.us.us ] ; 2 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %indvars.iv561
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !38
  %i.rf = sitofp i32 %i.re to double
  %i.rg = fmul double %.0178, %i.rf
  %i.rh = fdiv double %i.rg, %i.qo
  %i.ri = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iz, ptr noundef nonnull @.str.68, double noundef %i.rh) #15 ; 0 uses
  %indvars.iv.next562 = add nsw i64 %indvars.iv561, 1 ; 2 uses
  %i.rj = icmp slt i64 %indvars.iv.next562, %i.qr
  br i1 %i.rj, label %bb.ba, label %._crit_edge500.us.us, !llvm.loop !35

._crit_edge500.us.us:                             ; preds = %bb.ba
  %fputc248.us.us = call i32 @fputc(i32 10, ptr %i.iz) ; 0 uses
  %indvars.iv.next565 = add nsw i64 %indvars.iv564, 1 ; 2 uses
  %i.rk = icmp slt i64 %indvars.iv.next565, %i.qt
  br i1 %i.rk, label %.preheader.us.us, label %._crit_edge502.us, !llvm.loop !34

._crit_edge502.us:                                ; preds = %.preheader.us506, %._crit_edge500.us.us
  %fputc.us = call i32 @fputc(i32 10, ptr %i.iz)  ; 0 uses
  %indvars.iv.next568 = add nsw i64 %indvars.iv567, 1 ; 2 uses
  %i.rl = icmp slt i64 %indvars.iv.next568, %i.qv
  br i1 %i.rl, label %.preheader380.us, label %._crit_edge504, !llvm.loop !36

.preheader380:                                    ; preds = %.preheader380.lr.ph, %.preheader380
  %.0162503 = phi i32 [ %i.rm, %.preheader380 ], [ %i.it, %.preheader380.lr.ph ]
  %fputc = call i32 @fputc(i32 10, ptr %i.iz)     ; 0 uses
  %i.rm = add nsw i32 %.0162503, 1                ; 2 uses
  %i.rn = icmp slt i32 %i.rm, %i.ix
  br i1 %i.rn, label %.preheader380, label %._crit_edge504, !llvm.loop !36

._crit_edge504:                                   ; preds = %.preheader380, %._crit_edge502.us, %._crit_edge485
  %i.ro = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.iz)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bb:                                            ; preds = %._crit_edge504
  %i.rp = load i8, ptr @_ZZ11gmx_spatialiPPcE8bCALCDIV, align 1, !tbaa !79, !range !80, !noundef !81
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.rr = fdiv double 1.000000e+00, %.0178
  %i.rs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %i.qg, double noundef %i.rr) ; 0 uses
  %i.rt = fmul double %.0178, %.0182.lcssa
  %i.ru = uitofp nneg i32 %i.ip to double         ; 2 uses
  %i.rv = fdiv double %i.rt, %i.ru
  %i.rw = fmul double %.0178, %.0186.lcssa
  %i.rx = fdiv double %i.rw, %i.ru
  %i.ry = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, double noundef 1.000000e+00, double noundef %i.rv, double noundef %i.rx) ; 0 uses
  br label %bb.be

end_hunk_0
