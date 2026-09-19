Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/constrained_majorization?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@stress_majorization_with_hierarchy:bb.a

.loopexit598:                                     ; preds = %.lr.ph656, %middle.block1037, %._crit_edge652, %.loopexit602
  %i.if = icmp sgt i32 %4, 0                      ; 5 uses
  br i1 %i.if, label %.lr.ph659.preheader, label %.lr.ph663.preheader

.lr.ph659.preheader:                              ; preds = %.loopexit598
  %wide.trip.count806 = zext nneg i32 %4 to i64
  br label %.lr.ph659

.lr.ph663.preheader:                              ; preds = %.lr.ph659, %.loopexit598
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !68 ; 3 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !70 ; 2 uses
  %smax811 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count812 = zext nneg i32 %smax811 to i64 ; 7 uses
  %min.iters.check1041 = icmp slt i32 %1, 4
  br i1 %min.iters.check1041, label %.lr.ph663.preheader1115, label %vector.ph1042

vector.ph1042:                                    ; preds = %.lr.ph663.preheader
  %n.vec1043 = and i64 %wide.trip.count812, 2147483644 ; 3 uses
  %broadcast.splatinsert1044 = insertelement <2 x double> poison, double %i.ii, i64 0
  %broadcast.splat1045 = shufflevector <2 x double> %broadcast.splatinsert1044, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %vector.ph1042
  %index1047 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1050, %vector.body1046 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %index1047 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  %wide.load1048 = load <2 x double>, ptr %i.ij, align 8, !tbaa !70
  %wide.load1049 = load <2 x double>, ptr %i.ik, align 8, !tbaa !70
  %i.il = fsub <2 x double> %wide.load1048, %broadcast.splat1045
  %i.im = fsub <2 x double> %wide.load1049, %broadcast.splat1045
  store <2 x double> %i.il, ptr %i.ij, align 8, !tbaa !70
  store <2 x double> %i.im, ptr %i.ik, align 8, !tbaa !70
  %index.next1050 = add nuw i64 %index1047, 4     ; 2 uses
  %i.in = icmp eq i64 %index.next1050, %n.vec1043
  br i1 %i.in, label %middle.block1051, label %vector.body1046, !llvm.loop !28

middle.block1051:                                 ; preds = %vector.body1046
  %cmp.n1052 = icmp eq i64 %n.vec1043, %wide.trip.count812
  br i1 %cmp.n1052, label %._crit_edge664, label %.lr.ph663.preheader1115

.lr.ph663.preheader1115:                          ; preds = %.lr.ph663.preheader, %middle.block1051
  %indvars.iv808.ph = phi i64 [ 0, %.lr.ph663.preheader ], [ %n.vec1043, %middle.block1051 ]
  br label %.lr.ph663

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %.lr.ph659
  %indvars.iv803 = phi i64 [ 0, %.lr.ph659.preheader ], [ %indvars.iv.next804, %.lr.ph659 ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv803
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !68
  call void @orthog1(i32 noundef %1, ptr noundef %i.ip) #11
  %indvars.iv.next804 = add nuw nsw i64 %indvars.iv803, 1 ; 2 uses
  %exitcond807.not = icmp eq i64 %indvars.iv.next804, %wide.trip.count806
  br i1 %exitcond807.not, label %.lr.ph663.preheader, label %.lr.ph659, !llvm.loop !29

._crit_edge664:                                   ; preds = %.lr.ph663, %middle.block1051
  %i.iq = sext i32 %4 to i64                      ; 6 uses
  %.not.i = icmp eq i32 %4, 0                     ; 2 uses
  br i1 %.not.i, label %gv_calloc.exit520, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge664
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ir = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ir, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.iq, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.it = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.iq, i64 noundef 8) #15 ; 3 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.iv = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.iw = shl nuw nsw i64 %i.iq, 3
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.9, i64 noundef %i.iw) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.iy = mul nuw nsw i32 %4, %1
  %i.iz = zext nneg i32 %i.iy to i64              ; 3 uses
  %i.ja = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.iz, i64 noundef 4) #15 ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.al, label %.lr.ph670

bb.al:                                            ; preds = %bb.ak
  %i.jc = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.jd = shl nuw nsw i64 %i.iz, 2
  %i.je = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jc, ptr noundef nonnull @.str.9, i64 noundef %i.jd) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit520:                                ; preds = %._crit_edge664
  %i.jf = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15
  %i.jg = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
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
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv808 ; 2 uses
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !70
  %i.jj = fsub double %i.ji, %i.ii
  store double %i.jj, ptr %i.jh, align 8, !tbaa !70
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %exitcond813.not = icmp eq i64 %indvars.iv.next809, %wide.trip.count812
  br i1 %exitcond813.not, label %._crit_edge664, label %.lr.ph663, !llvm.loop !30

._crit_edge671:                                   ; preds = %._crit_edge668, %gv_calloc.exit520
  %i.jk = phi ptr [ %i.jg, %gv_calloc.exit520 ], [ %i.ja, %._crit_edge668 ]
  %i.jl = phi ptr [ %i.jf, %gv_calloc.exit520 ], [ %i.it, %._crit_edge668 ] ; 9 uses
  %i.jm = phi i64 [ 0, %gv_calloc.exit520 ], [ %i.iz, %._crit_edge668 ] ; 2 uses
  %i.jn = uitofp nneg i32 %i.fv to double         ; 2 uses
  %i.jo = load i8, ptr @Verbose, align 1, !tbaa !62
  %.not509 = icmp eq i8 %i.jo, 0
  br i1 %.not509, label %bb.an, label %bb.am

.lr.ph667:                                        ; preds = %._crit_edge668, %.lr.ph670
  %indvars.iv820 = phi i64 [ 0, %.lr.ph670 ], [ %indvars.iv.next821, %._crit_edge668 ] ; 4 uses
  %i.jp = mul nuw nsw i64 %indvars.iv820, %wide.trip.count
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jp ; 3 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv820
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !77
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv820
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !68 ; 2 uses
  br i1 %min.iters.check1055, label %scalar.ph1054.preheader, label %vector.body1058

vector.body1058:                                  ; preds = %.lr.ph667, %vector.body1058
  %index1059 = phi i64 [ %index.next1062, %vector.body1058 ], [ 0, %.lr.ph667 ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %index1059 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %wide.load1060 = load <2 x double>, ptr %i.ju, align 8, !tbaa !70
  %wide.load1061 = load <2 x double>, ptr %i.jv, align 8, !tbaa !70
  %i.jw = fptrunc <2 x double> %wide.load1060 to <2 x float>
  %i.jx = fptrunc <2 x double> %wide.load1061 to <2 x float>
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %index1059 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store <2 x float> %i.jw, ptr %i.jy, align 4, !tbaa !76
  store <2 x float> %i.jx, ptr %i.jz, align 4, !tbaa !76
  %index.next1062 = add nuw i64 %index1059, 4     ; 2 uses
  %i.ka = icmp eq i64 %index.next1062, %n.vec1057
  br i1 %i.ka, label %middle.block1063, label %vector.body1058, !llvm.loop !31

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
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv814
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !70
  %i.kd = fptrunc double %i.kc to float
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv814
  store float %i.kd, ptr %i.ke, align 4, !tbaa !76
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv814, 1 ; 2 uses
  %exitcond819.not = icmp eq i64 %indvars.iv.next815, %wide.trip.count818
  br i1 %exitcond819.not, label %._crit_edge668, label %scalar.ph1054, !llvm.loop !33

bb.am:                                            ; preds = %._crit_edge671
  %i.kf = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.kg = call double @elapsed_sec() #11
  %i.kh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kf, ptr noundef nonnull @.str.7, double noundef %i.kg) #13 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge671
  call void @square_vec(i32 noundef %i.fw, ptr noundef %.1477) #11
  call void @invert_vec(i32 noundef %i.fw, ptr noundef %.1477) #11
  %i.ki = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %wide.trip.count, i64 noundef 8) #15 ; 14 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.ao, label %.preheader597.preheader

bb.ao:                                            ; preds = %bb.an
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.kl = shl nuw nsw i64 %wide.trip.count, 3
  %i.km = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kk, ptr noundef nonnull @.str.9, i64 noundef %i.kl) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

.preheader597.preheader:                          ; preds = %bb.an
  call void @set_vector_val(i32 noundef %1, double noundef 0.000000e+00, ptr noundef nonnull %i.ki) #11
  %9 = zext nneg i32 %1 to i64
  %wide.trip.count839 = zext nneg i32 %i.ft to i64
  %invariant.op = add nsw i64 %9, -1
  br label %.preheader597

.preheader597:                                    ; preds = %.preheader597.preheader, %._crit_edge677
  %indvars.iv836 = phi i64 [ 0, %.preheader597.preheader ], [ %indvars.iv.next837, %._crit_edge677 ] ; 4 uses
  %indvars.iv832 = phi i32 [ %1, %.preheader597.preheader ], [ %indvars.iv.next833, %._crit_edge677 ] ; 3 uses
  %.0444681 = phi i32 [ 0, %.preheader597.preheader ], [ %.1445.lcssa, %._crit_edge677 ]
  %i.kn = zext i32 %indvars.iv832 to i64
  %i.ko = add nsw i64 %i.kn, -1                   ; 3 uses
  %.1445672 = add i32 %.0444681, 1                ; 2 uses
  %10 = icmp slt i64 %indvars.iv836, %invariant.op
  br i1 %10, label %.lr.ph676.preheader, label %._crit_edge677

.lr.ph676.preheader:                              ; preds = %.preheader597
  %i.kp = sext i32 %.1445672 to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv836 ; 3 uses
  %xtraiter1129 = and i64 %i.ko, 1
  %i.kq = icmp eq i32 %indvars.iv832, 2
  br i1 %i.kq, label %.lr.ph676.epil.preheader, label %.lr.ph676.preheader.new

.lr.ph676.preheader.new:                          ; preds = %.lr.ph676.preheader
  %unroll_iter = and i64 %i.ko, -2
  br label %.lr.ph676

.lr.ph685.preheader:                              ; preds = %._crit_edge677
  %smax848 = call i32 @llvm.smax.i32(i32 %1, i32 1) ; 3 uses
  %wide.trip.count849 = zext nneg i32 %smax848 to i64 ; 5 uses
  %i.kr = add nsw i64 %wide.trip.count849, -1     ; 2 uses
  %xtraiter1134 = and i64 %wide.trip.count849, 1
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %.lr.ph685.epil.preheader, label %.lr.ph685.preheader.new

.lr.ph685.preheader.new:                          ; preds = %.lr.ph685.preheader
  %i.kt = zext nneg i32 %1 to i64
  %unroll_iter1137 = and i64 %wide.trip.count849, 2147483646
  br label %.lr.ph685

._crit_edge677.loopexit.unr-lcssa:                ; preds = %.lr.ph676
  %lcmp.mod1130.not = icmp eq i64 %xtraiter1129, 0
  br i1 %lcmp.mod1130.not, label %._crit_edge677.loopexit, label %.lr.ph676.epil.preheader

.lr.ph676.epil.preheader:                         ; preds = %._crit_edge677.loopexit.unr-lcssa, %.lr.ph676.preheader
  %indvars.iv827.epil.init = phi i64 [ 1, %.lr.ph676.preheader ], [ %indvars.iv.next828.1, %._crit_edge677.loopexit.unr-lcssa ]
  %indvars.iv825.epil.init = phi i64 [ %i.kp, %.lr.ph676.preheader ], [ %indvars.iv.next826.1, %._crit_edge677.loopexit.unr-lcssa ] ; 2 uses
  %.0443673.epil.init = phi double [ 0.000000e+00, %.lr.ph676.preheader ], [ %i.lo, %._crit_edge677.loopexit.unr-lcssa ]
  %lcmp.mod1133 = trunc i64 %i.ko to i1
  call void @llvm.assume(i1 %lcmp.mod1133)
  %i.ku = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv825.epil.init
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !76
  %i.kw = fpext float %i.kv to double             ; 2 uses
  %i.kx = fadd double %.0443673.epil.init, %i.kw
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827.epil.init ; 2 uses
  %i.ky = load double, ptr %gep.epil, align 8, !tbaa !70
  %i.kz = fsub double %i.ky, %i.kw
  store double %i.kz, ptr %gep.epil, align 8, !tbaa !70
  %indvars.iv.next826.epil = add nsw i64 %indvars.iv825.epil.init, 1
  br label %._crit_edge677.loopexit

._crit_edge677.loopexit:                          ; preds = %._crit_edge677.loopexit.unr-lcssa, %.lr.ph676.epil.preheader
  %.lcssa1114 = phi double [ %i.lo, %._crit_edge677.loopexit.unr-lcssa ], [ %i.kx, %.lr.ph676.epil.preheader ]
  %indvars.iv.next826.lcssa = phi i64 [ %indvars.iv.next826.1, %._crit_edge677.loopexit.unr-lcssa ], [ %indvars.iv.next826.epil, %.lr.ph676.epil.preheader ]
  %i.la = trunc nsw i64 %indvars.iv.next826.lcssa to i32
  br label %._crit_edge677

._crit_edge677:                                   ; preds = %._crit_edge677.loopexit, %.preheader597
  %.0443.lcssa = phi double [ 0.000000e+00, %.preheader597 ], [ %.lcssa1114, %._crit_edge677.loopexit ]
  %.1445.lcssa = phi i32 [ %.1445672, %.preheader597 ], [ %i.la, %._crit_edge677.loopexit ]
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv836 ; 2 uses
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !70
  %i.ld = fsub double %i.lc, %.0443.lcssa
  store double %i.ld, ptr %i.lb, align 8, !tbaa !70
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 1 ; 2 uses
  %indvars.iv.next833 = add i32 %indvars.iv832, -1
  %exitcond840.not = icmp eq i64 %indvars.iv.next837, %wide.trip.count839
  br i1 %exitcond840.not, label %.lr.ph685.preheader, label %.preheader597, !llvm.loop !34

.lr.ph676:                                        ; preds = %.lr.ph676, %.lr.ph676.preheader.new
  %indvars.iv827 = phi i64 [ 1, %.lr.ph676.preheader.new ], [ %indvars.iv.next828.1, %.lr.ph676 ] ; 3 uses
  %indvars.iv825 = phi i64 [ %i.kp, %.lr.ph676.preheader.new ], [ %indvars.iv.next826.1, %.lr.ph676 ] ; 3 uses
  %.0443673 = phi double [ 0.000000e+00, %.lr.ph676.preheader.new ], [ %i.lo, %.lr.ph676 ]
  %niter = phi i64 [ 0, %.lr.ph676.preheader.new ], [ %niter.next.1, %.lr.ph676 ]
  %i.le = getelementptr inbounds [4 x i8], ptr %.1477, i64 %indvars.iv825
  %i.lf = load float, ptr %i.le, align 4, !tbaa !76
  %i.lg = fpext float %i.lf to double             ; 2 uses
  %i.lh = fadd double %.0443673, %i.lg
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827 ; 2 uses
  %i.li = load double, ptr %gep, align 8, !tbaa !70
  %i.lj = fsub double %i.li, %i.lg
  store double %i.lj, ptr %gep, align 8, !tbaa !70
  %i.lk = getelementptr [4 x i8], ptr %.1477, i64 %indvars.iv825
  %i.ll = getelementptr i8, ptr %i.lk, i64 4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !76
  %i.ln = fpext float %i.lm to double             ; 2 uses
  %i.lo = fadd double %i.lh, %i.ln                ; 3 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv827
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  %i.lq = load double, ptr %gep.1, align 8, !tbaa !70
  %i.lr = fsub double %i.lq, %i.ln
  store double %i.lr, ptr %gep.1, align 8, !tbaa !70
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
  %.0437683.epil.init = phi i32 [ 0, %.lr.ph685.preheader ], [ %i.nd, %._crit_edge686.unr-lcssa ]
  %lcmp.mod1136 = trunc i32 %smax848 to i1
  call void @llvm.assume(i1 %lcmp.mod1136)
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv841.epil.init
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !70
  %i.lu = fptrunc double %i.lt to float
  %i.lv = sext i32 %.0437683.epil.init to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.lv
  store float %i.lu, ptr %i.lw, align 4, !tbaa !76
  br label %._crit_edge686

._crit_edge686:                                   ; preds = %._crit_edge686.unr-lcssa, %.lr.ph685.epil.preheader
  br i1 %.not.i, label %gv_calloc.exit535.thread, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge686
  %mul.ov.i528 = icmp slt i32 %4, 0
  br i1 %mul.ov.i528, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.ly = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lx, ptr noundef nonnull @.str.8, i64 noundef range(i64 -2147483648, 2147483648) %i.iq, i64 noundef 8) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.lz = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.iq, i64 noundef 8) #15 ; 10 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.as, label %gv_calloc.exit530

bb.as:                                            ; preds = %bb.ar
  %i.mb = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.mc = shl nuw nsw i64 %i.iq, 3
  %i.md = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mb, ptr noundef nonnull @.str.9, i64 noundef %i.mc) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit535.thread:                         ; preds = %._crit_edge686
  %i.me = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15 ; 2 uses
  %i.mf = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #15
  store ptr %i.mf, ptr %i.me, align 8, !tbaa !77
  br label %._crit_edge689

gv_calloc.exit530:                                ; preds = %bb.ar
  %i.mg = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.jm, i64 noundef 4) #15 ; 7 uses
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %bb.at, label %gv_calloc.exit535

bb.at:                                            ; preds = %gv_calloc.exit530
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !74
  %i.mj = shl nuw nsw i64 %i.jm, 2
  %i.mk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.9, i64 noundef %i.mj) #13 ; 0 uses
  call fastcc void @graphviz_exit() #14
  unreachable

gv_calloc.exit535:                                ; preds = %gv_calloc.exit530
  store ptr %i.mg, ptr %i.lz, align 8, !tbaa !77
  %.not967 = icmp eq i32 %4, 1
  br i1 %.not967, label %._crit_edge689, label %.lr.ph688.preheader

.lr.ph688.preheader:                              ; preds = %gv_calloc.exit535
  %wide.trip.count854 = zext nneg i32 %4 to i64
  %i.ml = add nsw i64 %wide.trip.count854, -1     ; 2 uses
  %xtraiter1139 = and i64 %i.ml, 3                ; 3 uses
  %i.mm = add nsw i32 %4, -2
  %i.mn = icmp ult i32 %i.mm, 3
  br i1 %i.mn, label %.lr.ph688.epil.preheader, label %.lr.ph688.preheader.new

.lr.ph688.preheader.new:                          ; preds = %.lr.ph688.preheader
  %unroll_iter1142 = and i64 %i.ml, -4
  br label %.lr.ph688

.lr.ph685:                                        ; preds = %.lr.ph685, %.lr.ph685.preheader.new
  %indvars.iv843 = phi i64 [ %i.kt, %.lr.ph685.preheader.new ], [ %indvars.iv.next844.1, %.lr.ph685 ] ; 3 uses
  %indvars.iv841 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %indvars.iv.next842.1, %.lr.ph685 ] ; 3 uses
  %.0437683 = phi i32 [ 0, %.lr.ph685.preheader.new ], [ %i.nd, %.lr.ph685 ] ; 2 uses
  %niter1138 = phi i64 [ 0, %.lr.ph685.preheader.new ], [ %niter1138.next.1, %.lr.ph685 ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv841
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !70
  %i.mq = fptrunc double %i.mp to float
  %i.mr = sext i32 %.0437683 to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.mr
  store float %i.mq, ptr %i.ms, align 4, !tbaa !76
  %i.mt = trunc nsw i64 %indvars.iv843 to i32
  %i.mu = add nsw i32 %.0437683, %i.mt            ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv841
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !70
  %i.my = fptrunc double %i.mx to float
  %i.mz = sext i32 %i.mu to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %.1477, i64 %i.mz
  store float %i.my, ptr %i.na, align 4, !tbaa !76
  %indvars.iv.next842.1 = add nuw nsw i64 %indvars.iv841, 2 ; 2 uses
  %i.nb = trunc i64 %indvars.iv843 to i32
  %i.nc = add i32 %i.nb, -1
  %i.nd = add nsw i32 %i.mu, %i.nc                ; 2 uses
  %indvars.iv.next844.1 = add nsw i64 %indvars.iv843, -2
  %niter1138.next.1 = add i64 %niter1138, 2       ; 2 uses
  %niter1138.ncmp.1 = icmp eq i64 %niter1138.next.1, %unroll_iter1137
  br i1 %niter1138.ncmp.1, label %._crit_edge686.unr-lcssa, label %.lr.ph685, !llvm.loop !36

._crit_edge689.loopexit.unr-lcssa:                ; preds = %.lr.ph688
end_hunk_0
