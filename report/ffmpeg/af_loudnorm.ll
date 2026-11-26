Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_loudnorm?download=true
inline.NumInlined: 17
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@filter_frame:bb.a
.preheader363.preheader:                          ; preds = %.preheader363.lr.ph
  %i.cx = mul i32 %i.cq, %i.ct
  %i.cy = add i32 %.promoted444, %i.cx
  br label %._crit_edge443

.preheader363.us.preheader:                       ; preds = %.preheader363.lr.ph
  %i.cz = sext i32 %.promoted444 to i64           ; 2 uses
  %wide.trip.count510 = zext nneg i32 %i.ct to i64 ; 5 uses
  %i.da = shl nsw i64 %i.cz, 3
  %i.db = add i64 %i.da, %i.ac
  %min.iters.check735 = icmp ult i32 %i.ct, 4
  %i.dc = sub i64 %i.y, %i.db
  %diff.check = icmp ugt i64 %i.dc, -32
  %or.cond832 = select i1 %min.iters.check735, i1 true, i1 %diff.check
  %n.vec738 = and i64 %wide.trip.count510, 2147483644 ; 3 uses
  %cmp.n745 = icmp eq i64 %n.vec738, %wide.trip.count510
  %xtraiter853 = and i64 %wide.trip.count510, 3   ; 2 uses
  %lcmp.mod854.not = icmp eq i64 %xtraiter853, 0
  br label %.preheader363.us

.preheader363.us:                                 ; preds = %.preheader363.us.preheader, %._crit_edge439.us
  %indvars.iv512 = phi i64 [ %i.cz, %.preheader363.us.preheader ], [ %indvars.iv.next513, %._crit_edge439.us ] ; 2 uses
  %.0294442.us = phi i32 [ 0, %.preheader363.us.preheader ], [ %i.eb, %._crit_edge439.us ]
  %.0304441.us = phi ptr [ %i.x, %.preheader363.us.preheader ], [ %i.ea, %._crit_edge439.us ] ; 7 uses
  %i.dd = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv512 ; 6 uses
  br i1 %or.cond832, label %scalar.ph734.preheader, label %vector.body739

vector.body739:                                   ; preds = %.preheader363.us, %vector.body739
  %index740 = phi i64 [ %index.next743, %vector.body739 ], [ 0, %.preheader363.us ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %index740 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load741 = load <2 x double>, ptr %i.de, align 8, !tbaa !38
  %wide.load742 = load <2 x double>, ptr %i.df, align 8, !tbaa !38
  %i.dg = getelementptr [8 x i8], ptr %i.dd, i64 %index740 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store <2 x double> %wide.load741, ptr %i.dg, align 8, !tbaa !38
  store <2 x double> %wide.load742, ptr %i.dh, align 8, !tbaa !38
  %index.next743 = add nuw i64 %index740, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next743, %n.vec738
  br i1 %i.di, label %middle.block744, label %vector.body739, !llvm.loop !95

middle.block744:                                  ; preds = %vector.body739
  br i1 %cmp.n745, label %._crit_edge439.us, label %scalar.ph734.preheader

scalar.ph734.preheader:                           ; preds = %.preheader363.us, %middle.block744
  %indvars.iv507.ph = phi i64 [ 0, %.preheader363.us ], [ %n.vec738, %middle.block744 ] ; 3 uses
  br i1 %lcmp.mod854.not, label %scalar.ph734.prol.loopexit, label %scalar.ph734.prol

scalar.ph734.prol:                                ; preds = %scalar.ph734.preheader, %scalar.ph734.prol
  %indvars.iv507.prol = phi i64 [ %indvars.iv.next508.prol, %scalar.ph734.prol ], [ %indvars.iv507.ph, %scalar.ph734.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph734.prol ], [ 0, %scalar.ph734.preheader ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv507.prol
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !38
  %i.dl = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv507.prol
  store double %i.dk, ptr %i.dl, align 8, !tbaa !38
  %indvars.iv.next508.prol = add nuw nsw i64 %indvars.iv507.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter853
  br i1 %prol.iter.cmp.not, label %scalar.ph734.prol.loopexit, label %scalar.ph734.prol, !llvm.loop !96

scalar.ph734.prol.loopexit:                       ; preds = %scalar.ph734.prol, %scalar.ph734.preheader
  %indvars.iv507.unr = phi i64 [ %indvars.iv507.ph, %scalar.ph734.preheader ], [ %indvars.iv.next508.prol, %scalar.ph734.prol ]
  %i.dm = sub nsw i64 %indvars.iv507.ph, %wide.trip.count510
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge439.us, label %scalar.ph734

scalar.ph734:                                     ; preds = %scalar.ph734.prol.loopexit, %scalar.ph734
  %indvars.iv507 = phi i64 [ %indvars.iv.next508.3, %scalar.ph734 ], [ %indvars.iv507.unr, %scalar.ph734.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv507
  %i.dp = load double, ptr %i.do, align 8, !tbaa !38
  %i.dq = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv507
  store double %i.dp, ptr %i.dq, align 8, !tbaa !38
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv.next508
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !38
  %i.dt = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next508
  store double %i.ds, ptr %i.dt, align 8, !tbaa !38
  %indvars.iv.next508.1 = add nuw nsw i64 %indvars.iv507, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv.next508.1
  %i.dv = load double, ptr %i.du, align 8, !tbaa !38
  %i.dw = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next508.1
  store double %i.dv, ptr %i.dw, align 8, !tbaa !38
  %indvars.iv.next508.2 = add nuw nsw i64 %indvars.iv507, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv.next508.2
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !38
  %i.dz = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next508.2
  store double %i.dy, ptr %i.dz, align 8, !tbaa !38
  %indvars.iv.next508.3 = add nuw nsw i64 %indvars.iv507, 4 ; 2 uses
  %exitcond511.not.3 = icmp eq i64 %indvars.iv.next508.3, %wide.trip.count510
  br i1 %exitcond511.not.3, label %._crit_edge439.us, label %scalar.ph734, !llvm.loop !97

._crit_edge439.us:                                ; preds = %scalar.ph734.prol.loopexit, %scalar.ph734, %middle.block744
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %i.cv
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, %i.cv ; 2 uses
  %i.eb = add nuw nsw i32 %.0294442.us, 1         ; 2 uses
  %exitcond515.not = icmp eq i32 %i.eb, %i.cq
  br i1 %exitcond515.not, label %._crit_edge443.loopexit, label %.preheader363.us, !llvm.loop !98

._crit_edge443.loopexit:                          ; preds = %._crit_edge439.us
  %i.ec = trunc nsw i64 %indvars.iv.next513 to i32
  br label %._crit_edge443

._crit_edge443:                                   ; preds = %.preheader363.preheader, %._crit_edge443.loopexit
  %.us-phi446 = phi i32 [ %i.ec, %._crit_edge443.loopexit ], [ %i.cy, %.preheader363.preheader ]
  store i32 %.us-phi446, ptr %i.cw, align 4, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge443, %.preheader364
  %i.ed = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ee = call i32 @ff_ebur128_loudness_shortterm(ptr noundef %i.ed, ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.ef = load double, ptr %i.c, align 8, !tbaa !38 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !29
  %i.ei = fcmp nsz olt double %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 852 ; 2 uses
  %i.ek = fcmp nsz ugt double %i.ef, -7.000000e+01 ; 2 uses
  br i1 %i.ei, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ej, align 4, !tbaa !141
  br i1 %i.ek, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.eo = load double, ptr %i.en, align 8, !tbaa !28
  %i.ep = fsub nsz double %i.em, %i.eo
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  store i32 1, ptr %i.ej, align 4, !tbaa !141
  br i1 %i.ek, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.er = load double, ptr %i.eq, align 8, !tbaa !27
  %i.es = fsub nsz double %i.er, %i.ef
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.0287 = phi nsz double [ 0.000000e+00, %bb.i ], [ %i.ep, %bb.j ], [ %i.es, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.et = fdiv nsz double %.0287, 2.000000e+01
  %i.eu = call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.et) ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.ew = insertelement <4 x double> poison, double %i.eu, i64 0
  %i.ex = shufflevector <4 x double> %i.ew, <4 x double> poison, <4 x i32> zeroinitializer ; 7 uses
  store <4 x double> %i.ex, ptr %i.ev, align 8, !tbaa !38
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store <4 x double> %i.ex, ptr %i.ey, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store <4 x double> %i.ex, ptr %i.ez, align 8, !tbaa !38
  %i.fa = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  store <4 x double> %i.ex, ptr %i.fa, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  store <4 x double> %i.ex, ptr %i.fb, align 8, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  store <4 x double> %i.ex, ptr %i.fc, align 8, !tbaa !38
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  store <4 x double> %i.ex, ptr %i.fd, align 8, !tbaa !38
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 344
  store double %i.eu, ptr %i.fe, align 8, !tbaa !38
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store double %i.eu, ptr %i.ff, align 8, !tbaa !38
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 536
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !75
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fi ; 6 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  store double %i.fk, ptr %i.fl, align 8, !tbaa !142
  %i.fm = getelementptr inbounds nuw i8, ptr %i.k, i64 576 ; 2 uses
  store i32 0, ptr %i.fm, align 8, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 108 ; 2 uses
  store i32 0, ptr %i.fn, align 4, !tbaa !66
  %i.fo = getelementptr inbounds nuw i8, ptr %i.k, i64 580
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !65 ; 13 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !61 ; 13 uses
  %i.fs = sdiv i32 %i.fp, %i.fr                   ; 7 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.preheader.lr.ph, label %bb.n

.preheader.lr.ph:                                 ; preds = %bb.m
  %i.fu = icmp sgt i32 %i.fr, 0
  %i.fv = getelementptr i8, ptr %i.k, i64 64      ; 5 uses
  br i1 %i.fu, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter855 = and i32 %i.fs, 3                 ; 3 uses
  %i.fw = icmp ult i32 %i.fs, 4
  br i1 %i.fw, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter860 = and i32 %i.fs, 2147483644
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.fx = zext nneg i32 %i.fr to i64
  %wide.trip.count524 = zext nneg i32 %i.fr to i64 ; 7 uses
  %scevgep764 = getelementptr i8, ptr %i.k, i64 72
  %2 = shl nsw i64 %i.fi, 3
  %scevgep764.a = getelementptr i8, ptr %i.k, i64 %2
  %scevgep765 = getelementptr i8, ptr %scevgep764.a, i64 128
  %i.fy = add nsw i32 %i.fs, -1
  %i.fz = zext i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = add nuw nsw i64 %i.ga, 8
  %i.gc = mul i64 %i.gb, %wide.trip.count524
  %scevgep766 = getelementptr i8, ptr %i.ab, i64 %i.gc
  %i.gd = shl nuw nsw i64 %wide.trip.count524, 3
  %scevgep767 = getelementptr i8, ptr %i.ae, i64 %i.gd
  %min.iters.check769 = icmp ult i32 %i.fr, 6
  %n.vec783 = and i64 %wide.trip.count524, 2147483644 ; 3 uses
  %cmp.n794 = icmp eq i64 %n.vec783, %wide.trip.count524
  %xtraiter862 = and i64 %wide.trip.count524, 1
  %lcmp.mod863.not = icmp eq i64 %xtraiter862, 0
  %i.ge = add nsw i64 %wide.trip.count524, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge450.us
  %indvars.iv526 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next527, %._crit_edge450.us ] ; 2 uses
  %spec.select360455.us = phi i32 [ 0, %.preheader.us.preheader ], [ %spec.select360.us, %._crit_edge450.us ] ; 2 uses
  %.2296451.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.hp, %._crit_edge450.us ]
  %i.gf = sext i32 %spec.select360455.us to i64   ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv526 ; 4 uses
  %invariant.gep582 = getelementptr [8 x i8], ptr %i.ae, i64 %i.gf ; 7 uses
  br i1 %min.iters.check769, label %scalar.ph768.preheader, label %vector.memcheck770

vector.memcheck770:                               ; preds = %.preheader.us
  %i.gh = shl nsw i64 %i.gf, 3
  %i.gi = getelementptr i8, ptr %scevgep767, i64 %i.gh ; 3 uses
  %bound0771 = icmp ult ptr %invariant.gep582, %scevgep766
  %bound1772 = icmp ult ptr %i.ab, %i.gi
  %found.conflict773 = and i1 %bound0771, %bound1772
  %bound0774 = icmp ult ptr %invariant.gep582, %scevgep765
  %bound1775 = icmp ult ptr %i.fj, %i.gi
  %found.conflict776 = and i1 %bound0774, %bound1775
  %conflict.rdx777 = or i1 %found.conflict773, %found.conflict776
  %bound0778 = icmp ult ptr %invariant.gep582, %scevgep764
  %bound1779 = icmp ult ptr %i.fv, %i.gi
  %found.conflict780 = and i1 %bound0778, %bound1779
  %conflict.rdx781 = or i1 %conflict.rdx777, %found.conflict780
  br i1 %conflict.rdx781, label %scalar.ph768.preheader, label %vector.ph782

vector.ph782:                                     ; preds = %vector.memcheck770
  %i.gj = load double, ptr %i.fj, align 8, !tbaa !38, !alias.scope !143
  %broadcast.splatinsert788 = insertelement <2 x double> poison, double %i.gj, i64 0
  %broadcast.splat789 = shufflevector <2 x double> %broadcast.splatinsert788, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gk = load double, ptr %i.fv, align 8, !tbaa !32, !alias.scope !144
  %broadcast.splatinsert790 = insertelement <2 x double> poison, double %i.gk, i64 0
  %broadcast.splat791 = shufflevector <2 x double> %broadcast.splatinsert790, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body784

vector.body784:                                   ; preds = %vector.body784, %vector.ph782
  %index785 = phi i64 [ 0, %vector.ph782 ], [ %index.next792, %vector.body784 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index785 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load786 = load <2 x double>, ptr %i.gl, align 8, !tbaa !38, !alias.scope !145
  %wide.load787 = load <2 x double>, ptr %i.gm, align 8, !tbaa !38, !alias.scope !145
  %i.gn = fmul nsz <2 x double> %wide.load786, %broadcast.splat789
  %i.go = fmul nsz <2 x double> %wide.load787, %broadcast.splat789
  %i.gp = fmul nsz <2 x double> %i.gn, %broadcast.splat791
  %i.gq = fmul nsz <2 x double> %i.go, %broadcast.splat791
  %i.gr = getelementptr [8 x i8], ptr %invariant.gep582, i64 %index785 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store <2 x double> %i.gp, ptr %i.gr, align 8, !tbaa !38, !alias.scope !146, !noalias !147
  store <2 x double> %i.gq, ptr %i.gs, align 8, !tbaa !38, !alias.scope !146, !noalias !147
  %index.next792 = add nuw i64 %index785, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next792, %n.vec783
  br i1 %i.gt, label %middle.block793, label %vector.body784, !llvm.loop !104

middle.block793:                                  ; preds = %vector.body784
  br i1 %cmp.n794, label %._crit_edge450.us, label %scalar.ph768.preheader

scalar.ph768.preheader:                           ; preds = %vector.memcheck770, %.preheader.us, %middle.block793
  %indvars.iv521.ph = phi i64 [ 0, %vector.memcheck770 ], [ 0, %.preheader.us ], [ %n.vec783, %middle.block793 ] ; 5 uses
  br i1 %lcmp.mod863.not, label %scalar.ph768.prol.loopexit, label %scalar.ph768.prol

scalar.ph768.prol:                                ; preds = %scalar.ph768.preheader
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv521.ph
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !38
  %i.gw = load double, ptr %i.fj, align 8, !tbaa !38
  %i.gx = fmul nsz double %i.gv, %i.gw
  %i.gy = load double, ptr %i.fv, align 8, !tbaa !32
  %i.gz = fmul nsz double %i.gx, %i.gy
  %gep583.prol = getelementptr [8 x i8], ptr %invariant.gep582, i64 %indvars.iv521.ph
  store double %i.gz, ptr %gep583.prol, align 8, !tbaa !38
  %indvars.iv.next522.prol = or disjoint i64 %indvars.iv521.ph, 1
  br label %scalar.ph768.prol.loopexit

scalar.ph768.prol.loopexit:                       ; preds = %scalar.ph768.prol, %scalar.ph768.preheader
  %indvars.iv521.unr = phi i64 [ %indvars.iv521.ph, %scalar.ph768.preheader ], [ %indvars.iv.next522.prol, %scalar.ph768.prol ]
  %i.ha = icmp eq i64 %indvars.iv521.ph, %i.ge
  br i1 %i.ha, label %._crit_edge450.us, label %scalar.ph768

scalar.ph768:                                     ; preds = %scalar.ph768.prol.loopexit, %scalar.ph768
  %indvars.iv521 = phi i64 [ %indvars.iv.next522.1, %scalar.ph768 ], [ %indvars.iv521.unr, %scalar.ph768.prol.loopexit ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv521
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !38
  %i.hd = load double, ptr %i.fj, align 8, !tbaa !38
  %i.he = fmul nsz double %i.hc, %i.hd
  %i.hf = load double, ptr %i.fv, align 8, !tbaa !32
  %i.hg = fmul nsz double %i.he, %i.hf
  %gep583 = getelementptr [8 x i8], ptr %invariant.gep582, i64 %indvars.iv521
  store double %i.hg, ptr %gep583, align 8, !tbaa !38
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.next522
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !38
  %i.hj = load double, ptr %i.fj, align 8, !tbaa !38
  %i.hk = fmul nsz double %i.hi, %i.hj
  %i.hl = load double, ptr %i.fv, align 8, !tbaa !32
  %i.hm = fmul nsz double %i.hk, %i.hl
  %gep583.1 = getelementptr [8 x i8], ptr %invariant.gep582, i64 %indvars.iv.next522
  store double %i.hm, ptr %gep583.1, align 8, !tbaa !38
  %indvars.iv.next522.1 = add nuw nsw i64 %indvars.iv521, 2 ; 2 uses
  %exitcond525.not.1 = icmp eq i64 %indvars.iv.next522.1, %wide.trip.count524
  br i1 %exitcond525.not.1, label %._crit_edge450.us, label %scalar.ph768, !llvm.loop !105

._crit_edge450.us:                                ; preds = %scalar.ph768.prol.loopexit, %scalar.ph768, %middle.block793
  %i.hn = add nsw i32 %spec.select360455.us, %i.fr ; 2 uses
  %.not351.us = icmp slt i32 %i.hn, %i.fp
  %i.ho = select i1 %.not351.us, i32 0, i32 %i.fp
  %spec.select360.us = sub nsw i32 %i.hn, %i.ho   ; 2 uses
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, %i.fx ; 2 uses
  %i.hp = add nuw nsw i32 %.2296451.us, 1         ; 2 uses
  %exitcond529.not = icmp eq i32 %i.hp, %i.fs
  br i1 %exitcond529.not, label %._crit_edge452.loopexit, label %.preheader.us, !llvm.loop !106

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %spec.select360455 = phi i32 [ 0, %.preheader.preheader.new ], [ %spec.select360.3, %.preheader ]
  %niter861 = phi i32 [ 0, %.preheader.preheader.new ], [ %niter861.next.3, %.preheader ]
  %i.hq = add nsw i32 %spec.select360455, %i.fr   ; 2 uses
  %.not351 = icmp slt i32 %i.hq, %i.fp
  %i.hr = select i1 %.not351, i32 0, i32 %i.fp
  %spec.select360 = sub nsw i32 %i.hq, %i.hr
  %i.hs = add nsw i32 %spec.select360, %i.fr      ; 2 uses
  %.not351.1 = icmp slt i32 %i.hs, %i.fp
  %i.ht = select i1 %.not351.1, i32 0, i32 %i.fp
  %spec.select360.1 = sub nsw i32 %i.hs, %i.ht
  %i.hu = add nsw i32 %spec.select360.1, %i.fr    ; 2 uses
  %.not351.2 = icmp slt i32 %i.hu, %i.fp
  %i.hv = select i1 %.not351.2, i32 0, i32 %i.fp
  %spec.select360.2 = sub nsw i32 %i.hu, %i.hv
  %i.hw = add nsw i32 %spec.select360.2, %i.fr    ; 2 uses
  %.not351.3 = icmp slt i32 %i.hw, %i.fp
  %i.hx = select i1 %.not351.3, i32 0, i32 %i.fp
  %spec.select360.3 = sub nsw i32 %i.hw, %i.hx    ; 3 uses
  %niter861.next.3 = add nuw nsw i32 %niter861, 4 ; 2 uses
  %niter861.ncmp.3 = icmp eq i32 %niter861.next.3, %unroll_iter860
  br i1 %niter861.ncmp.3, label %._crit_edge452.loopexit464.unr-lcssa, label %.preheader, !llvm.loop !106

._crit_edge452.loopexit:                          ; preds = %._crit_edge450.us
  %i.hy = trunc nsw i64 %indvars.iv.next527 to i32
  br label %._crit_edge452

._crit_edge452.loopexit464.unr-lcssa:             ; preds = %.preheader
  %lcmp.mod857.not = icmp eq i32 %xtraiter855, 0
  br i1 %lcmp.mod857.not, label %._crit_edge452.loopexit464, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge452.loopexit464.unr-lcssa, %.preheader.preheader
  %spec.select360455.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %spec.select360.3, %._crit_edge452.loopexit464.unr-lcssa ]
  %lcmp.mod859 = icmp ne i32 %xtraiter855, 0
  call void @llvm.assume(i1 %lcmp.mod859)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %spec.select360455.epil = phi i32 [ %spec.select360.epil, %.preheader.epil ], [ %spec.select360455.epil.init, %.preheader.epil.preheader ]
  %epil.iter856 = phi i32 [ %epil.iter856.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.hz = add nsw i32 %spec.select360455.epil, %i.fr ; 2 uses
  %.not351.epil = icmp slt i32 %i.hz, %i.fp
  %i.ia = select i1 %.not351.epil, i32 0, i32 %i.fp
  %spec.select360.epil = sub nsw i32 %i.hz, %i.ia ; 2 uses
  %epil.iter856.next = add i32 %epil.iter856, 1   ; 2 uses
  %epil.iter856.cmp.not = icmp eq i32 %epil.iter856.next, %xtraiter855
  br i1 %epil.iter856.cmp.not, label %._crit_edge452.loopexit464, label %.preheader.epil, !llvm.loop !107

._crit_edge452.loopexit464:                       ; preds = %.preheader.epil, %._crit_edge452.loopexit464.unr-lcssa
  %spec.select360.lcssa = phi i32 [ %spec.select360.3, %._crit_edge452.loopexit464.unr-lcssa ], [ %spec.select360.epil, %.preheader.epil ]
  %i.ib = mul i32 %i.fr, %i.fs
  br label %._crit_edge452

._crit_edge452:                                   ; preds = %._crit_edge452.loopexit464, %._crit_edge452.loopexit
  %.us-phi458 = phi i32 [ %i.hy, %._crit_edge452.loopexit ], [ %i.ib, %._crit_edge452.loopexit464 ]
  %.us-phi459 = phi i32 [ %spec.select360.us, %._crit_edge452.loopexit ], [ %spec.select360.lcssa, %._crit_edge452.loopexit464 ]
  store i32 %.us-phi459, ptr %i.fm, align 8, !tbaa !73
  store i32 %.us-phi458, ptr %i.fn, align 4, !tbaa !66
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge452, %bb.m
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !52
  %i.ie = sitofp nsz i32 %i.id to double
  %i.if = fmul nnan nsz double %i.ie, 1.000000e-01
  %i.ig = call nsz double @llvm.round.f64(double %i.if)
  %i.ih = fptosi double %i.ig to i32              ; 2 uses
  %i.ii = srem i32 %i.ih, 2
  %i.ij = add nsw i32 %i.ii, %i.ih                ; 3 uses
  call fastcc void @true_peak_limiter(ptr noundef nonnull %i.k, ptr noundef %i.z, i32 noundef %i.ij, i32 noundef %i.fr)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.k, i64 872
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !34
  %i.im = sext i32 %i.ij to i64
  call void @ff_ebur128_add_frames_double(ptr noundef %i.il, ptr noundef %i.z, i64 noundef %i.im) #12
  %i.in = getelementptr inbounds nuw i8, ptr %.0307, i64 112
  store i32 %i.ij, ptr %i.in, align 8, !tbaa !62
  store i32 1, ptr %i.ak, align 8, !tbaa !24
  br label %bb.ag

bb.o:                                             ; preds = %bb.e
  %i.io = getelementptr inbounds nuw i8, ptr %i.k, i64 536 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !75 ; 4 uses
  %i.iq = icmp slt i32 %i.ip, 20
  %.v356 = select i1 %i.iq, i32 10, i32 -20
  %i.ir = add nsw i32 %.v356, %i.ip
  %i.is = tail call nsz fastcc double @gaussian_filter(ptr noundef nonnull %i.k, i32 noundef %i.ir) ; 2 uses
  %i.it = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 112
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !62 ; 6 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.preheader365.lr.ph, label %._crit_edge532

._crit_edge532:                                   ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre533 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !61
  %.phi.trans.insert534 = getelementptr inbounds nuw i8, ptr %i.k, i64 576
  %.pre535 = load i32, ptr %.phi.trans.insert534, align 8, !tbaa !73
  %.phi.trans.insert536 = getelementptr inbounds nuw i8, ptr %i.k, i64 580
  %.pre537 = load i32, ptr %.phi.trans.insert536, align 4, !tbaa !65
  br label %bb.p

.preheader365.lr.ph:                              ; preds = %bb.o
  %i.ix = icmp slt i32 %i.ip, 19
  %.v357 = select i1 %i.ix, i32 11, i32 -19
  %i.iy = add nsw i32 %.v357, %i.ip
  %i.iz = tail call nsz fastcc double @gaussian_filter(ptr noundef nonnull %i.k, i32 noundef %i.iy)
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !61 ; 8 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  %i.jd = uitofp nneg i32 %i.iv to double
  %i.je = fsub nsz double %i.iz, %i.is
  %i.jf = getelementptr i8, ptr %i.k, i64 64      ; 6 uses
end_hunk_0
begin_hunk_1_@detect_peak:bb.a

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph162.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.ip = add nsw i32 %.1118165, %3               ; 2 uses
  %.not146 = icmp slt i32 %i.ip, %i.j
  %i.iq = select i1 %.not146, i32 0, i32 %i.j
  %spec.select148 = sub nsw i32 %i.ip, %i.iq
  %i.ir = add nuw nsw i32 %.0123163, 1            ; 2 uses
  %exitcond189.not = icmp eq i32 %i.ir, %2
  br i1 %exitcond189.not, label %.loopexit153, label %.preheader152, !llvm.loop !216

.loopexit153:                                     ; preds = %._crit_edge, %.loopexit155, %.critedge._crit_edge
  ret void
}

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.round.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"double", !5, i64 0}
!21 = !{!"p1 double", !9, i64 0}
!22 = !{!"p1 _ZTS14FFEBUR128State", !9, i64 0}
!23 = !{!"LoudNormContext", !10, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !12, i64 88, !21, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !5, i64 120, !5, i64 360, !20, i64 528, !6, i64 536, !5, i64 544, !21, i64 560, !21, i64 568, !6, i64 576, !6, i64 580, !6, i64 584, !6, i64 588, !6, i64 592, !6, i64 596, !6, i64 600, !6, i64 604, !5, i64 608, !6, i64 848, !6, i64 852, !6, i64 856, !6, i64 860, !22, i64 864, !22, i64 872}
!24 = !{!23, !6, i64 848}
!25 = !{!23, !12, i64 88}
!26 = !{!23, !6, i64 80}
!27 = !{!23, !20, i64 8}
!28 = !{!23, !20, i64 32}
!29 = !{!23, !20, i64 56}
!30 = !{!23, !20, i64 24}
!31 = !{!23, !20, i64 16}
!32 = !{!23, !20, i64 64}
!33 = !{!23, !22, i64 864}
!34 = !{!23, !22, i64 872}
!35 = !{!23, !6, i64 860}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!6, !6, i64 0}
!38 = !{!20, !20, i64 0}
!39 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!18, !15, i64 56}
!42 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!45 = !{!"AVRational", !6, i64 0, !6, i64 4}
!46 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!47 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!48 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!49 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!50 = !{!"AVFilterFormatsConfig", !48, i64 0, !48, i64 8, !49, i64 16, !48, i64 24, !48, i64 32, !48, i64 40}
!51 = !{!"AVFilterLink", !44, i64 0, !13, i64 8, !44, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !45, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !46, i64 72, !45, i64 96, !47, i64 104, !6, i64 112, !6, i64 116, !50, i64 120, !50, i64 168}
!52 = !{!51, !6, i64 64}
!53 = !{!"p2 omnipotent char", !14, i64 0}
!54 = !{!"long", !5, i64 0}
!55 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!56 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!57 = !{!"AVFrame", !5, i64 0, !5, i64 64, !53, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !45, i64 124, !54, i64 136, !54, i64 144, !45, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !55, i64 248, !6, i64 256, !47, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !54, i64 304, !56, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !54, i64 344, !54, i64 352, !54, i64 360, !54, i64 368, !9, i64 376, !46, i64 384, !54, i64 408, !6, i64 416}
!58 = !{!57, !54, i64 136}
!59 = !{!54, !54, i64 0}
!60 = !{!23, !6, i64 104}
!61 = !{!51, !6, i64 76}
!62 = !{!57, !6, i64 112}
!63 = !{!23, !21, i64 96}
!64 = !{!12, !12, i64 0}
!65 = !{!23, !6, i64 580}
!66 = !{!23, !6, i64 108}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!51, !44, i64 16}
!71 = !{!23, !21, i64 560}
!72 = !{!23, !21, i64 568}
!73 = !{!23, !6, i64 576}
!74 = !{!23, !6, i64 112}
!75 = !{!23, !6, i64 536}
!76 = !{!23, !6, i64 584}
!77 = !{!"llvm.loop.peeled.count", i32 1}
!78 = !{!23, !6, i64 588}
!79 = !{!23, !6, i64 72}
!80 = !{!23, !20, i64 48}
!81 = !{!23, !20, i64 40}
!82 = distinct !{!82, !36}
!83 = distinct !{!83, !36}
!84 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!85 = !{!84, !84, i64 0}
!86 = distinct !{!86, !36, !67, !68}
!87 = distinct !{!87, !69}
!88 = distinct !{!88, !36, !67}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !69}
!91 = !{!18, !15, i64 32}
!92 = !{!51, !44, i64 0}
!93 = !{!23, !6, i64 76}
!94 = distinct !{!94, !36, !77}
!95 = distinct !{!95, !36, !67, !68}
!96 = distinct !{!96, !69}
!97 = distinct !{!97, !36, !67}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, i1 false, !"LVerDomain"}
!100 = distinct !{!100, !99}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !99}
!103 = distinct !{!103, !99}
!104 = distinct !{!104, !36, !67, !68}
!105 = distinct !{!105, !36, !67}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !69}
!108 = distinct !{!108, i1 false, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !108}
!112 = distinct !{!112, !108}
!113 = distinct !{!113, !108}
!114 = distinct !{!114, !36, !67, !68}
!115 = distinct !{!115, !36, !67}
!116 = distinct !{!116, !36}
!117 = distinct !{!117, i1 false, !"LVerDomain"}
!118 = distinct !{!118, !117}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !117}
!121 = distinct !{!121, !36, !67, !68}
!122 = distinct !{!122, !36, !67}
!123 = distinct !{!123, !36}
!124 = distinct !{!124, !69}
!125 = distinct !{!125, i1 false, !"LVerDomain"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !125}
!129 = distinct !{!129, !36, !67, !68}
!130 = distinct !{!130, !36, !67}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36}
!133 = distinct !{!133, i1 false, !"LVerDomain"}
!134 = distinct !{!134, !133}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !133}
!137 = distinct !{!137, !36, !67, !68}
!138 = distinct !{!138, !69}
!139 = distinct !{!139, !36, !67}
!140 = distinct !{!140, !36}
!141 = !{!23, !6, i64 852}
!142 = !{!23, !20, i64 528}
!143 = !{!100}
!144 = !{!101}
!145 = !{!102}
!146 = !{!103}
!147 = !{!102, !100, !101}
!148 = !{!109}
!149 = !{!110}
!150 = !{!111}
!151 = !{!113, !110, !112, !109}
!152 = !{!112}
!153 = !{!113}
!154 = !{!110, !112, !109}
!155 = !{!23, !6, i64 856}
!156 = !{!118}
!157 = !{!119}
!158 = !{!120}
!159 = !{!119, !118}
!160 = !{!126}
!161 = !{!127}
!162 = !{!128}
!163 = !{!127, !126}
!164 = !{!134}
!165 = !{!135}
!166 = !{!136}
!167 = !{!135, !134}
!168 = distinct !{!168, !36}
!169 = distinct !{!169, !36}
!170 = distinct !{!170, i1 false, !"LVerDomain"}
!171 = distinct !{!171, !170}
!172 = distinct !{!172, !170}
!173 = distinct !{!173, !36, !67, !68}
!174 = distinct !{!174, !69}
!175 = distinct !{!175, !36, !67}
!176 = distinct !{!176, !36}
!177 = distinct !{!177, i1 false, !"LVerDomain"}
!178 = distinct !{!178, !177}
!179 = distinct !{!179, !177}
!180 = distinct !{!180, !36, !67, !68}
!181 = distinct !{!181, !36, !67}
!182 = distinct !{!182, !36}
!183 = distinct !{!183, i1 false, !"LVerDomain"}
!184 = distinct !{!184, !183}
!185 = distinct !{!185, !183}
!186 = distinct !{!186, !36, !67, !68}
!187 = distinct !{!187, !36, !67}
!188 = distinct !{!188, !36}
!189 = distinct !{!189, i1 false, !"LVerDomain"}
!190 = distinct !{!190, !189}
!191 = distinct !{!191, !189}
!192 = distinct !{!192, !36, !67, !68}
!193 = distinct !{!193, !69}
!194 = distinct !{!194, !36, !67}
!195 = distinct !{!195, !36}
!196 = distinct !{!196, !36}
!197 = distinct !{!197, !36, !67, !68}
!198 = distinct !{!198, !36, !67}
!199 = distinct !{!199, !36}
!200 = !{!171}
!201 = !{!172}
!202 = !{!23, !6, i64 604}
!203 = !{!23, !6, i64 596}
!204 = !{!23, !6, i64 592}
!205 = !{!178}
!206 = !{!179}
!207 = !{!23, !6, i64 600}
!208 = !{!184}
!209 = !{!185}
!210 = !{!190}
!211 = !{!191}
!212 = distinct !{!212, !36, !67, !68}
!213 = distinct !{!213, !36, !67}
!214 = distinct !{!214, !36}
!215 = distinct !{!215, !36, !77}
!216 = distinct !{!216, !36}
end_hunk_1
