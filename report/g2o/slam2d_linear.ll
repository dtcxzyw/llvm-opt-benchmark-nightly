Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/slam2d_linear?download=true
inline.NumInlined: 7562
inline.NumDeleted: 4021
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE:bb.a
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !660, !range !198, !noundef !199
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.preheader.i70
  %i.qi = add nsw i64 %.187.i72, 1                ; 2 uses
  %i.qj = icmp slt i64 %i.qi, %i.pz
  br i1 %i.qj, label %.preheader.i70.backedge, label %_ZN5Eigen8internal26permutation_matrix_productINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELb0ENS_10DenseShapeEE3runIS7_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS7_.exit

.preheader.i70.backedge:                          ; preds = %bb.aj, %.loopexit.i84
  %.187.i72.be = phi i64 [ %i.qi, %bb.aj ], [ %i.ql, %.loopexit.i84 ]
  br label %.preheader.i70, !llvm.loop !658

bb.ak:                                            ; preds = %.preheader.i70
  %i.qk = getelementptr inbounds i8, ptr %calloc.i68, i64 %.187.i72
  %i.ql = add nsw i64 %.187.i72, 1                ; 2 uses
  store i8 1, ptr %i.qk, align 1, !tbaa !660
  %.034.in.in88.i73 = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %.187.i72
  %.034.in89.i74 = load i32, ptr %.034.in.in88.i73, align 4, !tbaa !48
  %.03490.i75 = sext i32 %.034.in89.i74 to i64    ; 2 uses
  %.not4191.i76 = icmp eq i64 %.187.i72, %.03490.i75
  br i1 %.not4191.i76, label %.loopexit.i84, label %.lr.ph93.i77

.lr.ph93.i77:                                     ; preds = %bb.ak
  %i.qm = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %.187.i72 ; 2 uses
  %.pre.i78 = load double, ptr %i.qm, align 8, !tbaa !175
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph93.i77
  %i.qn = phi double [ %.pre.i78, %.lr.ph93.i77 ], [ %i.qp, %bb.al ]
  %.03492.i79 = phi i64 [ %.03490.i75, %.lr.ph93.i77 ], [ %.034.i82, %bb.al ] ; 3 uses
  %i.qo = getelementptr inbounds [8 x i8], ptr %.sroa.4.8.copyload, i64 %.03492.i79 ; 2 uses
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !175 ; 2 uses
  store double %i.qn, ptr %i.qo, align 8, !tbaa !175
  store double %i.qp, ptr %i.qm, align 8, !tbaa !175
  %i.qq = getelementptr inbounds i8, ptr %calloc.i68, i64 %.03492.i79
  store i8 1, ptr %i.qq, align 1, !tbaa !660
  %.034.in.in.i80 = getelementptr inbounds [4 x i8], ptr %i.qd, i64 %.03492.i79
  %.034.in.i81 = load i32, ptr %.034.in.in.i80, align 4, !tbaa !48
  %.034.i82 = sext i32 %.034.in.i81 to i64        ; 2 uses
  %.not41.i83 = icmp eq i64 %.187.i72, %.034.i82
  br i1 %.not41.i83, label %.loopexit.i84, label %bb.al, !llvm.loop !659

_ZN5Eigen8internal26permutation_matrix_productINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELb0ENS_10DenseShapeEE3runIS7_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS7_.exit: ; preds = %.loopexit.i84, %bb.aj, %bb.ah
  %.sroa.068.081103.i67 = phi ptr [ null, %bb.ah ], [ %calloc.i68, %bb.aj ], [ %calloc.i68, %.loopexit.i84 ]
  call void @free(ptr noundef %.sroa.068.081103.i67) #35
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %_ZN5Eigen8internal26permutation_matrix_productINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELb0ENS_10DenseShapeEE3runIS7_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS7_.exit, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !674, !nonnull !199, !align !209 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 3 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %1, align 8                ; 8 uses
  br i1 %i.e, label %.preheader.preheader.i, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi1ELi0EE3runERS4_RSA_.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 10 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 8 uses
  %i.m = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8
  %.fr5 = freeze ptr %i.n                         ; 2 uses
  %i.o = icmp eq ptr %.fr5, null
  br i1 %i.o, label %.preheader.preheader.i.split.us, label %.preheader.preheader.i.split

.preheader.preheader.i.split.us:                  ; preds = %.preheader.preheader.i, %.loopexit.i.us
  %.01941.i.us = phi i64 [ %i.bx, %.loopexit.i.us ], [ 0, %.preheader.preheader.i ] ; 5 uses
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %.01941.i.us ; 6 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !175 ; 3 uses
  %i.r = fcmp une double %i.q, 0.000000e+00
  br i1 %i.r, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us, label %.loopexit.i.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us: ; preds = %.preheader.preheader.i.split.us
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01941.i.us ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !48   ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !48   ; 2 uses
  %i.x = sext i32 %i.w to i64                     ; 6 uses
  %i.y = icmp sgt i32 %i.w, %i.t
  br i1 %i.y, label %.lr.ph.i.us, label %.critedge.i.us

.lr.ph.i.us:                                      ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us, %bb.b
  %.sroa.11.038.i.us = phi i64 [ %i.ad, %bb.b ], [ %i.u, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us ] ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.038.i.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !48
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp sgt i64 %.01941.i.us, %i.ab
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.us
  %i.ad = add nsw i64 %.sroa.11.038.i.us, 1       ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ad, %i.x
  br i1 %exitcond.not.i.us, label %.critedge.i.us, label %.lr.ph.i.us, !llvm.loop !668

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.038.i.us
  %i.af = load double, ptr %i.ae, align 8, !tbaa !175
  %i.ag = fdiv double %i.q, %i.af
  store double %i.ag, ptr %i.p, align 8, !tbaa !175
  %i.ah = icmp eq i64 %.01941.i.us, %i.ab
  %i.ai = zext i1 %i.ah to i64
  %spec.select.i.us = add nsw i64 %.sroa.11.038.i.us, %i.ai
  br label %bb.d

.critedge.i.us:                                   ; preds = %bb.b, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us
  %.sroa.11.0.lcssa.i.us = phi i64 [ %i.u, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us ], [ %i.x, %bb.b ] ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.0.lcssa.i.us
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !175
  %i.al = fdiv double %i.q, %i.ak
  store double %i.al, ptr %i.p, align 8, !tbaa !175
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.us, %bb.c
  %.sroa.11.1.i.us = phi i64 [ %.sroa.11.0.lcssa.i.us, %.critedge.i.us ], [ %spec.select.i.us, %bb.c ] ; 7 uses
  %i.am = icmp slt i64 %.sroa.11.1.i.us, %i.x
  br i1 %i.am, label %.lr.ph40.i.us.preheader, label %.loopexit.i.us

.lr.ph40.i.us.preheader:                          ; preds = %bb.d
  %i.an = sub i64 %i.x, %.sroa.11.1.i.us
  %xtraiter41 = and i64 %i.an, 1
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph40.i.us.prol.loopexit, label %.lr.ph40.i.us.prol

.lr.ph40.i.us.prol:                               ; preds = %.lr.ph40.i.us.preheader
  %i.ao = load double, ptr %i.p, align 8, !tbaa !175
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.1.i.us
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !175
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.1.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !48
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.f, i64 %i.at ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !175
  %i.aw = fneg double %i.ao
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aq, double %i.av)
  store double %i.ax, ptr %i.au, align 8, !tbaa !175
  %i.ay = add nsw i64 %.sroa.11.1.i.us, 1
  br label %.lr.ph40.i.us.prol.loopexit

.lr.ph40.i.us.prol.loopexit:                      ; preds = %.lr.ph40.i.us.prol, %.lr.ph40.i.us.preheader
  %.sroa.11.239.i.us.unr = phi i64 [ %.sroa.11.1.i.us, %.lr.ph40.i.us.preheader ], [ %i.ay, %.lr.ph40.i.us.prol ]
  %i.az = add nsw i64 %i.x, -1
  %i.ba = icmp eq i64 %.sroa.11.1.i.us, %i.az
  br i1 %i.ba, label %.loopexit.i.us, label %.lr.ph40.i.us

.lr.ph40.i.us:                                    ; preds = %.lr.ph40.i.us.prol.loopexit, %.lr.ph40.i.us
  %.sroa.11.239.i.us = phi i64 [ %i.bw, %.lr.ph40.i.us ], [ %.sroa.11.239.i.us.unr, %.lr.ph40.i.us.prol.loopexit ] ; 4 uses
  %i.bb = load double, ptr %i.p, align 8, !tbaa !175
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.239.i.us
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !175
  %i.be = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.239.i.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !48
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !175
  %i.bj = fneg double %i.bb
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bd, double %i.bi)
  store double %i.bk, ptr %i.bh, align 8, !tbaa !175
  %i.bl = add nsw i64 %.sroa.11.239.i.us, 1       ; 2 uses
  %i.bm = load double, ptr %i.p, align 8, !tbaa !175
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !175
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bl
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !48
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [8 x i8], ptr %i.f, i64 %i.br ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !175
  %i.bu = fneg double %i.bm
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bo, double %i.bt)
  store double %i.bv, ptr %i.bs, align 8, !tbaa !175
  %i.bw = add nsw i64 %.sroa.11.239.i.us, 2       ; 2 uses
  %exitcond48.not.i.us.1 = icmp eq i64 %i.bw, %i.x
  br i1 %exitcond48.not.i.us.1, label %.loopexit.i.us, label %.lr.ph40.i.us, !llvm.loop !669

.loopexit.i.us:                                   ; preds = %.lr.ph40.i.us.prol.loopexit, %.lr.ph40.i.us, %bb.d, %.preheader.preheader.i.split.us
  %i.bx = add nuw nsw i64 %.01941.i.us, 1         ; 2 uses
  %exitcond49.not.i.us = icmp eq i64 %i.bx, %i.d
  br i1 %exitcond49.not.i.us, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi1ELi0EE3runERS4_RSA_.exit, label %.preheader.preheader.i.split.us, !llvm.loop !670

.preheader.preheader.i.split:                     ; preds = %.preheader.preheader.i, %.loopexit.i
  %.01941.i = phi i64 [ %i.ei, %.loopexit.i ], [ 0, %.preheader.preheader.i ] ; 6 uses
  %i.by = getelementptr [8 x i8], ptr %i.f, i64 %.01941.i ; 6 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !175 ; 3 uses
  %i.ca = fcmp une double %i.bz, 0.000000e+00
  br i1 %i.ca, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, label %.loopexit.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i: ; preds = %.preheader.preheader.i.split
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01941.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !48
  %i.cd = sext i32 %i.cc to i64                   ; 5 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.fr5, i64 %.01941.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !48 ; 2 uses
  %i.cg = sext i32 %i.cf to i64                   ; 3 uses
  %i.ch = add nsw i64 %i.cg, %i.cd                ; 4 uses
  %i.ci = icmp sgt i32 %i.cf, 0
  br i1 %i.ci, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, %bb.e
  %.sroa.11.038.i = phi i64 [ %i.cn, %bb.e ], [ %i.cd, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i ] ; 4 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.038.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !48
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = icmp sgt i64 %.01941.i, %i.cl
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.cn = add nsw i64 %.sroa.11.038.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cn, %i.ch
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !668

.critedge.i:                                      ; preds = %bb.e, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i
  %.sroa.11.0.lcssa.i = phi i64 [ %i.cd, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i ], [ %i.ch, %bb.e ] ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.0.lcssa.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !175
  %i.cq = fdiv double %i.bz, %i.cp
  store double %i.cq, ptr %i.by, align 8, !tbaa !175
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.038.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !175
  %i.ct = fdiv double %i.bz, %i.cs
  store double %i.ct, ptr %i.by, align 8, !tbaa !175
  %i.cu = icmp eq i64 %.01941.i, %i.cl
  %i.cv = zext i1 %i.cu to i64
  %spec.select.i = add nsw i64 %.sroa.11.038.i, %i.cv
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %.sroa.11.1.i = phi i64 [ %.sroa.11.0.lcssa.i, %.critedge.i ], [ %spec.select.i, %bb.f ] ; 7 uses
  %i.cw = icmp slt i64 %.sroa.11.1.i, %i.ch
  br i1 %i.cw, label %.lr.ph40.i.preheader, label %.loopexit.i

.lr.ph40.i.preheader:                             ; preds = %bb.g
  %2 = add nsw i64 %i.cg, %i.cd
  %i.cx = sub i64 %2, %.sroa.11.1.i
  %i.cy = add nsw i64 %i.cg, -1
  %i.cz = add nsw i64 %i.cy, %i.cd
  %xtraiter = and i64 %i.cx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.i.prol.loopexit, label %.lr.ph40.i.prol

.lr.ph40.i.prol:                                  ; preds = %.lr.ph40.i.preheader
  %i.da = load double, ptr %i.by, align 8, !tbaa !175
  %i.db = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.1.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !175
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.1.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !48
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.f, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !175
  %i.di = fneg double %i.da
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dc, double %i.dh)
  store double %i.dj, ptr %i.dg, align 8, !tbaa !175
  %i.dk = add nsw i64 %.sroa.11.1.i, 1
  br label %.lr.ph40.i.prol.loopexit

.lr.ph40.i.prol.loopexit:                         ; preds = %.lr.ph40.i.prol, %.lr.ph40.i.preheader
  %.sroa.11.239.i.unr = phi i64 [ %.sroa.11.1.i, %.lr.ph40.i.preheader ], [ %i.dk, %.lr.ph40.i.prol ]
  %i.dl = icmp eq i64 %i.cz, %.sroa.11.1.i
  br i1 %i.dl, label %.loopexit.i, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.prol.loopexit, %.lr.ph40.i
  %.sroa.11.239.i = phi i64 [ %i.eh, %.lr.ph40.i ], [ %.sroa.11.239.i.unr, %.lr.ph40.i.prol.loopexit ] ; 4 uses
  %i.dm = load double, ptr %i.by, align 8, !tbaa !175
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.11.239.i
  %i.do = load double, ptr %i.dn, align 8, !tbaa !175
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.11.239.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !48
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr [8 x i8], ptr %i.f, i64 %i.dr ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !175
  %i.du = fneg double %i.dm
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.du, double %i.do, double %i.dt)
  store double %i.dv, ptr %i.ds, align 8, !tbaa !175
  %i.dw = add nsw i64 %.sroa.11.239.i, 1          ; 2 uses
  %i.dx = load double, ptr %i.by, align 8, !tbaa !175
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.dw
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !175
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.dw
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !48
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr [8 x i8], ptr %i.f, i64 %i.ec ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !175
  %i.ef = fneg double %i.dx
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ef, double %i.dz, double %i.ee)
  store double %i.eg, ptr %i.ed, align 8, !tbaa !175
  %i.eh = add nsw i64 %.sroa.11.239.i, 2          ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %i.eh, %i.ch
  br i1 %exitcond48.not.i.1, label %.loopexit.i, label %.lr.ph40.i, !llvm.loop !669

.loopexit.i:                                      ; preds = %.lr.ph40.i.prol.loopexit, %.lr.ph40.i, %bb.g, %.preheader.preheader.i.split
  %i.ei = add nuw nsw i64 %.01941.i, 1            ; 2 uses
  %exitcond49.not.i = icmp eq i64 %i.ei, %i.d
  br i1 %exitcond49.not.i, label %_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi1ELi0EE3runERS4_RSA_.exit, label %.preheader.preheader.i.split, !llvm.loop !670

_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_12SparseMatrixIdLi0EiEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi1ELi0EE3runERS4_RSA_.exit: ; preds = %.loopexit.i, %.loopexit.i.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi2ELi2ELi1EE3runERS7_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(19) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !683, !nonnull !199, !align !209 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %1, align 8                ; 8 uses
  br i1 %i.e, label %.split, label %.split48

.split:                                           ; preds = %bb.a
  %.02243 = add nsw i64 %i.d, -1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156  ; 8 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !157  ; 8 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !155  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %.split, %._crit_edge.us.us
  %.02244.us.us = phi i64 [ %.022.us.us, %._crit_edge.us.us ], [ %.02243, %.split ] ; 5 uses
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %.02244.us.us ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !175 ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02244.us.us ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48   ; 2 uses
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48   ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 6 uses
  %i.x = icmp slt i32 %i.s, %i.v
  br i1 %i.x, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.035.us.us = phi i64 [ %i.ac, %bb.b ], [ %i.t, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.035.us.us
  %i.z = load i32, ptr %i.y, align 4, !tbaa !48
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp sgt i64 %.02244.us.us, %i.aa
  br i1 %i.ab, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ac = add nsw i64 %.sroa.10.035.us.us, 1      ; 2 uses
  %exitcond55.not = icmp eq i64 %i.ac, %i.w
  br i1 %exitcond55.not, label %.critedge.us.us, label %.lr.ph.us.us, !llvm.loop !675

.critedge.us.us:                                  ; preds = %bb.b, %.lr.ph.us.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us
  %.sroa.10.0.lcssa.us.us = phi i64 [ %i.t, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ], [ %.sroa.10.035.us.us, %.lr.ph.us.us ], [ %i.w, %bb.b ] ; 5 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.0.lcssa.us.us
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !175
  %.sroa.10.138.us.us = add nsw i64 %.sroa.10.0.lcssa.us.us, 1 ; 4 uses
  %i.af = icmp slt i64 %.sroa.10.138.us.us, %i.w
  br i1 %i.af, label %.lr.ph41.us.us.preheader, label %._crit_edge.us.us

.lr.ph41.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.ag = add nsw i64 %i.w, -2
  %i.ah = sub i64 %.sroa.10.0.lcssa.us.us, %i.w
  %i.ai = and i64 %i.ah, 1
  %lcmp.mod68.not.not = icmp eq i64 %i.ai, 0
  br i1 %lcmp.mod68.not.not, label %.lr.ph41.us.us.prol, label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol:                              ; preds = %.lr.ph41.us.us.preheader
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.138.us.us
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !175
  %i.al = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.138.us.us
  %i.am = load i32, ptr %i.al, align 4, !tbaa !48
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.f, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !175
  %i.aq = fneg double %i.ak
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.ap, double %i.q) ; 2 uses
  %.sroa.10.1.us.us.prol = add nsw i64 %.sroa.10.0.lcssa.us.us, 2
  br label %.lr.ph41.us.us.prol.loopexit

.lr.ph41.us.us.prol.loopexit:                     ; preds = %.lr.ph41.us.us.prol, %.lr.ph41.us.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph41.us.us.preheader ], [ %i.ar, %.lr.ph41.us.us.prol ]
  %.sroa.10.140.us.us.unr = phi i64 [ %.sroa.10.138.us.us, %.lr.ph41.us.us.preheader ], [ %.sroa.10.1.us.us.prol, %.lr.ph41.us.us.prol ]
  %.02139.us.us.unr = phi double [ %i.q, %.lr.ph41.us.us.preheader ], [ %i.ar, %.lr.ph41.us.us.prol ]
  %i.as = icmp eq i64 %i.ag, %.sroa.10.0.lcssa.us.us
  br i1 %i.as, label %._crit_edge.us.us, label %.lr.ph41.us.us

.lr.ph41.us.us:                                   ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us
  %.sroa.10.140.us.us = phi i64 [ %.sroa.10.1.us.us.1, %.lr.ph41.us.us ], [ %.sroa.10.140.us.us.unr, %.lr.ph41.us.us.prol.loopexit ] ; 4 uses
  %.02139.us.us = phi double [ %i.bk, %.lr.ph41.us.us ], [ %.02139.us.us.unr, %.lr.ph41.us.us.prol.loopexit ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.140.us.us
  %i.au = load double, ptr %i.at, align 8, !tbaa !175
  %i.av = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.140.us.us
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !48
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !175
  %i.ba = fneg double %i.au
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.az, double %.02139.us.us)
  %.sroa.10.1.us.us = add nsw i64 %.sroa.10.140.us.us, 1 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1.us.us
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !175
  %i.be = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1.us.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !48
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !175
  %i.bj = fneg double %i.bd
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bi, double %i.bb) ; 2 uses
  %.sroa.10.1.us.us.1 = add nsw i64 %.sroa.10.140.us.us, 2 ; 2 uses
  %exitcond56.not.1 = icmp eq i64 %.sroa.10.1.us.us.1, %i.w
  br i1 %exitcond56.not.1, label %._crit_edge.us.us, label %.lr.ph41.us.us, !llvm.loop !676

._crit_edge.us.us:                                ; preds = %.lr.ph41.us.us.prol.loopexit, %.lr.ph41.us.us, %.critedge.us.us
  %.021.lcssa.us.us = phi double [ %i.q, %.critedge.us.us ], [ %.lcssa.unr, %.lr.ph41.us.us.prol.loopexit ], [ %i.bk, %.lr.ph41.us.us ]
  %i.bl = fdiv double %.021.lcssa.us.us, %i.ae
  store double %i.bl, ptr %i.p, align 8, !tbaa !175
  %.022.us.us = add nsw i64 %.02244.us.us, -1
  %i.bm = icmp sgt i64 %.02244.us.us, 0
  br i1 %i.bm, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %.split48, !llvm.loop !677

.split48:                                         ; preds = %._crit_edge, %._crit_edge.us.us, %bb.a
  ret void

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.split, %._crit_edge
  %.02244 = phi i64 [ %.022, %._crit_edge ], [ %.02243, %.split ] ; 6 uses
  %i.bn = getelementptr [8 x i8], ptr %i.f, i64 %.02244 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !175 ; 3 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02244
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !48
  %i.br = sext i32 %i.bq to i64                   ; 5 uses
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.02244
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !48 ; 2 uses
  %i.bu = sext i32 %i.bt to i64                   ; 3 uses
  %i.bv = add nsw i64 %i.bu, %i.br                ; 4 uses
  %i.bw = icmp sgt i32 %i.bt, 0
  br i1 %i.bw, label %.lr.ph, label %.critedge

end_hunk_0
