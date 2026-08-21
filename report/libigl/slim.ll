Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/slim?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZN3igl4slim20add_soft_constraintsERNS_8SLIMDataERN5Eigen12SparseMatrixIdLi0EiEE:bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.al
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !31
  %i.ay = add nsw i32 %i.ax, %i.at
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.az = getelementptr i8, ptr %i.as, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = phi i32 [ %i.ay, %bb.c ], [ %i.ba, %bb.d ] ; 2 uses
  %.not25.i = icmp sgt i32 %i.bb, %i.at
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.al, i64 noundef %i.al)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8coeffRefEll.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = sext i32 %i.bb to i64                   ; 2 uses
  %i.be = add nsw i64 %i.bd, -1                   ; 2 uses
  %i.bf = icmp sgt i64 %i.be, %i.au
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !304
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.012.i.i = phi i64 [ %i.au, %.lr.ph.i.i ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.0911.i.i = phi i64 [ %i.be, %.lr.ph.i.i ], [ %.110.i.i, %bb.h ] ; 2 uses
  %i.bh = add nsw i64 %.0911.i.i, %.012.i.i
  %i.bi = ashr i64 %i.bh, 1                       ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !31
  %i.bl = sext i32 %i.bk to i64
  %.wide33 = icmp sgt i64 %i.al, %i.bl            ; 2 uses
  %i.bm = add nsw i64 %i.bi, 1
  %.110.i.i = select i1 %.wide33, i64 %.0911.i.i, i64 %i.bi ; 2 uses
  %.1.i.i = select i1 %.wide33, i64 %i.bm, i64 %.012.i.i ; 3 uses
  %i.bn = icmp sgt i64 %.110.i.i, %.1.i.i
  br i1 %i.bn, label %bb.h, label %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit.i, !llvm.loop !625

_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit.i: ; preds = %bb.h, %bb.g
  %.0.lcssa.i.i = phi i64 [ %i.au, %bb.g ], [ %.1.i.i, %bb.h ] ; 3 uses
  %i.bo = icmp slt i64 %.0.lcssa.i.i, %i.bd
  br i1 %i.bo, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit.i
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !304
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %.0.lcssa.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31
  %i.bs = sext i32 %i.br to i64
  %.wide = icmp eq i64 %i.al, %i.bs
  br i1 %.wide, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !303
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %.0.lcssa.i.i
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8coeffRefEll.exit

bb.k:                                             ; preds = %bb.i, %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit.i
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen12SparseMatrixIdLi0EiE6insertEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.al, i64 noundef %i.al)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE8coeffRefEll.exit

_ZN5Eigen12SparseMatrixIdLi0EiE8coeffRefEll.exit: ; preds = %bb.f, %bb.j, %bb.k
  %.1.i = phi ptr [ %i.bc, %bb.f ], [ %i.bu, %bb.j ], [ %i.bv, %bb.k ] ; 2 uses
  %i.bw = load double, ptr %.1.i, align 8, !tbaa !28
  %i.bx = fadd double %i.aq, %i.bw
  store double %i.bx, ptr %.1.i, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = load i64, ptr %i.f, align 8, !tbaa !621 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, %indvars.iv.next
  br i1 %i.bz, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !626
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN3igl4slim14compute_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3igl4slim17compute_jacobiansERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !184
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load double, ptr %i.e, align 8, !tbaa !201
  %i.g = tail call noundef double @_ZN3igl29mapping_energy_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IdLin1ELi1ELi0ELin1ELi1EEENS_17MappingEnergyTypeEd(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.d, double noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !621  ; 9 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load double, ptr %i.l, align 8, !tbaa !624 ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14, !noalias !627 ; 4 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !341  ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !14, !noalias !630 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !202, !noalias !630 ; 4 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  br i1 %i.t, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader, label %.lr.ph.split.i

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader: ; preds = %.lr.ph.i
  %xtraiter44 = and i64 %i.i, 7                   ; 3 uses
  %i.y = icmp ult i64 %i.i, 8
  br i1 %i.y, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader.new

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader.new: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader
  %unroll_iter48 = and i64 %i.i, 9223372036854775800
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader.new
  %.01025.us.i = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader.new ], [ %i.ag, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i ]
  %niter49 = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader.new ], [ %niter49.next.7, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i ]
  %i.z = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %.01025.us.i)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %i.z)
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %i.ab)
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %i.ac)
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %i.ad)
  %i.af = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %i.ae)
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %i.af) ; 3 uses
  %niter49.next.7 = add nuw nsw i64 %niter49, 8   ; 2 uses
  %niter49.ncmp.7 = icmp eq i64 %niter49.next.7, %unroll_iter48
  br i1 %niter49.ncmp.7, label %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit.unr-lcssa, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i, !llvm.loop !633

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ah = icmp sgt i64 %i.s, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.preheader.us.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader: ; preds = %.lr.ph.split.i
  %xtraiter = and i64 %i.i, 1
  %i.ai = icmp eq i64 %i.i, 1
  br i1 %i.ai, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.epil.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader.new

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader.new: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader
  %unroll_iter = and i64 %i.i, 9223372036854775806
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i

.lr.ph.i.i.i.i.preheader.us.i.preheader:          ; preds = %.lr.ph.split.i
  %i.aj = add nsw i64 %i.s, -1                    ; 3 uses
  %xtraiter38 = and i64 %i.aj, 1
  %i.ak = icmp eq i64 %i.s, 2
  %unroll_iter42 = and i64 %i.aj, -2
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  %lcmp.mod41 = trunc i64 %i.aj to i1
  br label %.lr.ph.i.i.i.i.preheader.us.i

.lr.ph.i.i.i.i.preheader.us.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.us.i.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i ], [ 0, %.lr.ph.i.i.i.i.preheader.us.i.preheader ] ; 3 uses
  %.01025.us28.i = phi double [ %i.bx, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i ], [ 0.000000e+00, %.lr.ph.i.i.i.i.preheader.us.i.preheader ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv39.i ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv39.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ao ; 4 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !28
  %i.ar = load double, ptr %i.al, align 8, !tbaa !28
  %i.as = fsub double %i.ar, %i.aq                ; 2 uses
  %i.at = fmul double %i.as, %i.as                ; 2 uses
  br i1 %i.ak, label %.lr.ph.i.i.i.i.us.i.epil.preheader, label %.lr.ph.i.i.i.i.us.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %.lr.ph.i.i.i.i.preheader.us.i, %.lr.ph.i.i.i.i.us.i
  %.01724.i.i.i.i.us.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.us.i ], [ 1, %.lr.ph.i.i.i.i.preheader.us.i ] ; 4 uses
  %.02223.i.i.i.i.us.i = phi double [ %i.bm, %.lr.ph.i.i.i.i.us.i ], [ %i.at, %.lr.ph.i.i.i.i.preheader.us.i ]
  %niter43 = phi i64 [ %niter43.next.1, %.lr.ph.i.i.i.i.us.i ], [ 0, %.lr.ph.i.i.i.i.preheader.us.i ]
  %i.au = mul nsw i64 %.01724.i.i.i.i.us.i, %i.v
  %i.av = getelementptr [8 x i8], ptr %i.al, i64 %i.au
  %i.aw = mul nsw i64 %.01724.i.i.i.i.us.i, %i.x
  %i.ax = getelementptr [8 x i8], ptr %i.ap, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !28
  %i.az = load double, ptr %i.av, align 8, !tbaa !28
  %i.ba = fsub double %i.az, %i.ay                ; 2 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = fadd double %.02223.i.i.i.i.us.i, %i.bb
  %i.bd = add nuw nsw i64 %.01724.i.i.i.i.us.i, 1 ; 2 uses
  %i.be = mul nsw i64 %i.bd, %i.v
  %i.bf = getelementptr [8 x i8], ptr %i.al, i64 %i.be
  %i.bg = mul nsw i64 %i.bd, %i.x
  %i.bh = getelementptr [8 x i8], ptr %i.ap, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !28
  %i.bj = load double, ptr %i.bf, align 8, !tbaa !28
  %i.bk = fsub double %i.bj, %i.bi                ; 2 uses
  %i.bl = fmul double %i.bk, %i.bk
  %i.bm = fadd double %i.bc, %i.bl                ; 3 uses
  %i.bn = add nuw nsw i64 %.01724.i.i.i.i.us.i, 2 ; 2 uses
  %niter43.next.1 = add nuw i64 %niter43, 2       ; 2 uses
  %niter43.ncmp.1 = icmp eq i64 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i.unr-lcssa, label %.lr.ph.i.i.i.i.us.i, !llvm.loop !634

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us.i
  br i1 %lcmp.mod39.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i, label %.lr.ph.i.i.i.i.us.i.epil.preheader

.lr.ph.i.i.i.i.us.i.epil.preheader:               ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us.i
  %.01724.i.i.i.i.us.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us.i ], [ %i.bn, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.us.i.epil.init = phi double [ %i.at, %.lr.ph.i.i.i.i.preheader.us.i ], [ %i.bm, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.bo = mul nsw i64 %.01724.i.i.i.i.us.i.epil.init, %i.v
  %i.bp = getelementptr [8 x i8], ptr %i.al, i64 %i.bo
  %i.bq = mul nsw i64 %.01724.i.i.i.i.us.i.epil.init, %i.x
  %i.br = getelementptr [8 x i8], ptr %i.ap, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !28
  %i.bt = load double, ptr %i.bp, align 8, !tbaa !28
  %i.bu = fsub double %i.bt, %i.bs                ; 2 uses
  %i.bv = fmul double %i.bu, %i.bu
  %i.bw = fadd double %.02223.i.i.i.i.us.i.epil.init, %i.bv
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i.unr-lcssa, %.lr.ph.i.i.i.i.us.i.epil.preheader
  %.lcssa32 = phi double [ %i.bm, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i.unr-lcssa ], [ %i.bw, %.lr.ph.i.i.i.i.us.i.epil.preheader ]
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.m, double %.lcssa32, double %.01025.us28.i) ; 2 uses
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, %i.i
  br i1 %exitcond42.not.i, label %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit, label %.lr.ph.i.i.i.i.preheader.us.i, !llvm.loop !633

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader.new ], [ %indvars.iv.next.i.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i ] ; 4 uses
  %.01025.i = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader.new ], [ %i.cr, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i ]
  %niter = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader.new ], [ %niter.next.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !31
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !28
  %i.ce = load double, ptr %i.by, align 8, !tbaa !28
  %i.cf = fsub double %i.ce, %i.cd                ; 2 uses
  %i.cg = fmul double %i.cf, %i.cf
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cg, double %.01025.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !31
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !28
  %i.co = load double, ptr %i.ci, align 8, !tbaa !28
  %i.cp = fsub double %i.co, %i.cn                ; 2 uses
  %i.cq = fmul double %i.cp, %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cq, double %i.ch) ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit34.unr-lcssa, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i, !llvm.loop !633

_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit.unr-lcssa: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil.preheader: ; preds = %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader
  %.01025.us.i.epil.init = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.preheader ], [ %i.ag, %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter44, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil.preheader
  %.01025.us.i.epil = phi double [ %i.cs, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil ], [ %.01025.us.i.epil.init, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil ], [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil.preheader ]
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.m, double 0.000000e+00, double %.01025.us.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter44
  br i1 %epil.iter.cmp.not, label %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil, !llvm.loop !635

_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit34.unr-lcssa: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.epil.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.epil.preheader: ; preds = %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit34.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader ], [ %indvars.iv.next.i.1, %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit34.unr-lcssa ] ; 2 uses
  %.01025.i.epil.init = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.preheader ], [ %i.cr, %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit34.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.epil.init
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !31
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !28
  %i.cz = load double, ptr %i.ct, align 8, !tbaa !28
  %i.da = fsub double %i.cz, %i.cy                ; 2 uses
  %i.db = fmul double %i.da, %i.da
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.m, double %i.db, double %.01025.i.epil.init)
  br label %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit

_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.epil.preheader, %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit34.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i, %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil, %bb.a
  %.010.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %i.cs, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.i.epil ], [ %i.bx, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.i ], [ %i.ag, %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit.unr-lcssa ], [ %i.cr, %_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_.exit.loopexit34.unr-lcssa ], [ %i.dc, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.i.epil.preheader ]
  %i.dd = fadd double %i.g, %.010.lcssa.i
  ret double %i.dd
}

declare noundef double @_ZN3igl29mapping_energy_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IdLin1ELi1ELi0ELin1ELi1EEENS_17MappingEnergyTypeEd(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef double @_ZN3igl4slim25compute_soft_const_energyERNS_8SLIMDataERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS4_IiLin1ELin1ELi0ELin1ELin1EEES7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(808) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !621  ; 9 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load double, ptr %i.e, align 8, !tbaa !624 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14, !noalias !636 ; 4 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !341  ; 4 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !14, !noalias !639 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !202, !noalias !639 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  br i1 %i.m, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader, label %.lr.ph.split

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader: ; preds = %.lr.ph
  %xtraiter71 = and i64 %i.b, 7                   ; 3 uses
  %i.r = icmp ult i64 %i.b, 8
  br i1 %i.r, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader.new

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader.new: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader
  %unroll_iter75 = and i64 %i.b, 9223372036854775800
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader.new
  %.01025.us = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader.new ], [ %i.z, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us ]
  %niter76 = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader.new ], [ %niter76.next.7, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us ]
  %i.s = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %.01025.us)
  %i.t = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.s)
  %i.u = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.t)
  %i.v = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.u)
  %i.w = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.v)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.w)
  %i.y = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.x)
  %i.z = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.y) ; 3 uses
  %niter76.next.7 = add nuw nsw i64 %niter76, 8   ; 2 uses
  %niter76.ncmp.7 = icmp eq i64 %niter76.next.7, %unroll_iter75
  br i1 %niter76.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us, !llvm.loop !633

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aa = icmp sgt i64 %i.l, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.preheader.us.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader: ; preds = %.lr.ph.split
  %xtraiter = and i64 %i.b, 1
  %i.ab = icmp eq i64 %i.b, 1
  br i1 %i.ab, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.epil.preheader, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader.new

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader.new: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit

.lr.ph.i.i.i.i.preheader.us.preheader:            ; preds = %.lr.ph.split
  %i.ac = add nsw i64 %i.l, -1                    ; 3 uses
  %xtraiter65 = and i64 %i.ac, 1
  %i.ad = icmp eq i64 %i.l, 2
  %unroll_iter69 = and i64 %i.ac, -2
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  %lcmp.mod68 = trunc i64 %i.ac to i1
  br label %.lr.ph.i.i.i.i.preheader.us

.lr.ph.i.i.i.i.preheader.us:                      ; preds = %.lr.ph.i.i.i.i.preheader.us.preheader, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us.preheader ] ; 3 uses
  %.01025.us28 = phi double [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us ], [ 0.000000e+00, %.lr.ph.i.i.i.i.preheader.us.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv39 ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv39
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ah ; 4 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !28
  %i.ak = load double, ptr %i.ae, align 8, !tbaa !28
  %i.al = fsub double %i.ak, %i.aj                ; 2 uses
  %i.am = fmul double %i.al, %i.al                ; 2 uses
  br i1 %i.ad, label %.lr.ph.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.preheader.us, %.lr.ph.i.i.i.i.us
  %.01724.i.i.i.i.us = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.us ], [ 1, %.lr.ph.i.i.i.i.preheader.us ] ; 4 uses
  %.02223.i.i.i.i.us = phi double [ %i.bf, %.lr.ph.i.i.i.i.us ], [ %i.am, %.lr.ph.i.i.i.i.preheader.us ]
  %niter70 = phi i64 [ %niter70.next.1, %.lr.ph.i.i.i.i.us ], [ 0, %.lr.ph.i.i.i.i.preheader.us ]
  %i.an = mul nsw i64 %.01724.i.i.i.i.us, %i.o
  %i.ao = getelementptr [8 x i8], ptr %i.ae, i64 %i.an
  %i.ap = mul nsw i64 %.01724.i.i.i.i.us, %i.q
  %i.aq = getelementptr [8 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !28
  %i.as = load double, ptr %i.ao, align 8, !tbaa !28
  %i.at = fsub double %i.as, %i.ar                ; 2 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = fadd double %.02223.i.i.i.i.us, %i.au
  %i.aw = add nuw nsw i64 %.01724.i.i.i.i.us, 1   ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.o
  %i.ay = getelementptr [8 x i8], ptr %i.ae, i64 %i.ax
  %i.az = mul nsw i64 %i.aw, %i.q
  %i.ba = getelementptr [8 x i8], ptr %i.ai, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !28
  %i.bc = load double, ptr %i.ay, align 8, !tbaa !28
  %i.bd = fsub double %i.bc, %i.bb                ; 2 uses
  %i.be = fmul double %i.bd, %i.bd
  %i.bf = fadd double %i.av, %i.be                ; 3 uses
  %i.bg = add nuw nsw i64 %.01724.i.i.i.i.us, 2   ; 2 uses
  %niter70.next.1 = add nuw i64 %niter70, 2       ; 2 uses
  %niter70.ncmp.1 = icmp eq i64 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.i.us, !llvm.loop !634

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us
  br i1 %lcmp.mod66.not, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us, label %.lr.ph.i.i.i.i.us.epil.preheader

.lr.ph.i.i.i.i.us.epil.preheader:                 ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.preheader.us
  %.01724.i.i.i.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.us ], [ %i.bg, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.us.epil.init = phi double [ %i.am, %.lr.ph.i.i.i.i.preheader.us ], [ %i.bf, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  %i.bh = mul nsw i64 %.01724.i.i.i.i.us.epil.init, %i.o
  %i.bi = getelementptr [8 x i8], ptr %i.ae, i64 %i.bh
  %i.bj = mul nsw i64 %.01724.i.i.i.i.us.epil.init, %i.q
  %i.bk = getelementptr [8 x i8], ptr %i.ai, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !28
  %i.bm = load double, ptr %i.bi, align 8, !tbaa !28
  %i.bn = fsub double %i.bm, %i.bl                ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  %i.bp = fadd double %.02223.i.i.i.i.us.epil.init, %i.bo
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.us.epil.preheader
  %.lcssa59 = phi double [ %i.bf, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us.unr-lcssa ], [ %i.bp, %.lr.ph.i.i.i.i.us.epil.preheader ]
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.f, double %.lcssa59, double %.01025.us28) ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %i.b
  br i1 %exitcond42.not, label %._crit_edge, label %.lr.ph.i.i.i.i.preheader.us, !llvm.loop !633

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %._crit_edge, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader
  %.01025.us.epil.init = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter71, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil.preheader
  %.01025.us.epil = phi double [ %i.br, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil ], [ %.01025.us.epil.init, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil ], [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil.preheader ]
  %i.br = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %.01025.us.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter71
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil, !llvm.loop !642

._crit_edge.loopexit61.unr-lcssa:                 ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.epil.preheader

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.epil.preheader: ; preds = %._crit_edge.loopexit61.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit61.unr-lcssa ] ; 2 uses
  %.01025.epil.init = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader ], [ %i.cv, %._crit_edge.loopexit61.unr-lcssa ]
  %lcmp.mod64 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.epil.init
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !31
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !28
  %i.by = load double, ptr %i.bs, align 8, !tbaa !28
  %i.bz = fsub double %i.by, %i.bx                ; 2 uses
  %i.ca = fmul double %i.bz, %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.f, double %i.ca, double %.01025.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.epil.preheader, %._crit_edge.loopexit61.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us, %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil, %bb.a
  %.010.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.br, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.us.epil ], [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.loopexit.us ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.cv, %._crit_edge.loopexit61.unr-lcssa ], [ %i.cb, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.epil.preheader ]
  ret double %.010.lcssa

_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader.new ], [ %indvars.iv.next.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit ] ; 4 uses
  %.01025 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader.new ], [ %i.cv, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit ]
  %niter = phi i64 [ 0, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit.preheader.new ], [ %niter.next.1, %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !31
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !28
  %i.ci = load double, ptr %i.cc, align 8, !tbaa !28
  %i.cj = fsub double %i.ci, %i.ch                ; 2 uses
  %i.ck = fmul double %i.cj, %i.cj
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.f, double %i.ck, double %.01025)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !31
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !28
  %i.cs = load double, ptr %i.cm, align 8, !tbaa !28
  %i.ct = fsub double %i.cs, %i.cr                ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.f, double %i.cu, double %i.cl) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit61.unr-lcssa, label %_ZNK5Eigen10MatrixBaseINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNS5_IKS7_Li1ELin1ELb0EEEEEE11squaredNormEv.exit, !llvm.loop !633
}

declare void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IdLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 16 dereferenceable(32), ptr noundef nonnull align 16 dereferenceable(32), ptr noundef nonnull align 16 dereferenceable(32), ptr noundef nonnull align 16 dereferenceable(16), ptr noundef nonnull align 16 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #11

declare void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl15slim_precomputeERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES4_RNS_8SLIMDataENS_17MappingEnergyTypeERKNS1_IiLin1ELi1ELi0ELin1ELi1EEES4_d(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(808) %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, double noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 8 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !202  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %i.f
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = icmp eq i64 %i.f, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 9223372036854775807, %i.f
  %i.n = icmp sgt i64 %i.d, %i.m
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !256
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = mul nsw i64 %i.f, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.p, i64 noundef %i.d, i64 noundef %i.f)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !202
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.q = phi i64 [ %.pre20.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  %i.r = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.d, %bb.a ]
  %i.s = load ptr, ptr %3, align 8, !tbaa !14     ; 8 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = mul nsw i64 %i.r, %i.q                   ; 7 uses
  %i.v = sdiv i64 %i.u, 2
  %i.w = shl nsw i64 %i.v, 1                      ; 6 uses
  %i.x = icmp sgt i64 %i.u, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.y = icmp slt i64 %i.w, %i.u
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.z = sub i64 %i.u, %i.w                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %i.b, %i.t
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader235, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ab = add i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %i.w, %index                    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !28
  %wide.load161 = load <2 x double>, ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x double> %wide.load, ptr %i.ad, align 8, !tbaa !28
  store <2 x double> %wide.load161, ptr %i.ag, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.o = add nuw nsw i64 %i.m, 15
  %i.p = alloca i8, i64 %i.o, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.m) #29 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !256
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 6 uses
  %i.u = icmp ugt i64 %i.m, 131072                ; 2 uses
  %i.v = ashr exact i64 %sext, 30                 ; 5 uses
  %i.w = icmp ugt i64 %i.v, 131072                ; 3 uses
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #29 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !256
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.noexc150 unwind label %bb.n

.noexc150:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.aa = add nuw nsw i64 %i.v, 15
  %i.ab = alloca i8, i64 %i.aa, align 16
  %i.ac = add nuw nsw i64 %i.v, 15
  %i.ad = alloca i8, i64 %i.ac, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.i:                                             ; preds = %bb.f
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.v) #29 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !256
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.noexc155 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160

.noexc155:                                        ; preds = %bb.j
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit156:     ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.ab, %bb.h ], [ %i.x, %bb.i ] ; 8 uses
  %i.ai = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !25
  %.not.i.i = icmp eq i64 %i.j, %i.al
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.am) #28
  %.not190 = icmp eq i64 %sext, 0
  br i1 %.not190, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.k
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.m) #29 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !256
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.noexc158 unwind label %bb.o

.noexc158:                                        ; preds = %bb.l
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.an, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.aj, align 8, !tbaa !27
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156, %.sink.split.i.i
  store i64 %i.j, ptr %i.ak, align 8, !tbaa !25
  %i.aq = icmp sgt i32 %i.c, 0
  br i1 %i.aq, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !341 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !303
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !304
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !255
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !302 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %wide.trip.count231 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge211
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge215, label %bb.p, !llvm.loop !712

bb.n:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.o:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.p:                                             ; preds = %.lr.ph214, %bb.m
  %indvars.iv228 = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next229, %bb.m ] ; 11 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv228 ; 4 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv228
  %i.bk = trunc nuw nsw i64 %indvars.iv228 to i32 ; 3 uses
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !31
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv228
  store i32 0, ptr %i.bl, align 4, !tbaa !31
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv228 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !31
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.br = sext i32 %i.bq to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !31
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.bo
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.q, %bb.r
  %.sink.i = phi i64 [ %i.br, %bb.q ], [ %i.bv, %bb.r ] ; 2 uses
  %i.bw = icmp sgt i64 %.sink.i, %i.bo
  br i1 %i.bw, label %.lr.ph200, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bx = load double, ptr %i.bd, align 8, !tbaa !267
  %i.by = load double, ptr %i.be, align 8, !tbaa !713
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.by)
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !28
  br label %._crit_edge211

.lr.ph200:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0100199 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0198 = phi i64 [ %i.dn, %.loopexit ], [ %i.bo, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.sroa.8.0198
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !31 ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv228, %i.cc
  br i1 %.not, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph200
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sroa.8.0198
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !28
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !28
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !28
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cc ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !31
  %i.ck = zext i32 %i.cj to i64
  %.not135191 = icmp eq i64 %indvars.iv228, %i.ck
  br i1 %.not135191, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !341
  br label %bb.t

.lr.ph196.preheader:                              ; preds = %bb.t
  %i.cm = sext i32 %.0100199 to i64               ; 5 uses
  %2 = add i64 %.098193, 2
  %smin = tail call i64 @llvm.smin.i64(i64 %i.db, i64 1)
  %3 = sub i64 %2, %smin                          ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph196.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph196.preheader
  %i.cn = sub i64 %.098193, %i.cm
  %reass.sub = shl i64 %i.cn, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph196.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 4 uses
  %i.co = sub i64 %i.cm, %n.vec                   ; 2 uses
  %4 = sub i64 %i.db, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = sub i64 %.098193, %index
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !31
  %wide.load254 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !31
  %i.ct = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.cv = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !31
  store <4 x i32> %wide.load254, ptr %i.cv, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !714

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph196.preheader256

.lr.ph196.preheader256:                           ; preds = %vector.memcheck, %.lr.ph196.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph196.preheader ], [ %i.co, %middle.block ]
  %.1195.ph = phi i64 [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph196.preheader ], [ %4, %middle.block ]
  br label %.lr.ph196

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %i.cx = phi ptr [ %i.ci, %.lr.ph ], [ %i.de, %bb.t ]
  %i.cy = phi i64 [ %i.cc, %.lr.ph ], [ %i.dd, %bb.t ]
  %.098193 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.t ] ; 5 uses
  %.099192 = phi i32 [ %i.cb, %.lr.ph ], [ %i.dc, %bb.t ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.098193
  store i32 %.099192, ptr %i.cz, align 4, !tbaa !31
  store i32 %i.bk, ptr %i.cx, align 4, !tbaa !31
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cy
  %i.db = add nuw i64 %.098193, 1                 ; 5 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !31 ; 2 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  %i.dg = zext i32 %i.df to i64
  %.not135 = icmp eq i64 %indvars.iv228, %i.dg
  br i1 %.not135, label %.lr.ph196.preheader, label %bb.t, !llvm.loop !715

.lr.ph196:                                        ; preds = %.lr.ph196.preheader256, %.lr.ph196
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph196 ], [ %indvars.iv.ph, %.lr.ph196.preheader256 ]
  %.1195 = phi i64 [ %i.dh, %.lr.ph196 ], [ %.1195.ph, %.lr.ph196.preheader256 ] ; 2 uses
  %i.dh = add nsw i64 %.1195, -1                  ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !31
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !31
  %i.dl = icmp sgt i64 %.1195, 1
  br i1 %i.dl, label %.lr.ph196, label %.loopexit.loopexit, !llvm.loop !716

.loopexit.loopexit:                               ; preds = %.lr.ph196, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %middle.block ], [ %indvars.iv.next, %.lr.ph196 ]
  %i.dm = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.loopexit.loopexit, %.lr.ph200
  %.2 = phi i32 [ %.0100199, %.lr.ph200 ], [ %i.dm, %.loopexit.loopexit ], [ %.0100199, %bb.s ] ; 3 uses
  %i.dn = add nsw i64 %.sroa.8.0198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph200, !llvm.loop !717

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bi, align 8, !tbaa !28
  %i.do = load double, ptr %i.bd, align 8, !tbaa !267
  %i.dp = load double, ptr %i.be, align 8, !tbaa !713
  %i.dq = tail call double @llvm.fmuladd.f64(double %.pre, double %i.do, double %i.dp) ; 2 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !28
  %i.dr = icmp slt i32 %.2, %i.c
  br i1 %i.dr, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge
  %i.ds = sext i32 %.2 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph210, %._crit_edge205
  %indvars.iv224 = phi i64 [ %i.ds, %.lr.ph210 ], [ %indvars.iv.next225, %._crit_edge205 ] ; 2 uses
  %.097208 = phi double [ %i.dq, %.lr.ph210 ], [ %i.ex, %._crit_edge205 ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv224
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !31
  %i.dv = sext i32 %i.du to i64                   ; 4 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !28 ; 3 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !28
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !28
  %i.ea = fdiv double %i.dx, %i.dz                ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !31 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dv ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !31 ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sext i32 %i.ec to i64                   ; 2 uses
  %i.ei = icmp sgt i32 %i.ee, 0
  br i1 %i.ei, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.u, %.lr.ph204
  %.0202 = phi i64 [ %i.es, %.lr.ph204 ], [ %i.eh, %bb.u ] ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0202
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !28
  %i.el = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0202
  %i.em = load i32, ptr %i.el, align 4, !tbaa !31
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !28
  %i.eq = fneg double %i.ek
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.dx, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !28
  %i.es = add nsw i64 %.0202, 1                   ; 3 uses
  %i.et = icmp slt i64 %i.es, %i.eg
  br i1 %i.et, label %.lr.ph204, label %._crit_edge205, !llvm.loop !718

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.u
  %.0.lcssa = phi i64 [ %i.eh, %bb.u ], [ %i.es, %.lr.ph204 ] ; 2 uses
  %i.eu = fmul double %i.dx, %i.ea
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bk, ptr %i.ev, align 4, !tbaa !31
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ea, ptr %i.ew, align 8, !tbaa !28
  %i.ex = fsub double %.097208, %i.eu             ; 2 uses
  %i.ey = load i32, ptr %i.ed, align 4, !tbaa !31
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ed, align 4, !tbaa !31
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count
  br i1 %exitcond227.not, label %._crit_edge211, label %bb.u, !llvm.loop !719

._crit_edge211:                                   ; preds = %._crit_edge205, %._crit_edge.thread, %._crit_edge
  %.097.lcssa = phi double [ %i.dq, %._crit_edge ], [ %i.bz, %._crit_edge.thread ], [ %i.ex, %._crit_edge205 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv228
  store double %.097.lcssa, ptr %i.fa, align 8, !tbaa !28
  %i.fb = fcmp une double %.097.lcssa, 0.000000e+00
  br i1 %i.fb, label %bb.m, label %._crit_edge215

._crit_edge215:                                   ; preds = %._crit_edge211, %bb.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2106 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 0, %bb.m ], [ 1, %._crit_edge211 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2106, ptr %i.fc, align 4, !tbaa !261
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fd, align 8, !tbaa !265
  br i1 %i.w, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

bb.v:                                             ; preds = %._crit_edge215
  call void @free(ptr noundef nonnull %i.ai) #28
  call void @free(ptr noundef nonnull %i.ah) #28
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159: ; preds = %._crit_edge215, %bb.v
  br i1 %i.u, label %bb.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.w:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159
  call void @free(ptr noundef nonnull %i.t) #28
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159, %bb.w
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread: ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ai) #28
  br label %bb.x

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160: ; preds = %bb.j
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread
  %i.ff = phi ptr [ %i.ah, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.x, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  %.pn136.pn.pn.pn.pn.pn187 = phi { ptr, i32 } [ %i.bh, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.fe, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  call void @free(ptr noundef nonnull %i.ff) #28
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161: ; preds = %bb.o, %bb.x, %bb.n
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn187, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161
  call void @free(ptr noundef nonnull %i.t) #28
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161, %bb.y
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i8 0, ptr %3, align 8, !tbaa !254
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #29 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !255
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !256
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #28
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i
end_hunk_1
