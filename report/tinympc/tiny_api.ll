Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil:bb.a
  store ptr %14, ptr %7, align 8, !tbaa !987
  store ptr %13, ptr %i.ab, align 8, !tbaa !987
  %i.fo = load ptr, ptr %14, align 8, !tbaa !217
  store ptr %i.fo, ptr %i.ac, align 8, !tbaa !220
  %i.fp = load i64, ptr %i.x, align 8, !tbaa !91
  store i64 %i.fp, ptr %i.ad, align 8, !tbaa !91
  %i.fq = load ptr, ptr %13, align 8, !tbaa !217
  store ptr %i.fq, ptr %i.ae, align 8, !tbaa !220
  %i.fr = load i64, ptr %i.u, align 8, !tbaa !91
  store i64 %i.fr, ptr %i.af, align 8, !tbaa !91
  %i.fs = load i64, ptr %i.w, align 8, !tbaa !91
  store i64 %i.fs, ptr %i.ag, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ft = load ptr, ptr %15, align 8, !tbaa !217
  store ptr %i.ft, ptr %8, align 8, !tbaa !220
  %i.fu = load i64, ptr %i.aa, align 8, !tbaa !91
  store i64 %i.fu, ptr %i.ah, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %8, ptr %9, align 8, !tbaa !988
  store ptr %7, ptr %i.ai, align 8, !tbaa !989
  store ptr %10, ptr %i.aj, align 8, !tbaa !227
  store ptr %15, ptr %i.ak, align 8, !tbaa !987
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

bb.f:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !42
  call void @_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_NS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS7_SE_RKd(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i94.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.i94.preheader.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit
  %.0219 = phi i64 [ %i.hb, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit ], [ %storemerge222, %.lr.ph.i.i.i.i.i.i94.preheader.preheader ] ; 3 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.0219
  %i.fw = select i1 %.not.i.i.i.i.i92, ptr null, ptr %i.fv ; 6 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %4, i64 %.0219
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !43
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.fz
  %i.gb = select i1 %.not.i.i.i.i.i92, ptr null, ptr %i.ga ; 6 uses
  br i1 %or.cond275, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i94.preheader276

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i94.preheader
  %scevgep = getelementptr i8, ptr %i.fw, i64 %i.ay
  %scevgep236 = getelementptr i8, ptr %i.gb, i64 %i.ay
  %bound0 = icmp ult ptr %i.fw, %scevgep236
  %bound1 = icmp ult ptr %i.gb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i94.preheader276, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %index ; 3 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %index ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gc, align 8, !tbaa !42, !alias.scope !990, !noalias !991
  %wide.load237 = load <2 x double>, ptr %i.ge, align 8, !tbaa !42, !alias.scope !990, !noalias !991
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %wide.load238 = load <2 x double>, ptr %i.gd, align 8, !tbaa !42, !alias.scope !991
  %wide.load239 = load <2 x double>, ptr %i.gf, align 8, !tbaa !42, !alias.scope !991
  store <2 x double> %wide.load238, ptr %i.gc, align 8, !tbaa !42, !alias.scope !990, !noalias !991
  store <2 x double> %wide.load239, ptr %i.ge, align 8, !tbaa !42, !alias.scope !990, !noalias !991
  store <2 x double> %wide.load, ptr %i.gd, align 8, !tbaa !42, !alias.scope !991
  store <2 x double> %wide.load237, ptr %i.gf, align 8, !tbaa !42, !alias.scope !991
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !981

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit, label %.lr.ph.i.i.i.i.i.i94.preheader276

.lr.ph.i.i.i.i.i.i94.preheader276:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i94.preheader, %middle.block
  %.05.i.i.i.i.i.i95.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i94.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.gh = add i64 %.sroa.speculated, %.05.i.i.i.i.i.i95.ph
  br i1 %lcmp.mod279.not, label %.lr.ph.i.i.i.i.i.i94.prol.loopexit, label %.lr.ph.i.i.i.i.i.i94.prol

.lr.ph.i.i.i.i.i.i94.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i94.preheader276
  %i.gi = mul nsw i64 %.05.i.i.i.i.i.i95.ph, %i.bo ; 2 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gi ; 2 uses
  %i.gl = load double, ptr %i.gj, align 8, !tbaa !42
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !42
  store double %i.gm, ptr %i.gj, align 8, !tbaa !42
  store double %i.gl, ptr %i.gk, align 8, !tbaa !42
  %i.gn = or disjoint i64 %.05.i.i.i.i.i.i95.ph, 1
  br label %.lr.ph.i.i.i.i.i.i94.prol.loopexit

.lr.ph.i.i.i.i.i.i94.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i94.prol, %.lr.ph.i.i.i.i.i.i94.preheader276
  %.05.i.i.i.i.i.i95.unr = phi i64 [ %.05.i.i.i.i.i.i95.ph, %.lr.ph.i.i.i.i.i.i94.preheader276 ], [ %i.gn, %.lr.ph.i.i.i.i.i.i94.prol ]
  %i.go = icmp eq i64 %i.ar, %i.gh
  br i1 %i.go, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit, label %.lr.ph.i.i.i.i.i.i94

.lr.ph.i.i.i.i.i.i94:                             ; preds = %.lr.ph.i.i.i.i.i.i94.prol.loopexit, %.lr.ph.i.i.i.i.i.i94
  %.05.i.i.i.i.i.i95 = phi i64 [ %i.ha, %.lr.ph.i.i.i.i.i.i94 ], [ %.05.i.i.i.i.i.i95.unr, %.lr.ph.i.i.i.i.i.i94.prol.loopexit ] ; 3 uses
  %i.gp = mul nsw i64 %.05.i.i.i.i.i.i95, %i.bo   ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.gp ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gp ; 2 uses
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !42
  %i.gt = load double, ptr %i.gr, align 8, !tbaa !42
  store double %i.gt, ptr %i.gq, align 8, !tbaa !42
  store double %i.gs, ptr %i.gr, align 8, !tbaa !42
  %i.gu = add nuw nsw i64 %.05.i.i.i.i.i.i95, 1
  %i.gv = mul nsw i64 %i.gu, %i.bo                ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gv ; 2 uses
  %i.gy = load double, ptr %i.gw, align 8, !tbaa !42
  %i.gz = load double, ptr %i.gx, align 8, !tbaa !42
  store double %i.gz, ptr %i.gw, align 8, !tbaa !42
  store double %i.gy, ptr %i.gx, align 8, !tbaa !42
  %i.ha = add nuw nsw i64 %.05.i.i.i.i.i.i95, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i96.1 = icmp eq i64 %i.ha, %i.bd
  br i1 %exitcond.not.i.i.i.i.i.i96.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit, label %.lr.ph.i.i.i.i.i.i94, !llvm.loop !982

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit97.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i94.prol.loopexit, %.lr.ph.i.i.i.i.i.i94, %middle.block
  %i.hb = add nsw i64 %.0219, 1                   ; 2 uses
  %i.hc = icmp slt i64 %i.hb, %i.bc
  br i1 %i.hc, label %.lr.ph.i.i.i.i.i.i94.preheader, label %._crit_edge221.split, !llvm.loop !983

_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %._crit_edge.thread232, %._crit_edge.thread, %bb.f, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.hd = add nsw i64 %storemerge222, %.sroa.speculated191 ; 2 uses
  %i.he = icmp slt i64 %i.hd, %.sroa.speculated196
  %indvar.next = add i64 %indvar, 1
  br i1 %i.he, label %_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE5blockIllEENS7_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllSA_SB_.exit, label %.loopexit, !llvm.loop !984

.loopexit:                                        ; preds = %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit, %bb.b
  %.051 = phi i64 [ %i.k, %bb.b ], [ %.1, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  ret i64 %.051
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::internal::visitor_evaluator", align 8 ; 6 uses
  %4 = alloca %"struct.Eigen::internal::minmax_coeff_visitor", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::CwiseUnaryOp.818", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !91   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !43
  %i.e = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.10144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.sroa.14149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = add nsw i64 %i.b, -1
  %i.l = add i64 %i.b, 4294967295
  %i.m = add i64 %i.b, 4294967295
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, %bb.a
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit
  %.0168 = phi i64 [ -1, %.lr.ph ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 5 uses
  %.042167 = phi i64 [ 0, %.lr.ph ], [ %i.ir, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 16 uses
  %i.n = sub i64 %i.m, %.042167
  %sext252 = shl i64 %i.n, 32
  %i.o = ashr exact i64 %sext252, 29
  %i.p = sub i64 %i.l, %.042167
  %sext253 = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext253, 29              ; 2 uses
  %i.r = xor i64 %.042167, -1                     ; 2 uses
  %i.s = add i64 %i.b, %i.r                       ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = add i64 %i.d, %i.r                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.v = load ptr, ptr %0, align 8, !tbaa !217, !noalias !1031 ; 2 uses
  %i.w = load i64, ptr %i.f, align 8, !tbaa !91, !noalias !1031 ; 4 uses
  %i.x = mul nsw i64 %i.w, %.042167
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.x
  %i.z = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.y ; 3 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !1031 ; 2 uses
  %i.ab = sub nuw nsw i64 %i.b, %.042167          ; 2 uses
  %i.ac = sub nsw i64 %i.aa, %i.ab                ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  %i.ad = getelementptr [8 x i8], ptr %i.z, i64 %i.ac
  %i.ae = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.ad ; 2 uses
  store ptr %i.ae, ptr %5, align 8
  store i64 %i.ab, ptr %.sroa.4138.0..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.5140.0..sroa_idx, align 8
  store i64 %i.aa, ptr %.sroa.6141.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.8143.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.10144.0..sroa_idx, align 8
  store i64 %.042167, ptr %.sroa.11145.0..sroa_idx, align 8
  store i64 %i.w, ptr %.sroa.12146.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.13147.0..sroa_idx, align 8
  store i64 %i.w, ptr %.sroa.14149.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 -1, i64 16, i1 false)
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !231
  store i64 %i.w, ptr %i.i, align 8, !tbaa !91
  store ptr %5, ptr %i.j, align 8, !tbaa !1032
  call void @_ZN5Eigen8internal12visitor_implINS0_20minmax_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEELb0ELi0ELb0EEENS0_17visitor_evaluatorISG_EELin1ELb1ELb0ELb0EE3runERKSJ_RSH_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.af = load i64, ptr %4, align 8, !tbaa !233   ; 2 uses
  %i.ag = load double, ptr %i.g, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ah = add nsw i64 %i.af, %.042167             ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.042167
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !43
  %i.ak = fcmp oeq double %i.ag, 0.000000e+00
  br i1 %i.ak, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %0, align 8, !tbaa !217, !noalias !1033 ; 3 uses
  %.not.i.i.i.i.i43 = icmp eq ptr %i.al, null     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.042167
  %i.an = select i1 %.not.i.i.i.i.i43, ptr null, ptr %i.am ; 6 uses
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !1033 ; 8 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ah
  %i.aq = select i1 %.not.i.i.i.i.i43, ptr null, ptr %i.ap ; 6 uses
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !91  ; 4 uses
  %i.as = icmp sgt i64 %i.ao, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %min.iters.check239 = icmp ugt i64 %i.ao, 5
  %ident.check.not = icmp eq i64 %i.ar, 1
  %or.cond = select i1 %min.iters.check239, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck232, label %.lr.ph.i.i.i.i.i.i.preheader258

vector.memcheck232:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.at = shl i64 %i.ao, 3                        ; 2 uses
  %scevgep233 = getelementptr i8, ptr %i.an, i64 %i.at
  %scevgep234 = getelementptr i8, ptr %i.aq, i64 %i.at
  %bound0235 = icmp ult ptr %i.an, %scevgep234
  %bound1236 = icmp ult ptr %i.aq, %scevgep233
  %found.conflict237 = and i1 %bound0235, %bound1236
  br i1 %found.conflict237, label %.lr.ph.i.i.i.i.i.i.preheader258, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck232
  %n.vec241 = and i64 %i.ao, 9223372036854775804  ; 3 uses
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next248, %vector.body242 ] ; 3 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.an, i64 %index243 ; 3 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %index243 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load244 = load <2 x double>, ptr %i.au, align 8, !tbaa !42, !alias.scope !1034, !noalias !1035
  %wide.load245 = load <2 x double>, ptr %i.aw, align 8, !tbaa !42, !alias.scope !1034, !noalias !1035
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load246 = load <2 x double>, ptr %i.av, align 8, !tbaa !42, !alias.scope !1035
  %wide.load247 = load <2 x double>, ptr %i.ax, align 8, !tbaa !42, !alias.scope !1035
  store <2 x double> %wide.load246, ptr %i.au, align 8, !tbaa !42, !alias.scope !1034, !noalias !1035
  store <2 x double> %wide.load247, ptr %i.aw, align 8, !tbaa !42, !alias.scope !1034, !noalias !1035
  store <2 x double> %wide.load244, ptr %i.av, align 8, !tbaa !42, !alias.scope !1035
  store <2 x double> %wide.load245, ptr %i.ax, align 8, !tbaa !42, !alias.scope !1035
  %index.next248 = add nuw i64 %index243, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next248, %n.vec241
  br i1 %i.ay, label %middle.block249, label %vector.body242, !llvm.loop !999

middle.block249:                                  ; preds = %vector.body242
  %cmp.n250 = icmp eq i64 %i.ao, %n.vec241
  br i1 %cmp.n250, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader258

.lr.ph.i.i.i.i.i.i.preheader258:                  ; preds = %vector.memcheck232, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block249
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck232 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec241, %middle.block249 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.ao, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader258
  %i.az = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.ar  ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !42
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !42
  store double %i.bd, ptr %i.ba, align 8, !tbaa !42
  store double %i.bc, ptr %i.bb, align 8, !tbaa !42
  %i.be = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader258
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader258 ], [ %i.be, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bf = icmp eq i64 %i.ao, %.neg
  br i1 %i.bf, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.bg = mul nsw i64 %.05.i.i.i.i.i.i, %i.ar     ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bg ; 2 uses
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !42
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !42
  store double %i.bk, ptr %i.bh, align 8, !tbaa !42
  store double %i.bj, ptr %i.bi, align 8, !tbaa !42
  %i.bl = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.bm = mul nsw i64 %i.bl, %i.ar                ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bm ; 2 uses
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !42
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !42
  store double %i.bq, ptr %i.bn, align 8, !tbaa !42
  store double %i.bp, ptr %i.bo, align 8, !tbaa !42
  %i.br = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.br, %i.ao
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1000

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block249, %bb.d
  %i.bs = load i32, ptr %2, align 4, !tbaa !43
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %2, align 4, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.bu = load ptr, ptr %0, align 8, !tbaa !217   ; 2 uses
  %i.bv = load i64, ptr %i.f, align 8, !tbaa !91
  %i.bw = mul nsw i64 %i.bv, %.042167
  %i.bx = getelementptr [8 x i8], ptr %i.bu, i64 %i.bw ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.042167
  %.not.i.i.i.i.i45 = icmp eq ptr %i.bu, null
  %i.bz = select i1 %.not.i.i.i.i.i45, ptr null, ptr %i.bx ; 2 uses
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !91, !noalias !1036
  %sext = shl i64 %i.s, 32
  %i.cb = ashr exact i64 %sext, 32                ; 7 uses
  %i.cc = sub nsw i64 %i.ca, %i.cb
  %i.cd = icmp eq i32 %i.t, 0
  %.not.i.i.i.i.i.i46 = icmp eq ptr %i.bz, null
  %i.ce = getelementptr [8 x i8], ptr %i.bz, i64 %i.cc
  %i.cf = or i1 %i.cd, %.not.i.i.i.i.i.i46
  %i.cg = select i1 %i.cf, ptr null, ptr %i.ce    ; 6 uses
  %i.ch = load double, ptr %i.by, align 8, !tbaa !42, !noalias !1037 ; 5 uses
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = and i64 %i.ci, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ck = lshr exact i64 %i.ci, 3
  %i.cl = and i64 %i.ck, 1
  %i.cm = call i64 @llvm.smin.i64(i64 %i.cl, i64 %i.cb)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.f ], [ %i.cb, %bb.e ] ; 9 uses
  %i.cn = sub nsw i64 %i.cb, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.co = sdiv i64 %i.cn, 2
  %i.cp = shl nsw i64 %i.co, 1                    ; 2 uses
  %i.cq = add nsw i64 %i.cp, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.cr = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check220 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check220, label %.lr.ph.i.i.i.i.i.i.i.preheader257, label %vector.ph221

vector.ph221:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec222 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph221
  %index226 = phi i64 [ 0, %vector.ph221 ], [ %index.next228, %vector.body225 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index226 ; 2 uses
  %wide.load227 = load <2 x double>, ptr %i.cs, align 8, !tbaa !42
  %i.ct = fdiv <2 x double> %wide.load227, %broadcast.splat224
  store <2 x double> %i.ct, ptr %i.cs, align 8, !tbaa !42
  %index.next228 = add nuw i64 %index226, 2       ; 2 uses
  %i.cu = icmp eq i64 %index.next228, %n.vec222
  br i1 %i.cu, label %middle.block229, label %vector.body225, !llvm.loop !1005

middle.block229:                                  ; preds = %vector.body225
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li1ELi2ELi0ELin1EE3runERS4_RS3_:bb.a
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs.727", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs.948", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.577", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.577", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper.502", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.577", align 8 ; 11 uses
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !188

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #26
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

common.resume:                                    ; preds = %bb.ao, %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit176, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %.pn135.pn.pn.pn.pn.pn.pn, %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit176 ], [ %.pn135.pn.pn.pn.pn.pn.pn, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #26
  br label %common.resume

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !191
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !138  ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !139
  %.sroa.speculated213 = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %0) ; 5 uses
  %i.j = mul nsw i64 %.sroa.speculated213, %i.g   ; 4 uses
  %i.k = mul nsw i64 %i.g, %1                     ; 4 uses
  %i.l = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143: ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.n = load ptr, ptr %7, align 8, !tbaa !144    ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.g, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143
  %i.o = shl nuw i64 %i.j, 3                      ; 2 uses
  %i.p = icmp samesign ult i64 %i.j, 16385
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = add nuw nsw i64 %i.o, 15
  %i.r = alloca i8, i64 %i.q, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.i:                                             ; preds = %bb.g
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.o) #30 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143, %bb.h
  %i.v = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143 ], [ %i.r, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
  %i.w = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit143 ], [ %i.r, %bb.h ], [ %i.s, %bb.i ] ; 6 uses
  %i.x = icmp samesign ugt i64 %i.j, 16384        ; 2 uses
  %i.y = icmp ugt i64 %i.k, 2305843009213693951
  br i1 %i.y, label %bb.k, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.k:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc164 unwind label %bb.ad

.noexc164:                                        ; preds = %bb.k
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !145 ; 2 uses
  %.not133 = icmp eq ptr %i.ab, null
  br i1 %.not133, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.ac = shl nuw i64 %i.k, 3                     ; 2 uses
  %i.ad = icmp samesign ult i64 %i.k, 16385
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = add nuw nsw i64 %i.ac, 15
  %i.af = alloca i8, i64 %i.ae, align 16          ; 2 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ac) #30 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !37
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc167 unwind label %bb.ae

.noexc167:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.n
  %i.aj = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.af, %bb.m ], [ %i.ag, %bb.n ] ; 2 uses
  %i.ak = phi ptr [ %i.ab, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.af, %bb.m ], [ %i.ag, %bb.n ] ; 3 uses
  %i.al = icmp samesign ugt i64 %i.k, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.am = icmp sgt i64 %1, 0
  br i1 %i.am, label %bb.q, label %.thread.thread

bb.q:                                             ; preds = %bb.p
  %.sroa.speculated243 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated243, 5
  %.fr = freeze i64 %i.e
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 5 uses
  br i1 %i.ar, label %.lr.ph.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.p
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph281.split.preheader, label %._crit_edge

.lr.ph281.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = sub nsw i64 %0, %i.g                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph278.lr.ph, label %._crit_edge

.lr.ph278.lr.ph:                                  ; preds = %.lr.ph281.split.preheader
  %.sroa.speculated191323 = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %0)
  br label %.lr.ph278

.lr.ph.us.preheader:                              ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bc = icmp sgt i64 %i.g, 0
  %i.bd = shl i64 %0, 3
  %i.be = add i64 %i.bd, -8
  %i.bf = mul i64 %i.g, -8
  %i.bg = mul i64 %., %6
  %i.bh = shl i64 %i.bg, 3
  %i.bi = shl i64 %6, 3                           ; 2 uses
  %i.bj = shl i64 %3, 3                           ; 3 uses
  %i.bk = add i64 %i.bj, 8
  %i.bl = mul i64 %0, %i.bk
  %i.bm = add i64 %i.bl, -8
  %i.bn = sub i64 %i.bm, %i.bj
  %i.bo = sub nuw nsw i64 -8, %i.bj               ; 2 uses
  %i.bp = mul i64 %i.g, %i.bo
  %i.bq = shl i64 %3, 5
  %i.br = sub nuw nsw i64 -32, %i.bq
  %i.bs = getelementptr i8, ptr %2, i64 %i.bn
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bi, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.loopexit264.us, %.lr.ph.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit264.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %.0113279.us = phi i64 [ %i.gn, %.loopexit264.us ], [ %0, %.lr.ph.us.preheader ] ; 4 uses
  %i.bt = mul i64 %i.bf, %indvar
  %i.bu = add i64 %i.be, %i.bt
  %i.bv = mul i64 %i.bp, %indvar
  %.sroa.speculated191.us = call i64 @llvm.smin.i64(i64 %i.g, i64 %.0113279.us) ; 9 uses
  %i.bw = sub nuw nsw i64 %.0113279.us, %.sroa.speculated191.us ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %2, i64 %i.bw
  %i.by = getelementptr [8 x i8], ptr %4, i64 %i.bw
  br i1 %i.bc, label %.lr.ph.i.lr.ph.us.us.preheader, label %._crit_edge270.us

.lr.ph.i.lr.ph.us.us.preheader:                   ; preds = %.lr.ph.us
  %i.bz = getelementptr i8, ptr %i.bs, i64 %i.bv
  br label %.lr.ph.i.lr.ph.us.us

.lr.ph.i.lr.ph.us.us:                             ; preds = %.lr.ph.i.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvar325 = phi i64 [ %indvar.next326, %._crit_edge.us.us ], [ 0, %.lr.ph.i.lr.ph.us.us.preheader ] ; 3 uses
  %.0112268.us.us = phi i64 [ %i.gl, %._crit_edge.us.us ], [ 0, %.lr.ph.i.lr.ph.us.us.preheader ] ; 4 uses
  %i.ca = mul i64 %i.bh, %indvar325
  %i.cb = add i64 %i.bu, %i.ca
  %i.cc = mul i64 %., %indvar325
  %i.cd = sub i64 %1, %i.cc
  %smin = call i64 @llvm.smin.i64(i64 %., i64 %i.cd)
  %i.ce = add i64 %smin, -1
  %i.cf = mul i64 %i.bi, %i.ce
  %i.cg = add i64 %i.cb, %i.cf
  %i.ch = sub nsw i64 %1, %.0112268.us.us
  %.sroa.speculated186.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.ch) ; 9 uses
  %i.ci = mul i64 %.0112268.us.us, %6             ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.ci ; 2 uses
  %i.cj = mul nuw nsw i64 %.0112268.us.us, %.sroa.speculated191.us
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cj ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %i.by, i64 %i.ci
  %min.iters.check334 = icmp ugt i64 %.sroa.speculated186.us.us, 3
  %or.cond = and i1 %min.iters.check334, %ident.check.not
  %n.vec336 = and i64 %.sroa.speculated186.us.us, -4 ; 3 uses
  %cmp.n345 = icmp eq i64 %.sroa.speculated186.us.us, %n.vec336
  %xtraiter = and i64 %.sroa.speculated186.us.us, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %bb.v, %.lr.ph.i.lr.ph.us.us
  %indvar327 = phi i64 [ %indvar.next328, %bb.v ], [ 0, %.lr.ph.i.lr.ph.us.us ] ; 4 uses
  %.0111265.us.us = phi i64 [ %i.gj, %bb.v ], [ 0, %.lr.ph.i.lr.ph.us.us ] ; 3 uses
  %i.cm = shl i64 %indvar327, 2
  %i.cn = sub i64 %.sroa.speculated191.us, %i.cm
  %smin350 = call i64 @llvm.smin.i64(i64 %i.cn, i64 4)
  %i.co = add i64 %smin350, -2
  %i.cp = shl i64 %indvar327, 5
  %i.cq = mul i64 %i.br, %indvar327
  %i.cr = sub nuw nsw i64 %.sroa.speculated191.us, %.0111265.us.us ; 2 uses
  %.sroa.speculated180.us.us = call i64 @llvm.smin.i64(i64 %i.cr, i64 4) ; 10 uses
  %i.cs = sub nuw nsw i64 %.0113279.us, %.0111265.us.us ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cs
  %i.cu = mul nsw i64 %i.cs, %3
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.cs ; 2 uses
  %i.cw = sub i64 0, %.sroa.speculated180.us.us   ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %gep.us.us, i64 %i.cw ; 2 uses
  %i.cy = getelementptr [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cz = getelementptr i8, ptr %i.bz, i64 %i.cq
  br label %.lr.ph49.i.us.us

.lr.ph49.i.us.us:                                 ; preds = %._crit_edge50.i.us.us, %.lr.ph.i.us.us
  %indvars.iv.in.i.us.us = phi i64 [ %indvars.iv.i.us.us, %._crit_edge50.i.us.us ], [ %.sroa.speculated180.us.us, %.lr.ph.i.us.us ]
  %.03351.i.us.us = phi i64 [ %i.gd, %._crit_edge50.i.us.us ], [ 0, %.lr.ph.i.us.us ] ; 6 uses
  %i.da = shl i64 %.03351.i.us.us, 3
  %i.db = add i64 %i.cp, %i.da
  %i.dc = sub i64 %i.cg, %i.db
  %scevgep = getelementptr i8, ptr %4, i64 %i.dc
  %i.dd = mul i64 %i.bo, %.03351.i.us.us
  %scevgep329 = getelementptr i8, ptr %i.cz, i64 %i.dd
  %indvars.iv.i.us.us = add i64 %indvars.iv.in.i.us.us, -1 ; 6 uses
  %i.de = xor i64 %.03351.i.us.us, -1             ; 3 uses
  %i.df = mul nsw i64 %3, %i.de                   ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.cv, i64 %i.de
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.df
  %i.di = load double, ptr %i.dh, align 8, !tbaa !42
  %i.dj = fdiv double 1.000000e+00, %i.di         ; 7 uses
  %i.dk = getelementptr [8 x i8], ptr %gep.us.us, i64 %i.de ; 7 uses
  %i.dl = getelementptr [8 x i8], ptr %i.cy, i64 %i.df ; 5 uses
  %i.dm = sub nsw i64 %.03351.i.us.us, %.sroa.speculated180.us.us
  %i.dn = icmp slt i64 %i.dm, -1
  br i1 %i.dn, label %.lr.ph.us.i.us.us.preheader, label %.lr.ph49.split.i.us.us.preheader

.lr.ph.us.i.us.us.preheader:                      ; preds = %.lr.ph49.i.us.us
  %min.iters.check = icmp ult i64 %indvars.iv.i.us.us, 4
  %bound0 = icmp ult ptr %i.cx, %scevgep329
  %bound1 = icmp ult ptr %i.dl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.do = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %indvars.iv.i.us.us, -4        ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv.i.us.us, %n.vec
  %xtraiter351 = and i64 %indvars.iv.i.us.us, 1
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br label %.lr.ph.us.i.us.us

.lr.ph49.split.i.us.us.preheader:                 ; preds = %.lr.ph49.i.us.us
  br i1 %or.cond, label %vector.ph335, label %.lr.ph49.split.i.us.us.preheader347

vector.ph335:                                     ; preds = %.lr.ph49.split.i.us.us.preheader
  %broadcast.splatinsert337 = insertelement <2 x double> poison, double %i.dj, i64 0
  %broadcast.splat338 = shufflevector <2 x double> %broadcast.splatinsert337, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph335
  %index340 = phi i64 [ 0, %vector.ph335 ], [ %index.next343, %vector.body339 ] ; 2 uses
  %i.dp = getelementptr [8 x i8], ptr %i.dk, i64 %index340 ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16     ; 2 uses
  %wide.load341 = load <2 x double>, ptr %i.dp, align 8, !tbaa !42
  %wide.load342 = load <2 x double>, ptr %i.dq, align 8, !tbaa !42
  %i.dr = fmul <2 x double> %broadcast.splat338, %wide.load341
  %i.ds = fmul <2 x double> %broadcast.splat338, %wide.load342
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !42
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !42
  %index.next343 = add nuw i64 %index340, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next343, %n.vec336
  br i1 %i.dt, label %middle.block344, label %vector.body339, !llvm.loop !1168

middle.block344:                                  ; preds = %vector.body339
  br i1 %cmp.n345, label %._crit_edge50.i.us.us, label %.lr.ph49.split.i.us.us.preheader347

.lr.ph49.split.i.us.us.preheader347:              ; preds = %.lr.ph49.split.i.us.us.preheader, %middle.block344
  %.03247.i.us.us.ph = phi i64 [ 0, %.lr.ph49.split.i.us.us.preheader ], [ %n.vec336, %middle.block344 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph49.split.i.us.us.prol.loopexit, label %.lr.ph49.split.i.us.us.prol

.lr.ph49.split.i.us.us.prol:                      ; preds = %.lr.ph49.split.i.us.us.preheader347, %.lr.ph49.split.i.us.us.prol
  %.03247.i.us.us.prol = phi i64 [ %i.dy, %.lr.ph49.split.i.us.us.prol ], [ %.03247.i.us.us.ph, %.lr.ph49.split.i.us.us.preheader347 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.split.i.us.us.prol ], [ 0, %.lr.ph49.split.i.us.us.preheader347 ]
  %i.du = mul nsw i64 %.03247.i.us.us.prol, %6
  %i.dv = getelementptr [8 x i8], ptr %i.dk, i64 %i.du ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !42
  %i.dx = fmul double %i.dj, %i.dw
  store double %i.dx, ptr %i.dv, align 8, !tbaa !42
  %i.dy = add nuw nsw i64 %.03247.i.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.split.i.us.us.prol.loopexit, label %.lr.ph49.split.i.us.us.prol, !llvm.loop !1169

.lr.ph49.split.i.us.us.prol.loopexit:             ; preds = %.lr.ph49.split.i.us.us.prol, %.lr.ph49.split.i.us.us.preheader347
  %.03247.i.us.us.unr = phi i64 [ %.03247.i.us.us.ph, %.lr.ph49.split.i.us.us.preheader347 ], [ %i.dy, %.lr.ph49.split.i.us.us.prol ]
  %i.dz = sub i64 %.03247.i.us.us.ph, %.sroa.speculated186.us.us
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %._crit_edge50.i.us.us, label %.lr.ph49.split.i.us.us

.lr.ph49.split.i.us.us:                           ; preds = %.lr.ph49.split.i.us.us.prol.loopexit, %.lr.ph49.split.i.us.us
  %.03247.i.us.us = phi i64 [ %i.eu, %.lr.ph49.split.i.us.us ], [ %.03247.i.us.us.unr, %.lr.ph49.split.i.us.us.prol.loopexit ] ; 5 uses
  %i.eb = mul nsw i64 %.03247.i.us.us, %6
  %i.ec = getelementptr [8 x i8], ptr %i.dk, i64 %i.eb ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !42
  %i.ee = fmul double %i.dj, %i.ed
  store double %i.ee, ptr %i.ec, align 8, !tbaa !42
  %i.ef = add nuw nsw i64 %.03247.i.us.us, 1
  %i.eg = mul nsw i64 %i.ef, %6
  %i.eh = getelementptr [8 x i8], ptr %i.dk, i64 %i.eg ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !42
  %i.ej = fmul double %i.dj, %i.ei
  store double %i.ej, ptr %i.eh, align 8, !tbaa !42
  %i.ek = add nuw nsw i64 %.03247.i.us.us, 2
  %i.el = mul nsw i64 %i.ek, %6
  %i.em = getelementptr [8 x i8], ptr %i.dk, i64 %i.el ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !42
  %i.eo = fmul double %i.dj, %i.en
  store double %i.eo, ptr %i.em, align 8, !tbaa !42
  %i.ep = add nuw nsw i64 %.03247.i.us.us, 3
  %i.eq = mul nsw i64 %i.ep, %6
  %i.er = getelementptr [8 x i8], ptr %i.dk, i64 %i.eq ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !42
  %i.et = fmul double %i.dj, %i.es
  store double %i.et, ptr %i.er, align 8, !tbaa !42
  %i.eu = add nuw nsw i64 %.03247.i.us.us, 4      ; 2 uses
  %exitcond.not.i.us.us.3 = icmp eq i64 %i.eu, %.sroa.speculated186.us.us
  br i1 %exitcond.not.i.us.us.3, label %._crit_edge50.i.us.us, label %.lr.ph49.split.i.us.us, !llvm.loop !1170

.lr.ph.us.i.us.us:                                ; preds = %.lr.ph.us.i.us.us.preheader, %._crit_edge.us.i.us.us
  %.03247.us.i.us.us = phi i64 [ %i.gc, %._crit_edge.us.i.us.us ], [ 0, %.lr.ph.us.i.us.us.preheader ] ; 2 uses
  %i.ev = mul nsw i64 %.03247.us.i.us.us, %6      ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.dk, i64 %i.ev ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !42
  %i.ey = fmul double %i.dj, %i.ex                ; 2 uses
  store double %i.ey, ptr %i.ew, align 8, !tbaa !42
  %i.ez = getelementptr [8 x i8], ptr %i.cx, i64 %i.ev ; 4 uses
  %i.fa = fneg double %i.ey                       ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.do
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.i.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load = load <2 x double>, ptr %i.fb, align 8, !tbaa !42, !alias.scope !1182
  %wide.load330 = load <2 x double>, ptr %i.fc, align 8, !tbaa !42, !alias.scope !1182
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load331 = load <2 x double>, ptr %i.fd, align 8, !tbaa !42, !alias.scope !1183, !noalias !1182
  %wide.load332 = load <2 x double>, ptr %i.fe, align 8, !tbaa !42, !alias.scope !1183, !noalias !1182
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load331)
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load330, <2 x double> %wide.load332)
  store <2 x double> %i.ff, ptr %i.fd, align 8, !tbaa !42, !alias.scope !1183, !noalias !1182
  store <2 x double> %i.fg, ptr %i.fe, align 8, !tbaa !42, !alias.scope !1183, !noalias !1182
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !1174

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.i.us.us, %middle.block
  %.046.us.i.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.i.us.us ] ; 5 uses
  %i.fi = add i64 %.03351.i.us.us, %.046.us.i.us.us.ph
  br i1 %lcmp.mod352.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.046.us.i.us.us.ph
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !42
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.046.us.i.us.us.ph ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !42
  %i.fn = call double @llvm.fmuladd.f64(double %i.fa, double %i.fk, double %i.fm)
  store double %i.fn, ptr %i.fl, align 8, !tbaa !42
  %i.fo = or disjoint i64 %.046.us.i.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.046.us.i.us.us.unr = phi i64 [ %.046.us.i.us.us.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = icmp eq i64 %i.co, %i.fi
  br i1 %i.fp, label %._crit_edge.us.i.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.046.us.i.us.us = phi i64 [ %i.gb, %scalar.ph ], [ %.046.us.i.us.us.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.046.us.i.us.us
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !42
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.046.us.i.us.us ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !42
  %i.fu = call double @llvm.fmuladd.f64(double %i.fa, double %i.fr, double %i.ft)
  store double %i.fu, ptr %i.fs, align 8, !tbaa !42
  %i.fv = add nuw nsw i64 %.046.us.i.us.us, 1     ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !42
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fv ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !42
  %i.ga = call double @llvm.fmuladd.f64(double %i.fa, double %i.fx, double %i.fz)
  store double %i.ga, ptr %i.fy, align 8, !tbaa !42
  %i.gb = add nuw nsw i64 %.046.us.i.us.us, 2     ; 2 uses
  %exitcond53.not.i.us.us.1 = icmp eq i64 %i.gb, %indvars.iv.i.us.us
  br i1 %exitcond53.not.i.us.us.1, label %._crit_edge.us.i.us.us, label %scalar.ph, !llvm.loop !1175

._crit_edge.us.i.us.us:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.gc = add nuw nsw i64 %.03247.us.i.us.us, 1   ; 2 uses
  %exitcond54.not.i.us.us = icmp eq i64 %i.gc, %.sroa.speculated186.us.us
end_hunk_1
