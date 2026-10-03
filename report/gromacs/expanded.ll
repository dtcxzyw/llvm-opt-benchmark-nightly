Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/expanded?download=true
inline.NumInlined: 758
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z33expandedEnsembleUpdateLambdaStateP8_IO_FILEPK10t_inputrecPK14gmx_enerdata_tiP12df_history_tl:bb.a
  %i.amj = load float, ptr %i.zv, align 4, !tbaa !53
  %i.amk = load float, ptr %i.zu, align 4, !tbaa !53
  %i.aml = fsub float %i.amj, %i.amk
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.amm = tail call float @llvm.log.f32(float %.0365.i)
  %i.amn = tail call float @llvm.log.f32(float %i.amh)
  %i.amo = fsub float %i.amm, %i.amn
  %i.amp = fadd float %i.amo, %i.afy
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0357.i = phi float [ %i.aml, %bb.at ], [ %i.amp, %bb.au ]
  %i.amq = insertelement <2 x i32> poison, i32 %.0372.i, i64 0
  %i.amr = insertelement <2 x i32> %i.amq, i32 %i.ahp, i64 1
  %i.ams = uitofp <2 x i32> %i.amr to <2 x double>
  %i.amt = fdiv <2 x double> splat (double 1.000000e+00), %i.ams ; 2 uses
  %i.amu = extractelement <2 x double> %i.amt, i64 1
  %i.amv = fmul double %i.amu, 0.000000e+00
  %i.amw = extractelement <2 x double> %i.amt, i64 0
  %i.amx = tail call double @llvm.fmuladd.f64(double %i.amw, double %.0.i, double %i.amv)
  %i.amy = fptrunc double %i.amx to float
  br label %.thread.i

bb.aw:                                            ; preds = %bb.aq
  %spec.select610.i = select i1 %i.ahv, float %.1363.i, float 0.000000e+00
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aw, %bb.av, %bb.ar
  %.sink604.i = phi float [ %spec.select610.i, %bb.aw ], [ %.1363.i, %bb.ar ], [ %.1363.i, %bb.av ]
  %.0355500.i = phi float [ 0.000000e+00, %bb.aw ], [ 0.000000e+00, %bb.ar ], [ %i.amy, %bb.av ]
  %.1498.i = phi float [ 0.000000e+00, %bb.aw ], [ 0.000000e+00, %bb.ar ], [ %.0357.i, %bb.av ]
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv565.i
  store float %.sink604.i, ptr %i.amz, align 4, !tbaa !53
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv565.i
  store float %.1359.i, ptr %i.ana, align 4, !tbaa !53
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %indvars.iv565.i
  store float %.0356.i, ptr %i.anb, align 4, !tbaa !53
  br i1 %i.aje, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread.i
  %i.anc = fpext float %i.afy to double
  %i.and = sitofp i32 %i.ahp to double
  %i.ane = uitofp nneg i32 %.0373.i to double
  %i.anf = fdiv double %i.and, %i.ane
  %i.ang = tail call double @log(double noundef %i.anf) #19
  %i.anh = fadd double %i.ang, %i.anc
  %i.ani = load float, ptr %i.aaf, align 4, !tbaa !53
  %i.anj = fpext float %i.ani to double
  %i.ank = fsub double %i.anh, %i.anj
  %i.anl = fptrunc double %i.ank to float
  br label %bb.az

bb.ay:                                            ; preds = %.thread.i
  %i.anm = load float, ptr %i.aaf, align 4, !tbaa !53
  %i.ann = fsub float %i.afy, %i.anm
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink606.i = phi float [ %i.ann, %bb.ay ], [ %i.anl, %bb.ax ]
  %i.ano = tail call float @llvm.fabs.f32(float %.sink606.i)
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv565.i
  store float %i.ano, ptr %i.anp, align 4, !tbaa !53
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv565.i
  store float 0.000000e+00, ptr %i.anq, align 4, !tbaa !53
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv565.i
  store float %.1498.i, ptr %i.anr, align 4, !tbaa !53
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv565.i
  store float %.0355500.i, ptr %i.ans, align 4, !tbaa !53
  %i.ant = select i1 %i.ahv, i1 %i.ajv, i1 false
  br i1 %i.ant, label %bb.ba, label %.thread502.i

bb.ba:                                            ; preds = %bb.az
  %i.anu = fpext float %i.afy to double
  %i.anv = uitofp nneg i32 %.0372.i to double
  %i.anw = uitofp nneg i32 %i.ahp to double
  %i.anx = fdiv double %i.anv, %i.anw
  %i.any = tail call double @log(double noundef %i.anx) #19
  %i.anz = fadd double %i.any, %i.anu
  %i.aoa = load float, ptr %i.aae, align 4, !tbaa !53
  %i.aob = fpext float %i.aoa to double
  %i.aoc = fsub double %i.anz, %i.aob
  %i.aod = fptrunc double %i.aoc to float
  br label %bb.bb

.thread502.i:                                     ; preds = %bb.az
  %i.aoe = load float, ptr %i.aae, align 4, !tbaa !53
  %i.aof = fsub float %i.afy, %i.aoe
  br label %bb.bb

bb.bb:                                            ; preds = %.thread502.i, %bb.ba
  %.sink608.i = phi float [ %i.aof, %.thread502.i ], [ %i.aod, %bb.ba ]
  %i.aog = tail call float @llvm.fabs.f32(float %.sink608.i)
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv565.i
  store float %i.aog, ptr %i.aoh, align 4, !tbaa !53
  %indvars.iv.next566.i = add nuw nsw i64 %indvars.iv565.i, 1 ; 2 uses
  %exitcond569.not.i = icmp eq i64 %indvars.iv.next566.i, %wide.trip.count568.i
  br i1 %exitcond569.not.i, label %._crit_edge529.i, label %bb.u, !llvm.loop !240

bb.bc:                                            ; preds = %_ZL11FindMinimumPKfi.exit436.i
  %i.aoi = tail call nnan float @llvm.log.f32(float %i.aft)
  %i.aoj = fmul nnan float %i.aoi, 5.000000e-01
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZL11FindMinimumPKfi.exit436.i
  %.0378.i = phi float [ %i.aoj, %bb.bc ], [ 0.000000e+00, %_ZL11FindMinimumPKfi.exit436.i ] ; 11 uses
  %i.aok = icmp sgt i32 %3, 0
  br i1 %i.aok, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aol = add nsw i32 %3, -1
  %i.aom = zext nneg i32 %i.aol to i64            ; 2 uses
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.aom
  store float %i.afl, ptr %i.aon, align 4, !tbaa !53
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.aom
  store float %i.afk, ptr %i.aoo, align 4, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.aop = icmp slt i32 %3, %i.ya
  br i1 %i.aop, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aoq = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %i.p
  store float %i.afq, ptr %i.aoq, align 4, !tbaa !53
  %i.aor = getelementptr inbounds [4 x i8], ptr %i.xq, i64 %i.p
  store float %i.afs, ptr %i.aor, align 4, !tbaa !53
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.aos = load i32, ptr %i.lo, align 4, !tbaa !59
  %i.aot = icmp eq i32 %i.aos, 3
  br i1 %i.aot, label %.preheader506.i, label %bb.bj

.preheader506.i:                                  ; preds = %bb.bh
  br i1 %i.hs, label %iter.check644, label %.critedge.thread.i

iter.check644:                                    ; preds = %.preheader506.i
  %i.aou = load ptr, ptr %i.o, align 8, !tbaa !52 ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !311 ; 3 uses
  %wide.trip.count572.i = zext i32 %i.h to i64    ; 15 uses
  %min.iters.check619 = icmp ult i32 %i.h, 4
  br i1 %min.iters.check619, label %vec.epilog.scalar.ph645.preheader, label %vector.main.loop.iter.check620

vector.main.loop.iter.check620:                   ; preds = %iter.check644
  %min.iters.check621 = icmp ult i32 %i.h, 32
  br i1 %min.iters.check621, label %vec.epilog.ph648, label %vector.ph622

vector.ph622:                                     ; preds = %vector.main.loop.iter.check620
  %i.aox = and i64 %wide.trip.count572.i, 28
  %n.vec623 = and i64 %wide.trip.count572.i, 2147483616 ; 4 uses
  %broadcast.splatinsert624 = insertelement <8 x i32> poison, i32 %i.aow, i64 0
  %broadcast.splat625 = shufflevector <8 x i32> %broadcast.splatinsert624, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body626

vector.body626:                                   ; preds = %vector.ph622, %vector.body626
  %index627 = phi i64 [ 0, %vector.ph622 ], [ %index.next636, %vector.body626 ] ; 2 uses
  %vec.phi628 = phi <8 x i1> [ zeroinitializer, %vector.ph622 ], [ %i.apg, %vector.body626 ]
  %vec.phi629 = phi <8 x i1> [ zeroinitializer, %vector.ph622 ], [ %i.aph, %vector.body626 ]
  %vec.phi630 = phi <8 x i1> [ zeroinitializer, %vector.ph622 ], [ %i.api, %vector.body626 ]
  %vec.phi631 = phi <8 x i1> [ zeroinitializer, %vector.ph622 ], [ %i.apj, %vector.body626 ]
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %index627 ; 4 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 32
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoy, i64 64
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoy, i64 96
  %wide.load632 = load <8 x i32>, ptr %i.aoy, align 4, !tbaa !54
  %wide.load633 = load <8 x i32>, ptr %i.aoz, align 4, !tbaa !54
  %wide.load634 = load <8 x i32>, ptr %i.apa, align 4, !tbaa !54
  %wide.load635 = load <8 x i32>, ptr %i.apb, align 4, !tbaa !54
  %i.apc = icmp slt <8 x i32> %wide.load632, %broadcast.splat625
  %i.apd = icmp slt <8 x i32> %wide.load633, %broadcast.splat625
  %i.ape = icmp slt <8 x i32> %wide.load634, %broadcast.splat625
  %i.apf = icmp slt <8 x i32> %wide.load635, %broadcast.splat625
  %i.apg = or <8 x i1> %vec.phi628, %i.apc        ; 2 uses
  %i.aph = or <8 x i1> %vec.phi629, %i.apd        ; 2 uses
  %i.api = or <8 x i1> %vec.phi630, %i.ape        ; 2 uses
  %i.apj = or <8 x i1> %vec.phi631, %i.apf        ; 2 uses
  %index.next636 = add nuw i64 %index627, 32      ; 2 uses
  %i.apk = icmp eq i64 %index.next636, %n.vec623
  br i1 %i.apk, label %middle.block637, label %vector.body626, !llvm.loop !241

middle.block637:                                  ; preds = %vector.body626
  %bin.rdx638 = or <8 x i1> %i.aph, %i.apg
  %bin.rdx639 = or <8 x i1> %i.api, %bin.rdx638
  %bin.rdx640 = or <8 x i1> %i.apj, %bin.rdx639
  %bin.rdx640.fr = freeze <8 x i1> %bin.rdx640
  %i.apl = bitcast <8 x i1> %bin.rdx640.fr to i8
  %.not867 = icmp eq i8 %i.apl, 0                 ; 3 uses
  %cmp.n641 = icmp eq i64 %n.vec623, %wide.trip.count572.i
  br i1 %cmp.n641, label %._crit_edge533.i, label %vec.epilog.iter.check646

vec.epilog.iter.check646:                         ; preds = %middle.block637
  %min.epilog.iters.check647 = icmp eq i64 %i.aox, 0
  br i1 %min.epilog.iters.check647, label %vec.epilog.scalar.ph645.preheader, label %vec.epilog.ph648, !prof !296

vec.epilog.ph648:                                 ; preds = %vector.main.loop.iter.check620, %vec.epilog.iter.check646
  %vec.epilog.resume.val642 = phi i64 [ %n.vec623, %vec.epilog.iter.check646 ], [ 0, %vector.main.loop.iter.check620 ]
  %bc.merge.rdx643 = phi i1 [ %.not867, %vec.epilog.iter.check646 ], [ true, %vector.main.loop.iter.check620 ]
  %7 = xor i1 %bc.merge.rdx643, true
  %n.vec649 = and i64 %wide.trip.count572.i, 2147483644 ; 3 uses
  %broadcast.splatinsert650 = insertelement <4 x i32> poison, i32 %i.aow, i64 0
  %broadcast.splat651 = shufflevector <4 x i32> %broadcast.splatinsert650, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert652 = insertelement <4 x i1> poison, i1 %7, i64 0
  %broadcast.splat653 = shufflevector <4 x i1> %broadcast.splatinsert652, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body654

vec.epilog.vector.body654:                        ; preds = %vec.epilog.vector.body654, %vec.epilog.ph648
  %index655 = phi i64 [ %vec.epilog.resume.val642, %vec.epilog.ph648 ], [ %index.next658, %vec.epilog.vector.body654 ] ; 2 uses
  %vec.phi656 = phi <4 x i1> [ %broadcast.splat653, %vec.epilog.ph648 ], [ %.fr868, %vec.epilog.vector.body654 ]
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %index655
  %wide.load657 = load <4 x i32>, ptr %i.apm, align 4, !tbaa !54
  %i.apn = icmp slt <4 x i32> %wide.load657, %broadcast.splat651
  %i.apo = or <4 x i1> %vec.phi656, %i.apn
  %.fr868 = freeze <4 x i1> %i.apo                ; 2 uses
  %index.next658 = add nuw i64 %index655, 4       ; 2 uses
  %i.app = icmp eq i64 %index.next658, %n.vec649
  br i1 %i.app, label %vec.epilog.middle.block659, label %vec.epilog.vector.body654, !llvm.loop !242

vec.epilog.middle.block659:                       ; preds = %vec.epilog.vector.body654
  %i.apq = bitcast <4 x i1> %.fr868 to i4
  %.not869 = icmp eq i4 %i.apq, 0                 ; 2 uses
  %cmp.n660 = icmp eq i64 %n.vec649, %wide.trip.count572.i
  br i1 %cmp.n660, label %._crit_edge533.i, label %vec.epilog.scalar.ph645.preheader

vec.epilog.scalar.ph645.preheader:                ; preds = %iter.check644, %vec.epilog.iter.check646, %vec.epilog.middle.block659
  %indvars.iv570.i.ph = phi i64 [ 0, %iter.check644 ], [ %n.vec623, %vec.epilog.iter.check646 ], [ %n.vec649, %vec.epilog.middle.block659 ]
  %.0375531.i.ph = phi i1 [ true, %iter.check644 ], [ %.not867, %vec.epilog.iter.check646 ], [ %.not869, %vec.epilog.middle.block659 ]
  br label %vec.epilog.scalar.ph645

vec.epilog.scalar.ph645:                          ; preds = %vec.epilog.scalar.ph645.preheader, %vec.epilog.scalar.ph645
  %indvars.iv570.i = phi i64 [ %indvars.iv.next571.i, %vec.epilog.scalar.ph645 ], [ %indvars.iv570.i.ph, %vec.epilog.scalar.ph645.preheader ] ; 2 uses
  %.0375531.i = phi i1 [ %spec.select.i, %vec.epilog.scalar.ph645 ], [ %.0375531.i.ph, %vec.epilog.scalar.ph645.preheader ]
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %indvars.iv570.i
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !54
  %i.apt = icmp sge i32 %i.aps, %i.aow
  %spec.select.i = select i1 %i.apt, i1 %.0375531.i, i1 false ; 2 uses
  %indvars.iv.next571.i = add nuw nsw i64 %indvars.iv570.i, 1 ; 2 uses
  %exitcond573.not.i = icmp eq i64 %indvars.iv.next571.i, %wide.trip.count572.i
  br i1 %exitcond573.not.i, label %._crit_edge533.i, label %vec.epilog.scalar.ph645, !llvm.loop !243

._crit_edge533.i:                                 ; preds = %vec.epilog.scalar.ph645, %vec.epilog.middle.block659, %middle.block637
  %spec.select.i.lcssa = phi i1 [ %.not869, %vec.epilog.middle.block659 ], [ %.not867, %middle.block637 ], [ %spec.select.i, %vec.epilog.scalar.ph645 ]
  br i1 %spec.select.i.lcssa, label %.critedge.i, label %bb.bj

.critedge.i:                                      ; preds = %._crit_edge533.i
  %i.apu = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !51 ; 10 uses
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %i.p ; 6 uses
  store float %.0378.i, ptr %i.apw, align 4, !tbaa !53
  %i.apx = icmp eq i32 %3, 0
  br i1 %i.apx, label %iter.check689, label %bb.bi

.critedge.thread.i:                               ; preds = %.preheader506.i
  %i.apy = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !51
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.apz, i64 %i.p ; 3 uses
  store float %.0378.i, ptr %i.aqa, align 4, !tbaa !53
  %i.aqb = icmp eq i32 %3, 0
  br i1 %i.aqb, label %._crit_edge537.i, label %bb.bi

iter.check689:                                    ; preds = %.critedge.i
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 8 uses
  %min.iters.check668 = icmp ult i32 %i.h, 4
  br i1 %min.iters.check668, label %vec.epilog.scalar.ph690.preheader, label %vector.memcheck669

vector.memcheck669:                               ; preds = %iter.check689
  %i.aqd = shl nuw nsw i64 %wide.trip.count572.i, 2
  %i.aqe = getelementptr i8, ptr %i.apv, i64 %i.aqd
  %bound0670 = icmp ult ptr %i.apv, %i.xl
  %bound1671 = icmp ult ptr %i.aqc, %i.aqe
  %found.conflict672 = and i1 %bound0670, %bound1671
  br i1 %found.conflict672, label %vec.epilog.scalar.ph690.preheader, label %vector.main.loop.iter.check673

vector.main.loop.iter.check673:                   ; preds = %vector.memcheck669
  %min.iters.check674 = icmp ult i32 %i.h, 32
  br i1 %min.iters.check674, label %vec.epilog.ph693, label %vector.ph675

vector.ph675:                                     ; preds = %vector.main.loop.iter.check673
  %i.aqf = and i64 %wide.trip.count572.i, 28
  %n.vec676 = and i64 %wide.trip.count572.i, 2147483616 ; 4 uses
  %i.aqg = load float, ptr %i.aqc, align 8, !tbaa !312, !alias.scope !313
  %i.aqh = fsub float %i.aqg, %.0378.i
  %broadcast.splatinsert683 = insertelement <8 x float> poison, float %i.aqh, i64 0
  %broadcast.splat684 = shufflevector <8 x float> %broadcast.splatinsert683, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.ph675, %vector.body677
  %index678 = phi i64 [ 0, %vector.ph675 ], [ %index.next685, %vector.body677 ] ; 2 uses
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %index678 ; 5 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 32 ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqi, i64 64 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqi, i64 96 ; 2 uses
  %wide.load679 = load <8 x float>, ptr %i.aqi, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  %wide.load680 = load <8 x float>, ptr %i.aqj, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  %wide.load681 = load <8 x float>, ptr %i.aqk, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  %wide.load682 = load <8 x float>, ptr %i.aql, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  %i.aqm = fadd <8 x float> %wide.load679, %broadcast.splat684
  %i.aqn = fadd <8 x float> %wide.load680, %broadcast.splat684
  %i.aqo = fadd <8 x float> %wide.load681, %broadcast.splat684
  %i.aqp = fadd <8 x float> %wide.load682, %broadcast.splat684
  store <8 x float> %i.aqm, ptr %i.aqi, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  store <8 x float> %i.aqn, ptr %i.aqj, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  store <8 x float> %i.aqo, ptr %i.aqk, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  store <8 x float> %i.aqp, ptr %i.aql, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  %index.next685 = add nuw i64 %index678, 32      ; 2 uses
  %i.aqq = icmp eq i64 %index.next685, %n.vec676
  br i1 %i.aqq, label %middle.block686, label %vector.body677, !llvm.loop !247

middle.block686:                                  ; preds = %vector.body677
  %cmp.n687 = icmp eq i64 %n.vec676, %wide.trip.count572.i
  br i1 %cmp.n687, label %._crit_edge537.i, label %vec.epilog.iter.check691

vec.epilog.iter.check691:                         ; preds = %middle.block686
  %min.epilog.iters.check692 = icmp eq i64 %i.aqf, 0
  br i1 %min.epilog.iters.check692, label %vec.epilog.scalar.ph690.preheader, label %vec.epilog.ph693, !prof !296

vec.epilog.ph693:                                 ; preds = %vector.main.loop.iter.check673, %vec.epilog.iter.check691
  %vec.epilog.resume.val688 = phi i64 [ %n.vec676, %vec.epilog.iter.check691 ], [ 0, %vector.main.loop.iter.check673 ]
  %n.vec694 = and i64 %wide.trip.count572.i, 2147483644 ; 3 uses
  %i.aqr = load float, ptr %i.aqc, align 8, !tbaa !312, !alias.scope !313
  %i.aqs = fsub float %i.aqr, %.0378.i
  %broadcast.splatinsert698 = insertelement <4 x float> poison, float %i.aqs, i64 0
  %broadcast.splat699 = shufflevector <4 x float> %broadcast.splatinsert698, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body695

vec.epilog.vector.body695:                        ; preds = %vec.epilog.vector.body695, %vec.epilog.ph693
  %index696 = phi i64 [ %vec.epilog.resume.val688, %vec.epilog.ph693 ], [ %index.next700, %vec.epilog.vector.body695 ] ; 2 uses
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %index696 ; 2 uses
  %wide.load697 = load <4 x float>, ptr %i.aqt, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  %i.aqu = fadd <4 x float> %wide.load697, %broadcast.splat699
  store <4 x float> %i.aqu, ptr %i.aqt, align 4, !tbaa !53, !alias.scope !314, !noalias !313
  %index.next700 = add nuw i64 %index696, 4       ; 2 uses
  %i.aqv = icmp eq i64 %index.next700, %n.vec694
  br i1 %i.aqv, label %vec.epilog.middle.block701, label %vec.epilog.vector.body695, !llvm.loop !248

vec.epilog.middle.block701:                       ; preds = %vec.epilog.vector.body695
  %cmp.n702 = icmp eq i64 %n.vec694, %wide.trip.count572.i
  br i1 %cmp.n702, label %._crit_edge537.i, label %vec.epilog.scalar.ph690.preheader

vec.epilog.scalar.ph690.preheader:                ; preds = %iter.check689, %vector.memcheck669, %vec.epilog.iter.check691, %vec.epilog.middle.block701
  %indvars.iv574.i.ph = phi i64 [ 0, %iter.check689 ], [ 0, %vector.memcheck669 ], [ %n.vec676, %vec.epilog.iter.check691 ], [ %n.vec694, %vec.epilog.middle.block701 ] ; 3 uses
  %xtraiter950 = and i64 %wide.trip.count572.i, 3 ; 2 uses
  %lcmp.mod951.not = icmp eq i64 %xtraiter950, 0
  br i1 %lcmp.mod951.not, label %vec.epilog.scalar.ph690.prol.loopexit, label %vec.epilog.scalar.ph690.prol

vec.epilog.scalar.ph690.prol:                     ; preds = %vec.epilog.scalar.ph690.preheader, %vec.epilog.scalar.ph690.prol
  %indvars.iv574.i.prol = phi i64 [ %indvars.iv.next575.i.prol, %vec.epilog.scalar.ph690.prol ], [ %indvars.iv574.i.ph, %vec.epilog.scalar.ph690.preheader ] ; 2 uses
  %prol.iter952 = phi i64 [ %prol.iter952.next, %vec.epilog.scalar.ph690.prol ], [ 0, %vec.epilog.scalar.ph690.preheader ]
  %i.aqw = load float, ptr %i.aqc, align 8, !tbaa !312
  %i.aqx = fsub float %i.aqw, %.0378.i
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %indvars.iv574.i.prol ; 2 uses
  %i.aqz = load float, ptr %i.aqy, align 4, !tbaa !53
  %i.ara = fadd float %i.aqz, %i.aqx
  store float %i.ara, ptr %i.aqy, align 4, !tbaa !53
  %indvars.iv.next575.i.prol = add nuw nsw i64 %indvars.iv574.i.prol, 1 ; 2 uses
  %prol.iter952.next = add i64 %prol.iter952, 1   ; 2 uses
  %prol.iter952.cmp.not = icmp eq i64 %prol.iter952.next, %xtraiter950
  br i1 %prol.iter952.cmp.not, label %vec.epilog.scalar.ph690.prol.loopexit, label %vec.epilog.scalar.ph690.prol, !llvm.loop !249

vec.epilog.scalar.ph690.prol.loopexit:            ; preds = %vec.epilog.scalar.ph690.prol, %vec.epilog.scalar.ph690.preheader
  %indvars.iv574.i.unr = phi i64 [ %indvars.iv574.i.ph, %vec.epilog.scalar.ph690.preheader ], [ %indvars.iv.next575.i.prol, %vec.epilog.scalar.ph690.prol ]
  %i.arb = sub nsw i64 %indvars.iv574.i.ph, %wide.trip.count572.i
  %i.arc = icmp ugt i64 %i.arb, -4
  br i1 %i.arc, label %._crit_edge537.i, label %vec.epilog.scalar.ph690

vec.epilog.scalar.ph690:                          ; preds = %vec.epilog.scalar.ph690.prol.loopexit, %vec.epilog.scalar.ph690
  %indvars.iv574.i = phi i64 [ %indvars.iv.next575.i.3, %vec.epilog.scalar.ph690 ], [ %indvars.iv574.i.unr, %vec.epilog.scalar.ph690.prol.loopexit ] ; 5 uses
  %i.ard = load float, ptr %i.aqc, align 8, !tbaa !312
  %i.are = fsub float %i.ard, %.0378.i
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %indvars.iv574.i ; 2 uses
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !53
  %i.arh = fadd float %i.arg, %i.are
  store float %i.arh, ptr %i.arf, align 4, !tbaa !53
  %i.ari = load float, ptr %i.aqc, align 8, !tbaa !312
  %i.arj = fsub float %i.ari, %.0378.i
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %indvars.iv574.i
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 4 ; 2 uses
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !53
  %i.arn = fadd float %i.arm, %i.arj
  store float %i.arn, ptr %i.arl, align 4, !tbaa !53
  %i.aro = load float, ptr %i.aqc, align 8, !tbaa !312
  %i.arp = fsub float %i.aro, %.0378.i
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %indvars.iv574.i
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 8 ; 2 uses
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !53
  %i.art = fadd float %i.ars, %i.arp
  store float %i.art, ptr %i.arr, align 4, !tbaa !53
  %i.aru = load float, ptr %i.aqc, align 8, !tbaa !312
  %i.arv = fsub float %i.aru, %.0378.i
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %indvars.iv574.i
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 12 ; 2 uses
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !53
  %i.arz = fadd float %i.ary, %i.arv
  store float %i.arz, ptr %i.arx, align 4, !tbaa !53
  %indvars.iv.next575.i.3 = add nuw nsw i64 %indvars.iv574.i, 4 ; 2 uses
  %exitcond578.not.i.3 = icmp eq i64 %indvars.iv.next575.i.3, %wide.trip.count572.i
  br i1 %exitcond578.not.i.3, label %._crit_edge537.i, label %vec.epilog.scalar.ph690, !llvm.loop !250

._crit_edge537.i:                                 ; preds = %vec.epilog.scalar.ph690.prol.loopexit, %vec.epilog.scalar.ph690, %middle.block686, %vec.epilog.middle.block701, %.critedge.thread.i
  %i.asa = phi ptr [ %i.aqa, %.critedge.thread.i ], [ %i.apw, %middle.block686 ], [ %i.apw, %vec.epilog.middle.block701 ], [ %i.apw, %vec.epilog.scalar.ph690 ], [ %i.apw, %vec.epilog.scalar.ph690.prol.loopexit ]
  %i.asb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store float %.0378.i, ptr %i.asb, align 8, !tbaa !312
  store float 0.000000e+00, ptr %i.asa, align 4, !tbaa !53
  br label %bb.bj

bb.bi:                                            ; preds = %.critedge.thread.i, %.critedge.i
  %i.asc = phi ptr [ %i.aqa, %.critedge.thread.i ], [ %i.apw, %.critedge.i ]
  %i.asd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ase = load float, ptr %i.asd, align 8, !tbaa !312
  %i.asf = fsub float %.0378.i, %i.ase
  store float %i.asf, ptr %i.asc, align 4, !tbaa !53
  br label %bb.bj
end_hunk_0
