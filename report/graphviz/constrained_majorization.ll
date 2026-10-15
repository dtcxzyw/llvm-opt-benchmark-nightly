Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@stress_majorization_with_hierarchy:bb.a
  %i.gd = call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load1006.fr) ; 2 uses
  %i.ge = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1003, <2 x double> %i.gc) ; 2 uses
  %i.gf = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1004, <2 x double> %i.gd) ; 2 uses
  %index.next1007 = add nuw i64 %index1002, 4     ; 2 uses
  %i.gg = fcmp uno <2 x double> %i.gc, %i.gd
  %i.gh = bitcast <2 x i1> %i.gg to i2
  %i.gi = icmp ne i2 %i.gh, 0                     ; 5 uses
  %i.gj = icmp eq i64 %index.next1007, %n.vec1000
  %i.gk = or i1 %i.gi, %i.gj
  br i1 %i.gk, label %middle.block1008, label %vector.body1001, !llvm.loop !18

middle.block1008:                                 ; preds = %vector.body1001
  %i.gl = select i1 %i.gi, <2 x double> %vec.phi1003, <2 x double> %i.ge
  %i.gm = select i1 %i.gi, <2 x double> %vec.phi1004, <2 x double> %i.gf
  %i.gn = select i1 %i.gi, i64 %index1002, i64 %n.vec1000
  %rdx.minmax = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.gl, <2 x double> %i.gm)
  %i.go = call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %.not1104 = or i1 %cmp.n1009, %i.gi
  br i1 %.not1104, label %scalar.ph997.preheader, label %._crit_edge630.us

scalar.ph997.preheader:                           ; preds = %.preheader603.us, %middle.block1008
  %indvars.iv770.ph = phi i64 [ 0, %.preheader603.us ], [ %i.gn, %middle.block1008 ]
  %.1466627.us.ph = phi double [ %.0465632.us, %.preheader603.us ], [ %i.go, %middle.block1008 ]
  br label %scalar.ph997

scalar.ph997:                                     ; preds = %scalar.ph997.preheader, %scalar.ph997
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %scalar.ph997 ], [ %indvars.iv770.ph, %scalar.ph997.preheader ] ; 2 uses
  %.1466627.us = phi double [ %i.gs, %scalar.ph997 ], [ %.1466627.us.ph, %scalar.ph997.preheader ]
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv770
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !70
  %i.gr = call nsz double @llvm.fabs.f64(double %i.gq)
  %i.gs = call nsz double @llvm.maxnum.f64(double %.1466627.us, double %i.gr) ; 2 uses
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond774.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count773
  br i1 %exitcond774.not, label %._crit_edge630.us, label %scalar.ph997, !llvm.loop !19

._crit_edge630.us:                                ; preds = %scalar.ph997, %middle.block1008
  %.lcssa974 = phi double [ %i.go, %middle.block1008 ], [ %i.gs, %scalar.ph997 ] ; 2 uses
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %exitcond779.not = icmp eq i64 %indvars.iv.next776, %wide.trip.count778
  br i1 %exitcond779.not, label %.preheader600.preheader, label %.preheader603.us, !llvm.loop !20

.preheader600.preheader:                          ; preds = %._crit_edge630.us
  %i.gt = fdiv double 1.000000e+01, %.lcssa974    ; 2 uses
  %smax783 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count789 = zext nneg i32 %4 to i64
  %wide.trip.count784 = zext nneg i32 %smax783 to i64
  %min.iters.check1013 = icmp slt i32 %1, 4
  %n.vec1015 = and i64 %wide.trip.count773, 2147483644 ; 3 uses
  %broadcast.splatinsert1016 = insertelement <2 x double> poison, double %i.gt, i64 0
  %broadcast.splat1017 = shufflevector <2 x double> %broadcast.splatinsert1016, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n1024 = icmp eq i64 %n.vec1015, %wide.trip.count773
  br label %.preheader600

.preheader600:                                    ; preds = %.preheader600.preheader, %._crit_edge637
  %indvars.iv786 = phi i64 [ 0, %.preheader600.preheader ], [ %indvars.iv.next787, %._crit_edge637 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv786
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !68 ; 2 uses
  br i1 %min.iters.check1013, label %scalar.ph1012.preheader, label %vector.body1018

vector.body1018:                                  ; preds = %.preheader600, %vector.body1018
  %index1019 = phi i64 [ %index.next1022, %vector.body1018 ], [ 0, %.preheader600 ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index1019 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load1020 = load <2 x double>, ptr %i.gw, align 8, !tbaa !70
  %wide.load1021 = load <2 x double>, ptr %i.gx, align 8, !tbaa !70
  %i.gy = fmul <2 x double> %broadcast.splat1017, %wide.load1020
  %i.gz = fmul <2 x double> %broadcast.splat1017, %wide.load1021
  store <2 x double> %i.gy, ptr %i.gw, align 8, !tbaa !70
  store <2 x double> %i.gz, ptr %i.gx, align 8, !tbaa !70
  %index.next1022 = add nuw i64 %index1019, 4     ; 2 uses
  %i.ha = icmp eq i64 %index.next1022, %n.vec1015
  br i1 %i.ha, label %middle.block1023, label %vector.body1018, !llvm.loop !21

middle.block1023:                                 ; preds = %vector.body1018
  br i1 %cmp.n1024, label %._crit_edge637, label %scalar.ph1012.preheader

scalar.ph1012.preheader:                          ; preds = %.preheader600, %middle.block1023
  %indvars.iv780.ph = phi i64 [ 0, %.preheader600 ], [ %n.vec1015, %middle.block1023 ]
  br label %scalar.ph1012

._crit_edge637:                                   ; preds = %scalar.ph1012, %middle.block1023
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1 ; 2 uses
  %exitcond790.not = icmp eq i64 %indvars.iv.next787, %wide.trip.count789
  br i1 %exitcond790.not, label %.loopexit602, label %.preheader600, !llvm.loop !22

scalar.ph1012:                                    ; preds = %scalar.ph1012.preheader, %scalar.ph1012
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %scalar.ph1012 ], [ %indvars.iv780.ph, %scalar.ph1012.preheader ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv780 ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !70
  %i.hd = fmul double %i.gt, %i.hc
  store double %i.hd, ptr %i.hb, align 8, !tbaa !70
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %exitcond785.not = icmp eq i64 %indvars.iv.next781, %wide.trip.count784
  br i1 %exitcond785.not, label %._crit_edge637, label %scalar.ph1012, !llvm.loop !23

.loopexit602:                                     ; preds = %._crit_edge637, %bb.af
  %i.he = fcmp ogt double %8, 0.000000e+00
  br i1 %i.he, label %.lr.ph651.preheader, label %.loopexit598

.lr.ph651.preheader:                              ; preds = %.loopexit602
  %i.hf = uitofp nneg i32 %i.fv to double
  %i.hg = add nsw i32 %1, -2
  br label %.lr.ph644.preheader

.loopexit599:                                     ; preds = %.lr.ph644
  %i.hh = add nsw i64 %i.ht, 1
  %i.hi = add nsw i64 %i.hh, %i.hr
  %indvars.iv.next794 = add i32 %indvars.iv793, -1
  %exitcond797.not = icmp eq i32 %i.hs, %i.ft
  br i1 %exitcond797.not, label %._crit_edge652, label %.lr.ph644.preheader, !llvm.loop !24

._crit_edge652:                                   ; preds = %.loopexit599
  %i.hj = fdiv double %i.hz, %i.hf
  %i.hk = fptrunc double %i.hj to float           ; 2 uses
  %i.hl = icmp sgt i32 %i.fw, 0
  br i1 %i.hl, label %.lr.ph656.preheader, label %.loopexit598

.lr.ph656.preheader:                              ; preds = %._crit_edge652
  %wide.trip.count801 = zext nneg i32 %i.fw to i64 ; 3 uses
  %min.iters.check1027 = icmp ult i32 %i.fw, 8
  br i1 %min.iters.check1027, label %.lr.ph656.preheader1116, label %vector.ph1028

vector.ph1028:                                    ; preds = %.lr.ph656.preheader
  %n.vec1029 = and i64 %wide.trip.count801, 2147483640 ; 3 uses
  %broadcast.splatinsert1030 = insertelement <4 x float> poison, float %i.hk, i64 0
  %broadcast.splat1031 = shufflevector <4 x float> %broadcast.splatinsert1030, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %vector.ph1028
  %index1033 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1036, %vector.body1032 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.1477, i64 %index1033 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load1034 = load <4 x float>, ptr %i.hm, align 4, !tbaa !76
  %wide.load1035 = load <4 x float>, ptr %i.hn, align 4, !tbaa !76
  %i.ho = fmul <4 x float> %wide.load1034, %broadcast.splat1031
  %i.hp = fmul <4 x float> %wide.load1035, %broadcast.splat1031
  store <4 x float> %i.ho, ptr %i.hm, align 4, !tbaa !76
  store <4 x float> %i.hp, ptr %i.hn, align 4, !tbaa !76
  %index.next1036 = add nuw i64 %index1033, 8     ; 2 uses
  %i.hq = icmp eq i64 %index.next1036, %n.vec1029
  br i1 %i.hq, label %middle.block1037, label %vector.body1032, !llvm.loop !25

middle.block1037:                                 ; preds = %vector.body1032
  %cmp.n1038 = icmp eq i64 %n.vec1029, %wide.trip.count801
  br i1 %cmp.n1038, label %.loopexit598, label %.lr.ph656.preheader1116

.lr.ph656.preheader1116:                          ; preds = %.lr.ph656.preheader, %middle.block1037
  %indvars.iv798.ph = phi i64 [ 0, %.lr.ph656.preheader ], [ %n.vec1029, %middle.block1037 ]
  br label %.lr.ph656

.lr.ph644.preheader:                              ; preds = %.loopexit599, %.lr.ph651.preheader
  %indvars.iv793 = phi i32 [ %i.hg, %.lr.ph651.preheader ], [ %indvars.iv.next794, %.loopexit599 ] ; 2 uses
  %.0456649 = phi i32 [ 0, %.lr.ph651.preheader ], [ %i.hs, %.loopexit599 ] ; 2 uses
  %.0457648 = phi i64 [ 0, %.lr.ph651.preheader ], [ %i.hi, %.loopexit599 ]
  %.0459647 = phi double [ 0.000000e+00, %.lr.ph651.preheader ], [ %i.hz, %.loopexit599 ]
  %i.hr = zext i32 %indvars.iv793 to i64
  %i.hs = add nuw nsw i32 %.0456649, 1            ; 3 uses
  %.1458639 = shl i64 %.0457648, 32
  %sext = add i64 %.1458639, 4294967296
  %i.ht = ashr exact i64 %sext, 32                ; 2 uses
  br label %.lr.ph644

.lr.ph644:                                        ; preds = %.lr.ph644.preheader, %.lr.ph644
  %indvars.iv791 = phi i64 [ %i.ht, %.lr.ph644.preheader ], [ %indvars.iv.next792, %.lr.ph644 ] ; 2 uses
  %.0455641 = phi i32 [ %i.hs, %.lr.ph644.preheader ], [ %i.ia, %.lr.ph644 ] ; 2 uses
  %.1460640 = phi double [ %.0459647, %.lr.ph644.preheader ], [ %i.hz, %.lr.ph644 ]
  %i.hu = call double @distance_kD(ptr noundef %2, i32 noundef %4, i32 noundef %.0456649, i32 noundef %.0455641) #11
  %i.hv = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv791
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !76
  %i.hx = fpext float %i.hw to double
  %i.hy = fdiv double %i.hu, %i.hx
  %i.hz = fadd double %.1460640, %i.hy            ; 3 uses
  %i.ia = add nuw i32 %.0455641, 1                ; 2 uses
  %indvars.iv.next792 = add nsw i64 %indvars.iv791, 1
  %exitcond796.not = icmp eq i32 %i.ia, %1
  br i1 %exitcond796.not, label %.loopexit599, label %.lr.ph644, !llvm.loop !26

.lr.ph656:                                        ; preds = %.lr.ph656.preheader1116, %.lr.ph656
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %.lr.ph656 ], [ %indvars.iv798.ph, %.lr.ph656.preheader1116 ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.1477, i64 %indvars.iv798 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !76
  %i.id = fmul float %i.ic, %i.hk
  store float %i.id, ptr %i.ib, align 4, !tbaa !76
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1 ; 2 uses
  %exitcond802.not = icmp eq i64 %indvars.iv.next799, %wide.trip.count801
  br i1 %exitcond802.not, label %.loopexit598, label %.lr.ph656, !llvm.loop !27

.loopexit598:                                     ; preds = %.lr.ph656, %middle.block1037, %._crit_edge652, %.loopexit602
  %i.ie = icmp sgt i32 %4, 0                      ; 5 uses
  br i1 %i.ie, label %.lr.ph659.preheader, label %.lr.ph663.preheader

.lr.ph659.preheader:                              ; preds = %.loopexit598
  %wide.trip.count806 = zext nneg i32 %4 to i64
  br label %.lr.ph659

.lr.ph663.preheader:                              ; preds = %.lr.ph659, %.loopexit598
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !68 ; 3 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !70 ; 2 uses
  %smax811 = call i32 @llvm.smax.i32(i32 %1, i32 1) ; 3 uses
  %wide.trip.count812 = zext nneg i32 %smax811 to i64 ; 12 uses
  %min.iters.check1041 = icmp slt i32 %1, 4
  br i1 %min.iters.check1041, label %.lr.ph663.preheader1115, label %vector.ph1042

vector.ph1042:                                    ; preds = %.lr.ph663.preheader
  %n.vec1043 = and i64 %wide.trip.count812, 2147483644 ; 3 uses
  %broadcast.splatinsert1044 = insertelement <2 x double> poison, double %i.ih, i64 0
  %broadcast.splat1045 = shufflevector <2 x double> %broadcast.splatinsert1044, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %vector.ph1042
  %index1047 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1050, %vector.body1046 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %index1047 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %wide.load1048 = load <2 x double>, ptr %i.ii, align 8, !tbaa !70
  %wide.load1049 = load <2 x double>, ptr %i.ij, align 8, !tbaa !70
  %i.ik = fsub <2 x double> %wide.load1048, %broadcast.splat1045
  %i.il = fsub <2 x double> %wide.load1049, %broadcast.splat1045
  store <2 x double> %i.ik, ptr %i.ii, align 8, !tbaa !70
  store <2 x double> %i.il, ptr %i.ij, align 8, !tbaa !70
  %index.next1050 = add nuw i64 %index1047, 4     ; 2 uses
  %i.im = icmp eq i64 %index.next1050, %n.vec1043
  br i1 %i.im, label %middle.block1051, label %vector.body1046, !llvm.loop !28

middle.block1051:                                 ; preds = %vector.body1046
  %cmp.n1052 = icmp eq i64 %n.vec1043, %wide.trip.count812
  br i1 %cmp.n1052, label %._crit_edge664, label %.lr.ph663.preheader1115

.lr.ph663.preheader1115:                          ; preds = %.lr.ph663.preheader, %middle.block1051
  %indvars.iv808.ph = phi i64 [ 0, %.lr.ph663.preheader ], [ %n.vec1043, %middle.block1051 ]
  br label %.lr.ph663

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %.lr.ph659
  %indvars.iv803 = phi i64 [ 0, %.lr.ph659.preheader ], [ %indvars.iv.next804, %.lr.ph659 ] ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv803
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !68
  call void @orthog1(i32 noundef %1, ptr noundef %i.io) #11
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next804, %wide.trip.count806
  br i1 %exitcond807.not, label %.lr.ph663.preheader, label %.lr.ph659, !llvm.loop !29

._crit_edge664:                                   ; preds = %.lr.ph663, %middle.block1051
  %i.ip = sext i32 %4 to i64                      ; 6 uses
  %.not.i = icmp eq i32 %4, 0                     ; 2 uses
  br i1 %.not.i, label %gv_calloc.exit520, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge664
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.iq = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.ir = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.is = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #15 ; 3 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.iv = shl nuw nsw i64 %i.ip, 3
  %i.iw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iu, ptr noundef nonnull @.str.9, i64 noundef %i.iv) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ix = mul nuw nsw i32 %4, %1
  %i.iy = zext nneg i32 %i.ix to i64              ; 3 uses
  %i.iz = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.iy, i64 noundef 4) #15 ; 3 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.al, label %.lr.ph670

bb.al:                                            ; preds = %bb.ak
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.jc = shl nuw nsw i64 %i.iy, 2
  %i.jd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jb, ptr noundef nonnull @.str.9, i64 noundef %i.jc) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit520:                                ; preds = %._crit_edge664
  %i.je = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15
  %i.jf = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
  br label %._crit_edge671

.lr.ph670:                                        ; preds = %bb.ak
  %smax817 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count823 = zext nneg i32 %4 to i64
  %wide.trip.count818 = zext nneg i32 %smax817 to i64
  %min.iters.check1055 = icmp slt i32 %1, 4
  %n.vec1057 = and i64 %wide.trip.count812, 2147483644 ; 3 uses
  %cmp.n1064 = icmp eq i64 %n.vec1057, %wide.trip.count812
  br label %.lr.ph667

.lr.ph663:                                        ; preds = %.lr.ph663.preheader1115, %.lr.ph663
  %indvars.iv808 = phi i64 [ %indvars.iv.next809, %.lr.ph663 ], [ %indvars.iv808.ph, %.lr.ph663.preheader1115 ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv808 ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !70
  %i.ji = fsub double %i.jh, %i.ih
  store double %i.ji, ptr %i.jg, align 8, !tbaa !70
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %exitcond813.not = icmp eq i64 %indvars.iv.next809, %wide.trip.count812
  br i1 %exitcond813.not, label %._crit_edge664, label %.lr.ph663, !llvm.loop !30

._crit_edge671:                                   ; preds = %._crit_edge668, %gv_calloc.exit520
  %i.jj = phi ptr [ %i.jf, %gv_calloc.exit520 ], [ %i.iz, %._crit_edge668 ]
  %i.jk = phi ptr [ %i.je, %gv_calloc.exit520 ], [ %i.is, %._crit_edge668 ] ; 9 uses
  %i.jl = phi i64 [ 0, %gv_calloc.exit520 ], [ %i.iy, %._crit_edge668 ] ; 2 uses
  %i.jm = uitofp nneg i32 %i.fv to double         ; 2 uses
  %i.jn = load i8, ptr @Verbose, align 1, !tbaa !62
  %.not509 = icmp eq i8 %i.jn, 0
  br i1 %.not509, label %bb.an, label %bb.am

.lr.ph667:                                        ; preds = %._crit_edge668, %.lr.ph670
  %indvars.iv820 = phi i64 [ 0, %.lr.ph670 ], [ %indvars.iv.next821, %._crit_edge668 ] ; 4 uses
  %i.jo = mul nuw nsw i64 %indvars.iv820, %wide.trip.count
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jo ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv820
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !77
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv820
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !68 ; 2 uses
  br i1 %min.iters.check1055, label %scalar.ph1054.preheader, label %vector.body1058

vector.body1058:                                  ; preds = %.lr.ph667, %vector.body1058
  %index1059 = phi i64 [ %index.next1062, %vector.body1058 ], [ 0, %.lr.ph667 ] ; 3 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %index1059 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load1060 = load <2 x double>, ptr %i.jt, align 8, !tbaa !70
  %wide.load1061 = load <2 x double>, ptr %i.ju, align 8, !tbaa !70
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index1059
  %9 = shufflevector <2 x double> %wide.load1060, <2 x double> %wide.load1061, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = fptrunc <4 x double> %9 to <4 x float>
  store <4 x float> %10, ptr %i.jv, align 4, !tbaa !76
  %index.next1062 = add nuw i64 %index1059, 4     ; 2 uses
  %i.jw = icmp eq i64 %index.next1062, %n.vec1057
  br i1 %i.jw, label %middle.block1063, label %vector.body1058, !llvm.loop !31

middle.block1063:                                 ; preds = %vector.body1058
  br i1 %cmp.n1064, label %._crit_edge668, label %scalar.ph1054.preheader

scalar.ph1054.preheader:                          ; preds = %.lr.ph667, %middle.block1063
  %indvars.iv814.ph = phi i64 [ 0, %.lr.ph667 ], [ %n.vec1057, %middle.block1063 ]
  br label %scalar.ph1054

._crit_edge668:                                   ; preds = %scalar.ph1054, %middle.block1063
  %indvars.iv.next821 = add nuw nsw i64 %indvars.iv820, 1 ; 2 uses
  %exitcond824.not = icmp eq i64 %indvars.iv.next821, %wide.trip.count823
  br i1 %exitcond824.not, label %._crit_edge671, label %.lr.ph667, !llvm.loop !32

scalar.ph1054:                                    ; preds = %scalar.ph1054.preheader, %scalar.ph1054
  %indvars.iv814 = phi i64 [ %indvars.iv.next815, %scalar.ph1054 ], [ %indvars.iv814.ph, %scalar.ph1054.preheader ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv814
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !70
  %i.jz = fptrunc double %i.jy to float
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv814
  store float %i.jz, ptr %i.ka, align 4, !tbaa !76
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv814, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next815, %wide.trip.count818
  br i1 %exitcond819.not, label %._crit_edge668, label %scalar.ph1054, !llvm.loop !33

bb.am:                                            ; preds = %._crit_edge671
  %i.kb = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.kc = call double @elapsed_sec() #11
  %i.kd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kb, ptr noundef nonnull @.str.7, double noundef %i.kc) #13 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge671
  call void @square_vec(i32 noundef %i.fw, ptr noundef %.1477) #11
  call void @invert_vec(i32 noundef %i.fw, ptr noundef %.1477) #11
  %i.ke = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 8) #15 ; 14 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.ao, label %.preheader597.preheader

bb.ao:                                            ; preds = %bb.an
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.kh = shl nuw nsw i64 %wide.trip.count, 3
  %i.ki = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.9, i64 noundef %i.kh) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

.preheader597.preheader:                          ; preds = %bb.an
  call void @set_vector_val(i32 noundef %1, double noundef 0.000000e+00, ptr noundef nonnull %i.ke) #11
  %i.kj = zext nneg i32 %1 to i64
  %wide.trip.count839 = zext nneg i32 %i.ft to i64
  %invariant.op = add nsw i64 %i.kj, -1
  br label %.preheader597

.preheader597:                                    ; preds = %.preheader597.preheader, %._crit_edge677
  %indvars.iv836 = phi i64 [ 0, %.preheader597.preheader ], [ %indvars.iv.next837, %._crit_edge677 ] ; 4 uses
  %indvars.iv832 = phi i32 [ %1, %.preheader597.preheader ], [ %indvars.iv.next833, %._crit_edge677 ] ; 3 uses
  %.0444681 = phi i32 [ 0, %.preheader597.preheader ], [ %.1445.lcssa, %._crit_edge677 ]
  %i.kk = zext i32 %indvars.iv832 to i64
  %i.kl = add nsw i64 %i.kk, -1                   ; 3 uses
  %.1445672 = add i32 %.0444681, 1                ; 2 uses
  %i.km = icmp slt i64 %indvars.iv836, %invariant.op
  br i1 %i.km, label %.lr.ph676.preheader, label %._crit_edge677

.lr.ph676.preheader:                              ; preds = %.preheader597
  %i.kn = sext i32 %.1445672 to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv836 ; 3 uses
  %xtraiter1129 = and i64 %i.kl, 1
  %i.ko = icmp eq i32 %indvars.iv832, 2
  br i1 %i.ko, label %.lr.ph676.epil.preheader, label %.lr.ph676.preheader.new

.lr.ph676.preheader.new:                          ; preds = %.lr.ph676.preheader
  %unroll_iter = and i64 %i.kl, -2
  br label %.lr.ph676

.lr.ph685.preheader:                              ; preds = %._crit_edge677
  %i.kp = add nsw i64 %wide.trip.count812, -1     ; 2 uses
  %xtraiter1134 = and i64 %wide.trip.count812, 1
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %.lr.ph685.epil.preheader, label %.lr.ph685.preheader.new

.lr.ph685.preheader.new:                          ; preds = %.lr.ph685.preheader
  %i.kr = zext nneg i32 %1 to i64
  %unroll_iter1137 = and i64 %wide.trip.count812, 2147483646
  br label %.lr.ph685

._crit_edge677.loopexit.unr-lcssa:                ; preds = %.lr.ph676
  %lcmp.mod1130.not = icmp eq i64 %xtraiter1129, 0
  br i1 %lcmp.mod1130.not, label %._crit_edge677.loopexit, label %.lr.ph676.epil.preheader

.lr.ph676.epil.preheader:                         ; preds = %._crit_edge677.loopexit.unr-lcssa, %.lr.ph676.preheader
  %indvars.iv827.epil.init = phi i64 [ 1, %.lr.ph676.preheader ], [ %indvars.iv.next828.1, %._crit_edge677.loopexit.unr-lcssa ]
  %indvars.iv825.epil.init = phi i64 [ %i.kn, %.lr.ph676.preheader ], [ %indvars.iv.next826.1, %._crit_edge677.loopexit.unr-lcssa ] ; 2 uses
  %.0443673.epil.init = phi double [ 0.000000e+00, %.lr.ph676.preheader ], [ %i.lm, %._crit_edge677.loopexit.unr-lcssa ]
  %lcmp.mod1133 = trunc i64 %i.kl to i1
  call void @llvm.assume(i1 %lcmp.mod1133)
  %i.ks = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv825.epil.init
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !76
  %i.ku = fpext float %i.kt to double             ; 2 uses
  %i.kv = fadd double %.0443673.epil.init, %i.ku
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827.epil.init ; 2 uses
  %i.kw = load double, ptr %gep.epil, align 8, !tbaa !70
  %i.kx = fsub double %i.kw, %i.ku
  store double %i.kx, ptr %gep.epil, align 8, !tbaa !70
  %indvars.iv.next826.epil = add nsw i64 %indvars.iv825.epil.init, 1
  br label %._crit_edge677.loopexit

._crit_edge677.loopexit:                          ; preds = %._crit_edge677.loopexit.unr-lcssa, %.lr.ph676.epil.preheader
  %.lcssa1114 = phi double [ %i.lm, %._crit_edge677.loopexit.unr-lcssa ], [ %i.kv, %.lr.ph676.epil.preheader ]
  %indvars.iv.next826.lcssa = phi i64 [ %indvars.iv.next826.1, %._crit_edge677.loopexit.unr-lcssa ], [ %indvars.iv.next826.epil, %.lr.ph676.epil.preheader ]
  %i.ky = trunc nsw i64 %indvars.iv.next826.lcssa to i32
  br label %._crit_edge677

._crit_edge677:                                   ; preds = %._crit_edge677.loopexit, %.preheader597
  %.0443.lcssa = phi double [ 0.000000e+00, %.preheader597 ], [ %.lcssa1114, %._crit_edge677.loopexit ]
  %.1445.lcssa = phi i32 [ %.1445672, %.preheader597 ], [ %i.ky, %._crit_edge677.loopexit ]
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv836 ; 2 uses
  %i.la = load double, ptr %i.kz, align 8, !tbaa !70
  %i.lb = fsub double %i.la, %.0443.lcssa
  store double %i.lb, ptr %i.kz, align 8, !tbaa !70
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1 ; 2 uses
  %indvars.iv.next833 = add i32 %indvars.iv832, -1
  %exitcond840.not = icmp eq i64 %indvars.iv.next837, %wide.trip.count839
  br i1 %exitcond840.not, label %.lr.ph685.preheader, label %.preheader597, !llvm.loop !34

.lr.ph676:                                        ; preds = %.lr.ph676, %.lr.ph676.preheader.new
  %indvars.iv827 = phi i64 [ 1, %.lr.ph676.preheader.new ], [ %indvars.iv.next828.1, %.lr.ph676 ] ; 3 uses
  %indvars.iv825 = phi i64 [ %i.kn, %.lr.ph676.preheader.new ], [ %indvars.iv.next826.1, %.lr.ph676 ] ; 3 uses
  %.0443673 = phi double [ 0.000000e+00, %.lr.ph676.preheader.new ], [ %i.lm, %.lr.ph676 ]
  %niter = phi i64 [ 0, %.lr.ph676.preheader.new ], [ %niter.next.1, %.lr.ph676 ]
  %i.lc = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv825
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !76
  %i.le = fpext float %i.ld to double             ; 2 uses
  %i.lf = fadd double %.0443673, %i.le
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827 ; 2 uses
  %i.lg = load double, ptr %gep, align 8, !tbaa !70
  %i.lh = fsub double %i.lg, %i.le
  store double %i.lh, ptr %gep, align 8, !tbaa !70
  %i.li = getelementptr [4 x i8], ptr %.1477, i64 %indvars.iv825
  %i.lj = getelementptr i8, ptr %i.li, i64 4
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !76
  %i.ll = fpext float %i.lk to double             ; 2 uses
  %i.lm = fadd double %i.lf, %i.ll                ; 3 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 2 uses
  %i.lo = load double, ptr %gep.1, align 8, !tbaa !70
  %i.lp = fsub double %i.lo, %i.ll
  store double %i.lp, ptr %gep.1, align 8, !tbaa !70
  %indvars.iv.next828.1 = add nuw nsw i64 %indvars.iv827, 2 ; 2 uses
  %indvars.iv.next826.1 = add nsw i64 %indvars.iv825, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge677.loopexit.unr-lcssa, label %.lr.ph676, !llvm.loop !35

._crit_edge686.unr-lcssa:                         ; preds = %.lr.ph685
  %lcmp.mod1135.not = icmp eq i64 %xtraiter1134, 0
  br i1 %lcmp.mod1135.not, label %._crit_edge686, label %.lr.ph685.epil.preheader

.lr.ph685.epil.preheader:                         ; preds = %._crit_edge686.unr-lcssa, %.lr.ph685.preheader
  %indvars.iv841.epil.init = phi i64 [ 0, %.lr.ph685.preheader ], [ %indvars.iv.next842.1, %._crit_edge686.unr-lcssa ]
  %.0437683.epil.init = phi i32 [ 0, %.lr.ph685.preheader ], [ %i.nb, %._crit_edge686.unr-lcssa ]
  %lcmp.mod1136 = trunc i32 %smax811 to i1
  call void @llvm.assume(i1 %lcmp.mod1136)
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv841.epil.init
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !70
  %i.ls = fptrunc double %i.lr to float
  %i.lt = sext i32 %.0437683.epil.init to i64
  %i.lu = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.lt
  store float %i.ls, ptr %i.lu, align 4, !tbaa !76
  br label %._crit_edge686

._crit_edge686:                                   ; preds = %._crit_edge686.unr-lcssa, %.lr.ph685.epil.preheader
  br i1 %.not.i, label %gv_calloc.exit535.thread, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge686
  %mul.ov.i528 = icmp slt i32 %4, 0
  br i1 %mul.ov.i528, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lv = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.lw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lv, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.lx = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #15 ; 10 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %bb.as, label %gv_calloc.exit530

bb.as:                                            ; preds = %bb.ar
  %i.lz = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.ma = shl nuw nsw i64 %i.ip, 3
  %i.mb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lz, ptr noundef nonnull @.str.9, i64 noundef %i.ma) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit535.thread:                         ; preds = %._crit_edge686
  %i.mc = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15 ; 2 uses
  %i.md = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
  store ptr %i.md, ptr %i.mc, align 8, !tbaa !77
  br label %._crit_edge689

gv_calloc.exit530:                                ; preds = %bb.ar
  %i.me = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.jl, i64 noundef 4) #15 ; 7 uses
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %bb.at, label %gv_calloc.exit535

bb.at:                                            ; preds = %gv_calloc.exit530
  %i.mg = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.mh = shl nuw nsw i64 %i.jl, 2
  %i.mi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mg, ptr noundef nonnull @.str.9, i64 noundef %i.mh) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit535:                                ; preds = %gv_calloc.exit530
  store ptr %i.me, ptr %i.lx, align 8, !tbaa !77
  %.not967 = icmp eq i32 %4, 1
  br i1 %.not967, label %._crit_edge689, label %.lr.ph688.preheader

.lr.ph688.preheader:                              ; preds = %gv_calloc.exit535
  %wide.trip.count854 = zext nneg i32 %4 to i64
  %i.mj = add nsw i64 %wide.trip.count854, -1     ; 2 uses
  %xtraiter1139 = and i64 %i.mj, 3                ; 3 uses
  %i.mk = add nsw i32 %4, -2
  %i.ml = icmp ult i32 %i.mk, 3
  br i1 %i.ml, label %.lr.ph688.epil.preheader, label %.lr.ph688.preheader.new

.lr.ph688.preheader.new:                          ; preds = %.lr.ph688.preheader
  %unroll_iter1142 = and i64 %i.mj, -4
  br label %.lr.ph688

.lr.ph685:                                        ; preds = %.lr.ph685, %.lr.ph685.preheader.new
  %indvars.iv843 = phi i64 [ %i.kr, %.lr.ph685.preheader.new ], [ %indvars.iv.next844.1, %.lr.ph685 ] ; 3 uses
  %indvars.iv841 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %indvars.iv.next842.1, %.lr.ph685 ] ; 3 uses
  %.0437683 = phi i32 [ 0, %.lr.ph685.preheader.new ], [ %i.nb, %.lr.ph685 ] ; 2 uses
  %niter1138 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %niter1138.next.1, %.lr.ph685 ]
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv841
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !70
  %i.mo = fptrunc double %i.mn to float
  %i.mp = sext i32 %.0437683 to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.mp
  store float %i.mo, ptr %i.mq, align 4, !tbaa !76
  %i.mr = trunc nsw i64 %indvars.iv843 to i32
  %i.ms = add nsw i32 %.0437683, %i.mr            ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv841
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !70
  %i.mw = fptrunc double %i.mv to float
  %i.mx = sext i32 %i.ms to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.mx
  store float %i.mw, ptr %i.my, align 4, !tbaa !76
  %indvars.iv.next842.1 = add nuw nsw i64 %indvars.iv841, 2 ; 2 uses
  %i.mz = trunc i64 %indvars.iv843 to i32
  %i.na = add i32 %i.mz, -1
  %i.nb = add nsw i32 %i.ms, %i.na                ; 2 uses
  %indvars.iv.next844.1 = add nsw i64 %indvars.iv843, -2
  %niter1138.next.1 = add i64 %niter1138, 2       ; 2 uses
  %niter1138.ncmp.1 = icmp eq i64 %niter1138.next.1, %unroll_iter1137
  br i1 %niter1138.ncmp.1, label %._crit_edge686.unr-lcssa, label %.lr.ph685, !llvm.loop !36

._crit_edge689.loopexit.unr-lcssa:                ; preds = %.lr.ph688
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1139, 0
  br i1 %lcmp.mod1140.not, label %._crit_edge689, label %.lr.ph688.epil.preheader

.lr.ph688.epil.preheader:                         ; preds = %._crit_edge689.loopexit.unr-lcssa, %.lr.ph688.preheader
  %indvars.iv851.epil.init = phi i64 [ 1, %.lr.ph688.preheader ], [ %indvars.iv.next852.3, %._crit_edge689.loopexit.unr-lcssa ]
  %lcmp.mod1141 = icmp ne i64 %xtraiter1139, 0
  call void @llvm.assume(i1 %lcmp.mod1141)
  br label %.lr.ph688.epil

.lr.ph688.epil:                                   ; preds = %.lr.ph688.epil, %.lr.ph688.epil.preheader
  %indvars.iv851.epil = phi i64 [ %indvars.iv851.epil.init, %.lr.ph688.epil.preheader ], [ %indvars.iv.next852.epil, %.lr.ph688.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph688.epil.preheader ], [ %epil.iter.next, %.lr.ph688.epil ]
  %i.nc = mul nuw nsw i64 %indvars.iv851.epil, %wide.trip.count
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.nc
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv851.epil
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !77
  %indvars.iv.next852.epil = add nuw nsw i64 %indvars.iv851.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1139
  br i1 %epil.iter.cmp.not, label %._crit_edge689, label %.lr.ph688.epil, !llvm.loop !37

._crit_edge689:                                   ; preds = %._crit_edge689.loopexit.unr-lcssa, %.lr.ph688.epil, %gv_calloc.exit535.thread, %gv_calloc.exit535
  %i.nf = phi ptr [ %i.mc, %gv_calloc.exit535.thread ], [ %i.lx, %gv_calloc.exit535 ], [ %i.lx, %.lr.ph688.epil ], [ %i.lx, %._crit_edge689.loopexit.unr-lcssa ] ; 7 uses
  %i.ng = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 4) #15 ; 8 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %bb.au, label %gv_calloc.exit540

bb.au:                                            ; preds = %._crit_edge689
  %i.ni = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.nj = shl nuw nsw i64 %wide.trip.count, 2
  %i.nk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ni, ptr noundef nonnull @.str.9, i64 noundef %i.nj) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit540:                                ; preds = %._crit_edge689
  %i.nl = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 4) #15 ; 18 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %gv_calloc.exit540
  %i.nn = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.no = shl nuw nsw i64 %wide.trip.count, 2
  %i.np = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nn, ptr noundef nonnull @.str.9, i64 noundef %i.no) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.aw:                                            ; preds = %gv_calloc.exit540
  %i.nq = sext i32 %i.fw to i64                   ; 3 uses
  %mul.ov.i548 = icmp slt i32 %i.fw, 0
  br i1 %mul.ov.i548, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.nr = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.ns = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nr, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.nq, i64 noundef 4) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.nt = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.nq, i64 noundef 4) #15 ; 10 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %bb.az, label %gv_calloc.exit550

bb.az:                                            ; preds = %bb.ay
  %i.nv = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.nw = shl nuw nsw i64 %i.nq, 2
  %i.nx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nv, ptr noundef nonnull @.str.9, i64 noundef %i.nw) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit550:                                ; preds = %bb.ay
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.nz = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.oa = load i32, ptr %i.c, align 4, !tbaa !72
  %i.ob = call ptr @initConstrainedMajorization(ptr noundef nonnull %.1477, i32 noundef %1, ptr noundef %i.ny, ptr noundef %i.nz, i32 noundef %i.oa) #11 ; 3 uses
  %i.oc = icmp slt i32 %7, 1
  br i1 %i.oc, label %.preheader591, label %.lr.ph733

.lr.ph733:                                        ; preds = %gv_calloc.exit550
  %i.od = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.oe = fptrunc double %8 to float
  %i.of = zext nneg i32 %1 to i64
  %wide.trip.count880 = zext nneg i32 %i.ft to i64
  %wide.trip.count859 = zext nneg i32 %4 to i64
  %wide.trip.count895 = zext nneg i32 %4 to i64
  %wide.trip.count900 = zext nneg i32 %4 to i64
  %wide.trip.count905 = zext nneg i32 %4 to i64
  %wide.trip.count910 = zext nneg i32 %4 to i64
  %exitcond911.peel.not = icmp eq i32 %4, 1
  %exitcond911.peel916.not = icmp eq i32 %4, 2
  %xtraiter1152 = and i64 %wide.trip.count812, 1
  %i.og = icmp eq i64 %i.kp, 0
  %unroll_iter1156 = and i64 %wide.trip.count812, 2147483646
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1152, 0
  %lcmp.mod1155 = trunc i32 %smax811 to i1
  br label %.lr.ph708.preheader

.lr.ph688:                                        ; preds = %.lr.ph688, %.lr.ph688.preheader.new
  %indvars.iv851 = phi i64 [ 1, %.lr.ph688.preheader.new ], [ %indvars.iv.next852.3, %.lr.ph688 ] ; 6 uses
  %niter1143 = phi i64 [ 0, %.lr.ph688.preheader.new ], [ %niter1143.next.3, %.lr.ph688 ]
  %i.oh = mul nuw nsw i64 %indvars.iv851, %wide.trip.count
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv851
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !77
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 1 ; 2 uses
  %i.ok = mul nuw nsw i64 %indvars.iv.next852, %wide.trip.count
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.ok
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next852
  store ptr %i.ol, ptr %i.om, align 8, !tbaa !77
  %indvars.iv.next852.1 = add nuw nsw i64 %indvars.iv851, 2 ; 2 uses
  %i.on = mul nuw nsw i64 %indvars.iv.next852.1, %wide.trip.count
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.on
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next852.1
  store ptr %i.oo, ptr %i.op, align 8, !tbaa !77
  %indvars.iv.next852.2 = add nuw nsw i64 %indvars.iv851, 3 ; 2 uses
  %i.oq = mul nuw nsw i64 %indvars.iv.next852.2, %wide.trip.count
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.oq
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next852.2
  store ptr %i.or, ptr %i.os, align 8, !tbaa !77
  %indvars.iv.next852.3 = add nuw nsw i64 %indvars.iv851, 4 ; 2 uses
  %niter1143.next.3 = add nuw i64 %niter1143, 4   ; 2 uses
  %niter1143.ncmp.3 = icmp eq i64 %niter1143.next.3, %unroll_iter1142
  br i1 %niter1143.ncmp.3, label %._crit_edge689.loopexit.unr-lcssa, label %.lr.ph688, !llvm.loop !38

.preheader591:                                    ; preds = %._crit_edge730, %gv_calloc.exit550
  %.2441.lcssa = phi i32 [ 0, %gv_calloc.exit550 ], [ %i.ud, %._crit_edge730 ]
  br i1 %i.ie, label %.preheader.preheader, label %._crit_edge739.split

.preheader.preheader:                             ; preds = %.preheader591
  %smax922 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count928 = zext nneg i32 %4 to i64
  %wide.trip.count923 = zext nneg i32 %smax922 to i64
  %min.iters.check1093 = icmp slt i32 %1, 4
  %n.vec1095 = and i64 %wide.trip.count812, 2147483644 ; 3 uses
  %cmp.n1102 = icmp eq i64 %n.vec1095, %wide.trip.count812
  br label %.preheader

.lr.ph708.preheader:                              ; preds = %._crit_edge730, %.lr.ph733
  %.0434732 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph733 ], [ %.1.lcssa, %._crit_edge730 ] ; 3 uses
  %.2441731 = phi i32 [ 0, %.lr.ph733 ], [ %i.ud, %._crit_edge730 ] ; 2 uses
  call void @set_vector_val(i32 noundef %1, double noundef 0.000000e+00, ptr noundef nonnull %i.ke) #11
  call void @sqrt_vecf(i32 noundef %i.fw, ptr noundef nonnull %.1477, ptr noundef nonnull %i.nt) #11
  br label %.lr.ph708

.lr.ph708:                                        ; preds = %.lr.ph708.preheader, %._crit_edge702
  %indvars.iv877 = phi i64 [ 0, %.lr.ph708.preheader ], [ %indvars.iv.next878, %._crit_edge702 ] ; 6 uses
  %indvars.iv864 = phi i32 [ %i.ft, %.lr.ph708.preheader ], [ %indvars.iv.next865, %._crit_edge702 ] ; 5 uses
  %.0432705 = phi i32 [ 0, %.lr.ph708.preheader ], [ %.1433.lcssa, %._crit_edge702 ] ; 2 uses
  %i.ot = trunc nuw nsw i64 %indvars.iv877 to i32
  %i.ou = xor i32 %i.ot, -1
  %i.ov = add nsw i32 %1, %i.ou                   ; 6 uses
  call void @set_vector_valf(i32 noundef %1, float noundef 0.000000e+00, ptr noundef nonnull %i.nl) #11
  br i1 %i.ie, label %.lr.ph692, label %._crit_edge693

._crit_edge693:                                   ; preds = %.lr.ph692, %.lr.ph708
  call void @invert_sqrt_vec(i32 noundef %i.ov, ptr noundef nonnull %i.nl) #11
  %i.ow = icmp sgt i32 %i.ov, 0
  br i1 %i.ow, label %.lr.ph696.preheader, label %.preheader592.thread

.preheader592.thread:                             ; preds = %._crit_edge693
  %.1433697954 = add i32 %.0432705, 1
  br label %._crit_edge702

.lr.ph696.preheader:                              ; preds = %._crit_edge693
  %wide.trip.count866 = zext i32 %indvars.iv864 to i64 ; 5 uses
  %min.iters.check1067 = icmp ult i32 %indvars.iv864, 8
  br i1 %min.iters.check1067, label %.lr.ph696.preheader1109, label %vector.ph1068

vector.ph1068:                                    ; preds = %.lr.ph696.preheader
  %n.vec1069 = and i64 %wide.trip.count866, 4294967288 ; 3 uses
  br label %vector.body1070

vector.body1070:                                  ; preds = %pred.store.continue1087, %vector.ph1068
  %index1071 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1088, %pred.store.continue1087 ] ; 9 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index1071 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load1072 = load <4 x float>, ptr %i.ox, align 4, !tbaa !76 ; 2 uses
  %wide.load1073 = load <4 x float>, ptr %i.oy, align 4, !tbaa !76 ; 2 uses
  %i.oz = fcmp oge <4 x float> %wide.load1072, splat (float f0x7F7FFFFF)
  %i.pa = fcmp oge <4 x float> %wide.load1073, splat (float f0x7F7FFFFF)
  %i.pb = fcmp olt <4 x float> %wide.load1072, zeroinitializer
  %i.pc = fcmp olt <4 x float> %wide.load1073, zeroinitializer
  %i.pd = or <4 x i1> %i.oz, %i.pb                ; 4 uses
  %i.pe = or <4 x i1> %i.pa, %i.pc                ; 4 uses
  %i.pf = extractelement <4 x i1> %i.pd, i64 0
  br i1 %i.pf, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1070
  store float 0.000000e+00, ptr %i.ox, align 4, !tbaa !76
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1070
  %i.pg = extractelement <4 x i1> %i.pd, i64 1
  br i1 %i.pg, label %pred.store.if1074, label %pred.store.continue1075

pred.store.if1074:                                ; preds = %pred.store.continue
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index1071
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store float 0.000000e+00, ptr %i.pi, align 4, !tbaa !76
  br label %pred.store.continue1075

pred.store.continue1075:                          ; preds = %pred.store.if1074, %pred.store.continue
  %i.pj = extractelement <4 x i1> %i.pd, i64 2
  br i1 %i.pj, label %pred.store.if1076, label %pred.store.continue1077

pred.store.if1076:                                ; preds = %pred.store.continue1075
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index1071
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store float 0.000000e+00, ptr %i.pl, align 4, !tbaa !76
  br label %pred.store.continue1077

pred.store.continue1077:                          ; preds = %pred.store.if1076, %pred.store.continue1075
  %i.pm = extractelement <4 x i1> %i.pd, i64 3
  br i1 %i.pm, label %pred.store.if1078, label %pred.store.continue1079

pred.store.if1078:                                ; preds = %pred.store.continue1077
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index1071
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  store float 0.000000e+00, ptr %i.po, align 4, !tbaa !76
  br label %pred.store.continue1079

pred.store.continue1079:                          ; preds = %pred.store.if1078, %pred.store.continue1077
  %i.pp = extractelement <4 x i1> %i.pe, i64 0
  br i1 %i.pp, label %pred.store.if1080, label %pred.store.continue1081

pred.store.if1080:                                ; preds = %pred.store.continue1079
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index1071
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store float 0.000000e+00, ptr %i.pr, align 4, !tbaa !76
  br label %pred.store.continue1081

pred.store.continue1081:                          ; preds = %pred.store.if1080, %pred.store.continue1079
  %i.ps = extractelement <4 x i1> %i.pe, i64 1
  br i1 %i.ps, label %pred.store.if1082, label %pred.store.continue1083

pred.store.if1082:                                ; preds = %pred.store.continue1081
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index1071
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 20
  store float 0.000000e+00, ptr %i.pu, align 4, !tbaa !76
  br label %pred.store.continue1083

pred.store.continue1083:                          ; preds = %pred.store.if1082, %pred.store.continue1081
  %i.pv = extractelement <4 x i1> %i.pe, i64 2
  br i1 %i.pv, label %pred.store.if1084, label %pred.store.continue1085

pred.store.if1084:                                ; preds = %pred.store.continue1083
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index1071
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  store float 0.000000e+00, ptr %i.px, align 4, !tbaa !76
  br label %pred.store.continue1085

pred.store.continue1085:                          ; preds = %pred.store.if1084, %pred.store.continue1083
  %i.py = extractelement <4 x i1> %i.pe, i64 3
  br i1 %i.py, label %pred.store.if1086, label %pred.store.continue1087

pred.store.if1086:                                ; preds = %pred.store.continue1085
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index1071
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 28
  store float 0.000000e+00, ptr %i.qa, align 4, !tbaa !76
  br label %pred.store.continue1087

pred.store.continue1087:                          ; preds = %pred.store.if1086, %pred.store.continue1085
  %index.next1088 = add nuw i64 %index1071, 8     ; 2 uses
  %i.qb = icmp eq i64 %index.next1088, %n.vec1069
  br i1 %i.qb, label %middle.block1089, label %vector.body1070, !llvm.loop !39

middle.block1089:                                 ; preds = %pred.store.continue1087
  %cmp.n1090 = icmp eq i64 %n.vec1069, %wide.trip.count866
  br i1 %cmp.n1090, label %.lr.ph701.preheader, label %.lr.ph696.preheader1109

.lr.ph696.preheader1109:                          ; preds = %.lr.ph696.preheader, %middle.block1089
  %indvars.iv861.ph = phi i64 [ 0, %.lr.ph696.preheader ], [ %n.vec1069, %middle.block1089 ]
  br label %.lr.ph696

.lr.ph692:                                        ; preds = %.lr.ph708, %.lr.ph692
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %.lr.ph692 ], [ 0, %.lr.ph708 ] ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv856 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !77
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %indvars.iv877
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !76
  call void @set_vector_valf(i32 noundef %i.ov, float noundef %i.qf, ptr noundef nonnull %i.ng) #11
  %i.qg = load ptr, ptr %i.qc, align 8, !tbaa !77
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %indvars.iv877
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  call void @vectors_mult_additionf(i32 noundef %i.ov, ptr noundef nonnull %i.ng, float noundef -1.000000e+00, ptr noundef nonnull %i.qi) #11
  call void @square_vec(i32 noundef %i.ov, ptr noundef nonnull %i.ng) #11
  call void @vectors_additionf(i32 noundef %i.ov, ptr noundef nonnull %i.ng, ptr noundef nonnull %i.nl, ptr noundef nonnull %i.nl) #11
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %exitcond860.not = icmp eq i64 %indvars.iv.next857, %wide.trip.count859
  br i1 %exitcond860.not, label %._crit_edge693, label %.lr.ph692, !llvm.loop !40

.lr.ph701.preheader:                              ; preds = %bb.bb, %middle.block1089
  %.1433697 = add i32 %.0432705, 1
  %i.qj = sext i32 %.1433697 to i64               ; 2 uses
  %invariant.gep965 = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv877 ; 3 uses
end_hunk_0
