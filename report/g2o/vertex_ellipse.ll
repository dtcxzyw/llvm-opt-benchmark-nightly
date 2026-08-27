Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_ellipse?download=true
inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_:bb.a
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.hn
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.hn
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !19
  %i.hr = fdiv float %i.hq, %i.eg
  store float %i.hr, ptr %i.ho, align 4, !tbaa !19
  %i.hs = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.hs
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.hs
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !19
  %i.hw = fdiv float %i.hv, %i.eg
  store float %i.hw, ptr %i.ht, align 4, !tbaa !19
  %i.hx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.hx, %i.ej
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !123

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ic, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.ia = load <4 x float>, ptr %i.hz, align 1, !tbaa !47
  %i.ib = fdiv <4 x float> %i.ia, %i.gh
  store <4 x float> %i.ib, ptr %i.hy, align 16, !tbaa !47
  %i.ic = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.id = icmp slt i64 %i.ic, %i.et
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !124

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block62, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ie = load float, ptr %3, align 4, !tbaa !19  ; 2 uses
  %i.if = fsub float %i.ie, %i.cv
  %i.ig = fdiv float %i.if, %i.ie
  store float %i.ig, ptr %2, align 4, !tbaa !19
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIffEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIfEEKNS1_IfLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS3_IfLin1ELi1ELi0ELi2ELi1EEEEEKNS2_INS2_IS4_Li2ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKf(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(121) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load float, ptr %3, align 4, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !102
  %i.e = fmul float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81   ; 4 uses
  %i.h = icmp ugt i64 %i.g, 4611686018427387903
  br i1 %i.h, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39: ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !104    ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39
  %i.k = shl nuw i64 %i.g, 2                      ; 2 uses
  %i.l = icmp samesign ult i64 %i.g, 32769
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i64 %i.k, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.k) #29 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39, %bb.d
  %i.r = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.t = icmp samesign ugt i64 %i.g, 32768        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !81   ; 4 uses
  %i.w = icmp ugt i64 %i.v, 4611686018427387903
  br i1 %i.w, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc40 unwind label %bb.p

.noexc40:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.z = shl nuw i64 %i.v, 2                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.v, 32769
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #29 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc43 unwind label %bb.q

.noexc43:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.j
  %i.ag = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ]
  %i.ai = icmp samesign ugt i64 %i.v, 32768       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !81
  %i.al = load ptr, ptr %1, align 8, !tbaa !125
  invoke void @_ZN5Eigen8internal33selfadjoint_matrix_vector_productIflLi0ELi1ELb0ELb0ELi0EE3runElPKflS4_Pff(i64 noundef %i.ak, ptr noundef nonnull %i.al, i64 noundef 2, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.s, float noundef %i.e)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.ai, label %bb.n, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.ag) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %bb.m, %bb.n
  br i1 %i.t, label %bb.o, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit45

bb.o:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit
  call void @free(ptr noundef %i.r) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit45

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit45: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit, %bb.o
  ret void

bb.p:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit46

bb.q:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit46

bb.r:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ai, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit46

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ag) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit46

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit46: ; preds = %bb.r, %bb.s, %bb.q, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.an, %bb.q ], [ %i.ao, %bb.s ], [ %i.ao, %bb.r ]
  br i1 %i.t, label %bb.t, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit47

bb.t:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit46
  call void @free(ptr noundef %i.r) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit47

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit47: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit46, %bb.t
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal33selfadjoint_matrix_vector_productIflLi0ELi1ELb0ELb0ELi0EE3runElPKflS4_Pff(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, float noundef %5) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = tail call i64 @llvm.smax.i64(i64 %0, i64 8)
  %.sroa.speculated = add nuw i64 %i.a, 4294967288
  %i.b = and i64 %.sroa.speculated, 4294967294    ; 8 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.a
  %i.c = insertelement <2 x float> poison, float %5, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph225

.preheader:                                       ; preds = %._crit_edge220, %bb.a
  %i.e = icmp slt i64 %i.b, %0
  br i1 %i.e, label %.lr.ph233.preheader, label %._crit_edge234

.lr.ph233.preheader:                              ; preds = %.preheader
  %i.f = mul nsw i64 %i.b, %2                     ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.b
  %i.i = load float, ptr %i.h, align 4, !tbaa !19
  %i.j = fmul float %5, %i.i                      ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b
  %i.l = load float, ptr %i.k, align 4, !tbaa !19
  %i.m = fmul float %i.l, %i.j
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.b ; 4 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !19
  %i.p = fadd float %i.o, %i.m                    ; 2 uses
  store float %i.p, ptr %i.n, align 4, !tbaa !19
  %i.q = or disjoint i64 %i.b, 1                  ; 2 uses
  %i.r = icmp slt i64 %i.q, %0
  br i1 %i.r, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %._crit_edge220
  %.0145223 = phi i64 [ %i.ah, %._crit_edge220 ], [ 0, %.lr.ph225.preheader ] ; 6 uses
  %i.s = mul nsw i64 %.0145223, %2
  %i.t = getelementptr inbounds [4 x i8], ptr %1, i64 %i.s ; 5 uses
  %i.u = or disjoint i64 %.0145223, 1             ; 5 uses
  %i.v = mul nsw i64 %i.u, %2
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0145223
  %i.y = load float, ptr %i.x, align 4, !tbaa !19
  %i.z = fmul float %5, %i.y                      ; 5 uses
  %i.aa = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !19
  %i.ae = fmul float %5, %i.ad                    ; 4 uses
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = add nuw nsw i64 %.0145223, 2            ; 6 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ah
  %i.ai = sub nsw i64 %0, %i.ah                   ; 2 uses
  %7 = ptrtoint ptr %6 to i64                     ; 2 uses
  %8 = and i64 %7, 3
  %.not.i.i = icmp eq i64 %8, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit

bb.b:                                             ; preds = %.lr.ph225
  %i.aj = lshr exact i64 %7, 2
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = and i64 %i.ak, 3
  %i.am = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %i.ai)
  br label %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit

_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit: ; preds = %.lr.ph225, %bb.b
  %.0.i.i = phi i64 [ %i.am, %bb.b ], [ %i.ai, %.lr.ph225 ] ; 2 uses
  %i.an = add nsw i64 %.0.i.i, %i.ah              ; 8 uses
  %i.ao = sub nsw i64 %0, %i.an                   ; 2 uses
  %i.ap = sdiv i64 %i.ao, 4
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, %i.an                ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0145223
  %i.at = load float, ptr %i.as, align 4, !tbaa !19
  %i.au = fmul float %i.z, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0145223 ; 4 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !19
  %i.ax = fadd float %i.aw, %i.au
  store float %i.ax, ptr %i.av, align 4, !tbaa !19
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.az = load float, ptr %i.ay, align 4, !tbaa !19
  %i.ba = fmul float %i.ae, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !19
  %i.bd = fadd float %i.bc, %i.ba                 ; 2 uses
  store float %i.bd, ptr %i.bb, align 4, !tbaa !19
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !19
  %i.bg = fmul float %i.z, %i.bf
  %i.bh = fadd float %i.bd, %i.bg
  store float %i.bh, ptr %i.bb, align 4, !tbaa !19
  %i.bi = load float, ptr %i.be, align 4, !tbaa !19
  %i.bj = load float, ptr %i.ac, align 4, !tbaa !19
  %i.bk = fmul float %i.bi, %i.bj
  %i.bl = fadd float %i.bk, 0.000000e+00
  %i.bm = icmp sgt i64 %.0.i.i, 0
  %i.bn = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bl, i64 0 ; 2 uses
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit
  %i.bo = phi <2 x float> [ %i.bn, %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit ], [ %i.co, %.lr.ph ] ; 2 uses
  %i.bp = icmp sgt i64 %i.ao, 3
  br i1 %i.bp, label %.lr.ph213.preheader, label %.preheader200

.lr.ph213.preheader:                              ; preds = %._crit_edge
  %i.bq = getelementptr inbounds [4 x i8], ptr %4, i64 %i.an
  %i.br = getelementptr inbounds [4 x i8], ptr %3, i64 %i.an
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.an
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.an
  br label %.lr.ph213

.lr.ph:                                           ; preds = %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit, %.lr.ph
  %.0144203 = phi i64 [ %i.cp, %.lr.ph ], [ %i.ah, %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit ] ; 5 uses
  %i.bu = phi <2 x float> [ %i.co, %.lr.ph ], [ %i.bn, %_ZN5Eigen8internal21first_default_alignedIflEET0_PKT_S2_.exit ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.0144203 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !19
  %i.bx = fmul float %i.z, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.0144203 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !19
  %i.ca = fmul float %i.ae, %i.bz
  %i.cb = fadd float %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0144203 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !19
  %i.ce = fadd float %i.cd, %i.cb
  store float %i.ce, ptr %i.cc, align 4, !tbaa !19
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0144203
  %i.cg = load float, ptr %i.bv, align 4, !tbaa !19
  %i.ch = load float, ptr %i.cf, align 4, !tbaa !19
  %i.ci = load float, ptr %i.by, align 4, !tbaa !19
  %i.cj = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ci, i64 1
  %i.cn = fmul <2 x float> %i.ck, %i.cm
  %i.co = fadd <2 x float> %i.bu, %i.cn           ; 2 uses
  %i.cp = add nuw nsw i64 %.0144203, 1            ; 2 uses
  %i.cq = icmp slt i64 %i.cp, %i.an
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !127

.preheader200:                                    ; preds = %.lr.ph213, %._crit_edge
  %.0199.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.dg, %.lr.ph213 ] ; 2 uses
  %.0196.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.de, %.lr.ph213 ] ; 2 uses
  %i.cr = icmp slt i64 %i.ar, %0
  br i1 %i.cr, label %.lr.ph219, label %._crit_edge220

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %.0139211 = phi i64 [ %i.di, %.lr.ph213 ], [ %i.an, %.lr.ph213.preheader ]
  %.0140210 = phi ptr [ %i.dh, %.lr.ph213 ], [ %i.bq, %.lr.ph213.preheader ] ; 3 uses
  %.0141209 = phi ptr [ %i.cx, %.lr.ph213 ], [ %i.br, %.lr.ph213.preheader ] ; 2 uses
  %.0142208 = phi ptr [ %i.cv, %.lr.ph213 ], [ %i.bs, %.lr.ph213.preheader ] ; 2 uses
  %.0143207 = phi ptr [ %i.ct, %.lr.ph213 ], [ %i.bt, %.lr.ph213.preheader ] ; 2 uses
  %.0196206 = phi <4 x float> [ %i.de, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %.0199205 = phi <4 x float> [ %i.dg, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %i.cs = load <4 x float>, ptr %.0143207, align 1, !tbaa !47 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0143207, i64 16
  %i.cu = load <4 x float>, ptr %.0142208, align 1, !tbaa !47 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0142208, i64 16
  %i.cw = load <4 x float>, ptr %.0141209, align 1, !tbaa !47 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0141209, i64 16
  %i.cy = load <4 x float>, ptr %.0140210, align 16, !tbaa !47
  %i.cz = fmul <4 x float> %i.ag, %i.cu
  %i.da = fadd <4 x float> %i.cz, %i.cy
  %i.db = fmul <4 x float> %i.ab, %i.cs
  %i.dc = fadd <4 x float> %i.db, %i.da
  %i.dd = fmul <4 x float> %i.cs, %i.cw
  %i.de = fadd <4 x float> %.0196206, %i.dd       ; 2 uses
  %i.df = fmul <4 x float> %i.cu, %i.cw
  %i.dg = fadd <4 x float> %.0199205, %i.df       ; 2 uses
  store <4 x float> %i.dc, ptr %.0140210, align 16, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %.0140210, i64 16
  %i.di = add nsw i64 %.0139211, 4                ; 2 uses
  %i.dj = icmp slt i64 %i.di, %i.ar
  br i1 %i.dj, label %.lr.ph213, label %.preheader200, !llvm.loop !128

._crit_edge220:                                   ; preds = %.lr.ph219, %.preheader200
  %i.dk = phi <2 x float> [ %i.bo, %.preheader200 ], [ %i.eq, %.lr.ph219 ]
  %i.dl = shufflevector <4 x float> %.0196.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dm = fadd <4 x float> %.0196.lcssa, %i.dl    ; 2 uses
  %i.dn = shufflevector <4 x float> %.0199.lcssa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.do = fadd <4 x float> %.0199.lcssa, %i.dn    ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dm, <4 x float> %i.do, <2 x i32> <i32 0, i32 4>
  %i.dq = shufflevector <4 x float> %i.dm, <4 x float> %i.do, <2 x i32> <i32 1, i32 5>
  %i.dr = fadd <2 x float> %i.dp, %i.dq
  %i.ds = fadd <2 x float> %i.dr, %i.dk
  %i.dt = load <2 x float>, ptr %i.av, align 4, !tbaa !19
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.ds, <2 x float> %i.dt)
  store <2 x float> %i.du, ptr %i.av, align 4, !tbaa !19
  %i.dv = icmp samesign ult i64 %i.ah, %i.b
  br i1 %i.dv, label %.lr.ph225, label %.preheader, !llvm.loop !129

.lr.ph219:                                        ; preds = %.preheader200, %.lr.ph219
  %.0138218 = phi i64 [ %i.er, %.lr.ph219 ], [ %i.ar, %.preheader200 ] ; 5 uses
  %i.dw = phi <2 x float> [ %i.eq, %.lr.ph219 ], [ %i.bo, %.preheader200 ]
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.t, i64 %.0138218 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !19
  %i.dz = fmul float %i.z, %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.0138218 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !19
  %i.ec = fmul float %i.ae, %i.eb
  %i.ed = fadd float %i.dz, %i.ec
  %i.ee = getelementptr inbounds [4 x i8], ptr %4, i64 %.0138218 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !19
  %i.eg = fadd float %i.ef, %i.ed
  store float %i.eg, ptr %i.ee, align 4, !tbaa !19
  %i.eh = getelementptr inbounds [4 x i8], ptr %3, i64 %.0138218
  %i.ei = load float, ptr %i.dx, align 4, !tbaa !19
  %i.ej = load float, ptr %i.eh, align 4, !tbaa !19
  %i.ek = load float, ptr %i.ea, align 4, !tbaa !19
  %i.el = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.ek, i64 1
  %i.ep = fmul <2 x float> %i.em, %i.eo
  %i.eq = fadd <2 x float> %i.dw, %i.ep           ; 2 uses
  %i.er = add nsw i64 %.0138218, 1                ; 2 uses
  %i.es = icmp slt i64 %i.er, %0
  br i1 %i.es, label %.lr.ph219, label %._crit_edge220, !llvm.loop !130

._crit_edge234:                                   ; preds = %._crit_edge230.thread, %.preheader
  ret void

.lr.ph229.preheader:                              ; preds = %.lr.ph233.preheader, %._crit_edge230
  %i.et = phi i64 [ %i.fl, %._crit_edge230 ], [ %i.q, %.lr.ph233.preheader ] ; 6 uses
  %i.eu = phi ptr [ %i.fi, %._crit_edge230 ], [ %i.n, %.lr.ph233.preheader ] ; 2 uses
  %i.ev = phi float [ %i.fe, %._crit_edge230 ], [ %i.j, %.lr.ph233.preheader ]
  %i.ew = phi i64 [ %i.fa, %._crit_edge230 ], [ %i.f, %.lr.ph233.preheader ]
  %i.ex = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ew
  br label %.lr.ph229

._crit_edge230.thread:                            ; preds = %._crit_edge230, %.lr.ph233.preheader
  %.lcssa257 = phi ptr [ %i.n, %.lr.ph233.preheader ], [ %i.fi, %._crit_edge230 ]
  %.lcssa256 = phi float [ %i.p, %.lr.ph233.preheader ], [ %i.fk, %._crit_edge230 ]
  %i.ey = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %.lcssa256)
  store float %i.ey, ptr %.lcssa257, align 4, !tbaa !19
  br label %._crit_edge234

._crit_edge230:                                   ; preds = %.lr.ph229
  %.pre = load float, ptr %i.eu, align 4, !tbaa !19
  %i.ez = tail call float @llvm.fmuladd.f32(float %5, float %i.fx, float %.pre)
  store float %i.ez, ptr %i.eu, align 4, !tbaa !19
  %i.fa = mul nsw i64 %i.et, %2                   ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.et
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !19
  %i.fe = fmul float %5, %i.fd                    ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.et
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !19
  %i.fh = fmul float %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.et ; 4 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !19
  %i.fk = fadd float %i.fj, %i.fh                 ; 2 uses
  store float %i.fk, ptr %i.fi, align 4, !tbaa !19
  %i.fl = add nuw nsw i64 %i.et, 1                ; 2 uses
  %i.fm = icmp slt i64 %i.fl, %0
  br i1 %i.fm, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.0227 = phi i64 [ %i.fy, %.lr.ph229 ], [ %i.et, %.lr.ph229.preheader ] ; 4 uses
  %.0136226 = phi float [ %i.fx, %.lr.ph229 ], [ 0.000000e+00, %.lr.ph229.preheader ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0227 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !19
  %i.fp = fmul float %i.ev, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0227 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !19
  %i.fs = fadd float %i.fr, %i.fp
  store float %i.fs, ptr %i.fq, align 4, !tbaa !19
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0227
  %i.fu = load float, ptr %i.fn, align 4, !tbaa !19
  %i.fv = load float, ptr %i.ft, align 4, !tbaa !19
  %i.fw = fmul float %i.fu, %i.fv
  %i.fx = fadd float %.0136226, %i.fw             ; 2 uses
  %i.fy = add nuw nsw i64 %.0227, 1               ; 2 uses
  %i.fz = icmp slt i64 %i.fy, %0
  br i1 %i.fz, label %.lr.ph229, label %._crit_edge230, !llvm.loop !131
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal33selfadjoint_rank2_update_selectorIflNS_5BlockINS2_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEENS2_INS3_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELi1EE3runEPflRKS6_RKS8_RKf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 5 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = shl i64 %i.b, 2
  %i.f = shl i64 %1, 2
  %i.g = getelementptr i8, ptr %0, i64 %i.e
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit
  %.062 = phi i64 [ 0, %.lr.ph ], [ %i.fs, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit ] ; 8 uses
  %i.h = xor i64 %.062, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul i64 %i.f, %.062
  %scevgep66 = getelementptr i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.k = load float, ptr %4, align 4, !tbaa !19   ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !73     ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.062
  %i.n = load float, ptr %i.m, align 4, !tbaa !19
  %i.o = fmul float %i.k, %i.n                    ; 9 uses
  %i.p = sub nsw i64 %i.b, %.062                  ; 9 uses
  %i.q = load i64, ptr %i.d, align 8, !tbaa !81, !noalias !132 ; 2 uses
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !104, !noalias !132 ; 5 uses
  %i.t = getelementptr [4 x i8], ptr %i.s, i64 %i.r ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.062
  %i.v = load float, ptr %i.u, align 4, !tbaa !19
  %i.w = fmul float %i.k, %i.v                    ; 9 uses
  %i.x = load i64, ptr %i.a, align 8, !tbaa !81, !noalias !135 ; 2 uses
  %i.y = sub i64 %i.x, %i.p                       ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %i.l, i64 %i.y ; 10 uses
  %i.aa = mul nsw i64 %.062, %1
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.062 ; 14 uses
  %5 = ptrtoint ptr %i.ac to i64                  ; 2 uses
  %6 = and i64 %5, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr exact i64 %5, 2
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = and i64 %i.ae, 3
  %i.ag = tail call i64 @llvm.smin.i64(i64 %i.af, i64 %i.p)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.ag, %bb.c ], [ %i.p, %bb.b ] ; 15 uses
  %i.ah = sub nsw i64 %i.p, %.0.i.i.i.i.i.i.i     ; 2 uses
  %i.ai = sdiv i64 %i.ah, 4                       ; 2 uses
  %i.aj = shl nsw i64 %i.ai, 2                    ; 2 uses
  %i.ak = add nsw i64 %i.aj, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.al = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check93 = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check93, label %.lr.ph.i.i.i.i.i.i.i.preheader113, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.am = shl i64 %.0.i.i.i.i.i.i.i, 2
  %scevgep82 = getelementptr i8, ptr %i.ac, i64 %i.am ; 2 uses
  %i.an = add i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.ao = shl i64 %i.an, 2
  %scevgep83 = getelementptr i8, ptr %i.s, i64 %i.ao
  %i.ap = add i64 %.0.i.i.i.i.i.i.i, %i.y
  %i.aq = shl i64 %i.ap, 2
  %scevgep84 = getelementptr i8, ptr %i.l, i64 %i.aq
  %bound085 = icmp ult ptr %i.ac, %scevgep83
  %bound186 = icmp ult ptr %i.t, %scevgep82
  %found.conflict87 = and i1 %bound085, %bound186
  %bound088 = icmp ult ptr %i.ac, %scevgep84
  %bound189 = icmp ult ptr %i.z, %scevgep82
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %found.conflict87, %found.conflict90
  br i1 %conflict.rdx91, label %.lr.ph.i.i.i.i.i.i.i.preheader113, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck81
  %n.vec95 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert96 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat97 = shufflevector <4 x float> %broadcast.splatinsert96, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert98 = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat99 = shufflevector <4 x float> %broadcast.splatinsert98, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph94
  %index101 = phi i64 [ 0, %vector.ph94 ], [ %index.next108, %vector.body100 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index101 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index101 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load102 = load <4 x float>, ptr %i.as, align 4, !tbaa !19, !alias.scope !138
  %wide.load103 = load <4 x float>, ptr %i.at, align 4, !tbaa !19, !alias.scope !138
  %i.au = fmul <4 x float> %broadcast.splat97, %wide.load102
  %i.av = fmul <4 x float> %broadcast.splat97, %wide.load103
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index101 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load104 = load <4 x float>, ptr %i.aw, align 4, !tbaa !19, !alias.scope !141
  %wide.load105 = load <4 x float>, ptr %i.ax, align 4, !tbaa !19, !alias.scope !141
  %i.ay = fmul <4 x float> %broadcast.splat99, %wide.load104
  %i.az = fmul <4 x float> %broadcast.splat99, %wide.load105
  %i.ba = fadd <4 x float> %i.au, %i.ay
  %i.bb = fadd <4 x float> %i.av, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load106 = load <4 x float>, ptr %i.ar, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %wide.load107 = load <4 x float>, ptr %i.bc, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %i.bd = fadd <4 x float> %wide.load106, %i.ba
  %i.be = fadd <4 x float> %wide.load107, %i.bb
  store <4 x float> %i.bd, ptr %i.ar, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  store <4 x float> %i.be, ptr %i.bc, align 4, !tbaa !19, !alias.scope !143, !noalias !145
  %index.next108 = add nuw i64 %index101, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next108, %n.vec95
  br i1 %i.bf, label %middle.block109, label %vector.body100, !llvm.loop !146

middle.block109:                                  ; preds = %vector.body100
  %cmp.n110 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec95
  br i1 %cmp.n110, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader113

.lr.ph.i.i.i.i.i.i.i.preheader113:                ; preds = %vector.memcheck81, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block109
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec95, %middle.block109 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader113
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05.i.i.i.i.i.i.i.ph
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !19
  %i.bj = fmul float %i.o, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i.ph
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !19
  %i.bm = fmul float %i.w, %i.bl
  %i.bn = fadd float %i.bj, %i.bm
  %i.bo = load float, ptr %i.bg, align 4, !tbaa !19
  %i.bp = fadd float %i.bo, %i.bn
  store float %i.bp, ptr %i.bg, align 4, !tbaa !19
  %i.bq = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader113
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader113 ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.br = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.br, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05.i.i.i.i.i.i.i
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !19
  %i.bv = fmul float %i.o, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !19
  %i.by = fmul float %i.w, %i.bx
  %i.bz = fadd float %i.bv, %i.by
  %i.ca = load float, ptr %i.bs, align 4, !tbaa !19
  %i.cb = fadd float %i.ca, %i.bz
  store float %i.cb, ptr %i.bs, align 4, !tbaa !19
  %i.cc = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cc
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !19
  %i.cg = fmul float %i.o, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cc
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !19
  %i.cj = fmul float %i.w, %i.ci
  %i.ck = fadd float %i.cg, %i.cj
  %i.cl = load float, ptr %i.cd, align 4, !tbaa !19
  %i.cm = fadd float %i.cl, %i.ck
  store float %i.cm, ptr %i.cd, align 4, !tbaa !19
  %i.cn = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cn, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !147

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block109, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.co = icmp sgt i64 %i.ah, 3
  br i1 %i.co, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cp = insertelement <1 x float> poison, float %i.o, i64 0
  %i.cq = shufflevector <1 x float> %i.cp, <1 x float> poison, <4 x i32> zeroinitializer
  %i.cr = insertelement <1 x float> poison, float %i.w, i64 0
  %i.cs = shufflevector <1 x float> %i.cr, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIffEEKNSD_INS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSP_INS7_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNSD_ISH_KNSI_ISK_KNS7_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSP_IKNSP_INSP_INS7_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ct = icmp slt i64 %i.ak, %i.p
  br i1 %i.ct, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIffEEKNS9_INSA_17scalar_product_opIffEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi1ELi1EEEEEKNS_5BlockIKNSM_INS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEKNS9_ISE_KNSF_ISH_KNS2_IfLin1ELi1ELi0ELi2ELi1EEEEEKNSM_IKNSM_INSM_INS2_IfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEEEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cu = add i64 %.0.i.i.i.i.i.i.i, %i.aj
  %i.cv = sub i64 %i.p, %i.cu                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.cv, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader112, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.cw = shl i64 %i.ai, 4                        ; 2 uses
  %i.cx = shl i64 %.0.i.i.i.i.i.i.i, 2            ; 2 uses
  %i.cy = add i64 %i.cw, %i.cx                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.cy ; 2 uses
  %i.cz = shl i64 %i.r, 2
  %i.da = getelementptr i8, ptr %i.s, i64 %i.cy
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.cz
  %i.db = shl i64 %i.q, 2
  %scevgep68 = getelementptr i8, ptr %i.s, i64 %i.db
  %i.dc = shl i64 %i.y, 2
  %i.dd = getelementptr i8, ptr %i.l, i64 %i.cw
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.cx
  %scevgep69 = getelementptr i8, ptr %i.de, i64 %i.dc
  %i.df = shl i64 %i.x, 2
  %scevgep70 = getelementptr i8, ptr %i.l, i64 %i.df
  %bound0 = icmp ult ptr %scevgep, %scevgep68
  %bound1 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  %bound071 = icmp ult ptr %scevgep, %scevgep70
  %bound172 = icmp ult ptr %scevgep69, %scevgep66
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx = or i1 %found.conflict, %found.conflict73
  br i1 %conflict.rdx, label %.lr.ph.i17.i.i.i.i.i.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cv, -8                      ; 3 uses
  %i.dg = add i64 %i.ak, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat75 = shufflevector <4 x float> %broadcast.splatinsert74, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = add i64 %i.ak, %index                   ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dh ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <4 x float>, ptr %i.dj, align 4, !tbaa !19, !alias.scope !148
  %wide.load76 = load <4 x float>, ptr %i.dk, align 4, !tbaa !19, !alias.scope !148
  %i.dl = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dm = fmul <4 x float> %broadcast.splat, %wide.load76
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.dh ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load77 = load <4 x float>, ptr %i.dn, align 4, !tbaa !19, !alias.scope !151
end_hunk_0
