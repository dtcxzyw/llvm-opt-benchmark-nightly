Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/principal_curvature?download=true
inline.NumInlined: 17939
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 147
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_:bb.a
  %i.ga = fdiv double %i.fz, %i.db
  store double %i.ga, ptr %i.fx, align 8, !tbaa !60
  %i.gb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gb
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !60
  %i.gf = fdiv double %i.ge, %i.db
  store double %i.gf, ptr %i.gc, align 8, !tbaa !60
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.gg
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gg
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !60
  %i.gk = fdiv double %i.gj, %i.db
  store double %i.gk, ptr %i.gh, align 8, !tbaa !60
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.gl, %i.de
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1640

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.go = load <2 x double>, ptr %i.gn, align 1, !tbaa !16
  %i.gp = fdiv <2 x double> %i.go, %i.ey
  store <2 x double> %i.gp, ptr %i.gm, align 16, !tbaa !16
  %i.gq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dn
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1641

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block52, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.gs = load double, ptr %3, align 8, !tbaa !60 ; 2 uses
  %i.gt = fsub double %i.gs, %i.br
  %i.gu = fdiv double %i.gt, %i.gs
  store double %i.gu, ptr %2, align 8, !tbaa !60
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELi2ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal24selfadjoint_product_implINS_5BlockINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELi17ELb0ENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELi2ELi1EEEEEKNS2_INS2_IS4_Li2ELi1ELb1EEELin1ELi1ELb0EEEEELi0ELb1EE3runINS2_INS3_IdLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKS5_RKSJ_RKd(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(129) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load double, ptr %3, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !486
  %i.e = fmul double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !224  ; 4 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39: ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !1624   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39
  %i.k = shl nuw i64 %i.g, 3                      ; 2 uses
  %i.l = icmp samesign ult i64 %i.g, 16385
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw nsw i64 %i.k, 15
  %i.n = alloca i8, i64 %i.m, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.k) #33 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !58
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39, %bb.d
  %i.r = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.s = phi ptr [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit39 ], [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.t = icmp samesign ugt i64 %i.g, 16384        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !224  ; 4 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !58
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.noexc40 unwind label %bb.p

.noexc40:                                         ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1600 ; 2 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.z = shl nuw i64 %i.v, 3                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.v, 16385
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #33 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !58
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
          to label %.noexc43 unwind label %bb.q

.noexc43:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ag = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ]
  %i.ai = icmp samesign ugt i64 %i.v, 16384       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !224
  %i.al = load ptr, ptr %1, align 8, !tbaa !1642
  invoke void @_ZN5Eigen8internal33selfadjoint_matrix_vector_productIdlLi0ELi1ELb0ELb0ELi0EE3runElPKdlS4_Pdd(i64 noundef %i.ak, ptr noundef nonnull %i.al, i64 noundef 2, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.s, double noundef %i.e)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  br i1 %i.ai, label %bb.n, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.ag) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.m, %bb.n
  br i1 %i.t, label %bb.o, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit45

bb.o:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.r) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit45

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit45: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.o
  ret void

bb.p:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46

bb.q:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46

bb.r:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ai, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ag) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46: ; preds = %bb.r, %bb.s, %bb.q, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %i.an, %bb.q ], [ %i.ao, %bb.s ], [ %i.ao, %bb.r ]
  br i1 %i.t, label %bb.t, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit47

bb.t:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46
  call void @free(ptr noundef %i.r) #29
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit47

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit47: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit46, %bb.t
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal33selfadjoint_matrix_vector_productIdlLi0ELi1ELb0ELb0ELi0EE3runElPKdlS4_Pdd(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, double noundef %5) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = tail call i64 @llvm.smax.i64(i64 %0, i64 8)
  %.sroa.speculated = add nuw i64 %i.a, 4294967288
  %i.b = and i64 %.sroa.speculated, 4294967294    ; 8 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.a
  %i.c = insertelement <2 x double> poison, double %5, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph225

.preheader:                                       ; preds = %._crit_edge220, %bb.a
  %i.e = icmp slt i64 %i.b, %0
  br i1 %i.e, label %.lr.ph233.preheader, label %._crit_edge234

.lr.ph233.preheader:                              ; preds = %.preheader
  %i.f = mul nsw i64 %i.b, %2                     ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.b
  %i.i = load double, ptr %i.h, align 8, !tbaa !60
  %i.j = fmul double %5, %i.i                     ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b
  %i.l = load double, ptr %i.k, align 8, !tbaa !60
  %i.m = fmul double %i.l, %i.j
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.b ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !60
  %i.p = fadd double %i.o, %i.m                   ; 2 uses
  store double %i.p, ptr %i.n, align 8, !tbaa !60
  %i.q = or disjoint i64 %i.b, 1                  ; 2 uses
  %i.r = icmp slt i64 %i.q, %0
  br i1 %i.r, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %._crit_edge220
  %.0145223 = phi i64 [ %i.ah, %._crit_edge220 ], [ 0, %.lr.ph225.preheader ] ; 6 uses
  %i.s = mul nsw i64 %.0145223, %2
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s ; 5 uses
  %i.u = or disjoint i64 %.0145223, 1             ; 5 uses
  %i.v = mul nsw i64 %i.u, %2
  %i.w = getelementptr inbounds [8 x i8], ptr %1, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0145223
  %i.y = load double, ptr %i.x, align 8, !tbaa !60
  %i.z = fmul double %5, %i.y                     ; 5 uses
  %i.aa = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.u ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !60
  %i.ae = fmul double %5, %i.ad                   ; 4 uses
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = add nuw nsw i64 %.0145223, 2            ; 6 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ah
  %i.ai = sub nsw i64 %0, %i.ah                   ; 2 uses
  %7 = ptrtoint ptr %6 to i64                     ; 2 uses
  %8 = and i64 %7, 7
  %.not.i.i = icmp eq i64 %8, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit

bb.b:                                             ; preds = %.lr.ph225
  %i.aj = lshr exact i64 %7, 3
  %i.ak = and i64 %i.aj, 1
  %i.al = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.ai)
  br label %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit

_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit: ; preds = %.lr.ph225, %bb.b
  %.0.i.i = phi i64 [ %i.al, %bb.b ], [ %i.ai, %.lr.ph225 ] ; 2 uses
  %i.am = add nsw i64 %.0.i.i, %i.ah              ; 8 uses
  %i.an = sub nsw i64 %0, %i.am                   ; 2 uses
  %i.ao = sdiv i64 %i.an, 2
  %i.ap = shl nsw i64 %i.ao, 1
  %i.aq = add nsw i64 %i.ap, %i.am                ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0145223
  %i.as = load double, ptr %i.ar, align 8, !tbaa !60
  %i.at = fmul double %i.z, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0145223 ; 4 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !60
  %i.aw = fadd double %i.av, %i.at
  store double %i.aw, ptr %i.au, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !60
  %i.az = fmul double %i.ae, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.u ; 3 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !60
  %i.bc = fadd double %i.bb, %i.az                ; 2 uses
  store double %i.bc, ptr %i.ba, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !60
  %i.bf = fmul double %i.z, %i.be
  %i.bg = fadd double %i.bc, %i.bf
  store double %i.bg, ptr %i.ba, align 8, !tbaa !60
  %i.bh = load double, ptr %i.bd, align 8, !tbaa !60
  %i.bi = load double, ptr %i.ac, align 8, !tbaa !60
  %i.bj = fmul double %i.bh, %i.bi
  %i.bk = fadd double %i.bj, 0.000000e+00
  %i.bl = icmp sgt i64 %.0.i.i, 0
  %i.bm = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bk, i64 0 ; 2 uses
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit
  %i.bn = phi <2 x double> [ %i.bm, %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit ], [ %i.cn, %.lr.ph ] ; 2 uses
  %i.bo = icmp sgt i64 %i.an, 1
  br i1 %i.bo, label %.lr.ph213.preheader, label %.preheader200

.lr.ph213.preheader:                              ; preds = %._crit_edge
  %i.bp = getelementptr inbounds [8 x i8], ptr %4, i64 %i.am
  %i.bq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.am
  %i.br = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.am
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.am
  br label %.lr.ph213

.lr.ph:                                           ; preds = %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit, %.lr.ph
  %.0144203 = phi i64 [ %i.co, %.lr.ph ], [ %i.ah, %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit ] ; 5 uses
  %i.bt = phi <2 x double> [ %i.cn, %.lr.ph ], [ %i.bm, %_ZN5Eigen8internal21first_default_alignedIdlEET0_PKT_S2_.exit ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0144203 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !60
  %i.bw = fmul double %i.z, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.0144203 ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !60
  %i.bz = fmul double %i.ae, %i.by
  %i.ca = fadd double %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0144203 ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !60
  %i.cd = fadd double %i.cc, %i.ca
  store double %i.cd, ptr %i.cb, align 8, !tbaa !60
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0144203
  %i.cf = load double, ptr %i.bu, align 8, !tbaa !60
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !60
  %i.ch = load double, ptr %i.bx, align 8, !tbaa !60
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.ch, i64 1
  %i.cm = fmul <2 x double> %i.cj, %i.cl
  %i.cn = fadd <2 x double> %i.bt, %i.cm          ; 2 uses
  %i.co = add nuw nsw i64 %.0144203, 1            ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.am
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !1644

.preheader200:                                    ; preds = %.lr.ph213, %._crit_edge
  %.0199.lcssa = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.df, %.lr.ph213 ] ; 2 uses
  %.0196.lcssa = phi <2 x double> [ zeroinitializer, %._crit_edge ], [ %i.dd, %.lr.ph213 ] ; 2 uses
  %i.cq = icmp slt i64 %i.aq, %0
  br i1 %i.cq, label %.lr.ph219, label %._crit_edge220

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %.0139211 = phi i64 [ %i.dh, %.lr.ph213 ], [ %i.am, %.lr.ph213.preheader ]
  %.0140210 = phi ptr [ %i.dg, %.lr.ph213 ], [ %i.bp, %.lr.ph213.preheader ] ; 3 uses
  %.0141209 = phi ptr [ %i.cw, %.lr.ph213 ], [ %i.bq, %.lr.ph213.preheader ] ; 2 uses
  %.0142208 = phi ptr [ %i.cu, %.lr.ph213 ], [ %i.br, %.lr.ph213.preheader ] ; 2 uses
  %.0143207 = phi ptr [ %i.cs, %.lr.ph213 ], [ %i.bs, %.lr.ph213.preheader ] ; 2 uses
  %.0196206 = phi <2 x double> [ %i.dd, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %.0199205 = phi <2 x double> [ %i.df, %.lr.ph213 ], [ zeroinitializer, %.lr.ph213.preheader ]
  %i.cr = load <2 x double>, ptr %.0143207, align 1, !tbaa !16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0143207, i64 16
  %i.ct = load <2 x double>, ptr %.0142208, align 1, !tbaa !16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0142208, i64 16
  %i.cv = load <2 x double>, ptr %.0141209, align 1, !tbaa !16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0141209, i64 16
  %i.cx = load <2 x double>, ptr %.0140210, align 16, !tbaa !16
  %i.cy = fmul <2 x double> %i.ag, %i.ct
  %i.cz = fadd <2 x double> %i.cy, %i.cx
  %i.da = fmul <2 x double> %i.ab, %i.cr
  %i.db = fadd <2 x double> %i.da, %i.cz
  %i.dc = fmul <2 x double> %i.cr, %i.cv
  %i.dd = fadd <2 x double> %.0196206, %i.dc      ; 2 uses
  %i.de = fmul <2 x double> %i.ct, %i.cv
  %i.df = fadd <2 x double> %.0199205, %i.de      ; 2 uses
  store <2 x double> %i.db, ptr %.0140210, align 16, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %.0140210, i64 16
  %i.dh = add nsw i64 %.0139211, 2                ; 2 uses
  %i.di = icmp slt i64 %i.dh, %i.aq
  br i1 %i.di, label %.lr.ph213, label %.preheader200, !llvm.loop !1645

._crit_edge220:                                   ; preds = %.lr.ph219, %.preheader200
  %i.dj = phi <2 x double> [ %i.bn, %.preheader200 ], [ %i.el, %.lr.ph219 ]
  %i.dk = shufflevector <2 x double> %.0196.lcssa, <2 x double> %.0199.lcssa, <2 x i32> <i32 0, i32 2>
  %i.dl = shufflevector <2 x double> %.0196.lcssa, <2 x double> %.0199.lcssa, <2 x i32> <i32 1, i32 3>
  %i.dm = fadd <2 x double> %i.dk, %i.dl
  %i.dn = fadd <2 x double> %i.dm, %i.dj
  %i.do = load <2 x double>, ptr %i.au, align 8, !tbaa !60
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.dn, <2 x double> %i.do)
  store <2 x double> %i.dp, ptr %i.au, align 8, !tbaa !60
  %i.dq = icmp samesign ult i64 %i.ah, %i.b
  br i1 %i.dq, label %.lr.ph225, label %.preheader, !llvm.loop !1646

.lr.ph219:                                        ; preds = %.preheader200, %.lr.ph219
  %.0138218 = phi i64 [ %i.em, %.lr.ph219 ], [ %i.aq, %.preheader200 ] ; 5 uses
  %i.dr = phi <2 x double> [ %i.el, %.lr.ph219 ], [ %i.bn, %.preheader200 ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.0138218 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !60
  %i.du = fmul double %i.z, %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.0138218 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !60
  %i.dx = fmul double %i.ae, %i.dw
  %i.dy = fadd double %i.du, %i.dx
  %i.dz = getelementptr inbounds [8 x i8], ptr %4, i64 %.0138218 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !60
  %i.eb = fadd double %i.ea, %i.dy
  store double %i.eb, ptr %i.dz, align 8, !tbaa !60
  %i.ec = getelementptr inbounds [8 x i8], ptr %3, i64 %.0138218
  %i.ed = load double, ptr %i.ds, align 8, !tbaa !60
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !60
  %i.ef = load double, ptr %i.dv, align 8, !tbaa !60
  %i.eg = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ef, i64 1
  %i.ek = fmul <2 x double> %i.eh, %i.ej
  %i.el = fadd <2 x double> %i.dr, %i.ek          ; 2 uses
  %i.em = add nsw i64 %.0138218, 1                ; 2 uses
  %i.en = icmp slt i64 %i.em, %0
  br i1 %i.en, label %.lr.ph219, label %._crit_edge220, !llvm.loop !1647

._crit_edge234:                                   ; preds = %._crit_edge230.thread, %.preheader
  ret void

.lr.ph229.preheader:                              ; preds = %.lr.ph233.preheader, %._crit_edge230
  %i.eo = phi i64 [ %i.fg, %._crit_edge230 ], [ %i.q, %.lr.ph233.preheader ] ; 6 uses
  %i.ep = phi ptr [ %i.fd, %._crit_edge230 ], [ %i.n, %.lr.ph233.preheader ] ; 2 uses
  %i.eq = phi double [ %i.ez, %._crit_edge230 ], [ %i.j, %.lr.ph233.preheader ]
  %i.er = phi i64 [ %i.ev, %._crit_edge230 ], [ %i.f, %.lr.ph233.preheader ]
  %i.es = getelementptr inbounds [8 x i8], ptr %1, i64 %i.er
  br label %.lr.ph229

._crit_edge230.thread:                            ; preds = %._crit_edge230, %.lr.ph233.preheader
  %.lcssa257 = phi ptr [ %i.n, %.lr.ph233.preheader ], [ %i.fd, %._crit_edge230 ]
  %.lcssa256 = phi double [ %i.p, %.lr.ph233.preheader ], [ %i.ff, %._crit_edge230 ]
  %i.et = tail call double @llvm.fmuladd.f64(double %5, double 0.000000e+00, double %.lcssa256)
  store double %i.et, ptr %.lcssa257, align 8, !tbaa !60
  br label %._crit_edge234

._crit_edge230:                                   ; preds = %.lr.ph229
  %.pre = load double, ptr %i.ep, align 8, !tbaa !60
  %i.eu = tail call double @llvm.fmuladd.f64(double %5, double %i.fs, double %.pre)
  store double %i.eu, ptr %i.ep, align 8, !tbaa !60
  %i.ev = mul nsw i64 %i.eo, %2                   ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.eo
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !60
  %i.ez = fmul double %5, %i.ey                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eo
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !60
  %i.fc = fmul double %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo ; 4 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !60
  %i.ff = fadd double %i.fe, %i.fc                ; 2 uses
  store double %i.ff, ptr %i.fd, align 8, !tbaa !60
  %i.fg = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %i.fh = icmp slt i64 %i.fg, %0
  br i1 %i.fh, label %.lr.ph229.preheader, label %._crit_edge230.thread

.lr.ph229:                                        ; preds = %.lr.ph229.preheader, %.lr.ph229
  %.0227 = phi i64 [ %i.ft, %.lr.ph229 ], [ %i.eo, %.lr.ph229.preheader ] ; 4 uses
  %.0136226 = phi double [ %i.fs, %.lr.ph229 ], [ 0.000000e+00, %.lr.ph229.preheader ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0227 ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !60
  %i.fk = fmul double %i.eq, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0227 ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !60
  %i.fn = fadd double %i.fm, %i.fk
end_hunk_0
