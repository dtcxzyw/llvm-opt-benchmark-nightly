Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/slam2d_linear?download=true
inline.NumInlined: 7562
inline.NumDeleted: 4021
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEC2Ev:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i8 0, i64 56, i1 false)
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 noundef 0, i64 noundef 0)
          to label %bb.c unwind label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #35
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.e) #35
  br label %.body

bb.c:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, i8 0, i64 88, i1 false)
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !153
  ret void

.body:                                            ; preds = %bb.b, %.body.i.i.i
  %.pn = phi { ptr, i32 } [ %i.q, %.body.i.i.i ], [ %i.h, %bb.b ]
  tail call void @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) #35
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.b) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155
  tail call void @free(ptr noundef %i.d) #35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #36
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEE, i64 16), ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.c) #35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155
  tail call void @free(ptr noundef %i.e) #35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !156  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !157  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.c, %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEE, i64 16), ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126  ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !160  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !165
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #36, !inline_history !405
  br label %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !160
  br label %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.e
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.p, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !167
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #36, !inline_history !405
  br label %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit.i

_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8RowBlockESaIS7_EES9_EvT_SB_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 40) #36, !inline_history !405
  br label %_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit

_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, %_ZN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %0) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4initEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.a, align 1, !tbaa !146
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.Eigen::Map", align 8        ; 5 uses
  %5 = alloca %"class.Eigen::Map.71", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  store ptr %2, ptr %4, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !172
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %3, ptr %5, align 8, !tbaa !413
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.f, align 8, !tbaa !172
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  %i.h = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !174 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.j = load double, ptr %i.a, align 8, !tbaa !175
  %i.k = fsub double %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store double %i.k, ptr %i.l, align 8, !tbaa !414
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !155  ; 13 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !148
  %i.t = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48
  %i.v = load i32, ptr %i.q, align 4, !tbaa !48
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = sext i32 %i.w to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !148  ; 11 uses
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
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !38 ; 2 uses
  %i.aq = icmp sgt i64 %i.ah, 7
  br i1 %i.aq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !38 ; 2 uses
  %i.at = bitcast <2 x i64> %i.ap to <4 x i32>    ; 2 uses
  %i.au = icmp samesign ugt i64 %i.ah, 15
  br i1 %i.au, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.i
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.as, %bb.i ], [ %i.be, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.at, %bb.i ], [ %i.bb, %.lr.ph.i.i.i.i ]
  %i.av = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.aw = bitcast <4 x i32> %i.av to <2 x i64>
  %i.ax = icmp sgt i64 %i.al, %i.aj
  br i1 %i.ax, label %bb.j, label %bb.k

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i ]
  %i.ay = phi <4 x i32> [ %i.be, %.lr.ph.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i ]
  %i.az = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05780.i.i.i.i
  %i.ba = load <4 x i32>, ptr %i.az, align 1, !tbaa !38
  %i.bb = add <4 x i32> %i.ba, %.sroa.067.078.i.i.i.i ; 2 uses
  %6 = getelementptr [4 x i8], ptr %i.n, i64 %.057.in79.i.i.i.i
  %i.bc = getelementptr i8, ptr %6, i64 48
  %i.bd = load <4 x i32>, ptr %i.bc, align 1, !tbaa !38
  %i.be = add <4 x i32> %i.bd, %i.ay              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bf = icmp slt i64 %.057.i.i.i.i, %i.am
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.am
  %i.bh = load <4 x i32>, ptr %i.bg, align 1, !tbaa !38
  %i.bi = add <4 x i32> %i.bh, %i.av
  %i.bj = bitcast <4 x i32> %i.bi to <2 x i64>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i, %bb.h
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ap, %bb.h ], [ %i.bj, %bb.j ], [ %i.aw, %._crit_edge.i.i.i.i ]
  %i.bk = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bl = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bk, <4 x i32> %i.bk) ; 2 uses
  %i.bm = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bl, <4 x i32> %i.bl) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bm, i64 0 ; 2 uses
  %i.bn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bn, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bo = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.bm, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bo, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !48
  %wide.load38 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !48
  %i.br = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bs = add <4 x i32> %wide.load38, %vec.phi37  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !406

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
  %wide.load47 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !48
  %wide.load48 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !48
  %i.cd = add <4 x i32> %wide.load47, %vec.phi45  ; 2 uses
  %i.ce = add <4 x i32> %wide.load48, %vec.phi46  ; 2 uses
  %index.next49 = add nuw i64 %index44, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.cf, label %middle.block50, label %vector.body43, !llvm.loop !407

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
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !48
  %i.cj = add nsw i32 %i.ci, %.07582.i.i.i.i      ; 2 uses
  %i.ck = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ck, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !408

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader74, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.co, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cn, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader74 ]
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %.05588.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cn = add nsw i32 %i.cm, %.187.i.i.i.i        ; 2 uses
  %i.co = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.z
  br i1 %i.cp, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !409

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cq = load i32, ptr %i.n, align 4, !tbaa !48  ; 3 uses
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
  %wide.load63 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !48
  %wide.load64 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !48
  %i.cy = add <4 x i32> %wide.load63, %vec.phi61  ; 2 uses
  %i.cz = add <4 x i32> %wide.load64, %vec.phi62  ; 2 uses
  %index.next65 = add nuw i64 %index60, 8         ; 2 uses
  %i.da = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.da, label %middle.block66, label %vector.body59, !llvm.loop !410

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
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.de = add nsw i32 %i.dd, %.291.i.i.i.i        ; 2 uses
  %i.df = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.df, %i.z
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !411

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block50, %middle.block66, %bb.l, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.de, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cq, %bb.l ], [ %i.db, %middle.block66 ], [ %i.cg, %middle.block50 ], [ %i.cn, %.lr.ph89.i.i.i.i ]
  %i.dg = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %bb.d, %bb.e, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i
  %.0.i = phi i64 [ %i.x, %bb.d ], [ %i.dg, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.e ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i64 %.0.i, ptr %i.dh, align 8, !tbaa !179
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %3, align 8, !tbaa !183
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !184
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.b, align 8, !tbaa !187
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11solveBlocksERPPdRKNS0_17SparseBlockMatrixIS7_EEEUlS2_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.a, align 8, !tbaa !188
  %i.c = load ptr, ptr %0, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef nonnull align 8 %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  ret i1 %i.f

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %.not.i5 = icmp eq ptr %i.l, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit6:                  ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS_17SparseBlockMatrixINS2_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISB_EERKNS5_IS3_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(73) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit:
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %1, ptr %i.c, align 16, !tbaa !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !184
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !192
  store ptr %i.c, ptr %4, align 8, !tbaa !193
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS0_17SparseBlockMatrixINS6_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISF_EERKNS9_IS7_EEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.d, align 8, !tbaa !187
  store ptr @_ZNSt17_Function_handlerIFvRN3g2o26MarginalCovarianceCholeskyEEZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS0_17SparseBlockMatrixINS6_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISF_EERKNS9_IS7_EEEUlS2_E_E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation, ptr %i.a, align 8, !tbaa !188
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef nonnull align 8 %4)
          to label %bb.a unwind label %bb.d

common.resume:                                    ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.m

bb.a:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret i1 %i.h

bb.d:                                             ; preds = %_ZNSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEC2IRZNS0_15LinearSolverCCSIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12solvePatternERNS0_17SparseBlockMatrixINS8_IdLin1ELin1ELi0ELin1ELin1EEEEERKSt6vectorISt4pairIiiESaISH_EERKNSB_IS9_EEEUlS2_E_vEEOT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %.not.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i6, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE16solveBlocks_implERKNS_17SparseBlockMatrixIS3_EESt8functionIFvRNS_26MarginalCovarianceCholeskyEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef align 8 %2) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.g2o::MarginalCovarianceCholesky", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.b = call noundef zeroext i1 @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15computeCholeskyERKNS_17SparseBlockMatrixIS3_EERd(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN3g2o26MarginalCovarianceCholeskyC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !194
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !195
  invoke void @_ZN3g2o26MarginalCovarianceCholesky17setCholeskyFactorEiPiS1_PdS1_(ptr noundef nonnull align 8 dereferenceable(120) %3, i32 noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #39
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !187
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit unwind label %bb.q, !inline_history !415

_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit: ; preds = %bb.e
  %i.r = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !174 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !155  ; 13 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !148
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !48
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !48
  %i.ab = sub nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !148 ; 11 uses
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
  %i.au = load <2 x i64>, ptr %i.at, align 1, !tbaa !38 ; 2 uses
  %i.av = icmp sgt i64 %i.am, 7
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.at, i64 16
  %i.ax = load <4 x i32>, ptr %i.aw, align 1, !tbaa !38 ; 2 uses
  %i.ay = bitcast <2 x i64> %i.au to <4 x i32>    ; 2 uses
  %i.az = icmp samesign ugt i64 %i.am, 15
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ax, %bb.l ], [ %i.bj, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ay, %bb.l ], [ %i.bg, %.lr.ph.i.i.i.i ]
  %i.ba = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bc = icmp sgt i64 %i.aq, %i.ao
  br i1 %i.bc, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i ]
  %i.bd = phi <4 x i32> [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i.i ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05780.i.i.i.i
  %i.bf = load <4 x i32>, ptr %i.be, align 1, !tbaa !38
  %i.bg = add <4 x i32> %i.bf, %.sroa.067.078.i.i.i.i ; 2 uses
  %4 = getelementptr [4 x i8], ptr %i.t, i64 %.057.in79.i.i.i.i
  %i.bh = getelementptr i8, ptr %4, i64 48
  %i.bi = load <4 x i32>, ptr %i.bh, align 1, !tbaa !38
  %i.bj = add <4 x i32> %i.bi, %i.bd              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bk = icmp slt i64 %.057.i.i.i.i, %i.ar
  br i1 %i.bk, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ar
  %i.bm = load <4 x i32>, ptr %i.bl, align 1, !tbaa !38
  %i.bn = add <4 x i32> %i.bm, %i.ba
  %i.bo = bitcast <4 x i32> %i.bn to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i, %bb.k
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.au, %bb.k ], [ %i.bo, %bb.m ], [ %i.bb, %._crit_edge.i.i.i.i ]
  %i.bp = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bq = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bp, <4 x i32> %i.bp) ; 2 uses
  %i.br = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bq, <4 x i32> %i.bq) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.br, i64 0 ; 2 uses
  %i.bs = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.n
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bt = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.br, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bt, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !48
  %wide.load61 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !48
  %i.bw = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bx = add <4 x i32> %wide.load61, %vec.phi60  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !416

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
  %wide.load70 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !48
  %wide.load71 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !48
  %i.ci = add <4 x i32> %wide.load70, %vec.phi68  ; 2 uses
  %i.cj = add <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ck, label %middle.block73, label %vector.body66, !llvm.loop !417

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
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !48
  %i.co = add nsw i32 %i.cn, %.07582.i.i.i.i      ; 2 uses
  %i.cp = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cp, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !418

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader97, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ct, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cs, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader97 ]
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.05588.i.i.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !48
  %i.cs = add nsw i32 %i.cr, %.187.i.i.i.i        ; 2 uses
  %i.ct = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cu = icmp slt i64 %i.ct, %i.ae
  br i1 %i.cu, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !419

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cv = load i32, ptr %i.t, align 4, !tbaa !48  ; 3 uses
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
  %wide.load86 = load <4 x i32>, ptr %i.db, align 4, !tbaa !48
  %wide.load87 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !48
  %i.dd = add <4 x i32> %wide.load86, %vec.phi84  ; 2 uses
  %i.de = add <4 x i32> %wide.load87, %vec.phi85  ; 2 uses
  %index.next88 = add nuw i64 %index83, 8         ; 2 uses
  %i.df = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.df, label %middle.block89, label %vector.body82, !llvm.loop !420

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
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !48
  %i.dj = add nsw i32 %i.di, %.291.i.i.i.i        ; 2 uses
  %i.dk = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.dk, %i.ae
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !421

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block73, %middle.block89, %bb.o, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cv, %bb.o ], [ %i.dg, %middle.block89 ], [ %i.cl, %middle.block73 ], [ %i.cs, %.lr.ph89.i.i.i.i ]
  %i.dl = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, %bb.h, %bb.g
  %.0.i = phi i64 [ %i.ac, %bb.g ], [ %i.dl, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.h ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store i64 %.0.i, ptr %i.dm, align 8, !tbaa !179
  br label %bb.r

bb.p:                                             ; preds = %bb.b
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.e, %bb.d
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %_ZNKSt8functionIFvRN3g2o26MarginalCovarianceCholeskyEEEclES2_.exit
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.t

bb.s:                                             ; preds = %bb.p, %bb.q
  %.pn16 = phi { ptr, i32 } [ %i.dn, %bb.p ], [ %i.do, %bb.q ]
  call void @_ZN3g2o26MarginalCovarianceCholeskyD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  resume { ptr, i32 } %.pn16
end_hunk_0
begin_hunk_1_@_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE25analyzePattern_preorderedERKS3_b:bb.a
_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph82, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph82 ] ; 10 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store i32 -1, ptr %i.cg, align 4, !tbaa !48
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !48
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  store i32 0, ptr %i.cj, align 4, !tbaa !48
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !48
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48 ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = add nsw i64 %i.cp, %i.cm
  %i.cr = icmp sgt i32 %i.co, 0
  br i1 %i.cr, label %.lr.ph80, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count94
  br i1 %exitcond.not, label %._crit_edge83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !513

.lr.ph80:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.sroa.7.079 = phi i64 [ %i.dm, %.loopexit ], [ %i.cm, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %.sroa.7.079
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !48
  %i.cu = sext i32 %i.ct to i64                   ; 3 uses
  %i.cv = icmp sgt i64 %indvars.iv, %i.cu
  br i1 %i.cv, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.lr.ph80
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.cu ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !48
  %i.cy = zext i32 %i.cx to i64
  %.not78 = icmp eq i64 %indvars.iv, %i.cy
  br i1 %.not78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %i.cz = phi ptr [ %i.dj, %bb.m ], [ %i.cw, %.preheader ]
  %i.da = phi i64 [ %i.di, %bb.m ], [ %i.cu, %.preheader ] ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.da ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !48
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  store i32 %i.ci, ptr %i.db, align 4, !tbaa !48
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.de = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.da ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !48
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !48
  store i32 %i.ci, ptr %i.cz, align 4, !tbaa !48
  %i.dh = load i32, ptr %i.db, align 4, !tbaa !48
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !48
  %i.dl = zext i32 %i.dk to i64
  %.not = icmp eq i64 %indvars.iv, %i.dl
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !511

.loopexit:                                        ; preds = %bb.m, %.preheader, %.lr.ph80
  %i.dm = add nsw i64 %.sroa.7.079, 1             ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.cq
  br i1 %i.dn, label %.lr.ph80, label %._crit_edge, !llvm.loop !512

._crit_edge87.loopexit.unr-lcssa:                 ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.loopexit.unr-lcssa, %._crit_edge83
  %.epil.init = phi i32 [ 0, %._crit_edge83 ], [ %i.es, %._crit_edge87.loopexit.unr-lcssa ]
  %indvars.iv96.epil.init = phi i64 [ 0, %._crit_edge83 ], [ %indvars.iv.next97.3, %._crit_edge87.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %i.do = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.ds, %bb.n ]
  %indvars.iv96.epil = phi i64 [ %indvars.iv96.epil.init, %.epil.preheader ], [ %indvars.iv.next97.epil, %bb.n ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv96.epil
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !48
  %i.dr = add i32 %i.do, %i.cd
  %i.ds = add i32 %i.dr, %i.dq                    ; 2 uses
  %indvars.iv.next97.epil = add nuw nsw i64 %indvars.iv96.epil, 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97.epil
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !48
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge87, label %bb.n, !llvm.loop !514

._crit_edge87:                                    ; preds = %._crit_edge87.loopexit.unr-lcssa, %bb.n, %._crit_edge83.thread
  %i.du = phi ptr [ %i.ak, %._crit_edge83.thread ], [ %i.cb, %bb.n ], [ %i.cb, %._crit_edge87.loopexit.unr-lcssa ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.e
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !48
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 noundef %i.dx, double noundef 0.000000e+00)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit unwind label %bb.q

bb.o:                                             ; preds = %bb.o, %._crit_edge83.new
  %i.dz = phi i32 [ 0, %._crit_edge83.new ], [ %i.es, %bb.o ]
  %indvars.iv96 = phi i64 [ 0, %._crit_edge83.new ], [ %indvars.iv.next97.3, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %._crit_edge83.new ], [ %niter.next.3, %bb.o ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv96
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !48
  %i.ec = add i32 %i.dz, %i.cd
  %i.ed = add i32 %i.ec, %i.eb                    ; 2 uses
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !48
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next97
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !48
  %i.eh = add i32 %i.ed, %i.cd
  %i.ei = add i32 %i.eh, %i.eg                    ; 2 uses
  %indvars.iv.next97.1 = or disjoint i64 %indvars.iv96, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97.1
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !48
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next97.1
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !48
  %i.em = add i32 %i.ei, %i.cd
  %i.en = add i32 %i.em, %i.el                    ; 2 uses
  %indvars.iv.next97.2 = or disjoint i64 %indvars.iv96, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97.2
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !48
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next97.2
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !48
  %i.er = add i32 %i.en, %i.cd
  %i.es = add i32 %i.er, %i.eq                    ; 3 uses
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next97.3
  store i32 %i.es, ptr %i.et, align 4, !tbaa !48
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge87.loopexit.unr-lcssa, label %bb.o, !llvm.loop !515

_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit: ; preds = %._crit_edge87
  store i8 1, ptr %0, align 8, !tbaa !149
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.eu, align 4, !tbaa !150
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.ev, align 1, !tbaa !152
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ew, align 8, !tbaa !151
  br i1 %i.ah, label %bb.p, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit

bb.p:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit
  call void @free(ptr noundef nonnull %i.ag) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE14resizeNonZerosEl.exit, %bb.p
  ret void

bb.q:                                             ; preds = %._crit_edge87
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ah, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit70

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.ag) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit70

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit70: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %i.ex
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal24permute_symm_to_fullsymmILi2ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !194  ; 25 uses
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
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !47
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #39
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.a
  %.sroa.0126.2144 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ] ; 30 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.b, i64 noundef %i.b)
          to label %.preheader147 unwind label %bb.h

.preheader147:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.c, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %.preheader147
  %.not102 = icmp eq ptr %2, null                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br label %bb.i

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
  %i.s = load <2 x i64>, ptr %.sroa.0126.2144, align 16, !tbaa !38 ; 2 uses
  %i.t = icmp sgt i64 %i.b, 7
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0126.2144, i64 16
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !38 ; 2 uses
  %i.w = bitcast <2 x i64> %i.s to <4 x i32>      ; 2 uses
  %i.x = icmp samesign ugt i64 %i.b, 15
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.lcssa.i.i.i = phi <4 x i32> [ %i.v, %bb.d ], [ %i.ah, %.lr.ph.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i = phi <4 x i32> [ %i.w, %bb.d ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.y = add <4 x i32> %.sroa.064.0.lcssa.i.i.i, %.lcssa.i.i.i ; 2 uses
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = icmp sgt i64 %i.r, %i.p
  br i1 %i.aa, label %bb.e, label %bb.f

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05775.i.i.i = phi i64 [ %.057.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.d ] ; 3 uses
  %.057.in74.i.i.i = phi i64 [ %.05775.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %.sroa.064.073.i.i.i = phi <4 x i32> [ %i.ae, %.lr.ph.i.i.i ], [ %i.w, %bb.d ]
  %i.ab = phi <4 x i32> [ %i.ah, %.lr.ph.i.i.i ], [ %i.v, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.05775.i.i.i
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !38
  %i.ae = add <4 x i32> %i.ad, %.sroa.064.073.i.i.i ; 2 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.057.in74.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load <4 x i32>, ptr %i.af, align 16, !tbaa !38
  %i.ah = add <4 x i32> %i.ag, %i.ab              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.ai = icmp slt i64 %.057.i.i.i, %i.p
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !516

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %i.p
  %i.ak = load <4 x i32>, ptr %i.aj, align 16, !tbaa !38
  %i.al = add <4 x i32> %i.ak, %i.y
  %i.am = bitcast <4 x i32> %i.al to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i, %bb.c
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.am, %bb.e ], [ %i.z, %._crit_edge.i.i.i ]
  %i.an = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32> ; 2 uses
  %i.ao = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.an, <4 x i32> %i.an) ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.ao, <4 x i32> %i.ao) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <4 x i32> %i.ap, i64 0 ; 2 uses
  %i.aq = icmp slt i64 %i.r, %i.b
  br i1 %i.aq, label %.lr.ph80.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph80.i.i.i.preheader:                         ; preds = %bb.f
  %i.ar = sub i64 %i.b, %i.r                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.i.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.i.i.i.preheader
  %n.vec = and i64 %i.ar, -8                      ; 3 uses
  %i.as = add i64 %i.r, %n.vec
  %i.at = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.ap, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  %i.au = getelementptr [4 x i8], ptr %.sroa.0126.2144, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.at, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi215 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !48
  %wide.load216 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !48
  %i.ax = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ay = add <4 x i32> %wide.load216, %vec.phi215 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !517

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ay, %i.ax
  %i.ba = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i.preheader237

.lr.ph80.i.i.i.preheader237:                      ; preds = %.lr.ph80.i.i.i.preheader, %middle.block
  %.05578.i.i.i.ph = phi i64 [ %i.r, %.lr.ph80.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.177.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i, %.lr.ph80.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph80.i.i.i

.lr.ph80.i.i.i:                                   ; preds = %.lr.ph80.i.i.i.preheader237, %.lr.ph80.i.i.i
  %.05578.i.i.i = phi i64 [ %i.be, %.lr.ph80.i.i.i ], [ %.05578.i.i.i.ph, %.lr.ph80.i.i.i.preheader237 ] ; 2 uses
  %.177.i.i.i = phi i32 [ %i.bd, %.lr.ph80.i.i.i ], [ %.177.i.i.i.ph, %.lr.ph80.i.i.i.preheader237 ]
  %i.bb = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %.05578.i.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.bd = add nsw i32 %i.bc, %.177.i.i.i          ; 2 uses
  %i.be = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.be, %i.b
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !518

bb.g:                                             ; preds = %._crit_edge155.thread
  %i.bf = load i32, ptr %.sroa.0126.2144, align 4, !tbaa !48 ; 3 uses
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
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %index222 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %wide.load225 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !48
  %wide.load226 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !48
  %i.bn = add <4 x i32> %wide.load225, %vec.phi223 ; 2 uses
  %i.bo = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.bp, label %middle.block228, label %vector.body221, !llvm.loop !519

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
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.083.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !48
  %i.bt = add nsw i32 %i.bs, %.282.i.i.i          ; 2 uses
  %i.bu = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !520

bb.h:                                             ; preds = %.invoke, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.2144, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit ], [ null, %.invoke ]
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.i:                                             ; preds = %.lr.ph154, %._crit_edge
  %.080152 = phi i64 [ 0, %.lr.ph154 ], [ %i.da, %._crit_edge ] ; 10 uses
  br i1 %.not102, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.080152
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !48
  %i.by = sext i32 %i.bx to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bz = phi i64 [ %i.by, %bb.j ], [ %.080152, %bb.i ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.080152 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48
  %i.cc = sext i32 %i.cb to i64                   ; 4 uses
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !48
  %i.cf = sext i32 %i.ce to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.080152
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !48
  %i.ci = sext i32 %i.ch to i64
  %i.cj = add nsw i64 %i.ci, %i.cc
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi i64 [ %i.cf, %bb.l ], [ %i.cj, %bb.m ] ; 3 uses
  %i.ck = icmp sgt i64 %.sink.i, %i.cc
  br i1 %i.ck, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cl = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.bz ; 4 uses
  br i1 %.not102, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.080152 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.q
  %.sroa.9.0151.us = phi i64 [ %i.cz, %bb.q ], [ %i.cc, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151.us
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48
  %i.cp = sext i32 %i.co to i64                   ; 3 uses
  %i.cq = icmp eq i64 %.080152, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.cr = icmp sgt i64 %.080152, %i.cp
  br i1 %i.cr, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cp ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !48
  %i.cu = add nsw i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !48
  %i.cv = load i32, ptr %i.cl, align 4, !tbaa !48
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cl, align 4, !tbaa !48
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.cx = load i32, ptr %i.cm, align 4, !tbaa !48
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cm, align 4, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cz = add nsw i64 %.sroa.9.0151.us, 1         ; 2 uses
  %exitcond173.not = icmp eq i64 %i.cz, %.sink.i
  br i1 %exitcond173.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !521

end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_:bb.a
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.y = sext i32 %i.w to i64
  %i.z = sext i32 %i.u to i64                     ; 2 uses
  %i.aa = shl nsw i64 %i.z, 3
  %scevgep20 = getelementptr i8, ptr %i.n, i64 %i.aa
  %i.ab = sub nsw i64 %i.y, %i.z
  %i.ac = shl nsw i64 %i.ab, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20, i8 0, i64 %i.ac, i1 false), !tbaa !175
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.us.preheader, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv21
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48 ; 2 uses
  %i.ag = icmp slt i32 %i.w, %i.af
  br i1 %i.ag, label %.lr.ph.us.preheader.1, label %._crit_edge.us.1

.lr.ph.us.preheader.1:                            ; preds = %._crit_edge.us
  %i.ah = sext i32 %i.af to i64
  %i.ai = sext i32 %i.w to i64                    ; 2 uses
  %i.aj = shl nsw i64 %i.ai, 3
  %scevgep20.1 = getelementptr i8, ptr %i.n, i64 %i.aj
  %i.ak = sub nsw i64 %i.ah, %i.ai
  %i.al = shl nsw i64 %i.ak, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.1, i8 0, i64 %i.al, i1 false), !tbaa !175
  br label %._crit_edge.us.1

._crit_edge.us.1:                                 ; preds = %.lr.ph.us.preheader.1, %._crit_edge.us
  %indvars.iv.next22.1 = add nuw nsw i64 %indvars.iv21, 2 ; 2 uses
  %niter37.next.1 = add nuw nsw i64 %niter37, 2   ; 2 uses
  %niter37.ncmp.1 = icmp eq i64 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1, label %._crit_edge17.loopexit.unr-lcssa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !533

bb.f:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.l

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %._crit_edge.1, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader.new ], [ %indvars.iv.next.1, %._crit_edge.1 ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !48 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !48
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.au
  %i.av = shl nuw nsw i64 %i.aq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.av, i1 false), !tbaa !175
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !48 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.preheader.1, label %._crit_edge.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !48
  %i.bc = sext i32 %i.bb to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %scevgep.1 = getelementptr i8, ptr %i.n, i64 %i.bd
  %i.be = shl nuw nsw i64 %i.az, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.1, i8 0, i64 %i.be, i1 false), !tbaa !175
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph.preheader.1, %._crit_edge
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge17.loopexit31.unr-lcssa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !533

._crit_edge17.loopexit.unr-lcssa:                 ; preds = %._crit_edge.us.1
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader: ; preds = %._crit_edge17.loopexit.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader
  %indvars.iv21.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.preheader ], [ %indvars.iv.next22.1, %._crit_edge17.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv21.epil.init ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !48 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !48 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader.epil, label %._crit_edge17

.lr.ph.us.preheader.epil:                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader
  %i.bk = sext i32 %i.bi to i64
  %i.bl = sext i32 %i.bg to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep20.epil = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.bn = sub nsw i64 %i.bk, %i.bl
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.epil, i8 0, i64 %i.bo, i1 false), !tbaa !175
  br label %._crit_edge17

._crit_edge17.loopexit31.unr-lcssa:               ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader: ; preds = %._crit_edge17.loopexit31.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge17.loopexit31.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !48 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.epil, label %._crit_edge17

.lr.ph.preheader.epil:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !48
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep.epil = getelementptr i8, ptr %i.n, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.bx, i1 false), !tbaa !175
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit31.unr-lcssa, %.lr.ph.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, %._crit_edge17.loopexit.unr-lcssa, %.lr.ph.us.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store i8 0, ptr %4, align 8, !tbaa !239, !alias.scope !536
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.by, align 8, !tbaa !237, !alias.scope !536
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.bz, align 8, !tbaa !237, !alias.scope !536
  %i.ca = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %._crit_edge17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !154
  call void @free(ptr noundef %i.cb) #35
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !155
  call void @free(ptr noundef %i.cc) #35
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !156 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !157 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.k:                                             ; preds = %._crit_edge17
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.cj, %bb.k ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !148  ; 32 uses
  %i.c = trunc i64 %i.b to i32                    ; 17 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call double @sqrt(double noundef %i.d) #35
  %i.f = fmul double %i.e, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %.sroa.speculated548 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16)
  %i.h = add nsw i32 %i.c, -2
  %.sroa.speculated543 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated548, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !155  ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  %i.p = load i32, ptr %i.m, align 4, !tbaa !48
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
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !38 ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 7
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = load <4 x i32>, ptr %i.ai, align 1, !tbaa !38 ; 2 uses
  %i.ak = bitcast <2 x i64> %i.ag to <4 x i32>    ; 2 uses
  %i.al = icmp samesign ugt i64 %i.y, 15
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.aj, %bb.g ], [ %i.av, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ak, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.am = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = icmp sgt i64 %i.ac, %i.aa
  br i1 %i.ao, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i ]
  %i.ap = phi <4 x i32> [ %i.av, %.lr.ph.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.ar = load <4 x i32>, ptr %i.aq, align 1, !tbaa !38
  %i.as = add <4 x i32> %i.ar, %.sroa.067.078.i.i.i.i ; 2 uses
  %2 = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.at = getelementptr i8, ptr %2, i64 48
  %i.au = load <4 x i32>, ptr %i.at, align 1, !tbaa !38
  %i.av = add <4 x i32> %i.au, %i.ap              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.aw = icmp slt i64 %.057.i.i.i.i, %i.ad
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.ay = load <4 x i32>, ptr %i.ax, align 1, !tbaa !38
  %i.az = add <4 x i32> %i.ay, %i.am
  %i.ba = bitcast <4 x i32> %i.az to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ag, %bb.f ], [ %i.ba, %bb.h ], [ %i.an, %._crit_edge.i.i.i.i ]
  %i.bb = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bc = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bb, <4 x i32> %i.bb) ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.bc, <4 x i32> %i.bc) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.bd, i64 0 ; 2 uses
  %i.be = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader1352, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bf = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.bd, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bf, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi1167 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <4 x i32>, ptr %i.bg, align 4, !tbaa !48
  %wide.load1168 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !48
  %i.bi = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bj = add <4 x i32> %wide.load1168, %vec.phi1167 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader1352

.lr.ph85.i.i.i.i.preheader1352:                   ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
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
  br i1 %min.iters.check1170, label %.lr.ph89.i.i.i.i.preheader1347, label %vector.ph1171

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
  %wide.load1177 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !48
  %wide.load1178 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !48
  %i.bu = add <4 x i32> %wide.load1177, %vec.phi1175 ; 2 uses
  %i.bv = add <4 x i32> %wide.load1178, %vec.phi1176 ; 2 uses
  %index.next1179 = add nuw i64 %index1174, 8     ; 2 uses
  %i.bw = icmp eq i64 %index.next1179, %n.vec1172
  br i1 %i.bw, label %middle.block1180, label %vector.body1173, !llvm.loop !538

middle.block1180:                                 ; preds = %vector.body1173
  %bin.rdx1181 = add <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1181) ; 2 uses
  %cmp.n1182 = icmp eq i64 %i.bo, %n.vec1172
  br i1 %cmp.n1182, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader1347

.lr.ph89.i.i.i.i.preheader1347:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block1180
  %.05588.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph89.i.i.i.i.preheader ], [ %i.bp, %middle.block1180 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bx, %middle.block1180 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader1352, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1352 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ca, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1352 ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05683.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !48
  %i.ca = add nsw i32 %i.bz, %.07582.i.i.i.i      ; 2 uses
  %i.cb = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cb, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !539

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1347, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1347 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ce, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1347 ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !48
  %i.ce = add nsw i32 %i.cd, %.187.i.i.i.i        ; 2 uses
  %i.cf = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.b
  br i1 %i.cg, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !540

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !48  ; 3 uses
  %i.ci = icmp sgt i64 %i.b, 1
  br i1 %i.ci, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cj = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check1186 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check1186, label %.lr.ph94.i.i.i.i.preheader1343, label %vector.ph1187

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
  %wide.load1193 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !48
  %wide.load1194 = load <4 x i32>, ptr %i.co, align 4, !tbaa !48
  %i.cp = add <4 x i32> %wide.load1193, %vec.phi1191 ; 2 uses
  %i.cq = add <4 x i32> %wide.load1194, %vec.phi1192 ; 2 uses
  %index.next1195 = add nuw i64 %index1190, 8     ; 2 uses
  %i.cr = icmp eq i64 %index.next1195, %n.vec1188
  br i1 %i.cr, label %middle.block1196, label %vector.body1189, !llvm.loop !541

middle.block1196:                                 ; preds = %vector.body1189
  %bin.rdx1197 = add <4 x i32> %i.cq, %i.cp
  %i.cs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1197) ; 2 uses
  %cmp.n1198 = icmp eq i64 %i.cj, %n.vec1188
  br i1 %cmp.n1198, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader1343

.lr.ph94.i.i.i.i.preheader1343:                   ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block1196
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.ck, %middle.block1196 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ch, %.lr.ph94.i.i.i.i.preheader ], [ %i.cs, %middle.block1196 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader1343, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1343 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1343 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.092.i.i.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = add nsw i32 %i.cu, %.291.i.i.i.i        ; 2 uses
  %i.cw = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cw, %i.b
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !542

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block1180, %middle.block1196, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ %i.cv, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.cs, %middle.block1196 ], [ %i.bx, %middle.block1180 ], [ %i.ce, %.lr.ph89.i.i.i.i ] ; 3 uses
  %i.cx = add nsw i32 %i.c, 1                     ; 11 uses
  %i.cy = sext i32 %i.cx to i64                   ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !221
  %.not.i.i.i = icmp eq i64 %i.da, %i.cy
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.db = load ptr, ptr %1, align 8, !tbaa !195
  tail call void @free(ptr noundef %i.db) #35
  %i.dc = icmp sgt i32 %i.c, -1
  br i1 %i.dc, label %bb.l, label %.sink.split.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.dd = shl nuw nsw i64 %i.cy, 2
  %i.de = tail call noalias ptr @malloc(i64 noundef %i.dd) #40 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.m, label %.sink.split.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dg = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dg, align 8, !tbaa !47
  tail call void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #39
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.l, %bb.k
  %.sink.i.i.i = phi ptr [ %i.de, %bb.l ], [ null, %bb.k ]
  store ptr %.sink.i.i.i, ptr %1, align 8, !tbaa !195
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

end_hunk_2
begin_hunk_3_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE:bb.a
vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x double>, ptr %i.bw, align 8, !tbaa !175
  %wide.load197 = load <2 x double>, ptr %i.bx, align 8, !tbaa !175
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %wide.load, ptr %i.bv, align 8, !tbaa !175
  store <2 x double> %wide.load197, ptr %i.by, align 8, !tbaa !175
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !623

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader373

.lr.ph.i.i.i.i.i.i.i.i.preheader373:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader373, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader373 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader373 ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !175
  store double %i.cc, ptr %i.ca, align 8, !tbaa !175
  %i.cd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !624

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader373
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader373 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ce = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05.i.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i.i.i.i.i.i.i.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !175
  store double %i.ci, ptr %i.cg, align 8, !tbaa !175
  %i.cj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.cj
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !175
  store double %i.cm, ptr %i.ck, align 8, !tbaa !175
  %i.cn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.cn
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !175
  store double %i.cq, ptr %i.co, align 8, !tbaa !175
  %i.cr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !175
  store double %i.cu, ptr %i.cs, align 8, !tbaa !175
  %i.cv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cv, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !625

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i
  %i.cw = icmp sgt i64 %i.bp, 1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i
  %i.cx = icmp slt i64 %i.bs, %i.bj
  br i1 %i.cx, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.cy = add i64 %.0.i.i.i.i.i.i.i.i, %i.br
  %i.cz = sub i64 %i.bj, %i.cy                    ; 3 uses
  %min.iters.check201 = icmp ult i64 %i.cz, 8
  %i.da = sub i64 %.sroa.495.8.copyload196, %i.bk
  %diff.check199 = icmp ugt i64 %i.da, -32
  %or.cond339 = select i1 %min.iters.check201, i1 true, i1 %diff.check199
  br i1 %or.cond339, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader371, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader
  %n.vec203 = and i64 %i.cz, -4                   ; 3 uses
  %i.db = add i64 %i.bs, %n.vec203
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next208, %vector.body204 ] ; 2 uses
  %i.dc = add i64 %i.bs, %index205                ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.dc ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load206.a = load <2 x double>, ptr %i.de, align 8, !tbaa !175
  %wide.load207 = load <2 x double>, ptr %i.df, align 8, !tbaa !175
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x double> %wide.load206.a, ptr %i.dd, align 8, !tbaa !175
  store <2 x double> %wide.load207, ptr %i.dg, align 8, !tbaa !175
  %index.next208 = add nuw i64 %index205, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next208, %n.vec203
  br i1 %i.dh, label %middle.block209, label %vector.body204, !llvm.loop !626

middle.block209:                                  ; preds = %vector.body204
  %cmp.n210 = icmp eq i64 %i.cz, %n.vec203
  br i1 %cmp.n210, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader371

.lr.ph.i17.i.i.i.i.i.i.i.preheader371:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader, %middle.block209
  %.05.i18.i.i.i.i.i.i.i.ph = phi i64 [ %i.bs, %.lr.ph.i17.i.i.i.i.i.i.i.preheader ], [ %i.db, %middle.block209 ] ; 4 uses
  %i.di = sub i64 %i.bj, %.05.i18.i.i.i.i.i.i.i.ph
  %xtraiter374 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader371, %.lr.ph.i17.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader371 ] ; 3 uses
  %prol.iter376 = phi i64 [ %prol.iter376.next, %.lr.ph.i17.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.preheader371 ]
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.05.i18.i.i.i.i.i.i.i.prol
  %i.dk = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.prol
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !175
  store double %i.dl, ptr %i.dj, align 8, !tbaa !175
  %i.dm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter376.next = add i64 %prol.iter376, 1   ; 2 uses
  %prol.iter376.cmp.not = icmp eq i64 %prol.iter376.next, %xtraiter374
  br i1 %prol.iter376.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol, !llvm.loop !627

.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.preheader371
  %.05.i18.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader371 ], [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.prol ]
  %i.dn = sub i64 %.05.i18.i.i.i.i.i.i.i.ph, %i.bj
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.05.i18.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !175
  store double %i.dr, ptr %i.dp, align 8, !tbaa !175
  %i.ds = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.ds
  %i.dv = load double, ptr %i.du, align 8, !tbaa !175
  store double %i.dv, ptr %i.dt, align 8, !tbaa !175
  %i.dw = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.dw
  %i.dy = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.dw
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !175
  store double %i.dz, ptr %i.dx, align 8, !tbaa !175
  %i.ea = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.ea
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !175
  store double %i.ed, ptr %i.eb, align 8, !tbaa !175
  %i.ee = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ee, %i.bj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i, !llvm.loop !628

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.021.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.021.i.i.i.i.i.i.i
  %i.eh = load <2 x double>, ptr %i.eg, align 1, !tbaa !38
  store <2 x double> %i.eh, ptr %i.ef, align 16, !tbaa !38
  %i.ei = add nsw i64 %.021.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.ej = icmp slt i64 %i.ei, %i.bs
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !629

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.086.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bg, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter377, 0
  tail call void @llvm.assume(i1 %lcmp.mod379)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.086.i.epil = phi i64 [ %.086.i.epil.init, %.epil.preheader ], [ %i.eq, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %.086.i.epil
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.086.i.epil
  %i.em = load i32, ptr %i.el, align 4, !tbaa !48
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.en
  %i.ep = load double, ptr %i.ek, align 8, !tbaa !175
  store double %i.ep, ptr %i.eo, align 8, !tbaa !175
  %i.eq = add nuw nsw i64 %.086.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter377
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %bb.k, !llvm.loop !630

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %bb.k, %middle.block209, %.critedge.i, %.preheader83.i, %._crit_edge.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !155 ; 13 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !154 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !148
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !48
  %i.fb = load i32, ptr %i.ew, align 4, !tbaa !48
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.m:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !148 ; 11 uses
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
  %i.fu = load <2 x i64>, ptr %i.ft, align 1, !tbaa !38 ; 2 uses
  %i.fv = icmp sgt i64 %i.fm, 7
  br i1 %i.fv, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fw = getelementptr i8, ptr %i.ft, i64 16
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !38 ; 2 uses
  %i.fy = bitcast <2 x i64> %i.fu to <4 x i32>    ; 2 uses
  %i.fz = icmp samesign ugt i64 %i.fm, 15
  br i1 %i.fz, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i12, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.q
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.fx, %bb.q ], [ %i.gj, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.fy, %bb.q ], [ %i.gg, %.lr.ph.i.i.i.i ]
  %i.ga = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.gb = bitcast <4 x i32> %i.ga to <2 x i64>
  %i.gc = icmp sgt i64 %i.fq, %i.fo
  br i1 %i.gc, label %bb.r, label %bb.s

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i12, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.gg, %.lr.ph.i.i.i.i ], [ %i.fy, %.lr.ph.preheader.i.i.i.i ]
  %i.gd = phi <4 x i32> [ %i.gj, %.lr.ph.i.i.i.i ], [ %i.fx, %.lr.ph.preheader.i.i.i.i ]
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.05780.i.i.i.i
  %i.gf = load <4 x i32>, ptr %i.ge, align 1, !tbaa !38
  %i.gg = add <4 x i32> %i.gf, %.sroa.067.078.i.i.i.i ; 2 uses
  %5 = getelementptr [4 x i8], ptr %i.et, i64 %.057.in79.i.i.i.i
  %i.gh = getelementptr i8, ptr %5, i64 48
  %i.gi = load <4 x i32>, ptr %i.gh, align 1, !tbaa !38
  %i.gj = add <4 x i32> %i.gi, %i.gd              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.gk = icmp slt i64 %.057.i.i.i.i, %i.fr
  br i1 %i.gk, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.fr
  %i.gm = load <4 x i32>, ptr %i.gl, align 1, !tbaa !38
  %i.gn = add <4 x i32> %i.gm, %i.ga
  %i.go = bitcast <4 x i32> %i.gn to <2 x i64>
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i, %bb.p
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.fu, %bb.p ], [ %i.go, %bb.r ], [ %i.gb, %._crit_edge.i.i.i.i ]
  %i.gp = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.gq = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.gp, <4 x i32> %i.gp) ; 2 uses
  %i.gr = tail call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.gq, <4 x i32> %i.gq) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <4 x i32> %i.gr, i64 0 ; 2 uses
  %i.gs = icmp sgt i64 %.0.i.i.i.i.i.i.i.i12, 0
  br i1 %i.gs, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.s
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i.i12, 8
  br i1 %min.iters.check213, label %.lr.ph85.i.i.i.i.preheader365, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec215 = and i64 %.0.i.i.i.i.i.i.i.i12, 9223372036854775800 ; 3 uses
  %i.gt = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.gr, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next221, %vector.body216 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.gt, %vector.ph214 ], [ %i.gw, %vector.body216 ]
  %vec.phi218 = phi <4 x i32> [ zeroinitializer, %vector.ph214 ], [ %i.gx, %vector.body216 ]
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index217 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load219.a = load <4 x i32>, ptr %i.gu, align 4, !tbaa !48
  %wide.load220 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !48
  %i.gw = add <4 x i32> %wide.load219.a, %vec.phi ; 2 uses
  %i.gx = add <4 x i32> %wide.load220, %vec.phi218 ; 2 uses
  %index.next221 = add nuw i64 %index217, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next221, %n.vec215
  br i1 %i.gy, label %middle.block222, label %vector.body216, !llvm.loop !631

middle.block222:                                  ; preds = %vector.body216
  %bin.rdx = add <4 x i32> %i.gx, %i.gw
  %i.gz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n223 = icmp eq i64 %.0.i.i.i.i.i.i.i.i12, %n.vec215
  br i1 %cmp.n223, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader365

.lr.ph85.i.i.i.i.preheader365:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block222
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec215, %middle.block222 ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.gz, %middle.block222 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block222, %bb.s
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.s ], [ %i.gz, %middle.block222 ], [ %i.ho, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ha = icmp slt i64 %i.fs, %i.fe
  br i1 %i.ha, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.hb = add i64 %.0.i.i.i.i.i.i.i.i12, %i.fq
  %i.hc = sub i64 %i.fe, %i.hb                    ; 3 uses
  %min.iters.check226 = icmp ult i64 %i.hc, 8
  br i1 %min.iters.check226, label %.lr.ph89.i.i.i.i.preheader360, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec228 = and i64 %i.hc, -8                   ; 3 uses
  %i.hd = add i64 %i.fs, %n.vec228
  %i.he = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.hf = getelementptr [4 x i8], ptr %i.et, i64 %i.fs
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next235, %vector.body229 ] ; 2 uses
  %vec.phi231.a = phi <4 x i32> [ %i.he, %vector.ph227 ], [ %i.hi, %vector.body229 ]
  %vec.phi232 = phi <4 x i32> [ zeroinitializer, %vector.ph227 ], [ %i.hj, %vector.body229 ]
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %index230 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %wide.load233.a = load <4 x i32>, ptr %i.hg, align 4, !tbaa !48
  %wide.load234 = load <4 x i32>, ptr %i.hh, align 4, !tbaa !48
  %i.hi = add <4 x i32> %wide.load233.a, %vec.phi231.a ; 2 uses
  %i.hj = add <4 x i32> %wide.load234, %vec.phi232 ; 2 uses
  %index.next235 = add nuw i64 %index230, 8       ; 2 uses
  %i.hk = icmp eq i64 %index.next235, %n.vec228
  br i1 %i.hk, label %middle.block236, label %vector.body229, !llvm.loop !632

middle.block236:                                  ; preds = %vector.body229
  %bin.rdx237 = add <4 x i32> %i.hj, %i.hi
  %i.hl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx237) ; 2 uses
  %cmp.n238 = icmp eq i64 %i.hc, %n.vec228
  br i1 %cmp.n238, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader360

.lr.ph89.i.i.i.i.preheader360:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block236
  %.05588.i.i.i.i.ph = phi i64 [ %i.fs, %.lr.ph89.i.i.i.i.preheader ], [ %i.hd, %middle.block236 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.hl, %middle.block236 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader365, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.hp, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader365 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.ho, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader365 ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.05683.i.i.i.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !48
  %i.ho = add nsw i32 %i.hn, %.07582.i.i.i.i      ; 2 uses
  %i.hp = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.hp, %.0.i.i.i.i.i.i.i.i12
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !633

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader360, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ht, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader360 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.hs, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader360 ]
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.05588.i.i.i.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !48
  %i.hs = add nsw i32 %i.hr, %.187.i.i.i.i        ; 2 uses
  %i.ht = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.hu = icmp slt i64 %i.ht, %i.fe
  br i1 %i.hu, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !634

bb.t:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.hv = load i32, ptr %i.et, align 4, !tbaa !48 ; 3 uses
  %i.hw = icmp sgt i64 %i.fe, 1
  br i1 %i.hw, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.t
  %i.hx = add nsw i64 %i.fe, -1                   ; 2 uses
  %min.iters.check242 = icmp ult i64 %i.fe, 9
  br i1 %min.iters.check242, label %.lr.ph94.i.i.i.i.preheader356, label %vector.ph243

vector.ph243:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec244 = and i64 %i.hx, -8                   ; 3 uses
  %i.hy = or disjoint i64 %n.vec244, 1
  %i.hz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hv, i64 0
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph243
  %index246 = phi i64 [ 0, %vector.ph243 ], [ %index.next251, %vector.body245 ] ; 2 uses
  %vec.phi247.a = phi <4 x i32> [ %i.hz, %vector.ph243 ], [ %i.id, %vector.body245 ]
  %vec.phi248 = phi <4 x i32> [ zeroinitializer, %vector.ph243 ], [ %i.ie, %vector.body245 ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index246 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 20
  %wide.load249.a = load <4 x i32>, ptr %i.ib, align 4, !tbaa !48
  %wide.load250 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !48
  %i.id = add <4 x i32> %wide.load249.a, %vec.phi247.a ; 2 uses
  %i.ie = add <4 x i32> %wide.load250, %vec.phi248 ; 2 uses
  %index.next251 = add nuw i64 %index246, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next251, %n.vec244
  br i1 %i.if, label %middle.block252, label %vector.body245, !llvm.loop !635

middle.block252:                                  ; preds = %vector.body245
  %bin.rdx253 = add <4 x i32> %i.ie, %i.id
  %i.ig = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx253) ; 2 uses
  %cmp.n254 = icmp eq i64 %i.hx, %n.vec244
  br i1 %cmp.n254, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader356

.lr.ph94.i.i.i.i.preheader356:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block252
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.hy, %middle.block252 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.hv, %.lr.ph94.i.i.i.i.preheader ], [ %i.ig, %middle.block252 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader356, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.ik, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader356 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.ij, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader356 ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.092.i.i.i.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !48
  %i.ij = add nsw i32 %i.ii, %.291.i.i.i.i        ; 2 uses
  %i.ik = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.ik, %i.fe
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !636

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block236, %middle.block252, %.preheader.i.i.i.i, %bb.t, %bb.l
  %.0.i.in = phi i32 [ %i.fc, %bb.l ], [ %i.ij, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.hv, %bb.t ], [ %i.ig, %middle.block252 ], [ %i.hl, %middle.block236 ], [ %i.hs, %.lr.ph89.i.i.i.i ]
  %i.il = icmp sgt i32 %.0.i.in, 0
  br i1 %i.il, label %bb.u, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

bb.u:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store i8 0, ptr %3, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.er, ptr %i.im, align 8
  call void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj1ENS_6SparseEE12solveInPlaceINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread: ; preds = %bb.m, %bb.u, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.io = load i64, ptr %i.in, align 8, !tbaa !244
  %i.ip = icmp sgt i64 %i.io, 0
  br i1 %i.ip, label %bb.v, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit

bb.v:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.492.24.copyload = load ptr, ptr %2, align 8 ; 14 uses
  %.sroa.693.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !197 ; 13 uses
  %i.is = load i64, ptr %.sroa.693.24..sroa_idx, align 8, !tbaa !172 ; 9 uses
  %i.it = ptrtoint ptr %.sroa.492.24.copyload to i64 ; 2 uses
  %i.iu = and i64 %i.it, 7
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i64 %i.iu, 0
  br i1 %.not.i.i.i.i.i.i.i.i13, label %bb.w, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i14

bb.w:                                             ; preds = %bb.v
end_hunk_3
begin_hunk_4_@_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE:bb.a
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
  %min.iters.check260 = icmp eq i64 %.0.i.i.i.i.i.i.i.i15, 1
  br i1 %min.iters.check260, label %.lr.ph.i.i.i.i.i.i.i.i22.preheader355, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i22.preheader
  %i.jd = shl i64 %.0.i.i.i.i.i.i.i.i15, 3        ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.492.24.copyload, i64 %i.jd
  %scevgep258 = getelementptr i8, ptr %i.ir, i64 %i.jd
  %bound0 = icmp ult ptr %.sroa.492.24.copyload, %scevgep258
  %bound1 = icmp ult ptr %i.ir, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i22.preheader355, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck257
  %n.vec262 = and i64 %.0.i.i.i.i.i.i.i.i15, 9223372036854775806 ; 3 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next267, %vector.body263 ] ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.sroa.492.24.copyload, i64 %index264 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %index264
  %wide.load265.a = load <2 x double>, ptr %i.jf, align 8, !tbaa !175, !alias.scope !661
  %i.jg = fdiv <2 x double> splat (double 1.000000e+00), %wide.load265.a
  %wide.load266 = load <2 x double>, ptr %i.je, align 8, !tbaa !175, !alias.scope !662, !noalias !661
  %i.jh = fmul <2 x double> %i.jg, %wide.load266
  store <2 x double> %i.jh, ptr %i.je, align 8, !tbaa !175, !alias.scope !662, !noalias !661
  %index.next267 = add nuw i64 %index264, 2       ; 2 uses
  %i.ji = icmp eq i64 %index.next267, %n.vec262
  br i1 %i.ji, label %middle.block268, label %vector.body263, !llvm.loop !640

middle.block268:                                  ; preds = %vector.body263
  %cmp.n269 = icmp eq i64 %.0.i.i.i.i.i.i.i.i15, %n.vec262
  br i1 %cmp.n269, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i22.preheader355

.lr.ph.i.i.i.i.i.i.i.i22.preheader355:            ; preds = %vector.memcheck257, %.lr.ph.i.i.i.i.i.i.i.i22.preheader, %middle.block268
  %.05.i.i.i.i.i.i.i.i23.ph = phi i64 [ 0, %vector.memcheck257 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i22.preheader ], [ %n.vec262, %middle.block268 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i23.ph, 1
  %xtraiter380 = and i64 %.0.i.i.i.i.i.i.i.i15, 1
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %.lr.ph.i.i.i.i.i.i.i.i22.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i22.prol

.lr.ph.i.i.i.i.i.i.i.i22.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i22.preheader355
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.492.24.copyload, i64 %.05.i.i.i.i.i.i.i.i23.ph ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05.i.i.i.i.i.i.i.i23.ph
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !175
  %i.jm = fdiv double 1.000000e+00, %i.jl
  %i.jn = load double, ptr %i.jj, align 8, !tbaa !175
  %i.jo = fmul double %i.jm, %i.jn
  store double %i.jo, ptr %i.jj, align 8, !tbaa !175
  %i.jp = or disjoint i64 %.05.i.i.i.i.i.i.i.i23.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i22.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i22.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i22.prol, %.lr.ph.i.i.i.i.i.i.i.i22.preheader355
  %.05.i.i.i.i.i.i.i.i23.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i.i.i.i22.preheader355 ], [ %i.jp, %.lr.ph.i.i.i.i.i.i.i.i22.prol ]
  %i.jq = icmp eq i64 %.0.i.i.i.i.i.i.i.i15, %.neg
  br i1 %i.jq, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i.i.i22:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i22.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i22
  %.05.i.i.i.i.i.i.i.i23 = phi i64 [ %i.ke, %.lr.ph.i.i.i.i.i.i.i.i22 ], [ %.05.i.i.i.i.i.i.i.i23.unr, %.lr.ph.i.i.i.i.i.i.i.i22.prol.loopexit ] ; 4 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.492.24.copyload, i64 %.05.i.i.i.i.i.i.i.i23 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05.i.i.i.i.i.i.i.i23
  %i.jt = load double, ptr %i.js, align 8, !tbaa !175
  %i.ju = fdiv double 1.000000e+00, %i.jt
  %i.jv = load double, ptr %i.jr, align 8, !tbaa !175
  %i.jw = fmul double %i.ju, %i.jv
  store double %i.jw, ptr %i.jr, align 8, !tbaa !175
  %i.jx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i23, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.492.24.copyload, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.jx
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !175
  %i.kb = fdiv double 1.000000e+00, %i.ka
  %i.kc = load double, ptr %i.jy, align 8, !tbaa !175
  %i.kd = fmul double %i.kb, %i.kc
  store double %i.kd, ptr %i.jy, align 8, !tbaa !175
  %i.ke = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i23, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i24.1 = icmp eq i64 %i.ke, %.0.i.i.i.i.i.i.i.i15
  br i1 %exitcond.not.i.i.i.i.i.i.i.i24.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i22, !llvm.loop !641

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i22.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i22, %middle.block268, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i14
  %i.kf = icmp sgt i64 %i.iy, 1
  br i1 %i.kf, label %.lr.ph.i.i.i.i.i.i.i20, label %._crit_edge.i.i.i.i.i.i.i16

._crit_edge.i.i.i.i.i.i.i16:                      ; preds = %.lr.ph.i.i.i.i.i.i.i20, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i
  %i.kg = icmp slt i64 %i.jb, %i.is
  br i1 %i.kg, label %.lr.ph.i17.i.i.i.i.i.i.i17.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i17.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i16
  %i.kh = add i64 %.0.i.i.i.i.i.i.i.i15, %i.ja
  %i.ki = sub i64 %i.is, %i.kh                    ; 3 uses
  %min.iters.check280 = icmp ult i64 %i.ki, 4
  br i1 %min.iters.check280, label %.lr.ph.i17.i.i.i.i.i.i.i17.preheader354, label %vector.memcheck271

vector.memcheck271:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.preheader
  %i.kj = shl i64 %i.iz, 4
  %i.kk = shl i64 %.0.i.i.i.i.i.i.i.i15, 3
  %i.kl = add i64 %i.kj, %i.kk                    ; 2 uses
  %scevgep272.a = getelementptr i8, ptr %.sroa.492.24.copyload, i64 %i.kl
  %i.km = shl i64 %i.is, 3                        ; 2 uses
  %scevgep273.a = getelementptr i8, ptr %.sroa.492.24.copyload, i64 %i.km
  %scevgep274.a = getelementptr i8, ptr %i.ir, i64 %i.kl
  %scevgep275 = getelementptr i8, ptr %i.ir, i64 %i.km
  %bound0276 = icmp ult ptr %scevgep272.a, %scevgep275
  %bound1277 = icmp ult ptr %scevgep274.a, %scevgep273.a
  %found.conflict278 = and i1 %bound0276, %bound1277
  br i1 %found.conflict278, label %.lr.ph.i17.i.i.i.i.i.i.i17.preheader354, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck271
  %n.vec282 = and i64 %i.ki, -2                   ; 3 uses
  %i.kn = add i64 %i.jb, %n.vec282
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next287, %vector.body283 ] ; 2 uses
  %i.ko = add i64 %i.jb, %index284                ; 2 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %i.ko ; 2 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.ko
  %wide.load285.a = load <2 x double>, ptr %i.kq, align 8, !tbaa !175, !alias.scope !663
  %i.kr = fdiv <2 x double> splat (double 1.000000e+00), %wide.load285.a
  %wide.load286 = load <2 x double>, ptr %i.kp, align 8, !tbaa !175, !alias.scope !664, !noalias !663
  %i.ks = fmul <2 x double> %i.kr, %wide.load286
  store <2 x double> %i.ks, ptr %i.kp, align 8, !tbaa !175, !alias.scope !664, !noalias !663
  %index.next287 = add nuw i64 %index284, 2       ; 2 uses
  %i.kt = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.kt, label %middle.block288, label %vector.body283, !llvm.loop !645

middle.block288:                                  ; preds = %vector.body283
  %cmp.n289 = icmp eq i64 %i.ki, %n.vec282
  br i1 %cmp.n289, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i17.preheader354

.lr.ph.i17.i.i.i.i.i.i.i17.preheader354:          ; preds = %vector.memcheck271, %.lr.ph.i17.i.i.i.i.i.i.i17.preheader, %middle.block288
  %.05.i18.i.i.i.i.i.i.i18.ph = phi i64 [ %i.jb, %vector.memcheck271 ], [ %i.jb, %.lr.ph.i17.i.i.i.i.i.i.i17.preheader ], [ %i.kn, %middle.block288 ] ; 6 uses
  %i.ku = sub i64 %i.is, %.05.i18.i.i.i.i.i.i.i18.ph
  %.neg386 = add i64 %.05.i18.i.i.i.i.i.i.i18.ph, 1
  %xtraiter383 = and i64 %i.ku, 1
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i17.prol

.lr.ph.i17.i.i.i.i.i.i.i17.prol:                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.preheader354
  %i.kv = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %.05.i18.i.i.i.i.i.i.i18.ph ; 2 uses
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %.05.i18.i.i.i.i.i.i.i18.ph
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !175
  %i.ky = fdiv double 1.000000e+00, %i.kx
  %i.kz = load double, ptr %i.kv, align 8, !tbaa !175
  %i.la = fmul double %i.ky, %i.kz
  store double %i.la, ptr %i.kv, align 8, !tbaa !175
  %i.lb = add nsw i64 %.05.i18.i.i.i.i.i.i.i18.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit:         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.prol, %.lr.ph.i17.i.i.i.i.i.i.i17.preheader354
  %.05.i18.i.i.i.i.i.i.i18.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i18.ph, %.lr.ph.i17.i.i.i.i.i.i.i17.preheader354 ], [ %i.lb, %.lr.ph.i17.i.i.i.i.i.i.i17.prol ]
  %i.lc = icmp eq i64 %i.is, %.neg386
  br i1 %i.lc, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i17

.lr.ph.i17.i.i.i.i.i.i.i17:                       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i17
  %.05.i18.i.i.i.i.i.i.i18 = phi i64 [ %i.lq, %.lr.ph.i17.i.i.i.i.i.i.i17 ], [ %.05.i18.i.i.i.i.i.i.i18.unr, %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit ] ; 4 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %.05.i18.i.i.i.i.i.i.i18 ; 2 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %.05.i18.i.i.i.i.i.i.i18
  %i.lf = load double, ptr %i.le, align 8, !tbaa !175
  %i.lg = fdiv double 1.000000e+00, %i.lf
  %i.lh = load double, ptr %i.ld, align 8, !tbaa !175
  %i.li = fmul double %i.lg, %i.lh
  store double %i.li, ptr %i.ld, align 8, !tbaa !175
  %i.lj = add nsw i64 %.05.i18.i.i.i.i.i.i.i18, 1 ; 2 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.lj
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !175
  %i.ln = fdiv double 1.000000e+00, %i.lm
  %i.lo = load double, ptr %i.lk, align 8, !tbaa !175
  %i.lp = fmul double %i.ln, %i.lo
  store double %i.lp, ptr %i.lk, align 8, !tbaa !175
  %i.lq = add nsw i64 %.05.i18.i.i.i.i.i.i.i18, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i19.1 = icmp eq i64 %i.lq, %i.is
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i19.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i17, !llvm.loop !646

.lr.ph.i.i.i.i.i.i.i20:                           ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i20
  %.021.i.i.i.i.i.i.i21 = phi i64 [ %i.lx, %.lr.ph.i.i.i.i.i.i.i20 ], [ %.0.i.i.i.i.i.i.i.i15, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKS8_EEEESB_Li1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.lr = getelementptr inbounds [8 x i8], ptr %.sroa.492.24.copyload, i64 %.021.i.i.i.i.i.i.i21 ; 2 uses
  %i.ls = load <2 x double>, ptr %i.lr, align 1, !tbaa !38
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %.021.i.i.i.i.i.i.i21
  %i.lu = load <2 x double>, ptr %i.lt, align 1, !tbaa !38
  %i.lv = fdiv <2 x double> splat (double 1.000000e+00), %i.lu
  %i.lw = fmul <2 x double> %i.ls, %i.lv
  store <2 x double> %i.lw, ptr %i.lr, align 16, !tbaa !38
  %i.lx = add nsw i64 %.021.i.i.i.i.i.i.i21, 2    ; 2 uses
  %i.ly = icmp slt i64 %i.lx, %i.jb
  br i1 %i.ly, label %.lr.ph.i.i.i.i.i.i.i20, label %._crit_edge.i.i.i.i.i.i.i16, !llvm.loop !647

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i17.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i17, %middle.block288, %._crit_edge.i.i.i.i.i.i.i16, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.lz = load ptr, ptr %i.es, align 8, !tbaa !155 ; 13 uses
  %i.ma = icmp eq ptr %i.lz, null
  br i1 %i.ma, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !154 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.me = load i64, ptr %i.md, align 8, !tbaa !148
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !48
  %i.mh = load i32, ptr %i.mc, align 4, !tbaa !48
  %i.mi = sub nsw i32 %i.mg, %i.mh
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58

bb.y:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS3_EEEES6_Li1EEEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !148 ; 11 uses
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mm = ptrtoint ptr %i.lz to i64               ; 2 uses
  %i.mn = and i64 %i.mm, 3
  %.not.i.i.i.i.i.i.i.i25 = icmp eq i64 %i.mn, 0
  br i1 %.not.i.i.i.i.i.i.i.i25, label %bb.aa, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26

bb.aa:                                            ; preds = %bb.z
  %i.mo = lshr exact i64 %i.mm, 2
  %i.mp = sub nsw i64 0, %i.mo
  %i.mq = and i64 %i.mp, 3
  %i.mr = call i64 @llvm.smin.i64(i64 %i.mq, i64 %i.mk)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i.i27 = phi i64 [ %i.mr, %bb.aa ], [ %i.mk, %bb.z ] ; 12 uses
  %i.ms = sub nsw i64 %i.mk, %.0.i.i.i.i.i.i.i.i27 ; 5 uses
  %i.mt = sdiv i64 %i.ms, 8
  %i.mu = shl nsw i64 %i.mt, 3                    ; 2 uses
  %i.mv = sdiv i64 %i.ms, 4
  %i.mw = shl nsw i64 %i.mv, 2                    ; 3 uses
  %i.mx = add nsw i64 %i.mu, %.0.i.i.i.i.i.i.i.i27 ; 2 uses
  %i.my = add nsw i64 %i.mw, %.0.i.i.i.i.i.i.i.i27 ; 4 uses
  %.off.i.i.i.i28 = add i64 %i.ms, 3
  %.not.i.i.i.i29 = icmp ult i64 %.off.i.i.i.i28, 7
  br i1 %.not.i.i.i.i29, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26
  %i.mz = getelementptr [4 x i8], ptr %i.lz, i64 %.0.i.i.i.i.i.i.i.i27 ; 2 uses
  %i.na = load <2 x i64>, ptr %i.mz, align 1, !tbaa !38 ; 2 uses
  %i.nb = icmp sgt i64 %i.ms, 7
  br i1 %i.nb, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.nc = getelementptr i8, ptr %i.mz, i64 16
  %i.nd = load <4 x i32>, ptr %i.nc, align 1, !tbaa !38 ; 2 uses
  %i.ne = bitcast <2 x i64> %i.na to <4 x i32>    ; 2 uses
  %i.nf = icmp samesign ugt i64 %i.ms, 15
  br i1 %i.nf, label %.lr.ph.preheader.i.i.i.i47, label %._crit_edge.i.i.i.i44

.lr.ph.preheader.i.i.i.i47:                       ; preds = %bb.ac
  %.05777.i.i.i.i48 = add nsw i64 %.0.i.i.i.i.i.i.i.i27, 8
  br label %.lr.ph.i.i.i.i49

._crit_edge.i.i.i.i44:                            ; preds = %.lr.ph.i.i.i.i49, %bb.ac
  %.lcssa.i.i.i.i45 = phi <4 x i32> [ %i.nd, %bb.ac ], [ %i.np, %.lr.ph.i.i.i.i49 ]
  %.sroa.067.0.lcssa.i.i.i.i46 = phi <4 x i32> [ %i.ne, %bb.ac ], [ %i.nm, %.lr.ph.i.i.i.i49 ]
  %i.ng = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i46, %.lcssa.i.i.i.i45 ; 2 uses
  %i.nh = bitcast <4 x i32> %i.ng to <2 x i64>
  %i.ni = icmp sgt i64 %i.mw, %i.mu
  br i1 %i.ni, label %bb.ad, label %bb.ae

.lr.ph.i.i.i.i49:                                 ; preds = %.lr.ph.i.i.i.i49, %.lr.ph.preheader.i.i.i.i47
  %.05780.i.i.i.i50 = phi i64 [ %.057.i.i.i.i53, %.lr.ph.i.i.i.i49 ], [ %.05777.i.i.i.i48, %.lr.ph.preheader.i.i.i.i47 ] ; 3 uses
  %.057.in79.i.i.i.i51 = phi i64 [ %.05780.i.i.i.i50, %.lr.ph.i.i.i.i49 ], [ %.0.i.i.i.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i47 ]
  %.sroa.067.078.i.i.i.i52 = phi <4 x i32> [ %i.nm, %.lr.ph.i.i.i.i49 ], [ %i.ne, %.lr.ph.preheader.i.i.i.i47 ]
  %i.nj = phi <4 x i32> [ %i.np, %.lr.ph.i.i.i.i49 ], [ %i.nd, %.lr.ph.preheader.i.i.i.i47 ]
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %.05780.i.i.i.i50
  %i.nl = load <4 x i32>, ptr %i.nk, align 1, !tbaa !38
  %i.nm = add <4 x i32> %i.nl, %.sroa.067.078.i.i.i.i52 ; 2 uses
  %6 = getelementptr [4 x i8], ptr %i.lz, i64 %.057.in79.i.i.i.i51
  %i.nn = getelementptr i8, ptr %6, i64 48
  %i.no = load <4 x i32>, ptr %i.nn, align 1, !tbaa !38
  %i.np = add <4 x i32> %i.no, %i.nj              ; 2 uses
  %.057.i.i.i.i53 = add nsw i64 %.05780.i.i.i.i50, 8 ; 2 uses
  %i.nq = icmp slt i64 %.057.i.i.i.i53, %i.mx
  br i1 %i.nq, label %.lr.ph.i.i.i.i49, label %._crit_edge.i.i.i.i44, !llvm.loop !2

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i44
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.mx
  %i.ns = load <4 x i32>, ptr %i.nr, align 1, !tbaa !38
  %i.nt = add <4 x i32> %i.ns, %i.ng
  %i.nu = bitcast <4 x i32> %i.nt to <2 x i64>
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i44, %bb.ab
  %.sroa.067.2.i.i.i.i30 = phi <2 x i64> [ %i.na, %bb.ab ], [ %i.nu, %bb.ad ], [ %i.nh, %._crit_edge.i.i.i.i44 ]
  %i.nv = bitcast <2 x i64> %.sroa.067.2.i.i.i.i30 to <4 x i32> ; 2 uses
  %i.nw = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.nv, <4 x i32> %i.nv) ; 2 uses
  %i.nx = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %i.nw, <4 x i32> %i.nw) ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i.i31 = extractelement <4 x i32> %i.nx, i64 0 ; 2 uses
  %i.ny = icmp sgt i64 %.0.i.i.i.i.i.i.i.i27, 0
  br i1 %i.ny, label %.lr.ph85.i.i.i.i40.preheader, label %.preheader.i.i.i.i32

.lr.ph85.i.i.i.i40.preheader:                     ; preds = %bb.ae
  %min.iters.check292 = icmp ult i64 %.0.i.i.i.i.i.i.i.i27, 8
  br i1 %min.iters.check292, label %.lr.ph85.i.i.i.i40.preheader348, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph85.i.i.i.i40.preheader
  %n.vec294 = and i64 %.0.i.i.i.i.i.i.i.i27, 9223372036854775800 ; 3 uses
  %i.nz = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.nx, <4 x i32> <i32 4, i32 0, i32 0, i32 0>
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next301, %vector.body295 ] ; 2 uses
  %vec.phi297.a = phi <4 x i32> [ %i.nz, %vector.ph293 ], [ %i.oc, %vector.body295 ]
  %vec.phi298 = phi <4 x i32> [ zeroinitializer, %vector.ph293 ], [ %i.od, %vector.body295 ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index296 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %wide.load299.a = load <4 x i32>, ptr %i.oa, align 4, !tbaa !48
  %wide.load300 = load <4 x i32>, ptr %i.ob, align 4, !tbaa !48
  %i.oc = add <4 x i32> %wide.load299.a, %vec.phi297.a ; 2 uses
  %i.od = add <4 x i32> %wide.load300, %vec.phi298 ; 2 uses
  %index.next301 = add nuw i64 %index296, 8       ; 2 uses
  %i.oe = icmp eq i64 %index.next301, %n.vec294
  br i1 %i.oe, label %middle.block302, label %vector.body295, !llvm.loop !648

middle.block302:                                  ; preds = %vector.body295
  %bin.rdx303 = add <4 x i32> %i.od, %i.oc
  %i.of = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx303) ; 2 uses
  %cmp.n304 = icmp eq i64 %.0.i.i.i.i.i.i.i.i27, %n.vec294
  br i1 %cmp.n304, label %.preheader.i.i.i.i32, label %.lr.ph85.i.i.i.i40.preheader348

.lr.ph85.i.i.i.i40.preheader348:                  ; preds = %.lr.ph85.i.i.i.i40.preheader, %middle.block302
  %.05683.i.i.i.i41.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i40.preheader ], [ %n.vec294, %middle.block302 ]
  %.07582.i.i.i.i42.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i31, %.lr.ph85.i.i.i.i40.preheader ], [ %i.of, %middle.block302 ]
  br label %.lr.ph85.i.i.i.i40

.preheader.i.i.i.i32:                             ; preds = %.lr.ph85.i.i.i.i40, %middle.block302, %bb.ae
  %.075.lcssa.i.i.i.i33 = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i31, %bb.ae ], [ %i.of, %middle.block302 ], [ %i.ou, %.lr.ph85.i.i.i.i40 ] ; 3 uses
  %i.og = icmp slt i64 %i.my, %i.mk
  br i1 %i.og, label %.lr.ph89.i.i.i.i37.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58

.lr.ph89.i.i.i.i37.preheader:                     ; preds = %.preheader.i.i.i.i32
  %i.oh = add i64 %.0.i.i.i.i.i.i.i.i27, %i.mw
  %i.oi = sub i64 %i.mk, %i.oh                    ; 3 uses
  %min.iters.check308 = icmp ult i64 %i.oi, 8
  br i1 %min.iters.check308, label %.lr.ph89.i.i.i.i37.preheader343, label %vector.ph309

vector.ph309:                                     ; preds = %.lr.ph89.i.i.i.i37.preheader
  %n.vec310 = and i64 %i.oi, -8                   ; 3 uses
  %i.oj = add i64 %i.my, %n.vec310
  %i.ok = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i33, i64 0
  %i.ol = getelementptr [4 x i8], ptr %i.lz, i64 %i.my
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next317, %vector.body311 ] ; 2 uses
  %vec.phi313.a = phi <4 x i32> [ %i.ok, %vector.ph309 ], [ %i.oo, %vector.body311 ]
  %vec.phi314 = phi <4 x i32> [ zeroinitializer, %vector.ph309 ], [ %i.op, %vector.body311 ]
  %i.om = getelementptr [4 x i8], ptr %i.ol, i64 %index312 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %wide.load315.a = load <4 x i32>, ptr %i.om, align 4, !tbaa !48
  %wide.load316 = load <4 x i32>, ptr %i.on, align 4, !tbaa !48
  %i.oo = add <4 x i32> %wide.load315.a, %vec.phi313.a ; 2 uses
  %i.op = add <4 x i32> %wide.load316, %vec.phi314 ; 2 uses
  %index.next317 = add nuw i64 %index312, 8       ; 2 uses
  %i.oq = icmp eq i64 %index.next317, %n.vec310
  br i1 %i.oq, label %middle.block318, label %vector.body311, !llvm.loop !649

middle.block318:                                  ; preds = %vector.body311
  %bin.rdx319 = add <4 x i32> %i.op, %i.oo
  %i.or = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx319) ; 2 uses
  %cmp.n320 = icmp eq i64 %i.oi, %n.vec310
  br i1 %cmp.n320, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58, label %.lr.ph89.i.i.i.i37.preheader343

.lr.ph89.i.i.i.i37.preheader343:                  ; preds = %.lr.ph89.i.i.i.i37.preheader, %middle.block318
  %.05588.i.i.i.i38.ph = phi i64 [ %i.my, %.lr.ph89.i.i.i.i37.preheader ], [ %i.oj, %middle.block318 ]
  %.187.i.i.i.i39.ph = phi i32 [ %.075.lcssa.i.i.i.i33, %.lr.ph89.i.i.i.i37.preheader ], [ %i.or, %middle.block318 ]
  br label %.lr.ph89.i.i.i.i37

.lr.ph85.i.i.i.i40:                               ; preds = %.lr.ph85.i.i.i.i40.preheader348, %.lr.ph85.i.i.i.i40
  %.05683.i.i.i.i41 = phi i64 [ %i.ov, %.lr.ph85.i.i.i.i40 ], [ %.05683.i.i.i.i41.ph, %.lr.ph85.i.i.i.i40.preheader348 ] ; 2 uses
  %.07582.i.i.i.i42 = phi i32 [ %i.ou, %.lr.ph85.i.i.i.i40 ], [ %.07582.i.i.i.i42.ph, %.lr.ph85.i.i.i.i40.preheader348 ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.05683.i.i.i.i41
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !48
  %i.ou = add nsw i32 %i.ot, %.07582.i.i.i.i42    ; 2 uses
  %i.ov = add nuw nsw i64 %.05683.i.i.i.i41, 1    ; 2 uses
  %exitcond.not.i.i.i.i43 = icmp eq i64 %i.ov, %.0.i.i.i.i.i.i.i.i27
  br i1 %exitcond.not.i.i.i.i43, label %.preheader.i.i.i.i32, label %.lr.ph85.i.i.i.i40, !llvm.loop !650

.lr.ph89.i.i.i.i37:                               ; preds = %.lr.ph89.i.i.i.i37.preheader343, %.lr.ph89.i.i.i.i37
  %.05588.i.i.i.i38 = phi i64 [ %i.oz, %.lr.ph89.i.i.i.i37 ], [ %.05588.i.i.i.i38.ph, %.lr.ph89.i.i.i.i37.preheader343 ] ; 2 uses
  %.187.i.i.i.i39 = phi i32 [ %i.oy, %.lr.ph89.i.i.i.i37 ], [ %.187.i.i.i.i39.ph, %.lr.ph89.i.i.i.i37.preheader343 ]
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %.05588.i.i.i.i38
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !48
  %i.oy = add nsw i32 %i.ox, %.187.i.i.i.i39      ; 2 uses
  %i.oz = add nsw i64 %.05588.i.i.i.i38, 1        ; 2 uses
  %i.pa = icmp slt i64 %i.oz, %i.mk
  br i1 %i.pa, label %.lr.ph89.i.i.i.i37, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58, !llvm.loop !651

bb.af:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i26
  %i.pb = load i32, ptr %i.lz, align 4, !tbaa !48 ; 3 uses
  %i.pc = icmp sgt i64 %i.mk, 1
  br i1 %i.pc, label %.lr.ph94.i.i.i.i54.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58

.lr.ph94.i.i.i.i54.preheader:                     ; preds = %bb.af
  %i.pd = add nsw i64 %i.mk, -1                   ; 2 uses
  %min.iters.check324 = icmp ult i64 %i.mk, 9
  br i1 %min.iters.check324, label %.lr.ph94.i.i.i.i54.preheader340, label %vector.ph325

vector.ph325:                                     ; preds = %.lr.ph94.i.i.i.i54.preheader
  %n.vec326 = and i64 %i.pd, -8                   ; 3 uses
  %i.pe = or disjoint i64 %n.vec326, 1
  %i.pf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.pb, i64 0
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body327 ] ; 2 uses
  %vec.phi329.a = phi <4 x i32> [ %i.pf, %vector.ph325 ], [ %i.pj, %vector.body327 ]
  %vec.phi330 = phi <4 x i32> [ zeroinitializer, %vector.ph325 ], [ %i.pk, %vector.body327 ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index328 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 20
  %wide.load331.a = load <4 x i32>, ptr %i.ph, align 4, !tbaa !48
  %wide.load332 = load <4 x i32>, ptr %i.pi, align 4, !tbaa !48
  %i.pj = add <4 x i32> %wide.load331.a, %vec.phi329.a ; 2 uses
  %i.pk = add <4 x i32> %wide.load332, %vec.phi330 ; 2 uses
  %index.next333 = add nuw i64 %index328, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next333, %n.vec326
  br i1 %i.pl, label %middle.block334, label %vector.body327, !llvm.loop !652

middle.block334:                                  ; preds = %vector.body327
  %bin.rdx335 = add <4 x i32> %i.pk, %i.pj
  %i.pm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx335) ; 2 uses
  %cmp.n336 = icmp eq i64 %i.pd, %n.vec326
  br i1 %cmp.n336, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58, label %.lr.ph94.i.i.i.i54.preheader340

.lr.ph94.i.i.i.i54.preheader340:                  ; preds = %.lr.ph94.i.i.i.i54.preheader, %middle.block334
  %.092.i.i.i.i55.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i54.preheader ], [ %i.pe, %middle.block334 ]
  %.291.i.i.i.i56.ph = phi i32 [ %i.pb, %.lr.ph94.i.i.i.i54.preheader ], [ %i.pm, %middle.block334 ]
  br label %.lr.ph94.i.i.i.i54

.lr.ph94.i.i.i.i54:                               ; preds = %.lr.ph94.i.i.i.i54.preheader340, %.lr.ph94.i.i.i.i54
  %.092.i.i.i.i55 = phi i64 [ %i.pq, %.lr.ph94.i.i.i.i54 ], [ %.092.i.i.i.i55.ph, %.lr.ph94.i.i.i.i54.preheader340 ] ; 2 uses
  %.291.i.i.i.i56 = phi i32 [ %i.pp, %.lr.ph94.i.i.i.i54 ], [ %.291.i.i.i.i56.ph, %.lr.ph94.i.i.i.i54.preheader340 ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.092.i.i.i.i55
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !48
  %i.pp = add nsw i32 %i.po, %.291.i.i.i.i56      ; 2 uses
  %i.pq = add nuw nsw i64 %.092.i.i.i.i55, 1      ; 2 uses
  %exitcond102.not.i.i.i.i57 = icmp eq i64 %i.pq, %i.mk
  br i1 %exitcond102.not.i.i.i.i57, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58, label %.lr.ph94.i.i.i.i54, !llvm.loop !653

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58: ; preds = %.lr.ph89.i.i.i.i37, %.lr.ph94.i.i.i.i54, %middle.block318, %middle.block334, %.preheader.i.i.i.i32, %bb.af, %bb.x
  %.0.i36.in = phi i32 [ %i.mi, %bb.x ], [ %i.pp, %.lr.ph94.i.i.i.i54 ], [ %.075.lcssa.i.i.i.i33, %.preheader.i.i.i.i32 ], [ %i.pb, %bb.af ], [ %i.pm, %middle.block334 ], [ %i.or, %middle.block318 ], [ %i.oy, %.lr.ph89.i.i.i.i37 ]
  %i.pr = icmp sgt i32 %.0.i36.in, 0
  br i1 %i.pr, label %bb.ag, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread

bb.ag:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store i8 0, ptr %4, align 8, !tbaa !666, !alias.scope !667
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.ps, align 8, !alias.scope !667
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.er, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !667
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi2ELi2ELi1EE3runERS7_RSD_(ptr noundef nonnull align 8 dereferenceable(16) %i.ps, ptr noundef nonnull align 8 dereferenceable(19) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread: ; preds = %bb.y, %bb.ag, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58
  %i.pt = load i64, ptr %i.d, align 8, !tbaa !221
  %i.pu = icmp sgt i64 %i.pt, 0
  br i1 %i.pu, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit58.thread
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.4.8.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !221 ; 4 uses
  %i.py = icmp sgt i64 %i.px, 0
  br i1 %i.py, label %bb.ai, label %_ZN5Eigen8internal26permutation_matrix_productINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELb0ENS_10DenseShapeEE3runIS7_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS7_.exit

bb.ai:                                            ; preds = %bb.ah
  %calloc.i68 = call ptr @calloc(i64 1, i64 %i.px) ; 6 uses
  %i.pz = icmp eq ptr %calloc.i68, null
end_hunk_4
