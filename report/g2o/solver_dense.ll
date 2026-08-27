Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_dense?download=true
inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 160
begin_hunk_0_@_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_:bb.a
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !800 ; 3 uses
  %xtraiter90 = and i64 %i.eh, 1
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i21
  %.028.i.i.i.i.i.i.i.i.prol = add nsw i64 %i.eh, -1 ; 5 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.028.i.i.i.i.i.i.i.i.prol
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !32
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i22.prol = icmp eq i64 %.028.i.i.i.i.i.i.i.i.prol, %i.em
  br i1 %.not.i.i.i.i.i.i.i.i22.prol, label %.prol.loopexit, label %bb.m

bb.m:                                             ; preds = %.prol.preheader
  %i.en = load ptr, ptr %2, align 8, !tbaa !1441, !noalias !1561 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.028.i.i.i.i.i.i.i.i.prol ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.em ; 2 uses
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !378
  %i.er = load double, ptr %i.ep, align 8, !tbaa !378
  store double %i.er, ptr %i.eo, align 8, !tbaa !378
  store double %i.eq, ptr %i.ep, align 8, !tbaa !378
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.m, %.lr.ph.i.i.i.i.i.i.i.i21
  %.028.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i21 ], [ %.028.i.i.i.i.i.i.i.i.prol, %bb.m ], [ %.028.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.es = icmp eq i64 %i.eh, 1
  br i1 %i.es, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_9TransposeINS_18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEEEEES5_Li2EEEEERS5_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i21.new

.lr.ph.i.i.i.i.i.i.i.i21.new:                     ; preds = %.prol.loopexit, %bb.q
  %.028.in.i.i.i.i.i.i.i.i = phi i64 [ %.028.i.i.i.i.i.i.i.i.1, %bb.q ], [ %.028.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.028.i.i.i.i.i.i.i.i = add nsw i64 %.028.in.i.i.i.i.i.i.i.i, -1 ; 3 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %.028.i.i.i.i.i.i.i.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !32
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i22 = icmp eq i64 %.028.i.i.i.i.i.i.i.i, %i.ev
  br i1 %.not.i.i.i.i.i.i.i.i22, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i21.new
  %i.ew = load ptr, ptr %2, align 8, !tbaa !1441, !noalias !1561 ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %.028.i.i.i.i.i.i.i.i ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ev ; 2 uses
  %i.ez = load double, ptr %i.ex, align 8, !tbaa !378
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !378
  store double %i.fa, ptr %i.ex, align 8, !tbaa !378
  store double %i.ez, ptr %i.ey, align 8, !tbaa !378
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i21.new
  %.028.i.i.i.i.i.i.i.i.1 = add nsw i64 %.028.in.i.i.i.i.i.i.i.i, -2 ; 4 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %.028.i.i.i.i.i.i.i.i.1
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !32
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i.i22.1 = icmp eq i64 %.028.i.i.i.i.i.i.i.i.1, %i.fd
  br i1 %.not.i.i.i.i.i.i.i.i22.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fe = load ptr, ptr %2, align 8, !tbaa !1441, !noalias !1561 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %.028.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fd ; 2 uses
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !378
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !378
  store double %i.fi, ptr %i.ff, align 8, !tbaa !378
  store double %i.fh, ptr %i.fg, align 8, !tbaa !378
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fj = icmp sgt i64 %.028.in.i.i.i.i.i.i.i.i, 2
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.i.i.i21.new, label %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_9TransposeINS_18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEEEEES5_Li2EEEEERS5_RKNS_9DenseBaseIT_EE.exit, !llvm.loop !1564

_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSINS_7ProductINS_9TransposeINS_18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEEEEES5_Li2EEEEERS5_RKNS_9DenseBaseIT_EE.exit: ; preds = %.prol.loopexit, %bb.q, %_ZN5Eigen3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEaSERKS5_.exit.i.i.i.i.i.i.i.i
  ret void

bb.r:                                             ; preds = %bb.v, %.lr.ph.new
  %.049 = phi i64 [ 0, %.lr.ph.new ], [ %i.gd, %bb.v ] ; 5 uses
  %niter89 = phi i64 [ 0, %.lr.ph.new ], [ %niter89.next.1, %bb.v ]
  %i.fk = mul nsw i64 %i.dr, %.049
  %i.fl = getelementptr [8 x i8], ptr %i.dt, i64 %.049
  %i.fm = getelementptr [8 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !378 ; 2 uses
  %i.fo = tail call noundef double @llvm.fabs.f64(double %i.fn)
  %i.fp = fcmp ogt double %i.fo, f0x0010000000000000
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.049 ; 2 uses
  br i1 %i.fp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !378
  %i.fs = fdiv double %i.fr, %i.fn
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink = phi double [ %i.fs, %bb.s ], [ 0.000000e+00, %bb.r ]
  store double %.sink, ptr %i.fq, align 8, !tbaa !378
  %i.ft = or disjoint i64 %.049, 1                ; 3 uses
  %i.fu = mul nsw i64 %i.dr, %i.ft
  %i.fv = getelementptr [8 x i8], ptr %i.dt, i64 %i.ft
  %i.fw = getelementptr [8 x i8], ptr %i.fv, i64 %i.fu
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !378 ; 2 uses
  %i.fy = tail call noundef double @llvm.fabs.f64(double %i.fx)
  %i.fz = fcmp ogt double %i.fy, f0x0010000000000000
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ft ; 2 uses
  br i1 %i.fz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !378
  %i.gc = fdiv double %i.gb, %i.fx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink.1 = phi double [ %i.gc, %bb.u ], [ 0.000000e+00, %bb.t ]
  store double %.sink.1, ptr %i.ga, align 8, !tbaa !378
  %i.gd = add nuw nsw i64 %.049, 2                ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2           ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.r, !llvm.loop !1565
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1ELi5ELi0ELi1EE3runERS4_RS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(19) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !793  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1441   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #41 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.m = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.o = icmp samesign ugt i64 %i.b, 16384        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !377
  %i.r = load ptr, ptr %0, align 8, !tbaa !365
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !376
  invoke void @_ZN5Eigen8internal23triangular_solve_vectorIddlLi1ELi5ELb0ELi0EE3runElPKdlPd(i64 noundef %i.q, ptr noundef %i.r, i64 noundef %i.t, ptr noundef nonnull %i.n)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br i1 %i.o, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.m) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %bb.g
  br i1 %i.o, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.m) #35
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit28: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_vectorIddlLi1ELi5ELb0ELi0EE3runElPKdlPd(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.a
  %6 = ptrtoaddr ptr %3 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = and i64 %6, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %7, 0
  %i.d = shl i64 %2, 6
  %i.e = add i64 %i.d, 64
  %i.f = shl i64 %2, 3
  br label %bb.b

._crit_edge91:                                    ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph90, %bb.e
  %indvar = phi i64 [ 0, %.lr.ph90 ], [ %indvar.next, %bb.e ] ; 3 uses
  %indvars.iv = phi i64 [ %0, %.lr.ph90 ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.04388 = phi i64 [ 0, %.lr.ph90 ], [ %i.dy, %bb.e ] ; 6 uses
  %smin129 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 8)
  %i.g = add i64 %smin129, -2
  %i.h = shl i64 %indvar, 6
  %scevgep98 = getelementptr i8, ptr %3, i64 %i.h
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 8)
  %i.i = shl i64 %smin, 3                         ; 2 uses
  %scevgep99 = getelementptr i8, ptr %scevgep98, i64 %i.i
  %i.j = mul i64 %i.e, %indvar
  %i.k = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.l = call i64 @llvm.umin.i64(i64 %i.k, i64 8)
  %i.m = sub nsw i64 %0, %.04388                  ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.m, i64 8) ; 3 uses
  %i.n = add nuw nsw i64 %.sroa.speculated, %.04388 ; 3 uses
  %i.o = icmp sgt i64 %i.m, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.p = getelementptr i8, ptr %1, i64 %i.j
  %i.q = getelementptr i8, ptr %i.p, i64 %i.i
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit, %bb.b
  %i.r = sub nsw i64 %0, %i.n                     ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit
  %.087 = phi i64 [ %i.ds, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.t = mul i64 %i.f, %.087
  %scevgep101 = getelementptr i8, ptr %i.q, i64 %i.t
  %i.u = add nuw nsw i64 %.087, %.04388           ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !378 ; 10 uses
  %i.x = fcmp une double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.c, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.y = xor i64 %.087, -1
  %i.z = add nsw i64 %.sroa.speculated, %i.y      ; 7 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.ab = add nuw i64 %i.u, 1                     ; 2 uses
  %i.ac = mul i64 %i.u, %2
  %i.ad = getelementptr [8 x i8], ptr %1, i64 %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.ab ; 12 uses
  %i.af = getelementptr [8 x i8], ptr %3, i64 %i.ab ; 13 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.ai, i64 %i.z ; 13 uses
  %i.aj = sub nsw i64 %i.z, %.0.i.i.i.i.i.i.i     ; 2 uses
  %i.ak = sdiv i64 %i.aj, 2                       ; 2 uses
  %i.al = shl nsw i64 %i.ak, 1                    ; 2 uses
  %i.am = add nsw i64 %i.al, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check112 = icmp ult i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check112, label %.lr.ph.i.i.i.i.i.i.i.preheader128, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.an = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %scevgep106 = getelementptr i8, ptr %i.af, i64 %i.an
  %scevgep107 = getelementptr i8, ptr %i.ae, i64 %i.an
  %bound0108 = icmp ult ptr %i.af, %scevgep107
  %bound1109 = icmp ult ptr %i.ae, %scevgep106
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %.lr.ph.i.i.i.i.i.i.i.preheader128, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck105
  %n.vec114 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert115 = insertelement <2 x double> poison, double %i.w, i64 0
  %broadcast.splat116 = shufflevector <2 x double> %broadcast.splatinsert115, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next123, %vector.body117 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index118 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index118 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load119 = load <2 x double>, ptr %i.ap, align 8, !tbaa !378, !alias.scope !1566
  %wide.load120 = load <2 x double>, ptr %i.aq, align 8, !tbaa !378, !alias.scope !1566
  %i.ar = fmul <2 x double> %broadcast.splat116, %wide.load119
  %i.as = fmul <2 x double> %broadcast.splat116, %wide.load120
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load121 = load <2 x double>, ptr %i.ao, align 8, !tbaa !378, !alias.scope !1569, !noalias !1566
  %wide.load122 = load <2 x double>, ptr %i.at, align 8, !tbaa !378, !alias.scope !1569, !noalias !1566
  %i.au = fsub <2 x double> %wide.load121, %i.ar
  %i.av = fsub <2 x double> %wide.load122, %i.as
  store <2 x double> %i.au, ptr %i.ao, align 8, !tbaa !378, !alias.scope !1569, !noalias !1566
  store <2 x double> %i.av, ptr %i.at, align 8, !tbaa !378, !alias.scope !1569, !noalias !1566
  %index.next123 = add nuw i64 %index118, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next123, %n.vec114
  br i1 %i.aw, label %middle.block124, label %vector.body117, !llvm.loop !1571

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec114
  br i1 %cmp.n125, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader128

.lr.ph.i.i.i.i.i.i.i.preheader128:                ; preds = %vector.memcheck105, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block124
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck105 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec114, %middle.block124 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader128
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.05.i.i.i.i.i.i.i.ph
  %i.az = load double, ptr %i.ay, align 8, !tbaa !378
  %i.ba = fmul double %i.w, %i.az
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !378
  %i.bc = fsub double %i.bb, %i.ba
  store double %i.bc, ptr %i.ax, align 8, !tbaa !378
  %i.bd = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader128
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader128 ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.be = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.be, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.05.i.i.i.i.i.i.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !378
  %i.bi = fmul double %i.w, %i.bh
  %i.bj = load double, ptr %i.bf, align 8, !tbaa !378
  %i.bk = fsub double %i.bj, %i.bi
  store double %i.bk, ptr %i.bf, align 8, !tbaa !378
  %i.bl = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bl
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !378
  %i.bp = fmul double %i.w, %i.bo
  %i.bq = load double, ptr %i.bm, align 8, !tbaa !378
  %i.br = fsub double %i.bq, %i.bp
  store double %i.br, ptr %i.bm, align 8, !tbaa !378
  %i.bs = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bs, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1572

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block124, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.bt = icmp sgt i64 %i.aj, 1
  br i1 %i.bt, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bu = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS8_EEKNS_5BlockIKNSM_IKNS6_IKNS7_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bv = icmp slt i64 %i.am, %i.z
  br i1 %i.bv, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bw = add i64 %.0.i.i.i.i.i.i.i, %i.al
  %i.bx = sub i64 %i.z, %i.bw                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bx, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.by = shl i64 %i.ak, 4
  %i.bz = shl i64 %.0.i.i.i.i.i.i.i, 3
  %i.ca = add i64 %i.by, %i.bz                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.ca
  %scevgep100 = getelementptr i8, ptr %i.ae, i64 %i.ca
  %bound0 = icmp ult ptr %scevgep, %scevgep101
  %bound1 = icmp ult ptr %scevgep100, %scevgep99
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, -4                      ; 3 uses
  %i.cb = add i64 %i.am, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.w, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = add i64 %i.am, %index                   ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !378, !alias.scope !1573
  %wide.load102 = load <2 x double>, ptr %i.cf, align 8, !tbaa !378, !alias.scope !1573
  %i.cg = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ch = fmul <2 x double> %broadcast.splat, %wide.load102
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %wide.load103 = load <2 x double>, ptr %i.cd, align 8, !tbaa !378, !alias.scope !1576, !noalias !1573
  %wide.load104 = load <2 x double>, ptr %i.ci, align 8, !tbaa !378, !alias.scope !1576, !noalias !1573
  %i.cj = fsub <2 x double> %wide.load103, %i.cg
  %i.ck = fsub <2 x double> %wide.load104, %i.ch
  store <2 x double> %i.cj, ptr %i.cd, align 8, !tbaa !378, !alias.scope !1576, !noalias !1573
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !378, !alias.scope !1576, !noalias !1573
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader127

.lr.ph.i17.i.i.i.i.i.i.preheader127:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ] ; 6 uses
  %i.cm = sub i64 %i.z, %.05.i18.i.i.i.i.i.i.ph
  %i.cn = add i64 %.087, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter130 = and i64 %i.cm, 1
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader127
  %i.co = getelementptr inbounds [8 x i8], ptr %i.af, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !378
  %i.cr = fmul double %i.w, %i.cq
  %i.cs = load double, ptr %i.co, align 8, !tbaa !378
  %i.ct = fsub double %i.cs, %i.cr
  store double %i.ct, ptr %i.co, align 8, !tbaa !378
  %i.cu = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader127
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader127 ], [ %i.cu, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.cv = icmp eq i64 %i.g, %i.cn
  br i1 %i.cv, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSA_18scalar_constant_opIdEEKS3_EEKNS_5BlockIKNSJ_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.af, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.05.i18.i.i.i.i.i.i
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !378
  %i.cz = fmul double %i.w, %i.cy
  %i.da = load double, ptr %i.cw, align 8, !tbaa !378
  %i.db = fsub double %i.da, %i.cz
  store double %i.db, ptr %i.cw, align 8, !tbaa !378
  %i.dc = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dc
  %i.df = load double, ptr %i.de, align 8, !tbaa !378
  %i.dg = fmul double %i.w, %i.df
  %i.dh = load double, ptr %i.dd, align 8, !tbaa !378
  %i.di = fsub double %i.dh, %i.dg
  store double %i.di, ptr %i.dd, align 8, !tbaa !378
  %i.dj = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
end_hunk_0
