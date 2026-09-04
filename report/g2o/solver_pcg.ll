Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil:bb.a
._crit_edge186.split:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, %.preheader
  %i.ev = load i64, ptr %i.q, align 8, !tbaa !544
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge186.split
  call void @_ZN5Eigen8internal26triangular_solver_selectorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_Li1ELi5ELi0ELin1EE3runERKS7_RS7_(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %13)
  br label %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %._crit_edge186.split, %bb.e
  %i.ex = load i64, ptr %i.s, align 8, !tbaa !544 ; 2 uses
  %i.ey = load i64, ptr %i.y, align 8, !tbaa !544
  %i.ez = add nsw i64 %i.ey, %i.ex
  %i.fa = load i64, ptr %i.z, align 8, !tbaa !544
  %i.fb = add nsw i64 %i.ez, %i.fa
  %i.fc = icmp slt i64 %i.fb, 20
  %i.fd = icmp sgt i64 %i.ex, 0
  %or.cond.i.i.i.i = and i1 %i.fd, %i.fc
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store ptr %14, ptr %7, align 8, !tbaa !1360
  store ptr %13, ptr %i.ab, align 8, !tbaa !1360
  %i.fe = load ptr, ptr %14, align 8, !tbaa !559
  store ptr %i.fe, ptr %i.ac, align 8, !tbaa !563
  %i.ff = load i64, ptr %i.x, align 8, !tbaa !544
  store i64 %i.ff, ptr %i.ad, align 8, !tbaa !544
  %i.fg = load ptr, ptr %13, align 8, !tbaa !559
  store ptr %i.fg, ptr %i.ae, align 8, !tbaa !563
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !544
  store i64 %i.fh, ptr %i.af, align 8, !tbaa !544
  %i.fi = load i64, ptr %i.w, align 8, !tbaa !544
  store i64 %i.fi, ptr %i.ag, align 8, !tbaa !566
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.fj = load ptr, ptr %15, align 8, !tbaa !559
  store ptr %i.fj, ptr %8, align 8, !tbaa !563
  %i.fk = load i64, ptr %i.aa, align 8, !tbaa !544
  store i64 %i.fk, ptr %i.ah, align 8, !tbaa !544
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store ptr %8, ptr %9, align 8, !tbaa !1361
  store ptr %7, ptr %i.ai, align 8, !tbaa !1362
  store ptr %10, ptr %i.aj, align 8, !tbaa !570
  store ptr %15, ptr %i.ak, align 8, !tbaa !1360
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

bb.g:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !128
  call void @_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_NS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS7_SE_RKd(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i59.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.i59.preheader.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit
  %.0184 = phi i64 [ %i.gq, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit ], [ %storemerge187, %.lr.ph.i.i.i.i.i.i59.preheader.preheader ] ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.0184 ; 4 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %4, i64 %.0184
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !91
  %i.fo = sext i32 %i.fn to i64                   ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fo ; 5 uses
  br i1 %or.cond249, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i59.preheader250

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i59.preheader
  %i.fq = shl nsw i64 %i.fo, 3
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.fq
  %bound0 = icmp ult ptr %scevgep201, %scevgep206
  %bound1 = icmp ult ptr %i.fp, %scevgep203
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i59.preheader250, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %index ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %index ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fr, align 8, !tbaa !128, !alias.scope !1363, !noalias !1364
  %wide.load207 = load <2 x double>, ptr %i.ft, align 8, !tbaa !128, !alias.scope !1363, !noalias !1364
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.fs, align 8, !tbaa !128, !alias.scope !1364
  %wide.load209 = load <2 x double>, ptr %i.fu, align 8, !tbaa !128, !alias.scope !1364
  store <2 x double> %wide.load208, ptr %i.fr, align 8, !tbaa !128, !alias.scope !1363, !noalias !1364
  store <2 x double> %wide.load209, ptr %i.ft, align 8, !tbaa !128, !alias.scope !1363, !noalias !1364
  store <2 x double> %wide.load, ptr %i.fs, align 8, !tbaa !128, !alias.scope !1364
  store <2 x double> %wide.load207, ptr %i.fu, align 8, !tbaa !128, !alias.scope !1364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !1354

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59.preheader250

.lr.ph.i.i.i.i.i.i59.preheader250:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i59.preheader, %middle.block
  %.05.i.i.i.i.i.i60.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i59.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.fw = add i64 %.sroa.speculated, %.05.i.i.i.i.i.i60.ph
  br i1 %lcmp.mod254.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol

.lr.ph.i.i.i.i.i.i59.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i59.preheader250
  %i.fx = mul nsw i64 %.05.i.i.i.i.i.i60.ph, %i.bz ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fx ; 2 uses
  %i.ga = load double, ptr %i.fy, align 8, !tbaa !128
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !128
  store double %i.gb, ptr %i.fy, align 8, !tbaa !128
  store double %i.ga, ptr %i.fz, align 8, !tbaa !128
  %i.gc = or disjoint i64 %.05.i.i.i.i.i.i60.ph, 1
  br label %.lr.ph.i.i.i.i.i.i59.prol.loopexit

.lr.ph.i.i.i.i.i.i59.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i59.prol, %.lr.ph.i.i.i.i.i.i59.preheader250
  %.05.i.i.i.i.i.i60.unr = phi i64 [ %.05.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i59.preheader250 ], [ %i.gc, %.lr.ph.i.i.i.i.i.i59.prol ]
  %i.gd = icmp eq i64 %i.av, %i.fw
  br i1 %i.gd, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i59:                             ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59
  %.05.i.i.i.i.i.i60 = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i59 ], [ %.05.i.i.i.i.i.i60.unr, %.lr.ph.i.i.i.i.i.i59.prol.loopexit ] ; 3 uses
  %i.ge = mul nsw i64 %.05.i.i.i.i.i.i60, %i.bz   ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.ge ; 2 uses
  %i.gh = load double, ptr %i.gf, align 8, !tbaa !128
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !128
  store double %i.gi, ptr %i.gf, align 8, !tbaa !128
  store double %i.gh, ptr %i.gg, align 8, !tbaa !128
  %i.gj = add nuw nsw i64 %.05.i.i.i.i.i.i60, 1
  %i.gk = mul nsw i64 %i.gj, %i.bz                ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.gk ; 2 uses
  %i.gn = load double, ptr %i.gl, align 8, !tbaa !128
  %i.go = load double, ptr %i.gm, align 8, !tbaa !128
  store double %i.go, ptr %i.gl, align 8, !tbaa !128
  store double %i.gn, ptr %i.gm, align 8, !tbaa !128
  %i.gp = add nuw nsw i64 %.05.i.i.i.i.i.i60, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i61.1 = icmp eq i64 %i.gp, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i61.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59, !llvm.loop !1355

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59, %middle.block
  %i.gq = add nsw i64 %.0184, 1                   ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.bq
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i59.preheader, label %._crit_edge186.split, !llvm.loop !1356

_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %bb.g, %bb.f, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %i.gs = add nsw i64 %storemerge187, %.sroa.speculated156 ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %.sroa.speculated161
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gt, label %bb.d, label %.loopexit, !llvm.loop !1357

.loopexit:                                        ; preds = %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit, %bb.b
  %.051 = phi i64 [ %i.k, %bb.b ], [ %.1, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  ret i64 %.051
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !544  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !544  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !91
  %i.e = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = add nsw i64 %i.b, -1
  %i.h = add i64 %i.b, 4294967295
  %i.i = add i64 %i.b, 4294967295
  %i.j = add i64 %i.b, -2
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, %bb.a
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit
  %.0172 = phi i64 [ -1, %.lr.ph ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 5 uses
  %.043171 = phi i64 [ 0, %.lr.ph ], [ %i.jo, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 21 uses
  %i.k = xor i64 %.043171, -1
  %i.l = add i64 %i.b, %i.k                       ; 3 uses
  %i.m = sub i64 %i.i, %.043171
  %sext266 = shl i64 %i.m, 32
  %i.n = ashr exact i64 %sext266, 29              ; 2 uses
  %i.o = shl i64 %.043171, 3
  %i.p = sub i64 %i.h, %.043171
  %sext267 = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext267, 29              ; 2 uses
  %i.r = shl i64 %.043171, 3
  %i.s = xor i64 %.043171, -1                     ; 2 uses
  %i.t = add i64 %i.b, %i.s                       ; 3 uses
  %i.u = add nsw i64 %i.d, %i.s
  %i.v = load ptr, ptr %0, align 8, !tbaa !559, !noalias !1403 ; 5 uses
  %i.w = load i64, ptr %i.f, align 8, !tbaa !544, !noalias !1403 ; 5 uses
  %i.x = mul nsw i64 %i.w, %.043171
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !544, !noalias !1403 ; 2 uses
  %i.aa = sub nsw i64 %i.b, %.043171              ; 2 uses
  %i.ab = sub nsw i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ab ; 4 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ad) ; 4 uses
  %xtraiter = and i64 %i.l, 1
  %i.ag = icmp eq i64 %i.j, %.043171
  br i1 %i.ag, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.af, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02125.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.ah = phi double [ %i.af, %.lr.ph.i.i.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ai = getelementptr [8 x i8], ptr %i.ac, i64 %.02125.i.i.i.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !128
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj) ; 3 uses
  %i.al = fcmp ogt double %i.ak, %i.ah            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.al, i64 %.02125.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.al, double %i.ak, double %.sroa.7.0.i.i
  %i.am = select i1 %i.al, double %i.ak, double %i.ah ; 2 uses
  %i.an = add nuw nsw i64 %.02125.i.i.i.i, 1      ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.ac, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !128
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap) ; 3 uses
  %i.ar = fcmp ogt double %i.aq, %i.am            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ar, i64 %i.an, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ar, double %i.aq, double %.sroa.7.1.i.i ; 3 uses
  %i.as = select i1 %i.ar, double %i.aq, double %i.am ; 2 uses
  %i.at = add nuw nsw i64 %.02125.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1367

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02125.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod275 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.au = getelementptr [8 x i8], ptr %i.ac, i64 %.02125.i.i.i.i.epil.init
  %i.av = load double, ptr %i.au, align 8, !tbaa !128
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av) ; 2 uses
  %i.ax = fcmp ogt double %i.aw, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ax, i64 %.02125.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ax, double %i.aw, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ay = add nuw i64 %.sroa.0.1.i.i.lcssa, %.043171 ; 3 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.043171
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !91
  %i.bb = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.bb, label %bb.c, label %bb.f

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.b
  %i.bc = trunc i64 %.043171 to i32
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.043171
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !91
  %i.be = fcmp une double %i.ad, 0.000000e+00
  br i1 %i.be, label %.thread, label %bb.f

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr [8 x i8], ptr %i.v, i64 %.043171 ; 5 uses
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !544, !noalias !1404 ; 9 uses
  %i.bh = getelementptr [8 x i8], ptr %i.v, i64 %i.ay ; 5 uses
  %i.bi = icmp sgt i64 %i.bg, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %min.iters.check253 = icmp ugt i64 %i.bg, 7
  %ident.check.not = icmp eq i64 %i.w, 1
  %or.cond = and i1 %min.iters.check253, %ident.check.not
  br i1 %or.cond, label %vector.memcheck245, label %.lr.ph.i.i.i.i.i.i.preheader272

vector.memcheck245:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.bj = shl i64 %i.bg, 3
  %i.bk = add nuw i64 %.043171, %i.bg
  %i.bl = shl i64 %i.bk, 3
  %scevgep246 = getelementptr i8, ptr %i.v, i64 %i.bl
  %scevgep247 = getelementptr i8, ptr %i.v, i64 %i.bj
  %i.bm = shl i64 %i.ay, 3
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.bm
  %bound0249 = icmp ult ptr %i.bf, %scevgep248
  %bound1250 = icmp ult ptr %i.bh, %scevgep246
  %found.conflict251 = and i1 %bound0249, %bound1250
  br i1 %found.conflict251, label %.lr.ph.i.i.i.i.i.i.preheader272, label %vector.ph254

vector.ph254:                                     ; preds = %vector.memcheck245
  %n.vec255 = and i64 %i.bg, 9223372036854775804  ; 3 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %index257 ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %index257 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load258 = load <2 x double>, ptr %i.bn, align 8, !tbaa !128, !alias.scope !1405, !noalias !1406
  %wide.load259 = load <2 x double>, ptr %i.bp, align 8, !tbaa !128, !alias.scope !1405, !noalias !1406
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load260 = load <2 x double>, ptr %i.bo, align 8, !tbaa !128, !alias.scope !1406
  %wide.load261 = load <2 x double>, ptr %i.bq, align 8, !tbaa !128, !alias.scope !1406
  store <2 x double> %wide.load260, ptr %i.bn, align 8, !tbaa !128, !alias.scope !1405, !noalias !1406
  store <2 x double> %wide.load261, ptr %i.bp, align 8, !tbaa !128, !alias.scope !1405, !noalias !1406
  store <2 x double> %wide.load258, ptr %i.bo, align 8, !tbaa !128, !alias.scope !1406
  store <2 x double> %wide.load259, ptr %i.bq, align 8, !tbaa !128, !alias.scope !1406
  %index.next262 = add nuw i64 %index257, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.br, label %middle.block263, label %vector.body256, !llvm.loop !1373

middle.block263:                                  ; preds = %vector.body256
  %cmp.n264 = icmp eq i64 %i.bg, %n.vec255
  br i1 %cmp.n264, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader272

.lr.ph.i.i.i.i.i.i.preheader272:                  ; preds = %vector.memcheck245, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block263
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck245 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec255, %middle.block263 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter276 = and i64 %i.bg, 1
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader272
  %i.bs = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.w   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !128
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !128
  store double %i.bw, ptr %i.bt, align 8, !tbaa !128
  store double %i.bv, ptr %i.bu, align 8, !tbaa !128
  %i.bx = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader272
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader272 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.by = icmp eq i64 %i.bg, %.neg
  br i1 %i.by, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.bz = mul nsw i64 %.05.i.i.i.i.i.i, %i.w      ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bz ; 2 uses
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !128
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !128
  store double %i.cd, ptr %i.ca, align 8, !tbaa !128
  store double %i.cc, ptr %i.cb, align 8, !tbaa !128
  %i.ce = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.cf = mul nsw i64 %i.ce, %i.w                 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cf ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !128
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !128
  store double %i.cj, ptr %i.cg, align 8, !tbaa !128
  store double %i.ci, ptr %i.ch, align 8, !tbaa !128
  %i.ck = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ck, %i.bg
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1374

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block263, %bb.d
  %i.cl = load i32, ptr %2, align 4, !tbaa !91
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %2, align 4, !tbaa !91
  br label %.thread

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.cn = getelementptr [8 x i8], ptr %i.y, i64 %.043171
  %sext = shl i64 %i.t, 32
  %i.co = ashr exact i64 %sext, 32                ; 7 uses
  %i.cp = sub nsw i64 %i.z, %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.cp ; 6 uses
  %i.cr = load double, ptr %i.cn, align 8, !tbaa !128, !noalias !1407 ; 5 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = and i64 %i.cs, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ct, 0
end_hunk_0
