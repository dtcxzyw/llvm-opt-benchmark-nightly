Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/principal_curvature?download=true
inline.NumInlined: 17939
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 142
loop-unroll.NumUnrolled: 164
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
  %i.bs = icmp slt i64 %i.bg, %2
  br i1 %i.bs, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !1679

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bt = icmp slt i64 %i.ar, %0
  br i1 %i.bt, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !1680

.split.us188.split.split.us.split.us:             ; preds = %.lr.ph183.split.us.split.us200.us
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

.split180.split.us.split.us.split.us:             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.split.us188.split.us.split.us.split.us:          ; preds = %.lr.ph183.split.us.split.us.us.us
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.x

.split180.us.split.us.split.us.split.us.split.us: ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us199
  %.078195.us = phi i64 [ %i.bz, %..loopexit177_crit_edge.split.us199 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bz = add nsw i64 %.078195.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bz)
  %i.ca = sub nsw i64 %.sroa.speculated128.us, %.078195.us
  %i.cb = getelementptr [8 x i8], ptr %3, i64 %.078195.us
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.us, %.lr.ph183.us
  %.077182.us197 = phi i64 [ 0, %.lr.ph183.us ], [ %i.cc, %.loopexit.us ] ; 3 uses
  %i.cc = add nsw i64 %.077182.us197, %i.b        ; 3 uses
  %.sroa.speculated124.us198 = call i64 @llvm.smin.i64(i64 %2, i64 %i.cc)
  %i.cd = sub nsw i64 %.sroa.speculated124.us198, %.077182.us197
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.ce = mul nsw i64 %.077182.us197, %4
  %i.cf = getelementptr [8 x i8], ptr %i.cb, i64 %i.ce
  store ptr %i.cf, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.cd, i64 noundef %i.ca, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us

.loopexit.us:                                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  %i.cg = icmp slt i64 %i.cc, %2
  br i1 %i.cg, label %bb.r, label %..loopexit177_crit_edge.split.us199, !llvm.loop !1679

..loopexit177_crit_edge.split.us199:              ; preds = %.loopexit.us
  %i.ch = icmp slt i64 %i.bz, %0
  br i1 %i.ch, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !1680

.split.split.us:                                  ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us199, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.l
  br i1 %i.ai, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.s:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ag) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.s
  br i1 %i.u, label %bb.t, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.t:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  ret void

bb.u:                                             ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.v:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

.split.us188:                                     ; preds = %.split.us188.split.split.us.split.us, %.split.us188.split.us.split.us.split.us, %.split.split.us
  %.us-phi = phi { ptr, i32 } [ %i.ci, %.split.split.us ], [ %i.bu, %.split.us188.split.split.us.split.us ], [ %i.bw, %.split.us188.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.x

bb.w:                                             ; preds = %.split180.us.split.us.split.us.split.us.split.us, %.split180.split.us.split.us.split.us
  %.us-phi181 = phi { ptr, i32 } [ %i.bv, %.split180.split.us.split.us.split.us ], [ %i.by, %.split180.us.split.us.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.x

bb.x:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %bb.w, %.split.us188
  %.pn.pn = phi { ptr, i32 } [ %.us-phi, %.split.us188 ], [ %.us-phi181, %bb.w ], [ %i.bx, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ai, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ag) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.x, %bb.y, %bb.v, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %i.ck, %bb.v ], [ %.pn.pn, %bb.y ], [ %.pn.pn, %bb.x ]
  br i1 %i.u, label %bb.z, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.z:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.z
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
  %i.b = or disjoint i64 %smax, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %.lr.ph

.preheader96.sink.split:                          ; preds = %bb.b, %.lr.ph
  store double 0.000000e+00, ptr %1, align 8, !tbaa !74
  br label %.preheader96

.lr.ph:                                           ; preds = %.lr.ph.backedge, %bb.a
  %.065 = phi i64 [ 0, %bb.a ], [ %i.q, %.lr.ph.backedge ] ; 3 uses
  %i.f = load double, ptr %1, align 8, !tbaa !74  ; 2 uses
  %i.g = tail call noundef double @llvm.fabs.f64(double %i.f)
  %i.h = fcmp olt double %i.g, f0x0010000000000000
  br i1 %i.h, label %.preheader96.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = fmul double %i.f, f0x4330000000000000    ; 2 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = load <2 x double>, ptr %0, align 16, !tbaa !74
  %i.l = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.k)
  %i.m = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.l)
  %i.n = fcmp ugt double %i.j, %i.m
  br i1 %i.n, label %.preheader96, label %.preheader96.sink.split

.preheader96:                                     ; preds = %bb.b, %.preheader96.sink.split
  %i.o = load double, ptr %1, align 8, !tbaa !74  ; 7 uses
  %i.p = fcmp oeq double %i.o, 0.000000e+00
  br i1 %i.p, label %.critedge.thread, label %.critedge, !llvm.loop !1681

.critedge:                                        ; preds = %.preheader96
  %i.q = add nuw nsw i64 %.065, 1
  %exitcond117.not = icmp eq i64 %.065, %smax
  br i1 %exitcond117.not, label %.critedge.thread, label %.critedge2

.critedge2:                                       ; preds = %.critedge
  %i.r = load double, ptr %0, align 16, !tbaa !74
  %i.s = load double, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  %i.t = fsub double %i.r, %i.s
  %i.u = fmul double %i.t, 5.000000e-01           ; 4 uses
  %i.v = fcmp oeq double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge2
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.o)
  br label %bb.g

bb.d:                                             ; preds = %.critedge2
  %i.x = fmul double %i.o, %i.o                   ; 2 uses
  %i.y = tail call noundef double @llvm.fabs.f64(double %i.u) ; 5 uses
  %i.z = tail call noundef double @llvm.fabs.f64(double %i.o) ; 5 uses
  %i.aa = fcmp oeq double %i.y, +inf
  %i.ab = fcmp oeq double %i.z, +inf
  %or.cond.i.i.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond.i.i.i.i = fcmp uno double %i.y, %i.z
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = fcmp olt double %i.y, %i.z              ; 2 uses
  %i.ad = select i1 %i.ac, double %i.z, double %i.y ; 2 uses
  %i.ae = select i1 %i.ac, double %i.y, double %i.z
  %i.af = fdiv double %i.ae, %i.ad                ; 2 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double 1.000000e+00)
  %sqrt.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.ag)
  %i.ah = fmul double %i.ad, %sqrt.i.i.i.i
  br label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i

_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.1.i.i.i.i = phi double [ +qnan, %bb.e ], [ +inf, %bb.d ], [ %i.ah, %bb.f ] ; 2 uses
  %i.ai = fcmp oeq double %i.x, 0.000000e+00
  %i.aj = fcmp ogt double %i.u, 0.000000e+00
  %i.ak = fneg double %.1.i.i.i.i
  %i.al = select i1 %i.aj, double %.1.i.i.i.i, double %i.ak
  %i.am = fadd double %i.u, %i.al                 ; 2 uses
  %i.an = fdiv double %i.am, %i.o
  %i.ao = fdiv double %i.o, %i.an
  %i.ap = fdiv double %i.x, %i.am
  %.pn.i = select i1 %i.ai, double %i.ao, double %i.ap
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, %bb.c
  %.pn = phi double [ %i.w, %bb.c ], [ %.pn.i, %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i ]
  %i.aq = load double, ptr %1, align 8, !tbaa !74 ; 6 uses
  %i.ar = fcmp une double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.h, label %.lr.ph.backedge

bb.h:                                             ; preds = %bb.g
  %.1.i = fsub double %i.s, %.pn
  %i.as = load double, ptr %0, align 16, !tbaa !74
  %i.at = fsub double %i.as, %.1.i                ; 5 uses
  %i.au = fcmp oeq double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = fcmp olt double %i.aq, 0.000000e+00
  %i.aw = select i1 %i.av, double 1.000000e+00, double -1.000000e+00
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.at)
  %i.ay = tail call noundef double @llvm.fabs.f64(double %i.aq)
  %i.az = fcmp ogt double %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ba = fdiv double %i.aq, %i.at                ; 3 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = fadd double %i.bb, 1.000000e+00
  %i.bd = tail call double @sqrt(double noundef %i.bc) #29 ; 2 uses
  %i.be = fcmp olt double %i.at, 0.000000e+00
  %i.bf = fneg double %i.bd
  %.031.i.i.i = select i1 %i.be, double %i.bf, double %i.bd
  %i.bg = fdiv double 1.000000e+00, %.031.i.i.i   ; 2 uses
  %i.bh = fneg double %i.ba
  %i.bi = fmul double %i.bg, %i.bh
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bj = fdiv double %i.at, %i.aq                ; 3 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bk, 1.000000e+00
  %i.bm = tail call double @sqrt(double noundef %i.bl) #29 ; 2 uses
  %i.bn = fcmp olt double %i.aq, 0.000000e+00
  %i.bo = fneg double %i.bm
  %.0.i.i.i = select i1 %i.bn, double %i.bo, double %i.bm
  %i.bp = fdiv double -1.000000e+00, %.0.i.i.i    ; 2 uses
  %i.bq = fneg double %i.bj
  %i.br = fmul double %i.bp, %i.bq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.sroa.16.0.i = phi double [ %i.bp, %bb.l ], [ %i.aw, %bb.i ], [ %i.bi, %bb.k ] ; 4 uses
  %.sroa.077.0.i = phi double [ %i.br, %bb.l ], [ 0.000000e+00, %bb.i ], [ %i.bg, %bb.k ] ; 4 uses
  %5 = load <1 x double>, ptr %0, align 16
  %6 = load double, ptr %1, align 8, !tbaa !74    ; 3 uses
  %i.bs = load double, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  %7 = fneg double %6
  %8 = fneg double %i.bs
  %9 = insertelement <2 x double> poison, double %.sroa.16.0.i, i64 0 ; 2 uses
  %i.bt = insertelement <2 x double> %9, double %.sroa.077.0.i, i64 1 ; 5 uses
  %10 = insertelement <2 x double> poison, double %8, i64 0
  %i.bu = insertelement <2 x double> %10, double %i.bs, i64 1
  %11 = fmul <2 x double> %i.bt, %i.bu
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = insertelement <2 x double> poison, double %6, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bw, <2 x double> %12) ; 2 uses
  %13 = insertelement <2 x double> poison, double %7, i64 0
  %14 = insertelement <2 x double> %13, double %6, i64 1
  %15 = fmul <2 x double> %i.bt, %14
  %16 = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %17 = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %17, <2 x double> %15) ; 2 uses
  %19 = fneg <2 x double> %i.bx                   ; 2 uses
  %20 = shufflevector <2 x double> %19, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.by = fmul <2 x double> %i.bt, %20
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %18, <2 x double> %i.by)
  store <2 x double> %21, ptr %0, align 16, !tbaa !74
  %22 = extractelement <2 x double> %19, i64 0
  %23 = fmul double %.sroa.16.0.i, %22
  %i.bz = extractelement <2 x double> %18, i64 1
  %24 = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.bz, double %23)
  store double %24, ptr %1, align 8, !tbaa !74
  br i1 %3, label %bb.n, label %.lr.ph.backedge

bb.n:                                             ; preds = %bb.m
  %i.ca = fcmp une double %.sroa.077.0.i, 1.000000e+00
  %i.cb = fcmp une double %.sroa.16.0.i, 0.000000e+00
  %or.cond.not18.i.i.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.not18.i.i.i, label %.lr.ph.i.i.preheader.i.i, label %.lr.ph.backedge

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.n
  %i.cc = fneg double %.sroa.16.0.i
  %i.cd = load <2 x double>, ptr %i.e, align 16, !tbaa !74 ; 2 uses
  %i.ce = load <2 x double>, ptr %4, align 16, !tbaa !74 ; 2 uses
  %i.cf = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.cd, %i.cg
  %25 = insertelement <2 x double> poison, double %.sroa.077.0.i, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %i.ce, <2 x double> %i.ch)
  store <2 x double> %i.ci, ptr %4, align 16, !tbaa !74
  %i.cj = fmul <2 x double> %26, %i.cd
  %27 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> %i.ce, <2 x double> %i.cj)
  store <2 x double> %i.ck, ptr %i.e, align 16, !tbaa !74
  br label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %.lr.ph.i.i.preheader.i.i, %bb.n, %bb.m, %bb.g
  br label %.lr.ph, !llvm.loop !1682

.critedge.thread:                                 ; preds = %.preheader96, %.critedge
  %.1 = phi i64 [ %i.b, %.critedge ], [ %.065, %.preheader96 ]
  %.not73.not = icmp sgt i64 %.1, %i.a
  br i1 %.not73.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge.thread
  %i.cl = load double, ptr %0, align 16, !tbaa !74 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !74 ; 3 uses
  %i.co = fcmp olt double %i.cn, %i.cl            ; 2 uses
  br i1 %3, label %.preheader.split.us.split, label %.preheader.split.split

.preheader.split.us.split:                        ; preds = %.preheader
  br i1 %i.co, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.preheader.split.us.split
  store double %i.cn, ptr %0, align 16, !tbaa !74
  store double %i.cl, ptr %i.cm, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cq = load <2 x double>, ptr %i.cp, align 16, !tbaa !30
  %i.cr = load <2 x double>, ptr %4, align 16, !tbaa !30
  store <2 x double> %i.cr, ptr %i.cp, align 16, !tbaa !30
  store <2 x double> %i.cq, ptr %4, align 16, !tbaa !30
  br label %.loopexit

.preheader.split.split:                           ; preds = %.preheader
  br i1 %i.co, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.preheader.split.split
  store double %i.cn, ptr %0, align 16, !tbaa !74
  store double %i.cl, ptr %i.cm, align 8, !tbaa !74
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
end_hunk_0
