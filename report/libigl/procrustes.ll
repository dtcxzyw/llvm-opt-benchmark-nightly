Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/procrustes?download=true
inline.NumInlined: 3486
inline.NumDeleted: 1802
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN3igl10procrustesIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEES3_dNS2_IdLi2ELi2ELi0ELi2ELi2EEENS2_IdLi2ELi1ELi0ELi2ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EEbbRT1_RNS1_15PlainObjectBaseIT2_EERNSH_IT3_EE:bb.a
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.y, !llvm.loop !90

bb.z:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = load ptr, ptr %7, align 8, !tbaa !27
  call void @free(ptr noundef %i.gs) #19
  br label %.body51

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.y
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod175 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod175)
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = shl nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, 4
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.gv = load <2 x double>, ptr %i.gu, align 16, !tbaa !62
  %i.gw = fmul <2 x double> %i.fx, %i.gv
  %i.gx = fmul <2 x double> %i.gw, %.pre          ; 2 uses
  %shift167.epil = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop168.epil = fadd <2 x double> %i.gx, %shift167.epil
  %i.gy = extractelement <2 x double> %foldExtExtBinop168.epil, i64 0
  %i.gz = load double, ptr %i.gt, align 8, !tbaa !58
  %i.ha = fsub double %i.gz, %i.gy
  store double %i.ha, ptr %i.gt, align 8, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i.i.i.i.i.i.i.i
  %i.hb = load <2 x double>, ptr %i.fv, align 16, !tbaa !62
  store <2 x double> %i.hb, ptr %6, align 16, !tbaa !62
  call void @free(ptr noundef %i.fv) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.hc = load ptr, ptr %13, align 8, !tbaa !56
  call void @free(ptr noundef %i.hc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.hd = load ptr, ptr %11, align 8, !tbaa !56
  call void @free(ptr noundef %i.hd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.he = load ptr, ptr %10, align 8, !tbaa !56
  call void @free(ptr noundef %i.he) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.hf = load ptr, ptr %9, align 8, !tbaa !56
  call void @free(ptr noundef %i.hf) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @free(ptr noundef nonnull %i.r) #19
  call void @free(ptr noundef nonnull %i.a) #19
  ret void

.body51:                                          ; preds = %bb.z, %bb.w
  %.pn30 = phi { ptr, i32 } [ %i.ex, %bb.w ], [ %i.gr, %bb.z ]
  %i.hg = load ptr, ptr %13, align 8, !tbaa !56
  call void @free(ptr noundef %i.hg) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.hh = load ptr, ptr %11, align 8, !tbaa !56
  call void @free(ptr noundef %i.hh) #19
  br label %bb.aa

bb.aa:                                            ; preds = %.body51, %.body47
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30, %.body51 ], [ %i.bt, %.body47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.hi = load ptr, ptr %10, align 8, !tbaa !56
  call void @free(ptr noundef %i.hi) #19
  br label %.body43

.body43:                                          ; preds = %bb.j, %bb.aa
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn, %bb.aa ], [ %i.bb, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.hj = load ptr, ptr %9, align 8, !tbaa !56
  call void @free(ptr noundef %i.hj) #19
  br label %.body39

.body39:                                          ; preds = %bb.g, %.body43
  %.pn30.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn, %.body43 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @free(ptr noundef nonnull %i.r) #19
  br label %.body

.body:                                            ; preds = %bb.d, %.body39
  %.pn30.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn30.pn.pn.pn.pn, %.body39 ], [ %i.u, %bb.d ]
  call void @free(ptr noundef nonnull %i.a) #19
  resume { ptr, i32 } %.pn30.pn.pn.pn.pn.pn
}

declare void @_ZN3igl9polar_decIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi2ELi2ELi0ELi2ELi2EEES3_EEvRKNS1_10MatrixBaseIT_EEbRNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, ptr noundef nonnull align 16 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !29
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !27
  tail call void @free(ptr noundef %i.i) #19
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #20 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !27
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !29
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS2_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !94, !align !95 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !22 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %.not8.i.i.i = icmp eq i64 %i.f, 3
  %i.g = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  br i1 %.not8.i.i.i, label %.lr.ph.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.g) #19
  %i.h = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #20 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

bb.c:                                             ; preds = %bb.b
  store ptr %i.h, ptr %0, align 8, !tbaa !27
  store i64 3, ptr %i.e, align 8, !tbaa !29
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.a
  %i.k = phi ptr [ %i.h, %bb.c ], [ %i.g, %bb.a ] ; 6 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !96, !noalias !97 ; 28 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !12, !noalias !97 ; 25 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = icmp sgt i64 %i.n, 1                     ; 3 uses
  br i1 %i.o, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader.i.i, label %.lr.ph.split.preheader.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader.i.i: ; preds = %.lr.ph.i.i.i
  %i.q = fdiv double 0.000000e+00, %i.d           ; 3 uses
  store double %i.q, ptr %i.k, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store double %i.q, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store double %i.q, ptr %i.s, align 8, !tbaa !58
  br label %_ZN5Eigen8internal10AssignmentINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi1ELi3ELi1ELi1ELi3EEEEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS5_RKSN_RKSP_.exit

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %3 = ptrtoaddr ptr %i.l to i64
  %4 = and i64 %3, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %4, 0 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.preheader.i.i.i
  %5 = ptrtoint ptr %i.l to i64
  %i.t = lshr exact i64 %5, 3
  %i.u = and i64 %i.t, 1
  %i.v = tail call i64 @llvm.smin.i64(i64 %i.u, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.v, %bb.d ], [ %i.n, %.lr.ph.split.preheader.i.i.i ] ; 10 uses
  %i.w = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.x = sdiv i64 %i.w, 4
  %i.y = shl nsw i64 %i.x, 2                      ; 2 uses
  %i.z = sdiv i64 %i.w, 2
  %i.aa = shl nsw i64 %i.z, 1                     ; 2 uses
  %i.ab = add nsw i64 %i.y, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ac = add nsw i64 %i.aa, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i = add i64 %i.w, 1
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i
  %i.ad = getelementptr [8 x i8], ptr %i.l, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !62 ; 3 uses
  %i.af = icmp sgt i64 %i.w, 3
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  %i.ah = load <2 x double>, ptr %i.ag, align 1, !tbaa !62 ; 2 uses
  %i.ai = icmp samesign ugt i64 %i.w, 7
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.f
  %.05478.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.f
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ah, %bb.f ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ae, %bb.f ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = fadd <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i, %.073.lcssa.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ak = icmp sgt i64 %i.aa, %i.y
  br i1 %i.ak, label %bb.g, label %bb.h

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.05482.i.i.i.i.i.i.i.i.i.i
  %i.am = load <2 x double>, ptr %i.al, align 1, !tbaa !62
  %i.an = fadd <2 x double> %.07380.i.i.i.i.i.i.i.i.i.i, %i.am ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.l, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  %i.aq = load <2 x double>, ptr %i.ap, align 1, !tbaa !62
  %i.ar = fadd <2 x double> %.07679.i.i.i.i.i.i.i.i.i.i, %i.aq ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.as = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i, %i.ab
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !100

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ab
  %i.au = load <2 x double>, ptr %i.at, align 1, !tbaa !62
  %i.av = fadd <2 x double> %i.aj, %i.au
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.e
  %.275.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ae, %bb.e ], [ %i.av, %bb.g ], [ %i.aj, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.275.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.275.i.i.i.i.i.i.i.i.i.i, %shift
  %i.aw = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ax = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ax, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.h
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 3 uses
  %i.ay = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ay, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cj, %.preheader.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.aw, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ci, %.preheader.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bc, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bb, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i.epil
  %i.ba = load double, ptr %i.az, align 8, !tbaa !58
  %i.bb = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.epil, %i.ba ; 2 uses
  %i.bc = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !101

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil, %bb.h
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i = phi double [ %i.aw, %bb.h ], [ %i.ci, %.preheader.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.bd = icmp slt i64 %i.ac, %i.n
  br i1 %i.bd, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cj, %.lr.ph87.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.07284.i.i.i.i.i.i.i.i.i.i = phi double [ %i.aw, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ci, %.lr.ph87.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph87.i.i.i.i.i.i.i.i.i.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !58
  %i.bg = fadd double %.07284.i.i.i.i.i.i.i.i.i.i, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !58
  %i.bk = fadd double %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !58
  %i.bo = fadd double %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load double, ptr %i.bq, align 8, !tbaa !58
  %i.bs = fadd double %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !58
  %i.bw = fadd double %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load double, ptr %i.by, align 8, !tbaa !58
  %i.ca = fadd double %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !58
  %i.ce = fadd double %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05385.i.i.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !58
  %i.ci = fadd double %i.ce, %i.ch                ; 3 uses
  %i.cj = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i, !llvm.loop !102

.lr.ph91.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i
  %.05290.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph91.i.i.i.i.i.i.i.i.i.i ], [ %i.ac, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cm, %.lr.ph91.i.i.i.i.i.i.i.i.i.i ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.05290.i.i.i.i.i.i.i.i.i.i
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !58
  %i.cm = fadd double %.189.i.i.i.i.i.i.i.i.i.i, %i.cl ; 2 uses
  %i.cn = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.co = icmp slt i64 %i.cn, %i.n
  br i1 %i.co, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i, !llvm.loop !103

bb.i:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i
  %i.cp = load double, ptr %i.l, align 8, !tbaa !58 ; 3 uses
  br i1 %i.p, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.i
  %i.cq = add nsw i64 %i.n, -1                    ; 2 uses
  %i.cr = add nsw i64 %i.n, -2
  %xtraiter90 = and i64 %i.cq, 7                  ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 7
  br i1 %i.cs, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter95 = and i64 %i.cq, -8
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.094.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.dy, %.lr.ph96.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.293.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cp, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.dx, %.lr.ph96.i.i.i.i.i.i.i.i.i.i ]
  %niter96 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter96.next.7, %.lr.ph96.i.i.i.i.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !58
  %i.cv = fadd double %.293.i.i.i.i.i.i.i.i.i.i, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !58
  %i.cz = fadd double %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !58
  %i.dd = fadd double %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load double, ptr %i.df, align 8, !tbaa !58
  %i.dh = fadd double %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !58
  %i.dl = fadd double %i.dh, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load double, ptr %i.dn, align 8, !tbaa !58
  %i.dp = fadd double %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !58
  %i.dt = fadd double %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !58
  %i.dx = fadd double %i.dt, %i.dw                ; 3 uses
  %i.dy = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter96.next.7 = add i64 %niter96, 8           ; 2 uses
  %niter96.ncmp.7 = icmp eq i64 %niter96.next.7, %unroll_iter95
  br i1 %niter96.ncmp.7, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i, !llvm.loop !104

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod92.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod92.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.cp, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter90, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.ec, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil ], [ %.094.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.eb, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil ], [ %.293.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter91 = phi i64 [ %epil.iter91.next, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.094.i.i.i.i.i.i.i.i.i.i.epil
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !58
  %i.eb = fadd double %.293.i.i.i.i.i.i.i.i.i.i.epil, %i.ea ; 2 uses
  %i.ec = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter91.next = add i64 %epil.iter91, 1     ; 2 uses
  %epil.iter91.cmp.not = icmp eq i64 %epil.iter91.next, %xtraiter90
  br i1 %epil.iter91.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !105

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i: ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil, %bb.i, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi double [ %i.eb, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.epil ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.cp, %bb.i ], [ %i.dx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.loopexit.unr-lcssa ], [ %i.cm, %.lr.ph91.i.i.i.i.i.i.i.i.i.i ]
  %i.ed = fdiv double %.0.i.i.i.i.i.i.i.i, %i.d
  store double %i.ed, ptr %i.k, align 8, !tbaa !58
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.n ; 25 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.1

bb.j:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i
  %6 = ptrtoint ptr %i.ee to i64
  %i.ef = lshr exact i64 %6, 3
  %i.eg = and i64 %i.ef, 1
  %i.eh = tail call i64 @llvm.smin.i64(i64 %i.eg, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.1

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.1: ; preds = %bb.j, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.eh, %bb.j ], [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i ] ; 10 uses
  %i.ei = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ; 5 uses
  %i.ej = sdiv i64 %i.ei, 4
  %i.ek = shl nsw i64 %i.ej, 2                    ; 2 uses
  %i.el = sdiv i64 %i.ei, 2
  %i.em = shl nsw i64 %i.el, 1                    ; 2 uses
  %i.en = add nsw i64 %i.ek, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.eo = add nsw i64 %i.em, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.1 = add i64 %i.ei, 1
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.1, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.1
  %i.ep = getelementptr [8 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.eq = load <2 x double>, ptr %i.ep, align 1, !tbaa !62 ; 3 uses
  %i.er = icmp sgt i64 %i.ei, 3
  br i1 %i.er, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.es = getelementptr i8, ptr %i.ep, i64 16
  %i.et = load <2 x double>, ptr %i.es, align 1, !tbaa !62 ; 2 uses
  %i.eu = icmp samesign ugt i64 %i.ei, 7
  br i1 %i.eu, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.1:           ; preds = %bb.l
  %.05478.i.i.i.i.i.i.i.i.i.i.1 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.1
  %.05482.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ], [ %.05478.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.1 ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.1 ]
  %.07380.i.i.i.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.eq, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.1 ]
  %.07679.i.i.i.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.et, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.1 ]
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %.05482.i.i.i.i.i.i.i.i.i.i.1
  %i.ew = load <2 x double>, ptr %i.ev, align 1, !tbaa !62
  %i.ex = fadd <2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.1, %i.ew ; 2 uses
  %i.ey = getelementptr [8 x i8], ptr %i.ee, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.1
  %i.ez = getelementptr i8, ptr %i.ey, i64 48
  %i.fa = load <2 x double>, ptr %i.ez, align 1, !tbaa !62
  %i.fb = fadd <2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.1, %i.fa ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.1 = add nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.1, 4 ; 2 uses
  %i.fc = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.1, %i.en
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.1, !llvm.loop !100

._crit_edge.i.i.i.i.i.i.i.i.i.i.1:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %bb.l
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.et, %bb.l ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.eq, %bb.l ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ]
  %i.fd = fadd <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.1, %.073.lcssa.i.i.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.fe = icmp sgt i64 %i.em, %i.ek
  br i1 %i.fe, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.1
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.en
  %i.fg = load <2 x double>, ptr %i.ff, align 1, !tbaa !62
  %i.fh = fadd <2 x double> %i.fd, %i.fg
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i.i.i.i.i.i.1, %bb.k
  %.275.i.i.i.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.eq, %bb.k ], [ %i.fh, %bb.m ], [ %i.fd, %._crit_edge.i.i.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  %shift57 = shufflevector <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.1, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop58 = fadd <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.1, %shift57
  %i.fi = extractelement <2 x double> %foldExtExtBinop58, i64 0 ; 3 uses
  %i.fj = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 0
  br i1 %i.fj, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.1

.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader:         ; preds = %bb.n
  %xtraiter105 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 7 ; 3 uses
  %i.fk = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 8
  br i1 %i.fk, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader.new:     ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader
  %unroll_iter110 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1

.lr.ph87.i.i.i.i.i.i.i.i.i.i.1:                   ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader.new ], [ %i.gq, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1 ] ; 9 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.1 = phi double [ %i.fi, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader.new ], [ %i.gp, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1 ]
  %niter111 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader.new ], [ %niter111.next.7, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1 ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !58
  %i.fn = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.1, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !58
  %i.fr = fadd double %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !58
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !58
  %i.fz = fadd double %i.fv, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !58
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !58
  %i.gh = fadd double %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !58
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.go = load double, ptr %i.gn, align 8, !tbaa !58
  %i.gp = fadd double %i.gl, %i.go                ; 3 uses
  %i.gq = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.1, 8 ; 2 uses
  %niter111.next.7 = add nuw nsw i64 %niter111, 8 ; 2 uses
  %niter111.ncmp.7 = icmp eq i64 %niter111.next.7, %unroll_iter110
  br i1 %niter111.ncmp.7, label %.preheader.i.i.i.i.i.i.i.i.i.i.1.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1, !llvm.loop !102

.preheader.i.i.i.i.i.i.i.i.i.i.1.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1
  %lcmp.mod107.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.1, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil.preheader:    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.1.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader ], [ %i.gq, %.preheader.i.i.i.i.i.i.i.i.i.i.1.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.1.epil.init = phi double [ %i.fi, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.preheader ], [ %i.gp, %.preheader.i.i.i.i.i.i.i.i.i.i.1.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter105, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil:              ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.1.epil = phi i64 [ %i.gu, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.1.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.1.epil = phi double [ %i.gt, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.1.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil.preheader ]
  %epil.iter106 = phi i64 [ %epil.iter106.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil.preheader ]
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.05385.i.i.i.i.i.i.i.i.i.i.1.epil
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !58
  %i.gt = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.1.epil, %i.gs ; 2 uses
  %i.gu = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.1.epil, 1
  %epil.iter106.next = add i64 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i64 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.1, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil, !llvm.loop !106

.preheader.i.i.i.i.i.i.i.i.i.i.1:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.1.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil, %bb.n
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.1 = phi double [ %i.fi, %bb.n ], [ %i.gp, %.preheader.i.i.i.i.i.i.i.i.i.i.1.loopexit.unr-lcssa ], [ %i.gt, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.1.epil ] ; 2 uses
  %i.gv = icmp slt i64 %i.eo, %i.n
  br i1 %i.gv, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1

.lr.ph91.i.i.i.i.i.i.i.i.i.i.1:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.1
  %.05290.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.gz, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.eo, %.preheader.i.i.i.i.i.i.i.i.i.i.1 ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.1 = phi double [ %i.gy, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.1 ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.i.i.i.i.1 ]
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %.05290.i.i.i.i.i.i.i.i.i.i.1
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !58
  %i.gy = fadd double %.189.i.i.i.i.i.i.i.i.i.i.1, %i.gx ; 2 uses
  %i.gz = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.1, 1 ; 2 uses
  %i.ha = icmp slt i64 %i.gz, %i.n
  br i1 %i.ha, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1, !llvm.loop !103

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.1
  %i.hb = load double, ptr %i.ee, align 8, !tbaa !58 ; 3 uses
  br i1 %i.p, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1

.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader:         ; preds = %bb.o
  %i.hc = add nsw i64 %i.n, -1                    ; 2 uses
  %i.hd = add nsw i64 %i.n, -2
  %xtraiter112 = and i64 %i.hc, 7                 ; 3 uses
  %i.he = icmp ult i64 %i.hd, 7
  br i1 %i.he, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader.new

.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader.new:     ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader
  %unroll_iter117 = and i64 %i.hc, -8
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1

.lr.ph96.i.i.i.i.i.i.i.i.i.i.1:                   ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader.new
  %.094.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader.new ], [ %i.ik, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1 ] ; 9 uses
  %.293.i.i.i.i.i.i.i.i.i.i.1 = phi double [ %i.hb, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader.new ], [ %i.ij, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1 ]
  %niter118 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader.new ], [ %niter118.next.7, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1 ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !58
  %i.hh = fadd double %.293.i.i.i.i.i.i.i.i.i.i.1, %i.hg
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !58
  %i.hl = fadd double %i.hh, %i.hk
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !58
  %i.hp = fadd double %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !58
  %i.ht = fadd double %i.hp, %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !58
  %i.hx = fadd double %i.ht, %i.hw
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !58
  %i.ib = fadd double %i.hx, %i.ia
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load double, ptr %i.id, align 8, !tbaa !58
  %i.if = fadd double %i.ib, %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !58
  %i.ij = fadd double %i.if, %i.ii                ; 3 uses
  %i.ik = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.1, 8 ; 2 uses
  %niter118.next.7 = add i64 %niter118, 8         ; 2 uses
  %niter118.ncmp.7 = icmp eq i64 %niter118.next.7, %unroll_iter117
  br i1 %niter118.ncmp.7, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1, !llvm.loop !104

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1
  %lcmp.mod114.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod114.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil.preheader:    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.1.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader ], [ %i.ik, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.i.i.i.1.epil.init = phi double [ %i.hb, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.preheader ], [ %i.ij, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter112, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil

.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil:              ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.1.epil = phi i64 [ %i.io, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil ], [ %.094.i.i.i.i.i.i.i.i.i.i.1.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.i.i.i.1.epil = phi double [ %i.in, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil ], [ %.293.i.i.i.i.i.i.i.i.i.i.1.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil.preheader ]
  %epil.iter113 = phi i64 [ %epil.iter113.next, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil.preheader ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.094.i.i.i.i.i.i.i.i.i.i.1.epil
  %i.im = load double, ptr %i.il, align 8, !tbaa !58
  %i.in = fadd double %.293.i.i.i.i.i.i.i.i.i.i.1.epil, %i.im ; 2 uses
  %i.io = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.1.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil, !llvm.loop !107

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1: ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil, %bb.o, %.preheader.i.i.i.i.i.i.i.i.i.i.1
  %.0.i.i.i.i.i.i.i.i.1 = phi double [ %i.in, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.1.epil ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.hb, %bb.o ], [ %i.ij, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1.loopexit.unr-lcssa ], [ %i.gy, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.1 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.iq = fdiv double %.0.i.i.i.i.i.i.i.i.1, %i.d
  store double %i.iq, ptr %i.ip, align 8, !tbaa !58
  %.idx = shl nsw i64 %i.n, 4
  %i.ir = getelementptr inbounds i8, ptr %i.l, i64 %.idx ; 25 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.2

bb.p:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1
  %7 = ptrtoint ptr %i.ir to i64
  %i.is = lshr exact i64 %7, 3
  %i.it = and i64 %i.is, 1
  %i.iu = tail call i64 @llvm.smin.i64(i64 %i.it, i64 %i.n)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.2

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.2: ; preds = %bb.p, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ %i.iu, %bb.p ], [ %i.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.1 ] ; 10 uses
  %i.iv = sub nsw i64 %i.n, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ; 5 uses
  %i.iw = sdiv i64 %i.iv, 4
  %i.ix = shl nsw i64 %i.iw, 2                    ; 2 uses
  %i.iy = sdiv i64 %i.iv, 2
  %i.iz = shl nsw i64 %i.iy, 1                    ; 2 uses
  %i.ja = add nsw i64 %i.ix, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ; 2 uses
  %i.jb = add nsw i64 %i.iz, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.2 = add i64 %i.iv, 1
  %.not.i.i.i.i.i.i.i.i.i.i.2 = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.2, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.2, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.2
  %i.jc = getelementptr [8 x i8], ptr %i.ir, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ; 2 uses
  %i.jd = load <2 x double>, ptr %i.jc, align 1, !tbaa !62 ; 3 uses
  %i.je = icmp sgt i64 %i.iv, 3
  br i1 %i.je, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.jf = getelementptr i8, ptr %i.jc, i64 16
  %i.jg = load <2 x double>, ptr %i.jf, align 1, !tbaa !62 ; 2 uses
  %i.jh = icmp samesign ugt i64 %i.iv, 7
  br i1 %i.jh, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.2, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.2:           ; preds = %bb.r
  %.05478.i.i.i.i.i.i.i.i.i.i.2 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.i.i.i.2:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.2
  %.05482.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ], [ %.05478.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.2 ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.2 ]
  %.07380.i.i.i.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.jd, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.2 ]
  %.07679.i.i.i.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.jo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.jg, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %.05482.i.i.i.i.i.i.i.i.i.i.2
  %i.jj = load <2 x double>, ptr %i.ji, align 1, !tbaa !62
  %i.jk = fadd <2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.2, %i.jj ; 2 uses
  %i.jl = getelementptr [8 x i8], ptr %i.ir, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.2
  %i.jm = getelementptr i8, ptr %i.jl, i64 48
  %i.jn = load <2 x double>, ptr %i.jm, align 1, !tbaa !62
  %i.jo = fadd <2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.2, %i.jn ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.2 = add nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.2, 4 ; 2 uses
  %i.jp = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.2, %i.ja
  br i1 %i.jp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.2, !llvm.loop !100

._crit_edge.i.i.i.i.i.i.i.i.i.i.2:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, %bb.r
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.jg, %bb.r ], [ %i.jo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.jd, %bb.r ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.jq = fadd <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.2, %.073.lcssa.i.i.i.i.i.i.i.i.i.i.2 ; 2 uses
  %i.jr = icmp sgt i64 %i.iz, %i.ix
  br i1 %i.jr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.2
  %i.js = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.ja
  %i.jt = load <2 x double>, ptr %i.js, align 1, !tbaa !62
  %i.ju = fadd <2 x double> %i.jq, %i.jt
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i.i.i.i.i.i.i.i.2, %bb.q
  %.275.i.i.i.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.jd, %bb.q ], [ %i.ju, %bb.s ], [ %i.jq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.2 ] ; 2 uses
  %shift60 = shufflevector <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.2, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop61 = fadd <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.2, %shift60
  %i.jv = extractelement <2 x double> %foldExtExtBinop61, i64 0 ; 3 uses
  %i.jw = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, 0
  br i1 %i.jw, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.2

.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader:         ; preds = %bb.t
  %xtraiter119 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, 7 ; 3 uses
  %i.jx = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, 8
  br i1 %i.jx, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader.new:     ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader
  %unroll_iter124 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2

.lr.ph87.i.i.i.i.i.i.i.i.i.i.2:                   ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %i.ld, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2 ] ; 9 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.jv, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %i.lc, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2 ]
  %niter125 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %niter125.next.7, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !58
  %i.ka = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.2, %i.jz
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !58
  %i.ke = fadd double %i.ka, %i.kd
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !58
  %i.ki = fadd double %i.ke, %i.kh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !58
  %i.km = fadd double %i.ki, %i.kl
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !58
  %i.kq = fadd double %i.km, %i.kp
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !58
  %i.ku = fadd double %i.kq, %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !58
  %i.ky = fadd double %i.ku, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 56
  %i.lb = load double, ptr %i.la, align 8, !tbaa !58
  %i.lc = fadd double %i.ky, %i.lb                ; 3 uses
  %i.ld = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.2, 8 ; 2 uses
  %niter125.next.7 = add nuw nsw i64 %niter125, 8 ; 2 uses
  %niter125.ncmp.7 = icmp eq i64 %niter125.next.7, %unroll_iter124
  br i1 %niter125.ncmp.7, label %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2, !llvm.loop !102

.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2
  %lcmp.mod121.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.2, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader:    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %i.ld, %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi double [ %i.jv, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %i.lc, %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter119, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil:              ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.2.epil = phi i64 [ %i.lh, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.2.epil = phi double [ %i.lg, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ]
  %epil.iter120 = phi i64 [ %epil.iter120.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ]
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2.epil
  %i.lf = load double, ptr %i.le, align 8, !tbaa !58
  %i.lg = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.2.epil, %i.lf ; 2 uses
  %i.lh = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.2.epil, 1
  %epil.iter120.next = add i64 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i64 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.2, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil, !llvm.loop !108

.preheader.i.i.i.i.i.i.i.i.i.i.2:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil, %bb.t
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.jv, %bb.t ], [ %i.lc, %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ], [ %i.lg, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil ] ; 2 uses
  %i.li = icmp slt i64 %i.jb, %i.n
  br i1 %i.li, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2

.lr.ph91.i.i.i.i.i.i.i.i.i.i.2:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2
  %.05290.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ %i.lm, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.jb, %.preheader.i.i.i.i.i.i.i.i.i.i.2 ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.ll, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2 ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %.05290.i.i.i.i.i.i.i.i.i.i.2
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !58
  %i.ll = fadd double %.189.i.i.i.i.i.i.i.i.i.i.2, %i.lk ; 2 uses
  %i.lm = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.2, 1 ; 2 uses
  %i.ln = icmp slt i64 %i.lm, %i.n
  br i1 %i.ln, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2, !llvm.loop !103

bb.u:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.2
  %i.lo = load double, ptr %i.ir, align 8, !tbaa !58 ; 3 uses
  br i1 %i.p, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader:         ; preds = %bb.u
  %i.lp = add nsw i64 %i.n, -1                    ; 2 uses
  %i.lq = add nsw i64 %i.n, -2
  %xtraiter126 = and i64 %i.lp, 7                 ; 3 uses
  %i.lr = icmp ult i64 %i.lq, 7
  br i1 %i.lr, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new:     ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader
  %unroll_iter131 = and i64 %i.lp, -8
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2:                   ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new
  %.094.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %i.mx, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ] ; 9 uses
  %.293.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.lo, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %i.mw, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ]
  %niter132 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %niter132.next.7, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !58
  %i.lu = fadd double %.293.i.i.i.i.i.i.i.i.i.i.2, %i.lt
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !58
  %i.ly = fadd double %i.lu, %i.lx
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !58
  %i.mc = fadd double %i.ly, %i.mb
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mf = load double, ptr %i.me, align 8, !tbaa !58
  %i.mg = fadd double %i.mc, %i.mf
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !58
  %i.mk = fadd double %i.mg, %i.mj
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !58
  %i.mo = fadd double %i.mk, %i.mn
end_hunk_0
