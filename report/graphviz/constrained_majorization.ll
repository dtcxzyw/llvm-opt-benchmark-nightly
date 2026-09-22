Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@stress_majorization_with_hierarchy:bb.a

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
  %smax811 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count812 = zext nneg i32 %smax811 to i64 ; 7 uses
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
  %i.jv = fptrunc <2 x double> %wide.load1060 to <2 x float>
  %i.jw = fptrunc <2 x double> %wide.load1061 to <2 x float>
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index1059 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store <2 x float> %i.jv, ptr %i.jx, align 4, !tbaa !76
  store <2 x float> %i.jw, ptr %i.jy, align 4, !tbaa !76
  %index.next1062 = add nuw i64 %index1059, 4     ; 2 uses
  %i.jz = icmp eq i64 %index.next1062, %n.vec1057
  br i1 %i.jz, label %middle.block1063, label %vector.body1058, !llvm.loop !31

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
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv814
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !70
  %i.kc = fptrunc double %i.kb to float
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv814
  store float %i.kc, ptr %i.kd, align 4, !tbaa !76
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv814, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next815, %wide.trip.count818
  br i1 %exitcond819.not, label %._crit_edge668, label %scalar.ph1054, !llvm.loop !33

bb.am:                                            ; preds = %._crit_edge671
  %i.ke = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.kf = call double @elapsed_sec() #11
  %i.kg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ke, ptr noundef nonnull @.str.7, double noundef %i.kf) #13 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge671
  call void @square_vec(i32 noundef %i.fw, ptr noundef %.1477) #11
  call void @invert_vec(i32 noundef %i.fw, ptr noundef %.1477) #11
  %i.kh = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 8) #15 ; 14 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.ao, label %.preheader597.preheader

bb.ao:                                            ; preds = %bb.an
  %i.kj = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.kk = shl nuw nsw i64 %wide.trip.count, 3
  %i.kl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kj, ptr noundef nonnull @.str.9, i64 noundef %i.kk) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

.preheader597.preheader:                          ; preds = %bb.an
  call void @set_vector_val(i32 noundef %1, double noundef 0.000000e+00, ptr noundef nonnull %i.kh) #11
  %9 = zext nneg i32 %1 to i64
  %wide.trip.count839 = zext nneg i32 %i.ft to i64
  %invariant.op = add nsw i64 %9, -1
  br label %.preheader597

.preheader597:                                    ; preds = %.preheader597.preheader, %._crit_edge677
  %indvars.iv836 = phi i64 [ 0, %.preheader597.preheader ], [ %indvars.iv.next837, %._crit_edge677 ] ; 4 uses
  %indvars.iv832 = phi i32 [ %1, %.preheader597.preheader ], [ %indvars.iv.next833, %._crit_edge677 ] ; 3 uses
  %.0444681 = phi i32 [ 0, %.preheader597.preheader ], [ %.1445.lcssa, %._crit_edge677 ]
  %i.km = zext i32 %indvars.iv832 to i64
  %i.kn = add nsw i64 %i.km, -1                   ; 3 uses
  %.1445672 = add i32 %.0444681, 1                ; 2 uses
  %10 = icmp slt i64 %indvars.iv836, %invariant.op
  br i1 %10, label %.lr.ph676.preheader, label %._crit_edge677

.lr.ph676.preheader:                              ; preds = %.preheader597
  %i.ko = sext i32 %.1445672 to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv836 ; 3 uses
  %xtraiter1129 = and i64 %i.kn, 1
  %i.kp = icmp eq i32 %indvars.iv832, 2
  br i1 %i.kp, label %.lr.ph676.epil.preheader, label %.lr.ph676.preheader.new

.lr.ph676.preheader.new:                          ; preds = %.lr.ph676.preheader
  %unroll_iter = and i64 %i.kn, -2
  br label %.lr.ph676

.lr.ph685.preheader:                              ; preds = %._crit_edge677
  %smax848 = call i32 @llvm.smax.i32(i32 %1, i32 1) ; 3 uses
  %wide.trip.count849 = zext nneg i32 %smax848 to i64 ; 5 uses
  %i.kq = add nsw i64 %wide.trip.count849, -1     ; 2 uses
  %xtraiter1134 = and i64 %wide.trip.count849, 1
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %.lr.ph685.epil.preheader, label %.lr.ph685.preheader.new

.lr.ph685.preheader.new:                          ; preds = %.lr.ph685.preheader
  %i.ks = zext nneg i32 %1 to i64
  %unroll_iter1137 = and i64 %wide.trip.count849, 2147483646
  br label %.lr.ph685

._crit_edge677.loopexit.unr-lcssa:                ; preds = %.lr.ph676
  %lcmp.mod1130.not = icmp eq i64 %xtraiter1129, 0
  br i1 %lcmp.mod1130.not, label %._crit_edge677.loopexit, label %.lr.ph676.epil.preheader

.lr.ph676.epil.preheader:                         ; preds = %._crit_edge677.loopexit.unr-lcssa, %.lr.ph676.preheader
  %indvars.iv827.epil.init = phi i64 [ 1, %.lr.ph676.preheader ], [ %indvars.iv.next828.1, %._crit_edge677.loopexit.unr-lcssa ]
  %indvars.iv825.epil.init = phi i64 [ %i.ko, %.lr.ph676.preheader ], [ %indvars.iv.next826.1, %._crit_edge677.loopexit.unr-lcssa ] ; 2 uses
  %.0443673.epil.init = phi double [ 0.000000e+00, %.lr.ph676.preheader ], [ %i.ln, %._crit_edge677.loopexit.unr-lcssa ]
  %lcmp.mod1133 = trunc i64 %i.kn to i1
  call void @llvm.assume(i1 %lcmp.mod1133)
  %i.kt = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv825.epil.init
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !76
  %i.kv = fpext float %i.ku to double             ; 2 uses
  %i.kw = fadd double %.0443673.epil.init, %i.kv
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827.epil.init ; 2 uses
  %i.kx = load double, ptr %gep.epil, align 8, !tbaa !70
  %i.ky = fsub double %i.kx, %i.kv
  store double %i.ky, ptr %gep.epil, align 8, !tbaa !70
  %indvars.iv.next826.epil = add nsw i64 %indvars.iv825.epil.init, 1
  br label %._crit_edge677.loopexit

._crit_edge677.loopexit:                          ; preds = %._crit_edge677.loopexit.unr-lcssa, %.lr.ph676.epil.preheader
  %.lcssa1114 = phi double [ %i.ln, %._crit_edge677.loopexit.unr-lcssa ], [ %i.kw, %.lr.ph676.epil.preheader ]
  %indvars.iv.next826.lcssa = phi i64 [ %indvars.iv.next826.1, %._crit_edge677.loopexit.unr-lcssa ], [ %indvars.iv.next826.epil, %.lr.ph676.epil.preheader ]
  %i.kz = trunc nsw i64 %indvars.iv.next826.lcssa to i32
  br label %._crit_edge677

._crit_edge677:                                   ; preds = %._crit_edge677.loopexit, %.preheader597
  %.0443.lcssa = phi double [ 0.000000e+00, %.preheader597 ], [ %.lcssa1114, %._crit_edge677.loopexit ]
  %.1445.lcssa = phi i32 [ %.1445672, %.preheader597 ], [ %i.kz, %._crit_edge677.loopexit ]
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv836 ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !70
  %i.lc = fsub double %i.lb, %.0443.lcssa
  store double %i.lc, ptr %i.la, align 8, !tbaa !70
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1 ; 2 uses
  %indvars.iv.next833 = add i32 %indvars.iv832, -1
  %exitcond840.not = icmp eq i64 %indvars.iv.next837, %wide.trip.count839
  br i1 %exitcond840.not, label %.lr.ph685.preheader, label %.preheader597, !llvm.loop !34

.lr.ph676:                                        ; preds = %.lr.ph676, %.lr.ph676.preheader.new
  %indvars.iv827 = phi i64 [ 1, %.lr.ph676.preheader.new ], [ %indvars.iv.next828.1, %.lr.ph676 ] ; 3 uses
  %indvars.iv825 = phi i64 [ %i.ko, %.lr.ph676.preheader.new ], [ %indvars.iv.next826.1, %.lr.ph676 ] ; 3 uses
  %.0443673 = phi double [ 0.000000e+00, %.lr.ph676.preheader.new ], [ %i.ln, %.lr.ph676 ]
  %niter = phi i64 [ 0, %.lr.ph676.preheader.new ], [ %niter.next.1, %.lr.ph676 ]
  %i.ld = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv825
  %i.le = load float, ptr %i.ld, align 4, !tbaa !76
  %i.lf = fpext float %i.le to double             ; 2 uses
  %i.lg = fadd double %.0443673, %i.lf
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827 ; 2 uses
  %i.lh = load double, ptr %gep, align 8, !tbaa !70
  %i.li = fsub double %i.lh, %i.lf
  store double %i.li, ptr %gep, align 8, !tbaa !70
  %i.lj = getelementptr [4 x i8], ptr %.1477, i64 %indvars.iv825
  %i.lk = getelementptr i8, ptr %i.lj, i64 4
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !76
  %i.lm = fpext float %i.ll to double             ; 2 uses
  %i.ln = fadd double %i.lg, %i.lm                ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8 ; 2 uses
  %i.lp = load double, ptr %gep.1, align 8, !tbaa !70
  %i.lq = fsub double %i.lp, %i.lm
  store double %i.lq, ptr %gep.1, align 8, !tbaa !70
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
  %.0437683.epil.init = phi i32 [ 0, %.lr.ph685.preheader ], [ %i.nc, %._crit_edge686.unr-lcssa ]
  %lcmp.mod1136 = trunc i32 %smax848 to i1
  call void @llvm.assume(i1 %lcmp.mod1136)
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv841.epil.init
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !70
  %i.lt = fptrunc double %i.ls to float
  %i.lu = sext i32 %.0437683.epil.init to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.lu
  store float %i.lt, ptr %i.lv, align 4, !tbaa !76
  br label %._crit_edge686

._crit_edge686:                                   ; preds = %._crit_edge686.unr-lcssa, %.lr.ph685.epil.preheader
  br i1 %.not.i, label %gv_calloc.exit535.thread, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge686
  %mul.ov.i528 = icmp slt i32 %4, 0
  br i1 %mul.ov.i528, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lw = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.lx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lw, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ly = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.ip, i64 noundef 8) #15 ; 10 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %bb.as, label %gv_calloc.exit530

bb.as:                                            ; preds = %bb.ar
  %i.ma = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.mb = shl nuw nsw i64 %i.ip, 3
  %i.mc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ma, ptr noundef nonnull @.str.9, i64 noundef %i.mb) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit535.thread:                         ; preds = %._crit_edge686
  %i.md = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15 ; 2 uses
  %i.me = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
  store ptr %i.me, ptr %i.md, align 8, !tbaa !77
  br label %._crit_edge689

gv_calloc.exit530:                                ; preds = %bb.ar
  %i.mf = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.jl, i64 noundef 4) #15 ; 7 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.at, label %gv_calloc.exit535

bb.at:                                            ; preds = %gv_calloc.exit530
  %i.mh = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.mi = shl nuw nsw i64 %i.jl, 2
  %i.mj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mh, ptr noundef nonnull @.str.9, i64 noundef %i.mi) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit535:                                ; preds = %gv_calloc.exit530
  store ptr %i.mf, ptr %i.ly, align 8, !tbaa !77
  %.not967 = icmp eq i32 %4, 1
  br i1 %.not967, label %._crit_edge689, label %.lr.ph688.preheader

.lr.ph688.preheader:                              ; preds = %gv_calloc.exit535
  %wide.trip.count854 = zext nneg i32 %4 to i64
  %i.mk = add nsw i64 %wide.trip.count854, -1     ; 2 uses
  %xtraiter1139 = and i64 %i.mk, 3                ; 3 uses
  %i.ml = add nsw i32 %4, -2
  %i.mm = icmp ult i32 %i.ml, 3
  br i1 %i.mm, label %.lr.ph688.epil.preheader, label %.lr.ph688.preheader.new

.lr.ph688.preheader.new:                          ; preds = %.lr.ph688.preheader
  %unroll_iter1142 = and i64 %i.mk, -4
  br label %.lr.ph688

.lr.ph685:                                        ; preds = %.lr.ph685, %.lr.ph685.preheader.new
  %indvars.iv843 = phi i64 [ %i.ks, %.lr.ph685.preheader.new ], [ %indvars.iv.next844.1, %.lr.ph685 ] ; 3 uses
  %indvars.iv841 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %indvars.iv.next842.1, %.lr.ph685 ] ; 3 uses
  %.0437683 = phi i32 [ 0, %.lr.ph685.preheader.new ], [ %i.nc, %.lr.ph685 ] ; 2 uses
  %niter1138 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %niter1138.next.1, %.lr.ph685 ]
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv841
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !70
  %i.mp = fptrunc double %i.mo to float
  %i.mq = sext i32 %.0437683 to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.mq
  store float %i.mp, ptr %i.mr, align 4, !tbaa !76
  %i.ms = trunc nsw i64 %indvars.iv843 to i32
  %i.mt = add nsw i32 %.0437683, %i.ms            ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv841
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !70
  %i.mx = fptrunc double %i.mw to float
  %i.my = sext i32 %i.mt to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.my
  store float %i.mx, ptr %i.mz, align 4, !tbaa !76
  %indvars.iv.next842.1 = add nuw nsw i64 %indvars.iv841, 2 ; 2 uses
  %i.na = trunc i64 %indvars.iv843 to i32
  %i.nb = add i32 %i.na, -1
  %i.nc = add nsw i32 %i.mt, %i.nb                ; 2 uses
  %indvars.iv.next844.1 = add nsw i64 %indvars.iv843, -2
  %niter1138.next.1 = add i64 %niter1138, 2       ; 2 uses
  %niter1138.ncmp.1 = icmp eq i64 %niter1138.next.1, %unroll_iter1137
  br i1 %niter1138.ncmp.1, label %._crit_edge686.unr-lcssa, label %.lr.ph685, !llvm.loop !36

._crit_edge689.loopexit.unr-lcssa:                ; preds = %.lr.ph688
end_hunk_0
