Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/tiny_api?download=true
inline.NumInlined: 10097
inline.NumDeleted: 4374
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE:bb.a
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader7 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader7 ]
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !42
  store double %i.ak, ptr %i.ai, align 8, !tbaa !42
  %i.al = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !954

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader7
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader7 ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.t
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !42
  store double %i.aq, ptr %i.ao, align 8, !tbaa !42
  %i.ar = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ar
  %i.au = load double, ptr %i.at, align 8, !tbaa !42
  store double %i.au, ptr %i.as, align 8, !tbaa !42
  %i.av = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.av
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !42
  store double %i.ay, ptr %i.aw, align 8, !tbaa !42
  %i.az = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !42
  store double %i.bc, ptr %i.ba, align 8, !tbaa !42
  %i.bd = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bd, %i.t
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !955

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011.i.i.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i.i.i.i.i
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !24
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !24
  %i.bh = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bi = icmp slt i64 %i.bh, %i.v
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiE7computeEv(ptr noundef nonnull align 8 dereferenceable(66) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEiE7computeEv(ptr noundef nonnull align 8 dereferenceable(66) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::internal::redux_evaluator.747", align 8 ; 4 uses
  %2 = alloca %"struct.Eigen::internal::scalar_max_op", align 1 ; 3 uses
  %3 = alloca %"class.Eigen::PartialReduxExpr", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 8
  %i.f = call noundef double @_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIddLi0EEENS0_15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEEELi1ELi0EE3runISG_EEdRKSH_RKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.f, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sink, ptr %i.g, align 8, !tbaa !213
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !94
  %.not.i.i.i = icmp eq i64 %i.i, %i.l
  br i1 %.not.i.i.i, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !97
  call void @free(ptr noundef %i.m) #26
  %i.n = icmp sgt i64 %i.i, 0
  br i1 %i.n, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i64 %i.i, 4611686018427387903
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !37
  call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.e
  %i.q = shl nuw i64 %i.i, 2
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #30 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %.sink.split.i.i.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.t = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !37
  call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.d
  %.sink.i.i.i = phi ptr [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i.i, ptr %i.j, align 8, !tbaa !97
  %.pr = load i64, ptr %i.h, align 8, !tbaa !38
  br label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.c, %.sink.split.i.i.i
  %i.u = phi i64 [ %i.i, %bb.c ], [ %.pr, %.sink.split.i.i.i ] ; 3 uses
  store i64 %i.i, ptr %i.k, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE6resizeEl.exit
  store i32 0, ptr %i.a, align 4, !tbaa !43
  br label %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !40
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.aa = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil(i64 noundef %i.u, i64 noundef %i.w, ptr noundef nonnull %i.y, i64 noundef %i.u, ptr noundef nonnull %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 256) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !43
  %.pre3 = load i64, ptr %i.k, align 8, !tbaa !94
  %i.ab = and i32 %.pre, 1
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = select i1 %i.ac, i8 1, i8 -1
  br label %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit

_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit: ; preds = %bb.i, %bb.j
  %i.ae = phi i64 [ %i.i, %bb.i ], [ %.pre3, %bb.j ]
  %.not = phi i8 [ 1, %bb.i ], [ %i.ad, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.not, ptr %i.af, align 8, !tbaa !214
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !94 ; 5 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSINS_14TranspositionsILin1ELin1EiEEEERS1_RKNS_18TranspositionsBaseIT_EE.exit

.lr.ph.i.i:                                       ; preds = %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !97  ; 3 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !97 ; 6 uses
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %.0.i.i.prol = add nsw i64 %i.ai, -1            ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0.i.i.prol
  %i.an = load i32, ptr %i.am, align 4, !tbaa !43
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0.i.i.prol ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ao ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !43
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !43
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !43
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %.0.in6.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i ], [ %.0.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.at = icmp eq i64 %i.ai, 1
  br i1 %i.at, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSINS_14TranspositionsILin1ELin1EiEEEERS1_RKNS_18TranspositionsBaseIT_EE.exit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %.0.in6.i.i = phi i64 [ %.0.i.i.1, %.lr.ph.i.i.new ], [ %.0.in6.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0.i.i = add nsw i64 %.0.in6.i.i, -1           ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !43
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0.i.i ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.aw ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !43
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !43
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !43
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !43
  %.0.i.i.1 = add nsw i64 %.0.in6.i.i, -2         ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.0.i.i.1
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0.i.i.1 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.bd ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !43
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !43
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !43
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !43
  %i.bi = icmp sgt i64 %.0.in6.i.i, 2
  br i1 %i.bi, label %.lr.ph.i.i.new, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSINS_14TranspositionsILin1ELin1EiEEEERS1_RKNS_18TranspositionsBaseIT_EE.exit, !llvm.loop !956

_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSINS_14TranspositionsILin1ELin1EiEEEERS1_RKNS_18TranspositionsBaseIT_EE.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %_ZN5Eigen8internal18partial_lu_inplaceINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEEEEvRT_RT0_RNS8_12StorageIndexE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.bj, align 1, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIddLi0EEENS0_15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEEELi1ELi0EE3runISG_EEdRKSH_RKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38, !noalias !966 ; 30 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !40 ; 11 uses
  %i.e = sdiv i64 %i.b, 4
  %i.f = shl nsw i64 %i.e, 2                      ; 3 uses
  %i.g = sdiv i64 %i.b, 2
  %i.h = shl nsw i64 %i.g, 1                      ; 6 uses
  %.off.i.i.i.i.i = add i64 %i.b, 1
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <2 x i64>, ptr %i.d, align 1, !tbaa !24
  %i.j = and <2 x i64> %i.i, splat (i64 9223372036854775807)
  %i.k = bitcast <2 x i64> %i.j to <2 x double>   ; 3 uses
  %i.l = icmp sgt i64 %i.b, 3
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.d, i64 16
  %i.n = load <2 x i64>, ptr %i.m, align 1, !tbaa !24
  %i.o = and <2 x i64> %i.n, splat (i64 9223372036854775807)
  %i.p = bitcast <2 x i64> %i.o to <2 x double>   ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 7
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ad, %.lr.ph.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i = phi <2 x double> [ %i.k, %bb.d ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i.i, %.072.lcssa.i.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.h, %i.f
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.05480.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i.i = phi <2 x double> [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.d ]
  %.07577.i.i.i.i.i = phi <2 x double> [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr [8 x i8], ptr %i.d, i64 %.05480.i.i.i.i.i
  %i.u = load <2 x i64>, ptr %i.t, align 1, !tbaa !24
  %i.v = and <2 x i64> %i.u, splat (i64 9223372036854775807)
  %i.w = bitcast <2 x i64> %i.v to <2 x double>
  %i.x = fadd <2 x double> %.07278.i.i.i.i.i, %i.w ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %i.d, i64 %.054.in79.i.i.i.i.i
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %i.aa = load <2 x i64>, ptr %i.z, align 1, !tbaa !24
  %i.ab = and <2 x i64> %i.aa, splat (i64 9223372036854775807)
  %i.ac = bitcast <2 x i64> %i.ab to <2 x double>
  %i.ad = fadd <2 x double> %.07577.i.i.i.i.i, %i.ac ; 2 uses
  %.054.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i, 4 ; 2 uses
  %i.ae = icmp slt i64 %.054.i.i.i.i.i, %i.f
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !959

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.af = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !24
  %i.ah = and <2 x i64> %i.ag, splat (i64 9223372036854775807)
  %i.ai = bitcast <2 x i64> %i.ah to <2 x double>
  %i.aj = fadd <2 x double> %i.r, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i, %bb.c
  %.274.i.i.i.i.i = phi <2 x double> [ %i.k, %bb.c ], [ %i.aj, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i.i ]
  %i.ak = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i) ; 3 uses
  %i.al = icmp slt i64 %i.h, %i.b
  br i1 %i.al, label %.lr.ph85.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %i.am = sub i64 %i.b, %i.h
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph85.i.i.i.i.i.prol ], [ %i.h, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.aq, %.lr.ph85.i.i.i.i.i.prol ], [ %i.ak, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.an = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !42
  %i.ap = tail call noundef double @llvm.fabs.f64(double %i.ao)
  %i.aq = fadd double %.182.i.i.i.i.i.prol, %i.ap ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !960

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa128.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.h, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.ak, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.i.prol ]
  %i.as = sub i64 %i.h, %i.b
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %i.bm, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.au = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !42
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av)
  %i.ax = fadd double %.182.i.i.i.i.i, %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load double, ptr %i.az, align 8, !tbaa !42
  %i.bb = tail call noundef double @llvm.fabs.f64(double %i.ba)
  %i.bc = fadd double %i.ax, %i.bb
  %i.bd = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !42
  %i.bg = tail call noundef double @llvm.fabs.f64(double %i.bf)
  %i.bh = fadd double %i.bc, %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !42
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk)
  %i.bm = fadd double %i.bh, %i.bl                ; 2 uses
  %i.bn = add nsw i64 %.05283.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bn, %i.b
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !961

bb.g:                                             ; preds = %bb.b
  %i.bo = load double, ptr %i.d, align 8, !tbaa !42
  %i.bp = tail call noundef double @llvm.fabs.f64(double %i.bo)
  br label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %bb.a, %bb.f, %bb.g
  %.0.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.ak, %bb.f ], [ %i.bp, %bb.g ], [ %.lcssa128.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.bm, %.lr.ph85.i.i.i.i.i ] ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !969, !nonnull !88, !align !89
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !39 ; 9 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit
  %i.bv = sdiv i64 %i.b, 4
  %i.bw = shl nsw i64 %i.bv, 2                    ; 3 uses
  %i.bx = sdiv i64 %i.b, 2
  %i.by = shl nsw i64 %i.bx, 1                    ; 10 uses
  %i.bz = icmp sgt i64 %i.b, 3
  %i.ca = icmp samesign ugt i64 %i.b, 7
  %i.cb = icmp sgt i64 %i.by, %i.bw
  %i.cc = icmp slt i64 %i.by, %i.b                ; 2 uses
  br i1 %i.c, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader, label %.lr.ph.split

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader: ; preds = %.lr.ph
  %i.cd = add nsw i64 %i.bt, -1                   ; 2 uses
  %i.ce = add nsw i64 %i.bt, -2
  %xtraiter147 = and i64 %i.cd, 3                 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.epil.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new: ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader
  %unroll_iter151 = and i64 %i.cd, -4
  br label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us: ; preds = %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new
  %.02733.us = phi double [ %.0.i.i.i, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new ], [ %i.ch, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us ] ; 2 uses
  %niter152 = phi i64 [ 0, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us.preheader.new ], [ %niter152.next.3, %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us ]
  %i.cg = fcmp olt double %.02733.us, 0.000000e+00
  %i.ch = select i1 %i.cg, double 0.000000e+00, double %.02733.us ; 3 uses
  %niter152.next.3 = add i64 %niter152, 4         ; 2 uses
  %niter152.ncmp.3 = icmp eq i64 %niter152.next.3, %unroll_iter151
  br i1 %niter152.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us, !llvm.loop !962

.lr.ph.split:                                     ; preds = %.lr.ph
  %.off.i.i.i.i.i7 = add i64 %i.b, 1
  %.not.i.i.i.i.i8 = icmp ult i64 %.off.i.i.i.i.i7, 3
  %i.ci = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !40 ; 8 uses
  br i1 %.not.i.i.i.i.i8, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader, label %.lr.ph.split.split

_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader: ; preds = %.lr.ph.split
  %i.cj = add nsw i64 %i.bt, -1                   ; 3 uses
  %xtraiter141 = and i64 %i.cj, 1
  %i.ck = icmp eq i64 %i.bt, 2
  br i1 %i.ck, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.epil.preheader, label %_ZNK5Eigen8internal9evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE5coeffEl.exit24.us37.preheader.new

end_hunk_0
