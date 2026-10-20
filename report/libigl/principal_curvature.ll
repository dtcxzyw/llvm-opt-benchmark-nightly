Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/principal_curvature?download=true
inline.NumInlined: 17939
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 142
loop-unroll.NumUnrolled: 164
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bk, %bb.o ] ; 4 uses
  %i.bk = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bk)
  %i.bl = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.bm = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bn = getelementptr [8 x i8], ptr %i.bj, i64 %i.bm
  store ptr %i.bn, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bg, i64 noundef %i.bl, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.bo = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bp = getelementptr [8 x i8], ptr %i.au, i64 %i.bo
  store ptr %i.bp, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.bg, i64 noundef %i.bl, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.bq = icmp slt i64 %i.bk, %1
  br i1 %i.bq, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !1678

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.br = icmp slt i64 %i.bf, %2
  br i1 %i.br, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !1679

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bs = icmp slt i64 %i.aq, %0
  br i1 %i.bs, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !1680

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.t

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us199
  %.078195.us = phi i64 [ %i.bu, %..loopexit177_crit_edge.split.us199 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bu = add nsw i64 %.078195.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bu)
  %i.bv = sub nsw i64 %.sroa.speculated128.us, %.078195.us
  %i.bw = getelementptr [8 x i8], ptr %3, i64 %.078195.us
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.us, %.lr.ph183.us
  %.077182.us197 = phi i64 [ 0, %.lr.ph183.us ], [ %i.bx, %.loopexit.us ] ; 3 uses
  %i.bx = add nsw i64 %.077182.us197, %i.b        ; 3 uses
  %.sroa.speculated124.us198 = call i64 @llvm.smin.i64(i64 %2, i64 %i.bx)
  %i.by = sub nsw i64 %.sroa.speculated124.us198, %.077182.us197
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.bz = mul nsw i64 %.077182.us197, %4
  %i.ca = getelementptr [8 x i8], ptr %i.bw, i64 %i.bz
  store ptr %i.ca, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.by, i64 noundef %i.bv, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.cb = icmp slt i64 %i.bx, %2
  br i1 %i.cb, label %bb.p, label %..loopexit177_crit_edge.split.us199, !llvm.loop !1679

..loopexit177_crit_edge.split.us199:              ; preds = %.loopexit.us
  %i.cc = icmp slt i64 %i.bu, %0
  br i1 %i.cc, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !1680

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us200.us, %bb.p
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us199, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  ret void

bb.s:                                             ; preds = %.invoke
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp254, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bt, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.f) #29
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #33 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !79
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !80
  store i64 %3, ptr %i.c, align 8, !tbaa !81
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #25

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #25

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS2_IdLi2ELi1ELi0ELi2ELi1EEENS2_IdLi1ELi1ELi0ELi1ELi1EEEEENS_15ComputationInfoERT0_RT1_lbRT_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 16 dereferenceable(32) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.a, i64 0) ; 2 uses
  %5 = or disjoint i64 %smax, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %.lr.ph

.preheader96.sink.split:                          ; preds = %bb.b, %.lr.ph
  store double 0.000000e+00, ptr %1, align 8, !tbaa !74
  br label %.preheader96

.lr.ph:                                           ; preds = %.lr.ph.backedge, %bb.a
  %.065 = phi i64 [ 0, %bb.a ], [ %i.p, %.lr.ph.backedge ] ; 3 uses
  %i.e = load double, ptr %1, align 8, !tbaa !74  ; 2 uses
  %i.f = tail call noundef double @llvm.fabs.f64(double %i.e)
  %i.g = fcmp olt double %i.f, f0x0010000000000000
  br i1 %i.g, label %.preheader96.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = fmul double %i.e, f0x4330000000000000    ; 2 uses
  %i.i = fmul double %i.h, %i.h
  %i.j = load <2 x double>, ptr %0, align 16, !tbaa !74
  %i.k = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.j)
  %i.l = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.k)
  %i.m = fcmp ugt double %i.i, %i.l
  br i1 %i.m, label %.preheader96, label %.preheader96.sink.split

.preheader96:                                     ; preds = %bb.b, %.preheader96.sink.split
  %i.n = load double, ptr %1, align 8, !tbaa !74  ; 7 uses
  %i.o = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.o, label %.critedge.thread, label %.critedge, !llvm.loop !1681

.critedge:                                        ; preds = %.preheader96
  %i.p = add nuw nsw i64 %.065, 1
  %exitcond117.not = icmp eq i64 %.065, %smax
  br i1 %exitcond117.not, label %.critedge.thread, label %.critedge2

.critedge2:                                       ; preds = %.critedge
  %i.q = load double, ptr %0, align 16, !tbaa !74
  %i.r = load double, ptr %i.b, align 8, !tbaa !74 ; 2 uses
  %i.s = fsub double %i.q, %i.r
  %i.t = fmul double %i.s, 5.000000e-01           ; 4 uses
  %i.u = fcmp oeq double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge2
  %i.v = tail call noundef double @llvm.fabs.f64(double %i.n)
  br label %bb.g

bb.d:                                             ; preds = %.critedge2
  %i.w = fmul double %i.n, %i.n                   ; 2 uses
  %i.x = tail call noundef double @llvm.fabs.f64(double %i.t) ; 5 uses
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.n) ; 5 uses
  %i.z = fcmp oeq double %i.x, +inf
  %i.aa = fcmp oeq double %i.y, +inf
  %or.cond.i.i.i = or i1 %i.aa, %i.z
  br i1 %or.cond.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond.i.i.i.i = fcmp uno double %i.x, %i.y
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = fcmp olt double %i.x, %i.y              ; 2 uses
  %i.ac = select i1 %i.ab, double %i.y, double %i.x ; 2 uses
  %i.ad = select i1 %i.ab, double %i.x, double %i.y
  %i.ae = fdiv double %i.ad, %i.ac                ; 2 uses
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double 1.000000e+00)
  %sqrt.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.af)
  %i.ag = fmul double %i.ac, %sqrt.i.i.i.i
  br label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i

_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.1.i.i.i.i = phi double [ +qnan, %bb.e ], [ +inf, %bb.d ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ah = fcmp oeq double %i.w, 0.000000e+00
  %i.ai = fcmp ogt double %i.t, 0.000000e+00
  %i.aj = fneg double %.1.i.i.i.i
  %i.ak = select i1 %i.ai, double %.1.i.i.i.i, double %i.aj
  %i.al = fadd double %i.t, %i.ak                 ; 2 uses
  %i.am = fdiv double %i.al, %i.n
  %i.an = fdiv double %i.n, %i.am
  %i.ao = fdiv double %i.w, %i.al
  %.pn.i = select i1 %i.ah, double %i.an, double %i.ao
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, %bb.c
  %.pn = phi double [ %i.v, %bb.c ], [ %.pn.i, %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i ]
  %i.ap = load double, ptr %1, align 8, !tbaa !74 ; 6 uses
  %i.aq = fcmp une double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.h, label %.lr.ph.backedge

bb.h:                                             ; preds = %bb.g
  %.1.i = fsub double %i.r, %.pn
  %i.ar = load double, ptr %0, align 16, !tbaa !74
  %i.as = fsub double %i.ar, %.1.i                ; 5 uses
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = fcmp olt double %i.ap, 0.000000e+00
  %i.av = select i1 %i.au, double 1.000000e+00, double -1.000000e+00
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.ap)
  %i.ay = fcmp ogt double %i.aw, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = fdiv double %i.ap, %i.as                ; 3 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fadd double %i.ba, 1.000000e+00
  %i.bc = tail call double @sqrt(double noundef %i.bb) #29 ; 2 uses
  %i.bd = fcmp olt double %i.as, 0.000000e+00
  %i.be = fneg double %i.bc
  %.031.i.i.i = select i1 %i.bd, double %i.be, double %i.bc
  %i.bf = fdiv double 1.000000e+00, %.031.i.i.i   ; 2 uses
  %i.bg = fneg double %i.az
  %i.bh = fmul double %i.bf, %i.bg
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bi = fdiv double %i.as, %i.ap                ; 3 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fadd double %i.bj, 1.000000e+00
  %i.bl = tail call double @sqrt(double noundef %i.bk) #29 ; 2 uses
  %i.bm = fcmp olt double %i.ap, 0.000000e+00
  %i.bn = fneg double %i.bl
  %.0.i.i.i = select i1 %i.bm, double %i.bn, double %i.bl
  %i.bo = fdiv double -1.000000e+00, %.0.i.i.i    ; 2 uses
  %i.bp = fneg double %i.bi
  %i.bq = fmul double %i.bo, %i.bp
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.sroa.16.0.i = phi double [ %i.bo, %bb.l ], [ %i.av, %bb.i ], [ %i.bh, %bb.k ] ; 7 uses
  %.sroa.077.0.i = phi double [ %i.bq, %bb.l ], [ 0.000000e+00, %bb.i ], [ %i.bf, %bb.k ] ; 5 uses
  %i.br = load double, ptr %1, align 8, !tbaa !74 ; 4 uses
  %i.bs = fmul double %.sroa.077.0.i, %i.br
  %i.bt = load <2 x double>, ptr %0, align 16, !tbaa !74 ; 3 uses
  %i.bu = load double, ptr %i.c, align 8, !tbaa !74
  %i.bv = extractelement <2 x double> %i.bt, i64 0
  %i.bw = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.bv, double %i.bs)
  %i.bx = fmul double %.sroa.077.0.i, %i.bu
  %i.by = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.br, double %i.bx) ; 2 uses
  %i.bz = insertelement <2 x double> %i.bt, double %i.br, i64 0
  %i.ca = fneg <2 x double> %i.bz
  %i.cb = insertelement <2 x double> poison, double %.sroa.16.0.i, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cd = fmul <2 x double> %i.cc, %i.ca
  %i.ce = insertelement <2 x double> poison, double %.sroa.077.0.i, i64 0 ; 2 uses
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cg = insertelement <2 x double> %i.bt, double %i.br, i64 1
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cg, <2 x double> %i.cd) ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 1
  %i.cj = fneg double %i.ci
  %i.ck = fmul double %.sroa.16.0.i, %i.cj
  %i.cl = extractelement <2 x double> %i.ch, i64 0
  %i.cm = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cl, double %i.ck)
  store double %i.cm, ptr %0, align 16, !tbaa !74
  %i.cn = fneg double %i.by
  %i.co = insertelement <2 x double> %i.ce, double %.sroa.16.0.i, i64 1 ; 2 uses
  %i.cp = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.cn, i64 1
  %i.cr = fmul <2 x double> %i.co, %i.cq
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cu, <2 x double> %i.cs) ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 1
  store double %i.cw, ptr %i.c, align 8, !tbaa !74
  %i.cx = extractelement <2 x double> %i.cv, i64 0
  store double %i.cx, ptr %1, align 8, !tbaa !74
  br i1 %3, label %bb.n, label %.lr.ph.backedge

bb.n:                                             ; preds = %bb.m
  %i.cy = fcmp une double %.sroa.077.0.i, 1.000000e+00
  %i.cz = fcmp une double %.sroa.16.0.i, 0.000000e+00
  %or.cond.not18.i.i.i = or i1 %i.cz, %i.cy
  br i1 %or.cond.not18.i.i.i, label %.lr.ph.i.i.preheader.i.i, label %.lr.ph.backedge

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.n
  %i.da = fneg double %.sroa.16.0.i
  %i.db = load <2 x double>, ptr %i.d, align 16, !tbaa !74 ; 2 uses
  %i.dc = load <2 x double>, ptr %4, align 16, !tbaa !74 ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %i.da, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x double> %i.db, %i.de
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.dc, <2 x double> %i.df)
  store <2 x double> %i.dg, ptr %4, align 16, !tbaa !74
  %i.dh = fmul <2 x double> %i.cf, %i.db
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.dc, <2 x double> %i.dh)
  store <2 x double> %i.di, ptr %i.d, align 16, !tbaa !74
  br label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.lr.ph.i.i.preheader.i.i, %bb.n, %bb.m, %bb.g
  br label %.lr.ph, !llvm.loop !1682

.critedge.thread:                                 ; preds = %.preheader96, %.critedge
  %.1 = phi i64 [ %5, %.critedge ], [ %.065, %.preheader96 ]
  %.not73.not = icmp sgt i64 %.1, %i.a
  br i1 %.not73.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge.thread
  %i.dj = load double, ptr %0, align 16, !tbaa !74 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !74 ; 3 uses
  %i.dm = fcmp olt double %i.dl, %i.dj            ; 2 uses
  br i1 %3, label %.preheader.split.us.split, label %.preheader.split.split

.preheader.split.us.split:                        ; preds = %.preheader
  br i1 %i.dm, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.preheader.split.us.split
  store double %i.dl, ptr %0, align 16, !tbaa !74
  store double %i.dj, ptr %i.dk, align 8, !tbaa !74
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.do = load <2 x double>, ptr %i.dn, align 16, !tbaa !30
  %i.dp = load <2 x double>, ptr %4, align 16, !tbaa !30
  store <2 x double> %i.dp, ptr %i.dn, align 16, !tbaa !30
  store <2 x double> %i.do, ptr %4, align 16, !tbaa !30
  br label %.loopexit

.preheader.split.split:                           ; preds = %.preheader
  br i1 %i.dm, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.preheader.split.split
  store double %i.dl, ptr %0, align 16, !tbaa !74
  store double %i.dj, ptr %i.dk, align 8, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.split.us.split, %bb.o, %.preheader.split.split, %bb.p, %.critedge.thread
  %. = phi i32 [ 2, %.critedge.thread ], [ 0, %bb.p ], [ 0, %.preheader.split.split ], [ 0, %bb.o ], [ 0, %.preheader.split.us.split ]
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26tridiagonalization_inplaceINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS2_IdLi1ELi1ELi0ELi1ELi1EEEEEvRT_RT0_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.Eigen::VectorBlock.2248", align 8 ; 8 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.Eigen::VectorBlock.2174", align 8 ; 12 uses
  %4 = alloca %"class.Eigen::Product.2201", align 8 ; 21 uses
  %5 = alloca %"class.Eigen::VectorBlock.2234", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.5207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.6208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.8210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.7196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.8197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.9198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.8174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.10176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 112
  %.sroa.12178.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.sroa.13179.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 136
  %.sroa.15181.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 152
  %.sroa.16182.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 160
  %.sroa.18184.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = ptrtoint ptr %1 to i64
  %i.w = lshr exact i64 %i.v, 3
  %i.x = and i64 %i.w, 1                          ; 2 uses
  %.not = icmp eq i64 %i.x, 0                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.d, ptr %3, align 8, !tbaa !321, !alias.scope !1689
  store i64 1, ptr %i.e, align 8, !tbaa !135, !alias.scope !1689
  store ptr %0, ptr %i.f, align 8
  store ptr %0, ptr %.sroa.5207.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6208.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.8210.0..sroa_idx, align 8
  store i64 1, ptr %i.g, align 8, !tbaa !135, !alias.scope !1689
  store i64 2, ptr %i.h, align 8, !tbaa !1697, !alias.scope !1689
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %i.i, ptr %2, align 8, !tbaa !324
  store i64 0, ptr %i.j, align 8, !tbaa !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  store i64 1, ptr %i.l, align 8, !tbaa !135
  store i64 2, ptr %i.m, align 8, !tbaa !1702
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.aa = load double, ptr %i.c, align 8, !tbaa !74
  store ptr %i.n, ptr %4, align 8
  store i64 1, ptr %.sroa.4193.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5194.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6195.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.7196.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8197.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.9198.0..sroa_idx, align 8
  store i64 1, ptr %i.o, align 8, !alias.scope !1703
  store double %i.aa, ptr %i.p, align 8, !tbaa !187, !alias.scope !1703
  store ptr %i.d, ptr %i.q, align 8
  store i64 1, ptr %.sroa.8174.32..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10176.32..sroa_idx, align 8
  store ptr %0, ptr %.sroa.12178.32..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13179.32..sroa_idx, i8 0, i64 16, i1 false)
  store i64 2, ptr %.sroa.15181.32..sroa_idx, align 8
  store i64 1, ptr %.sroa.16182.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.18184.32..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %1, ptr %5, align 8, !tbaa !326, !alias.scope !1704
  store i64 1, ptr %i.r, align 8, !tbaa !135, !alias.scope !1704
  store ptr %1, ptr %i.s, align 8, !tbaa !104, !alias.scope !1704
  store i64 0, ptr %i.t, align 8, !tbaa !135, !alias.scope !1704
  store i64 1, ptr %i.u, align 8, !tbaa !1707, !alias.scope !1704
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.y, i1 false), !tbaa !74
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %1, i64 %i.y
  store i64 0, ptr %scevgep1.i.i.i.i.i, align 8
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !74
  call void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS2_INS2_IS4_Li2ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_INS3_IdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKd(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(192) %4, ptr noundef nonnull align 8 dereferenceable(129) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ab = load double, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  %i.ac = load double, ptr %1, align 8, !tbaa !74 ; 2 uses
  %i.ad = load double, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  br i1 %.not, label %.lr.ph.i17.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit
  %i.ae = load double, ptr %i.d, align 8, !tbaa !74
  br label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS9_INSA_17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IdLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit, %.lr.ph.i17.i.i.i.i.i.i
  %.sink = phi double [ %i.ae, %.lr.ph.i17.i.i.i.i.i.i ], [ %i.ad, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEE3dotINS1_INS1_INS2_IdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSB_17scalar_product_opIdSF_EEE10ReturnTypeERKNS0_ISD_EE.exit ]
  %i.af = fmul double %i.ab, -5.000000e-01
  %i.ag = fmul double %i.ac, %i.ad
  %i.ah = fmul double %i.af, %i.ag
  %i.ai = fmul double %i.ah, %.sink
  %i.aj = fadd double %i.ai, %i.ac                ; 3 uses
  store double %i.aj, ptr %1, align 8, !tbaa !74
  %i.ak = fneg double %i.aj
  %i.al = load double, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  %i.am = fmul double %i.al, %i.ak
  %i.an = fmul double %i.al, %i.aj
  %i.ao = fsub double %i.am, %i.an
  %i.ap = load double, ptr %i.n, align 8, !tbaa !74
  %i.aq = fadd double %i.ap, %i.ao
  store double %i.aq, ptr %i.n, align 8, !tbaa !74
  %i.ar = load double, ptr %i.b, align 8, !tbaa !74
  store double %i.ar, ptr %i.d, align 8, !tbaa !74
  store double %i.ab, ptr %1, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !135  ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !321    ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
end_hunk_0
