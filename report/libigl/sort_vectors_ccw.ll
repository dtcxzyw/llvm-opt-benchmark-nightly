inline.NumInlined: 7516
inline.NumDeleted: 3939
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEE10normalizedEv:bb.a
  %i.br = phi i64 [ %.pr.i.i.i.i.i, %.noexc5.i ], [ %.sroa.65.0.copyload, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_5BlockIKS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 7 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !17    ; 8 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = sdiv i64 %i.br, 2                       ; 2 uses
  %i.bv = shl nsw i64 %i.bu, 1                    ; 5 uses
  %i.bw = icmp sgt i64 %i.br, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.k
  %i.bx = icmp slt i64 %i.bv, %i.br
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.by = shl nsw i64 %i.bu, 1
  %i.bz = sub i64 %i.br, %i.by                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bz, 8
  %i.ca = sub i64 %.sroa.0.0.copyload24, %i.bt
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bz, -4                      ; 3 uses
  %i.cb = add i64 %i.bv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = add i64 %i.bv, %index                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !29
  %wide.load25 = load <2 x double>, ptr %i.cf, align 8, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> %wide.load, ptr %i.cd, align 8, !tbaa !29
  store <2 x double> %wide.load25, ptr %i.cg, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ] ; 4 uses
  %i.ci = sub i64 %i.br, %.05.i.i.i.i.i.i.i.ph
  %xtraiter30 = and i64 %i.ci, 3                  ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader27 ]
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.05.i.i.i.i.i.i.i.prol
  %i.ck = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %.05.i.i.i.i.i.i.i.prol
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !29
  store double %i.cl, ptr %i.cj, align 8, !tbaa !29
  %i.cm = add nsw i64 %.05.i.i.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !101

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader27
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.cn = sub i64 %.05.i.i.i.i.i.i.i.ph, %i.br
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.05.i.i.i.i.i.i.i
  %i.cq = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %.05.i.i.i.i.i.i.i
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !29
  store double %i.cr, ptr %i.cp, align 8, !tbaa !29
  %i.cs = add nsw i64 %.05.i.i.i.i.i.i.i, 1       ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.cs
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !29
  store double %i.cv, ptr %i.ct, align 8, !tbaa !29
  %i.cw = add nsw i64 %.05.i.i.i.i.i.i.i, 2       ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cw
  %i.cy = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.cw
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !29
  store double %i.cz, ptr %i.cx, align 8, !tbaa !29
  %i.da = add nsw i64 %.05.i.i.i.i.i.i.i, 3       ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.da
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !29
  store double %i.dd, ptr %i.db, align 8, !tbaa !29
  %i.de = add nsw i64 %.05.i.i.i.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.de, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !102

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.k ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.011.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %.011.i.i.i.i.i.i
  %i.dh = load <2 x double>, ptr %i.dg, align 1, !tbaa !28
  store <2 x double> %i.dh, ptr %i.df, align 16, !tbaa !28
  %i.di = add nuw nsw i64 %.011.i.i.i.i.i.i, 2    ; 2 uses
  %i.dj = icmp slt i64 %i.di, %i.bv
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !103

bb.l:                                             ; preds = %thread-pre-split.i.i.i.i.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %bb.j
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.dl) #16
  resume { ptr, i32 } %i.dk

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i, %bb.h
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

declare void @_ZN3igl4sortIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_9DenseBaseIT_EEibRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl16sort_vectors_ccwIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EES9_RNS1_15PlainObjectBaseIT0_EERNSA_IS6_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = sdiv i64 %i.b, 3                         ; 3 uses
  %i.d = trunc i64 %i.c to i32
  tail call void @_ZN3igl16sort_vectors_ccwIN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EES9_RNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %sext = mul i64 %i.c, 12884901888
  %i.e = ashr exact i64 %sext, 32
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 1, i64 noundef %i.e)
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.preheader, label %._crit_edge

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.a
  %wide.trip.count = and i64 %i.c, 2147483647
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit, %bb.a
  ret void

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 4 uses
  %i.g = mul i64 %indvars.iv, 24
  %i.h = load ptr, ptr %2, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !57
  %i.k = mul i32 %i.j, 3
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !17, !noalias !104 ; 2 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l ; 10 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !17, !noalias !107 ; 2 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %.idx = mul nuw nsw i64 %indvars.iv, 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx ; 11 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = and i64 %i.s, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  %i.u = lshr exact i64 %i.s, 3
  %i.v = and i64 %i.u, 1
  %.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 %i.v, i64 3 ; 7 uses
  %i.w = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3     ; 3 uses
  %i.x = and i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, %.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %.not = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = load double, ptr %i.o, align 8, !tbaa !29
  store double %i.z, ptr %i.r, align 8, !tbaa !29
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !29
  store double %i.ac, ptr %i.aa, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !29
  store double %i.af, ptr %i.ad, align 8, !tbaa !29
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = icmp samesign ugt i64 %i.w, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ah = icmp samesign ult i64 %i.y, 3
  br i1 %i.ah, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %4 = and i64 %i.w, 2
  %5 = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.ai = sub nsw i64 %5, %4                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %i.aj = add i64 %i.g, %i.q
  %i.ak = shl nsw i64 %i.l, 3
  %i.al = add i64 %i.ak, %i.n
  %i.am = sub i64 %i.al, %i.aj
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.an = or disjoint i64 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = or disjoint i64 %i.y, %index            ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !29
  %wide.load26 = load <2 x double>, ptr %i.ar, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %wide.load, ptr %i.ap, align 8, !tbaa !29
  store <2 x double> %wide.load26, ptr %i.as, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27:       ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ] ; 4 uses
  %i.au = and i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %i.au, 3
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !29
  store double %i.ax, ptr %i.av, align 8, !tbaa !29
  %i.ay = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.az = xor i64 %i.au, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.az, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !111

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27 ], [ %i.ay, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ba = icmp ult i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.ba, label %_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !29
  store double %i.bd, ptr %i.bb, align 8, !tbaa !29
  %i.be = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.be
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !29
  store double %i.bh, ptr %i.bf, align 8, !tbaa !29
  %i.bi = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bi
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !29
  store double %i.bl, ptr %i.bj, align 8, !tbaa !29
  %i.bm = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bm
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !29
  store double %i.bp, ptr %i.bn, align 8, !tbaa !29
  %i.bq = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !112

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = load <2 x double>, ptr %i.bs, align 1, !tbaa !28
  store <2 x double> %i.bt, ptr %i.br, align 16, !tbaa !28
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !113
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !44
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.i) #16
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !44
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #18 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !44
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !17
  br label %_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %2, ptr %i.g, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_5BlockIKS2_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 9223372036854775807, %i.b
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !44
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %i.b)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_5BlockIKS2_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.e

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_5BlockIKS2_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.g = load ptr, ptr %1, align 8, !tbaa !18     ; 8 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load double, ptr %i.i, align 8, !tbaa !42 ; 7 uses
  %.sroa.7.32.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.j, i64 0
  %i.k = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9
  %.not8.i.i.i.i.i = icmp eq i64 %i.m, %i.k
  br i1 %.not8.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_5BlockIKS2_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEEEEvRKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %i.k)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %thread-pre-split.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %.noexc5, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_5BlockIKS2_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.n = phi i64 [ %.pr.i.i.i.i, %.noexc5 ], [ %i.k, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_5BlockIKS2_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 8 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !17     ; 8 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = sdiv i64 %i.n, 2                         ; 2 uses
  %i.r = shl nsw i64 %i.q, 1                      ; 5 uses
  %i.s = icmp sgt i64 %i.n, 1
  br i1 %i.s, label %.lr.ph.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.d
  %i.t = shufflevector <2 x double> %.sroa.7.32.vec.insert.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %i.u = icmp slt i64 %i.r, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_5BlockIKS2_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i.i.i.i.i
  %i.v = shl nsw i64 %i.q, 1
  %i.w = sub i64 %i.n, %i.v                       ; 2 uses
end_hunk_0
