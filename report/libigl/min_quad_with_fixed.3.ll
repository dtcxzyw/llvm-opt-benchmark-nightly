Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi4ELi1ELi0ELi4ELi1EEEEES9_EEvRKT_RT0_:bb.a

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.cy = icmp samesign ugt i64 %i.cv, 1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %scevgep.i = getelementptr i8, ptr %i.cr, i64 %i.cz
  %i.da = or disjoint i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 2
  %i.db = call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.da)
  %i.dc = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, -1
  %i.dd = add nsw i64 %i.db, %i.dc
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = and i64 %i.de, 9223372036854775792
  %i.dg = add nuw nsw i64 %i.df, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i, i8 0, i64 %i.dg, i1 false), !tbaa !9
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi4ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dh = icmp samesign ult i64 %i.cx, %i.cq
  br i1 %i.dh, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.di = shl nuw nsw i64 %i.cv, 3                ; 2 uses
  %i.dj = and i64 %i.di, 48
  %i.dk = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i46, 3
  %i.dl = getelementptr i8, ptr %i.cr, i64 %i.dj
  %scevgep1.i = getelementptr i8, ptr %i.dl, i64 %i.dk
  %i.dm = and i64 %i.di, 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.dm, i1 false), !tbaa !11
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi4ELi1ELi0ELi4ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 16 dereferenceable(32) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE7setZeroEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.do = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 3
  br i1 %i.do, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEaSINS_7ProductINS_17PermutationMatrixILi4ELi4EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.dp = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13, !range !14, !noundef !15
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEaSINS_7ProductINS_17PermutationMatrixILi4ELi4EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !658

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.ds, align 1, !tbaa !13
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.dt = getelementptr inbounds [8 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %i.dt, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.du = phi double [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dw, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !11 ; 2 uses
  store double %i.du, ptr %i.dv, align 8, !tbaa !11
  store double %i.dw, ptr %i.dt, align 8, !tbaa !11
  %i.dx = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.dx, align 1, !tbaa !13
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !659

_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEaSINS_7ProductINS_17PermutationMatrixILi4ELi4EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi4ELi1ELi0ELi4ELi1EEaSINS_7ProductINS_17PermutationMatrixILi4ELi4EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi4ELi1ELi0ELi4ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(416) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load double, ptr %i.a, align 16, !tbaa !101
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.e = load i8, ptr %i.d, align 1, !tbaa !41, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CD0000000000000
  %.fr126 = freeze double %i.i
  %i.j = fmul double %i.c, %.fr126                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.l = load i64, ptr %i.k, align 8, !tbaa !102  ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi134 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 5
  %i.v = shl i64 %i.n, 5
  %i.w = shl i64 %i.o, 5
  %i.x = shl i64 %i.p, 5
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 16, !tbaa !11
  %i.ad = load double, ptr %i.z, align 8, !tbaa !11
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 16, !tbaa !11
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi134, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !673

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i.preheader137

.lr.ph.i.i.preheader137:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader137, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader137 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader137 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = shl i64 %.09.i.i, 5
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i, !llvm.loop !674

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa133 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 16 uses
  %i.bc = icmp sgt i64 %.lcssa133, 0
  br i1 %i.bc, label %.lr.ph, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  %i.bd = add nsw i64 %.lcssa133, -1              ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 55 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.lcssa133, 5
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 18 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.bg = icmp eq i64 %.lcssa133, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 11 uses
  %i.bi = icmp samesign ult i64 %.lcssa133, 3     ; 5 uses
  br i1 %i.bg, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us, label %.lr.ph.split

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us: ; preds = %.lr.ph
  %i.bj = load double, ptr %1, align 16, !tbaa !11 ; 2 uses
  %i.bk = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.bk, ptr %1, align 16, !tbaa !11
  store double %i.bj, ptr %i.be, align 8, !tbaa !11
  %i.bl = load double, ptr %i.bf, align 16, !tbaa !11
  %i.bm = fsub double 1.000000e+00, %i.bl
  %i.bn = fmul double %i.bm, %i.bj                ; 2 uses
  store double %i.bn, ptr %i.be, align 8, !tbaa !11
  %i.bo = load double, ptr %1, align 16, !tbaa !11 ; 2 uses
  store double %i.bn, ptr %1, align 16, !tbaa !11
  store double %i.bo, ptr %i.be, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  store double %i.bo, ptr %i.bp, align 8, !tbaa !11
  store double %i.bq, ptr %i.be, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11
  %i.bt = fsub double 1.000000e+00, %i.bs
  %i.bu = fmul double %i.bt, %i.bq                ; 2 uses
  store double %i.bu, ptr %i.be, align 8, !tbaa !11
  %i.bv = load double, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  store double %i.bu, ptr %i.bp, align 8, !tbaa !11
  store double %i.bv, ptr %i.be, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bx = load double, ptr %i.bw, align 16, !tbaa !11 ; 2 uses
  store double %i.bv, ptr %i.bw, align 16, !tbaa !11
  store double %i.bx, ptr %i.be, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bz = load double, ptr %i.by, align 16, !tbaa !11
  %i.ca = fsub double 1.000000e+00, %i.bz
  %i.cb = fmul double %i.ca, %i.bx                ; 2 uses
  store double %i.cb, ptr %i.be, align 8, !tbaa !11
  %i.cc = load double, ptr %i.bw, align 16, !tbaa !11 ; 2 uses
  store double %i.cb, ptr %i.bw, align 16, !tbaa !11
  store double %i.cc, ptr %i.be, align 8, !tbaa !11
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  %i.cd = load double, ptr %2, align 8, !tbaa !11
  %i.ce = fsub double 1.000000e+00, %i.cd
  %i.cf = fmul double %i.ce, %i.cc
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.cg = icmp samesign ult i64 %.lcssa133, 4
  br i1 %i.cg, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader.split

.lr.ph.split.split.preheader.split:               ; preds = %.lr.ph.split
  %i.ch = getelementptr i8, ptr %i.be, i64 16
  %i.ci = add nsw i64 %.lcssa133, -2
  br label %bb.r

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.not.us101 = icmp eq i64 %i.bd, 0              ; 2 uses
  br i1 %.not.us101, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %i.cj = load double, ptr %1, align 16, !tbaa !11
  %i.ck = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.ck, ptr %1, align 16, !tbaa !11
  store double %i.cj, ptr %i.be, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.split.us
  %i.cl = load double, ptr %i.bf, align 16, !tbaa !11 ; 2 uses
  %i.cm = fcmp une double %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103

bb.d:                                             ; preds = %bb.c
  %i.cn = load double, ptr %invariant.gep, align 16, !tbaa !11
  %i.co = load double, ptr %i.bh, align 8, !tbaa !11
  %i.cp = fmul double %i.cn, %i.co                ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i8.i.us, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us

.lr.ph.i.i.i.i.i.i.i8.i.us:                       ; preds = %bb.d
  %i.cq = getelementptr i8, ptr %invariant.gep, i64 32
  %i.cr = load double, ptr %i.cq, align 16, !tbaa !11
  %i.cs = getelementptr i8, ptr %i.be, i64 16
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !11
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fadd double %i.cp, %i.cu                ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i9.i.us = icmp eq i64 %.lcssa133, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i9.i.us, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us, label %.lr.ph.i.i.i.i.i.i.i8.i.us.1

.lr.ph.i.i.i.i.i.i.i8.i.us.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.us
  %i.cw = getelementptr i8, ptr %invariant.gep, i64 64
  %i.cx = load double, ptr %i.cw, align 16, !tbaa !11
  %i.cy = getelementptr i8, ptr %i.be, i64 24
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !11
  %i.da = fmul double %i.cx, %i.cz
  %i.db = fadd double %i.cv, %i.da
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.us, %.lr.ph.i.i.i.i.i.i.i8.i.us.1, %bb.d
  %.0.i.i.i.i.i.i.us = phi double [ %i.cp, %bb.d ], [ %i.cv, %.lr.ph.i.i.i.i.i.i.i8.i.us ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i8.i.us.1 ]
  %i.dc = load double, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.dd = fadd double %.0.i.i.i.i.i.i.us, %i.dc   ; 4 uses
  %i.de = fmul double %i.dd, %i.cl
  %i.df = fsub double %i.dc, %i.de
  store double %i.df, ptr %i.be, align 8, !tbaa !11
  %i.dg = load double, ptr %i.bf, align 16, !tbaa !11, !noalias !678 ; 3 uses
  %i.dh = load double, ptr %invariant.gep, align 16, !tbaa !11
  %i.di = fmul double %i.dg, %i.dh
  %i.dj = fmul double %i.di, %i.dd
  %i.dk = load double, ptr %i.bh, align 8, !tbaa !11
  %i.dl = fsub double %i.dk, %i.dj
  store double %i.dl, ptr %i.bh, align 8, !tbaa !11
  %exitcond.not.i.i.i.i.i.i.i.i.i.us = icmp eq i64 %.lcssa133, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.us, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.1

.lr.ph.i.i.i.i.i.i.i.i.i.us.1:                    ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us
  %i.dm = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.dn = getelementptr i8, ptr %invariant.gep, i64 32
  %i.do = load double, ptr %i.dn, align 16, !tbaa !11
  %i.dp = fmul double %i.dg, %i.do
  %i.dq = fmul double %i.dp, %i.dd
  %i.dr = load double, ptr %i.dm, align 8, !tbaa !11
  %i.ds = fsub double %i.dr, %i.dq
  store double %i.ds, ptr %i.dm, align 8, !tbaa !11
  %exitcond.not.i.i.i.i.i.i.i.i.i.us.1 = icmp eq i64 %.lcssa133, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.us.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.2

.lr.ph.i.i.i.i.i.i.i.i.i.us.2:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.du = getelementptr i8, ptr %invariant.gep, i64 64
  %i.dv = load double, ptr %i.du, align 16, !tbaa !11
  %i.dw = fmul double %i.dg, %i.dv
  %i.dx = fmul double %i.dw, %i.dd
  %i.dy = load double, ptr %i.dt, align 8, !tbaa !11
  %i.dz = fsub double %i.dy, %i.dx
  store double %i.dz, ptr %i.dt, align 8, !tbaa !11
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us, %.lr.ph.i.i.i.i.i.i.i.i.i.us.1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.2, %bb.c
  br i1 %.not.us101, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us104, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103
  %i.ea = load double, ptr %1, align 16, !tbaa !11
  %i.eb = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.eb, ptr %1, align 16, !tbaa !11
  store double %i.ea, ptr %i.be, align 8, !tbaa !11
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us104

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us104: ; preds = %bb.e, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103
  %exitcond109.not = icmp eq i64 %.lcssa133, 1
  br i1 %exitcond109.not, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %.lr.ph.split.split.us.1

.lr.ph.split.split.us.1:                          ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us104
  %.not.us101.1 = icmp eq i64 %i.bd, 1            ; 2 uses
  br i1 %.not.us101.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.us.1
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !11
  %i.ee = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.ee, ptr %i.ec, align 8, !tbaa !11
  store double %i.ed, ptr %i.be, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us.1
  %gep.us102.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !11 ; 2 uses
  %i.eh = fcmp une double %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.h, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103.1

bb.h:                                             ; preds = %bb.g
  %i.ei = load double, ptr %gep.us102.1, align 8, !tbaa !11
  %i.ej = load double, ptr %i.bh, align 8, !tbaa !11
  %i.ek = fmul double %i.ei, %i.ej                ; 2 uses
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i8.i.us.1141, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1

.lr.ph.i.i.i.i.i.i.i8.i.us.1141:                  ; preds = %bb.h
  %i.el = getelementptr i8, ptr %invariant.gep, i64 40
  %i.em = load double, ptr %i.el, align 8, !tbaa !11
  %i.en = getelementptr i8, ptr %i.be, i64 16
  %i.eo = load double, ptr %i.en, align 8, !tbaa !11
  %i.ep = fmul double %i.em, %i.eo
  %i.eq = fadd double %i.ek, %i.ep                ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i9.i.us.1 = icmp eq i64 %.lcssa133, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i9.i.us.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1, label %.lr.ph.i.i.i.i.i.i.i8.i.us.1.1

.lr.ph.i.i.i.i.i.i.i8.i.us.1.1:                   ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.us.1141
  %i.er = getelementptr i8, ptr %invariant.gep, i64 72
  %i.es = load double, ptr %i.er, align 8, !tbaa !11
  %i.et = getelementptr i8, ptr %i.be, i64 24
  %i.eu = load double, ptr %i.et, align 8, !tbaa !11
  %i.ev = fmul double %i.es, %i.eu
  %i.ew = fadd double %i.eq, %i.ev
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.us.1141, %.lr.ph.i.i.i.i.i.i.i8.i.us.1.1, %bb.h
  %.0.i.i.i.i.i.i.us.1 = phi double [ %i.ek, %bb.h ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i8.i.us.1141 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i8.i.us.1.1 ]
  %i.ex = load double, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.ey = fadd double %.0.i.i.i.i.i.i.us.1, %i.ex ; 4 uses
  %i.ez = fmul double %i.ey, %i.eg
  %i.fa = fsub double %i.ex, %i.ez
  store double %i.fa, ptr %i.be, align 8, !tbaa !11
  %i.fb = load double, ptr %i.ef, align 8, !tbaa !11, !noalias !678 ; 3 uses
  %i.fc = load double, ptr %gep.us102.1, align 8, !tbaa !11
  %i.fd = fmul double %i.fb, %i.fc
  %i.fe = fmul double %i.fd, %i.ey
  %i.ff = load double, ptr %i.bh, align 8, !tbaa !11
  %i.fg = fsub double %i.ff, %i.fe
  store double %i.fg, ptr %i.bh, align 8, !tbaa !11
  %exitcond.not.i.i.i.i.i.i.i.i.i.us.1142 = icmp eq i64 %.lcssa133, 3
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.us.1142, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.1.1

.lr.ph.i.i.i.i.i.i.i.i.i.us.1.1:                  ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.fi = getelementptr i8, ptr %invariant.gep, i64 40
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !11
  %i.fk = fmul double %i.fb, %i.fj
  %i.fl = fmul double %i.fk, %i.ey
  %i.fm = load double, ptr %i.fh, align 8, !tbaa !11
  %i.fn = fsub double %i.fm, %i.fl
  store double %i.fn, ptr %i.fh, align 8, !tbaa !11
  %exitcond.not.i.i.i.i.i.i.i.i.i.us.1.1 = icmp eq i64 %.lcssa133, 2
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.us.1.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.2.1

.lr.ph.i.i.i.i.i.i.i.i.i.us.2.1:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.1.1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.fp = getelementptr i8, ptr %invariant.gep, i64 72
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %i.fr = fmul double %i.fb, %i.fq
  %i.fs = fmul double %i.fr, %i.ey
  %i.ft = load double, ptr %i.fo, align 8, !tbaa !11
  %i.fu = fsub double %i.ft, %i.fs
  store double %i.fu, ptr %i.fo, align 8, !tbaa !11
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103.1

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103.1: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.1.1, %.lr.ph.i.i.i.i.i.i.i.i.i.us.2.1, %bb.g
  br i1 %.not.us101.1, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us104.1, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELi1ELi4ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.us103.1
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !11
  %i.fx = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.fx, ptr %i.fv, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE11_solve_implINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS1_IdLi2ELi1ELi0ELi2ELi1EEEEES9_EEvRKT_RT0_:bb.a
  %i.cd = and i64 %.lcssa, 9223372036854775806    ; 2 uses
  %.not = icmp eq i64 %.lcssa, 1                  ; 2 uses
  br i1 %.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = call i64 @llvm.usub.sat.i64(i64 %i.cd, i64 2)
  %i.cf = shl i64 %i.ce, 3
  %i.cg = add i64 %i.cf, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr nonnull align 16 %7, i64 %i.cg, i1 false), !tbaa !9
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not48 = icmp eq i64 %i.cd, %.lcssa
  br i1 %.not48, label %_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = shl i64 %.lcssa, 3
  %i.ci = and i64 %i.ch, -16                      ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ci
  %scevgep56 = getelementptr i8, ptr %7, i64 %i.ci
  %i.cj = shl i64 %.lcssa, 3
  %i.ck = and i64 %i.cj, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %scevgep, ptr align 16 %scevgep56, i64 %i.ck, i1 false), !tbaa !11
  br label %_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS2_INS3_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.b

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cl, align 8
  call void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef nonnull align 16 dereferenceable(16) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEaSINS_5SolveINS_14TriangularViewIKNS0_IKNS1_IdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELj2EEES3_EEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i16 0, ptr %3, align 2
  br label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.e, %bb.d
  %i.cn = icmp slt i64 %.163.i.i.i.i.i.i.i.i, 1
  br i1 %i.cn, label %.preheader.i.i.i.i.i.i.i.i.backedge, label %_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.backedge, %bb.b
  %.163.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.163.i.i.i.i.i.i.i.i.be, %.preheader.i.i.i.i.i.i.i.i.backedge ] ; 9 uses
  %i.co = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13, !range !14, !noundef !15
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.i.backedge:              ; preds = %bb.c, %.loopexit.i.i.i.i.i.i.i.i
  %.163.i.i.i.i.i.i.i.i.be = add i64 %.163.i.i.i.i.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1326

bb.d:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.cr = getelementptr inbounds i8, ptr %3, i64 %.163.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.cr, align 1, !tbaa !13
  %.035.in.in64.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %.163.i.i.i.i.i.i.i.i
  %.035.in65.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in64.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.03566.i.i.i.i.i.i.i.i = sext i32 %.035.in65.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not3767.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.03566.i.i.i.i.i.i.i.i
  br i1 %.not3767.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.cs = getelementptr inbounds [8 x i8], ptr %2, i64 %.163.i.i.i.i.i.i.i.i ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = load double, ptr %i.cs, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ct = phi double [ %.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cv, %bb.e ]
  %.03568.i.i.i.i.i.i.i.i = phi i64 [ %.03566.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.035.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %2, i64 %.03568.i.i.i.i.i.i.i.i ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !11 ; 2 uses
  store double %i.ct, ptr %i.cu, align 8, !tbaa !11
  store double %i.cv, ptr %i.cs, align 8, !tbaa !11
  %i.cw = getelementptr inbounds i8, ptr %3, i64 %.03568.i.i.i.i.i.i.i.i
  store i8 1, ptr %i.cw, align 1, !tbaa !13
  %.035.in.in.i.i.i.i.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %.03568.i.i.i.i.i.i.i.i
  %.035.in.i.i.i.i.i.i.i.i = load i32, ptr %.035.in.in.i.i.i.i.i.i.i.i, align 4, !tbaa !113
  %.035.i.i.i.i.i.i.i.i = sext i32 %.035.in.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.not37.i.i.i.i.i.i.i.i = icmp eq i64 %.163.i.i.i.i.i.i.i.i, %.035.i.i.i.i.i.i.i.i
  br i1 %.not37.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.e, !llvm.loop !1327

_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIdLi2ELi1ELi0ELi2ELi1EEaSINS_7ProductINS_17PermutationMatrixILi2ELi2EiEES1_Li2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLi2ELi1ELi0ELi2ELi1EEEEEvRT_(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 16, !tbaa !97
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.e = load i8, ptr %i.d, align 1, !tbaa !96, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC0000000000000
  %.fr125 = freeze double %i.i
  %i.j = fmul double %i.c, %.fr125                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98   ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi130 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = shl i64 %index, 4
  %i.v = shl i64 %i.n, 4
  %i.w = shl i64 %i.o, 4
  %i.x = shl i64 %i.p, 4
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 16, !tbaa !11
  %i.ad = load double, ptr %i.z, align 8, !tbaa !11
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 16, !tbaa !11
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi130, %i.ap        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1341

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i.preheader131

.lr.ph.i.i.preheader131:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader131, %.lr.ph.i.i
  %.09.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 3 uses
  %.078.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.078.i.i.ph, %.lr.ph.i.i.preheader131 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i.i
  %.idx.i.i.i = shl i64 %.09.i.i, 4
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !11
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add i64 %.078.i.i, %i.az                ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader, label %.lr.ph.i.i, !llvm.loop !1342

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader: ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa129 = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i.i ] ; 5 uses
  %i.bc = icmp sgt i64 %.lcssa129, 0
  br i1 %i.bc, label %.lr.ph, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  %i.bd = add nsw i64 %.lcssa129, -1              ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 20 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.lcssa129, 4
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  switch i64 %.lcssa129, label %.lr.ph.split.split.preheader.split [
    i64 2, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel
    i64 1, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin
  ]

.lr.ph.split.split.preheader.split:               ; preds = %.lr.ph
  %i.bh = add nsw i64 %.lcssa129, -2
  br label %bb.e

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel: ; preds = %.lr.ph
  %i.bi = load double, ptr %1, align 16, !tbaa !11 ; 2 uses
  %i.bj = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.bj, ptr %1, align 16, !tbaa !11
  store double %i.bi, ptr %i.be, align 8, !tbaa !11
  %i.bk = load double, ptr %i.bf, align 16, !tbaa !11
  %i.bl = fsub double 1.000000e+00, %i.bk
  %i.bm = fmul double %i.bl, %i.bi                ; 2 uses
  store double %i.bm, ptr %i.be, align 8, !tbaa !11
  %i.bn = load double, ptr %1, align 16, !tbaa !11 ; 2 uses
  store double %i.bm, ptr %1, align 16, !tbaa !11
  store double %i.bn, ptr %i.be, align 8, !tbaa !11
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  %i.bo = load double, ptr %2, align 8, !tbaa !11
  %i.bp = fsub double 1.000000e+00, %i.bo
  %i.bq = fmul double %i.bp, %i.bn
  store double %i.bq, ptr %i.be, align 8, !tbaa !11
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin: ; preds = %.lr.ph
  %i.br = load double, ptr %i.bf, align 16, !tbaa !11 ; 2 uses
  %i.bs = fcmp une double %i.br, 0.000000e+00
  br i1 %i.bs, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.peel, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.peel: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin
  %i.bt = load double, ptr %invariant.gep, align 16, !tbaa !11
  %i.bu = load double, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bv = fmul double %i.bt, %i.bu
  %i.bw = load double, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bx = fadd double %i.bv, %i.bw                ; 2 uses
  %i.by = fmul double %i.bx, %i.br
  %i.bz = fsub double %i.bw, %i.by
  store double %i.bz, ptr %i.be, align 8, !tbaa !11
  %i.ca = load double, ptr %i.bf, align 16, !tbaa !11, !noalias !1346
  %i.cb = load double, ptr %invariant.gep, align 16, !tbaa !11
  %i.cc = fmul double %i.ca, %i.cb
  %i.cd = fmul double %i.cc, %i.bx
  %i.ce = fsub double %i.bu, %i.cd
  store double %i.ce, ptr %i.bg, align 8, !tbaa !11
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit106.peel.begin: ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %.not.peel = icmp eq i64 %i.dl, %i.bd           ; 2 uses
  br i1 %.not.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit106.peel.begin
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dl ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !11
  %i.ch = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.ch, ptr %i.cf, align 8, !tbaa !11
  store double %i.cg, ptr %i.be, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit106.peel.begin
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.dl
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %i.ck = fcmp une double %i.cj, 0.000000e+00
  br i1 %i.ck, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.peel

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel: ; preds = %bb.c
  %gep.peel = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.dl
  %i.cl = load double, ptr %gep.peel, align 8, !tbaa !11
  %i.cm = load double, ptr %i.bg, align 8, !tbaa !11
  %i.cn = fmul double %i.cl, %i.cm
  %i.co = load double, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.cp = fadd double %i.cn, %i.co
  %i.cq = fmul double %i.cp, %i.cj
  %i.cr = fsub double %i.co, %i.cq
  store double %i.cr, ptr %i.be, align 8, !tbaa !11
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.peel

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.peel: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.peel, %bb.c
  br i1 %.not.peel, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.peel
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dl ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !11
  %i.cu = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.cu, ptr %i.cs, align 8, !tbaa !11
  store double %i.ct, ptr %i.be, align 8, !tbaa !11
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge: ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit.peel, %bb.d, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.us.peel, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit105.peel.begin, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.us.peel, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.preheader
  ret void

bb.e:                                             ; preds = %.lr.ph.split.split.preheader.split, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit
  %.02899 = phi i64 [ %i.dl, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ], [ 0, %.lr.ph.split.split.preheader.split ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02899 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !11
  %i.cx = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.cx, ptr %i.cv, align 8, !tbaa !11
  store double %i.cw, ptr %i.be, align 8, !tbaa !11
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.02899
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !11 ; 2 uses
  %i.da = fcmp une double %i.cz, 0.000000e+00
  br i1 %i.da, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i: ; preds = %bb.e
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.02899
  %i.db = load double, ptr %gep, align 8, !tbaa !11
  %i.dc = load double, ptr %i.bg, align 8, !tbaa !11
  %i.dd = fmul double %i.db, %i.dc
  %i.de = load double, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.df = fadd double %i.dd, %i.de
  %i.dg = fmul double %i.df, %i.cz
  %i.dh = fsub double %i.de, %i.dg
  store double %i.dh, ptr %i.be, align 8, !tbaa !11
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELi1ELi2ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLi2ELi1ELi0ELi2ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i, %bb.e
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.02899 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !11
  %i.dk = load double, ptr %i.be, align 8, !tbaa !11
  store double %i.dk, ptr %i.di, align 8, !tbaa !11
  store double %i.dj, ptr %i.be, align 8, !tbaa !11
  %i.dl = add nuw nsw i64 %.02899, 1              ; 6 uses
  %exitcond.not = icmp eq i64 %.02899, %i.bh
  br i1 %exitcond.not, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge.loopexit106.peel.begin, label %bb.e, !llvm.loop !1345
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi2ELi2ELi0ELi2ELi2EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.5651", align 16 ; 19 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.Eigen::internal::evaluator.5491", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.5657", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.5469", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !107  ; 9 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !11  ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double 1.000000e+00, %i.e           ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %0, align 8, !tbaa !327    ; 11 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = load i64, ptr %i.g, align 8, !tbaa !107  ; 7 uses
  %i.l = icmp sgt i64 %i.k, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter159 = and i64 %i.k, 3                  ; 3 uses
  %i.m = icmp ult i64 %i.k, 4
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter162 = and i64 %i.k, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.af, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter163 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter163.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.n = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !11
  %i.p = fmul double %i.f, %i.o
  store double %i.p, ptr %i.n, align 8, !tbaa !11
  %i.q = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.r = getelementptr i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !11
  %i.u = fmul double %i.f, %i.t
  store double %i.u, ptr %i.s, align 8, !tbaa !11
  %i.v = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.w = getelementptr i8, ptr %i.h, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 32       ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !11
  %i.z = fmul double %i.f, %i.y
  store double %i.z, ptr %i.x, align 8, !tbaa !11
  %i.aa = shl i64 %.0810.i.i.i.i.i.i.i, 4
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 48     ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11
  %i.ae = fmul double %i.f, %i.ad
  store double %i.ae, ptr %i.ac, align 8, !tbaa !11
  %i.af = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter163.next.3 = add nuw nsw i64 %niter163, 4 ; 2 uses
  %niter163.ncmp.3 = icmp eq i64 %niter163.next.3, %unroll_iter162
  br i1 %niter163.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit130.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !1347

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.l, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi2ELi1ELi0ELi2ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter164 = and i64 %i.k, 3                  ; 3 uses
  %i.ag = icmp ult i64 %i.k, 4
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter168 = and i64 %i.k, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.av, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter169 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter169.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.ah = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %.pre64 = load double, ptr %i.ah, align 8, !tbaa !11
  %i.ai = fmul double %i.f, %.pre64
  store double %i.ai, ptr %i.ah, align 8, !tbaa !11
  %i.aj = shl i64 %.03453.i.i.i.i.i.i, 4
  %i.ak = getelementptr i8, ptr %i.h, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 16     ; 2 uses
  %.pre64.1 = load double, ptr %i.al, align 8, !tbaa !11
end_hunk_1
