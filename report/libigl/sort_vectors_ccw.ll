Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/sort_vectors_ccw?download=true
inline.NumInlined: 7516
inline.NumDeleted: 3939
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEE10normalizedEv:bb.a
  %i.bj = fcmp ogt double %.0.i.i, 0.000000e+00
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %.scalar = tail call double @llvm.sqrt.f64(double %.0.i.i)
  store ptr %.sroa.0.0.copyload, ptr %2, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x i64> %i.a, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.10.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx, i64 32, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %.sroa.65.0.copyload, ptr %i.bk, align 8, !alias.scope !95
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 72
  store double %.scalar, ptr %i.bl, align 8, !tbaa !42, !alias.scope !95
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_5BlockIKS2_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEESA_EEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit

bb.i:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.bm = sdiv i64 9223372036854775807, %.sroa.65.0.copyload
  %i.bn = icmp slt i64 %i.bm, 1
  br i1 %i.bn, label %bb.j, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bo, align 8, !tbaa !44
  invoke void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.j
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i: ; preds = %.thread, %bb.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %.sroa.65.0.copyload)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_5BlockIKS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i unwind label %bb.l

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_5BlockIKS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !9
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.bq, %.sroa.65.0.copyload
  br i1 %.not8.i.i.i.i.i.i, label %bb.k, label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_5BlockIKS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1, i64 noundef %.sroa.65.0.copyload)
          to label %.noexc5.i unwind label %bb.l

.noexc5.i:                                        ; preds = %thread-pre-split.i.i.i.i.i
  %.pr.i.i.i.i.i = load i64, ptr %i.bp, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %.noexc5.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_5BlockIKS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.br = phi i64 [ %.pr.i.i.i.i.i, %.noexc5.i ], [ %.sroa.65.0.copyload, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE10resizeLikeINS_5BlockIKS2_Li1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 7 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !17    ; 8 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = sdiv i64 %i.br, 2
  %i.bv = shl nsw i64 %i.bu, 1                    ; 6 uses
  %i.bw = icmp sgt i64 %i.br, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.k
  %i.bx = icmp slt i64 %i.bv, %i.br
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %i.by = sub i64 %i.br, %i.bv                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.by, 8
  %i.bz = sub i64 %.sroa.0.0.copyload24, %i.bt
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.by, -4                      ; 3 uses
  %i.ca = add i64 %i.bv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = add i64 %i.bv, %index                   ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.cb ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x double>, ptr %i.cd, align 8, !tbaa !29
  %wide.load25 = load <2 x double>, ptr %i.ce, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x double> %wide.load, ptr %i.cc, align 8, !tbaa !29
  store <2 x double> %wide.load25, ptr %i.cf, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader27

.lr.ph.i.i.i.i.i.i.i.preheader27:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block ] ; 4 uses
  %i.ch = sub i64 %i.br, %.05.i.i.i.i.i.i.i.ph
  %xtraiter30 = and i64 %i.ch, 3                  ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader27, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader27 ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.05.i.i.i.i.i.i.i.prol
  %i.cj = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %.05.i.i.i.i.i.i.i.prol
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !29
  store double %i.ck, ptr %i.ci, align 8, !tbaa !29
  %i.cl = add nsw i64 %.05.i.i.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !101

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader27
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader27 ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.cm = sub i64 %.05.i.i.i.i.i.i.i.ph, %i.br
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.05.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %.05.i.i.i.i.i.i.i
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !29
  store double %i.cq, ptr %i.co, align 8, !tbaa !29
  %i.cr = add nsw i64 %.05.i.i.i.i.i.i.i, 1       ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cr
  %i.ct = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !29
  store double %i.cu, ptr %i.cs, align 8, !tbaa !29
  %i.cv = add nsw i64 %.05.i.i.i.i.i.i.i, 2       ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cv
  %i.cx = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.cv
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !29
  store double %i.cy, ptr %i.cw, align 8, !tbaa !29
  %i.cz = add nsw i64 %.05.i.i.i.i.i.i.i, 3       ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cz
  %i.db = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.cz
  %i.dc = load double, ptr %i.db, align 8, !tbaa !29
  store double %i.dc, ptr %i.da, align 8, !tbaa !29
  %i.dd = add nsw i64 %.05.i.i.i.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dd, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEC2INS_5BlockIKS2_Li1ELin1ELb0EEEEERKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !102

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.k ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.011.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %.011.i.i.i.i.i.i
  %i.dg = load <2 x double>, ptr %i.df, align 1, !tbaa !28
  store <2 x double> %i.dg, ptr %i.de, align 16, !tbaa !28
  %i.dh = add nuw nsw i64 %.011.i.i.i.i.i.i, 2    ; 2 uses
  %i.di = icmp slt i64 %i.dh, %i.bv
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !103

bb.l:                                             ; preds = %thread-pre-split.i.i.i.i.i, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i, %bb.j
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.dk) #16
  resume { ptr, i32 } %i.dj

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
  %indvars.iv = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57
  %i.j = mul i32 %i.i, 3
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !17, !noalias !104 ; 2 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.k ; 10 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !17, !noalias !107 ; 2 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %.idx = mul nuw nsw i64 %indvars.iv, 24         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 11 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = and i64 %i.r, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  %i.t = lshr exact i64 %i.r, 3
  %i.u = and i64 %i.t, 1
  %.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, i64 %i.u, i64 3 ; 7 uses
  %i.v = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.w = and i64 %i.v, 2                          ; 2 uses
  %i.x = add nuw nsw i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %.not = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.y = load double, ptr %i.n, align 8, !tbaa !29
  store double %i.y, ptr %i.q, align 8, !tbaa !29
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !29
  store double %i.ab, ptr %i.z, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !29
  store double %i.ae, ptr %i.ac, align 8, !tbaa !29
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.af = icmp samesign ugt i64 %i.v, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ag = icmp samesign ult i64 %i.x, 3
  br i1 %i.ag, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ah = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.ai = sub nsw i64 %i.ah, %i.w                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %i.aj = add i64 %.idx, %i.p
  %i.ak = shl nsw i64 %i.k, 3
  %i.al = add i64 %i.ak, %i.m
  %i.am = sub i64 %i.al, %i.aj
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.an = or disjoint i64 %i.x, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = or disjoint i64 %i.x, %index            ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ao ; 2 uses
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
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ] ; 4 uses
  %i.au = and i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %i.au, 3
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ay, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader27 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
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
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !29
  store double %i.bd, ptr %i.bb, align 8, !tbaa !29
  %i.be = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !29
  store double %i.bh, ptr %i.bf, align 8, !tbaa !29
  %i.bi = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bi
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !29
  store double %i.bl, ptr %i.bj, align 8, !tbaa !29
  %i.bm = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bm
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !29
  store double %i.bp, ptr %i.bn, align 8, !tbaa !29
  %i.bq = add nuw nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !112

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb0EEEEENS5_INS6_IKS8_Li1ELin1ELb0EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0.i.i.i.i.i.i.i.i.i.i.i
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

end_hunk_0
begin_hunk_1_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll:bb.a
  store i64 %1, ptr %i.g, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::VectorBlock.302", align 8 ; 8 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.Eigen::VectorBlock.255", align 8 ; 13 uses
  %3 = alloca %"class.Eigen::Block.179", align 8  ; 10 uses
  %4 = alloca %"class.Eigen::VectorBlock.255", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.d = load <2 x double>, ptr %0, align 8, !tbaa !28 ; 2 uses
  %i.e = fmul <2 x double> %i.d, %i.d             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x double>, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !28 ; 2 uses
  %i.j = fmul <2 x double> %i.i, %i.i             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !29
  %i.m = shufflevector <2 x double> %i.e, <2 x double> %i.j, <2 x i32> <i32 0, i32 2>
  %i.n = shufflevector <2 x double> %i.e, <2 x double> %i.j, <2 x i32> <i32 1, i32 3>
  %i.o = fadd <2 x double> %i.m, %i.n
  %i.p = insertelement <2 x double> %i.g, double %i.l, i64 1 ; 2 uses
  %i.q = fmul <2 x double> %i.p, %i.p
  %i.r = fadd <2 x double> %i.q, %i.o
  %i.s = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.r) ; 2 uses
  store <2 x double> %i.s, ptr %i.c, align 8, !tbaa !29
  store <2 x double> %i.s, ptr %i.b, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !28 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u             ; 2 uses
  %shift = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.v, %shift
  %i.w = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !29 ; 2 uses
  %i.z = fmul double %i.y, %i.y
  %i.aa = fadd double %i.z, %i.w
  %.scalar.i.2 = tail call noundef double @llvm.sqrt.f64(double %i.aa) ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %.scalar.i.2, ptr %i.ab, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %.scalar.i.2, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.b, align 8, !tbaa !28 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.ag, i64 0 ; 2 uses
  %.sroa.0.8.vec.extract.i.i.i.i.i.i = extractelement <2 x double> %i.ag, i64 1 ; 2 uses
  %i.ah = fcmp olt double %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.sroa.0.8.vec.extract.i.i.i.i.i.i
  %i.ai = select i1 %i.ah, double %.sroa.0.8.vec.extract.i.i.i.i.i.i, double %.sroa.0.0.vec.extract.i.i.i.i.i.i ; 2 uses
  %i.aj = fcmp olt double %i.ai, %.scalar.i.2
  %i.ak = select i1 %i.aj, double %.scalar.i.2, double %i.ai
  %i.al = fmul double %i.ak, f0x3CB0000000000000  ; 2 uses
  %i.am = fmul double %i.al, %i.al
  %i.an = fdiv double %i.am, 3.000000e+00
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store i64 3, ptr %i.ao, align 8, !tbaa !129
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !130
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 1, ptr %i.bj, align 4, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 2, ptr %i.bk, align 8, !tbaa !57
  %i.bl = load i64, ptr %i.af, align 8, !tbaa !131
  %sext80 = shl i64 %i.bl, 32
  %i.bm = ashr exact i64 %sext80, 30
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !57
  store i32 %i.bo, ptr %i.bi, align 8, !tbaa !57
  store i32 0, ptr %i.bn, align 4, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !131
  %sext80.1 = shl i64 %i.bq, 32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bs = ashr exact i64 %sext80.1, 30
  %i.bt = getelementptr inbounds i8, ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !57
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !57
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !57
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !131
  %sext80.2 = shl i64 %i.bx, 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bz = ashr exact i64 %sext80.2, 30
  %i.ca = getelementptr inbounds i8, ptr %i.bi, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !57
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !57
  store i32 %i.cc, ptr %i.by, align 8, !tbaa !57
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !57
  %i.cd = and i64 %.1, 1
  %.not = icmp eq i64 %i.cd, 0
  %i.ce = select i1 %.not, i64 1, i64 -1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !132
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.cg, align 8, !tbaa !59
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.073150 = phi i64 [ 0, %bb.a ], [ %i.eh, %._crit_edge ] ; 22 uses
  %.075149 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.ch = and i64 %.073150, 1                     ; 2 uses
  %i.ci = sub nsw i64 2, %.073150                 ; 3 uses
  %i.cj = sub nuw nsw i64 3, %.073150             ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.073150 ; 6 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !29 ; 5 uses
  %.not146 = icmp eq i64 %.073150, 2
  br i1 %.not146, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.ci, 1
  %i.cm = icmp eq i64 %.073150, 1
  br i1 %i.cm, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ci, -2
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %.sroa.7.0.i.i = phi double [ %i.cl, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.preheader.i.i.i.i ]
  %.sroa.5.0.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.5.1.i.i.1, %.preheader.i.i.i.i ]
  %.02030.i.i.i.i = phi i64 [ 1, %.preheader.i.i.i.i.preheader.new ], [ %i.cu, %.preheader.i.i.i.i ] ; 4 uses
  %.promoted2829.i.i.i.i = phi double [ %i.cl, %.preheader.i.i.i.i.preheader.new ], [ %.promoted27.i.i.i.i.1, %.preheader.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.cn = getelementptr [8 x i8], ptr %i.ck, i64 %.02030.i.i.i.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !29 ; 3 uses
  %i.cp = fcmp ogt double %i.co, %.promoted2829.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i = select i1 %i.cp, double %i.co, double %.sroa.7.0.i.i
  %.sroa.5.1.i.i = select i1 %i.cp, i64 %.02030.i.i.i.i, i64 %.sroa.5.0.i.i
  %.promoted27.i.i.i.i = select i1 %i.cp, double %i.co, double %.promoted2829.i.i.i.i ; 2 uses
  %i.cq = add nuw nsw i64 %.02030.i.i.i.i, 1      ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %i.ck, i64 %i.cq
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !29 ; 3 uses
  %i.ct = fcmp ogt double %i.cs, %.promoted27.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ct, double %i.cs, double %.sroa.7.1.i.i ; 3 uses
  %.sroa.5.1.i.i.1 = select i1 %i.ct, i64 %i.cq, i64 %.sroa.5.1.i.i ; 3 uses
  %.promoted27.i.i.i.i.1 = select i1 %i.ct, double %i.cs, double %.promoted27.i.i.i.i ; 2 uses
  %i.cu = add nuw nsw i64 %.02030.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !133

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.sroa.7.0.i.i.epil.init = phi double [ %i.cl, %.preheader.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.5.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02030.i.i.i.i.epil.init = phi i64 [ 1, %.preheader.i.i.i.i.preheader ], [ %i.cu, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.promoted2829.i.i.i.i.epil.init = phi double [ %i.cl, %.preheader.i.i.i.i.preheader ], [ %.promoted27.i.i.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod168)
  %i.cv = getelementptr [8 x i8], ptr %i.ck, i64 %.02030.i.i.i.i.epil.init
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !29 ; 2 uses
  %i.cx = fcmp ogt double %i.cw, %.promoted2829.i.i.i.i.epil.init ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.cx, double %i.cw, double %.sroa.7.0.i.i.epil.init
  %.sroa.5.1.i.i.epil = select i1 %i.cx, i64 %.02030.i.i.i.i.epil.init, i64 %.sroa.5.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %bb.c
  %.sroa.7.2.i.i = phi double [ %i.cl, %bb.c ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.5.2.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.5.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.cy = add nsw i64 %.sroa.5.2.i.i, %.073150    ; 4 uses
  %i.cz = load i64, ptr %i.ao, align 8, !tbaa !129
  %i.da = icmp eq i64 %i.cz, 3
  br i1 %i.da, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.db = fmul double %.sroa.7.2.i.i, %.sroa.7.2.i.i
  %i.dc = uitofp nneg i64 %i.cj to double
  %i.dd = fmul double %i.an, %i.dc
  %i.de = fcmp olt double %i.db, %i.dd
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.073150, ptr %i.ao, align 8, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.073150
  store i64 %i.cy, ptr %i.df, align 8, !tbaa !131
  %.not81 = icmp eq i64 %.sroa.5.2.i.i, 0
  %.pre = mul nuw nsw i64 %.073150, 24            ; 3 uses
  br i1 %.not81, label %._crit_edge155, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 3 uses
  %.idx.i.i.i.i83 = mul nsw i64 %i.cy, 24
  %i.dh = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i83 ; 3 uses
  %i.di = load <2 x double>, ptr %i.dh, align 8, !tbaa !28
  %i.dj = load <2 x double>, ptr %i.dg, align 8, !tbaa !28
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !28
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !28
  %i.dk = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dh, i64 16     ; 2 uses
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !29
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !29
  store double %i.dn, ptr %i.dk, align 8, !tbaa !29
  store double %i.dm, ptr %i.dl, align 8, !tbaa !29
  %i.do = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cy ; 2 uses
  %i.dp = load double, ptr %i.ck, align 8, !tbaa !29
  %i.dq = load double, ptr %i.do, align 8, !tbaa !29
  store double %i.dq, ptr %i.ck, align 8, !tbaa !29
  store double %i.dp, ptr %i.do, align 8, !tbaa !29
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.073150 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cy ; 2 uses
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !29
  %i.du = load double, ptr %i.ds, align 8, !tbaa !29
  store double %i.du, ptr %i.dr, align 8, !tbaa !29
  store double %i.dt, ptr %i.ds, align 8, !tbaa !29
  %i.dv = add nsw i64 %.075149, 1
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %i.dv, %bb.g ], [ %.075149, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.073150 ; 2 uses
  store ptr %i.dx, ptr %2, align 8, !tbaa !134, !alias.scope !136
  store i64 %i.cj, ptr %i.aq, align 8, !tbaa !22, !alias.scope !136
  store ptr %i.dw, ptr %i.ar, align 8
  store ptr %0, ptr %.sroa.5107.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6108.0..sroa_idx, align 8
  store i64 %.073150, ptr %.sroa.7109.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8110.0..sroa_idx, align 8
  store i64 %.073150, ptr %i.as, align 8, !tbaa !22, !alias.scope !136
  store i64 3, ptr %i.at, align 8, !tbaa !139, !alias.scope !136
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.073150 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.dz = sub nuw nsw i64 2, %.073150             ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %i.ea, ptr %1, align 8, !tbaa !149
  store i64 %i.dz, ptr %i.au, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.av, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.aw, align 8, !tbaa !22
  store i64 3, ptr %i.ax, align 8, !tbaa !151
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.eb = load double, ptr %i.a, align 8, !tbaa !29 ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %0, i64 %.073150 ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 %.pre
  store double %i.eb, ptr %i.ed, align 8, !tbaa !29
  %i.ee = call noundef double @llvm.fabs.f64(double %i.eb) ; 2 uses
  %i.ef = load double, ptr %i.ap, align 8, !tbaa !130
  %i.eg = fcmp ogt double %i.ee, %i.ef
  br i1 %i.eg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge155
  store double %i.ee, ptr %i.ap, align 8, !tbaa !130
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge155
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.eh = add nuw nsw i64 %.073150, 1             ; 9 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %i.eh, 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i.i.i.i85
  store ptr %i.ei, ptr %3, align 8, !tbaa !156, !alias.scope !158
  store i64 %i.cj, ptr %i.ay, align 8, !tbaa !22, !alias.scope !158
  store i64 %i.dz, ptr %i.az, align 8, !tbaa !22, !alias.scope !158
  store ptr %0, ptr %i.ba, align 8, !tbaa !161, !alias.scope !158
  store i64 %.073150, ptr %i.bb, align 8, !tbaa !22, !alias.scope !158
  store i64 %i.eh, ptr %i.bc, align 8, !tbaa !22, !alias.scope !158
  store i64 3, ptr %i.bd, align 8, !tbaa !162, !alias.scope !158
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eh
  store ptr %i.ej, ptr %4, align 8, !tbaa !134, !alias.scope !165
  store i64 %i.dz, ptr %i.be, align 8, !tbaa !22, !alias.scope !165
  store ptr %i.dw, ptr %i.bf, align 8
  store ptr %0, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6102.0..sroa_idx, align 8
  store i64 %.073150, ptr %.sroa.7103.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.8104.0..sroa_idx, align 8
  store i64 %i.eh, ptr %i.bg, align 8, !tbaa !22, !alias.scope !165
  store i64 3, ptr %i.bh, align 8, !tbaa !139, !alias.scope !165
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.eh
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eh
  %i.el = icmp samesign ult i64 %.073150, 2
  br i1 %i.el, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.em = and i64 %i.dz, 2                        ; 3 uses
  %.not.i.i.i.i.i.not = icmp eq i64 %.073150, 0
  %.not161 = icmp eq i64 %i.em, %i.dz
  %lcmp.mod170.not = icmp eq i64 %i.ch, 0
  br label %bb.j

._crit_edge:                                      ; preds = %bb.p, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %exitcond152.not = icmp eq i64 %i.eh, 3
  br i1 %exitcond152.not, label %bb.b, label %bb.c, !llvm.loop !168

bb.j:                                             ; preds = %.lr.ph, %bb.p
  %.072148 = phi i64 [ %i.eh, %.lr.ph ], [ %i.gk, %bb.p ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.072148 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !29 ; 4 uses
  %i.ep = fcmp une double %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.idx.i87 = mul nuw nsw i64 %.072148, 24        ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ec, i64 %.idx.i87
  %i.er = load double, ptr %i.eq, align 8, !tbaa !29
  %i.es = call noundef double @llvm.fabs.f64(double %i.er)
  %i.et = fdiv double %i.es, %i.eo                ; 2 uses
  %i.eu = fadd double %i.et, 1.000000e+00
  %i.ev = fsub double 1.000000e+00, %i.et
  %i.ew = fmul double %i.eu, %i.ev                ; 2 uses
  %i.ex = fcmp olt double %i.ew, 0.000000e+00
  %i.ey = select i1 %i.ex, double 0.000000e+00, double %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.072148 ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !29
  %i.fb = fdiv double %i.eo, %i.fa                ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = fmul double %i.fc, %i.ey
  %i.fe = fcmp ugt double %i.fd, f0x3E50000000000000
  br i1 %i.fe, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.i87 ; 7 uses
  br i1 %.not.i.i.i.i.i.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ff = load <2 x double>, ptr %gep, align 8, !tbaa !28 ; 2 uses
  %i.fg = fmul <2 x double> %i.ff, %i.ff          ; 2 uses
  %shift163 = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop164 = fadd <2 x double> %i.fg, %shift163
  %i.fh = extractelement <2 x double> %foldExtExtBinop164, i64 0 ; 3 uses
  br i1 %.not161, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.m
  br i1 %lcmp.mod170.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ], [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ], [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i.prol
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !29 ; 2 uses
  %i.fk = fmul double %i.fj, %i.fj
  %i.fl = fadd double %.182.i.i.i.i.i.prol, %i.fk ; 2 uses
  %i.fm = add nuw nsw i64 %.05283.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.ch
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.preheader.new, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !169

.lr.ph85.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.em, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fm, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.fh, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.fl, %.lr.ph85.i.i.i.i.i.prol ]
  br label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.preheader.new
  %.05283.i.i.i.i.i = phi i64 [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gg, %.lr.ph85.i.i.i.i.i ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.preheader.new ], [ %i.gf, %.lr.ph85.i.i.i.i.i ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !29 ; 2 uses
  %i.fp = fmul double %i.fo, %i.fo
  %i.fq = fadd double %.182.i.i.i.i.i, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
end_hunk_1
