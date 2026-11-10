Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_eigen?download=true
inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !373
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #39, !inline_history !1001
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !368
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !374
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #39, !inline_history !1001
  br label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev.exit.i

_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 40) #39, !inline_history !1001
  br label %_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev.exit

_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4initEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.a, align 1, !tbaa !354
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.Eigen::Map", align 8        ; 5 uses
  %5 = alloca %"class.Eigen::Map.88", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !356  ; 2 uses
  store ptr %2, ptr %4, align 8, !tbaa !378
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %3, ptr %5, align 8, !tbaa !381
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !379
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  %i.h = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !383 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.j = load double, ptr %i.a, align 8, !tbaa !384
  %i.k = fsub double %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store double %i.k, ptr %i.l, align 8, !tbaa !386
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !363  ; 13 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !362  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !356
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97
  %i.v = load i32, ptr %i.q, align 4, !tbaa !97
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = sext i32 %i.w to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !356  ; 11 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ac = and i64 %i.ab, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = lshr exact i64 %i.ab, 2
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = and i64 %i.ae, 3
  %i.ag = call i64 @llvm.smin.i64(i64 %i.af, i64 %i.z)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.z, %bb.f ] ; 12 uses
  %i.ah = sub nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 5 uses
  %i.ai = sdiv i64 %i.ah, 8
  %i.aj = shl nsw i64 %i.ai, 3                    ; 2 uses
  %i.ak = sdiv i64 %i.ah, 4
  %i.al = shl nsw i64 %i.ak, 2                    ; 3 uses
  %i.am = add nsw i64 %i.aj, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.an = add nsw i64 %i.al, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ah, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ao = getelementptr [4 x i8], ptr %i.n, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !87 ; 2 uses
  %i.aq = icmp sgt i64 %i.ah, 7
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !87 ; 2 uses
  %i.at = bitcast <2 x i64> %i.ap to <4 x i32>    ; 2 uses
  %i.au = icmp samesign ugt i64 %i.ah, 15
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.i
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.as, %bb.i ], [ %i.bf, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.at, %bb.i ], [ %i.bb, %.lr.ph.i.i.i.i ]
  %i.av = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.aw = bitcast <4 x i32> %i.av to <2 x i64>
  %i.ax = icmp sgt i64 %i.al, %i.aj
  br i1 %i.ax, label %bb.j, label %bb.k

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i ]
  %i.ay = phi <4 x i32> [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i ]
  %i.az = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05780.i.i.i.i
  %i.ba = load <4 x i32>, ptr %i.az, align 1, !tbaa !87
  %i.bb = add <4 x i32> %i.ba, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.n, i64 %.057.in79.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load <4 x i32>, ptr %i.bd, align 1, !tbaa !87
  %i.bf = add <4 x i32> %i.be, %i.ay              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bg = icmp slt i64 %.057.i.i.i.i, %i.am
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.am
  %i.bi = load <4 x i32>, ptr %i.bh, align 1, !tbaa !87
  %i.bj = add <4 x i32> %i.bi, %i.av
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i, %bb.h
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ap, %bb.h ], [ %i.bk, %bb.j ], [ %i.aw, %._crit_edge.i.i.i.i ]
  %i.bl = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bm = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bl, <4 x i32> %i.bl) ; 2 uses
  %i.bn = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bm, <4 x i32> %i.bm) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bn, i64 0 ; 2 uses
  %i.bo = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %6 = shufflevector <4 x i32> %i.bn, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %6, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !97
  %wide.load38 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !97
  %i.br = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bs = add <4 x i32> %wide.load38, %vec.phi37  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1002

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bs, %i.br
  %i.bu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader79

.lr.ph85.i.i.i.i.preheader79:                     ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.k
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.k ], [ %i.bu, %middle.block ], [ %i.cj, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bv = icmp slt i64 %i.an, %i.z
  br i1 %i.bv, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bw = add i64 %.0.i.i.i.i.i.i.i.i, %i.al
  %i.bx = sub i64 %i.z, %i.bw                     ; 3 uses
  %min.iters.check40 = icmp ult i64 %i.bx, 8
  br i1 %min.iters.check40, label %.lr.ph89.i.i.i.i.preheader74, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec42 = and i64 %i.bx, -8                    ; 3 uses
  %i.by = add i64 %i.an, %n.vec42
  %i.bz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.ca = getelementptr [4 x i8], ptr %i.n, i64 %i.an
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %vec.phi45 = phi <4 x i32> [ %i.bz, %vector.ph41 ], [ %i.cd, %vector.body43 ]
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph41 ], [ %i.ce, %vector.body43 ]
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %index44 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load47 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !97
  %wide.load48 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !97
  %i.cd = add <4 x i32> %wide.load47, %vec.phi45  ; 2 uses
  %i.ce = add <4 x i32> %wide.load48, %vec.phi46  ; 2 uses
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.cf, label %middle.block50, label %vector.body43, !llvm.loop !1003

middle.block50:                                   ; preds = %vector.body43
  %bin.rdx51 = add <4 x i32> %i.ce, %i.cd
  %i.cg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx51) ; 2 uses
  %cmp.n52 = icmp eq i64 %i.bx, %n.vec42
  br i1 %cmp.n52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader74

.lr.ph89.i.i.i.i.preheader74:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block50
  %.05588.i.i.i.i.ph = phi i64 [ %i.an, %.lr.ph89.i.i.i.i.preheader ], [ %i.by, %middle.block50 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cg, %middle.block50 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader79, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ck, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader79 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cj, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader79 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.05683.i.i.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !97
  %i.cj = add nsw i32 %i.ci, %.07582.i.i.i.i      ; 2 uses
  %i.ck = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ck, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !1004

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader74, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.co, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cn, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ]
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05588.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !97
  %i.cn = add nsw i32 %i.cm, %.187.i.i.i.i        ; 2 uses
  %i.co = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.z
  br i1 %i.cp, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !1005

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cq = load i32, ptr %i.n, align 4, !tbaa !97  ; 3 uses
  %i.cr = icmp sgt i64 %i.z, 1
  br i1 %i.cr, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.l
  %i.cs = add nsw i64 %i.z, -1                    ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.z, 9
  br i1 %min.iters.check56, label %.lr.ph94.i.i.i.i.preheader71, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec58 = and i64 %i.cs, -8                    ; 3 uses
  %i.ct = or disjoint i64 %n.vec58, 1
  %i.cu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cq, i64 0
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %vec.phi61 = phi <4 x i32> [ %i.cu, %vector.ph57 ], [ %i.cy, %vector.body59 ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.cz, %vector.body59 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index60 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %wide.load63 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !97
  %wide.load64 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !97
  %i.cy = add <4 x i32> %wide.load63, %vec.phi61  ; 2 uses
  %i.cz = add <4 x i32> %wide.load64, %vec.phi62  ; 2 uses
  %index.next65 = add nuw i64 %index60, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.da, label %middle.block66, label %vector.body59, !llvm.loop !1006

middle.block66:                                   ; preds = %vector.body59
  %bin.rdx67 = add <4 x i32> %i.cz, %i.cy
  %i.db = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx67) ; 2 uses
  %cmp.n68 = icmp eq i64 %i.cs, %n.vec58
  br i1 %cmp.n68, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader71

.lr.ph94.i.i.i.i.preheader71:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block66
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ct, %middle.block66 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cq, %.lr.ph94.i.i.i.i.preheader ], [ %i.db, %middle.block66 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader71, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.df, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader71 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader71 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.092.i.i.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !97
  %i.de = add nsw i32 %i.dd, %.291.i.i.i.i        ; 2 uses
  %i.df = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.df, %i.z
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !1007

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block50, %middle.block66, %bb.l, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cq, %bb.l ], [ %i.db, %middle.block66 ], [ %i.cg, %middle.block50 ], [ %i.cn, %.lr.ph89.i.i.i.i ]
  %i.dg = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.d, %bb.e, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.x, %bb.d ], [ %i.dg, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.e ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i64 %.0.i, ptr %i.dh, align 8, !tbaa !389
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.59", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %3, align 8, !tbaa !393
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !394
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.b, align 8, !tbaa !396
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.a, align 8, !tbaa !109
  %i.c = load ptr, ptr %0, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret i1 %i.f

bb.e:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12solvePatternERNS_17SparseBlockMatrixIS3_EERKSt6vectorISt4pairIiiESaISA_EERKS6_:_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12solvePatternERNS0_17SparseBlockMatrixIS9_EERKSt6vectorISt4pairIiiESaISG_EERKSC_EUlS2_E_vEEOT_.exit
bb.a:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12solvePatternERNS0_17SparseBlockMatrixIS9_EERKSt6vectorISt4pairIiiESaISG_EERKSC_EUlS2_E_vEEOT_.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i1 %i.h

bb.d:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12solvePatternERNS0_17SparseBlockMatrixIS9_EERKSt6vectorISt4pairIiiESaISG_EERKSC_EUlS2_E_vEEOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i6, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16solveBlocks_implERKNS_17SparseBlockMatrixIS3_EESt8functionIFvRNS_26MarginalCovarianceCholeskyEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef align 8 %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.g2o::MarginalCovarianceCholesky", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN3g2o26MarginalCovarianceCholeskyC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !399
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !362
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !400
  invoke void @_ZN3g2o26MarginalCovarianceCholesky17setCholeskyFactorEiPiS1_PdS1_(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #41
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !396
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit unwind label %bb.p, !inline_history !9

_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit: ; preds = %bb.e
  %i.r = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !383 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !363  ; 13 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !362  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !356
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !97
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !97
  %i.ab = sub nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !356 ; 11 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.ah = and i64 %i.ag, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr exact i64 %i.ag, 2
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = and i64 %i.aj, 3
  %i.al = call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.ae)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.j ], [ %i.ae, %bb.i ] ; 12 uses
  %i.am = sub nsw i64 %i.ae, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.an = sdiv i64 %i.am, 8
  %i.ao = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.ap = sdiv i64 %i.am, 4
  %i.aq = shl nsw i64 %i.ap, 2                    ; 3 uses
  %i.ar = add nsw i64 %i.ao, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.as = add nsw i64 %i.aq, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.am, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.at = getelementptr [4 x i8], ptr %i.t, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.au = load <2 x i64>, ptr %i.at, align 1, !tbaa !87 ; 2 uses
  %i.av = icmp sgt i64 %i.am, 7
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = load <4 x i32>, ptr %i.aw, align 1, !tbaa !87 ; 2 uses
  %i.ay = bitcast <2 x i64> %i.au to <4 x i32>    ; 2 uses
  %i.az = icmp samesign ugt i64 %i.am, 15
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ax, %bb.l ], [ %i.bk, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ay, %bb.l ], [ %i.bg, %.lr.ph.i.i.i.i ]
  %i.ba = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bc = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bc, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i ]
  %i.bd = phi <4 x i32> [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i.i ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05780.i.i.i.i
  %i.bf = load <4 x i32>, ptr %i.be, align 1, !tbaa !87
  %i.bg = add <4 x i32> %i.bf, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.t, i64 %.057.in79.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %i.bj = load <4 x i32>, ptr %i.bi, align 1, !tbaa !87
  %i.bk = add <4 x i32> %i.bj, %i.bd              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bl = icmp slt i64 %.057.i.i.i.i, %i.ar
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ar
  %i.bn = load <4 x i32>, ptr %i.bm, align 1, !tbaa !87
  %i.bo = add <4 x i32> %i.bn, %i.ba
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i, %bb.k
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.au, %bb.k ], [ %i.bp, %bb.m ], [ %i.bb, %._crit_edge.i.i.i.i ]
  %i.bq = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.br = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bq, <4 x i32> %i.bq) ; 2 uses
  %i.bs = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.br, <4 x i32> %i.br) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bs, i64 0 ; 2 uses
  %i.bt = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.n
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %4 = shufflevector <4 x i32> %i.bs, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %4, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !97
  %wide.load61 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !97
  %i.bw = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bx = add <4 x i32> %wide.load61, %vec.phi60  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !1008

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bx, %i.bw
  %i.bz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader102

.lr.ph85.i.i.i.i.preheader102:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.n
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.n ], [ %i.bz, %middle.block ], [ %i.co, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ca = icmp slt i64 %i.as, %i.ae
  br i1 %i.ca, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.cb = add i64 %.0.i.i.i.i.i.i.i.i, %i.aq
  %i.cc = sub i64 %i.ae, %i.cb                    ; 3 uses
  %min.iters.check63 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check63, label %.lr.ph89.i.i.i.i.preheader97, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec65 = and i64 %i.cc, -8                    ; 3 uses
  %i.cd = add i64 %i.as, %n.vec65
  %i.ce = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.cf = getelementptr [4 x i8], ptr %i.t, i64 %i.as
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.ce, %vector.ph64 ], [ %i.ci, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph64 ], [ %i.cj, %vector.body66 ]
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %index67 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load70 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !97
  %wide.load71 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !97
  %i.ci = add <4 x i32> %wide.load70, %vec.phi68  ; 2 uses
  %i.cj = add <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ck, label %middle.block73, label %vector.body66, !llvm.loop !1009

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = add <4 x i32> %i.cj, %i.ci
  %i.cl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.cc, %n.vec65
  br i1 %cmp.n75, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader97

.lr.ph89.i.i.i.i.preheader97:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block73
  %.05588.i.i.i.i.ph = phi i64 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.cd, %middle.block73 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cl, %middle.block73 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader102, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cp, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader102 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.co, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader102 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05683.i.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !97
  %i.co = add nsw i32 %i.cn, %.07582.i.i.i.i      ; 2 uses
  %i.cp = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cp, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !1010

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader97, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ct, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cs, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ]
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05588.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !97
  %i.cs = add nsw i32 %i.cr, %.187.i.i.i.i        ; 2 uses
  %i.ct = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.ae
  br i1 %i.cu, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !1011

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !97  ; 3 uses
  %i.cw = icmp sgt i64 %i.ae, 1
  br i1 %i.cw, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.o
  %i.cx = add nsw i64 %i.ae, -1                   ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.ae, 9
  br i1 %min.iters.check79, label %.lr.ph94.i.i.i.i.preheader94, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec81 = and i64 %i.cx, -8                    ; 3 uses
  %i.cy = or disjoint i64 %n.vec81, 1
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cv, i64 0
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %vec.phi84 = phi <4 x i32> [ %i.cz, %vector.ph80 ], [ %i.dd, %vector.body82 ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph80 ], [ %i.de, %vector.body82 ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index83 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %wide.load86 = load <4 x i32>, ptr %i.db, align 4, !tbaa !97
  %wide.load87 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !97
  %i.dd = add <4 x i32> %wide.load86, %vec.phi84  ; 2 uses
  %i.de = add <4 x i32> %wide.load87, %vec.phi85  ; 2 uses
  %index.next88 = add nuw i64 %index83, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.df, label %middle.block89, label %vector.body82, !llvm.loop !1012

middle.block89:                                   ; preds = %vector.body82
  %bin.rdx90 = add <4 x i32> %i.de, %i.dd
  %i.dg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx90) ; 2 uses
  %cmp.n91 = icmp eq i64 %i.cx, %n.vec81
  br i1 %cmp.n91, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader94

.lr.ph94.i.i.i.i.preheader94:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block89
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cy, %middle.block89 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i.preheader ], [ %i.dg, %middle.block89 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader94, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.dk, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader94 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader94 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.092.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !97
  %i.dj = add nsw i32 %i.di, %.291.i.i.i.i        ; 2 uses
  %i.dk = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.dk, %i.ae
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !1013

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block73, %middle.block89, %bb.o, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cv, %bb.o ], [ %i.dg, %middle.block89 ], [ %i.cl, %middle.block73 ], [ %i.cs, %.lr.ph89.i.i.i.i ]
  %i.dl = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, %bb.h, %bb.g
  %.0.i = phi i64 [ %i.ac, %bb.g ], [ %i.dl, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.h ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i64 %.0.i, ptr %i.dm, align 8, !tbaa !389
  br label %bb.q

bb.p:                                             ; preds = %bb.b, %bb.e, %bb.d
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  resume { ptr, i32 } %i.dn

bb.q:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !334  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !368  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !369  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !373
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
end_hunk_1
begin_hunk_2_@_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE25analyzePattern_preorderedERKS3_b:bb.a
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97.epil
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !97
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.n, !llvm.loop !1077

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.n, %._crit_edge83.thread
  %i.du = phi ptr [ %i.ak, %._crit_edge83.thread ], [ %i.cb, %bb.n ], [ %i.cb, %._crit_edge87.loopexit.unr-lcssa ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.e
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !97
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 noundef %i.dx, double noundef 0.000000e+00)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit unwind label %bb.q

bb.o:                                             ; preds = %bb.o, %._crit_edge83.new
  %i.dz = phi i32 [ 0, %._crit_edge83.new ], [ %i.es, %bb.o ]
  %indvars.iv96 = phi i64 [ 0, %._crit_edge83.new ], [ %indvars.iv.next97.3, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %._crit_edge83.new ], [ %niter.next.3, %bb.o ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv96
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !97
  %i.ec = add i32 %i.dz, %i.cd
  %i.ed = add i32 %i.ec, %i.eb                    ; 2 uses
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !97
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next97
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !97
  %i.eh = add i32 %i.ed, %i.cd
  %i.ei = add i32 %i.eh, %i.eg                    ; 2 uses
  %indvars.iv.next97.1 = or disjoint i64 %indvars.iv96, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97.1
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !97
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next97.1
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !97
  %i.em = add i32 %i.ei, %i.cd
  %i.en = add i32 %i.em, %i.el                    ; 2 uses
  %indvars.iv.next97.2 = or disjoint i64 %indvars.iv96, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97.2
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !97
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next97.2
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !97
  %i.er = add i32 %i.en, %i.cd
  %i.es = add i32 %i.er, %i.eq                    ; 3 uses
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97.3
  store i32 %i.es, ptr %i.et, align 4, !tbaa !97
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.o, !llvm.loop !1078

_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit: ; preds = %._crit_edge87
  store i8 1, ptr %0, align 8, !tbaa !357
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.eu, align 4, !tbaa !358
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.ev, align 1, !tbaa !360
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ew, align 8, !tbaa !359
  br i1 %i.ah, label %bb.p, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit

bb.p:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit
  call void @free(ptr noundef nonnull %i.ag) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit, %bb.p
  ret void

bb.q:                                             ; preds = %._crit_edge87
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ah, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit70

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.ag) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit70

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit70: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %i.ex
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal24permute_symm_to_fullsymmILi2ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !399  ; 25 uses
  %.not.i.i.not = icmp eq i64 %i.b, 0
  %i.c = icmp sgt i64 %i.b, 0                     ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.d, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.b
  %i.e = shl nuw i64 %i.b, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.e) ; 2 uses
  %i.f = icmp eq ptr %calloc, null
  br i1 %i.f, label %.invoke, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !96
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.cont unwind label %bb.aa

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.a
  %.sroa.0126.1144 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ] ; 30 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.b, i64 noundef %i.b)
          to label %.preheader147 unwind label %bb.aa

.preheader147:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.c, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %.preheader147
  %.not102 = icmp eq ptr %2, null                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !363  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br label %bb.h

._crit_edge155:                                   ; preds = %.preheader147
  br i1 %.not.i.i.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %._crit_edge155.thread

._crit_edge155.thread:                            ; preds = %._crit_edge, %._crit_edge155
  %i.o = sdiv i64 %i.b, 8
  %i.p = shl nsw i64 %i.o, 3                      ; 3 uses
  %i.q = sdiv i64 %i.b, 4
  %i.r = shl nsw i64 %i.q, 2                      ; 6 uses
  %.off.i.i.i = add i64 %i.b, 3
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 7
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge155.thread
  %i.s = load <2 x i64>, ptr %.sroa.0126.1144, align 16, !tbaa !87 ; 2 uses
  %i.t = icmp sgt i64 %i.b, 7
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0126.1144, i64 16
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !87 ; 2 uses
  %i.w = bitcast <2 x i64> %i.s to <4 x i32>      ; 2 uses
  %i.x = icmp samesign ugt i64 %i.b, 15
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.lcssa.i.i.i = phi <4 x i32> [ %i.v, %bb.d ], [ %i.ai, %.lr.ph.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i = phi <4 x i32> [ %i.w, %bb.d ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.y = add <4 x i32> %.sroa.064.0.lcssa.i.i.i, %.lcssa.i.i.i ; 2 uses
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = icmp sgt i64 %i.r, %i.p
  br i1 %i.aa, label %bb.e, label %bb.f

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05775.i.i.i = phi i64 [ %.057.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.d ] ; 3 uses
  %.057.in74.i.i.i = phi i64 [ %.05775.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %.sroa.064.073.i.i.i = phi <4 x i32> [ %i.ae, %.lr.ph.i.i.i ], [ %i.w, %bb.d ]
  %i.ab = phi <4 x i32> [ %i.ai, %.lr.ph.i.i.i ], [ %i.v, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.1144, i64 %.05775.i.i.i
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !87
  %i.ae = add <4 x i32> %i.ad, %.sroa.064.073.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.1144, i64 %.057.in74.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load <4 x i32>, ptr %i.ag, align 16, !tbaa !87
  %i.ai = add <4 x i32> %i.ah, %i.ab              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.aj = icmp slt i64 %.057.i.i.i, %i.p
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1079

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.1144, i64 %i.p
  %i.al = load <4 x i32>, ptr %i.ak, align 16, !tbaa !87
  %i.am = add <4 x i32> %i.al, %i.y
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i, %bb.c
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.an, %bb.e ], [ %i.z, %._crit_edge.i.i.i ]
  %i.ao = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32> ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.ao, <4 x i32> %i.ao) ; 2 uses
  %i.aq = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.ap, <4 x i32> %i.ap) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <4 x i32> %i.aq, i64 0 ; 2 uses
  %i.ar = icmp slt i64 %i.r, %i.b
  br i1 %i.ar, label %.lr.ph80.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph80.i.i.i.preheader:                         ; preds = %bb.f
  %i.as = sub i64 %i.b, %i.r                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.i.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.i.i.i.preheader
  %n.vec = and i64 %i.as, -8                      ; 3 uses
  %i.at = add i64 %i.r, %n.vec
  %3 = shufflevector <4 x i32> %i.aq, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.au = getelementptr [4 x i8], ptr %.sroa.0126.1144, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %3, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi215 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !97
  %wide.load216 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !97
  %i.ax = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = add <4 x i32> %wide.load216, %vec.phi215 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1080

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i.preheader237

.lr.ph80.i.i.i.preheader237:                      ; preds = %.lr.ph80.i.i.i.preheader, %middle.block
  %.05578.i.i.i.ph = phi i64 [ %i.r, %.lr.ph80.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.177.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i, %.lr.ph80.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph80.i.i.i

.lr.ph80.i.i.i:                                   ; preds = %.lr.ph80.i.i.i.preheader237, %.lr.ph80.i.i.i
  %.05578.i.i.i = phi i64 [ %i.be, %.lr.ph80.i.i.i ], [ %.05578.i.i.i.ph, %.lr.ph80.i.i.i.preheader237 ] ; 2 uses
  %.177.i.i.i = phi i32 [ %i.bd, %.lr.ph80.i.i.i ], [ %.177.i.i.i.ph, %.lr.ph80.i.i.i.preheader237 ]
  %i.bb = getelementptr inbounds [4 x i8], ptr %.sroa.0126.1144, i64 %.05578.i.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !97
  %i.bd = add nsw i32 %i.bc, %.177.i.i.i          ; 2 uses
  %i.be = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.be, %i.b
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !1081

bb.g:                                             ; preds = %._crit_edge155.thread
  %i.bf = load i32, ptr %.sroa.0126.1144, align 4, !tbaa !97 ; 3 uses
  %i.bg = icmp sgt i64 %i.b, 1
  br i1 %i.bg, label %.lr.ph85.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph85.i.i.i.preheader:                         ; preds = %bb.g
  %i.bh = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check218 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check218, label %.lr.ph85.i.i.i.preheader234, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph85.i.i.i.preheader
  %n.vec220 = and i64 %i.bh, -8                   ; 3 uses
  %i.bi = or disjoint i64 %n.vec220, 1
  %i.bj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bf, i64 0
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %vec.phi223 = phi <4 x i32> [ %i.bj, %vector.ph219 ], [ %i.bn, %vector.body221 ]
  %vec.phi224 = phi <4 x i32> [ zeroinitializer, %vector.ph219 ], [ %i.bo, %vector.body221 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.1144, i64 %index222 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %wide.load225 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !97
  %wide.load226 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !97
  %i.bn = add <4 x i32> %wide.load225, %vec.phi223 ; 2 uses
  %i.bo = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.bp, label %middle.block228, label %vector.body221, !llvm.loop !1082

middle.block228:                                  ; preds = %vector.body221
  %bin.rdx229 = add <4 x i32> %i.bo, %i.bn
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx229) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.bh, %n.vec220
  br i1 %cmp.n230, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i.preheader234

.lr.ph85.i.i.i.preheader234:                      ; preds = %.lr.ph85.i.i.i.preheader, %middle.block228
  %.083.i.i.i.ph = phi i64 [ 1, %.lr.ph85.i.i.i.preheader ], [ %i.bi, %middle.block228 ]
  %.282.i.i.i.ph = phi i32 [ %i.bf, %.lr.ph85.i.i.i.preheader ], [ %i.bq, %middle.block228 ]
  br label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %.lr.ph85.i.i.i.preheader234, %.lr.ph85.i.i.i
  %.083.i.i.i = phi i64 [ %i.bu, %.lr.ph85.i.i.i ], [ %.083.i.i.i.ph, %.lr.ph85.i.i.i.preheader234 ] ; 2 uses
  %.282.i.i.i = phi i32 [ %i.bt, %.lr.ph85.i.i.i ], [ %.282.i.i.i.ph, %.lr.ph85.i.i.i.preheader234 ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.1144, i64 %.083.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !97
  %i.bt = add nsw i32 %i.bs, %.282.i.i.i          ; 2 uses
  %i.bu = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !1083

bb.h:                                             ; preds = %.lr.ph154, %._crit_edge
  %.080152 = phi i64 [ 0, %.lr.ph154 ], [ %i.cz, %._crit_edge ] ; 10 uses
  br i1 %.not102, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.080152
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !97
  %i.bx = sext i32 %i.bw to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.by = phi i64 [ %i.bx, %bb.i ], [ %.080152, %bb.h ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.080152 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !97
  %i.cb = sext i32 %i.ca to i64                   ; 4 uses
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !97
  %i.ce = sext i32 %i.cd to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.l:                                             ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.080152
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !97
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i64 %i.ch, %i.cb
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.k, %bb.l
  %.sink.i = phi i64 [ %i.ce, %bb.k ], [ %i.ci, %bb.l ] ; 3 uses
  %i.cj = icmp sgt i64 %.sink.i, %i.cb
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.ck = getelementptr inbounds [4 x i8], ptr %.sroa.0126.1144, i64 %i.by ; 4 uses
  br i1 %.not102, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.1144, i64 %.080152 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.p
  %.sroa.9.0151.us = phi i64 [ %i.cy, %bb.p ], [ %i.cb, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151.us
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !97
  %i.co = sext i32 %i.cn to i64                   ; 3 uses
  %i.cp = icmp eq i64 %.080152, %i.co
  br i1 %i.cp, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.cq = icmp sgt i64 %.080152, %i.co
  br i1 %i.cq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds [4 x i8], ptr %.sroa.0126.1144, i64 %i.co ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !97
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !97
  %i.cu = load i32, ptr %i.ck, align 4, !tbaa !97
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ck, align 4, !tbaa !97
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.split.us
  %i.cw = load i32, ptr %i.cl, align 4, !tbaa !97
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cl, align 4, !tbaa !97
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cy = add nsw i64 %.sroa.9.0151.us, 1         ; 2 uses
  %exitcond173.not = icmp eq i64 %i.cy, %.sink.i
  br i1 %exitcond173.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1084

._crit_edge:                                      ; preds = %bb.t, %bb.p, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cz = add nuw nsw i64 %.080152, 1             ; 2 uses
  %exitcond174.not = icmp eq i64 %i.cz, %i.b
  br i1 %exitcond174.not, label %._crit_edge155.thread, label %bb.h, !llvm.loop !1085

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %.sroa.9.0151 = phi i64 [ %i.dq, %bb.t ], [ %i.cb, %.lr.ph ] ; 2 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151
  %i.db = load i32, ptr %i.da, align 4, !tbaa !97
  %i.dc = sext i32 %i.db to i64                   ; 3 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !97
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = icmp eq i64 %.080152, %i.dc
  br i1 %i.dg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split
  %i.dh = getelementptr inbounds [4 x i8], ptr %.sroa.0126.1144, i64 %i.df ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !97
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !97
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph.split
  %i.dk = icmp sgt i64 %.080152, %i.dc
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds [4 x i8], ptr %.sroa.0126.1144, i64 %i.df ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !97
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !97
  %i.do = load i32, ptr %i.ck, align 4, !tbaa !97
  %i.dp = add nsw i32 %i.do, 1
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_:bb.a
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.epil, i8 0, i64 %i.bo, i1 false), !tbaa !384
  br label %._crit_edge17

._crit_edge17.loopexit31.unr-lcssa:               ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader: ; preds = %._crit_edge17.loopexit31.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge17.loopexit31.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !97 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.epil, label %._crit_edge17

.lr.ph.preheader.epil:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !97
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep.epil = getelementptr i8, ptr %i.n, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.bx, i1 false), !tbaa !384
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit31.unr-lcssa, %.lr.ph.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, %._crit_edge17.loopexit.unr-lcssa, %.lr.ph.us.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store i8 0, ptr %4, align 8, !tbaa !474, !alias.scope !1099
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.by, align 8, !tbaa !472, !alias.scope !1099
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.bz, align 8, !tbaa !472, !alias.scope !1099
  %i.ca = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %._crit_edge17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !362
  call void @free(ptr noundef %i.cb) #38
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !363
  call void @free(ptr noundef %i.cc) #38
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !364 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !365 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #39
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.k:                                             ; preds = %._crit_edge17
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.cj, %bb.k ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !356  ; 32 uses
  %i.c = trunc i64 %i.b to i32                    ; 17 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call double @sqrt(double noundef %i.d) #38
  %i.f = fmul double %i.e, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %.sroa.speculated548 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16)
  %i.h = add nsw i32 %i.c, -2
  %.sroa.speculated543 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated548, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !363  ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !362  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !97
  %i.p = load i32, ptr %i.m, align 4, !tbaa !97
  %i.q = sub nsw i32 %i.o, %i.p
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.b, 0
  br i1 %i.r, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.t = and i64 %i.s, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = lshr exact i64 %i.s, 2
  %i.v = sub nsw i64 0, %i.u
  %i.w = and i64 %i.v, 3
  %i.x = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.b)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.b, %bb.d ] ; 12 uses
  %i.y = sub nsw i64 %i.b, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.z = sdiv i64 %i.y, 8
  %i.aa = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.ab = sdiv i64 %i.y, 4
  %i.ac = shl nsw i64 %i.ab, 2                    ; 3 uses
  %i.ad = add nsw i64 %i.aa, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ae = add nsw i64 %i.ac, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.y, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.af = getelementptr [4 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !87 ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 7
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = load <4 x i32>, ptr %i.ai, align 1, !tbaa !87 ; 2 uses
  %i.ak = bitcast <2 x i64> %i.ag to <4 x i32>    ; 2 uses
  %i.al = icmp samesign ugt i64 %i.y, 15
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.aj, %bb.g ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ak, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.am = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = icmp sgt i64 %i.ac, %i.aa
  br i1 %i.ao, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i ]
  %i.ap = phi <4 x i32> [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.ar = load <4 x i32>, ptr %i.aq, align 1, !tbaa !87
  %i.as = add <4 x i32> %i.ar, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load <4 x i32>, ptr %i.au, align 1, !tbaa !87
  %i.aw = add <4 x i32> %i.av, %i.ap              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.ax = icmp slt i64 %.057.i.i.i.i, %i.ad
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.az = load <4 x i32>, ptr %i.ay, align 1, !tbaa !87
  %i.ba = add <4 x i32> %i.az, %i.am
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ag, %bb.f ], [ %i.bb, %bb.h ], [ %i.an, %._crit_edge.i.i.i.i ]
  %i.bc = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bc, <4 x i32> %i.bc) ; 2 uses
  %i.be = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bd, <4 x i32> %i.bd) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.be, i64 0 ; 2 uses
  %i.bf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader1423, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %2 = shufflevector <4 x i32> %i.be, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %2, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi1167 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !97
  %wide.load1168 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !97
  %i.bi = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bj = add <4 x i32> %wide.load1168, %vec.phi1167 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !1100

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader1423

.lr.ph85.i.i.i.i.preheader1423:                   ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.i ], [ %i.bl, %middle.block ], [ %i.ca, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bm = icmp slt i64 %i.ae, %i.b
  br i1 %i.bm, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bn = add i64 %.0.i.i.i.i.i.i.i.i, %i.ac
  %i.bo = sub i64 %i.b, %i.bn                     ; 3 uses
  %min.iters.check1170 = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check1170, label %.lr.ph89.i.i.i.i.preheader1418, label %vector.ph1171

vector.ph1171:                                    ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec1172 = and i64 %i.bo, -8                  ; 3 uses
  %i.bp = add i64 %i.ae, %n.vec1172
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.br = getelementptr [4 x i8], ptr %i.j, i64 %i.ae
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1179, %vector.body1173 ] ; 2 uses
  %vec.phi1175 = phi <4 x i32> [ %i.bq, %vector.ph1171 ], [ %i.bu, %vector.body1173 ]
  %vec.phi1176 = phi <4 x i32> [ zeroinitializer, %vector.ph1171 ], [ %i.bv, %vector.body1173 ]
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %index1174 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load1177 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !97
  %wide.load1178 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !97
  %i.bu = add <4 x i32> %wide.load1177, %vec.phi1175 ; 2 uses
  %i.bv = add <4 x i32> %wide.load1178, %vec.phi1176 ; 2 uses
  %index.next1179 = add nuw i64 %index1174, 8     ; 2 uses
  %i.bw = icmp eq i64 %index.next1179, %n.vec1172
  br i1 %i.bw, label %middle.block1180, label %vector.body1173, !llvm.loop !1101

middle.block1180:                                 ; preds = %vector.body1173
  %bin.rdx1181 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1181) ; 2 uses
  %cmp.n1182 = icmp eq i64 %i.bo, %n.vec1172
  br i1 %cmp.n1182, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader1418

.lr.ph89.i.i.i.i.preheader1418:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block1180
  %.05588.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block1180 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block1180 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader1423, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1423 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1423 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !97
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !1102

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1418, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1418 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1418 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !97
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.b
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !1103

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !97  ; 3 uses
  %i.ci = icmp sgt i64 %i.b, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check1186 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check1186, label %.lr.ph94.i.i.i.i.preheader1414, label %vector.ph1187

vector.ph1187:                                    ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec1188 = and i64 %i.cj, -8                  ; 3 uses
  %i.ck = or disjoint i64 %n.vec1188, 1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ch, i64 0
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1195, %vector.body1189 ] ; 2 uses
  %vec.phi1191 = phi <4 x i32> [ %i.cl, %vector.ph1187 ], [ %i.cp, %vector.body1189 ]
  %vec.phi1192 = phi <4 x i32> [ zeroinitializer, %vector.ph1187 ], [ %i.cq, %vector.body1189 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1190 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %wide.load1193 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !97
  %wide.load1194 = load <4 x i32>, ptr %i.co, align 4, !tbaa !97
  %i.cp = add <4 x i32> %wide.load1193, %vec.phi1191 ; 2 uses
  %i.cq = add <4 x i32> %wide.load1194, %vec.phi1192 ; 2 uses
  %index.next1195 = add nuw i64 %index1190, 8     ; 2 uses
  %i.cr = icmp eq i64 %index.next1195, %n.vec1188
  br i1 %i.cr, label %middle.block1196, label %vector.body1189, !llvm.loop !1104

middle.block1196:                                 ; preds = %vector.body1189
  %bin.rdx1197 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1197) ; 2 uses
  %cmp.n1198 = icmp eq i64 %i.cj, %n.vec1188
  br i1 %cmp.n1198, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader1414

.lr.ph94.i.i.i.i.preheader1414:                   ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block1196
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block1196 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block1196 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader1414, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1414 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1414 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !97
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.b
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !1105

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block1180, %middle.block1196, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block1196 ], [ %i.bx, %middle.block1180 ], [ %i.ce, %.lr.ph89.i.i.i.i ] ; 3 uses
  %i.cx = add nsw i32 %i.c, 1                     ; 11 uses
  %i.cy = sext i32 %i.cx to i64                   ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !432
  %.not.i.i.i = icmp eq i64 %i.da, %i.cy
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.db = load ptr, ptr %1, align 8, !tbaa !400
  tail call void @free(ptr noundef %i.db) #38
  %i.dc = icmp sgt i32 %i.c, -1
  br i1 %i.dc, label %bb.l, label %.sink.split.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.dd = shl nuw nsw i64 %i.cy, 2
  %i.de = tail call noalias ptr @malloc(i64 noundef %i.dd) #43 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.m, label %.sink.split.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dg = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dg, align 8, !tbaa !96
  tail call void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.l, %bb.k
  %.sink.i.i.i = phi ptr [ %i.de, %bb.l ], [ null, %bb.k ]
  store ptr %.sink.i.i.i, ptr %1, align 8, !tbaa !400
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %.sink.split.i.i.i
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !432
  %i.dh = sdiv i32 %.0.i, 5
  %i.di = shl nsw i32 %i.c, 1
  %i.dj = add i32 %.0.i, %i.di
  %i.dk = add i32 %i.dj, %i.dh                    ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i64 noundef %i.dl, double noundef 0.000000e+00)
  %i.dn = shl i32 %i.c, 3
  %i.do = add i32 %i.dn, 8
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %bb.n, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit

bb.n:                                             ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.dq = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dq, align 8, !tbaa !96
  tail call void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit: ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.dr = shl nsw i64 %i.cy, 5                    ; 4 uses
  %i.ds = icmp ult i64 %i.dr, 131073
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit
end_hunk_3
begin_hunk_4_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE:bb.a
  br i1 %cmp.n213, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader378

.lr.ph.i17.i.i.i.i.i.i.i.preheader378:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader, %middle.block212
  %.05.i18.i.i.i.i.i.i.i.ph = phi i64 [ %i.bs, %.lr.ph.i17.i.i.i.i.i.i.i.preheader ], [ %i.db, %middle.block212 ] ; 4 uses
  %i.di = sub i64 %i.bj, %.05.i18.i.i.i.i.i.i.i.ph
  %xtraiter381 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader378, %.lr.ph.i17.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader378 ] ; 3 uses
  %prol.iter383 = phi i64 [ %prol.iter383.next, %.lr.ph.i17.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.preheader378 ]
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.05.i18.i.i.i.i.i.i.i.prol
  %i.dk = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.prol
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !384
  store double %i.dl, ptr %i.dj, align 8, !tbaa !384
  %i.dm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter383.next = add i64 %prol.iter383, 1   ; 2 uses
  %prol.iter383.cmp.not = icmp eq i64 %prol.iter383.next, %xtraiter381
  br i1 %prol.iter383.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol, !llvm.loop !1189

.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.preheader378
  %.05.i18.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader378 ], [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.prol ]
  %i.dn = sub i64 %.05.i18.i.i.i.i.i.i.i.ph, %i.bj
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.05.i18.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !384
  store double %i.dr, ptr %i.dp, align 8, !tbaa !384
  %i.ds = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.ds
  %i.dv = load double, ptr %i.du, align 8, !tbaa !384
  store double %i.dv, ptr %i.dt, align 8, !tbaa !384
  %i.dw = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.dw
  %i.dy = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.dw
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !384
  store double %i.dz, ptr %i.dx, align 8, !tbaa !384
  %i.ea = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.ea
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !384
  store double %i.ed, ptr %i.eb, align 8, !tbaa !384
  %i.ee = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ee, %i.bj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i, !llvm.loop !1190

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.021.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.021.i.i.i.i.i.i.i
  %i.eh = load <2 x double>, ptr %i.eg, align 1, !tbaa !87
  store <2 x double> %i.eh, ptr %i.ef, align 16, !tbaa !87
  %i.ei = add nsw i64 %.021.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.ej = icmp slt i64 %i.ei, %i.bs
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !1191

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.086.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bg, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod386 = icmp ne i64 %xtraiter384, 0
  tail call void @llvm.assume(i1 %lcmp.mod386)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.086.i.epil = phi i64 [ %.086.i.epil.init, %.epil.preheader ], [ %i.eq, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %.086.i.epil
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.086.i.epil
  %i.em = load i32, ptr %i.el, align 4, !tbaa !97
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.en
  %i.ep = load double, ptr %i.ek, align 8, !tbaa !384
  store double %i.ep, ptr %i.eo, align 8, !tbaa !384
  %i.eq = add nuw nsw i64 %.086.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter384
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %bb.k, !llvm.loop !1192

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %bb.k, %middle.block212, %.critedge.i, %.preheader83.i, %._crit_edge.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !363 ; 13 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !362 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !356
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !97
  %i.fb = load i32, ptr %i.ew, align 4, !tbaa !97
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.m:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !356 ; 11 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.fh = and i64 %i.fg, 3
  %.not.i.i.i.i.i.i.i.i11 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i.i.i11, label %bb.o, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.fi = lshr exact i64 %i.fg, 2
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = and i64 %i.fj, 3
  %i.fl = tail call i64 @llvm.smin.i64(i64 %i.fk, i64 %i.fe)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i12 = phi i64 [ %i.fl, %bb.o ], [ %i.fe, %bb.n ] ; 12 uses
  %i.fm = sub nsw i64 %i.fe, %.0.i.i.i.i.i.i.i.i12 ; 5 uses
  %i.fn = sdiv i64 %i.fm, 8
  %i.fo = shl nsw i64 %i.fn, 3                    ; 2 uses
  %i.fp = sdiv i64 %i.fm, 4
  %i.fq = shl nsw i64 %i.fp, 2                    ; 3 uses
  %i.fr = add nsw i64 %i.fo, %.0.i.i.i.i.i.i.i.i12 ; 2 uses
  %i.fs = add nsw i64 %i.fq, %.0.i.i.i.i.i.i.i.i12 ; 4 uses
  %.off.i.i.i.i = add i64 %i.fm, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ft = getelementptr [4 x i8], ptr %i.et, i64 %.0.i.i.i.i.i.i.i.i12 ; 2 uses
  %i.fu = load <2 x i64>, ptr %i.ft, align 1, !tbaa !87 ; 2 uses
  %i.fv = icmp sgt i64 %i.fm, 7
  br i1 %i.fv, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fw = getelementptr i8, ptr %i.ft, i64 16
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !87 ; 2 uses
  %i.fy = bitcast <2 x i64> %i.fu to <4 x i32>    ; 2 uses
  %i.fz = icmp samesign ugt i64 %i.fm, 15
  br i1 %i.fz, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i12, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.q
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.fx, %bb.q ], [ %i.gk, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.fy, %bb.q ], [ %i.gg, %.lr.ph.i.i.i.i ]
  %i.ga = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.gb = bitcast <4 x i32> %i.ga to <2 x i64>
  %i.gc = icmp sgt i64 %i.fq, %i.fo
  br i1 %i.gc, label %bb.r, label %bb.s

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i12, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.gg, %.lr.ph.i.i.i.i ], [ %i.fy, %.lr.ph.preheader.i.i.i.i ]
  %i.gd = phi <4 x i32> [ %i.gk, %.lr.ph.i.i.i.i ], [ %i.fx, %.lr.ph.preheader.i.i.i.i ]
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.05780.i.i.i.i
  %i.gf = load <4 x i32>, ptr %i.ge, align 1, !tbaa !87
  %i.gg = add <4 x i32> %i.gf, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.gh = getelementptr [4 x i8], ptr %i.et, i64 %.057.in79.i.i.i.i
  %i.gi = getelementptr i8, ptr %i.gh, i64 48
  %i.gj = load <4 x i32>, ptr %i.gi, align 1, !tbaa !87
  %i.gk = add <4 x i32> %i.gj, %i.gd              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.gl = icmp slt i64 %.057.i.i.i.i, %i.fr
  br i1 %i.gl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.fr
  %i.gn = load <4 x i32>, ptr %i.gm, align 1, !tbaa !87
  %i.go = add <4 x i32> %i.gn, %i.ga
  %i.gp = bitcast <4 x i32> %i.go to <2 x i64>
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i, %bb.p
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.fu, %bb.p ], [ %i.gp, %bb.r ], [ %i.gb, %._crit_edge.i.i.i.i ]
  %i.gq = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.gr = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.gq, <4 x i32> %i.gq) ; 2 uses
  %i.gs = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.gr, <4 x i32> %i.gr) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.gs, i64 0 ; 2 uses
  %i.gt = icmp sgt i64 %.0.i.i.i.i.i.i.i.i12, 0
  br i1 %i.gt, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.s
  %min.iters.check216 = icmp ult i64 %.0.i.i.i.i.i.i.i.i12, 8
  br i1 %min.iters.check216, label %.lr.ph85.i.i.i.i.preheader372, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec218 = and i64 %.0.i.i.i.i.i.i.i.i12, 9223372036854775800 ; 3 uses
  %5 = shufflevector <4 x i32> %i.gs, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next224, %vector.body219 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %5, %vector.ph217 ], [ %i.gw, %vector.body219 ]
  %vec.phi221 = phi <4 x i32> [ zeroinitializer, %vector.ph217 ], [ %i.gx, %vector.body219 ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index220 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load222 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !97
  %wide.load223 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !97
  %i.gw = add <4 x i32> %wide.load222, %vec.phi   ; 2 uses
  %i.gx = add <4 x i32> %wide.load223, %vec.phi221 ; 2 uses
  %index.next224 = add nuw i64 %index220, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.gy, label %middle.block225, label %vector.body219, !llvm.loop !1193

middle.block225:                                  ; preds = %vector.body219
  %bin.rdx = add <4 x i32> %i.gx, %i.gw
  %i.gz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n226 = icmp eq i64 %.0.i.i.i.i.i.i.i.i12, %n.vec218
  br i1 %cmp.n226, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader372

.lr.ph85.i.i.i.i.preheader372:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block225
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec218, %middle.block225 ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.gz, %middle.block225 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block225, %bb.s
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.s ], [ %i.gz, %middle.block225 ], [ %i.ho, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ha = icmp slt i64 %i.fs, %i.fe
  br i1 %i.ha, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.hb = add i64 %.0.i.i.i.i.i.i.i.i12, %i.fq
  %i.hc = sub i64 %i.fe, %i.hb                    ; 3 uses
  %min.iters.check229 = icmp ult i64 %i.hc, 8
  br i1 %min.iters.check229, label %.lr.ph89.i.i.i.i.preheader367, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec231 = and i64 %i.hc, -8                   ; 3 uses
  %i.hd = add i64 %i.fs, %n.vec231
  %i.he = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.hf = getelementptr [4 x i8], ptr %i.et, i64 %i.fs
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next238, %vector.body232 ] ; 2 uses
  %vec.phi234 = phi <4 x i32> [ %i.he, %vector.ph230 ], [ %i.hi, %vector.body232 ]
  %vec.phi235 = phi <4 x i32> [ zeroinitializer, %vector.ph230 ], [ %i.hj, %vector.body232 ]
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %index233 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %wide.load236 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !97
  %wide.load237 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !97
  %i.hi = add <4 x i32> %wide.load236, %vec.phi234 ; 2 uses
  %i.hj = add <4 x i32> %wide.load237, %vec.phi235 ; 2 uses
  %index.next238 = add nuw i64 %index233, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next238, %n.vec231
  br i1 %i.hk, label %middle.block239, label %vector.body232, !llvm.loop !1194

middle.block239:                                  ; preds = %vector.body232
  %bin.rdx240 = add <4 x i32> %i.hj, %i.hi
  %i.hl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx240) ; 2 uses
  %cmp.n241 = icmp eq i64 %i.hc, %n.vec231
  br i1 %cmp.n241, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader367

.lr.ph89.i.i.i.i.preheader367:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block239
  %.05588.i.i.i.i.ph = phi i64 [ %i.fs, %.lr.ph89.i.i.i.i.preheader ], [ %i.hd, %middle.block239 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.hl, %middle.block239 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader372, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.hp, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader372 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ho, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader372 ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.05683.i.i.i.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !97
  %i.ho = add nsw i32 %i.hn, %.07582.i.i.i.i      ; 2 uses
  %i.hp = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.hp, %.0.i.i.i.i.i.i.i.i12
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !1195

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader367, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ht, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader367 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.hs, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader367 ]
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.05588.i.i.i.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !97
  %i.hs = add nsw i32 %i.hr, %.187.i.i.i.i        ; 2 uses
  %i.ht = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.hu = icmp slt i64 %i.ht, %i.fe
  br i1 %i.hu, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !1196

bb.t:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.hv = load i32, ptr %i.et, align 4, !tbaa !97 ; 3 uses
  %i.hw = icmp sgt i64 %i.fe, 1
  br i1 %i.hw, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.t
  %i.hx = add nsw i64 %i.fe, -1                   ; 2 uses
  %min.iters.check245 = icmp ult i64 %i.fe, 9
  br i1 %min.iters.check245, label %.lr.ph94.i.i.i.i.preheader363, label %vector.ph246

vector.ph246:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec247 = and i64 %i.hx, -8                   ; 3 uses
  %i.hy = or disjoint i64 %n.vec247, 1
  %i.hz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hv, i64 0
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next254, %vector.body248 ] ; 2 uses
  %vec.phi250 = phi <4 x i32> [ %i.hz, %vector.ph246 ], [ %i.id, %vector.body248 ]
  %vec.phi251 = phi <4 x i32> [ zeroinitializer, %vector.ph246 ], [ %i.ie, %vector.body248 ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index249 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 20
  %wide.load252 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !97
  %wide.load253 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !97
  %i.id = add <4 x i32> %wide.load252, %vec.phi250 ; 2 uses
  %i.ie = add <4 x i32> %wide.load253, %vec.phi251 ; 2 uses
  %index.next254 = add nuw i64 %index249, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next254, %n.vec247
  br i1 %i.if, label %middle.block255, label %vector.body248, !llvm.loop !1197

middle.block255:                                  ; preds = %vector.body248
  %bin.rdx256 = add <4 x i32> %i.ie, %i.id
  %i.ig = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx256) ; 2 uses
  %cmp.n257 = icmp eq i64 %i.hx, %n.vec247
  br i1 %cmp.n257, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader363

.lr.ph94.i.i.i.i.preheader363:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block255
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.hy, %middle.block255 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.hv, %.lr.ph94.i.i.i.i.preheader ], [ %i.ig, %middle.block255 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader363, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.ik, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader363 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.ij, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader363 ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.092.i.i.i.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !97
  %i.ij = add nsw i32 %i.ii, %.291.i.i.i.i        ; 2 uses
  %i.ik = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.ik, %i.fe
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !1198

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block239, %middle.block255, %.preheader.i.i.i.i, %bb.t, %bb.l
  %.0.i.in = phi i32 [ %i.fc, %bb.l ], [ %i.ij, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.hv, %bb.t ], [ %i.ig, %middle.block255 ], [ %i.hl, %middle.block239 ], [ %i.hs, %.lr.ph89.i.i.i.i ]
  %i.il = icmp sgt i32 %.0.i.in, 0
  br i1 %i.il, label %bb.u, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store i8 0, ptr %3, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.er, ptr %i.im, align 8
  call void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread: ; preds = %bb.m, %bb.u, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.io = load i64, ptr %i.in, align 8, !tbaa !479
  %i.ip = icmp sgt i64 %i.io, 0
  br i1 %i.ip, label %bb.v, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit

bb.v:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.492.24.copyload = load ptr, ptr %2, align 8 ; 14 uses
  %.sroa.693.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !480 ; 13 uses
  %i.is = load i64, ptr %.sroa.693.24..sroa_idx, align 8, !tbaa !379 ; 9 uses
  %i.it = ptrtoint ptr %.sroa.492.24.copyload to i64 ; 2 uses
  %i.iu = and i64 %i.it, 7
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i64 %i.iu, 0
  br i1 %.not.i.i.i.i.i.i.i.i13, label %bb.w, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i14

bb.w:                                             ; preds = %bb.v
  %i.iv = lshr exact i64 %i.it, 3
  %i.iw = and i64 %i.iv, 1
  %i.ix = call i64 @llvm.smin.i64(i64 %i.iw, i64 %i.is)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i14

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i14: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i15 = phi i64 [ %i.ix, %bb.w ], [ %i.is, %bb.v ] ; 13 uses
  %i.iy = sub nsw i64 %i.is, %.0.i.i.i.i.i.i.i.i15 ; 2 uses
  %i.iz = sdiv i64 %i.iy, 2                       ; 2 uses
  %i.ja = shl nsw i64 %i.iz, 1                    ; 2 uses
  %i.jb = add nsw i64 %i.ja, %.0.i.i.i.i.i.i.i.i15 ; 6 uses
  %i.jc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i15, 0
  br i1 %i.jc, label %.lr.ph.i.i.i.i.i.i.i.i22.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i22.preheader:               ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i14
  %min.iters.check263 = icmp eq i64 %.0.i.i.i.i.i.i.i.i15, 1
  br i1 %min.iters.check263, label %.lr.ph.i.i.i.i.i.i.i.i22.preheader362, label %vector.memcheck264

vector.memcheck264:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i22.preheader
  %i.jd = shl i64 %.0.i.i.i.i.i.i.i.i15, 3        ; 2 uses
  %i.je = getelementptr i8, ptr %.sroa.492.24.copyload, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.ir, i64 %i.jd
  %bound0 = icmp ult ptr %.sroa.492.24.copyload, %i.jf
  %bound1 = icmp ult ptr %i.ir, %i.je
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i22.preheader362, label %vector.ph265
end_hunk_4
begin_hunk_5_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE:bb.a
  %i.kq = getelementptr i8, ptr %.sroa.492.24.copyload, i64 %i.kp
  %i.kr = getelementptr i8, ptr %i.ir, i64 %i.kn
  %i.ks = getelementptr i8, ptr %i.ir, i64 %i.kp
  %bound0285 = icmp ult ptr %i.ko, %i.ks
  %bound1286 = icmp ult ptr %i.kr, %i.kq
  %found.conflict287 = and i1 %bound0285, %bound1286
  br i1 %found.conflict287, label %.lr.ph.i17.i.i.i.i.i.i.i17.preheader361, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck284
  %n.vec289 = and i64 %i.kk, -2                   ; 3 uses
  %i.kt = add i64 %i.jb, %n.vec289
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next294, %vector.body290 ] ; 2 uses
  %i.ku = add i64 %i.jb, %index291                ; 2 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.ku
  %wide.load292 = load <2 x double>, ptr %i.kw, align 8, !tbaa !384, !alias.scope !1224
  %i.kx = fdiv <2 x double> splat (double 1.000000e+00), %wide.load292
  %wide.load293 = load <2 x double>, ptr %i.kv, align 8, !tbaa !384, !alias.scope !1225, !noalias !1224
  %i.ky = fmul <2 x double> %i.kx, %wide.load293
  store <2 x double> %i.ky, ptr %i.kv, align 8, !tbaa !384, !alias.scope !1225, !noalias !1224
  %index.next294 = add nuw i64 %index291, 2       ; 2 uses
  %i.kz = icmp eq i64 %index.next294, %n.vec289
  br i1 %i.kz, label %middle.block295, label %vector.body290, !llvm.loop !1207

middle.block295:                                  ; preds = %vector.body290
  %cmp.n296 = icmp eq i64 %i.kk, %n.vec289
  br i1 %cmp.n296, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i17.preheader361

.lr.ph.i17.i.i.i.i.i.i.i17.preheader361:          ; preds = %vector.memcheck284, %.lr.ph.i17.i.i.i.i.i.i.i17.preheader, %middle.block295
  %.05.i18.i.i.i.i.i.i.i18.ph = phi i64 [ %i.jb, %vector.memcheck284 ], [ %i.jb, %.lr.ph.i17.i.i.i.i.i.i.i17.preheader ], [ %i.kt, %middle.block295 ] ; 6 uses
  %i.la = sub i64 %i.is, %.05.i18.i.i.i.i.i.i.i18.ph
  %.neg393 = add i64 %.05.i18.i.i.i.i.i.i.i18.ph, 1
  %xtraiter390 = and i64 %i.la, 1
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i17.prol

.lr.ph.i17.i.i.i.i.i.i.i17.prol:                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.preheader361
  %i.lb = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %.05.i18.i.i.i.i.i.i.i18.ph ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %.05.i18.i.i.i.i.i.i.i18.ph
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !384
  %i.le = fdiv double 1.000000e+00, %i.ld
  %i.lf = load double, ptr %i.lb, align 8, !tbaa !384
  %i.lg = fmul double %i.le, %i.lf
  store double %i.lg, ptr %i.lb, align 8, !tbaa !384
  %i.lh = add nsw i64 %.05.i18.i.i.i.i.i.i.i18.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.prol, %.lr.ph.i17.i.i.i.i.i.i.i17.preheader361
  %.05.i18.i.i.i.i.i.i.i18.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i18.ph, %.lr.ph.i17.i.i.i.i.i.i.i17.preheader361 ], [ %i.lh, %.lr.ph.i17.i.i.i.i.i.i.i17.prol ]
  %i.li = icmp eq i64 %i.is, %.neg393
  br i1 %i.li, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i17

.lr.ph.i17.i.i.i.i.i.i.i17:                       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i17
  %.05.i18.i.i.i.i.i.i.i18 = phi i64 [ %i.lw, %.lr.ph.i17.i.i.i.i.i.i.i17 ], [ %.05.i18.i.i.i.i.i.i.i18.unr, %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit ] ; 4 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %.05.i18.i.i.i.i.i.i.i18 ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %.05.i18.i.i.i.i.i.i.i18
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !384
  %i.lm = fdiv double 1.000000e+00, %i.ll
  %i.ln = load double, ptr %i.lj, align 8, !tbaa !384
  %i.lo = fmul double %i.lm, %i.ln
  store double %i.lo, ptr %i.lj, align 8, !tbaa !384
  %i.lp = add nsw i64 %.05.i18.i.i.i.i.i.i.i18, 1 ; 2 uses
  %i.lq = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.lp
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !384
  %i.lt = fdiv double 1.000000e+00, %i.ls
  %i.lu = load double, ptr %i.lq, align 8, !tbaa !384
  %i.lv = fmul double %i.lt, %i.lu
  store double %i.lv, ptr %i.lq, align 8, !tbaa !384
  %i.lw = add nsw i64 %.05.i18.i.i.i.i.i.i.i18, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i19.1 = icmp eq i64 %i.lw, %i.is
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i19.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i17, !llvm.loop !1208

.lr.ph.i.i.i.i.i.i.i20:                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i20
  %.021.i.i.i.i.i.i.i21 = phi i64 [ %i.md, %.lr.ph.i.i.i.i.i.i.i20 ], [ %.0.i.i.i.i.i.i.i.i15, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %.021.i.i.i.i.i.i.i21 ; 2 uses
  %i.ly = load <2 x double>, ptr %i.lx, align 1, !tbaa !87
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %.021.i.i.i.i.i.i.i21
  %i.ma = load <2 x double>, ptr %i.lz, align 1, !tbaa !87
  %i.mb = fdiv <2 x double> splat (double 1.000000e+00), %i.ma
  %i.mc = fmul <2 x double> %i.ly, %i.mb
  store <2 x double> %i.mc, ptr %i.lx, align 16, !tbaa !87
  %i.md = add nsw i64 %.021.i.i.i.i.i.i.i21, 2    ; 2 uses
  %i.me = icmp slt i64 %i.md, %i.jb
  br i1 %i.me, label %.lr.ph.i.i.i.i.i.i.i20, label %._crit_edge.i.i.i.i.i.i.i16, !llvm.loop !1209

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i17, %middle.block295, %._crit_edge.i.i.i.i.i.i.i16, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.mf = load ptr, ptr %i.es, align 8, !tbaa !363 ; 13 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !362 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !356
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !97
  %i.mn = load i32, ptr %i.mi, align 4, !tbaa !97
  %i.mo = sub nsw i32 %i.mm, %i.mn
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58

bb.y:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !356 ; 11 uses
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ms = ptrtoint ptr %i.mf to i64               ; 2 uses
  %i.mt = and i64 %i.ms, 3
  %.not.i.i.i.i.i.i.i.i25 = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i.i.i.i.i.i.i25, label %bb.aa, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26

bb.aa:                                            ; preds = %bb.z
  %i.mu = lshr exact i64 %i.ms, 2
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = and i64 %i.mv, 3
  %i.mx = call i64 @llvm.smin.i64(i64 %i.mw, i64 %i.mq)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i27 = phi i64 [ %i.mx, %bb.aa ], [ %i.mq, %bb.z ] ; 12 uses
  %i.my = sub nsw i64 %i.mq, %.0.i.i.i.i.i.i.i.i27 ; 5 uses
  %i.mz = sdiv i64 %i.my, 8
  %i.na = shl nsw i64 %i.mz, 3                    ; 2 uses
  %i.nb = sdiv i64 %i.my, 4
  %i.nc = shl nsw i64 %i.nb, 2                    ; 3 uses
  %i.nd = add nsw i64 %i.na, %.0.i.i.i.i.i.i.i.i27 ; 2 uses
  %i.ne = add nsw i64 %i.nc, %.0.i.i.i.i.i.i.i.i27 ; 4 uses
  %.off.i.i.i.i28 = add i64 %i.my, 3
  %.not.i.i.i.i29 = icmp ult i64 %.off.i.i.i.i28, 7
  br i1 %.not.i.i.i.i29, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26
  %i.nf = getelementptr [4 x i8], ptr %i.mf, i64 %.0.i.i.i.i.i.i.i.i27 ; 2 uses
  %i.ng = load <2 x i64>, ptr %i.nf, align 1, !tbaa !87 ; 2 uses
  %i.nh = icmp sgt i64 %i.my, 7
  br i1 %i.nh, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ni = getelementptr i8, ptr %i.nf, i64 16
  %i.nj = load <4 x i32>, ptr %i.ni, align 1, !tbaa !87 ; 2 uses
  %i.nk = bitcast <2 x i64> %i.ng to <4 x i32>    ; 2 uses
  %i.nl = icmp samesign ugt i64 %i.my, 15
  br i1 %i.nl, label %.lr.ph.preheader.i.i.i.i47, label %._crit_edge.i.i.i.i44

.lr.ph.preheader.i.i.i.i47:                       ; preds = %bb.ac
  %.05777.i.i.i.i48 = add nsw i64 %.0.i.i.i.i.i.i.i.i27, 8
  br label %.lr.ph.i.i.i.i49

._crit_edge.i.i.i.i44:                            ; preds = %.lr.ph.i.i.i.i49, %bb.ac
  %.lcssa.i.i.i.i45 = phi <4 x i32> [ %i.nj, %bb.ac ], [ %i.nw, %.lr.ph.i.i.i.i49 ]
  %.sroa.067.0.lcssa.i.i.i.i46 = phi <4 x i32> [ %i.nk, %bb.ac ], [ %i.ns, %.lr.ph.i.i.i.i49 ]
  %i.nm = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i46, %.lcssa.i.i.i.i45 ; 2 uses
  %i.nn = bitcast <4 x i32> %i.nm to <2 x i64>
  %i.no = icmp sgt i64 %i.nc, %i.na
  br i1 %i.no, label %bb.ad, label %bb.ae

.lr.ph.i.i.i.i49:                                 ; preds = %.lr.ph.i.i.i.i49, %.lr.ph.preheader.i.i.i.i47
  %.05780.i.i.i.i50 = phi i64 [ %.057.i.i.i.i53, %.lr.ph.i.i.i.i49 ], [ %.05777.i.i.i.i48, %.lr.ph.preheader.i.i.i.i47 ] ; 3 uses
  %.057.in79.i.i.i.i51 = phi i64 [ %.05780.i.i.i.i50, %.lr.ph.i.i.i.i49 ], [ %.0.i.i.i.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i47 ]
  %.sroa.067.078.i.i.i.i52 = phi <4 x i32> [ %i.ns, %.lr.ph.i.i.i.i49 ], [ %i.nk, %.lr.ph.preheader.i.i.i.i47 ]
  %i.np = phi <4 x i32> [ %i.nw, %.lr.ph.i.i.i.i49 ], [ %i.nj, %.lr.ph.preheader.i.i.i.i47 ]
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %.05780.i.i.i.i50
  %i.nr = load <4 x i32>, ptr %i.nq, align 1, !tbaa !87
  %i.ns = add <4 x i32> %i.nr, %.sroa.067.078.i.i.i.i52 ; 2 uses
  %i.nt = getelementptr [4 x i8], ptr %i.mf, i64 %.057.in79.i.i.i.i51
  %i.nu = getelementptr i8, ptr %i.nt, i64 48
  %i.nv = load <4 x i32>, ptr %i.nu, align 1, !tbaa !87
  %i.nw = add <4 x i32> %i.nv, %i.np              ; 2 uses
  %.057.i.i.i.i53 = add nsw i64 %.05780.i.i.i.i50, 8 ; 2 uses
  %i.nx = icmp slt i64 %.057.i.i.i.i53, %i.nd
  br i1 %i.nx, label %.lr.ph.i.i.i.i49, label %._crit_edge.i.i.i.i44, !llvm.loop !8

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i44
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %i.nd
  %i.nz = load <4 x i32>, ptr %i.ny, align 1, !tbaa !87
  %i.oa = add <4 x i32> %i.nz, %i.nm
  %i.ob = bitcast <4 x i32> %i.oa to <2 x i64>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i44, %bb.ab
  %.sroa.067.2.i.i.i.i30 = phi <2 x i64> [ %i.ng, %bb.ab ], [ %i.ob, %bb.ad ], [ %i.nn, %._crit_edge.i.i.i.i44 ]
  %i.oc = bitcast <2 x i64> %.sroa.067.2.i.i.i.i30 to <4 x i32> ; 2 uses
  %i.od = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.oc, <4 x i32> %i.oc) ; 2 uses
  %i.oe = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.od, <4 x i32> %i.od) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i31 = extractelement <4 x i32> %i.oe, i64 0 ; 2 uses
  %i.of = icmp sgt i64 %.0.i.i.i.i.i.i.i.i27, 0
  br i1 %i.of, label %.lr.ph85.i.i.i.i40.preheader, label %.preheader.i.i.i.i32

.lr.ph85.i.i.i.i40.preheader:                     ; preds = %bb.ae
  %min.iters.check299 = icmp ult i64 %.0.i.i.i.i.i.i.i.i27, 8
  br i1 %min.iters.check299, label %.lr.ph85.i.i.i.i40.preheader355, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph85.i.i.i.i40.preheader
  %n.vec301 = and i64 %.0.i.i.i.i.i.i.i.i27, 9223372036854775800 ; 3 uses
  %6 = shufflevector <4 x i32> %i.oe, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next308, %vector.body302 ] ; 2 uses
  %vec.phi304 = phi <4 x i32> [ %6, %vector.ph300 ], [ %i.oi, %vector.body302 ]
  %vec.phi305 = phi <4 x i32> [ zeroinitializer, %vector.ph300 ], [ %i.oj, %vector.body302 ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index303 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load306 = load <4 x i32>, ptr %i.og, align 4, !tbaa !97
  %wide.load307 = load <4 x i32>, ptr %i.oh, align 4, !tbaa !97
  %i.oi = add <4 x i32> %wide.load306, %vec.phi304 ; 2 uses
  %i.oj = add <4 x i32> %wide.load307, %vec.phi305 ; 2 uses
  %index.next308 = add nuw i64 %index303, 8       ; 2 uses
  %i.ok = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.ok, label %middle.block309, label %vector.body302, !llvm.loop !1210

middle.block309:                                  ; preds = %vector.body302
  %bin.rdx310 = add <4 x i32> %i.oj, %i.oi
  %i.ol = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx310) ; 2 uses
  %cmp.n311 = icmp eq i64 %.0.i.i.i.i.i.i.i.i27, %n.vec301
  br i1 %cmp.n311, label %.preheader.i.i.i.i32, label %.lr.ph85.i.i.i.i40.preheader355

.lr.ph85.i.i.i.i40.preheader355:                  ; preds = %.lr.ph85.i.i.i.i40.preheader, %middle.block309
  %.05683.i.i.i.i41.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i40.preheader ], [ %n.vec301, %middle.block309 ]
  %.07582.i.i.i.i42.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i31, %.lr.ph85.i.i.i.i40.preheader ], [ %i.ol, %middle.block309 ]
  br label %.lr.ph85.i.i.i.i40

.preheader.i.i.i.i32:                             ; preds = %.lr.ph85.i.i.i.i40, %middle.block309, %bb.ae
  %.075.lcssa.i.i.i.i33 = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i31, %bb.ae ], [ %i.ol, %middle.block309 ], [ %i.pa, %.lr.ph85.i.i.i.i40 ] ; 3 uses
  %i.om = icmp slt i64 %i.ne, %i.mq
  br i1 %i.om, label %.lr.ph89.i.i.i.i37.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58

.lr.ph89.i.i.i.i37.preheader:                     ; preds = %.preheader.i.i.i.i32
  %i.on = add i64 %.0.i.i.i.i.i.i.i.i27, %i.nc
  %i.oo = sub i64 %i.mq, %i.on                    ; 3 uses
  %min.iters.check315 = icmp ult i64 %i.oo, 8
  br i1 %min.iters.check315, label %.lr.ph89.i.i.i.i37.preheader350, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph89.i.i.i.i37.preheader
  %n.vec317 = and i64 %i.oo, -8                   ; 3 uses
  %i.op = add i64 %i.ne, %n.vec317
  %i.oq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i33, i64 0
  %i.or = getelementptr [4 x i8], ptr %i.mf, i64 %i.ne
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next324, %vector.body318 ] ; 2 uses
  %vec.phi320 = phi <4 x i32> [ %i.oq, %vector.ph316 ], [ %i.ou, %vector.body318 ]
  %vec.phi321 = phi <4 x i32> [ zeroinitializer, %vector.ph316 ], [ %i.ov, %vector.body318 ]
  %i.os = getelementptr [4 x i8], ptr %i.or, i64 %index319 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load322 = load <4 x i32>, ptr %i.os, align 4, !tbaa !97
  %wide.load323 = load <4 x i32>, ptr %i.ot, align 4, !tbaa !97
  %i.ou = add <4 x i32> %wide.load322, %vec.phi320 ; 2 uses
  %i.ov = add <4 x i32> %wide.load323, %vec.phi321 ; 2 uses
  %index.next324 = add nuw i64 %index319, 8       ; 2 uses
  %i.ow = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.ow, label %middle.block325, label %vector.body318, !llvm.loop !1211

middle.block325:                                  ; preds = %vector.body318
  %bin.rdx326 = add <4 x i32> %i.ov, %i.ou
  %i.ox = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx326) ; 2 uses
  %cmp.n327 = icmp eq i64 %i.oo, %n.vec317
  br i1 %cmp.n327, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58, label %.lr.ph89.i.i.i.i37.preheader350

.lr.ph89.i.i.i.i37.preheader350:                  ; preds = %.lr.ph89.i.i.i.i37.preheader, %middle.block325
  %.05588.i.i.i.i38.ph = phi i64 [ %i.ne, %.lr.ph89.i.i.i.i37.preheader ], [ %i.op, %middle.block325 ]
  %.187.i.i.i.i39.ph = phi i32 [ %.075.lcssa.i.i.i.i33, %.lr.ph89.i.i.i.i37.preheader ], [ %i.ox, %middle.block325 ]
  br label %.lr.ph89.i.i.i.i37

.lr.ph85.i.i.i.i40:                               ; preds = %.lr.ph85.i.i.i.i40.preheader355, %.lr.ph85.i.i.i.i40
  %.05683.i.i.i.i41 = phi i64 [ %i.pb, %.lr.ph85.i.i.i.i40 ], [ %.05683.i.i.i.i41.ph, %.lr.ph85.i.i.i.i40.preheader355 ] ; 2 uses
  %.07582.i.i.i.i42 = phi i32 [ %i.pa, %.lr.ph85.i.i.i.i40 ], [ %.07582.i.i.i.i42.ph, %.lr.ph85.i.i.i.i40.preheader355 ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.05683.i.i.i.i41
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !97
  %i.pa = add nsw i32 %i.oz, %.07582.i.i.i.i42    ; 2 uses
  %i.pb = add nuw nsw i64 %.05683.i.i.i.i41, 1    ; 2 uses
  %exitcond.not.i.i.i.i43 = icmp eq i64 %i.pb, %.0.i.i.i.i.i.i.i.i27
  br i1 %exitcond.not.i.i.i.i43, label %.preheader.i.i.i.i32, label %.lr.ph85.i.i.i.i40, !llvm.loop !1212

.lr.ph89.i.i.i.i37:                               ; preds = %.lr.ph89.i.i.i.i37.preheader350, %.lr.ph89.i.i.i.i37
  %.05588.i.i.i.i38 = phi i64 [ %i.pf, %.lr.ph89.i.i.i.i37 ], [ %.05588.i.i.i.i38.ph, %.lr.ph89.i.i.i.i37.preheader350 ] ; 2 uses
  %.187.i.i.i.i39 = phi i32 [ %i.pe, %.lr.ph89.i.i.i.i37 ], [ %.187.i.i.i.i39.ph, %.lr.ph89.i.i.i.i37.preheader350 ]
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.mf, i64 %.05588.i.i.i.i38
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !97
  %i.pe = add nsw i32 %i.pd, %.187.i.i.i.i39      ; 2 uses
  %i.pf = add nsw i64 %.05588.i.i.i.i38, 1        ; 2 uses
  %i.pg = icmp slt i64 %i.pf, %i.mq
  br i1 %i.pg, label %.lr.ph89.i.i.i.i37, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58, !llvm.loop !1213

bb.af:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26
  %i.ph = load i32, ptr %i.mf, align 4, !tbaa !97 ; 3 uses
  %i.pi = icmp sgt i64 %i.mq, 1
  br i1 %i.pi, label %.lr.ph94.i.i.i.i54.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58

.lr.ph94.i.i.i.i54.preheader:                     ; preds = %bb.af
  %i.pj = add nsw i64 %i.mq, -1                   ; 2 uses
  %min.iters.check331 = icmp ult i64 %i.mq, 9
  br i1 %min.iters.check331, label %.lr.ph94.i.i.i.i54.preheader347, label %vector.ph332

vector.ph332:                                     ; preds = %.lr.ph94.i.i.i.i54.preheader
  %n.vec333 = and i64 %i.pj, -8                   ; 3 uses
  %i.pk = or disjoint i64 %n.vec333, 1
  %i.pl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ph, i64 0
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %vec.phi336 = phi <4 x i32> [ %i.pl, %vector.ph332 ], [ %i.pp, %vector.body334 ]
  %vec.phi337 = phi <4 x i32> [ zeroinitializer, %vector.ph332 ], [ %i.pq, %vector.body334 ]
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %index335 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 20
  %wide.load338 = load <4 x i32>, ptr %i.pn, align 4, !tbaa !97
  %wide.load339 = load <4 x i32>, ptr %i.po, align 4, !tbaa !97
  %i.pp = add <4 x i32> %wide.load338, %vec.phi336 ; 2 uses
  %i.pq = add <4 x i32> %wide.load339, %vec.phi337 ; 2 uses
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.pr = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.pr, label %middle.block341, label %vector.body334, !llvm.loop !1214

middle.block341:                                  ; preds = %vector.body334
  %bin.rdx342 = add <4 x i32> %i.pq, %i.pp
  %i.ps = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx342) ; 2 uses
  %cmp.n343 = icmp eq i64 %i.pj, %n.vec333
  br i1 %cmp.n343, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58, label %.lr.ph94.i.i.i.i54.preheader347

.lr.ph94.i.i.i.i54.preheader347:                  ; preds = %.lr.ph94.i.i.i.i54.preheader, %middle.block341
  %.092.i.i.i.i55.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i54.preheader ], [ %i.pk, %middle.block341 ]
  %.291.i.i.i.i56.ph = phi i32 [ %i.ph, %.lr.ph94.i.i.i.i54.preheader ], [ %i.ps, %middle.block341 ]
  br label %.lr.ph94.i.i.i.i54

.lr.ph94.i.i.i.i54:                               ; preds = %.lr.ph94.i.i.i.i54.preheader347, %.lr.ph94.i.i.i.i54
  %.092.i.i.i.i55 = phi i64 [ %i.pw, %.lr.ph94.i.i.i.i54 ], [ %.092.i.i.i.i55.ph, %.lr.ph94.i.i.i.i54.preheader347 ] ; 2 uses
  %.291.i.i.i.i56 = phi i32 [ %i.pv, %.lr.ph94.i.i.i.i54 ], [ %.291.i.i.i.i56.ph, %.lr.ph94.i.i.i.i54.preheader347 ]
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.092.i.i.i.i55
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !97
  %i.pv = add nsw i32 %i.pu, %.291.i.i.i.i56      ; 2 uses
  %i.pw = add nuw nsw i64 %.092.i.i.i.i55, 1      ; 2 uses
  %exitcond102.not.i.i.i.i57 = icmp eq i64 %i.pw, %i.mq
  br i1 %exitcond102.not.i.i.i.i57, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58, label %.lr.ph94.i.i.i.i54, !llvm.loop !1215

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58: ; preds = %.lr.ph89.i.i.i.i37, %.lr.ph94.i.i.i.i54, %middle.block325, %middle.block341, %.preheader.i.i.i.i32, %bb.af, %bb.x
  %.0.i36.in = phi i32 [ %i.mo, %bb.x ], [ %i.pv, %.lr.ph94.i.i.i.i54 ], [ %.075.lcssa.i.i.i.i33, %.preheader.i.i.i.i32 ], [ %i.ph, %bb.af ], [ %i.ps, %middle.block341 ], [ %i.ox, %middle.block325 ], [ %i.pe, %.lr.ph89.i.i.i.i37 ]
  %i.px = icmp sgt i32 %.0.i36.in, 0
  br i1 %i.px, label %bb.ag, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread

bb.ag:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store i8 0, ptr %4, align 8, !tbaa !1227, !alias.scope !1228
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.py, align 8, !alias.scope !1228
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.er, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1228
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi2ELi2ELi1EE3runERS7_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %i.py, ptr noundef nonnull align 8 dereferenceable(19) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread: ; preds = %bb.y, %bb.ag, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58
  %i.pz = load i64, ptr %i.d, align 8, !tbaa !432
  %i.qa = icmp sgt i64 %i.pz, 0
  br i1 %i.qa, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.4.8.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !432 ; 4 uses
  %i.qe = icmp sgt i64 %i.qd, 0
  br i1 %i.qe, label %bb.ai, label %_ZN5Eigen8internal26permutation_matrix_productINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELb0ENS_10DenseShapeEE3runIS7_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS7_.exit

bb.ai:                                            ; preds = %bb.ah
  %calloc.i68 = call ptr @calloc(i64 1, i64 %i.qd) ; 6 uses
  %i.qf = icmp eq ptr %calloc.i68, null
  br i1 %i.qf, label %.noexc.i.i85, label %.preheader.lr.ph.i69

.noexc.i.i85:                                     ; preds = %bb.ai
  %i.qg = call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.qg, align 8, !tbaa !96
  call void @__cxa_throw(ptr nonnull %i.qg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

.preheader.lr.ph.i69:                             ; preds = %bb.ai
  %i.qh = load ptr, ptr %i.qb, align 8            ; 2 uses
  br label %.preheader.i70

.loopexit.i84:                                    ; preds = %bb.al, %bb.ak
  %i.qi = icmp slt i64 %i.qp, %i.qd
  br i1 %i.qi, label %.preheader.i70.backedge, label %_ZN5Eigen8internal26permutation_matrix_productINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELb0ENS_10DenseShapeEE3runIS7_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS7_.exit

.preheader.i70:                                   ; preds = %.preheader.i70.backedge, %.preheader.lr.ph.i69
  %.187.i72 = phi i64 [ 0, %.preheader.lr.ph.i69 ], [ %.187.i72.be, %.preheader.i70.backedge ] ; 8 uses
  %i.qj = getelementptr inbounds i8, ptr %calloc.i68, i64 %.187.i72
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !1221, !range !402, !noundef !403
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.preheader.i70
  %i.qm = add nsw i64 %.187.i72, 1                ; 2 uses
  %i.qn = icmp slt i64 %i.qm, %i.qd
end_hunk_5
begin_hunk_6_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !649
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #39, !inline_history !2061
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !31

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !644
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !650
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #39, !inline_history !2061
  br label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit.i

_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 40) #39, !inline_history !2061
  br label %_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit

_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4initEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.a, align 1, !tbaa !641
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.Eigen::Map", align 8        ; 5 uses
  %5 = alloca %"class.Eigen::Map.88", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !356  ; 2 uses
  store ptr %2, ptr %4, align 8, !tbaa !378
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %3, ptr %5, align 8, !tbaa !381
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !379
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  %i.h = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !383 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.j = load double, ptr %i.a, align 8, !tbaa !384
  %i.k = fsub double %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store double %i.k, ptr %i.l, align 8, !tbaa !386
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !363  ; 13 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !362  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !356
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97
  %i.v = load i32, ptr %i.q, align 4, !tbaa !97
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = sext i32 %i.w to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !356  ; 11 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ac = and i64 %i.ab, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = lshr exact i64 %i.ab, 2
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = and i64 %i.ae, 3
  %i.ag = call i64 @llvm.smin.i64(i64 %i.af, i64 %i.z)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.z, %bb.f ] ; 12 uses
  %i.ah = sub nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 5 uses
  %i.ai = sdiv i64 %i.ah, 8
  %i.aj = shl nsw i64 %i.ai, 3                    ; 2 uses
  %i.ak = sdiv i64 %i.ah, 4
  %i.al = shl nsw i64 %i.ak, 2                    ; 3 uses
  %i.am = add nsw i64 %i.aj, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.an = add nsw i64 %i.al, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ah, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ao = getelementptr [4 x i8], ptr %i.n, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !87 ; 2 uses
  %i.aq = icmp sgt i64 %i.ah, 7
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !87 ; 2 uses
  %i.at = bitcast <2 x i64> %i.ap to <4 x i32>    ; 2 uses
  %i.au = icmp samesign ugt i64 %i.ah, 15
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.i
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.as, %bb.i ], [ %i.bf, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.at, %bb.i ], [ %i.bb, %.lr.ph.i.i.i.i ]
  %i.av = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.aw = bitcast <4 x i32> %i.av to <2 x i64>
  %i.ax = icmp sgt i64 %i.al, %i.aj
  br i1 %i.ax, label %bb.j, label %bb.k

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i ]
  %i.ay = phi <4 x i32> [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i ]
  %i.az = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05780.i.i.i.i
  %i.ba = load <4 x i32>, ptr %i.az, align 1, !tbaa !87
  %i.bb = add <4 x i32> %i.ba, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.n, i64 %.057.in79.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load <4 x i32>, ptr %i.bd, align 1, !tbaa !87
  %i.bf = add <4 x i32> %i.be, %i.ay              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bg = icmp slt i64 %.057.i.i.i.i, %i.am
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.am
  %i.bi = load <4 x i32>, ptr %i.bh, align 1, !tbaa !87
  %i.bj = add <4 x i32> %i.bi, %i.av
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i, %bb.h
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ap, %bb.h ], [ %i.bk, %bb.j ], [ %i.aw, %._crit_edge.i.i.i.i ]
  %i.bl = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bm = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bl, <4 x i32> %i.bl) ; 2 uses
  %i.bn = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bm, <4 x i32> %i.bm) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bn, i64 0 ; 2 uses
  %i.bo = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %6 = shufflevector <4 x i32> %i.bn, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %6, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !97
  %wide.load38 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !97
  %i.br = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bs = add <4 x i32> %wide.load38, %vec.phi37  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !2062

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bs, %i.br
  %i.bu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader79

.lr.ph85.i.i.i.i.preheader79:                     ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.k
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.k ], [ %i.bu, %middle.block ], [ %i.cj, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bv = icmp slt i64 %i.an, %i.z
  br i1 %i.bv, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bw = add i64 %.0.i.i.i.i.i.i.i.i, %i.al
  %i.bx = sub i64 %i.z, %i.bw                     ; 3 uses
  %min.iters.check40 = icmp ult i64 %i.bx, 8
  br i1 %min.iters.check40, label %.lr.ph89.i.i.i.i.preheader74, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec42 = and i64 %i.bx, -8                    ; 3 uses
  %i.by = add i64 %i.an, %n.vec42
  %i.bz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.ca = getelementptr [4 x i8], ptr %i.n, i64 %i.an
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %vec.phi45 = phi <4 x i32> [ %i.bz, %vector.ph41 ], [ %i.cd, %vector.body43 ]
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph41 ], [ %i.ce, %vector.body43 ]
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %index44 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load47 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !97
  %wide.load48 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !97
  %i.cd = add <4 x i32> %wide.load47, %vec.phi45  ; 2 uses
  %i.ce = add <4 x i32> %wide.load48, %vec.phi46  ; 2 uses
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.cf, label %middle.block50, label %vector.body43, !llvm.loop !2063

middle.block50:                                   ; preds = %vector.body43
  %bin.rdx51 = add <4 x i32> %i.ce, %i.cd
  %i.cg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx51) ; 2 uses
  %cmp.n52 = icmp eq i64 %i.bx, %n.vec42
  br i1 %cmp.n52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader74

.lr.ph89.i.i.i.i.preheader74:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block50
  %.05588.i.i.i.i.ph = phi i64 [ %i.an, %.lr.ph89.i.i.i.i.preheader ], [ %i.by, %middle.block50 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cg, %middle.block50 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader79, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ck, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader79 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cj, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader79 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.05683.i.i.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !97
  %i.cj = add nsw i32 %i.ci, %.07582.i.i.i.i      ; 2 uses
  %i.ck = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ck, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !2064

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader74, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.co, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cn, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ]
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05588.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !97
  %i.cn = add nsw i32 %i.cm, %.187.i.i.i.i        ; 2 uses
  %i.co = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.z
  br i1 %i.cp, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !2065

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cq = load i32, ptr %i.n, align 4, !tbaa !97  ; 3 uses
  %i.cr = icmp sgt i64 %i.z, 1
  br i1 %i.cr, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.l
  %i.cs = add nsw i64 %i.z, -1                    ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.z, 9
  br i1 %min.iters.check56, label %.lr.ph94.i.i.i.i.preheader71, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec58 = and i64 %i.cs, -8                    ; 3 uses
  %i.ct = or disjoint i64 %n.vec58, 1
  %i.cu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cq, i64 0
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %vec.phi61 = phi <4 x i32> [ %i.cu, %vector.ph57 ], [ %i.cy, %vector.body59 ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.cz, %vector.body59 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index60 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %wide.load63 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !97
  %wide.load64 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !97
  %i.cy = add <4 x i32> %wide.load63, %vec.phi61  ; 2 uses
  %i.cz = add <4 x i32> %wide.load64, %vec.phi62  ; 2 uses
  %index.next65 = add nuw i64 %index60, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.da, label %middle.block66, label %vector.body59, !llvm.loop !2066

middle.block66:                                   ; preds = %vector.body59
  %bin.rdx67 = add <4 x i32> %i.cz, %i.cy
  %i.db = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx67) ; 2 uses
  %cmp.n68 = icmp eq i64 %i.cs, %n.vec58
  br i1 %cmp.n68, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader71

.lr.ph94.i.i.i.i.preheader71:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block66
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ct, %middle.block66 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cq, %.lr.ph94.i.i.i.i.preheader ], [ %i.db, %middle.block66 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader71, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.df, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader71 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader71 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.092.i.i.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !97
  %i.de = add nsw i32 %i.dd, %.291.i.i.i.i        ; 2 uses
  %i.df = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.df, %i.z
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !2067

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block50, %middle.block66, %bb.l, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cq, %bb.l ], [ %i.db, %middle.block66 ], [ %i.cg, %middle.block50 ], [ %i.cn, %.lr.ph89.i.i.i.i ]
  %i.dg = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.d, %bb.e, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.x, %bb.d ], [ %i.dg, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.e ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i64 %.0.i, ptr %i.dh, align 8, !tbaa !389
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.59", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %3, align 8, !tbaa !393
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !651
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.b, align 8, !tbaa !396
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.a, align 8, !tbaa !109
  %i.c = load ptr, ptr %0, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret i1 %i.f

bb.e:                                             ; preds = %bb.a
end_hunk_6
begin_hunk_7_@_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS_17SparseBlockMatrixINS2_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISB_EERKNS5_IS3_EE:_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
bb.a:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i1 %i.h

bb.d:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i6, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE16solveBlocks_implERKNS_17SparseBlockMatrixIS3_EESt8functionIFvRNS_26MarginalCovarianceCholeskyEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef align 8 %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.g2o::MarginalCovarianceCholesky", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN3g2o26MarginalCovarianceCholeskyC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !399
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !362
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !400
  invoke void @_ZN3g2o26MarginalCovarianceCholesky17setCholeskyFactorEiPiS1_PdS1_(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #41
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !396
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit unwind label %bb.p, !inline_history !9

_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit: ; preds = %bb.e
  %i.r = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !383 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !363  ; 13 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !362  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !356
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !97
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !97
  %i.ab = sub nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !356 ; 11 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.ah = and i64 %i.ag, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr exact i64 %i.ag, 2
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = and i64 %i.aj, 3
  %i.al = call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.ae)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.j ], [ %i.ae, %bb.i ] ; 12 uses
  %i.am = sub nsw i64 %i.ae, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.an = sdiv i64 %i.am, 8
  %i.ao = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.ap = sdiv i64 %i.am, 4
  %i.aq = shl nsw i64 %i.ap, 2                    ; 3 uses
  %i.ar = add nsw i64 %i.ao, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.as = add nsw i64 %i.aq, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.am, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.at = getelementptr [4 x i8], ptr %i.t, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.au = load <2 x i64>, ptr %i.at, align 1, !tbaa !87 ; 2 uses
  %i.av = icmp sgt i64 %i.am, 7
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = load <4 x i32>, ptr %i.aw, align 1, !tbaa !87 ; 2 uses
  %i.ay = bitcast <2 x i64> %i.au to <4 x i32>    ; 2 uses
  %i.az = icmp samesign ugt i64 %i.am, 15
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ax, %bb.l ], [ %i.bk, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ay, %bb.l ], [ %i.bg, %.lr.ph.i.i.i.i ]
  %i.ba = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bc = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bc, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i ]
  %i.bd = phi <4 x i32> [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i.i ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05780.i.i.i.i
  %i.bf = load <4 x i32>, ptr %i.be, align 1, !tbaa !87
  %i.bg = add <4 x i32> %i.bf, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.t, i64 %.057.in79.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %i.bj = load <4 x i32>, ptr %i.bi, align 1, !tbaa !87
  %i.bk = add <4 x i32> %i.bj, %i.bd              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bl = icmp slt i64 %.057.i.i.i.i, %i.ar
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ar
  %i.bn = load <4 x i32>, ptr %i.bm, align 1, !tbaa !87
  %i.bo = add <4 x i32> %i.bn, %i.ba
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i, %bb.k
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.au, %bb.k ], [ %i.bp, %bb.m ], [ %i.bb, %._crit_edge.i.i.i.i ]
  %i.bq = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.br = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bq, <4 x i32> %i.bq) ; 2 uses
  %i.bs = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.br, <4 x i32> %i.br) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bs, i64 0 ; 2 uses
  %i.bt = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.n
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %4 = shufflevector <4 x i32> %i.bs, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %4, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !97
  %wide.load61 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !97
  %i.bw = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bx = add <4 x i32> %wide.load61, %vec.phi60  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !2068

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bx, %i.bw
  %i.bz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader102

.lr.ph85.i.i.i.i.preheader102:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.n
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.n ], [ %i.bz, %middle.block ], [ %i.co, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ca = icmp slt i64 %i.as, %i.ae
  br i1 %i.ca, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.cb = add i64 %.0.i.i.i.i.i.i.i.i, %i.aq
  %i.cc = sub i64 %i.ae, %i.cb                    ; 3 uses
  %min.iters.check63 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check63, label %.lr.ph89.i.i.i.i.preheader97, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec65 = and i64 %i.cc, -8                    ; 3 uses
  %i.cd = add i64 %i.as, %n.vec65
  %i.ce = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.cf = getelementptr [4 x i8], ptr %i.t, i64 %i.as
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.ce, %vector.ph64 ], [ %i.ci, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph64 ], [ %i.cj, %vector.body66 ]
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %index67 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load70 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !97
  %wide.load71 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !97
  %i.ci = add <4 x i32> %wide.load70, %vec.phi68  ; 2 uses
  %i.cj = add <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ck, label %middle.block73, label %vector.body66, !llvm.loop !2069

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = add <4 x i32> %i.cj, %i.ci
  %i.cl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.cc, %n.vec65
  br i1 %cmp.n75, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader97

.lr.ph89.i.i.i.i.preheader97:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block73
  %.05588.i.i.i.i.ph = phi i64 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.cd, %middle.block73 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cl, %middle.block73 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader102, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cp, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader102 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.co, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader102 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05683.i.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !97
  %i.co = add nsw i32 %i.cn, %.07582.i.i.i.i      ; 2 uses
  %i.cp = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cp, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !2070

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader97, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ct, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cs, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ]
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05588.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !97
  %i.cs = add nsw i32 %i.cr, %.187.i.i.i.i        ; 2 uses
  %i.ct = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.ae
  br i1 %i.cu, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !2071

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !97  ; 3 uses
  %i.cw = icmp sgt i64 %i.ae, 1
  br i1 %i.cw, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.o
  %i.cx = add nsw i64 %i.ae, -1                   ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.ae, 9
  br i1 %min.iters.check79, label %.lr.ph94.i.i.i.i.preheader94, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec81 = and i64 %i.cx, -8                    ; 3 uses
  %i.cy = or disjoint i64 %n.vec81, 1
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cv, i64 0
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %vec.phi84 = phi <4 x i32> [ %i.cz, %vector.ph80 ], [ %i.dd, %vector.body82 ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph80 ], [ %i.de, %vector.body82 ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index83 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %wide.load86 = load <4 x i32>, ptr %i.db, align 4, !tbaa !97
  %wide.load87 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !97
  %i.dd = add <4 x i32> %wide.load86, %vec.phi84  ; 2 uses
  %i.de = add <4 x i32> %wide.load87, %vec.phi85  ; 2 uses
  %index.next88 = add nuw i64 %index83, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.df, label %middle.block89, label %vector.body82, !llvm.loop !2072

middle.block89:                                   ; preds = %vector.body82
  %bin.rdx90 = add <4 x i32> %i.de, %i.dd
  %i.dg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx90) ; 2 uses
  %cmp.n91 = icmp eq i64 %i.cx, %n.vec81
  br i1 %cmp.n91, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader94

.lr.ph94.i.i.i.i.preheader94:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block89
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cy, %middle.block89 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i.preheader ], [ %i.dg, %middle.block89 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader94, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.dk, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader94 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader94 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.092.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !97
  %i.dj = add nsw i32 %i.di, %.291.i.i.i.i        ; 2 uses
  %i.dk = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.dk, %i.ae
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !2073

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block73, %middle.block89, %bb.o, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cv, %bb.o ], [ %i.dg, %middle.block89 ], [ %i.cl, %middle.block73 ], [ %i.cs, %.lr.ph89.i.i.i.i ]
  %i.dl = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, %bb.h, %bb.g
  %.0.i = phi i64 [ %i.ac, %bb.g ], [ %i.dl, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.h ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i64 %.0.i, ptr %i.dm, align 8, !tbaa !389
  br label %bb.q

bb.p:                                             ; preds = %bb.b, %bb.e, %bb.d
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  resume { ptr, i32 } %i.dn

bb.q:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !638  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !644  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !645  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !648 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !649
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
end_hunk_7
begin_hunk_8_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !755
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #39, !inline_history !2330
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !750
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !756
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #39, !inline_history !2330
  br label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev.exit.i

_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 40) #39, !inline_history !2330
  br label %_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev.exit

_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE4initEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.a, align 1, !tbaa !747
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.Eigen::Map", align 8        ; 5 uses
  %5 = alloca %"class.Eigen::Map.88", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !356  ; 2 uses
  store ptr %2, ptr %4, align 8, !tbaa !378
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %3, ptr %5, align 8, !tbaa !381
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !379
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  %i.h = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !383 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.j = load double, ptr %i.a, align 8, !tbaa !384
  %i.k = fsub double %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store double %i.k, ptr %i.l, align 8, !tbaa !386
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !363  ; 13 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !362  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !356
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97
  %i.v = load i32, ptr %i.q, align 4, !tbaa !97
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = sext i32 %i.w to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !356  ; 11 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ac = and i64 %i.ab, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = lshr exact i64 %i.ab, 2
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = and i64 %i.ae, 3
  %i.ag = call i64 @llvm.smin.i64(i64 %i.af, i64 %i.z)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.z, %bb.f ] ; 12 uses
  %i.ah = sub nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 5 uses
  %i.ai = sdiv i64 %i.ah, 8
  %i.aj = shl nsw i64 %i.ai, 3                    ; 2 uses
  %i.ak = sdiv i64 %i.ah, 4
  %i.al = shl nsw i64 %i.ak, 2                    ; 3 uses
  %i.am = add nsw i64 %i.aj, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.an = add nsw i64 %i.al, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ah, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ao = getelementptr [4 x i8], ptr %i.n, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !87 ; 2 uses
  %i.aq = icmp sgt i64 %i.ah, 7
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !87 ; 2 uses
  %i.at = bitcast <2 x i64> %i.ap to <4 x i32>    ; 2 uses
  %i.au = icmp samesign ugt i64 %i.ah, 15
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.i
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.as, %bb.i ], [ %i.bf, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.at, %bb.i ], [ %i.bb, %.lr.ph.i.i.i.i ]
  %i.av = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.aw = bitcast <4 x i32> %i.av to <2 x i64>
  %i.ax = icmp sgt i64 %i.al, %i.aj
  br i1 %i.ax, label %bb.j, label %bb.k

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i ]
  %i.ay = phi <4 x i32> [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i ]
  %i.az = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05780.i.i.i.i
  %i.ba = load <4 x i32>, ptr %i.az, align 1, !tbaa !87
  %i.bb = add <4 x i32> %i.ba, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.n, i64 %.057.in79.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load <4 x i32>, ptr %i.bd, align 1, !tbaa !87
  %i.bf = add <4 x i32> %i.be, %i.ay              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bg = icmp slt i64 %.057.i.i.i.i, %i.am
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.am
  %i.bi = load <4 x i32>, ptr %i.bh, align 1, !tbaa !87
  %i.bj = add <4 x i32> %i.bi, %i.av
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i, %bb.h
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ap, %bb.h ], [ %i.bk, %bb.j ], [ %i.aw, %._crit_edge.i.i.i.i ]
  %i.bl = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bm = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bl, <4 x i32> %i.bl) ; 2 uses
  %i.bn = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bm, <4 x i32> %i.bm) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bn, i64 0 ; 2 uses
  %i.bo = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %6 = shufflevector <4 x i32> %i.bn, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %6, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !97
  %wide.load38 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !97
  %i.br = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bs = add <4 x i32> %wide.load38, %vec.phi37  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !2331

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bs, %i.br
  %i.bu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader79

.lr.ph85.i.i.i.i.preheader79:                     ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.k
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.k ], [ %i.bu, %middle.block ], [ %i.cj, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bv = icmp slt i64 %i.an, %i.z
  br i1 %i.bv, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bw = add i64 %.0.i.i.i.i.i.i.i.i, %i.al
  %i.bx = sub i64 %i.z, %i.bw                     ; 3 uses
  %min.iters.check40 = icmp ult i64 %i.bx, 8
  br i1 %min.iters.check40, label %.lr.ph89.i.i.i.i.preheader74, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec42 = and i64 %i.bx, -8                    ; 3 uses
  %i.by = add i64 %i.an, %n.vec42
  %i.bz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.ca = getelementptr [4 x i8], ptr %i.n, i64 %i.an
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %vec.phi45 = phi <4 x i32> [ %i.bz, %vector.ph41 ], [ %i.cd, %vector.body43 ]
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph41 ], [ %i.ce, %vector.body43 ]
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %index44 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load47 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !97
  %wide.load48 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !97
  %i.cd = add <4 x i32> %wide.load47, %vec.phi45  ; 2 uses
  %i.ce = add <4 x i32> %wide.load48, %vec.phi46  ; 2 uses
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.cf, label %middle.block50, label %vector.body43, !llvm.loop !2332

middle.block50:                                   ; preds = %vector.body43
  %bin.rdx51 = add <4 x i32> %i.ce, %i.cd
  %i.cg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx51) ; 2 uses
  %cmp.n52 = icmp eq i64 %i.bx, %n.vec42
  br i1 %cmp.n52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader74

.lr.ph89.i.i.i.i.preheader74:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block50
  %.05588.i.i.i.i.ph = phi i64 [ %i.an, %.lr.ph89.i.i.i.i.preheader ], [ %i.by, %middle.block50 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cg, %middle.block50 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader79, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ck, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader79 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cj, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader79 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.05683.i.i.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !97
  %i.cj = add nsw i32 %i.ci, %.07582.i.i.i.i      ; 2 uses
  %i.ck = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ck, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !2333

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader74, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.co, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cn, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ]
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05588.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !97
  %i.cn = add nsw i32 %i.cm, %.187.i.i.i.i        ; 2 uses
  %i.co = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.z
  br i1 %i.cp, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !2334

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cq = load i32, ptr %i.n, align 4, !tbaa !97  ; 3 uses
  %i.cr = icmp sgt i64 %i.z, 1
  br i1 %i.cr, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.l
  %i.cs = add nsw i64 %i.z, -1                    ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.z, 9
  br i1 %min.iters.check56, label %.lr.ph94.i.i.i.i.preheader71, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec58 = and i64 %i.cs, -8                    ; 3 uses
  %i.ct = or disjoint i64 %n.vec58, 1
  %i.cu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cq, i64 0
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %vec.phi61 = phi <4 x i32> [ %i.cu, %vector.ph57 ], [ %i.cy, %vector.body59 ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.cz, %vector.body59 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index60 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %wide.load63 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !97
  %wide.load64 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !97
  %i.cy = add <4 x i32> %wide.load63, %vec.phi61  ; 2 uses
  %i.cz = add <4 x i32> %wide.load64, %vec.phi62  ; 2 uses
  %index.next65 = add nuw i64 %index60, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.da, label %middle.block66, label %vector.body59, !llvm.loop !2335

middle.block66:                                   ; preds = %vector.body59
  %bin.rdx67 = add <4 x i32> %i.cz, %i.cy
  %i.db = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx67) ; 2 uses
  %cmp.n68 = icmp eq i64 %i.cs, %n.vec58
  br i1 %cmp.n68, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader71

.lr.ph94.i.i.i.i.preheader71:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block66
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ct, %middle.block66 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cq, %.lr.ph94.i.i.i.i.preheader ], [ %i.db, %middle.block66 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader71, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.df, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader71 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader71 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.092.i.i.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !97
  %i.de = add nsw i32 %i.dd, %.291.i.i.i.i        ; 2 uses
  %i.df = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.df, %i.z
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !2336

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block50, %middle.block66, %bb.l, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cq, %bb.l ], [ %i.db, %middle.block66 ], [ %i.cg, %middle.block50 ], [ %i.cn, %.lr.ph89.i.i.i.i ]
  %i.dg = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.d, %bb.e, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.x, %bb.d ], [ %i.dg, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.e ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i64 %.0.i, ptr %i.dh, align 8, !tbaa !389
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.59", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %3, align 8, !tbaa !393
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !757
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.b, align 8, !tbaa !396
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.a, align 8, !tbaa !109
  %i.c = load ptr, ptr %0, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret i1 %i.f

bb.e:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12solvePatternERNS_17SparseBlockMatrixINS2_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISB_EERKNS5_IS3_EE:_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
bb.a:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i1 %i.h

bb.d:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i6, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE16solveBlocks_implERKNS_17SparseBlockMatrixIS3_EESt8functionIFvRNS_26MarginalCovarianceCholeskyEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef align 8 %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.g2o::MarginalCovarianceCholesky", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN3g2o26MarginalCovarianceCholeskyC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !399
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !362
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !400
  invoke void @_ZN3g2o26MarginalCovarianceCholesky17setCholeskyFactorEiPiS1_PdS1_(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #41
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !396
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit unwind label %bb.p, !inline_history !9

_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit: ; preds = %bb.e
  %i.r = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !383 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !363  ; 13 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !362  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !356
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !97
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !97
  %i.ab = sub nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !356 ; 11 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.ah = and i64 %i.ag, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr exact i64 %i.ag, 2
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = and i64 %i.aj, 3
  %i.al = call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.ae)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.j ], [ %i.ae, %bb.i ] ; 12 uses
  %i.am = sub nsw i64 %i.ae, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.an = sdiv i64 %i.am, 8
  %i.ao = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.ap = sdiv i64 %i.am, 4
  %i.aq = shl nsw i64 %i.ap, 2                    ; 3 uses
  %i.ar = add nsw i64 %i.ao, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.as = add nsw i64 %i.aq, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.am, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.at = getelementptr [4 x i8], ptr %i.t, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.au = load <2 x i64>, ptr %i.at, align 1, !tbaa !87 ; 2 uses
  %i.av = icmp sgt i64 %i.am, 7
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = load <4 x i32>, ptr %i.aw, align 1, !tbaa !87 ; 2 uses
  %i.ay = bitcast <2 x i64> %i.au to <4 x i32>    ; 2 uses
  %i.az = icmp samesign ugt i64 %i.am, 15
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ax, %bb.l ], [ %i.bk, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ay, %bb.l ], [ %i.bg, %.lr.ph.i.i.i.i ]
  %i.ba = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bc = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bc, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i ]
  %i.bd = phi <4 x i32> [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i.i ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05780.i.i.i.i
  %i.bf = load <4 x i32>, ptr %i.be, align 1, !tbaa !87
  %i.bg = add <4 x i32> %i.bf, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.t, i64 %.057.in79.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %i.bj = load <4 x i32>, ptr %i.bi, align 1, !tbaa !87
  %i.bk = add <4 x i32> %i.bj, %i.bd              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bl = icmp slt i64 %.057.i.i.i.i, %i.ar
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ar
  %i.bn = load <4 x i32>, ptr %i.bm, align 1, !tbaa !87
  %i.bo = add <4 x i32> %i.bn, %i.ba
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i, %bb.k
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.au, %bb.k ], [ %i.bp, %bb.m ], [ %i.bb, %._crit_edge.i.i.i.i ]
  %i.bq = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.br = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bq, <4 x i32> %i.bq) ; 2 uses
  %i.bs = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.br, <4 x i32> %i.br) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bs, i64 0 ; 2 uses
  %i.bt = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.n
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %4 = shufflevector <4 x i32> %i.bs, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %4, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !97
  %wide.load61 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !97
  %i.bw = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bx = add <4 x i32> %wide.load61, %vec.phi60  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !2337

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bx, %i.bw
  %i.bz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader102

.lr.ph85.i.i.i.i.preheader102:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.n
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.n ], [ %i.bz, %middle.block ], [ %i.co, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ca = icmp slt i64 %i.as, %i.ae
  br i1 %i.ca, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.cb = add i64 %.0.i.i.i.i.i.i.i.i, %i.aq
  %i.cc = sub i64 %i.ae, %i.cb                    ; 3 uses
  %min.iters.check63 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check63, label %.lr.ph89.i.i.i.i.preheader97, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec65 = and i64 %i.cc, -8                    ; 3 uses
  %i.cd = add i64 %i.as, %n.vec65
  %i.ce = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.cf = getelementptr [4 x i8], ptr %i.t, i64 %i.as
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.ce, %vector.ph64 ], [ %i.ci, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph64 ], [ %i.cj, %vector.body66 ]
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %index67 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load70 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !97
  %wide.load71 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !97
  %i.ci = add <4 x i32> %wide.load70, %vec.phi68  ; 2 uses
  %i.cj = add <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ck, label %middle.block73, label %vector.body66, !llvm.loop !2338

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = add <4 x i32> %i.cj, %i.ci
  %i.cl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.cc, %n.vec65
  br i1 %cmp.n75, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader97

.lr.ph89.i.i.i.i.preheader97:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block73
  %.05588.i.i.i.i.ph = phi i64 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.cd, %middle.block73 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cl, %middle.block73 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader102, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cp, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader102 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.co, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader102 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05683.i.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !97
  %i.co = add nsw i32 %i.cn, %.07582.i.i.i.i      ; 2 uses
  %i.cp = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cp, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !2339

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader97, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ct, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cs, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ]
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05588.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !97
  %i.cs = add nsw i32 %i.cr, %.187.i.i.i.i        ; 2 uses
  %i.ct = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.ae
  br i1 %i.cu, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !2340

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !97  ; 3 uses
  %i.cw = icmp sgt i64 %i.ae, 1
  br i1 %i.cw, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.o
  %i.cx = add nsw i64 %i.ae, -1                   ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.ae, 9
  br i1 %min.iters.check79, label %.lr.ph94.i.i.i.i.preheader94, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec81 = and i64 %i.cx, -8                    ; 3 uses
  %i.cy = or disjoint i64 %n.vec81, 1
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cv, i64 0
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %vec.phi84 = phi <4 x i32> [ %i.cz, %vector.ph80 ], [ %i.dd, %vector.body82 ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph80 ], [ %i.de, %vector.body82 ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index83 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %wide.load86 = load <4 x i32>, ptr %i.db, align 4, !tbaa !97
  %wide.load87 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !97
  %i.dd = add <4 x i32> %wide.load86, %vec.phi84  ; 2 uses
  %i.de = add <4 x i32> %wide.load87, %vec.phi85  ; 2 uses
  %index.next88 = add nuw i64 %index83, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.df, label %middle.block89, label %vector.body82, !llvm.loop !2341

middle.block89:                                   ; preds = %vector.body82
  %bin.rdx90 = add <4 x i32> %i.de, %i.dd
  %i.dg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx90) ; 2 uses
  %cmp.n91 = icmp eq i64 %i.cx, %n.vec81
  br i1 %cmp.n91, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader94

.lr.ph94.i.i.i.i.preheader94:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block89
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cy, %middle.block89 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i.preheader ], [ %i.dg, %middle.block89 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader94, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.dk, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader94 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader94 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.092.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !97
  %i.dj = add nsw i32 %i.di, %.291.i.i.i.i        ; 2 uses
  %i.dk = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.dk, %i.ae
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !2342

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block73, %middle.block89, %bb.o, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cv, %bb.o ], [ %i.dg, %middle.block89 ], [ %i.cl, %middle.block73 ], [ %i.cs, %.lr.ph89.i.i.i.i ]
  %i.dl = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, %bb.h, %bb.g
  %.0.i = phi i64 [ %i.ac, %bb.g ], [ %i.dl, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.h ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i64 %.0.i, ptr %i.dm, align 8, !tbaa !389
  br label %bb.q

bb.p:                                             ; preds = %bb.b, %bb.e, %bb.d
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  resume { ptr, i32 } %i.dn

bb.q:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEEE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !744  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !750  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !751  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !754 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !755
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
end_hunk_9
begin_hunk_10_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !843
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #39, !inline_history !2587
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !838
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !844
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #39, !inline_history !2587
  br label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev.exit.i

_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 40) #39, !inline_history !2587
  br label %_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev.exit

_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE4initEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.a, align 1, !tbaa !835
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.Eigen::Map", align 8        ; 5 uses
  %5 = alloca %"class.Eigen::Map.88", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !356  ; 2 uses
  store ptr %2, ptr %4, align 8, !tbaa !378
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %3, ptr %5, align 8, !tbaa !381
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !379
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  %i.h = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !383 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.j = load double, ptr %i.a, align 8, !tbaa !384
  %i.k = fsub double %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store double %i.k, ptr %i.l, align 8, !tbaa !386
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !363  ; 13 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !362  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !356
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97
  %i.v = load i32, ptr %i.q, align 4, !tbaa !97
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = sext i32 %i.w to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !356  ; 11 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ac = and i64 %i.ab, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ad = lshr exact i64 %i.ab, 2
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = and i64 %i.ae, 3
  %i.ag = call i64 @llvm.smin.i64(i64 %i.af, i64 %i.z)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.z, %bb.f ] ; 12 uses
  %i.ah = sub nsw i64 %i.z, %.0.i.i.i.i.i.i.i.i   ; 5 uses
  %i.ai = sdiv i64 %i.ah, 8
  %i.aj = shl nsw i64 %i.ai, 3                    ; 2 uses
  %i.ak = sdiv i64 %i.ah, 4
  %i.al = shl nsw i64 %i.ak, 2                    ; 3 uses
  %i.am = add nsw i64 %i.aj, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.an = add nsw i64 %i.al, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ah, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ao = getelementptr [4 x i8], ptr %i.n, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !87 ; 2 uses
  %i.aq = icmp sgt i64 %i.ah, 7
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !87 ; 2 uses
  %i.at = bitcast <2 x i64> %i.ap to <4 x i32>    ; 2 uses
  %i.au = icmp samesign ugt i64 %i.ah, 15
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.i
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.as, %bb.i ], [ %i.bf, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.at, %bb.i ], [ %i.bb, %.lr.ph.i.i.i.i ]
  %i.av = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.aw = bitcast <4 x i32> %i.av to <2 x i64>
  %i.ax = icmp sgt i64 %i.al, %i.aj
  br i1 %i.ax, label %bb.j, label %bb.k

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i ]
  %i.ay = phi <4 x i32> [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i ]
  %i.az = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05780.i.i.i.i
  %i.ba = load <4 x i32>, ptr %i.az, align 1, !tbaa !87
  %i.bb = add <4 x i32> %i.ba, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.n, i64 %.057.in79.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load <4 x i32>, ptr %i.bd, align 1, !tbaa !87
  %i.bf = add <4 x i32> %i.be, %i.ay              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bg = icmp slt i64 %.057.i.i.i.i, %i.am
  br i1 %i.bg, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.am
  %i.bi = load <4 x i32>, ptr %i.bh, align 1, !tbaa !87
  %i.bj = add <4 x i32> %i.bi, %i.av
  %i.bk = bitcast <4 x i32> %i.bj to <2 x i64>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i, %bb.h
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ap, %bb.h ], [ %i.bk, %bb.j ], [ %i.aw, %._crit_edge.i.i.i.i ]
  %i.bl = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bm = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bl, <4 x i32> %i.bl) ; 2 uses
  %i.bn = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bm, <4 x i32> %i.bm) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bn, i64 0 ; 2 uses
  %i.bo = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %6 = shufflevector <4 x i32> %i.bn, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %6, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !97
  %wide.load38 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !97
  %i.br = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bs = add <4 x i32> %wide.load38, %vec.phi37  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !2588

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bs, %i.br
  %i.bu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader79

.lr.ph85.i.i.i.i.preheader79:                     ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.k
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.k ], [ %i.bu, %middle.block ], [ %i.cj, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bv = icmp slt i64 %i.an, %i.z
  br i1 %i.bv, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bw = add i64 %.0.i.i.i.i.i.i.i.i, %i.al
  %i.bx = sub i64 %i.z, %i.bw                     ; 3 uses
  %min.iters.check40 = icmp ult i64 %i.bx, 8
  br i1 %min.iters.check40, label %.lr.ph89.i.i.i.i.preheader74, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec42 = and i64 %i.bx, -8                    ; 3 uses
  %i.by = add i64 %i.an, %n.vec42
  %i.bz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.ca = getelementptr [4 x i8], ptr %i.n, i64 %i.an
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %vec.phi45 = phi <4 x i32> [ %i.bz, %vector.ph41 ], [ %i.cd, %vector.body43 ]
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph41 ], [ %i.ce, %vector.body43 ]
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %index44 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load47 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !97
  %wide.load48 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !97
  %i.cd = add <4 x i32> %wide.load47, %vec.phi45  ; 2 uses
  %i.ce = add <4 x i32> %wide.load48, %vec.phi46  ; 2 uses
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.cf, label %middle.block50, label %vector.body43, !llvm.loop !2589

middle.block50:                                   ; preds = %vector.body43
  %bin.rdx51 = add <4 x i32> %i.ce, %i.cd
  %i.cg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx51) ; 2 uses
  %cmp.n52 = icmp eq i64 %i.bx, %n.vec42
  br i1 %cmp.n52, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader74

.lr.ph89.i.i.i.i.preheader74:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block50
  %.05588.i.i.i.i.ph = phi i64 [ %i.an, %.lr.ph89.i.i.i.i.preheader ], [ %i.by, %middle.block50 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cg, %middle.block50 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader79, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ck, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader79 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cj, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader79 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.05683.i.i.i.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !97
  %i.cj = add nsw i32 %i.ci, %.07582.i.i.i.i      ; 2 uses
  %i.ck = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ck, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !2590

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader74, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.co, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cn, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ]
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05588.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !97
  %i.cn = add nsw i32 %i.cm, %.187.i.i.i.i        ; 2 uses
  %i.co = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.z
  br i1 %i.cp, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !2591

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cq = load i32, ptr %i.n, align 4, !tbaa !97  ; 3 uses
  %i.cr = icmp sgt i64 %i.z, 1
  br i1 %i.cr, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.l
  %i.cs = add nsw i64 %i.z, -1                    ; 2 uses
  %min.iters.check56 = icmp ult i64 %i.z, 9
  br i1 %min.iters.check56, label %.lr.ph94.i.i.i.i.preheader71, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec58 = and i64 %i.cs, -8                    ; 3 uses
  %i.ct = or disjoint i64 %n.vec58, 1
  %i.cu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cq, i64 0
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %vec.phi61 = phi <4 x i32> [ %i.cu, %vector.ph57 ], [ %i.cy, %vector.body59 ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.cz, %vector.body59 ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index60 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  %wide.load63 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !97
  %wide.load64 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !97
  %i.cy = add <4 x i32> %wide.load63, %vec.phi61  ; 2 uses
  %i.cz = add <4 x i32> %wide.load64, %vec.phi62  ; 2 uses
  %index.next65 = add nuw i64 %index60, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.da, label %middle.block66, label %vector.body59, !llvm.loop !2592

middle.block66:                                   ; preds = %vector.body59
  %bin.rdx67 = add <4 x i32> %i.cz, %i.cy
  %i.db = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx67) ; 2 uses
  %cmp.n68 = icmp eq i64 %i.cs, %n.vec58
  br i1 %cmp.n68, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader71

.lr.ph94.i.i.i.i.preheader71:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block66
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ct, %middle.block66 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cq, %.lr.ph94.i.i.i.i.preheader ], [ %i.db, %middle.block66 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader71, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.df, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader71 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader71 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.092.i.i.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !97
  %i.de = add nsw i32 %i.dd, %.291.i.i.i.i        ; 2 uses
  %i.df = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.df, %i.z
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !2593

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block50, %middle.block66, %bb.l, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cq, %bb.l ], [ %i.db, %middle.block66 ], [ %i.cg, %middle.block50 ], [ %i.cn, %.lr.ph89.i.i.i.i ]
  %i.dg = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.d, %bb.e, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.x, %bb.d ], [ %i.dg, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.e ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i64 %.0.i, ptr %i.dh, align 8, !tbaa !389
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.59", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %3, align 8, !tbaa !393
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !845
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.b, align 8, !tbaa !396
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.a, align 8, !tbaa !109
  %i.c = load ptr, ptr %0, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret i1 %i.f

bb.e:                                             ; preds = %bb.a
end_hunk_10
begin_hunk_11_@_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE12solvePatternERNS_17SparseBlockMatrixINS2_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISB_EERKNS5_IS3_EE:_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
bb.a:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i1 %i.h

bb.d:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i6, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE16solveBlocks_implERKNS_17SparseBlockMatrixIS3_EESt8functionIFvRNS_26MarginalCovarianceCholeskyEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef align 8 %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.g2o::MarginalCovarianceCholesky", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @_ZN3g2o26MarginalCovarianceCholeskyC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !399
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !362
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !364
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !400
  invoke void @_ZN3g2o26MarginalCovarianceCholesky17setCholeskyFactorEiPiS1_PdS1_(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #41
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !396
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit unwind label %bb.p, !inline_history !9

_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit: ; preds = %bb.e
  %i.r = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !383 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !363  ; 13 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !362  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !356
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !97
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !97
  %i.ab = sub nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !356 ; 11 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.ah = and i64 %i.ag, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = lshr exact i64 %i.ag, 2
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = and i64 %i.aj, 3
  %i.al = call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.ae)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.al, %bb.j ], [ %i.ae, %bb.i ] ; 12 uses
  %i.am = sub nsw i64 %i.ae, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.an = sdiv i64 %i.am, 8
  %i.ao = shl nsw i64 %i.an, 3                    ; 2 uses
  %i.ap = sdiv i64 %i.am, 4
  %i.aq = shl nsw i64 %i.ap, 2                    ; 3 uses
  %i.ar = add nsw i64 %i.ao, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.as = add nsw i64 %i.aq, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.am, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.at = getelementptr [4 x i8], ptr %i.t, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.au = load <2 x i64>, ptr %i.at, align 1, !tbaa !87 ; 2 uses
  %i.av = icmp sgt i64 %i.am, 7
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = load <4 x i32>, ptr %i.aw, align 1, !tbaa !87 ; 2 uses
  %i.ay = bitcast <2 x i64> %i.au to <4 x i32>    ; 2 uses
  %i.az = icmp samesign ugt i64 %i.am, 15
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ax, %bb.l ], [ %i.bk, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ay, %bb.l ], [ %i.bg, %.lr.ph.i.i.i.i ]
  %i.ba = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bc = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bc, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i ]
  %i.bd = phi <4 x i32> [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i.i ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05780.i.i.i.i
  %i.bf = load <4 x i32>, ptr %i.be, align 1, !tbaa !87
  %i.bg = add <4 x i32> %i.bf, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.t, i64 %.057.in79.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %i.bj = load <4 x i32>, ptr %i.bi, align 1, !tbaa !87
  %i.bk = add <4 x i32> %i.bj, %i.bd              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bl = icmp slt i64 %.057.i.i.i.i, %i.ar
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !8

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ar
  %i.bn = load <4 x i32>, ptr %i.bm, align 1, !tbaa !87
  %i.bo = add <4 x i32> %i.bn, %i.ba
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i, %bb.k
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.au, %bb.k ], [ %i.bp, %bb.m ], [ %i.bb, %._crit_edge.i.i.i.i ]
  %i.bq = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.br = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bq, <4 x i32> %i.bq) ; 2 uses
  %i.bs = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.br, <4 x i32> %i.br) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bs, i64 0 ; 2 uses
  %i.bt = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.n
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %4 = shufflevector <4 x i32> %i.bs, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %4, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !97
  %wide.load61 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !97
  %i.bw = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bx = add <4 x i32> %wide.load61, %vec.phi60  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !2594

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bx, %i.bw
  %i.bz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader102

.lr.ph85.i.i.i.i.preheader102:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.n
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.n ], [ %i.bz, %middle.block ], [ %i.co, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ca = icmp slt i64 %i.as, %i.ae
  br i1 %i.ca, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.cb = add i64 %.0.i.i.i.i.i.i.i.i, %i.aq
  %i.cc = sub i64 %i.ae, %i.cb                    ; 3 uses
  %min.iters.check63 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check63, label %.lr.ph89.i.i.i.i.preheader97, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec65 = and i64 %i.cc, -8                    ; 3 uses
  %i.cd = add i64 %i.as, %n.vec65
  %i.ce = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.cf = getelementptr [4 x i8], ptr %i.t, i64 %i.as
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <4 x i32> [ %i.ce, %vector.ph64 ], [ %i.ci, %vector.body66 ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph64 ], [ %i.cj, %vector.body66 ]
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %index67 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load70 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !97
  %wide.load71 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !97
  %i.ci = add <4 x i32> %wide.load70, %vec.phi68  ; 2 uses
  %i.cj = add <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ck, label %middle.block73, label %vector.body66, !llvm.loop !2595

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = add <4 x i32> %i.cj, %i.ci
  %i.cl = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %i.cc, %n.vec65
  br i1 %cmp.n75, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader97

.lr.ph89.i.i.i.i.preheader97:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block73
  %.05588.i.i.i.i.ph = phi i64 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.cd, %middle.block73 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.cl, %middle.block73 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader102, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cp, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader102 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.co, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader102 ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05683.i.i.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !97
  %i.co = add nsw i32 %i.cn, %.07582.i.i.i.i      ; 2 uses
  %i.cp = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cp, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !2596

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader97, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ct, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cs, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ]
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05588.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !97
  %i.cs = add nsw i32 %i.cr, %.187.i.i.i.i        ; 2 uses
  %i.ct = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.ae
  br i1 %i.cu, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !2597

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !97  ; 3 uses
  %i.cw = icmp sgt i64 %i.ae, 1
  br i1 %i.cw, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.o
  %i.cx = add nsw i64 %i.ae, -1                   ; 2 uses
  %min.iters.check79 = icmp ult i64 %i.ae, 9
  br i1 %min.iters.check79, label %.lr.ph94.i.i.i.i.preheader94, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec81 = and i64 %i.cx, -8                    ; 3 uses
  %i.cy = or disjoint i64 %n.vec81, 1
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cv, i64 0
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %vec.phi84 = phi <4 x i32> [ %i.cz, %vector.ph80 ], [ %i.dd, %vector.body82 ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph80 ], [ %i.de, %vector.body82 ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index83 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %wide.load86 = load <4 x i32>, ptr %i.db, align 4, !tbaa !97
  %wide.load87 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !97
  %i.dd = add <4 x i32> %wide.load86, %vec.phi84  ; 2 uses
  %i.de = add <4 x i32> %wide.load87, %vec.phi85  ; 2 uses
  %index.next88 = add nuw i64 %index83, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.df, label %middle.block89, label %vector.body82, !llvm.loop !2598

middle.block89:                                   ; preds = %vector.body82
  %bin.rdx90 = add <4 x i32> %i.de, %i.dd
  %i.dg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx90) ; 2 uses
  %cmp.n91 = icmp eq i64 %i.cx, %n.vec81
  br i1 %cmp.n91, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader94

.lr.ph94.i.i.i.i.preheader94:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block89
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cy, %middle.block89 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i.preheader ], [ %i.dg, %middle.block89 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader94, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.dk, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader94 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader94 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.092.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !97
  %i.dj = add nsw i32 %i.di, %.291.i.i.i.i        ; 2 uses
  %i.dk = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.dk, %i.ae
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !2599

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block73, %middle.block89, %bb.o, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cv, %bb.o ], [ %i.dg, %middle.block89 ], [ %i.cl, %middle.block73 ], [ %i.cs, %.lr.ph89.i.i.i.i ]
  %i.dl = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, %bb.h, %bb.g
  %.0.i = phi i64 [ %i.ac, %bb.g ], [ %i.dl, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.h ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i64 %.0.i, ptr %i.dm, align 8, !tbaa !389
  br label %bb.q

bb.p:                                             ; preds = %bb.b, %bb.e, %bb.d
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  resume { ptr, i32 } %i.dn

bb.q:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEE, i64 16), ptr %0, align 8, !tbaa !96
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !832  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !838  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !839  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !842 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !843
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
end_hunk_11
